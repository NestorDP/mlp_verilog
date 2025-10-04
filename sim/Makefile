# Vivado Simulator Makefile based flow
# Copyright Norbertas Kremeris 2021
# www.itsembedded.com

# Use bash shell
SHELL := /bin/bash

# Vivado settings
VIVADO_SETTINGS = /tools/Xilinx/Vivado/2024.2/settings64.sh

# Default testbench - can be overridden with TB=<testbench_name>
TB_TOP = mlp_tb
ifdef TB
TB_TOP = $(TB)
endif

# Available testbenches (for help/validation)
AVAILABLE_TBS = mlp_tb neuron_5in_sigmoid_tb sigmoid_tb


COMP_OPTS  = --incr
COMP_OPTS += --relax 

SRC_DIR = ../src/
TB_DIR = ./

SRC_SOURCES_VERILOG = $(shell ls $(SRC_DIR)*.v 2>/dev/null || true) $(shell ls $(TB_DIR)*.v 2>/dev/null || true)
SRC_SOURCES_SYS_VERILOG = $(shell ls $(SRC_DIR)*.sv 2>/dev/null || true) $(shell ls $(TB_DIR)*.sv 2>/dev/null || true)
SRC_SOURCES_VHDL = $(shell ls $(SRC_DIR)*.vhdl 2>/dev/null || true) $(shell ls $(TB_DIR)*.vhdl 2>/dev/null || true)



#==== Default target - running simulation without drawing waveforms ====#
.PHONY : simulate
simulate : .comp_v.timestamp
	@echo
	@echo "### ELABORATING $(TB_TOP) ###"
	source $(VIVADO_SETTINGS) && xelab -debug all -top $(TB_TOP) -snapshot $(TB_TOP)_snapshot
	@echo
	@echo "### RUNNING SIMULATION FOR $(TB_TOP) ###"
	source $(VIVADO_SETTINGS) && xsim $(TB_TOP)_snapshot -tclbatch xsim_cfg.tcl

.PHONY : elaborate
elaborate : .comp_v.timestamp
	@echo
	@echo "### ELABORATING $(TB_TOP) ###"
	source $(VIVADO_SETTINGS) && xelab -debug all -top $(TB_TOP) -snapshot $(TB_TOP)_snapshot

.PHONY : compile
compile :  .comp_v.timestamp

.PHONY : help
help :
	@echo "Vivado Simulator Makefile"
	@echo "========================="
	@echo ""
	@echo "Usage: make [target] [TB=<testbench_name>]"
	@echo ""
	@echo "Available testbenches:"
	@for tb in $(AVAILABLE_TBS); do echo "  - $$tb"; done
	@echo ""
	@echo "Targets:"
	@echo "  simulate  - Run complete simulation (compile + elaborate + simulate)"
	@echo "  waves     - Run simulation and open waveform viewer"
	@echo "  elaborate - Only elaborate the design"
	@echo "  compile   - Only compile source files"
	@echo "  clean     - Remove all generated files"
	@echo "  help      - Show this help message"
	@echo ""
	@echo "Examples:"
	@echo "  make simulate                    # Run default testbench ($(TB_TOP))"
	@echo "  make simulate TB=sigmoid_tb      # Run sigmoid testbench"
	@echo "  make waves TB=neuron_5in_sigmoid_tb  # Run neuron testbench with GUI"


#==== WAVEFORM DRAWING ====#
.PHONY : waves
waves : .comp_v.timestamp
	@echo
	@echo "### ELABORATING $(TB_TOP) ###"
	source $(VIVADO_SETTINGS) && xelab -debug all -top $(TB_TOP) -snapshot $(TB_TOP)_snapshot
	@echo
	@echo "### OPENING WAVES FOR $(TB_TOP) ###"
	source $(VIVADO_SETTINGS) && xsim --gui $(TB_TOP)_snapshot.wdb




# Compiling verilog
.comp_v.timestamp : $(SRC_SOURCES_VERILOG)
	@echo
	@echo "### COMPILING VERILOG ###"
	source $(VIVADO_SETTINGS) && xvlog $(COMP_OPTS) $(SRC_SOURCES_VERILOG)
	touch .comp_v.timestamp

.PHONY : clean
clean :
	rm -rf *.jou *.log *.pb *.wdb xsim.dir *.str
	rm -rf .*.timestamp .Xil

.PHONY : clean-all
clean-all :
	rm -rf *.jou *.log *.pb *.wdb xsim.dir *.str
	rm -rf .*.timestamp .Xil
	@echo "Cleaned all generated files for all testbenches"

#==== Testbench-specific targets ====#
.PHONY : mlp
mlp :
	$(MAKE) simulate TB=mlp_tb

.PHONY : sigmoid
sigmoid :
	$(MAKE) simulate TB=sigmoid_tb

.PHONY : neuron
neuron :
	$(MAKE) simulate TB=neuron_5in_sigmoid_tb

.PHONY : mlp-waves
mlp-waves :
	$(MAKE) waves TB=mlp_tb

.PHONY : sigmoid-waves
sigmoid-waves :
	$(MAKE) waves TB=sigmoid_tb

.PHONY : neuron-waves
neuron-waves :
	$(MAKE) waves TB=neuron_5in_sigmoid_tb

#==== Subtractor type marker generation ===#
# .sub_$(SUB).timestamp :
# 	@rm -rf .sub_*.timestamp
# 	@touch .sub_$(SUB).timestamp