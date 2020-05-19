# xdc from https://github.com/Xilinx/XilinxBoardStore/blob/2019.2/boards/Xilinx/au200/1.3/part0_pins.xml
#Flash
#Flash uses default dedicated IO

#========================================================
# PCIE BANK 227/226/225/224 (SLR1 X1Y2) - to be checked
#========================================================
# PCIE hard IP's external dedicated reset pin
set_property IOSTANDARD LVCMOS12 [get_ports {pcie_rst_n}]
set_property PACKAGE_PIN BD21 [get_ports {pcie_rst_n}]

# PCIE hard IP's refclk(100M)
set_property PACKAGE_PIN AM11 [get_ports {pcie_clkp}]
set_property PACKAGE_PIN AM10 [get_ports {pcie_clkn}]

set_property PACKAGE_PIN AF6  [get_ports {pcie_txn[0]}]
set_property PACKAGE_PIN AG8  [get_ports {pcie_txn[1]}]
set_property PACKAGE_PIN AH6  [get_ports {pcie_txn[2]}]
set_property PACKAGE_PIN AJ8  [get_ports {pcie_txn[3]}]
set_property PACKAGE_PIN AK6  [get_ports {pcie_txn[4]}]
set_property PACKAGE_PIN AL8  [get_ports {pcie_txn[5]}]
set_property PACKAGE_PIN AM6  [get_ports {pcie_txn[6]}]
set_property PACKAGE_PIN AN8  [get_ports {pcie_txn[7]}]

set_property PACKAGE_PIN AP6  [get_ports {pcie_txn[8]}]
set_property PACKAGE_PIN AR8  [get_ports {pcie_txn[9]}]
set_property PACKAGE_PIN AT6  [get_ports {pcie_txn[10]}]
set_property PACKAGE_PIN AU8  [get_ports {pcie_txn[11]}]
set_property PACKAGE_PIN AV6  [get_ports {pcie_txn[12]}]
set_property PACKAGE_PIN BB4  [get_ports {pcie_txn[13]}]
set_property PACKAGE_PIN BD4  [get_ports {pcie_txn[14]}]
set_property PACKAGE_PIN BF4  [get_ports {pcie_txn[15]}]

set_property PACKAGE_PIN AF7  [get_ports {pcie_txp[0]}]
set_property PACKAGE_PIN AG9  [get_ports {pcie_txp[1]}]
set_property PACKAGE_PIN AH7  [get_ports {pcie_txp[2]}]
set_property PACKAGE_PIN AJ9  [get_ports {pcie_txp[3]}]
set_property PACKAGE_PIN AK7  [get_ports {pcie_txp[4]}]
set_property PACKAGE_PIN AL9  [get_ports {pcie_txp[5]}]
set_property PACKAGE_PIN AM7  [get_ports {pcie_txp[6]}]
set_property PACKAGE_PIN AN9  [get_ports {pcie_txp[7]}]

set_property PACKAGE_PIN AP7  [get_ports {pcie_txp[8]}]
set_property PACKAGE_PIN AR9  [get_ports {pcie_txp[9]}]
set_property PACKAGE_PIN AT7  [get_ports {pcie_txp[10]}]
set_property PACKAGE_PIN AU9  [get_ports {pcie_txp[11]}]
set_property PACKAGE_PIN AV7  [get_ports {pcie_txp[12]}]
set_property PACKAGE_PIN BB5  [get_ports {pcie_txp[13]}]
set_property PACKAGE_PIN BD5  [get_ports {pcie_txp[14]}]
set_property PACKAGE_PIN BF5  [get_ports {pcie_txp[15]}]


set_property PACKAGE_PIN AF1  [get_ports {pcie_rxn[0]}]
set_property PACKAGE_PIN AG3  [get_ports {pcie_rxn[1]}]
set_property PACKAGE_PIN AH1  [get_ports {pcie_rxn[2]}]
set_property PACKAGE_PIN AJ3  [get_ports {pcie_rxn[3]}]
set_property PACKAGE_PIN AK1  [get_ports {pcie_rxn[4]}]
set_property PACKAGE_PIN AL3  [get_ports {pcie_rxn[5]}]
set_property PACKAGE_PIN AM1  [get_ports {pcie_rxn[6]}]
set_property PACKAGE_PIN AN3  [get_ports {pcie_rxn[7]}]

set_property PACKAGE_PIN AP1  [get_ports {pcie_rxn[8]}]
set_property PACKAGE_PIN AR3  [get_ports {pcie_rxn[9]}]
set_property PACKAGE_PIN AT1  [get_ports {pcie_rxn[10]}]
set_property PACKAGE_PIN AU3  [get_ports {pcie_rxn[11]}]
set_property PACKAGE_PIN AV1  [get_ports {pcie_rxn[12]}]
set_property PACKAGE_PIN AW3  [get_ports {pcie_rxn[13]}]
set_property PACKAGE_PIN BA1  [get_ports {pcie_rxn[14]}]
set_property PACKAGE_PIN BC1  [get_ports {pcie_rxn[15]}]

set_property PACKAGE_PIN AF2  [get_ports {pcie_rxp[0]}]
set_property PACKAGE_PIN AG4  [get_ports {pcie_rxp[1]}]
set_property PACKAGE_PIN AH2  [get_ports {pcie_rxp[2]}]
set_property PACKAGE_PIN AJ4  [get_ports {pcie_rxp[3]}]
set_property PACKAGE_PIN AK2  [get_ports {pcie_rxp[4]}]
set_property PACKAGE_PIN AL4  [get_ports {pcie_rxp[5]}]
set_property PACKAGE_PIN AM2  [get_ports {pcie_rxp[6]}]
set_property PACKAGE_PIN AN4  [get_ports {pcie_rxp[7]}]

set_property PACKAGE_PIN AP2  [get_ports {pcie_rxp[8]}]
set_property PACKAGE_PIN AR4  [get_ports {pcie_rxp[9]}]
set_property PACKAGE_PIN AT2  [get_ports {pcie_rxp[10]}]
set_property PACKAGE_PIN AU4  [get_ports {pcie_rxp[11]}]
set_property PACKAGE_PIN AV2  [get_ports {pcie_rxp[12]}]
set_property PACKAGE_PIN AW4  [get_ports {pcie_rxp[13]}]
set_property PACKAGE_PIN BA2  [get_ports {pcie_rxp[14]}]
set_property PACKAGE_PIN BC2  [get_ports {pcie_rxp[15]}]
