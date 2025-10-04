--! @file read_fsm.vhd
--! @brief FIFO Read Control Finite State Machine
--! @details This module implements a finite state machine to control FIFO read
--!          operations for the Neural Ringer algorithm. It manages the read enable
--!          signal and provides status signals for valid data and end-of-event
--!          detection.
--! @author Neural Ringer Team
--! @date 2025

library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

--! @brief FIFO Read Control FSM Entity
--! @details Finite State Machine that controls reading from FIFO buffers.
--!          Handles synchronization between FIFO status signals and read
--!          operations.
entity read_fsm is
    Port ( 
        --! @brief Main system clock input
        clock_i           : in  std_logic;
        
        --! @brief Asynchronous reset input (active high)
        reset_i           : in  std_logic;

        --! @brief FIFO valid data indicator
        --! @details High when FIFO output data is valid
        fifo_valid_i      : in  std_logic;       
        
        --! @brief FIFO empty flag
        --! @details High when FIFO is empty (no data available)
        fifo_empty_i      : in  std_logic;
        
        --! @brief Read last data indicator
        --! @details High when the current data word is the last for this event
        rd_last_i         : in  std_logic;

        --! @brief FIFO read enable output
        --! @details Controls FIFO read operation (high = read enabled)
        rd_en_o           : out std_logic;

        --! @brief Valid data output indicator
        --! @details High when output data is valid and can be processed
        valid_data_o      : out std_logic;
        
        --! @brief Last event data indicator
        --! @details High when the last data of an event has been processed
        last_event_data_o : out std_logic
    );
end read_fsm;

--! @brief Behavioral architecture for read_fsm
--! @details Implements a 5-state FSM for FIFO read control:
--!          - S0: Initial/Reset state
--!          - S1: Wait for FIFO not empty
--!          - S2: Read data when valid
--!          - S3: Handle invalid data
--!          - S4: Process last data of event
architecture Behavioral of read_fsm is

    --! @brief FSM state enumeration
    type state_type is (S0, S1, S2, S3, S4);
    
    --! @brief Current FSM state register
    signal current_state_reg : state_type;
    
    --! @brief Next FSM state signal
    signal next_state_reg : state_type;

begin  
    --! @brief State register process
    --! @details Synchronous process that updates the current state on clock edge
    --!          and provides asynchronous reset functionality
    --! @param clock_i System clock for synchronous operation
    --! @param reset_i Asynchronous reset (active high)
    process(clock_i, reset_i)
    begin
        if reset_i = '1' then
            current_state_reg <= S0;
        elsif rising_edge(clock_i) then
            current_state_reg <= next_state_reg;
        end if;
    end process;

    --! @brief Next state and output logic process (Mealy FSM)
    --! @details Combinatorial process that determines next state and outputs
    --!          based on current state and input conditions. Implements Mealy
    --!          machine behavior where outputs depend on both state and inputs.
    process(current_state_reg, fifo_valid_i, fifo_empty_i, rd_last_i)
    begin
        --! Default output values to prevent latches
        next_state_reg <= current_state_reg;
        valid_data_o <= '0';
        last_event_data_o <= '0';
        rd_en_o <= '0';
        
        case current_state_reg is
            --! @brief S0: Initial/Reset state
            --! @details Immediately transitions to S1 to start operation
            when S0 =>
                next_state_reg <= S1;  

            --! @brief S1: Wait for FIFO not empty
            --! @details Monitors FIFO empty flag and enables read when data available
            when S1 =>
                if fifo_empty_i = '1' then
                    next_state_reg <= S1;
                    rd_en_o <= '0';
                else
                    next_state_reg <= S2;
                    rd_en_o <= '1';
                end if;

            --! @brief S2: Read data when valid
            --! @details Main data reading state. Continues reading while data is valid,
            --!          transitions to S3 when invalid, or S4 when last data detected
            when S2 =>
                if fifo_valid_i = '1' then
                    next_state_reg <= S2;
                    valid_data_o <= '1';
                    rd_en_o <= '1';
                elsif fifo_valid_i = '0' then
                    next_state_reg <= S3;
                    valid_data_o <= '0';
                    rd_en_o <= '1';
                elsif rd_last_i = '1' then
                    next_state_reg <= S4;
                    valid_data_o <= '1';
                    rd_en_o <= '1';
                end if;

            --! @brief S3: Handle invalid data
            --! @details Waits for data to become valid again, continues reading
            --!          but marks data as invalid until FIFO valid is asserted
            when S3 =>
                if fifo_valid_i = '0' then
                    next_state_reg <= S3;
                    valid_data_o <= '0';
                    rd_en_o <= '1';                  
                else
                    next_state_reg <= S2;
                    valid_data_o <= '1';
                    rd_en_o <= '1';
                end if;
                
            --! @brief S4: Process last data of event
            --! @details Handles the last data word of an event, signals completion
            --!          when data becomes invalid and returns to waiting state
            when S4 =>
                if fifo_valid_i = '1' then
                    next_state_reg <= S4;
                    valid_data_o <= '1';
                    rd_en_o <= '1';
                else
                    next_state_reg <= S1;
                    valid_data_o <= '0';
                    last_event_data_o <= '1';
                    rd_en_o <= '0';
                end if;             
        end case;
    end process;

end Behavioral;
