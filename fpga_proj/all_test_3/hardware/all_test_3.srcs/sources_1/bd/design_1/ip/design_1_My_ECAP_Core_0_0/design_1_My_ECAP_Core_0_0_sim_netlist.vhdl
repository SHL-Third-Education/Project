-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Wed Sep 12 13:52:28 2018
-- Host        : siyun-CR62-6M running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/siyun/vivado_workspace/all_test_3/hardware/all_test_3.srcs/sources_1/bd/design_1/ip/design_1_My_ECAP_Core_0_0/design_1_My_ECAP_Core_0_0_sim_netlist.vhdl
-- Design      : design_1_My_ECAP_Core_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_My_ECAP_Core_0_0_My_ECAP_Core_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    pwm_sig : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_My_ECAP_Core_0_0_My_ECAP_Core_v1_0_S00_AXI : entity is "My_ECAP_Core_v1_0_S00_AXI";
end design_1_My_ECAP_Core_0_0_My_ECAP_Core_v1_0_S00_AXI;

architecture STRUCTURE of design_1_My_ECAP_Core_0_0_My_ECAP_Core_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__2_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__3_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__3_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__3_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__3_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__4_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__4_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__4_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__4_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__5_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__5_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__5_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__5_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__6_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__6_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__6_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_3\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal cap1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cap1_1 : STD_LOGIC;
  signal cap2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cap2[31]_i_1_n_0\ : STD_LOGIC;
  signal cap3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cap3_0 : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal duty : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal duty_e : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal duty_e0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \duty_e0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__0_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__0_n_1\ : STD_LOGIC;
  signal \duty_e0_carry__0_n_2\ : STD_LOGIC;
  signal \duty_e0_carry__0_n_3\ : STD_LOGIC;
  signal \duty_e0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__1_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__1_n_1\ : STD_LOGIC;
  signal \duty_e0_carry__1_n_2\ : STD_LOGIC;
  signal \duty_e0_carry__1_n_3\ : STD_LOGIC;
  signal \duty_e0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__2_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__2_n_1\ : STD_LOGIC;
  signal \duty_e0_carry__2_n_2\ : STD_LOGIC;
  signal \duty_e0_carry__2_n_3\ : STD_LOGIC;
  signal \duty_e0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__3_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__3_n_1\ : STD_LOGIC;
  signal \duty_e0_carry__3_n_2\ : STD_LOGIC;
  signal \duty_e0_carry__3_n_3\ : STD_LOGIC;
  signal \duty_e0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__4_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__4_n_1\ : STD_LOGIC;
  signal \duty_e0_carry__4_n_2\ : STD_LOGIC;
  signal \duty_e0_carry__4_n_3\ : STD_LOGIC;
  signal \duty_e0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__5_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__5_n_1\ : STD_LOGIC;
  signal \duty_e0_carry__5_n_2\ : STD_LOGIC;
  signal \duty_e0_carry__5_n_3\ : STD_LOGIC;
  signal \duty_e0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \duty_e0_carry__6_n_1\ : STD_LOGIC;
  signal \duty_e0_carry__6_n_2\ : STD_LOGIC;
  signal \duty_e0_carry__6_n_3\ : STD_LOGIC;
  signal duty_e0_carry_i_1_n_0 : STD_LOGIC;
  signal duty_e0_carry_i_2_n_0 : STD_LOGIC;
  signal duty_e0_carry_i_3_n_0 : STD_LOGIC;
  signal duty_e0_carry_i_4_n_0 : STD_LOGIC;
  signal duty_e0_carry_n_0 : STD_LOGIC;
  signal duty_e0_carry_n_1 : STD_LOGIC;
  signal duty_e0_carry_n_2 : STD_LOGIC;
  signal duty_e0_carry_n_3 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal past_pwm_sig : STD_LOGIC;
  signal period : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal period_e : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \period_e0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \period_e0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \period_e0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \period_e0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \period_e0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \period_e0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \period_e0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \period_e0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \period_e0_carry__0_n_0\ : STD_LOGIC;
  signal \period_e0_carry__0_n_1\ : STD_LOGIC;
  signal \period_e0_carry__0_n_2\ : STD_LOGIC;
  signal \period_e0_carry__0_n_3\ : STD_LOGIC;
  signal \period_e0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \period_e0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \period_e0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \period_e0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \period_e0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \period_e0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \period_e0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \period_e0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \period_e0_carry__1_n_0\ : STD_LOGIC;
  signal \period_e0_carry__1_n_1\ : STD_LOGIC;
  signal \period_e0_carry__1_n_2\ : STD_LOGIC;
  signal \period_e0_carry__1_n_3\ : STD_LOGIC;
  signal \period_e0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \period_e0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \period_e0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \period_e0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \period_e0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \period_e0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \period_e0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \period_e0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \period_e0_carry__2_n_0\ : STD_LOGIC;
  signal \period_e0_carry__2_n_1\ : STD_LOGIC;
  signal \period_e0_carry__2_n_2\ : STD_LOGIC;
  signal \period_e0_carry__2_n_3\ : STD_LOGIC;
  signal period_e0_carry_i_1_n_0 : STD_LOGIC;
  signal period_e0_carry_i_2_n_0 : STD_LOGIC;
  signal period_e0_carry_i_3_n_0 : STD_LOGIC;
  signal period_e0_carry_i_4_n_0 : STD_LOGIC;
  signal period_e0_carry_i_5_n_0 : STD_LOGIC;
  signal period_e0_carry_i_6_n_0 : STD_LOGIC;
  signal period_e0_carry_i_7_n_0 : STD_LOGIC;
  signal period_e0_carry_i_8_n_0 : STD_LOGIC;
  signal period_e0_carry_n_0 : STD_LOGIC;
  signal period_e0_carry_n_1 : STD_LOGIC;
  signal period_e0_carry_n_2 : STD_LOGIC;
  signal period_e0_carry_n_3 : STD_LOGIC;
  signal period_e0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \period_e1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \period_e1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \period_e1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \period_e1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \period_e1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \period_e1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \period_e1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \period_e1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \period_e1_carry__0_n_0\ : STD_LOGIC;
  signal \period_e1_carry__0_n_1\ : STD_LOGIC;
  signal \period_e1_carry__0_n_2\ : STD_LOGIC;
  signal \period_e1_carry__0_n_3\ : STD_LOGIC;
  signal \period_e1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \period_e1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \period_e1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \period_e1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \period_e1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \period_e1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \period_e1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \period_e1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \period_e1_carry__1_n_0\ : STD_LOGIC;
  signal \period_e1_carry__1_n_1\ : STD_LOGIC;
  signal \period_e1_carry__1_n_2\ : STD_LOGIC;
  signal \period_e1_carry__1_n_3\ : STD_LOGIC;
  signal \period_e1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \period_e1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \period_e1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \period_e1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \period_e1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \period_e1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \period_e1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \period_e1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \period_e1_carry__2_n_0\ : STD_LOGIC;
  signal \period_e1_carry__2_n_1\ : STD_LOGIC;
  signal \period_e1_carry__2_n_2\ : STD_LOGIC;
  signal \period_e1_carry__2_n_3\ : STD_LOGIC;
  signal period_e1_carry_i_1_n_0 : STD_LOGIC;
  signal period_e1_carry_i_2_n_0 : STD_LOGIC;
  signal period_e1_carry_i_3_n_0 : STD_LOGIC;
  signal period_e1_carry_i_4_n_0 : STD_LOGIC;
  signal period_e1_carry_i_5_n_0 : STD_LOGIC;
  signal period_e1_carry_i_6_n_0 : STD_LOGIC;
  signal period_e1_carry_i_7_n_0 : STD_LOGIC;
  signal period_e1_carry_i_8_n_0 : STD_LOGIC;
  signal period_e1_carry_n_0 : STD_LOGIC;
  signal period_e1_carry_n_1 : STD_LOGIC;
  signal period_e1_carry_n_2 : STD_LOGIC;
  signal period_e1_carry_n_3 : STD_LOGIC;
  signal \period_e[31]_i_1_n_0\ : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rising_edge_flag[3]_i_1_n_0\ : STD_LOGIC;
  signal \rising_edge_flag_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal \NLW__inferred__5/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_duty_e0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_period_e0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_period_e0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_period_e0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_period_e0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_period_e1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_period_e1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_period_e1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_period_e1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rising_edge_flag[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rising_edge_flag[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rising_edge_flag[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rising_edge_flag[3]_i_2\ : label is "soft_lutpair2";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
\_inferred__5/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__5/i__carry_n_0\,
      CO(2) => \_inferred__5/i__carry_n_1\,
      CO(1) => \_inferred__5/i__carry_n_2\,
      CO(0) => \_inferred__5/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => period_e0_in(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\_inferred__5/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry_n_0\,
      CO(3) => \_inferred__5/i__carry__0_n_0\,
      CO(2) => \_inferred__5/i__carry__0_n_1\,
      CO(1) => \_inferred__5/i__carry__0_n_2\,
      CO(0) => \_inferred__5/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => period_e0_in(7 downto 4),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\_inferred__5/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__0_n_0\,
      CO(3) => \_inferred__5/i__carry__1_n_0\,
      CO(2) => \_inferred__5/i__carry__1_n_1\,
      CO(1) => \_inferred__5/i__carry__1_n_2\,
      CO(0) => \_inferred__5/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => period_e0_in(11 downto 8),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\_inferred__5/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__1_n_0\,
      CO(3) => \_inferred__5/i__carry__2_n_0\,
      CO(2) => \_inferred__5/i__carry__2_n_1\,
      CO(1) => \_inferred__5/i__carry__2_n_2\,
      CO(0) => \_inferred__5/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => period_e0_in(15 downto 12),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
\_inferred__5/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__2_n_0\,
      CO(3) => \_inferred__5/i__carry__3_n_0\,
      CO(2) => \_inferred__5/i__carry__3_n_1\,
      CO(1) => \_inferred__5/i__carry__3_n_2\,
      CO(0) => \_inferred__5/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__3_i_1_n_0\,
      DI(2) => \i__carry__3_i_2_n_0\,
      DI(1) => \i__carry__3_i_3_n_0\,
      DI(0) => \i__carry__3_i_4_n_0\,
      O(3 downto 0) => period_e0_in(19 downto 16),
      S(3) => \i__carry__3_i_5_n_0\,
      S(2) => \i__carry__3_i_6_n_0\,
      S(1) => \i__carry__3_i_7_n_0\,
      S(0) => \i__carry__3_i_8_n_0\
    );
\_inferred__5/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__3_n_0\,
      CO(3) => \_inferred__5/i__carry__4_n_0\,
      CO(2) => \_inferred__5/i__carry__4_n_1\,
      CO(1) => \_inferred__5/i__carry__4_n_2\,
      CO(0) => \_inferred__5/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__4_i_1_n_0\,
      DI(2) => \i__carry__4_i_2_n_0\,
      DI(1) => \i__carry__4_i_3_n_0\,
      DI(0) => \i__carry__4_i_4_n_0\,
      O(3 downto 0) => period_e0_in(23 downto 20),
      S(3) => \i__carry__4_i_5_n_0\,
      S(2) => \i__carry__4_i_6_n_0\,
      S(1) => \i__carry__4_i_7_n_0\,
      S(0) => \i__carry__4_i_8_n_0\
    );
\_inferred__5/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__4_n_0\,
      CO(3) => \_inferred__5/i__carry__5_n_0\,
      CO(2) => \_inferred__5/i__carry__5_n_1\,
      CO(1) => \_inferred__5/i__carry__5_n_2\,
      CO(0) => \_inferred__5/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__5_i_1_n_0\,
      DI(2) => \i__carry__5_i_2_n_0\,
      DI(1) => \i__carry__5_i_3_n_0\,
      DI(0) => \i__carry__5_i_4_n_0\,
      O(3 downto 0) => period_e0_in(27 downto 24),
      S(3) => \i__carry__5_i_5_n_0\,
      S(2) => \i__carry__5_i_6_n_0\,
      S(1) => \i__carry__5_i_7_n_0\,
      S(0) => \i__carry__5_i_8_n_0\
    );
\_inferred__5/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__5_n_0\,
      CO(3) => \NLW__inferred__5/i__carry__6_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__5/i__carry__6_n_1\,
      CO(1) => \_inferred__5/i__carry__6_n_2\,
      CO(0) => \_inferred__5/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__6_i_1_n_0\,
      DI(1) => \i__carry__6_i_2_n_0\,
      DI(0) => \i__carry__6_i_3_n_0\,
      O(3 downto 0) => period_e0_in(31 downto 28),
      S(3) => \i__carry__6_i_4_n_0\,
      S(2) => \i__carry__6_i_5_n_0\,
      S(1) => \i__carry__6_i_6_n_0\,
      S(0) => \i__carry__6_i_7_n_0\
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFB0F0B0F0B0F0"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(0),
      I1 => period(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(10),
      I1 => period(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(11),
      I1 => period(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(12),
      I1 => period(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(13),
      I1 => period(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(14),
      I1 => period(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(15),
      I1 => period(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(16),
      I1 => period(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(17),
      I1 => period(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(18),
      I1 => period(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(19),
      I1 => period(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(1),
      I1 => period(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(20),
      I1 => period(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(21),
      I1 => period(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(22),
      I1 => period(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(23),
      I1 => period(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(24),
      I1 => period(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(25),
      I1 => period(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(26),
      I1 => period(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(27),
      I1 => period(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(28),
      I1 => period(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(29),
      I1 => period(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(2),
      I1 => period(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(30),
      I1 => period(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(31),
      I1 => period(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(3),
      I1 => period(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(4),
      I1 => period(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(5),
      I1 => period(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(6),
      I1 => period(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(7),
      I1 => period(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(8),
      I1 => period(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => duty(9),
      I1 => period(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\cap1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \rising_edge_flag_reg__0\(2),
      I1 => \rising_edge_flag_reg__0\(1),
      I2 => pwm_sig,
      I3 => past_pwm_sig,
      I4 => \rising_edge_flag_reg__0\(0),
      I5 => \rising_edge_flag_reg__0\(3),
      O => cap1_1
    );
\cap1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(0),
      Q => cap1(0),
      R => '0'
    );
\cap1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(10),
      Q => cap1(10),
      R => '0'
    );
\cap1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(11),
      Q => cap1(11),
      R => '0'
    );
\cap1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(12),
      Q => cap1(12),
      R => '0'
    );
\cap1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(13),
      Q => cap1(13),
      R => '0'
    );
\cap1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(14),
      Q => cap1(14),
      R => '0'
    );
\cap1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(15),
      Q => cap1(15),
      R => '0'
    );
\cap1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(16),
      Q => cap1(16),
      R => '0'
    );
\cap1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(17),
      Q => cap1(17),
      R => '0'
    );
\cap1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(18),
      Q => cap1(18),
      R => '0'
    );
\cap1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(19),
      Q => cap1(19),
      R => '0'
    );
\cap1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(1),
      Q => cap1(1),
      R => '0'
    );
\cap1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(20),
      Q => cap1(20),
      R => '0'
    );
\cap1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(21),
      Q => cap1(21),
      R => '0'
    );
\cap1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(22),
      Q => cap1(22),
      R => '0'
    );
\cap1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(23),
      Q => cap1(23),
      R => '0'
    );
\cap1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(24),
      Q => cap1(24),
      R => '0'
    );
\cap1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(25),
      Q => cap1(25),
      R => '0'
    );
\cap1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(26),
      Q => cap1(26),
      R => '0'
    );
\cap1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(27),
      Q => cap1(27),
      R => '0'
    );
\cap1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(28),
      Q => cap1(28),
      R => '0'
    );
\cap1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(29),
      Q => cap1(29),
      R => '0'
    );
\cap1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(2),
      Q => cap1(2),
      R => '0'
    );
\cap1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(30),
      Q => cap1(30),
      R => '0'
    );
\cap1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(31),
      Q => cap1(31),
      R => '0'
    );
\cap1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(3),
      Q => cap1(3),
      R => '0'
    );
\cap1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(4),
      Q => cap1(4),
      R => '0'
    );
\cap1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(5),
      Q => cap1(5),
      R => '0'
    );
\cap1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(6),
      Q => cap1(6),
      R => '0'
    );
\cap1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(7),
      Q => cap1(7),
      R => '0'
    );
\cap1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(8),
      Q => cap1(8),
      R => '0'
    );
\cap1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap1_1,
      D => counter_reg(9),
      Q => cap1(9),
      R => '0'
    );
\cap2[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => past_pwm_sig,
      I1 => pwm_sig,
      O => \cap2[31]_i_1_n_0\
    );
\cap2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(0),
      Q => cap2(0),
      R => '0'
    );
\cap2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(10),
      Q => cap2(10),
      R => '0'
    );
\cap2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(11),
      Q => cap2(11),
      R => '0'
    );
\cap2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(12),
      Q => cap2(12),
      R => '0'
    );
\cap2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(13),
      Q => cap2(13),
      R => '0'
    );
\cap2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(14),
      Q => cap2(14),
      R => '0'
    );
\cap2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(15),
      Q => cap2(15),
      R => '0'
    );
\cap2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(16),
      Q => cap2(16),
      R => '0'
    );
\cap2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(17),
      Q => cap2(17),
      R => '0'
    );
\cap2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(18),
      Q => cap2(18),
      R => '0'
    );
\cap2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(19),
      Q => cap2(19),
      R => '0'
    );
\cap2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(1),
      Q => cap2(1),
      R => '0'
    );
\cap2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(20),
      Q => cap2(20),
      R => '0'
    );
\cap2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(21),
      Q => cap2(21),
      R => '0'
    );
\cap2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(22),
      Q => cap2(22),
      R => '0'
    );
\cap2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(23),
      Q => cap2(23),
      R => '0'
    );
\cap2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(24),
      Q => cap2(24),
      R => '0'
    );
\cap2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(25),
      Q => cap2(25),
      R => '0'
    );
\cap2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(26),
      Q => cap2(26),
      R => '0'
    );
\cap2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(27),
      Q => cap2(27),
      R => '0'
    );
\cap2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(28),
      Q => cap2(28),
      R => '0'
    );
\cap2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(29),
      Q => cap2(29),
      R => '0'
    );
\cap2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(2),
      Q => cap2(2),
      R => '0'
    );
\cap2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(30),
      Q => cap2(30),
      R => '0'
    );
\cap2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(31),
      Q => cap2(31),
      R => '0'
    );
\cap2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(3),
      Q => cap2(3),
      R => '0'
    );
\cap2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(4),
      Q => cap2(4),
      R => '0'
    );
\cap2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(5),
      Q => cap2(5),
      R => '0'
    );
\cap2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(6),
      Q => cap2(6),
      R => '0'
    );
\cap2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(7),
      Q => cap2(7),
      R => '0'
    );
\cap2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(8),
      Q => cap2(8),
      R => '0'
    );
\cap2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \cap2[31]_i_1_n_0\,
      D => counter_reg(9),
      Q => cap2(9),
      R => '0'
    );
\cap3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \rising_edge_flag_reg__0\(2),
      I1 => \rising_edge_flag_reg__0\(1),
      I2 => pwm_sig,
      I3 => past_pwm_sig,
      I4 => \rising_edge_flag_reg__0\(0),
      I5 => \rising_edge_flag_reg__0\(3),
      O => cap3_0
    );
\cap3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(0),
      Q => cap3(0),
      R => '0'
    );
\cap3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(10),
      Q => cap3(10),
      R => '0'
    );
\cap3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(11),
      Q => cap3(11),
      R => '0'
    );
\cap3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(12),
      Q => cap3(12),
      R => '0'
    );
\cap3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(13),
      Q => cap3(13),
      R => '0'
    );
\cap3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(14),
      Q => cap3(14),
      R => '0'
    );
\cap3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(15),
      Q => cap3(15),
      R => '0'
    );
\cap3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(16),
      Q => cap3(16),
      R => '0'
    );
\cap3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(17),
      Q => cap3(17),
      R => '0'
    );
\cap3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(18),
      Q => cap3(18),
      R => '0'
    );
\cap3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(19),
      Q => cap3(19),
      R => '0'
    );
\cap3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(1),
      Q => cap3(1),
      R => '0'
    );
\cap3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(20),
      Q => cap3(20),
      R => '0'
    );
\cap3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(21),
      Q => cap3(21),
      R => '0'
    );
\cap3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(22),
      Q => cap3(22),
      R => '0'
    );
\cap3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(23),
      Q => cap3(23),
      R => '0'
    );
\cap3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(24),
      Q => cap3(24),
      R => '0'
    );
\cap3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(25),
      Q => cap3(25),
      R => '0'
    );
\cap3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(26),
      Q => cap3(26),
      R => '0'
    );
\cap3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(27),
      Q => cap3(27),
      R => '0'
    );
\cap3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(28),
      Q => cap3(28),
      R => '0'
    );
\cap3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(29),
      Q => cap3(29),
      R => '0'
    );
\cap3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(2),
      Q => cap3(2),
      R => '0'
    );
\cap3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(30),
      Q => cap3(30),
      R => '0'
    );
\cap3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(31),
      Q => cap3(31),
      R => '0'
    );
\cap3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(3),
      Q => cap3(3),
      R => '0'
    );
\cap3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(4),
      Q => cap3(4),
      R => '0'
    );
\cap3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(5),
      Q => cap3(5),
      R => '0'
    );
\cap3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(6),
      Q => cap3(6),
      R => '0'
    );
\cap3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(7),
      Q => cap3(7),
      R => '0'
    );
\cap3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(8),
      Q => cap3(8),
      R => '0'
    );
\cap3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => counter_reg(9),
      Q => cap3(9),
      R => '0'
    );
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_7\,
      Q => counter_reg(0),
      R => '0'
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_2_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => '0'
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => '0'
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => '0'
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => '0'
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => '0'
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => '0'
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => '0'
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17),
      R => '0'
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18),
      R => '0'
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_6\,
      Q => counter_reg(1),
      R => '0'
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20),
      R => '0'
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => counter_reg(23 downto 20)
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21),
      R => '0'
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22),
      R => '0'
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23),
      R => '0'
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24),
      R => '0'
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3) => \counter_reg[24]_i_1_n_0\,
      CO(2) => \counter_reg[24]_i_1_n_1\,
      CO(1) => \counter_reg[24]_i_1_n_2\,
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[24]_i_1_n_4\,
      O(2) => \counter_reg[24]_i_1_n_5\,
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => counter_reg(27 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25),
      R => '0'
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_5\,
      Q => counter_reg(26),
      R => '0'
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_4\,
      Q => counter_reg(27),
      R => '0'
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[28]_i_1_n_7\,
      Q => counter_reg(28),
      R => '0'
    );
\counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[28]_i_1_n_1\,
      CO(1) => \counter_reg[28]_i_1_n_2\,
      CO(0) => \counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[28]_i_1_n_4\,
      O(2) => \counter_reg[28]_i_1_n_5\,
      O(1) => \counter_reg[28]_i_1_n_6\,
      O(0) => \counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => counter_reg(31 downto 28)
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[28]_i_1_n_6\,
      Q => counter_reg(29),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2),
      R => '0'
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[28]_i_1_n_5\,
      Q => counter_reg(30),
      R => '0'
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[28]_i_1_n_4\,
      Q => counter_reg(31),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => '0'
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => '0'
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => '0'
    );
duty_e0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => duty_e0_carry_n_0,
      CO(2) => duty_e0_carry_n_1,
      CO(1) => duty_e0_carry_n_2,
      CO(0) => duty_e0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => cap2(3 downto 0),
      O(3 downto 0) => duty_e0(3 downto 0),
      S(3) => duty_e0_carry_i_1_n_0,
      S(2) => duty_e0_carry_i_2_n_0,
      S(1) => duty_e0_carry_i_3_n_0,
      S(0) => duty_e0_carry_i_4_n_0
    );
\duty_e0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => duty_e0_carry_n_0,
      CO(3) => \duty_e0_carry__0_n_0\,
      CO(2) => \duty_e0_carry__0_n_1\,
      CO(1) => \duty_e0_carry__0_n_2\,
      CO(0) => \duty_e0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cap2(7 downto 4),
      O(3 downto 0) => duty_e0(7 downto 4),
      S(3) => \duty_e0_carry__0_i_1_n_0\,
      S(2) => \duty_e0_carry__0_i_2_n_0\,
      S(1) => \duty_e0_carry__0_i_3_n_0\,
      S(0) => \duty_e0_carry__0_i_4_n_0\
    );
\duty_e0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(7),
      I1 => cap1(7),
      O => \duty_e0_carry__0_i_1_n_0\
    );
\duty_e0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(6),
      I1 => cap1(6),
      O => \duty_e0_carry__0_i_2_n_0\
    );
\duty_e0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(5),
      I1 => cap1(5),
      O => \duty_e0_carry__0_i_3_n_0\
    );
\duty_e0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(4),
      I1 => cap1(4),
      O => \duty_e0_carry__0_i_4_n_0\
    );
\duty_e0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_e0_carry__0_n_0\,
      CO(3) => \duty_e0_carry__1_n_0\,
      CO(2) => \duty_e0_carry__1_n_1\,
      CO(1) => \duty_e0_carry__1_n_2\,
      CO(0) => \duty_e0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cap2(11 downto 8),
      O(3 downto 0) => duty_e0(11 downto 8),
      S(3) => \duty_e0_carry__1_i_1_n_0\,
      S(2) => \duty_e0_carry__1_i_2_n_0\,
      S(1) => \duty_e0_carry__1_i_3_n_0\,
      S(0) => \duty_e0_carry__1_i_4_n_0\
    );
\duty_e0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(11),
      I1 => cap1(11),
      O => \duty_e0_carry__1_i_1_n_0\
    );
\duty_e0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(10),
      I1 => cap1(10),
      O => \duty_e0_carry__1_i_2_n_0\
    );
\duty_e0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(9),
      I1 => cap1(9),
      O => \duty_e0_carry__1_i_3_n_0\
    );
\duty_e0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(8),
      I1 => cap1(8),
      O => \duty_e0_carry__1_i_4_n_0\
    );
\duty_e0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_e0_carry__1_n_0\,
      CO(3) => \duty_e0_carry__2_n_0\,
      CO(2) => \duty_e0_carry__2_n_1\,
      CO(1) => \duty_e0_carry__2_n_2\,
      CO(0) => \duty_e0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cap2(15 downto 12),
      O(3 downto 0) => duty_e0(15 downto 12),
      S(3) => \duty_e0_carry__2_i_1_n_0\,
      S(2) => \duty_e0_carry__2_i_2_n_0\,
      S(1) => \duty_e0_carry__2_i_3_n_0\,
      S(0) => \duty_e0_carry__2_i_4_n_0\
    );
\duty_e0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(15),
      I1 => cap1(15),
      O => \duty_e0_carry__2_i_1_n_0\
    );
\duty_e0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(14),
      I1 => cap1(14),
      O => \duty_e0_carry__2_i_2_n_0\
    );
\duty_e0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(13),
      I1 => cap1(13),
      O => \duty_e0_carry__2_i_3_n_0\
    );
\duty_e0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(12),
      I1 => cap1(12),
      O => \duty_e0_carry__2_i_4_n_0\
    );
\duty_e0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_e0_carry__2_n_0\,
      CO(3) => \duty_e0_carry__3_n_0\,
      CO(2) => \duty_e0_carry__3_n_1\,
      CO(1) => \duty_e0_carry__3_n_2\,
      CO(0) => \duty_e0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cap2(19 downto 16),
      O(3 downto 0) => duty_e0(19 downto 16),
      S(3) => \duty_e0_carry__3_i_1_n_0\,
      S(2) => \duty_e0_carry__3_i_2_n_0\,
      S(1) => \duty_e0_carry__3_i_3_n_0\,
      S(0) => \duty_e0_carry__3_i_4_n_0\
    );
\duty_e0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(19),
      I1 => cap1(19),
      O => \duty_e0_carry__3_i_1_n_0\
    );
\duty_e0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(18),
      I1 => cap1(18),
      O => \duty_e0_carry__3_i_2_n_0\
    );
\duty_e0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(17),
      I1 => cap1(17),
      O => \duty_e0_carry__3_i_3_n_0\
    );
\duty_e0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(16),
      I1 => cap1(16),
      O => \duty_e0_carry__3_i_4_n_0\
    );
\duty_e0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_e0_carry__3_n_0\,
      CO(3) => \duty_e0_carry__4_n_0\,
      CO(2) => \duty_e0_carry__4_n_1\,
      CO(1) => \duty_e0_carry__4_n_2\,
      CO(0) => \duty_e0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cap2(23 downto 20),
      O(3 downto 0) => duty_e0(23 downto 20),
      S(3) => \duty_e0_carry__4_i_1_n_0\,
      S(2) => \duty_e0_carry__4_i_2_n_0\,
      S(1) => \duty_e0_carry__4_i_3_n_0\,
      S(0) => \duty_e0_carry__4_i_4_n_0\
    );
\duty_e0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(23),
      I1 => cap1(23),
      O => \duty_e0_carry__4_i_1_n_0\
    );
\duty_e0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(22),
      I1 => cap1(22),
      O => \duty_e0_carry__4_i_2_n_0\
    );
\duty_e0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(21),
      I1 => cap1(21),
      O => \duty_e0_carry__4_i_3_n_0\
    );
\duty_e0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(20),
      I1 => cap1(20),
      O => \duty_e0_carry__4_i_4_n_0\
    );
\duty_e0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_e0_carry__4_n_0\,
      CO(3) => \duty_e0_carry__5_n_0\,
      CO(2) => \duty_e0_carry__5_n_1\,
      CO(1) => \duty_e0_carry__5_n_2\,
      CO(0) => \duty_e0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cap2(27 downto 24),
      O(3 downto 0) => duty_e0(27 downto 24),
      S(3) => \duty_e0_carry__5_i_1_n_0\,
      S(2) => \duty_e0_carry__5_i_2_n_0\,
      S(1) => \duty_e0_carry__5_i_3_n_0\,
      S(0) => \duty_e0_carry__5_i_4_n_0\
    );
\duty_e0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(27),
      I1 => cap1(27),
      O => \duty_e0_carry__5_i_1_n_0\
    );
\duty_e0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(26),
      I1 => cap1(26),
      O => \duty_e0_carry__5_i_2_n_0\
    );
\duty_e0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(25),
      I1 => cap1(25),
      O => \duty_e0_carry__5_i_3_n_0\
    );
\duty_e0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(24),
      I1 => cap1(24),
      O => \duty_e0_carry__5_i_4_n_0\
    );
\duty_e0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_e0_carry__5_n_0\,
      CO(3) => \NLW_duty_e0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \duty_e0_carry__6_n_1\,
      CO(1) => \duty_e0_carry__6_n_2\,
      CO(0) => \duty_e0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => cap2(30 downto 28),
      O(3 downto 0) => duty_e0(31 downto 28),
      S(3) => \duty_e0_carry__6_i_1_n_0\,
      S(2) => \duty_e0_carry__6_i_2_n_0\,
      S(1) => \duty_e0_carry__6_i_3_n_0\,
      S(0) => \duty_e0_carry__6_i_4_n_0\
    );
\duty_e0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(31),
      I1 => cap1(31),
      O => \duty_e0_carry__6_i_1_n_0\
    );
\duty_e0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(30),
      I1 => cap1(30),
      O => \duty_e0_carry__6_i_2_n_0\
    );
\duty_e0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(29),
      I1 => cap1(29),
      O => \duty_e0_carry__6_i_3_n_0\
    );
\duty_e0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(28),
      I1 => cap1(28),
      O => \duty_e0_carry__6_i_4_n_0\
    );
duty_e0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(3),
      I1 => cap1(3),
      O => duty_e0_carry_i_1_n_0
    );
duty_e0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(2),
      I1 => cap1(2),
      O => duty_e0_carry_i_2_n_0
    );
duty_e0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(1),
      I1 => cap1(1),
      O => duty_e0_carry_i_3_n_0
    );
duty_e0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap2(0),
      I1 => cap1(0),
      O => duty_e0_carry_i_4_n_0
    );
\duty_e_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(0),
      Q => duty_e(0),
      R => '0'
    );
\duty_e_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(10),
      Q => duty_e(10),
      R => '0'
    );
\duty_e_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(11),
      Q => duty_e(11),
      R => '0'
    );
\duty_e_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(12),
      Q => duty_e(12),
      R => '0'
    );
\duty_e_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(13),
      Q => duty_e(13),
      R => '0'
    );
\duty_e_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(14),
      Q => duty_e(14),
      R => '0'
    );
\duty_e_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(15),
      Q => duty_e(15),
      R => '0'
    );
\duty_e_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(16),
      Q => duty_e(16),
      R => '0'
    );
\duty_e_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(17),
      Q => duty_e(17),
      R => '0'
    );
\duty_e_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(18),
      Q => duty_e(18),
      R => '0'
    );
\duty_e_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(19),
      Q => duty_e(19),
      R => '0'
    );
\duty_e_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(1),
      Q => duty_e(1),
      R => '0'
    );
\duty_e_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(20),
      Q => duty_e(20),
      R => '0'
    );
\duty_e_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(21),
      Q => duty_e(21),
      R => '0'
    );
\duty_e_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(22),
      Q => duty_e(22),
      R => '0'
    );
\duty_e_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(23),
      Q => duty_e(23),
      R => '0'
    );
\duty_e_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(24),
      Q => duty_e(24),
      R => '0'
    );
\duty_e_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(25),
      Q => duty_e(25),
      R => '0'
    );
\duty_e_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(26),
      Q => duty_e(26),
      R => '0'
    );
\duty_e_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(27),
      Q => duty_e(27),
      R => '0'
    );
\duty_e_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(28),
      Q => duty_e(28),
      R => '0'
    );
\duty_e_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(29),
      Q => duty_e(29),
      R => '0'
    );
\duty_e_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(2),
      Q => duty_e(2),
      R => '0'
    );
\duty_e_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(30),
      Q => duty_e(30),
      R => '0'
    );
\duty_e_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(31),
      Q => duty_e(31),
      R => '0'
    );
\duty_e_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(3),
      Q => duty_e(3),
      R => '0'
    );
\duty_e_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(4),
      Q => duty_e(4),
      R => '0'
    );
\duty_e_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(5),
      Q => duty_e(5),
      R => '0'
    );
\duty_e_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(6),
      Q => duty_e(6),
      R => '0'
    );
\duty_e_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(7),
      Q => duty_e(7),
      R => '0'
    );
\duty_e_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(8),
      Q => duty_e(8),
      R => '0'
    );
\duty_e_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e0(9),
      Q => duty_e(9),
      R => '0'
    );
\duty_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(0),
      Q => duty(0),
      R => '0'
    );
\duty_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(10),
      Q => duty(10),
      R => '0'
    );
\duty_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(11),
      Q => duty(11),
      R => '0'
    );
\duty_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(12),
      Q => duty(12),
      R => '0'
    );
\duty_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(13),
      Q => duty(13),
      R => '0'
    );
\duty_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(14),
      Q => duty(14),
      R => '0'
    );
\duty_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(15),
      Q => duty(15),
      R => '0'
    );
\duty_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(16),
      Q => duty(16),
      R => '0'
    );
\duty_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(17),
      Q => duty(17),
      R => '0'
    );
\duty_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(18),
      Q => duty(18),
      R => '0'
    );
\duty_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(19),
      Q => duty(19),
      R => '0'
    );
\duty_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(1),
      Q => duty(1),
      R => '0'
    );
\duty_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(20),
      Q => duty(20),
      R => '0'
    );
\duty_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(21),
      Q => duty(21),
      R => '0'
    );
\duty_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(22),
      Q => duty(22),
      R => '0'
    );
\duty_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(23),
      Q => duty(23),
      R => '0'
    );
\duty_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(24),
      Q => duty(24),
      R => '0'
    );
\duty_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(25),
      Q => duty(25),
      R => '0'
    );
\duty_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(26),
      Q => duty(26),
      R => '0'
    );
\duty_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(27),
      Q => duty(27),
      R => '0'
    );
\duty_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(28),
      Q => duty(28),
      R => '0'
    );
\duty_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(29),
      Q => duty(29),
      R => '0'
    );
\duty_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(2),
      Q => duty(2),
      R => '0'
    );
\duty_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(30),
      Q => duty(30),
      R => '0'
    );
\duty_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(31),
      Q => duty(31),
      R => '0'
    );
\duty_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(3),
      Q => duty(3),
      R => '0'
    );
\duty_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(4),
      Q => duty(4),
      R => '0'
    );
\duty_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(5),
      Q => duty(5),
      R => '0'
    );
\duty_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(6),
      Q => duty(6),
      R => '0'
    );
\duty_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(7),
      Q => duty(7),
      R => '0'
    );
\duty_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(8),
      Q => duty(8),
      R => '0'
    );
\duty_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => duty_e(9),
      Q => duty(9),
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(7),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(6),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(5),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(4),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(7),
      I1 => cap3(7),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(6),
      I1 => cap3(6),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(5),
      I1 => cap3(5),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(4),
      I1 => cap3(4),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(11),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(11),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(10),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(10),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(9),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(8),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(11),
      I1 => cap3(11),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(10),
      I1 => cap3(10),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(9),
      I1 => cap3(9),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(8),
      I1 => cap3(8),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(15),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(14),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(13),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(12),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(12),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(15),
      I1 => cap3(15),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(14),
      I1 => cap3(14),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(13),
      I1 => cap3(13),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(12),
      I1 => cap3(12),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(19),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(19),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(18),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(18),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(17),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(17),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(16),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(16),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(19),
      I1 => cap3(19),
      O => \i__carry__3_i_5_n_0\
    );
\i__carry__3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(18),
      I1 => cap3(18),
      O => \i__carry__3_i_6_n_0\
    );
\i__carry__3_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(17),
      I1 => cap3(17),
      O => \i__carry__3_i_7_n_0\
    );
\i__carry__3_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(16),
      I1 => cap3(16),
      O => \i__carry__3_i_8_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(23),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(23),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(22),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(22),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(21),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(21),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(20),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(20),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(23),
      I1 => cap3(23),
      O => \i__carry__4_i_5_n_0\
    );
\i__carry__4_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(22),
      I1 => cap3(22),
      O => \i__carry__4_i_6_n_0\
    );
\i__carry__4_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(21),
      I1 => cap3(21),
      O => \i__carry__4_i_7_n_0\
    );
\i__carry__4_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(20),
      I1 => cap3(20),
      O => \i__carry__4_i_8_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(27),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(27),
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(26),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(26),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(25),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(25),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(24),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(24),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__5_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(27),
      I1 => cap3(27),
      O => \i__carry__5_i_5_n_0\
    );
\i__carry__5_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(26),
      I1 => cap3(26),
      O => \i__carry__5_i_6_n_0\
    );
\i__carry__5_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(25),
      I1 => cap3(25),
      O => \i__carry__5_i_7_n_0\
    );
\i__carry__5_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(24),
      I1 => cap3(24),
      O => \i__carry__5_i_8_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(30),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(30),
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(29),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(29),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(28),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(28),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap3(31),
      I1 => cap1(31),
      O => \i__carry__6_i_4_n_0\
    );
\i__carry__6_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(30),
      I1 => cap3(30),
      O => \i__carry__6_i_5_n_0\
    );
\i__carry__6_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(29),
      I1 => cap3(29),
      O => \i__carry__6_i_6_n_0\
    );
\i__carry__6_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(28),
      I1 => cap3(28),
      O => \i__carry__6_i_7_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(3),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(3),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(2),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(2),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(1),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => cap1(0),
      I1 => \period_e1_carry__2_n_0\,
      I2 => cap3(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(3),
      I1 => cap3(3),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(2),
      I1 => cap3(2),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(1),
      I1 => cap3(1),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cap1(0),
      I1 => cap3(0),
      O => \i__carry_i_8_n_0\
    );
past_pwm_sig_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pwm_sig,
      Q => past_pwm_sig,
      R => '0'
    );
period_e0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => period_e0_carry_n_0,
      CO(2) => period_e0_carry_n_1,
      CO(1) => period_e0_carry_n_2,
      CO(0) => period_e0_carry_n_3,
      CYINIT => '0',
      DI(3) => period_e0_carry_i_1_n_0,
      DI(2) => period_e0_carry_i_2_n_0,
      DI(1) => period_e0_carry_i_3_n_0,
      DI(0) => period_e0_carry_i_4_n_0,
      O(3 downto 0) => NLW_period_e0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => period_e0_carry_i_5_n_0,
      S(2) => period_e0_carry_i_6_n_0,
      S(1) => period_e0_carry_i_7_n_0,
      S(0) => period_e0_carry_i_8_n_0
    );
\period_e0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => period_e0_carry_n_0,
      CO(3) => \period_e0_carry__0_n_0\,
      CO(2) => \period_e0_carry__0_n_1\,
      CO(1) => \period_e0_carry__0_n_2\,
      CO(0) => \period_e0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \period_e0_carry__0_i_1_n_0\,
      DI(2) => \period_e0_carry__0_i_2_n_0\,
      DI(1) => \period_e0_carry__0_i_3_n_0\,
      DI(0) => \period_e0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_period_e0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \period_e0_carry__0_i_5_n_0\,
      S(2) => \period_e0_carry__0_i_6_n_0\,
      S(1) => \period_e0_carry__0_i_7_n_0\,
      S(0) => \period_e0_carry__0_i_8_n_0\
    );
\period_e0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(14),
      I1 => cap1(14),
      I2 => cap1(15),
      I3 => cap3(15),
      O => \period_e0_carry__0_i_1_n_0\
    );
\period_e0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(12),
      I1 => cap1(12),
      I2 => cap1(13),
      I3 => cap3(13),
      O => \period_e0_carry__0_i_2_n_0\
    );
\period_e0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(10),
      I1 => cap1(10),
      I2 => cap1(11),
      I3 => cap3(11),
      O => \period_e0_carry__0_i_3_n_0\
    );
\period_e0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(8),
      I1 => cap1(8),
      I2 => cap1(9),
      I3 => cap3(9),
      O => \period_e0_carry__0_i_4_n_0\
    );
\period_e0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(14),
      I1 => cap3(15),
      I2 => cap1(15),
      I3 => cap3(14),
      O => \period_e0_carry__0_i_5_n_0\
    );
\period_e0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(12),
      I1 => cap3(13),
      I2 => cap1(13),
      I3 => cap3(12),
      O => \period_e0_carry__0_i_6_n_0\
    );
\period_e0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(10),
      I1 => cap3(11),
      I2 => cap1(11),
      I3 => cap3(10),
      O => \period_e0_carry__0_i_7_n_0\
    );
\period_e0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(8),
      I1 => cap3(9),
      I2 => cap1(9),
      I3 => cap3(8),
      O => \period_e0_carry__0_i_8_n_0\
    );
\period_e0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \period_e0_carry__0_n_0\,
      CO(3) => \period_e0_carry__1_n_0\,
      CO(2) => \period_e0_carry__1_n_1\,
      CO(1) => \period_e0_carry__1_n_2\,
      CO(0) => \period_e0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \period_e0_carry__1_i_1_n_0\,
      DI(2) => \period_e0_carry__1_i_2_n_0\,
      DI(1) => \period_e0_carry__1_i_3_n_0\,
      DI(0) => \period_e0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_period_e0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \period_e0_carry__1_i_5_n_0\,
      S(2) => \period_e0_carry__1_i_6_n_0\,
      S(1) => \period_e0_carry__1_i_7_n_0\,
      S(0) => \period_e0_carry__1_i_8_n_0\
    );
\period_e0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(22),
      I1 => cap1(22),
      I2 => cap1(23),
      I3 => cap3(23),
      O => \period_e0_carry__1_i_1_n_0\
    );
\period_e0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(20),
      I1 => cap1(20),
      I2 => cap1(21),
      I3 => cap3(21),
      O => \period_e0_carry__1_i_2_n_0\
    );
\period_e0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(18),
      I1 => cap1(18),
      I2 => cap1(19),
      I3 => cap3(19),
      O => \period_e0_carry__1_i_3_n_0\
    );
\period_e0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(16),
      I1 => cap1(16),
      I2 => cap1(17),
      I3 => cap3(17),
      O => \period_e0_carry__1_i_4_n_0\
    );
\period_e0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(22),
      I1 => cap1(23),
      I2 => cap3(23),
      I3 => cap3(22),
      O => \period_e0_carry__1_i_5_n_0\
    );
\period_e0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap3(20),
      I1 => cap1(21),
      I2 => cap3(21),
      I3 => cap1(20),
      O => \period_e0_carry__1_i_6_n_0\
    );
\period_e0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(18),
      I1 => cap3(19),
      I2 => cap1(19),
      I3 => cap3(18),
      O => \period_e0_carry__1_i_7_n_0\
    );
\period_e0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(16),
      I1 => cap3(17),
      I2 => cap1(17),
      I3 => cap3(16),
      O => \period_e0_carry__1_i_8_n_0\
    );
\period_e0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \period_e0_carry__1_n_0\,
      CO(3) => \period_e0_carry__2_n_0\,
      CO(2) => \period_e0_carry__2_n_1\,
      CO(1) => \period_e0_carry__2_n_2\,
      CO(0) => \period_e0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \period_e0_carry__2_i_1_n_0\,
      DI(2) => \period_e0_carry__2_i_2_n_0\,
      DI(1) => \period_e0_carry__2_i_3_n_0\,
      DI(0) => \period_e0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_period_e0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \period_e0_carry__2_i_5_n_0\,
      S(2) => \period_e0_carry__2_i_6_n_0\,
      S(1) => \period_e0_carry__2_i_7_n_0\,
      S(0) => \period_e0_carry__2_i_8_n_0\
    );
\period_e0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(30),
      I1 => cap1(30),
      I2 => cap1(31),
      I3 => cap3(31),
      O => \period_e0_carry__2_i_1_n_0\
    );
\period_e0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(28),
      I1 => cap1(28),
      I2 => cap1(29),
      I3 => cap3(29),
      O => \period_e0_carry__2_i_2_n_0\
    );
\period_e0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(26),
      I1 => cap1(26),
      I2 => cap1(27),
      I3 => cap3(27),
      O => \period_e0_carry__2_i_3_n_0\
    );
\period_e0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(24),
      I1 => cap1(24),
      I2 => cap1(25),
      I3 => cap3(25),
      O => \period_e0_carry__2_i_4_n_0\
    );
\period_e0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap3(30),
      I1 => cap1(31),
      I2 => cap3(31),
      I3 => cap1(30),
      O => \period_e0_carry__2_i_5_n_0\
    );
\period_e0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap3(28),
      I1 => cap1(29),
      I2 => cap3(29),
      I3 => cap1(28),
      O => \period_e0_carry__2_i_6_n_0\
    );
\period_e0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap3(26),
      I1 => cap1(27),
      I2 => cap3(27),
      I3 => cap1(26),
      O => \period_e0_carry__2_i_7_n_0\
    );
\period_e0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap3(24),
      I1 => cap1(25),
      I2 => cap3(25),
      I3 => cap1(24),
      O => \period_e0_carry__2_i_8_n_0\
    );
period_e0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(6),
      I1 => cap1(6),
      I2 => cap1(7),
      I3 => cap3(7),
      O => period_e0_carry_i_1_n_0
    );
period_e0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(4),
      I1 => cap1(4),
      I2 => cap1(5),
      I3 => cap3(5),
      O => period_e0_carry_i_2_n_0
    );
period_e0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(2),
      I1 => cap1(2),
      I2 => cap1(3),
      I3 => cap3(3),
      O => period_e0_carry_i_3_n_0
    );
period_e0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap3(0),
      I1 => cap1(0),
      I2 => cap1(1),
      I3 => cap3(1),
      O => period_e0_carry_i_4_n_0
    );
period_e0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(6),
      I1 => cap3(7),
      I2 => cap1(7),
      I3 => cap3(6),
      O => period_e0_carry_i_5_n_0
    );
period_e0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(4),
      I1 => cap3(5),
      I2 => cap1(5),
      I3 => cap3(4),
      O => period_e0_carry_i_6_n_0
    );
period_e0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(2),
      I1 => cap3(3),
      I2 => cap1(3),
      I3 => cap3(2),
      O => period_e0_carry_i_7_n_0
    );
period_e0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(0),
      I1 => cap3(1),
      I2 => cap1(1),
      I3 => cap3(0),
      O => period_e0_carry_i_8_n_0
    );
period_e1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => period_e1_carry_n_0,
      CO(2) => period_e1_carry_n_1,
      CO(1) => period_e1_carry_n_2,
      CO(0) => period_e1_carry_n_3,
      CYINIT => '0',
      DI(3) => period_e1_carry_i_1_n_0,
      DI(2) => period_e1_carry_i_2_n_0,
      DI(1) => period_e1_carry_i_3_n_0,
      DI(0) => period_e1_carry_i_4_n_0,
      O(3 downto 0) => NLW_period_e1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => period_e1_carry_i_5_n_0,
      S(2) => period_e1_carry_i_6_n_0,
      S(1) => period_e1_carry_i_7_n_0,
      S(0) => period_e1_carry_i_8_n_0
    );
\period_e1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => period_e1_carry_n_0,
      CO(3) => \period_e1_carry__0_n_0\,
      CO(2) => \period_e1_carry__0_n_1\,
      CO(1) => \period_e1_carry__0_n_2\,
      CO(0) => \period_e1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \period_e1_carry__0_i_1_n_0\,
      DI(2) => \period_e1_carry__0_i_2_n_0\,
      DI(1) => \period_e1_carry__0_i_3_n_0\,
      DI(0) => \period_e1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_period_e1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \period_e1_carry__0_i_5_n_0\,
      S(2) => \period_e1_carry__0_i_6_n_0\,
      S(1) => \period_e1_carry__0_i_7_n_0\,
      S(0) => \period_e1_carry__0_i_8_n_0\
    );
\period_e1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(14),
      I1 => cap3(14),
      I2 => cap3(15),
      I3 => cap1(15),
      O => \period_e1_carry__0_i_1_n_0\
    );
\period_e1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(12),
      I1 => cap3(12),
      I2 => cap3(13),
      I3 => cap1(13),
      O => \period_e1_carry__0_i_2_n_0\
    );
\period_e1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(10),
      I1 => cap3(10),
      I2 => cap3(11),
      I3 => cap1(11),
      O => \period_e1_carry__0_i_3_n_0\
    );
\period_e1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(8),
      I1 => cap3(8),
      I2 => cap3(9),
      I3 => cap1(9),
      O => \period_e1_carry__0_i_4_n_0\
    );
\period_e1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(14),
      I1 => cap3(15),
      I2 => cap1(15),
      I3 => cap3(14),
      O => \period_e1_carry__0_i_5_n_0\
    );
\period_e1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(12),
      I1 => cap3(13),
      I2 => cap1(13),
      I3 => cap3(12),
      O => \period_e1_carry__0_i_6_n_0\
    );
\period_e1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(10),
      I1 => cap3(11),
      I2 => cap1(11),
      I3 => cap3(10),
      O => \period_e1_carry__0_i_7_n_0\
    );
\period_e1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(8),
      I1 => cap3(9),
      I2 => cap1(9),
      I3 => cap3(8),
      O => \period_e1_carry__0_i_8_n_0\
    );
\period_e1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \period_e1_carry__0_n_0\,
      CO(3) => \period_e1_carry__1_n_0\,
      CO(2) => \period_e1_carry__1_n_1\,
      CO(1) => \period_e1_carry__1_n_2\,
      CO(0) => \period_e1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \period_e1_carry__1_i_1_n_0\,
      DI(2) => \period_e1_carry__1_i_2_n_0\,
      DI(1) => \period_e1_carry__1_i_3_n_0\,
      DI(0) => \period_e1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_period_e1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \period_e1_carry__1_i_5_n_0\,
      S(2) => \period_e1_carry__1_i_6_n_0\,
      S(1) => \period_e1_carry__1_i_7_n_0\,
      S(0) => \period_e1_carry__1_i_8_n_0\
    );
\period_e1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(22),
      I1 => cap3(22),
      I2 => cap3(23),
      I3 => cap1(23),
      O => \period_e1_carry__1_i_1_n_0\
    );
\period_e1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(20),
      I1 => cap3(20),
      I2 => cap3(21),
      I3 => cap1(21),
      O => \period_e1_carry__1_i_2_n_0\
    );
\period_e1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(18),
      I1 => cap3(18),
      I2 => cap3(19),
      I3 => cap1(19),
      O => \period_e1_carry__1_i_3_n_0\
    );
\period_e1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(16),
      I1 => cap3(16),
      I2 => cap3(17),
      I3 => cap1(17),
      O => \period_e1_carry__1_i_4_n_0\
    );
\period_e1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(22),
      I1 => cap1(23),
      I2 => cap3(23),
      I3 => cap3(22),
      O => \period_e1_carry__1_i_5_n_0\
    );
\period_e1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap3(20),
      I1 => cap1(21),
      I2 => cap3(21),
      I3 => cap1(20),
      O => \period_e1_carry__1_i_6_n_0\
    );
\period_e1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(18),
      I1 => cap3(19),
      I2 => cap1(19),
      I3 => cap3(18),
      O => \period_e1_carry__1_i_7_n_0\
    );
\period_e1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(16),
      I1 => cap3(17),
      I2 => cap1(17),
      I3 => cap3(16),
      O => \period_e1_carry__1_i_8_n_0\
    );
\period_e1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \period_e1_carry__1_n_0\,
      CO(3) => \period_e1_carry__2_n_0\,
      CO(2) => \period_e1_carry__2_n_1\,
      CO(1) => \period_e1_carry__2_n_2\,
      CO(0) => \period_e1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \period_e1_carry__2_i_1_n_0\,
      DI(2) => \period_e1_carry__2_i_2_n_0\,
      DI(1) => \period_e1_carry__2_i_3_n_0\,
      DI(0) => \period_e1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_period_e1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \period_e1_carry__2_i_5_n_0\,
      S(2) => \period_e1_carry__2_i_6_n_0\,
      S(1) => \period_e1_carry__2_i_7_n_0\,
      S(0) => \period_e1_carry__2_i_8_n_0\
    );
\period_e1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(30),
      I1 => cap3(30),
      I2 => cap3(31),
      I3 => cap1(31),
      O => \period_e1_carry__2_i_1_n_0\
    );
\period_e1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(28),
      I1 => cap3(28),
      I2 => cap3(29),
      I3 => cap1(29),
      O => \period_e1_carry__2_i_2_n_0\
    );
\period_e1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(26),
      I1 => cap3(26),
      I2 => cap3(27),
      I3 => cap1(27),
      O => \period_e1_carry__2_i_3_n_0\
    );
\period_e1_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(24),
      I1 => cap3(24),
      I2 => cap3(25),
      I3 => cap1(25),
      O => \period_e1_carry__2_i_4_n_0\
    );
\period_e1_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap3(30),
      I1 => cap1(31),
      I2 => cap3(31),
      I3 => cap1(30),
      O => \period_e1_carry__2_i_5_n_0\
    );
\period_e1_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap3(28),
      I1 => cap1(29),
      I2 => cap3(29),
      I3 => cap1(28),
      O => \period_e1_carry__2_i_6_n_0\
    );
\period_e1_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap3(26),
      I1 => cap1(27),
      I2 => cap3(27),
      I3 => cap1(26),
      O => \period_e1_carry__2_i_7_n_0\
    );
\period_e1_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap3(24),
      I1 => cap1(25),
      I2 => cap3(25),
      I3 => cap1(24),
      O => \period_e1_carry__2_i_8_n_0\
    );
period_e1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(6),
      I1 => cap3(6),
      I2 => cap3(7),
      I3 => cap1(7),
      O => period_e1_carry_i_1_n_0
    );
period_e1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(4),
      I1 => cap3(4),
      I2 => cap3(5),
      I3 => cap1(5),
      O => period_e1_carry_i_2_n_0
    );
period_e1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(2),
      I1 => cap3(2),
      I2 => cap3(3),
      I3 => cap1(3),
      O => period_e1_carry_i_3_n_0
    );
period_e1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => cap1(0),
      I1 => cap3(0),
      I2 => cap3(1),
      I3 => cap1(1),
      O => period_e1_carry_i_4_n_0
    );
period_e1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(6),
      I1 => cap3(7),
      I2 => cap1(7),
      I3 => cap3(6),
      O => period_e1_carry_i_5_n_0
    );
period_e1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(4),
      I1 => cap3(5),
      I2 => cap1(5),
      I3 => cap3(4),
      O => period_e1_carry_i_6_n_0
    );
period_e1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(2),
      I1 => cap3(3),
      I2 => cap1(3),
      I3 => cap3(2),
      O => period_e1_carry_i_7_n_0
    );
period_e1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => cap1(0),
      I1 => cap3(1),
      I2 => cap1(1),
      I3 => cap3(0),
      O => period_e1_carry_i_8_n_0
    );
\period_e[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \period_e1_carry__2_n_0\,
      I1 => cap3_0,
      I2 => \period_e0_carry__2_n_0\,
      O => \period_e[31]_i_1_n_0\
    );
\period_e_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(0),
      Q => period_e(0),
      R => '0'
    );
\period_e_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(10),
      Q => period_e(10),
      R => '0'
    );
\period_e_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(11),
      Q => period_e(11),
      R => '0'
    );
\period_e_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(12),
      Q => period_e(12),
      R => '0'
    );
\period_e_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(13),
      Q => period_e(13),
      R => '0'
    );
\period_e_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(14),
      Q => period_e(14),
      R => '0'
    );
\period_e_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(15),
      Q => period_e(15),
      R => '0'
    );
\period_e_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(16),
      Q => period_e(16),
      R => '0'
    );
\period_e_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(17),
      Q => period_e(17),
      R => '0'
    );
\period_e_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(18),
      Q => period_e(18),
      R => '0'
    );
\period_e_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(19),
      Q => period_e(19),
      R => '0'
    );
\period_e_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(1),
      Q => period_e(1),
      R => '0'
    );
\period_e_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(20),
      Q => period_e(20),
      R => '0'
    );
\period_e_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(21),
      Q => period_e(21),
      R => '0'
    );
\period_e_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(22),
      Q => period_e(22),
      R => '0'
    );
\period_e_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(23),
      Q => period_e(23),
      R => '0'
    );
\period_e_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(24),
      Q => period_e(24),
      R => '0'
    );
\period_e_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(25),
      Q => period_e(25),
      R => '0'
    );
\period_e_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(26),
      Q => period_e(26),
      R => '0'
    );
\period_e_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(27),
      Q => period_e(27),
      R => '0'
    );
\period_e_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(28),
      Q => period_e(28),
      R => '0'
    );
\period_e_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(29),
      Q => period_e(29),
      R => '0'
    );
\period_e_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(2),
      Q => period_e(2),
      R => '0'
    );
\period_e_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(30),
      Q => period_e(30),
      R => '0'
    );
\period_e_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(31),
      Q => period_e(31),
      R => '0'
    );
\period_e_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(3),
      Q => period_e(3),
      R => '0'
    );
\period_e_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(4),
      Q => period_e(4),
      R => '0'
    );
\period_e_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(5),
      Q => period_e(5),
      R => '0'
    );
\period_e_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(6),
      Q => period_e(6),
      R => '0'
    );
\period_e_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(7),
      Q => period_e(7),
      R => '0'
    );
\period_e_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(8),
      Q => period_e(8),
      R => '0'
    );
\period_e_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \period_e[31]_i_1_n_0\,
      D => period_e0_in(9),
      Q => period_e(9),
      R => '0'
    );
\period_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(0),
      Q => period(0),
      R => '0'
    );
\period_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(10),
      Q => period(10),
      R => '0'
    );
\period_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(11),
      Q => period(11),
      R => '0'
    );
\period_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(12),
      Q => period(12),
      R => '0'
    );
\period_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(13),
      Q => period(13),
      R => '0'
    );
\period_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(14),
      Q => period(14),
      R => '0'
    );
\period_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(15),
      Q => period(15),
      R => '0'
    );
\period_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(16),
      Q => period(16),
      R => '0'
    );
\period_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(17),
      Q => period(17),
      R => '0'
    );
\period_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(18),
      Q => period(18),
      R => '0'
    );
\period_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(19),
      Q => period(19),
      R => '0'
    );
\period_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(1),
      Q => period(1),
      R => '0'
    );
\period_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(20),
      Q => period(20),
      R => '0'
    );
\period_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(21),
      Q => period(21),
      R => '0'
    );
\period_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(22),
      Q => period(22),
      R => '0'
    );
\period_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(23),
      Q => period(23),
      R => '0'
    );
\period_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(24),
      Q => period(24),
      R => '0'
    );
\period_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(25),
      Q => period(25),
      R => '0'
    );
\period_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(26),
      Q => period(26),
      R => '0'
    );
\period_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(27),
      Q => period(27),
      R => '0'
    );
\period_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(28),
      Q => period(28),
      R => '0'
    );
\period_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(29),
      Q => period(29),
      R => '0'
    );
\period_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(2),
      Q => period(2),
      R => '0'
    );
\period_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(30),
      Q => period(30),
      R => '0'
    );
\period_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(31),
      Q => period(31),
      R => '0'
    );
\period_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(3),
      Q => period(3),
      R => '0'
    );
\period_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(4),
      Q => period(4),
      R => '0'
    );
\period_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(5),
      Q => period(5),
      R => '0'
    );
\period_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(6),
      Q => period(6),
      R => '0'
    );
\period_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(7),
      Q => period(7),
      R => '0'
    );
\period_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(8),
      Q => period(8),
      R => '0'
    );
\period_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => cap3_0,
      D => period_e(9),
      Q => period(9),
      R => '0'
    );
\rising_edge_flag[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rising_edge_flag_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\rising_edge_flag[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FE0"
    )
        port map (
      I0 => \rising_edge_flag_reg__0\(3),
      I1 => \rising_edge_flag_reg__0\(2),
      I2 => \rising_edge_flag_reg__0\(0),
      I3 => \rising_edge_flag_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\rising_edge_flag[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \rising_edge_flag_reg__0\(2),
      I1 => \rising_edge_flag_reg__0\(0),
      I2 => \rising_edge_flag_reg__0\(1),
      O => \p_0_in__0\(2)
    );
\rising_edge_flag[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwm_sig,
      I1 => past_pwm_sig,
      O => \rising_edge_flag[3]_i_1_n_0\
    );
\rising_edge_flag[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \rising_edge_flag_reg__0\(3),
      I1 => \rising_edge_flag_reg__0\(0),
      I2 => \rising_edge_flag_reg__0\(1),
      I3 => \rising_edge_flag_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\rising_edge_flag_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rising_edge_flag[3]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => \rising_edge_flag_reg__0\(0),
      R => '0'
    );
\rising_edge_flag_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rising_edge_flag[3]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \rising_edge_flag_reg__0\(1),
      R => '0'
    );
\rising_edge_flag_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rising_edge_flag[3]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => \rising_edge_flag_reg__0\(2),
      R => '0'
    );
\rising_edge_flag_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \rising_edge_flag[3]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => \rising_edge_flag_reg__0\(3),
      R => '0'
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(31)
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_awvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \^s_axi_arready\,
      I2 => s00_axi_arvalid,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_My_ECAP_Core_0_0_My_ECAP_Core_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    pwm_sig : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_My_ECAP_Core_0_0_My_ECAP_Core_v1_0 : entity is "My_ECAP_Core_v1_0";
end design_1_My_ECAP_Core_0_0_My_ECAP_Core_v1_0;

architecture STRUCTURE of design_1_My_ECAP_Core_0_0_My_ECAP_Core_v1_0 is
begin
My_ECAP_Core_v1_0_S00_AXI_inst: entity work.design_1_My_ECAP_Core_0_0_My_ECAP_Core_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      pwm_sig => pwm_sig,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_My_ECAP_Core_0_0 is
  port (
    pwm_sig : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_My_ECAP_Core_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_My_ECAP_Core_0_0 : entity is "design_1_My_ECAP_Core_0_0,My_ECAP_Core_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_My_ECAP_Core_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_My_ECAP_Core_0_0 : entity is "My_ECAP_Core_v1_0,Vivado 2017.4";
end design_1_My_ECAP_Core_0_0;

architecture STRUCTURE of design_1_My_ECAP_Core_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_My_ECAP_Core_0_0_My_ECAP_Core_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      pwm_sig => pwm_sig,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
