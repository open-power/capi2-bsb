#S241 configurations

set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 63.8 [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_REBOOT DISABLE [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN Disable [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]

#from hardware/setup/S241/snap_bitstream_pre.tcl
#set_property CONFIG_VOLTAGE 1.8 [current_design]
#set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
#set_property CONFIG_MODE SPIx4 [current_design]
#set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
#set_property BITSTREAM.CONFIG.CONFIGRATE 63.8 [current_design]
#set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN Disable [current_design]
#set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
#set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
#set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR Yes [current_design]
set_property BITSTREAM.CONFIG.NEXT_CONFIG_REBOOT DISABLE [current_design]       ;# different setting than above
set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN Enable [current_design]          ;# default disable
set_property CFGBVS GND                               [current_design]
set_property BITSTREAM.CONFIG.PERSIST NO              [current_design]          ;# default NO anyhow

# xapp1246/xapp1296/ug908: These settings may not be needed for SNAP
set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE   [current_design]          ;# default enable
set_property BITSTREAM.CONFIG.TIMER_CFG 0XFFFFFFFF    [current_design]          ;# no watchdog
