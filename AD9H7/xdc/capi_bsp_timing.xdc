############################################################################
############################################################################
##
## Copyright 2020 International Business Machines
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
##
############################################################################
############################################################################

#Alpha Data 9H3 timing constraints

create_clock -period 10.000 -name sys_clk -waveform {0.000 5.000} [get_ports pci_pi_refclk_p0]
set_input_jitter [get_clocks -of_objects [get_ports pci_pi_refclk_p0]] 0.200

set_false_path -from [get_ports *pci_pi_nperst0]

#set_max_delay -datapath_only -from [get_ports *b_flash*] 5.000
#set_max_delay -datapath_only -from [get_cells -hierarchical -filter {NAME=~ flash0/dff_flash_* && IS_SEQUENTIAL == 1}] -to [get_ports *b_flash*] 5.000
#set_max_delay -datapath_only -from [get_cells -hierarchical -filter {NAME=~ flash0/dff_flash_* && IS_SEQUENTIAL == 1}] -to [get_ports *o_flash*] 5.000


#set_false_path -from [get_pins {*/XSL9_WRAP/XSL9/RGS/XSL_PARAM_CG_PARREG_RGS_203/gr_data_ff_reg[*]*/C}]
#set_false_path -from [get_pins {*/XSL9_WRAP/XSL9/RGS/XSL_PARAM_CG_PARREG_RGS_10/gr_data_ff_reg[*]*/C}]
#set_false_path -from [get_pins {*/XSL9_WRAP/XSL9/RGS/XSL_PARAM_CG_PARREG_RGS_18/gr_data_ff_reg[*]*/C}]


set_max_delay -datapath_only -from [get_clocks -of_objects [get_nets pcihip0_psl_clk]] -to [get_clocks -of_objects [get_nets psl_clk]]         4.000
set_max_delay -datapath_only -from [get_clocks -of_objects [get_nets psl_clk]]         -to [get_clocks -of_objects [get_nets pcihip0_psl_clk]] 4.000

set_false_path -from [get_clocks dbg_hub_APB_0_PCLK] -to [get_clocks txoutclk_out[0]_1]
