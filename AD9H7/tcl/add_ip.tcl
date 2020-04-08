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

# add pcie4c_uscale_plus
add_files -norecurse                             $ip_dir/pcie4c_uscale_plus_0/pcie4c_uscale_plus_0.xci  -force >> $log_file
# add sem_ultra
# AC test to remove sem_ultra
# add_files -norecurse                             $ip_dir/sem_ultra_0/sem_ultra_0.xci  -force >> $log_file
# add uscale_plus_clk_wiz
add_files -norecurse                             $ip_dir/uscale_plus_clk_wiz/uscale_plus_clk_wiz.xci  -force >> $log_file
