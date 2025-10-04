# Use bash shell
SHELL := /bin/bash

# Default testbench - can be overridden with TB=<testbench_name>
TB_TOP = mlp_tb
ifdef TB
TB_TOP = $(TB)
endif


COMP_OPTS  = --incr
COMP_OPTS += --relax 

SRC_DIR = ../src/
TB_DIR = ./


# Source files variables
#---------------------
SRC_VERILOG = $(shell ls $(SRC_DIR)*.v)
SRC_TB_VERILOG = $(shell ls $(TB_DIR)*.v)
SOURCES_VERILOG = $(SRC_VERILOG) $(SRC_TB_VERILOG)

SRC_VHDL = $(shell ls $(SRC_DIR)*.vhdl)$(shell ls $(SRC_DIR)*.vhd)
SRC_TB_VHDL = $(shell ls $(TB_DIR)*.vhdl)$(shell ls $(TB_DIR)*.vhd)
SOURCES_VHDL = $(SRC_VHDL) $(SRC_TB_VHDL)

# Available testbenches
#---------------------
AVAILABLE_TBS = $(basename $(notdir $(shell ls $(TB_DIR)*_tb*)))

# Running simulation
#---------------------
.PHONY : simulate
simulate : .comp_v.timestamp
	@echo
	@echo "### ELABORATING $(TB_TOP) ###"
	xelab -debug all -top $(TB_TOP) -snapshot $(TB_TOP)_snapshot
	@echo
	@echo "### RUNNING SIMULATION FOR $(TB_TOP) ###"
	xsim $(TB_TOP)_snapshot -tclbatch xsim_cfg.tcl

.PHONY : elaborate
elaborate : .comp_v.timestamp
	@echo
	@echo "### ELABORATING $(TB_TOP) ###"
	xelab -debug all -top $(TB_TOP) -snapshot $(TB_TOP)_snapshot

.PHONY : compile
compile :  .comp_v.timestamp

# Compiling verilog
#---------------------
.comp_v.timestamp : $(SOURCES_VERILOG)
	@echo
	@echo "### COMPILING VERILOG ###"
	xvlog $(COMP_OPTS) $(SOURCES_VERILOG)
	touch .comp_v.timestamp

# Waveform drawing
#---------------------
.PHONY : waves
waves : .comp_v.timestamp
	@echo
	@echo "### ELABORATING $(TB_TOP) ###"
	xelab -debug all -top $(TB_TOP) -snapshot $(TB_TOP)_snapshot
	@echo
	@echo "### OPENING WAVES FOR $(TB_TOP) ###"
	xsim --gui $(TB_TOP)_snapshot.wdb

# Testbench-specific targets
#---------------------------
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

# Cleanup directives:
#---------------------
.PHONY : clean
clean :
	rm -rf *.jou *.log *.pb *.wdb xsim.dir *.str
	rm -rf .*.timestamp .Xil

.PHONY : clean-all
clean-all :
	rm -rf *.jou *.log *.pb *.wdb xsim.dir *.str
	rm -rf .*.timestamp .Xil
	@echo "Cleaned all generated files for all testbenches"

# Help instructions
#--------------------
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
	@echo "  make simulate			      # Run default testbench ($(TB_TOP))"
	@echo "  make simulate TB=sigmoid_tb	      # Run sigmoid testbench"
	@echo "  make waves TB=neuron_5in_sigmoid_tb # Run neuron testbench with GUI"