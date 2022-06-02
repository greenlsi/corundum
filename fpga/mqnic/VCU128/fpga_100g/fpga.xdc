# XDC constraints for the Xilinx VCU128 board
# part: xcvu37p-fsvh2892-2L-e

# General configuration
set_property CFGBVS GND                                [current_design]
set_property CONFIG_VOLTAGE 1.8                        [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true           [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN {DIV-1} [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES       [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 8           [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES        [current_design]

# System clocks
# 300 MHz
#set_property -dict {LOC G31  IOSTANDARD DIFF_SSTL12} [get_ports clk_300mhz_p]
#set_property -dict {LOC F31  IOSTANDARD DIFF_SSTL12} [get_ports clk_300mhz_n]
#create_clock -period 3.333 -name clk_300mhz [get_ports clk_300mhz_p]

# 250 MHz
#set_property -dict {LOC E12  IOSTANDARD DIFF_SSTL12} [get_ports clk_250mhz_1_p]
#set_property -dict {LOC D12  IOSTANDARD DIFF_SSTL12} [get_ports clk_250mhz_1_n]
#create_clock -period 4 -name clk_250mhz_1 [get_ports clk_250mhz_1_p]

#set_property -dict {LOC AW26 IOSTANDARD DIFF_SSTL12} [get_ports clk_250mhz_2_p]
#set_property -dict {LOC AW27 IOSTANDARD DIFF_SSTL12} [get_ports clk_250mhz_2_n]
#create_clock -period 4 -name clk_250mhz_2 [get_ports clk_250mhz_2_p]

# 100 MHz
set_property -dict {LOC BH51 IOSTANDARD LVDS} [get_ports clk_100mhz_p]
set_property -dict {LOC BJ51 IOSTANDARD LVDS} [get_ports clk_100mhz_n]
create_clock -period 10.000 -name clk_100mhz [get_ports clk_100mhz_p]

# 90 MHz
#set_property -dict {LOC AL20 IOSTANDARD LVCMOS18} [get_ports clk_90mhz]
#create_clock -period 11.111 -name clk_90mhz [get_ports clk_90mhz]

# LEDs
set_property -dict {LOC BH24 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[0]}] #IO_L18N_T2U_N11_AD2N_67
set_property -dict {LOC BG24 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[1]}] #IO_L18P_T2U_N10_AD2P_67
set_property -dict {LOC BG25 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[2]}] #IO_L17N_T2U_N9_AD10N_67
set_property -dict {LOC BF25 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[3]}] #IO_L17P_T2U_N8_AD10P_67
set_property -dict {LOC BF26 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[4]}] #IO_L16N_T2U_N7_QBC_AD3N_67
set_property -dict {LOC BF27 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[5]}] #IO_L16P_T2U_N6_QBC_AD3P_67
set_property -dict {LOC BG27 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[6]}] #IO_L15N_T2L_N5_AD11N_67
set_property -dict {LOC BG28 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {led[7]}] #IO_L15P_T2L_N4_AD11P_67

set_false_path -to [get_ports {led[*]}]
set_output_delay 0 [get_ports {led[*]}]

# Reset button
#set_property -dict {LOC L19  IOSTANDARD LVCMOS12} [get_ports reset]

#set_false_path -from [get_ports {reset}]
#set_input_delay 0 [get_ports {reset}]


# Push buttons
set_property -dict {LOC BB24 IOSTANDARD LVCMOS18} [get_ports btnu]
set_property -dict {LOC BF22 IOSTANDARD LVCMOS18} [get_ports btnl]
set_property -dict {LOC BE22 IOSTANDARD LVCMOS18} [get_ports btnd]
set_property -dict {LOC BE23 IOSTANDARD LVCMOS18} [get_ports btnr]
set_property -dict {LOC BD23 IOSTANDARD LVCMOS18} [get_ports btnc]

set_false_path -from [get_ports {btnu btnl btnd btnr btnc}]
set_input_delay 0 [get_ports {btnu btnl btnd btnr btnc}]

# DIP switches
set_property -dict {LOC B17  IOSTANDARD LVCMOS12} [get_ports {sw[0]}]
set_property -dict {LOC G16  IOSTANDARD LVCMOS12} [get_ports {sw[1]}]
set_property -dict {LOC J16  IOSTANDARD LVCMOS12} [get_ports {sw[2]}]
set_property -dict {LOC D21  IOSTANDARD LVCMOS12} [get_ports {sw[3]}]

set_false_path -from [get_ports {sw[*]}]
set_input_delay 0 [get_ports {sw[*]}]

# PMOD0
set_property -dict {LOC AY14 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports {pmod0[0]}]
set_property -dict {LOC AY15 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports {pmod0[1]}]
set_property -dict {LOC AW15 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports {pmod0[2]}]
set_property -dict {LOC AV15 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports {pmod0[3]}]
set_property -dict {LOC AV16 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports {pmod0[4]}]
set_property -dict {LOC AU16 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports {pmod0[5]}]
set_property -dict {LOC AT15 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports {pmod0[6]}]
set_property -dict {LOC AT16 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports {pmod0[7]}]

set_false_path -to [get_ports {pmod0[*]}]
set_output_delay 0 [get_ports {pmod0[*]}]

# PMOD1
set_property -dict {LOC N28 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {pmod1[0]}]
set_property -dict {LOC M30 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {pmod1[1]}]
set_property -dict {LOC N30 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {pmod1[2]}]
set_property -dict {LOC P30 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {pmod1[3]}]
set_property -dict {LOC P29 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {pmod1[4]}]
set_property -dict {LOC L31 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {pmod1[5]}]
set_property -dict {LOC M31 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {pmod1[6]}]
set_property -dict {LOC R29 IOSTANDARD LVCMOS12 SLEW SLOW DRIVE 8} [get_ports {pmod1[7]}]

set_false_path -to [get_ports {pmod1[*]}]
set_output_delay 0 [get_ports {pmod1[*]}]

# UART
#set_property -dict {LOC BB21 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports uart_txd]
#set_property -dict {LOC AW25 IOSTANDARD LVCMOS18} [get_ports uart_rxd]
#set_property -dict {LOC BB22 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports uart_rts]
#set_property -dict {LOC AY25 IOSTANDARD LVCMOS18} [get_ports uart_cts]

#set_false_path -to [get_ports {uart_txd uart_rts}]
#set_output_delay 0 [get_ports {uart_txd uart_rts}]
#set_false_path -from [get_ports {uart_rxd uart_cts}]
#set_input_delay 0 [get_ports {uart_rxd uart_cts}]

# Gigabit Ethernet SGMII PHY
#set_property -dict {LOC AU24 IOSTANDARD LVDS} [get_ports phy_sgmii_rx_p]
#set_property -dict {LOC AV24 IOSTANDARD LVDS} [get_ports phy_sgmii_rx_n]
#set_property -dict {LOC AU21 IOSTANDARD LVDS} [get_ports phy_sgmii_tx_p]
#set_property -dict {LOC AV21 IOSTANDARD LVDS} [get_ports phy_sgmii_tx_n]
#set_property -dict {LOC AT22 IOSTANDARD LVDS} [get_ports phy_sgmii_clk_p]
#set_property -dict {LOC AU22 IOSTANDARD LVDS} [get_ports phy_sgmii_clk_n]
#set_property -dict {LOC BA21 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports phy_reset_n]
#set_property -dict {LOC AR24 IOSTANDARD LVCMOS18} [get_ports phy_int_n]
#set_property -dict {LOC AR23 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports phy_mdio]
#set_property -dict {LOC AV23 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports phy_mdc]

# 625 MHz ref clock from SGMII PHY
#create_clock -period 1.600 -name phy_sgmii_clk [get_ports phy_sgmii_clk_p]

#set_false_path -to [get_ports {phy_reset_n phy_mdio phy_mdc}]
#set_output_delay 0 [get_ports {phy_reset_n phy_mdio phy_mdc}]
#set_false_path -from [get_ports {phy_int_n phy_mdio}]
#set_input_delay 0 [get_ports {phy_int_n phy_mdio}]

# QSFP28 Interfaces
set_property -dict {LOC G53  } [get_ports qsfp1_rx1_p] ;# MGTYRXP0_135 GTYE4_CHANNEL_X1Y48 / GTYE4_COMMON_X1Y12
set_property -dict {LOC G54  } [get_ports qsfp1_rx1_n] ;# MGTYRXN0_135 GTYE4_CHANNEL_X1Y48 / GTYE4_COMMON_X1Y12
set_property -dict {LOC G48 } [get_ports qsfp1_tx1_p] ;# MGTYTXP0_135 GTYE4_CHANNEL_X1Y48 / GTYE4_COMMON_X1Y12
set_property -dict {LOC G49  } [get_ports qsfp1_tx1_n] ;# MGTYTXN0_135 GTYE4_CHANNEL_X1Y48 / GTYE4_COMMON_X1Y12
set_property -dict {LOC F51  } [get_ports qsfp1_rx2_p] ;# MGTYRXP1_135 GTYE4_CHANNEL_X1Y49 / GTYE4_COMMON_X1Y12
set_property -dict {LOC F52  } [get_ports qsfp1_rx2_n] ;# MGTYRXN1_135 GTYE4_CHANNEL_X1Y49 / GTYE4_COMMON_X1Y12
set_property -dict {LOC E48  } [get_ports qsfp1_tx2_p] ;# MGTYTXP1_135 GTYE4_CHANNEL_X1Y49 / GTYE4_COMMON_X1Y12
set_property -dict {LOC E49  } [get_ports qsfp1_tx2_n] ;# MGTYTXN1_135 GTYE4_CHANNEL_X1Y49 / GTYE4_COMMON_X1Y12
set_property -dict {LOC E53  } [get_ports qsfp1_rx3_p] ;# MGTYRXP2_135 GTYE4_CHANNEL_X1Y50 / GTYE4_COMMON_X1Y12
set_property -dict {LOC E54  } [get_ports qsfp1_rx3_n] ;# MGTYRXN2_135 GTYE4_CHANNEL_X1Y50 / GTYE4_COMMON_X1Y12
set_property -dict {LOC C48  } [get_ports qsfp1_tx3_p] ;# MGTYTXP2_135 GTYE4_CHANNEL_X1Y50 / GTYE4_COMMON_X1Y12
set_property -dict {LOC C49  } [get_ports qsfp1_tx3_n] ;# MGTYTXN2_135 GTYE4_CHANNEL_X1Y50 / GTYE4_COMMON_X1Y12
set_property -dict {LOC D51  } [get_ports qsfp1_rx4_p] ;# MGTYRXP3_135 GTYE4_CHANNEL_X1Y51 / GTYE4_COMMON_X1Y12
set_property -dict {LOC D52  } [get_ports qsfp1_rx4_n] ;# MGTYRXN3_135 GTYE4_CHANNEL_X1Y51 / GTYE4_COMMON_X1Y12
set_property -dict {LOC A49  } [get_ports qsfp1_tx4_p] ;# MGTYTXP3_135 GTYE4_CHANNEL_X1Y51 / GTYE4_COMMON_X1Y12
set_property -dict {LOC A50  } [get_ports qsfp1_tx4_n] ;# MGTYTXN3_135 GTYE4_CHANNEL_X1Y51 / GTYE4_COMMON_X1Y12
set_property -dict {LOC P42 } [get_ports qsfp1_mgt_refclk_0_p] ;# MGTREFCLK0P_135 from U38.4
set_property -dict {LOC P43  } [get_ports qsfp1_mgt_refclk_0_n] ;# MGTREFCLK0N_135 from U38.5
#set_property -dict {LOC U9  } [get_ports qsfp1_mgt_refclk_1_p] ;# MGTREFCLK1P_135 from U57.28
#set_property -dict {LOC U8  } [get_ports qsfp1_mgt_refclk_1_n] ;# MGTREFCLK1N_135 from U57.29
#set_property -dict {LOC AM23 IOSTANDARD LVDS} [get_ports qsfp1_recclk_p] ;# to U57.16
#set_property -dict {LOC AM22 IOSTANDARD LVDS} [get_ports qsfp1_recclk_n] ;# to U57.17
set_property -dict {LOC BM24 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp1_modsell]
set_property -dict {LOC BN25 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp1_resetl]
set_property -dict {LOC BM25 IOSTANDARD LVCMOS18 PULLUP true} [get_ports qsfp1_modprsl]
set_property -dict {LOC BP24 IOSTANDARD LVCMOS18 PULLUP true} [get_ports qsfp1_intl]
set_property -dict {LOC BN24 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp1_lpmode]

# 156.25 MHz MGT reference clock
#create_clock -period 6.400 -name qsfp1_mgt_refclk_0 [get_ports qsfp1_mgt_refclk_0_p]

set_false_path -to [get_ports {qsfp1_modsell qsfp1_resetl qsfp1_lpmode}]
set_output_delay 0 [get_ports {qsfp1_modsell qsfp1_resetl qsfp1_lpmode}]
set_false_path -from [get_ports {qsfp1_modprsl qsfp1_intl}]
set_input_delay 0 [get_ports {qsfp1_modprsl qsfp1_intl}]

set_property -dict {LOC L53  } [get_ports qsfp2_rx1_p] ;# MGTYRXP0_134 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
set_property -dict {LOC L54 } [get_ports qsfp2_rx1_n] ;# MGTYRXN0_134 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
set_property -dict {LOC L48  } [get_ports qsfp2_tx1_p] ;# MGTYTXP0_134 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
set_property -dict {LOC L49  } [get_ports qsfp2_tx1_n] ;# MGTYTXN0_134 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
set_property -dict {LOC K51  } [get_ports qsfp2_rx2_p] ;# MGTYRXP1_134 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
set_property -dict {LOC K52  } [get_ports qsfp2_rx2_n] ;# MGTYRXN1_134 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
set_property -dict {LOC L44  } [get_ports qsfp2_tx2_p] ;# MGTYTXP1_134 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
set_property -dict {LOC L45  } [get_ports qsfp2_tx2_n] ;# MGTYTXN1_134 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
set_property -dict {LOC J53  } [get_ports qsfp2_rx3_p] ;# MGTYRXP2_134 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
set_property -dict {LOC J54  } [get_ports qsfp2_rx3_n] ;# MGTYRXN2_134 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
set_property -dict {LOC K46  } [get_ports qsfp2_tx3_p] ;# MGTYTXP2_134 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
set_property -dict {LOC K47  } [get_ports qsfp2_tx3_n] ;# MGTYTXN2_134 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
set_property -dict {LOC H51  } [get_ports qsfp2_rx4_p] ;# MGTYRXP3_134 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
set_property -dict {LOC H52 } [get_ports qsfp2_rx4_n] ;# MGTYRXN3_134 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
set_property -dict {LOC J48  } [get_ports qsfp2_tx4_p] ;# MGTYTXP3_134 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
set_property -dict {LOC J49  } [get_ports qsfp2_tx4_n] ;# MGTYTXN3_134 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
set_property -dict {LOC T42 } [get_ports qsfp2_mgt_refclk_0_p] ;# MGTREFCLK0P_134 from U104.13
set_property -dict {LOC T43  } [get_ports qsfp2_mgt_refclk_0_n] ;# MGTREFCLK0N_134 from U104.14
#set_property -dict {LOC N9  } [get_ports qsfp2_mgt_refclk_1_p] ;# MGTREFCLK1P_134 from U57.35
#set_property -dict {LOC N8  } [get_ports qsfp2_mgt_refclk_1_n] ;# MGTREFCLK1N_134 from U57.34
#set_property -dict {LOC AP23 IOSTANDARD LVDS} [get_ports qsfp2_recclk_p] ;# to U57.12
#set_property -dict {LOC AP22 IOSTANDARD LVDS} [get_ports qsfp2_recclk_n] ;# to U57.13
set_property -dict {LOC BN5 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp2_modsell]
set_property -dict {LOC BN6 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp2_resetl]
set_property -dict {LOC BN7 IOSTANDARD LVCMOS18 PULLUP true} [get_ports qsfp2_modprsl]
set_property -dict {LOC BP6 IOSTANDARD LVCMOS18 PULLUP true} [get_ports qsfp2_intl]
set_property -dict {LOC BP7 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp2_lpmode]

# 156.25 MHz MGT reference clock
#create_clock -period 6.400 -name qsfp2_mgt_refclk_0 [get_ports qsfp2_mgt_refclk_0_p]

set_false_path -to [get_ports {qsfp2_modsell qsfp2_resetl qsfp2_lpmode}]
set_output_delay 0 [get_ports {qsfp2_modsell qsfp2_resetl qsfp2_lpmode}]
set_false_path -from [get_ports {qsfp2_modprsl qsfp2_intl}]
set_input_delay 0 [get_ports {qsfp2_modprsl qsfp2_intl}]

set_property -dict {LOC U53  } [get_ports qsfp3_rx1_p] ;# MGTYRXP0_132 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
set_property -dict {LOC U54  } [get_ports qsfp3_rx1_n] ;# MGTYRXN0_132 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
set_property -dict {LOC V46  } [get_ports qsfp3_tx1_p] ;# MGTYTXP0_132 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
set_property -dict {LOC V47  } [get_ports qsfp3_tx1_n] ;# MGTYTXN0_132 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
set_property -dict {LOC U49  } [get_ports qsfp3_rx2_p] ;# MGTYRXP1_132 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
set_property -dict {LOC U50  } [get_ports qsfp3_rx2_n] ;# MGTYRXN1_132 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
set_property -dict {LOC Y46  } [get_ports qsfp3_tx2_p] ;# MGTYTXP1_132 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
set_property -dict {LOC Y47  } [get_ports qsfp3_tx2_n] ;# MGTYTXN1_132 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
set_property -dict {LOC T51  } [get_ports qsfp3_rx3_p] ;# MGTYRXP2_132 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
set_property -dict {LOC T52  } [get_ports qsfp3_rx3_n] ;# MGTYRXN2_132 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
set_property -dict {LOC T46  } [get_ports qsfp3_tx3_p] ;# MGTYTXP2_132 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
set_property -dict {LOC T47  } [get_ports qsfp3_tx3_n] ;# MGTYTXN2_132 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
set_property -dict {LOC R53  } [get_ports qsfp3_rx4_p] ;# MGTYRXP3_132 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
set_property -dict {LOC R54  } [get_ports qsfp3_rx4_n] ;# MGTYRXN3_132 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
set_property -dict {LOC R44  } [get_ports qsfp3_tx4_p] ;# MGTYTXP3_132 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
set_property -dict {LOC R45  } [get_ports qsfp3_tx4_n] ;# MGTYTXN3_132 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
set_property -dict {LOC Y42 } [get_ports qsfp3_mgt_refclk_0_p] ;# MGTREFCLK0P_132 from U104.13
set_property -dict {LOC Y43  } [get_ports qsfp3_mgt_refclk_0_n] ;# MGTREFCLK0N_132 from U104.14
#set_property -dict {LOC N9  } [get_ports qsfp3_mgt_refclk_1_p] ;# MGTREFCLK1P_132 from U57.35
#set_property -dict {LOC N8  } [get_ports qsfp3_mgt_refclk_1_n] ;# MGTREFCLK1N_132 from U57.34
#set_property -dict {LOC AP23 IOSTANDARD LVDS} [get_ports qsfp3_recclk_p] ;# to U57.12
#set_property -dict {LOC AP22 IOSTANDARD LVDS} [get_ports qsfp3_recclk_n] ;# to U57.13
set_property -dict {LOC BM5 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp3_modsell]
set_property -dict {LOC BL6 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp3_resetl]
set_property -dict {LOC BM7 IOSTANDARD LVCMOS18 PULLUP true} [get_ports qsfp3_modprsl]
set_property -dict {LOC BL7 IOSTANDARD LVCMOS18 PULLUP true} [get_ports qsfp3_intl]
set_property -dict {LOC BN4 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp3_lpmode]

# 156.25 MHz MGT reference clock
#create_clock -period 6.400 -name qsfp3_mgt_refclk_0 [get_ports qsfp3_mgt_refclk_0_p]

set_false_path -to [get_ports {qsfp3_modsell qsfp3_resetl qsfp3_lpmode}]
set_output_delay 0 [get_ports {qsfp3_modsell qsfp3_resetl qsfp3_lpmode}]
set_false_path -from [get_ports {qsfp3_modprsl qsfp3_intl}]
set_input_delay 0 [get_ports {qsfp3_modprsl qsfp3_intl}]

set_property -dict {LOC AA53  } [get_ports qsfp4_rx1_p] ;# MGTYRXP0_131 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
set_property -dict {LOC AA54  } [get_ports qsfp4_rx1_n] ;# MGTYRXN0_131 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
set_property -dict {LOC AA44  } [get_ports qsfp4_tx1_p] ;# MGTYTXP0_131 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
set_property -dict {LOC AA45  } [get_ports qsfp4_tx1_n] ;# MGTYTXN0_131 GTYE4_CHANNEL_X1Y52 / GTYE4_COMMON_X1Y13
set_property -dict {LOC Y51  } [get_ports qsfp4_rx2_p] ;# MGTYRXP1_131 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
set_property -dict {LOC Y52  } [get_ports qsfp4_rx2_n] ;# MGTYRXN1_131 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
set_property -dict {LOC Y46  } [get_ports qsfp4_tx2_p] ;# MGTYTXP1_131 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
set_property -dict {LOC Y47 } [get_ports qsfp4_tx2_n] ;# MGTYTXN1_131 GTYE4_CHANNEL_X1Y53 / GTYE4_COMMON_X1Y13
set_property -dict {LOC W53  } [get_ports qsfp4_rx3_p] ;# MGTYRXP2_131 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
set_property -dict {LOC W54  } [get_ports qsfp4_rx3_n] ;# MGTYRXN2_131 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
set_property -dict {LOC W48  } [get_ports qsfp4_tx3_p] ;# MGTYTXP2_131 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
set_property -dict {LOC W49 } [get_ports qsfp4_tx3_n] ;# MGTYTXN2_131 GTYE4_CHANNEL_X1Y54 / GTYE4_COMMON_X1Y13
set_property -dict {LOC V51  } [get_ports qsfp4_rx4_p] ;# MGTYRXP3_131 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
set_property -dict {LOC V52  } [get_ports qsfp4_rx4_n] ;# MGTYRXN3_131 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
set_property -dict {LOC W44  } [get_ports qsfp4_tx4_p] ;# MGTYTXP3_131 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
set_property -dict {LOC W45  } [get_ports qsfp4_tx4_n] ;# MGTYTXN3_131 GTYE4_CHANNEL_X1Y55 / GTYE4_COMMON_X1Y13
set_property -dict {LOC AB42 } [get_ports qsfp4_mgt_refclk_0_p] ;# MGTREFCLK0P_131 from U104.13
set_property -dict {LOC AB43  } [get_ports qsfp4_mgt_refclk_0_n] ;# MGTREFCLK0N_131 from U104.14
#set_property -dict {LOC N9  } [get_ports qsfp4_mgt_refclk_1_p] ;# MGTREFCLK1P_131 from U57.35
#set_property -dict {LOC N8  } [get_ports qsfp4_mgt_refclk_1_n] ;# MGTREFCLK1N_131 from U57.34
#set_property -dict {LOC AP23 IOSTANDARD LVDS} [get_ports qsfp4_recclk_p] ;# to U57.12
#set_property -dict {LOC AP22 IOSTANDARD LVDS} [get_ports qsfp4_recclk_n] ;# to U57.13
set_property -dict {LOC BK23 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp4_modsell]
set_property -dict {LOC AY22 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp4_resetl]
set_property -dict {LOC AN24 IOSTANDARD LVCMOS18 PULLUP true} [get_ports qsfp4_modprsl]
set_property -dict {LOC BH21 IOSTANDARD LVCMOS18 PULLUP true} [get_ports qsfp4_intl]
set_property -dict {LOC BF23 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports qsfp4_lpmode]

# 156.25 MHz MGT reference clock
#create_clock -period 6.400 -name qsfp4_mgt_refclk_0 [get_ports qsfp4_mgt_refclk_0_p]

set_false_path -to [get_ports {qsfp4_modsell qsfp4_resetl qsfp4_lpmode}]
set_output_delay 0 [get_ports {qsfp4_modsell qsfp4_resetl qsfp4_lpmode}]
set_false_path -from [get_ports {qsfp4_modprsl qsfp4_intl}]
set_input_delay 0 [get_ports {qsfp4_modprsl qsfp4_intl}]


# I2C interface
set_property -dict {LOC BM27 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports i2c_scl]
set_property -dict {LOC BL28 IOSTANDARD LVCMOS18 SLEW SLOW DRIVE 8} [get_ports i2c_sda]

set_false_path -to [get_ports {i2c_sda i2c_scl}]
set_output_delay 0 [get_ports {i2c_sda i2c_scl}]
set_false_path -from [get_ports {i2c_sda i2c_scl}]
set_input_delay 0 [get_ports {i2c_sda i2c_scl}]

# PCIe Interface
set_property -dict {LOC AL2  } [get_ports {pcie_rx_p[0]}]  ;# MGTYRXP3_227 GTYE4_CHANNEL_X1Y35 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AL1  } [get_ports {pcie_rx_n[0]}]  ;# MGTYRXN3_227 GTYE4_CHANNEL_X1Y35 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AL11 } [get_ports {pcie_tx_p[0]}]  ;# MGTYTXP3_227 GTYE4_CHANNEL_X1Y35 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AL10 } [get_ports {pcie_tx_n[0]}]  ;# MGTYTXN3_227 GTYE4_CHANNEL_X1Y35 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AM4  } [get_ports {pcie_rx_p[1]}]  ;# MGTYRXP2_227 GTYE4_CHANNEL_X1Y34 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AM3  } [get_ports {pcie_rx_n[1]}]  ;# MGTYRXN2_227 GTYE4_CHANNEL_X1Y34 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AM9  } [get_ports {pcie_tx_p[1]}]  ;# MGTYTXP2_227 GTYE4_CHANNEL_X1Y34 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AM8  } [get_ports {pcie_tx_n[1]}]  ;# MGTYTXN2_227 GTYE4_CHANNEL_X1Y34 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AN6  } [get_ports {pcie_rx_p[2]}]  ;# MGTYRXP1_227 GTYE4_CHANNEL_X1Y33 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AN5  } [get_ports {pcie_rx_n[2]}]  ;# MGTYRXN1_227 GTYE4_CHANNEL_X1Y33 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AN11 } [get_ports {pcie_tx_p[2]}]  ;# MGTYTXP1_227 GTYE4_CHANNEL_X1Y33 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AN10 } [get_ports {pcie_tx_n[2]}]  ;# MGTYTXN1_227 GTYE4_CHANNEL_X1Y33 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AN2  } [get_ports {pcie_rx_p[3]}]  ;# MGTYRXP0_227 GTYE4_CHANNEL_X1Y32 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AN1  } [get_ports {pcie_rx_n[3]}]  ;# MGTYRXN0_227 GTYE4_CHANNEL_X1Y32 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AP9  } [get_ports {pcie_tx_p[3]}]  ;# MGTYTXP0_227 GTYE4_CHANNEL_X1Y32 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AP8  } [get_ports {pcie_tx_n[3]}]  ;# MGTYTXN0_227 GTYE4_CHANNEL_X1Y32 / GTYE4_COMMON_X1Y8
set_property -dict {LOC AP4  } [get_ports {pcie_rx_p[4]}]  ;# MGTYRXP3_226 GTYE4_CHANNEL_X1Y31 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AP3  } [get_ports {pcie_rx_n[4]}]  ;# MGTYRXN3_226 GTYE4_CHANNEL_X1Y31 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AR11  } [get_ports {pcie_tx_p[4]}]  ;# MGTYTXP3_226 GTYE4_CHANNEL_X1Y31 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AR10  } [get_ports {pcie_tx_n[4]}]  ;# MGTYTXN3_226 GTYE4_CHANNEL_X1Y31 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AR2  } [get_ports {pcie_rx_p[5]}]  ;# MGTYRXP2_226 GTYE4_CHANNEL_X1Y30 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AR1  } [get_ports {pcie_rx_n[5]}]  ;# MGTYRXN2_226 GTYE4_CHANNEL_X1Y30 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AR7  } [get_ports {pcie_tx_p[5]}]  ;# MGTYTXP2_226 GTYE4_CHANNEL_X1Y30 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AR6  } [get_ports {pcie_tx_n[5]}]  ;# MGTYTXN2_226 GTYE4_CHANNEL_X1Y30 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AT4  } [get_ports {pcie_rx_p[6]}]  ;# MGTYRXP1_226 GTYE4_CHANNEL_X1Y29 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AT3  } [get_ports {pcie_rx_n[6]}]  ;# MGTYRXN1_226 GTYE4_CHANNEL_X1Y29 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AT9  } [get_ports {pcie_tx_p[6]}]  ;# MGTYTXP1_226 GTYE4_CHANNEL_X1Y29 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AT8  } [get_ports {pcie_tx_n[6]}]  ;# MGTYTXN1_226 GTYE4_CHANNEL_X1Y29 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AU2  } [get_ports {pcie_rx_p[7]}]  ;# MGTYRXP0_226 GTYE4_CHANNEL_X1Y28 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AU1  } [get_ports {pcie_rx_n[7]}]  ;# MGTYRXN0_226 GTYE4_CHANNEL_X1Y28 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AU11  } [get_ports {pcie_tx_p[7]}]  ;# MGTYTXP0_226 GTYE4_CHANNEL_X1Y28 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AU10 } [get_ports {pcie_tx_n[7]}]  ;# MGTYTXN0_226 GTYE4_CHANNEL_X1Y28 / GTYE4_COMMON_X1Y7
set_property -dict {LOC AV4  } [get_ports {pcie_rx_p[8]}]  ;# MGTYRXP3_225 GTYE4_CHANNEL_X1Y27 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AV3  } [get_ports {pcie_rx_n[8]}]  ;# MGTYRXN3_225 GTYE4_CHANNEL_X1Y27 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AU7  } [get_ports {pcie_tx_p[8]}]  ;# MGTYTXP3_225 GTYE4_CHANNEL_X1Y27 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AU6  } [get_ports {pcie_tx_n[8]}]  ;# MGTYTXN3_225 GTYE4_CHANNEL_X1Y27 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AW6  } [get_ports {pcie_rx_p[9]}]  ;# MGTYRXP2_225 GTYE4_CHANNEL_X1Y26 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AW5  } [get_ports {pcie_rx_n[9]}]  ;# MGTYRXN2_225 GTYE4_CHANNEL_X1Y26 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AV9  } [get_ports {pcie_tx_p[9]}]  ;# MGTYTXP2_225 GTYE4_CHANNEL_X1Y26 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AV8  } [get_ports {pcie_tx_n[9]}]  ;# MGTYTXN2_225 GTYE4_CHANNEL_X1Y26 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AW2  } [get_ports {pcie_rx_p[10]}] ;# MGTYRXP1_225 GTYE4_CHANNEL_X1Y25 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AW1  } [get_ports {pcie_rx_n[10]}] ;# MGTYRXN1_225 GTYE4_CHANNEL_X1Y25 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AW11  } [get_ports {pcie_tx_p[10]}] ;# MGTYTXP1_225 GTYE4_CHANNEL_X1Y25 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AW10 } [get_ports {pcie_tx_n[10]}] ;# MGTYTXN1_225 GTYE4_CHANNEL_X1Y25 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AY4 } [get_ports {pcie_rx_p[11]}] ;# MGTYRXP0_225 GTYE4_CHANNEL_X1Y24 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AY3  } [get_ports {pcie_rx_n[11]}] ;# MGTYRXN0_225 GTYE4_CHANNEL_X1Y24 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AY9  } [get_ports {pcie_tx_p[11]}] ;# MGTYTXP0_225 GTYE4_CHANNEL_X1Y24 / GTYE4_COMMON_X1Y6
set_property -dict {LOC AY8  } [get_ports {pcie_tx_n[11]}] ;# MGTYTXN0_225 GTYE4_CHANNEL_X1Y24 / GTYE4_COMMON_X1Y6
set_property -dict {LOC BA6  } [get_ports {pcie_rx_p[12]}] ;# MGTYRXP3_224 GTYE4_CHANNEL_X1Y23 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BA5  } [get_ports {pcie_rx_n[12]}] ;# MGTYRXN3_224 GTYE4_CHANNEL_X1Y23 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BA11  } [get_ports {pcie_tx_p[12]}] ;# MGTYTXP3_224 GTYE4_CHANNEL_X1Y23 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BA10  } [get_ports {pcie_tx_n[12]}] ;# MGTYTXN3_224 GTYE4_CHANNEL_X1Y23 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BA2  } [get_ports {pcie_rx_p[13]}] ;# MGTYRXP2_224 GTYE4_CHANNEL_X1Y22 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BA1  } [get_ports {pcie_rx_n[13]}] ;# MGTYRXN2_224 GTYE4_CHANNEL_X1Y22 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BB9  } [get_ports {pcie_tx_p[13]}] ;# MGTYTXP2_224 GTYE4_CHANNEL_X1Y22 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BB8  } [get_ports {pcie_tx_n[13]}] ;# MGTYTXN2_224 GTYE4_CHANNEL_X1Y22 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BB4  } [get_ports {pcie_rx_p[14]}] ;# MGTYRXP1_224 GTYE4_CHANNEL_X1Y21 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BB3  } [get_ports {pcie_rx_n[14]}] ;# MGTYRXN1_224 GTYE4_CHANNEL_X1Y21 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BC11  } [get_ports {pcie_tx_p[14]}] ;# MGTYTXP1_224 GTYE4_CHANNEL_X1Y21 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BC10  } [get_ports {pcie_tx_n[14]}] ;# MGTYTXN1_224 GTYE4_CHANNEL_X1Y21 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BC2  } [get_ports {pcie_rx_p[15]}] ;# MGTYRXP0_224 GTYE4_CHANNEL_X1Y20 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BC1  } [get_ports {pcie_rx_n[15]}] ;# MGTYRXN0_224 GTYE4_CHANNEL_X1Y20 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BC7  } [get_ports {pcie_tx_p[15]}] ;# MGTYTXP0_224 GTYE4_CHANNEL_X1Y20 / GTYE4_COMMON_X1Y5
set_property -dict {LOC BC6  } [get_ports {pcie_tx_n[15]}] ;# MGTYTXN0_224 GTYE4_CHANNEL_X1Y20 / GTYE4_COMMON_X1Y5
#set_property -dict {LOC AL15  } [get_ports pcie_refclk_1_p] ;# MGTREFCLK0P_227
#set_property -dict {LOC AL14  } [get_ports pcie_refclk_1_n] ;# MGTREFCLK0N_227
set_property -dict {LOC AR15  } [get_ports pcie_refclk_2_p] ;# MGTREFCLK0P_225
set_property -dict {LOC AR14 } [get_ports pcie_refclk_2_n] ;# MGTREFCLK0N_225
set_property -dict {LOC BF41 IOSTANDARD POD12 PULLUP true} [get_ports pcie_reset_n]

# 100 MHz MGT reference clock
#create_clock -period 10 -name pcie_mgt_refclk_1 [get_ports pcie_refclk_1_p]
create_clock -period 10 -name pcie_mgt_refclk_2 [get_ports pcie_refclk_2_p]

set_false_path -from [get_ports {pcie_reset_n}]
set_input_delay 0 [get_ports {pcie_reset_n}]

# QSPI flash
set_property -dict {LOC AW15 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {qspi_1_dq[0]}]
set_property -dict {LOC AY15 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {qspi_1_dq[1]}]
set_property -dict {LOC AY14 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {qspi_1_dq[2]}]
set_property -dict {LOC AY13 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {qspi_1_dq[3]}]
set_property -dict {LOC BC15 IOSTANDARD LVCMOS18 DRIVE 12} [get_ports {qspi_1_cs}]

set_false_path -to [get_ports {qspi_1_dq[*] qspi_1_cs}]
set_output_delay 0 [get_ports {qspi_1_dq[*] qspi_1_cs}]
set_false_path -from [get_ports {qspi_1_dq}]
set_input_delay 0 [get_ports {qspi_1_dq}]
