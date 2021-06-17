# Design

set script_dir [file dirname [file normalize [info script]]]

# User config
set ::env(DESIGN_NAME) dpll

# Change if needed
set ::env(VERILOG_FILES) "\
	$script_dir/../../caravel/verilog/rtl/defines.v \
	$script_dir/src/digital_pll.v"

set ::env(CLOCK_PORT) "osc"
set ::env(CLOCK_NET) ""
set ::env(CLOCK_PERIOD) "10"

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 900 600"
set ::env(DESIGN_IS_CORE) 0

set ::env(VDD_NETS) [list {VPWR}]
set ::env(GND_NETS) [list {VGND}]

set ::env(FP_PIN_ORDER_CFG) $script_dir/pin_order.cfg

set ::env(PL_BASIC_PLACEMENT) 1
set ::env(PL_TARGET_DENSITY) 0.05

# If you're going to use multiple power domains, then keep this disabled.
set ::env(RUN_CVC) 0

source $::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/config.tcl

# set filename $::env(DESIGN_DIR)/$::env(PDK_ROOT)_$::env(STD_CELL_LIBRARY)_config.tcl
# if { [file exists $filename] == 1} {
# 	source $filename
# }

# set ::env(VERILOG_FILES) ./designs/digital_pll/src/digital_pll.v
# #set ::env(SYNTH_READ_BLACKBOX_LIB) 1



# # Fill this
# set ::env(CLOCK_PERIOD) "100000"
# set ::env(CLOCK_PORT) "w"
# set ::env(CLOCK_TREE_SYNTH) 0

# set ::env(RUN_SIMPLE_CTS) 0
# set ::env(SYNTH_BUFFERING) 0
# set ::env(SYNTH_SIZING) 0


# set ::env(FP_SIZING) absolute
# set ::env(DIE_AREA) "0 0 900 600"
# set ::env(DESIGN_IS_CORE) 0

# set ::env(SYNTH_MAX_FANOUT) 6
# set ::env(FP_CORE_UTIL) 49
# #set ::env(FP_CORE_UTIL) 45
# #set ::env(FP_CORE_UTIL) 20 
# #set ::env(FP_CORE_UTIL) 35
# #set ::env(FP_CORE_UTIL) 40
# #set ::env(PL_TARGET_DENSITY) 0.45
# #set ::env(MAGIC_EXT_USE_GDS) 1

# set ::env(VDD_NETS) [list {VPWR}]
# set ::env(GND_NETS) [list {VGND}]

# set ::env(PL_TARGET_DENSITY) [ expr ($::env(FP_CORE_UTIL)+5) / 100.0 ]
# set ::env(CLOCK_PERIOD) "25"
# set ::env(CELL_PAD) 0
# set ::env(GLB_RT_OVERFLOW_ITERS) 55

# #set ::env(FP_PDN_CORE_RING) 1


