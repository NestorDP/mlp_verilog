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
SRC_VERILOG = $(shell ls $(SRC_DIR)*.v 2>/dev/null)
SRC_TB_VERILOG = $(shell ls $(TB_DIR)*.v 2>/dev/null)
SOURCES_VERILOG = $(SRC_VERILOG) $(SRC_TB_VERILOG)

SRC_SYS_VERILOG = $(shell ls $(SRC_DIR)*.sv 2>/dev/null)
SRC_TB_SYS_VERILOG = $(shell ls $(TB_DIR)*.sv 2>/dev/null)
SOURCES_SYS_VERILOG = $(SRC_SYS_VERILOG) $(SRC_TB_SYS_VERILOG)

SRC_VHDL = $(shell ls $(SRC_DIR)*.vhdl 2>/dev/null)$(shell ls $(SRC_DIR)*.vhd 2>/dev/null)
SRC_TB_VHDL = $(shell ls $(TB_DIR)*.vhdl 2>/dev/null)$(shell ls $(TB_DIR)*.vhd 2>/dev/null)
SOURCES_VHDL = $(SRC_VHDL) $(SRC_TB_VHDL)

# Available testbenches
#---------------------
TB_FILES = $(shell ls $(TB_DIR)*_tb* 2>/dev/null)
TB_EXTENSIONS = $(sort $(suffix $(TB_FILES)))
TB_NAMES = $(basename $(notdir $(TB_FILES)))

# Determine file type based on current TB
#---------------------
define get-tb-extension
$(suffix $(filter %/$(1).% ./$(1).%,$(TB_FILES)))
endef

CURRENT_TB_EXTENSION = $(call get-tb-extension,$(TB_TOP))

ifeq ($(CURRENT_TB_EXTENSION),.v)
    FILE_TYPE = VERILOG
else ifeq ($(CURRENT_TB_EXTENSION),.sv)
    FILE_TYPE = SYS_VERILOG
else ifeq ($(CURRENT_TB_EXTENSION),.vhdl)
    FILE_TYPE = VHDL
else ifeq ($(CURRENT_TB_EXTENSION),.vhd)
    FILE_TYPE = VHDL
else
    FILE_TYPE = unknown
endif

# Running simulation
#---------------------
.PHONY : simulate
simulate : elaborate
	@echo
	@echo "### RUNNING SIMULATION FOR $(TB_TOP) ###"
	xsim $(TB_TOP)_snapshot -tclbatch xsim_cfg.tcl

# Waveform drawing
#---------------------
.PHONY : waves
waves : elaborate
	@echo
	@echo "### OPENING WAVES FOR $(TB_TOP) ###"
	xsim --gui $(TB_TOP)_snapshot.wdb

# Running Elaboration
#---------------------
.PHONY : elaborate
elaborate : compile
	@echo
	@echo "### ELABORATING $(TB_TOP) ###"
	xelab -debug all -top $(TB_TOP) -snapshot $(TB_TOP)_snapshot

.PHONY : compile
compile :
ifeq ($(FILE_TYPE),VERILOG)
	$(MAKE) .comp_v.timestamp
else ifeq ($(FILE_TYPE),SYS_VERILOG)
	$(MAKE) .comp_sv.timestamp
else ifeq ($(FILE_TYPE),VHDL)
	$(MAKE) .comp_vhdl.timestamp
else
	@echo "Unknown file type: $(FILE_TYPE)"
	@echo "Defaulting to Verilog compilation"
	$(MAKE) .comp_v.timestamp
endif

# Compiling verilog
#---------------------
.comp_v.timestamp : $(SOURCES_VERILOG)
	@echo
	@echo "### COMPILING VERILOG ###"
	xvlog $(COMP_OPTS) $(SOURCES_VERILOG)
	touch .comp_v.timestamp

# Compiling system verilog
#----------------------
.comp_sv.timestamp : $(SOURCES_SYS_VERILOG)
	@echo
	@echo "### COMPILING SYSTEM VERILOG ###"
	xvlog $(COMP_OPTS) -sv $(SOURCES_SYS_VERILOG) $(SOURCES_VERILOG)
	touch .comp_sv.timestamp

# Compiling VHDL
#---------------------
.comp_vhdl.timestamp : $(SOURCES_VHDL)
	@echo
	@echo "### COMPILING VHDL ###"
	xvhdl $(COMP_OPTS) $(SOURCES_VHDL)
	touch .comp_vhdl.timestamp

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

# Debug target for file type detection
#--------------------
.PHONY : debug-filetype
debug-filetype :
	@echo "TB_FILES: $(TB_FILES)"
	@echo "TB_EXTENSIONS: $(TB_EXTENSIONS)"
	@echo "Current TB_TOP: $(TB_TOP)"
	@echo "Current TB extension: $(CURRENT_TB_EXTENSION)"
	@echo "FILE_TYPE: $(FILE_TYPE)"

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
	@for tb in $(TB_NAMES); do echo "  - $$tb"; done
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
	@echo "  make simulate TB=sigmoid_tb	      # Run sigmoid testbench"
	@echo "  make waves TB=neuron_5in_sigmoid_tb # Run neuron testbench with GUI"
