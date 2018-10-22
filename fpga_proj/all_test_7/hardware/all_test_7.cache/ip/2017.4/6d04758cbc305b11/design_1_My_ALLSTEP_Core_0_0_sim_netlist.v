// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Thu Sep 13 14:52:19 2018
// Host        : siyun-CR62-6M running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_My_ALLSTEP_Core_0_0_sim_netlist.v
// Design      : design_1_My_ALLSTEP_Core_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_My_ALLSTEP_Core_v1_0
   (s00_axi_wready,
    s00_axi_awready,
    s00_axi_arready,
    PWM0,
    s00_axi_rvalid,
    s00_axi_bvalid,
    slv_reg3,
    s00_axi_rdata,
    s00_axi_aclk,
    PWM_SIG,
    Z_SIG,
    s00_axi_arvalid,
    CO,
    pwm_counter2,
    pwm_counter1_carry__0_i_17,
    s00_axi_aresetn,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_wstrb);
  output s00_axi_wready;
  output s00_axi_awready;
  output s00_axi_arready;
  output PWM0;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output [6:0]slv_reg3;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input PWM_SIG;
  input Z_SIG;
  input s00_axi_arvalid;
  input [0:0]CO;
  input [4:0]pwm_counter2;
  input [0:0]pwm_counter1_carry__0_i_17;
  input s00_axi_aresetn;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]CO;
  wire PWM0;
  wire PWM_SIG;
  wire Z_SIG;
  wire [0:0]pwm_counter1_carry__0_i_17;
  wire [4:0]pwm_counter2;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [6:0]slv_reg3;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_My_ALLSTEP_Core_v1_0_S00_AXI My_ALLSTEP_Core_v1_0_S00_AXI_inst
       (.CO(CO),
        .PWM0(PWM0),
        .PWM_SIG(PWM_SIG),
        .Q(slv_reg3[6:2]),
        .Z_SIG(Z_SIG),
        .\axi_rdata_reg[2]_0 (slv_reg3[0]),
        .\axi_rdata_reg[5]_0 (slv_reg3[1]),
        .pwm_counter1_carry__0_i_17(pwm_counter1_carry__0_i_17),
        .pwm_counter2(pwm_counter2),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_My_ALLSTEP_Core_v1_0_S00_AXI
   (s00_axi_wready,
    s00_axi_awready,
    s00_axi_arready,
    PWM0,
    s00_axi_rvalid,
    s00_axi_bvalid,
    Q,
    \axi_rdata_reg[5]_0 ,
    \axi_rdata_reg[2]_0 ,
    s00_axi_rdata,
    s00_axi_aclk,
    PWM_SIG,
    Z_SIG,
    s00_axi_arvalid,
    CO,
    pwm_counter2,
    pwm_counter1_carry__0_i_17,
    s00_axi_aresetn,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_wstrb);
  output s00_axi_wready;
  output s00_axi_awready;
  output s00_axi_arready;
  output PWM0;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output [4:0]Q;
  output \axi_rdata_reg[5]_0 ;
  output \axi_rdata_reg[2]_0 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input PWM_SIG;
  input Z_SIG;
  input s00_axi_arvalid;
  input [0:0]CO;
  input [4:0]pwm_counter2;
  input [0:0]pwm_counter1_carry__0_i_17;
  input s00_axi_aresetn;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_awaddr;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]CO;
  wire O_counter;
  wire PAST_PWM_SIG;
  wire PWM0;
  wire PWM01;
  wire PWM01_carry__0_i_1_n_0;
  wire PWM01_carry__0_i_2_n_0;
  wire PWM01_carry__0_i_3_n_0;
  wire PWM01_carry__0_i_4_n_0;
  wire PWM01_carry__0_i_5_n_0;
  wire PWM01_carry__0_i_6_n_0;
  wire PWM01_carry__0_i_7_n_0;
  wire PWM01_carry__0_i_8_n_0;
  wire PWM01_carry__0_n_0;
  wire PWM01_carry__0_n_1;
  wire PWM01_carry__0_n_2;
  wire PWM01_carry__0_n_3;
  wire PWM01_carry__1_i_1_n_0;
  wire PWM01_carry__1_i_2_n_0;
  wire PWM01_carry__1_i_3_n_0;
  wire PWM01_carry__1_i_4_n_0;
  wire PWM01_carry__1_i_5_n_0;
  wire PWM01_carry__1_i_6_n_0;
  wire PWM01_carry__1_i_7_n_0;
  wire PWM01_carry__1_i_8_n_0;
  wire PWM01_carry__1_n_0;
  wire PWM01_carry__1_n_1;
  wire PWM01_carry__1_n_2;
  wire PWM01_carry__1_n_3;
  wire PWM01_carry__2_i_1_n_0;
  wire PWM01_carry__2_i_2_n_0;
  wire PWM01_carry__2_i_3_n_0;
  wire PWM01_carry__2_i_4_n_0;
  wire PWM01_carry__2_i_5_n_0;
  wire PWM01_carry__2_i_6_n_0;
  wire PWM01_carry__2_i_7_n_0;
  wire PWM01_carry__2_i_8_n_0;
  wire PWM01_carry__2_n_1;
  wire PWM01_carry__2_n_2;
  wire PWM01_carry__2_n_3;
  wire PWM01_carry_i_1_n_0;
  wire PWM01_carry_i_2_n_0;
  wire PWM01_carry_i_3_n_0;
  wire PWM01_carry_i_4_n_0;
  wire PWM01_carry_i_5_n_0;
  wire PWM01_carry_i_6_n_0;
  wire PWM01_carry_i_7_n_0;
  wire PWM01_carry_i_8_n_0;
  wire PWM01_carry_n_0;
  wire PWM01_carry_n_1;
  wire PWM01_carry_n_2;
  wire PWM01_carry_n_3;
  wire PWM_SIG;
  wire [4:0]Q;
  wire Z_SIG;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_0 ;
  wire \axi_rdata_reg[5]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire clear;
  wire counter;
  wire counter0;
  wire \counter[0]_i_10_n_0 ;
  wire \counter[0]_i_11_n_0 ;
  wire \counter[0]_i_12_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_8_n_0 ;
  wire \counter[0]_i_9_n_0 ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_3_n_0 ;
  wire \counter_reg[0]_i_3_n_1 ;
  wire \counter_reg[0]_i_3_n_2 ;
  wire \counter_reg[0]_i_3_n_3 ;
  wire \counter_reg[0]_i_3_n_4 ;
  wire \counter_reg[0]_i_3_n_5 ;
  wire \counter_reg[0]_i_3_n_6 ;
  wire \counter_reg[0]_i_3_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_1 ;
  wire \counter_reg[28]_i_1_n_2 ;
  wire \counter_reg[28]_i_1_n_3 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [2:0]p_0_in;
  wire [27:5]p_1_in;
  wire pwm_counter1;
  wire [0:0]pwm_counter1_carry__0_i_17;
  wire pwm_counter1_carry__0_i_1_n_0;
  wire pwm_counter1_carry__0_i_2_n_0;
  wire pwm_counter1_carry__0_i_3_n_0;
  wire pwm_counter1_carry__0_i_4_n_0;
  wire pwm_counter1_carry__0_i_5_n_0;
  wire pwm_counter1_carry__0_i_6_n_0;
  wire pwm_counter1_carry__0_i_7_n_0;
  wire pwm_counter1_carry__0_i_8_n_0;
  wire pwm_counter1_carry__0_n_0;
  wire pwm_counter1_carry__0_n_1;
  wire pwm_counter1_carry__0_n_2;
  wire pwm_counter1_carry__0_n_3;
  wire pwm_counter1_carry__1_i_1_n_0;
  wire pwm_counter1_carry__1_i_2_n_0;
  wire pwm_counter1_carry__1_i_3_n_0;
  wire pwm_counter1_carry__1_i_4_n_0;
  wire pwm_counter1_carry__1_i_5_n_0;
  wire pwm_counter1_carry__1_i_6_n_0;
  wire pwm_counter1_carry__1_i_7_n_0;
  wire pwm_counter1_carry__1_i_8_n_0;
  wire pwm_counter1_carry__1_n_0;
  wire pwm_counter1_carry__1_n_1;
  wire pwm_counter1_carry__1_n_2;
  wire pwm_counter1_carry__1_n_3;
  wire pwm_counter1_carry__2_i_1_n_0;
  wire pwm_counter1_carry__2_i_2_n_0;
  wire pwm_counter1_carry__2_i_3_n_0;
  wire pwm_counter1_carry__2_i_4_n_0;
  wire pwm_counter1_carry__2_i_5_n_0;
  wire pwm_counter1_carry__2_i_6_n_0;
  wire pwm_counter1_carry__2_i_7_n_0;
  wire pwm_counter1_carry__2_i_8_n_0;
  wire pwm_counter1_carry__2_n_1;
  wire pwm_counter1_carry__2_n_2;
  wire pwm_counter1_carry__2_n_3;
  wire pwm_counter1_carry_i_1_n_0;
  wire pwm_counter1_carry_i_2_n_0;
  wire pwm_counter1_carry_i_3_n_0;
  wire pwm_counter1_carry_i_4_n_0;
  wire pwm_counter1_carry_i_5_n_0;
  wire pwm_counter1_carry_i_6_n_0;
  wire pwm_counter1_carry_i_7_n_0;
  wire pwm_counter1_carry_i_8_n_0;
  wire pwm_counter1_carry_n_0;
  wire pwm_counter1_carry_n_1;
  wire pwm_counter1_carry_n_2;
  wire pwm_counter1_carry_n_3;
  wire [4:0]pwm_counter2;
  wire \pwm_counter[0]_i_2_n_0 ;
  wire [31:0]pwm_counter_reg;
  wire \pwm_counter_reg[0]_i_1_n_0 ;
  wire \pwm_counter_reg[0]_i_1_n_1 ;
  wire \pwm_counter_reg[0]_i_1_n_2 ;
  wire \pwm_counter_reg[0]_i_1_n_3 ;
  wire \pwm_counter_reg[0]_i_1_n_4 ;
  wire \pwm_counter_reg[0]_i_1_n_5 ;
  wire \pwm_counter_reg[0]_i_1_n_6 ;
  wire \pwm_counter_reg[0]_i_1_n_7 ;
  wire \pwm_counter_reg[12]_i_1_n_0 ;
  wire \pwm_counter_reg[12]_i_1_n_1 ;
  wire \pwm_counter_reg[12]_i_1_n_2 ;
  wire \pwm_counter_reg[12]_i_1_n_3 ;
  wire \pwm_counter_reg[12]_i_1_n_4 ;
  wire \pwm_counter_reg[12]_i_1_n_5 ;
  wire \pwm_counter_reg[12]_i_1_n_6 ;
  wire \pwm_counter_reg[12]_i_1_n_7 ;
  wire \pwm_counter_reg[16]_i_1_n_0 ;
  wire \pwm_counter_reg[16]_i_1_n_1 ;
  wire \pwm_counter_reg[16]_i_1_n_2 ;
  wire \pwm_counter_reg[16]_i_1_n_3 ;
  wire \pwm_counter_reg[16]_i_1_n_4 ;
  wire \pwm_counter_reg[16]_i_1_n_5 ;
  wire \pwm_counter_reg[16]_i_1_n_6 ;
  wire \pwm_counter_reg[16]_i_1_n_7 ;
  wire \pwm_counter_reg[20]_i_1_n_0 ;
  wire \pwm_counter_reg[20]_i_1_n_1 ;
  wire \pwm_counter_reg[20]_i_1_n_2 ;
  wire \pwm_counter_reg[20]_i_1_n_3 ;
  wire \pwm_counter_reg[20]_i_1_n_4 ;
  wire \pwm_counter_reg[20]_i_1_n_5 ;
  wire \pwm_counter_reg[20]_i_1_n_6 ;
  wire \pwm_counter_reg[20]_i_1_n_7 ;
  wire \pwm_counter_reg[24]_i_1_n_0 ;
  wire \pwm_counter_reg[24]_i_1_n_1 ;
  wire \pwm_counter_reg[24]_i_1_n_2 ;
  wire \pwm_counter_reg[24]_i_1_n_3 ;
  wire \pwm_counter_reg[24]_i_1_n_4 ;
  wire \pwm_counter_reg[24]_i_1_n_5 ;
  wire \pwm_counter_reg[24]_i_1_n_6 ;
  wire \pwm_counter_reg[24]_i_1_n_7 ;
  wire \pwm_counter_reg[28]_i_1_n_1 ;
  wire \pwm_counter_reg[28]_i_1_n_2 ;
  wire \pwm_counter_reg[28]_i_1_n_3 ;
  wire \pwm_counter_reg[28]_i_1_n_4 ;
  wire \pwm_counter_reg[28]_i_1_n_5 ;
  wire \pwm_counter_reg[28]_i_1_n_6 ;
  wire \pwm_counter_reg[28]_i_1_n_7 ;
  wire \pwm_counter_reg[4]_i_1_n_0 ;
  wire \pwm_counter_reg[4]_i_1_n_1 ;
  wire \pwm_counter_reg[4]_i_1_n_2 ;
  wire \pwm_counter_reg[4]_i_1_n_3 ;
  wire \pwm_counter_reg[4]_i_1_n_4 ;
  wire \pwm_counter_reg[4]_i_1_n_5 ;
  wire \pwm_counter_reg[4]_i_1_n_6 ;
  wire \pwm_counter_reg[4]_i_1_n_7 ;
  wire \pwm_counter_reg[8]_i_1_n_0 ;
  wire \pwm_counter_reg[8]_i_1_n_1 ;
  wire \pwm_counter_reg[8]_i_1_n_2 ;
  wire \pwm_counter_reg[8]_i_1_n_3 ;
  wire \pwm_counter_reg[8]_i_1_n_4 ;
  wire \pwm_counter_reg[8]_i_1_n_5 ;
  wire \pwm_counter_reg[8]_i_1_n_6 ;
  wire \pwm_counter_reg[8]_i_1_n_7 ;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]__0_i_1_n_0 ;
  wire \slv_reg0[23]__0_i_1_n_0 ;
  wire \slv_reg0[31]__0_i_1_n_0 ;
  wire \slv_reg0[7]__0_i_1_n_0 ;
  wire [0:0]slv_reg1;
  wire \slv_reg1[0]__0_i_1_n_0 ;
  wire \slv_reg1[0]__0_i_2_n_0 ;
  wire [14:1]slv_reg2;
  wire \slv_reg2[14]__0_i_1_n_0 ;
  wire \slv_reg2[14]_i_10_n_0 ;
  wire \slv_reg2[14]_i_1_n_0 ;
  wire \slv_reg2[14]_i_2_n_0 ;
  wire \slv_reg2[14]_i_3_n_0 ;
  wire \slv_reg2[14]_i_4_n_0 ;
  wire \slv_reg2[14]_i_5_n_0 ;
  wire \slv_reg2[14]_i_6_n_0 ;
  wire \slv_reg2[14]_i_7_n_0 ;
  wire \slv_reg2[14]_i_8_n_0 ;
  wire \slv_reg2[14]_i_9_n_0 ;
  wire \slv_reg2[1]__0_i_1_n_0 ;
  wire \slv_reg2[4]__0_i_1_n_0 ;
  wire \slv_reg2[4]__0_i_2_n_0 ;
  wire \slv_reg3[10]_i_1_n_0 ;
  wire \slv_reg3[12]_i_1_n_0 ;
  wire \slv_reg3[13]_i_1_n_0 ;
  wire \slv_reg3[14]_i_1_n_0 ;
  wire \slv_reg3[15]__0_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[2]__0_i_1_n_0 ;
  wire \slv_reg3[2]_i_1_n_0 ;
  wire \slv_reg3[5]__0_i_1_n_0 ;
  wire \slv_reg3[5]__0_i_2_n_0 ;
  wire \slv_reg3[5]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire [31:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__2;
  wire [3:0]NLW_PWM01_carry_O_UNCONNECTED;
  wire [3:0]NLW_PWM01_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_PWM01_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_PWM01_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_PWM01_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_PWM01_carry__3_O_UNCONNECTED;
  wire [3:3]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_pwm_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_pwm_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_pwm_counter1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_pwm_counter1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_pwm_counter1_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_pwm_counter1_carry__3_O_UNCONNECTED;
  wire [3:3]\NLW_pwm_counter_reg[28]_i_1_CO_UNCONNECTED ;

  FDRE \O_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Z_SIG),
        .Q(O_counter),
        .R(1'b0));
  FDRE PAST_PWM_SIG_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PWM_SIG),
        .Q(PAST_PWM_SIG),
        .R(1'b0));
  CARRY4 PWM01_carry
       (.CI(1'b0),
        .CO({PWM01_carry_n_0,PWM01_carry_n_1,PWM01_carry_n_2,PWM01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({PWM01_carry_i_1_n_0,PWM01_carry_i_2_n_0,PWM01_carry_i_3_n_0,PWM01_carry_i_4_n_0}),
        .O(NLW_PWM01_carry_O_UNCONNECTED[3:0]),
        .S({PWM01_carry_i_5_n_0,PWM01_carry_i_6_n_0,PWM01_carry_i_7_n_0,PWM01_carry_i_8_n_0}));
  CARRY4 PWM01_carry__0
       (.CI(PWM01_carry_n_0),
        .CO({PWM01_carry__0_n_0,PWM01_carry__0_n_1,PWM01_carry__0_n_2,PWM01_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({PWM01_carry__0_i_1_n_0,PWM01_carry__0_i_2_n_0,PWM01_carry__0_i_3_n_0,PWM01_carry__0_i_4_n_0}),
        .O(NLW_PWM01_carry__0_O_UNCONNECTED[3:0]),
        .S({PWM01_carry__0_i_5_n_0,PWM01_carry__0_i_6_n_0,PWM01_carry__0_i_7_n_0,PWM01_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hBA)) 
    PWM01_carry__0_i_1
       (.I0(pwm_counter_reg[15]),
        .I1(slv_reg2[14]),
        .I2(pwm_counter_reg[14]),
        .O(PWM01_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    PWM01_carry__0_i_2
       (.I0(pwm_counter_reg[13]),
        .I1(slv_reg2[13]),
        .I2(pwm_counter_reg[12]),
        .I3(slv_reg2[12]),
        .O(PWM01_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    PWM01_carry__0_i_3
       (.I0(pwm_counter_reg[11]),
        .I1(slv_reg2[11]),
        .I2(pwm_counter_reg[10]),
        .O(PWM01_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    PWM01_carry__0_i_4
       (.I0(pwm_counter_reg[9]),
        .I1(slv_reg2[9]),
        .I2(pwm_counter_reg[8]),
        .O(PWM01_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    PWM01_carry__0_i_5
       (.I0(pwm_counter_reg[15]),
        .I1(slv_reg2[14]),
        .I2(pwm_counter_reg[14]),
        .O(PWM01_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM01_carry__0_i_6
       (.I0(slv_reg2[13]),
        .I1(pwm_counter_reg[13]),
        .I2(slv_reg2[12]),
        .I3(pwm_counter_reg[12]),
        .O(PWM01_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    PWM01_carry__0_i_7
       (.I0(pwm_counter_reg[10]),
        .I1(slv_reg2[11]),
        .I2(pwm_counter_reg[11]),
        .O(PWM01_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    PWM01_carry__0_i_8
       (.I0(pwm_counter_reg[8]),
        .I1(slv_reg2[9]),
        .I2(pwm_counter_reg[9]),
        .O(PWM01_carry__0_i_8_n_0));
  CARRY4 PWM01_carry__1
       (.CI(PWM01_carry__0_n_0),
        .CO({PWM01_carry__1_n_0,PWM01_carry__1_n_1,PWM01_carry__1_n_2,PWM01_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({PWM01_carry__1_i_1_n_0,PWM01_carry__1_i_2_n_0,PWM01_carry__1_i_3_n_0,PWM01_carry__1_i_4_n_0}),
        .O(NLW_PWM01_carry__1_O_UNCONNECTED[3:0]),
        .S({PWM01_carry__1_i_5_n_0,PWM01_carry__1_i_6_n_0,PWM01_carry__1_i_7_n_0,PWM01_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    PWM01_carry__1_i_1
       (.I0(pwm_counter_reg[23]),
        .I1(pwm_counter_reg[22]),
        .O(PWM01_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    PWM01_carry__1_i_2
       (.I0(pwm_counter_reg[21]),
        .I1(pwm_counter_reg[20]),
        .O(PWM01_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    PWM01_carry__1_i_3
       (.I0(pwm_counter_reg[19]),
        .I1(pwm_counter_reg[18]),
        .O(PWM01_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    PWM01_carry__1_i_4
       (.I0(pwm_counter_reg[17]),
        .I1(pwm_counter_reg[16]),
        .O(PWM01_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    PWM01_carry__1_i_5
       (.I0(pwm_counter_reg[22]),
        .I1(pwm_counter_reg[23]),
        .O(PWM01_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    PWM01_carry__1_i_6
       (.I0(pwm_counter_reg[20]),
        .I1(pwm_counter_reg[21]),
        .O(PWM01_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    PWM01_carry__1_i_7
       (.I0(pwm_counter_reg[18]),
        .I1(pwm_counter_reg[19]),
        .O(PWM01_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    PWM01_carry__1_i_8
       (.I0(pwm_counter_reg[16]),
        .I1(pwm_counter_reg[17]),
        .O(PWM01_carry__1_i_8_n_0));
  CARRY4 PWM01_carry__2
       (.CI(PWM01_carry__1_n_0),
        .CO({PWM01,PWM01_carry__2_n_1,PWM01_carry__2_n_2,PWM01_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({PWM01_carry__2_i_1_n_0,PWM01_carry__2_i_2_n_0,PWM01_carry__2_i_3_n_0,PWM01_carry__2_i_4_n_0}),
        .O(NLW_PWM01_carry__2_O_UNCONNECTED[3:0]),
        .S({PWM01_carry__2_i_5_n_0,PWM01_carry__2_i_6_n_0,PWM01_carry__2_i_7_n_0,PWM01_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    PWM01_carry__2_i_1
       (.I0(pwm_counter_reg[31]),
        .I1(pwm_counter_reg[30]),
        .O(PWM01_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    PWM01_carry__2_i_2
       (.I0(pwm_counter_reg[29]),
        .I1(pwm_counter_reg[28]),
        .O(PWM01_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    PWM01_carry__2_i_3
       (.I0(pwm_counter_reg[27]),
        .I1(pwm_counter_reg[26]),
        .O(PWM01_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    PWM01_carry__2_i_4
       (.I0(pwm_counter_reg[25]),
        .I1(pwm_counter_reg[24]),
        .O(PWM01_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    PWM01_carry__2_i_5
       (.I0(pwm_counter_reg[30]),
        .I1(pwm_counter_reg[31]),
        .O(PWM01_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    PWM01_carry__2_i_6
       (.I0(pwm_counter_reg[28]),
        .I1(pwm_counter_reg[29]),
        .O(PWM01_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    PWM01_carry__2_i_7
       (.I0(pwm_counter_reg[26]),
        .I1(pwm_counter_reg[27]),
        .O(PWM01_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    PWM01_carry__2_i_8
       (.I0(pwm_counter_reg[24]),
        .I1(pwm_counter_reg[25]),
        .O(PWM01_carry__2_i_8_n_0));
  CARRY4 PWM01_carry__3
       (.CI(PWM01),
        .CO(NLW_PWM01_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_PWM01_carry__3_O_UNCONNECTED[3:1],PWM0}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'hE)) 
    PWM01_carry_i_1
       (.I0(pwm_counter_reg[7]),
        .I1(pwm_counter_reg[6]),
        .O(PWM01_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    PWM01_carry_i_2
       (.I0(pwm_counter_reg[5]),
        .I1(slv_reg2[4]),
        .I2(pwm_counter_reg[4]),
        .O(PWM01_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    PWM01_carry_i_3
       (.I0(pwm_counter_reg[3]),
        .I1(pwm_counter_reg[2]),
        .O(PWM01_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    PWM01_carry_i_4
       (.I0(pwm_counter_reg[1]),
        .I1(slv_reg2[1]),
        .I2(pwm_counter_reg[0]),
        .O(PWM01_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    PWM01_carry_i_5
       (.I0(pwm_counter_reg[6]),
        .I1(pwm_counter_reg[7]),
        .O(PWM01_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    PWM01_carry_i_6
       (.I0(pwm_counter_reg[5]),
        .I1(slv_reg2[4]),
        .I2(pwm_counter_reg[4]),
        .O(PWM01_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    PWM01_carry_i_7
       (.I0(pwm_counter_reg[2]),
        .I1(pwm_counter_reg[3]),
        .O(PWM01_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    PWM01_carry_i_8
       (.I0(pwm_counter_reg[0]),
        .I1(slv_reg2[1]),
        .I2(pwm_counter_reg[1]),
        .O(PWM01_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hBFFFB0F0B0F0B0F0)) 
    aw_en_i_1
       (.I0(s00_axi_awready),
        .I1(s00_axi_awvalid),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s00_axi_arready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awready),
        .I5(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(s00_axi_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awready),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg0[0]),
        .I3(sel0[0]),
        .I4(slv_reg1),
        .I5(sel0[1]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg7[0]),
        .I1(slv_reg6[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[0]),
        .I4(sel0[0]),
        .I5(slv_reg4[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(Q[0]),
        .I3(sel0[1]),
        .I4(slv_reg0[10]),
        .I5(sel0[0]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg2[11]),
        .I3(sel0[1]),
        .I4(slv_reg0[11]),
        .I5(sel0[0]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[12]_i_2 
       (.I0(Q[1]),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(slv_reg0[12]),
        .I4(sel0[0]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[13]_i_2 
       (.I0(Q[2]),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(slv_reg0[13]),
        .I4(sel0[0]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[14]_i_2 
       (.I0(Q[3]),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(slv_reg0[14]),
        .I4(sel0[0]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_3 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(slv_reg4[14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(Q[4]),
        .I3(sel0[1]),
        .I4(slv_reg0[15]),
        .I5(sel0[0]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(slv_reg4[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[16]),
        .I4(sel0[0]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(slv_reg4[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[17]),
        .I4(sel0[0]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .I5(slv_reg4[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[18]),
        .I4(sel0[0]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .I5(slv_reg4[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[19]),
        .I4(sel0[0]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(slv_reg4[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg2[1]),
        .I3(sel0[1]),
        .I4(slv_reg0[1]),
        .I5(sel0[0]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(slv_reg7[1]),
        .I1(slv_reg6[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[1]),
        .I4(sel0[0]),
        .I5(slv_reg4[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[20]),
        .I4(sel0[0]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(slv_reg4[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[21]),
        .I4(sel0[0]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .I5(slv_reg4[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[22]),
        .I4(sel0[0]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .I5(slv_reg4[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[23]),
        .I4(sel0[0]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(slv_reg4[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[24]),
        .I4(sel0[0]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(slv_reg4[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[25]),
        .I4(sel0[0]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(slv_reg4[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[26]),
        .I4(sel0[0]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(slv_reg4[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[27]),
        .I4(sel0[0]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(slv_reg4[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[28]),
        .I4(sel0[0]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(slv_reg4[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[29]),
        .I4(sel0[0]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(slv_reg4[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[2]_0 ),
        .I3(sel0[1]),
        .I4(slv_reg0[2]),
        .I5(sel0[0]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg7[2]),
        .I1(slv_reg6[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[2]),
        .I4(sel0[0]),
        .I5(slv_reg4[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[30]),
        .I4(sel0[0]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(slv_reg4[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[31]),
        .I4(sel0[0]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[3]),
        .I4(sel0[0]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(slv_reg7[3]),
        .I1(slv_reg6[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[3]),
        .I4(sel0[0]),
        .I5(slv_reg4[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg2[4]),
        .I3(sel0[1]),
        .I4(slv_reg0[4]),
        .I5(sel0[0]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(slv_reg7[4]),
        .I1(slv_reg6[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[4]),
        .I4(sel0[0]),
        .I5(slv_reg4[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[5]_0 ),
        .I3(sel0[1]),
        .I4(slv_reg0[5]),
        .I5(sel0[0]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(slv_reg7[5]),
        .I1(slv_reg6[5]),
        .I2(sel0[1]),
        .I3(slv_reg5[5]),
        .I4(sel0[0]),
        .I5(slv_reg4[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[6]),
        .I4(sel0[0]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .I5(slv_reg4[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[7]),
        .I4(sel0[0]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .I5(slv_reg4[7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg0[8]),
        .I4(sel0[0]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(slv_reg2[9]),
        .I3(sel0[1]),
        .I4(slv_reg0[9]),
        .I5(sel0[0]),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata[12]_i_3_n_0 ),
        .O(reg_data_out[12]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\axi_rdata[13]_i_3_n_0 ),
        .O(reg_data_out[13]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\axi_rdata[14]_i_3_n_0 ),
        .O(reg_data_out[14]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA0080AAAA)) 
    \counter[0]_i_1 
       (.I0(counter0),
        .I1(counter_reg[8]),
        .I2(counter_reg[7]),
        .I3(\counter[0]_i_4_n_0 ),
        .I4(\counter[0]_i_5_n_0 ),
        .I5(\counter[0]_i_6_n_0 ),
        .O(counter));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_10 
       (.I0(counter_reg[19]),
        .I1(counter_reg[18]),
        .I2(counter_reg[21]),
        .I3(counter_reg[20]),
        .O(\counter[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_11 
       (.I0(counter_reg[17]),
        .I1(counter_reg[16]),
        .I2(counter_reg[23]),
        .I3(counter_reg[22]),
        .O(\counter[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_12 
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .I2(counter_reg[15]),
        .I3(counter_reg[9]),
        .O(\counter[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_2 
       (.I0(PWM_SIG),
        .I1(PAST_PWM_SIG),
        .O(counter0));
  LUT6 #(
    .INIT(64'h0000001011111111)) 
    \counter[0]_i_4 
       (.I0(counter_reg[6]),
        .I1(counter_reg[5]),
        .I2(\counter[0]_i_8_n_0 ),
        .I3(counter_reg[0]),
        .I4(counter_reg[1]),
        .I5(counter_reg[4]),
        .O(\counter[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \counter[0]_i_5 
       (.I0(counter_reg[30]),
        .I1(counter_reg[31]),
        .I2(counter_reg[28]),
        .I3(counter_reg[29]),
        .I4(\counter[0]_i_9_n_0 ),
        .O(\counter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[0]_i_6 
       (.I0(\counter[0]_i_10_n_0 ),
        .I1(\counter[0]_i_11_n_0 ),
        .I2(\counter[0]_i_12_n_0 ),
        .I3(counter_reg[14]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(\counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_7 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_8 
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .O(\counter[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_9 
       (.I0(counter_reg[25]),
        .I1(counter_reg[24]),
        .I2(counter_reg[27]),
        .I3(counter_reg[26]),
        .O(\counter[0]_i_9_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[0]_i_3_n_7 ),
        .Q(counter_reg[0]),
        .R(counter));
  CARRY4 \counter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3_n_0 ,\counter_reg[0]_i_3_n_1 ,\counter_reg[0]_i_3_n_2 ,\counter_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3_n_4 ,\counter_reg[0]_i_3_n_5 ,\counter_reg[0]_i_3_n_6 ,\counter_reg[0]_i_3_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_7_n_0 }));
  FDRE \counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(counter));
  FDRE \counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(counter));
  FDRE \counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(counter));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE \counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(counter));
  FDRE \counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(counter));
  FDRE \counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(counter));
  FDRE \counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(counter));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE \counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(counter));
  FDRE \counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(counter));
  FDRE \counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(counter));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[0]_i_3_n_6 ),
        .Q(counter_reg[1]),
        .R(counter));
  FDRE \counter_reg[20] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(counter));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE \counter_reg[21] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(counter));
  FDRE \counter_reg[22] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(counter));
  FDRE \counter_reg[23] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(counter));
  FDRE \counter_reg[24] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(counter));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S(counter_reg[27:24]));
  FDRE \counter_reg[25] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(counter));
  FDRE \counter_reg[26] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]),
        .R(counter));
  FDRE \counter_reg[27] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter_reg[27]),
        .R(counter));
  FDRE \counter_reg[28] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[28]),
        .R(counter));
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [3],\counter_reg[28]_i_1_n_1 ,\counter_reg[28]_i_1_n_2 ,\counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S(counter_reg[31:28]));
  FDRE \counter_reg[29] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[29]),
        .R(counter));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[0]_i_3_n_5 ),
        .Q(counter_reg[2]),
        .R(counter));
  FDRE \counter_reg[30] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[30]),
        .R(counter));
  FDRE \counter_reg[31] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter_reg[31]),
        .R(counter));
  FDRE \counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[0]_i_3_n_4 ),
        .Q(counter_reg[3]),
        .R(counter));
  FDRE \counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(counter));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_3_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE \counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(counter));
  FDRE \counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(counter));
  FDRE \counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(counter));
  FDRE \counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(counter));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE \counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(counter0),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(counter));
  CARRY4 pwm_counter1_carry
       (.CI(1'b0),
        .CO({pwm_counter1_carry_n_0,pwm_counter1_carry_n_1,pwm_counter1_carry_n_2,pwm_counter1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_counter1_carry_i_1_n_0,pwm_counter1_carry_i_2_n_0,pwm_counter1_carry_i_3_n_0,pwm_counter1_carry_i_4_n_0}),
        .O(NLW_pwm_counter1_carry_O_UNCONNECTED[3:0]),
        .S({pwm_counter1_carry_i_5_n_0,pwm_counter1_carry_i_6_n_0,pwm_counter1_carry_i_7_n_0,pwm_counter1_carry_i_8_n_0}));
  CARRY4 pwm_counter1_carry__0
       (.CI(pwm_counter1_carry_n_0),
        .CO({pwm_counter1_carry__0_n_0,pwm_counter1_carry__0_n_1,pwm_counter1_carry__0_n_2,pwm_counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_counter1_carry__0_i_1_n_0,pwm_counter1_carry__0_i_2_n_0,pwm_counter1_carry__0_i_3_n_0,pwm_counter1_carry__0_i_4_n_0}),
        .O(NLW_pwm_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({pwm_counter1_carry__0_i_5_n_0,pwm_counter1_carry__0_i_6_n_0,pwm_counter1_carry__0_i_7_n_0,pwm_counter1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_counter1_carry__0_i_1
       (.I0(pwm_counter2[4]),
        .I1(counter_reg[15]),
        .I2(pwm_counter2[3]),
        .I3(counter_reg[14]),
        .O(pwm_counter1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_counter1_carry__0_i_2
       (.I0(pwm_counter2[2]),
        .I1(counter_reg[13]),
        .I2(pwm_counter2[1]),
        .I3(counter_reg[12]),
        .O(pwm_counter1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h1171)) 
    pwm_counter1_carry__0_i_3
       (.I0(CO),
        .I1(counter_reg[11]),
        .I2(pwm_counter2[0]),
        .I3(counter_reg[10]),
        .O(pwm_counter1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0111)) 
    pwm_counter1_carry__0_i_4
       (.I0(\axi_rdata_reg[2]_0 ),
        .I1(\axi_rdata_reg[5]_0 ),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .O(pwm_counter1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_counter1_carry__0_i_5
       (.I0(counter_reg[15]),
        .I1(pwm_counter2[4]),
        .I2(counter_reg[14]),
        .I3(pwm_counter2[3]),
        .O(pwm_counter1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_counter1_carry__0_i_6
       (.I0(counter_reg[13]),
        .I1(pwm_counter2[2]),
        .I2(counter_reg[12]),
        .I3(pwm_counter2[1]),
        .O(pwm_counter1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    pwm_counter1_carry__0_i_7
       (.I0(counter_reg[11]),
        .I1(CO),
        .I2(counter_reg[10]),
        .I3(pwm_counter2[0]),
        .O(pwm_counter1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h1118)) 
    pwm_counter1_carry__0_i_8
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .I2(\axi_rdata_reg[5]_0 ),
        .I3(\axi_rdata_reg[2]_0 ),
        .O(pwm_counter1_carry__0_i_8_n_0));
  CARRY4 pwm_counter1_carry__1
       (.CI(pwm_counter1_carry__0_n_0),
        .CO({pwm_counter1_carry__1_n_0,pwm_counter1_carry__1_n_1,pwm_counter1_carry__1_n_2,pwm_counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_counter1_carry__1_i_1_n_0,pwm_counter1_carry__1_i_2_n_0,pwm_counter1_carry__1_i_3_n_0,pwm_counter1_carry__1_i_4_n_0}),
        .O(NLW_pwm_counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({pwm_counter1_carry__1_i_5_n_0,pwm_counter1_carry__1_i_6_n_0,pwm_counter1_carry__1_i_7_n_0,pwm_counter1_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'h15)) 
    pwm_counter1_carry__1_i_1
       (.I0(pwm_counter1_carry__0_i_17),
        .I1(counter_reg[23]),
        .I2(counter_reg[22]),
        .O(pwm_counter1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    pwm_counter1_carry__1_i_2
       (.I0(pwm_counter1_carry__0_i_17),
        .I1(counter_reg[21]),
        .I2(counter_reg[20]),
        .O(pwm_counter1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    pwm_counter1_carry__1_i_3
       (.I0(pwm_counter1_carry__0_i_17),
        .I1(counter_reg[19]),
        .I2(counter_reg[18]),
        .O(pwm_counter1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    pwm_counter1_carry__1_i_4
       (.I0(pwm_counter1_carry__0_i_17),
        .I1(counter_reg[17]),
        .I2(counter_reg[16]),
        .O(pwm_counter1_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    pwm_counter1_carry__1_i_5
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .I2(pwm_counter1_carry__0_i_17),
        .O(pwm_counter1_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    pwm_counter1_carry__1_i_6
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .I2(pwm_counter1_carry__0_i_17),
        .O(pwm_counter1_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    pwm_counter1_carry__1_i_7
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(pwm_counter1_carry__0_i_17),
        .O(pwm_counter1_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    pwm_counter1_carry__1_i_8
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .I2(pwm_counter1_carry__0_i_17),
        .O(pwm_counter1_carry__1_i_8_n_0));
  CARRY4 pwm_counter1_carry__2
       (.CI(pwm_counter1_carry__1_n_0),
        .CO({pwm_counter1,pwm_counter1_carry__2_n_1,pwm_counter1_carry__2_n_2,pwm_counter1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_counter1_carry__2_i_1_n_0,pwm_counter1_carry__2_i_2_n_0,pwm_counter1_carry__2_i_3_n_0,pwm_counter1_carry__2_i_4_n_0}),
        .O(NLW_pwm_counter1_carry__2_O_UNCONNECTED[3:0]),
        .S({pwm_counter1_carry__2_i_5_n_0,pwm_counter1_carry__2_i_6_n_0,pwm_counter1_carry__2_i_7_n_0,pwm_counter1_carry__2_i_8_n_0}));
  LUT3 #(
    .INIT(8'h15)) 
    pwm_counter1_carry__2_i_1
       (.I0(pwm_counter1_carry__0_i_17),
        .I1(counter_reg[31]),
        .I2(counter_reg[30]),
        .O(pwm_counter1_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    pwm_counter1_carry__2_i_2
       (.I0(pwm_counter1_carry__0_i_17),
        .I1(counter_reg[29]),
        .I2(counter_reg[28]),
        .O(pwm_counter1_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    pwm_counter1_carry__2_i_3
       (.I0(pwm_counter1_carry__0_i_17),
        .I1(counter_reg[27]),
        .I2(counter_reg[26]),
        .O(pwm_counter1_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    pwm_counter1_carry__2_i_4
       (.I0(pwm_counter1_carry__0_i_17),
        .I1(counter_reg[25]),
        .I2(counter_reg[24]),
        .O(pwm_counter1_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    pwm_counter1_carry__2_i_5
       (.I0(counter_reg[30]),
        .I1(counter_reg[31]),
        .I2(pwm_counter1_carry__0_i_17),
        .O(pwm_counter1_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    pwm_counter1_carry__2_i_6
       (.I0(pwm_counter1_carry__0_i_17),
        .I1(counter_reg[28]),
        .I2(counter_reg[29]),
        .O(pwm_counter1_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    pwm_counter1_carry__2_i_7
       (.I0(counter_reg[26]),
        .I1(counter_reg[27]),
        .I2(pwm_counter1_carry__0_i_17),
        .O(pwm_counter1_carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    pwm_counter1_carry__2_i_8
       (.I0(counter_reg[24]),
        .I1(counter_reg[25]),
        .I2(pwm_counter1_carry__0_i_17),
        .O(pwm_counter1_carry__2_i_8_n_0));
  CARRY4 pwm_counter1_carry__3
       (.CI(pwm_counter1),
        .CO(NLW_pwm_counter1_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pwm_counter1_carry__3_O_UNCONNECTED[3:1],clear}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h0111)) 
    pwm_counter1_carry_i_1
       (.I0(\axi_rdata_reg[2]_0 ),
        .I1(\axi_rdata_reg[5]_0 ),
        .I2(counter_reg[7]),
        .I3(counter_reg[6]),
        .O(pwm_counter1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h091B)) 
    pwm_counter1_carry_i_2
       (.I0(\axi_rdata_reg[5]_0 ),
        .I1(\axi_rdata_reg[2]_0 ),
        .I2(counter_reg[5]),
        .I3(counter_reg[4]),
        .O(pwm_counter1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h07)) 
    pwm_counter1_carry_i_3
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .I2(\axi_rdata_reg[2]_0 ),
        .O(pwm_counter1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    pwm_counter1_carry_i_4
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(pwm_counter1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1118)) 
    pwm_counter1_carry_i_5
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .I2(\axi_rdata_reg[5]_0 ),
        .I3(\axi_rdata_reg[2]_0 ),
        .O(pwm_counter1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h4218)) 
    pwm_counter1_carry_i_6
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(\axi_rdata_reg[2]_0 ),
        .I3(\axi_rdata_reg[5]_0 ),
        .O(pwm_counter1_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    pwm_counter1_carry_i_7
       (.I0(\axi_rdata_reg[2]_0 ),
        .I1(counter_reg[2]),
        .I2(counter_reg[3]),
        .O(pwm_counter1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pwm_counter1_carry_i_8
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(pwm_counter1_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm_counter[0]_i_2 
       (.I0(pwm_counter_reg[0]),
        .O(\pwm_counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[0]_i_1_n_7 ),
        .Q(pwm_counter_reg[0]),
        .R(clear));
  CARRY4 \pwm_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\pwm_counter_reg[0]_i_1_n_0 ,\pwm_counter_reg[0]_i_1_n_1 ,\pwm_counter_reg[0]_i_1_n_2 ,\pwm_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pwm_counter_reg[0]_i_1_n_4 ,\pwm_counter_reg[0]_i_1_n_5 ,\pwm_counter_reg[0]_i_1_n_6 ,\pwm_counter_reg[0]_i_1_n_7 }),
        .S({pwm_counter_reg[3:1],\pwm_counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[8]_i_1_n_5 ),
        .Q(pwm_counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[8]_i_1_n_4 ),
        .Q(pwm_counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[12]_i_1_n_7 ),
        .Q(pwm_counter_reg[12]),
        .R(clear));
  CARRY4 \pwm_counter_reg[12]_i_1 
       (.CI(\pwm_counter_reg[8]_i_1_n_0 ),
        .CO({\pwm_counter_reg[12]_i_1_n_0 ,\pwm_counter_reg[12]_i_1_n_1 ,\pwm_counter_reg[12]_i_1_n_2 ,\pwm_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwm_counter_reg[12]_i_1_n_4 ,\pwm_counter_reg[12]_i_1_n_5 ,\pwm_counter_reg[12]_i_1_n_6 ,\pwm_counter_reg[12]_i_1_n_7 }),
        .S(pwm_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[12]_i_1_n_6 ),
        .Q(pwm_counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[12]_i_1_n_5 ),
        .Q(pwm_counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[12]_i_1_n_4 ),
        .Q(pwm_counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[16]_i_1_n_7 ),
        .Q(pwm_counter_reg[16]),
        .R(clear));
  CARRY4 \pwm_counter_reg[16]_i_1 
       (.CI(\pwm_counter_reg[12]_i_1_n_0 ),
        .CO({\pwm_counter_reg[16]_i_1_n_0 ,\pwm_counter_reg[16]_i_1_n_1 ,\pwm_counter_reg[16]_i_1_n_2 ,\pwm_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwm_counter_reg[16]_i_1_n_4 ,\pwm_counter_reg[16]_i_1_n_5 ,\pwm_counter_reg[16]_i_1_n_6 ,\pwm_counter_reg[16]_i_1_n_7 }),
        .S(pwm_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[16]_i_1_n_6 ),
        .Q(pwm_counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[16]_i_1_n_5 ),
        .Q(pwm_counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[16]_i_1_n_4 ),
        .Q(pwm_counter_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[0]_i_1_n_6 ),
        .Q(pwm_counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[20]_i_1_n_7 ),
        .Q(pwm_counter_reg[20]),
        .R(clear));
  CARRY4 \pwm_counter_reg[20]_i_1 
       (.CI(\pwm_counter_reg[16]_i_1_n_0 ),
        .CO({\pwm_counter_reg[20]_i_1_n_0 ,\pwm_counter_reg[20]_i_1_n_1 ,\pwm_counter_reg[20]_i_1_n_2 ,\pwm_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwm_counter_reg[20]_i_1_n_4 ,\pwm_counter_reg[20]_i_1_n_5 ,\pwm_counter_reg[20]_i_1_n_6 ,\pwm_counter_reg[20]_i_1_n_7 }),
        .S(pwm_counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[20]_i_1_n_6 ),
        .Q(pwm_counter_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[20]_i_1_n_5 ),
        .Q(pwm_counter_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[20]_i_1_n_4 ),
        .Q(pwm_counter_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[24]_i_1_n_7 ),
        .Q(pwm_counter_reg[24]),
        .R(clear));
  CARRY4 \pwm_counter_reg[24]_i_1 
       (.CI(\pwm_counter_reg[20]_i_1_n_0 ),
        .CO({\pwm_counter_reg[24]_i_1_n_0 ,\pwm_counter_reg[24]_i_1_n_1 ,\pwm_counter_reg[24]_i_1_n_2 ,\pwm_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwm_counter_reg[24]_i_1_n_4 ,\pwm_counter_reg[24]_i_1_n_5 ,\pwm_counter_reg[24]_i_1_n_6 ,\pwm_counter_reg[24]_i_1_n_7 }),
        .S(pwm_counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[24]_i_1_n_6 ),
        .Q(pwm_counter_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[24]_i_1_n_5 ),
        .Q(pwm_counter_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[24]_i_1_n_4 ),
        .Q(pwm_counter_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[28]_i_1_n_7 ),
        .Q(pwm_counter_reg[28]),
        .R(clear));
  CARRY4 \pwm_counter_reg[28]_i_1 
       (.CI(\pwm_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_pwm_counter_reg[28]_i_1_CO_UNCONNECTED [3],\pwm_counter_reg[28]_i_1_n_1 ,\pwm_counter_reg[28]_i_1_n_2 ,\pwm_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwm_counter_reg[28]_i_1_n_4 ,\pwm_counter_reg[28]_i_1_n_5 ,\pwm_counter_reg[28]_i_1_n_6 ,\pwm_counter_reg[28]_i_1_n_7 }),
        .S(pwm_counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[28]_i_1_n_6 ),
        .Q(pwm_counter_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[0]_i_1_n_5 ),
        .Q(pwm_counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[28]_i_1_n_5 ),
        .Q(pwm_counter_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[28]_i_1_n_4 ),
        .Q(pwm_counter_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[0]_i_1_n_4 ),
        .Q(pwm_counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[4]_i_1_n_7 ),
        .Q(pwm_counter_reg[4]),
        .R(clear));
  CARRY4 \pwm_counter_reg[4]_i_1 
       (.CI(\pwm_counter_reg[0]_i_1_n_0 ),
        .CO({\pwm_counter_reg[4]_i_1_n_0 ,\pwm_counter_reg[4]_i_1_n_1 ,\pwm_counter_reg[4]_i_1_n_2 ,\pwm_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwm_counter_reg[4]_i_1_n_4 ,\pwm_counter_reg[4]_i_1_n_5 ,\pwm_counter_reg[4]_i_1_n_6 ,\pwm_counter_reg[4]_i_1_n_7 }),
        .S(pwm_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[4]_i_1_n_6 ),
        .Q(pwm_counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[4]_i_1_n_5 ),
        .Q(pwm_counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[4]_i_1_n_4 ),
        .Q(pwm_counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[8]_i_1_n_7 ),
        .Q(pwm_counter_reg[8]),
        .R(clear));
  CARRY4 \pwm_counter_reg[8]_i_1 
       (.CI(\pwm_counter_reg[4]_i_1_n_0 ),
        .CO({\pwm_counter_reg[8]_i_1_n_0 ,\pwm_counter_reg[8]_i_1_n_1 ,\pwm_counter_reg[8]_i_1_n_2 ,\pwm_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwm_counter_reg[8]_i_1_n_4 ,\pwm_counter_reg[8]_i_1_n_5 ,\pwm_counter_reg[8]_i_1_n_6 ,\pwm_counter_reg[8]_i_1_n_7 }),
        .S(pwm_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pwm_counter_reg[8]_i_1_n_6 ),
        .Q(pwm_counter_reg[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]__0_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]__0_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]__0_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[7]__0_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]__0_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[0]),
        .Q(slv_reg0[0]),
        .R(1'b0));
  FDRE \slv_reg0_reg[0]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]__0_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[10]),
        .Q(slv_reg0[10]),
        .R(1'b0));
  FDRE \slv_reg0_reg[10]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]__0_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[11]),
        .Q(slv_reg0[11]),
        .R(1'b0));
  FDRE \slv_reg0_reg[11]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]__0_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[12]),
        .Q(slv_reg0[12]),
        .R(1'b0));
  FDRE \slv_reg0_reg[12]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]__0_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[13]),
        .Q(slv_reg0[13]),
        .R(1'b0));
  FDRE \slv_reg0_reg[13]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]__0_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[14]),
        .Q(slv_reg0[14]),
        .R(1'b0));
  FDRE \slv_reg0_reg[14]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]__0_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[15]),
        .Q(slv_reg0[15]),
        .R(1'b0));
  FDRE \slv_reg0_reg[15]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]__0_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[16]),
        .Q(slv_reg0[16]),
        .R(1'b0));
  FDRE \slv_reg0_reg[16]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]__0_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[17]),
        .Q(slv_reg0[17]),
        .R(1'b0));
  FDRE \slv_reg0_reg[17]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]__0_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[18]),
        .Q(slv_reg0[18]),
        .R(1'b0));
  FDRE \slv_reg0_reg[18]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]__0_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[19]),
        .Q(slv_reg0[19]),
        .R(1'b0));
  FDRE \slv_reg0_reg[19]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]__0_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[1]),
        .Q(slv_reg0[1]),
        .R(1'b0));
  FDRE \slv_reg0_reg[1]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]__0_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[20]),
        .Q(slv_reg0[20]),
        .R(1'b0));
  FDRE \slv_reg0_reg[20]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]__0_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[21]),
        .Q(slv_reg0[21]),
        .R(1'b0));
  FDRE \slv_reg0_reg[21]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]__0_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[22]),
        .Q(slv_reg0[22]),
        .R(1'b0));
  FDRE \slv_reg0_reg[22]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]__0_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[23]),
        .Q(slv_reg0[23]),
        .R(1'b0));
  FDRE \slv_reg0_reg[23]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]__0_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[24]),
        .Q(slv_reg0[24]),
        .R(1'b0));
  FDRE \slv_reg0_reg[24]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]__0_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[25]),
        .Q(slv_reg0[25]),
        .R(1'b0));
  FDRE \slv_reg0_reg[25]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]__0_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[26]),
        .Q(slv_reg0[26]),
        .R(1'b0));
  FDRE \slv_reg0_reg[26]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]__0_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[27]),
        .Q(slv_reg0[27]),
        .R(1'b0));
  FDRE \slv_reg0_reg[27]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]__0_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[28]),
        .Q(slv_reg0[28]),
        .R(1'b0));
  FDRE \slv_reg0_reg[28]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]__0_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[29]),
        .Q(slv_reg0[29]),
        .R(1'b0));
  FDRE \slv_reg0_reg[29]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]__0_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[2]),
        .Q(slv_reg0[2]),
        .R(1'b0));
  FDRE \slv_reg0_reg[2]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]__0_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[30]),
        .Q(slv_reg0[30]),
        .R(1'b0));
  FDRE \slv_reg0_reg[30]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]__0_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[31]),
        .Q(slv_reg0[31]),
        .R(1'b0));
  FDRE \slv_reg0_reg[31]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]__0_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[3]),
        .Q(slv_reg0[3]),
        .R(1'b0));
  FDRE \slv_reg0_reg[3]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]__0_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[4]),
        .Q(slv_reg0[4]),
        .R(1'b0));
  FDRE \slv_reg0_reg[4]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]__0_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[5]),
        .Q(slv_reg0[5]),
        .R(1'b0));
  FDRE \slv_reg0_reg[5]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]__0_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[6]),
        .Q(slv_reg0[6]),
        .R(1'b0));
  FDRE \slv_reg0_reg[6]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]__0_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[7]),
        .Q(slv_reg0[7]),
        .R(1'b0));
  FDRE \slv_reg0_reg[7]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]__0_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[8]),
        .Q(slv_reg0[8]),
        .R(1'b0));
  FDRE \slv_reg0_reg[8]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]__0_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[9]),
        .Q(slv_reg0[9]),
        .R(1'b0));
  FDRE \slv_reg0_reg[9]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]__0_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg1[0]__0_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(slv_reg_wren__2),
        .I2(\slv_reg1[0]__0_i_2_n_0 ),
        .I3(slv_reg1),
        .O(\slv_reg1[0]__0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg1[0]__0_i_2 
       (.I0(p_0_in[0]),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .O(\slv_reg1[0]__0_i_2_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O_counter),
        .Q(slv_reg1),
        .R(1'b0));
  FDRE \slv_reg1_reg[0]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg1[0]__0_i_1_n_0 ),
        .Q(slv_reg1),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[14]__0_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[14]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \slv_reg2[14]_i_1 
       (.I0(slv_reg1),
        .I1(\slv_reg2[14]_i_3_n_0 ),
        .I2(\slv_reg2[14]_i_4_n_0 ),
        .I3(\slv_reg2[14]_i_5_n_0 ),
        .I4(\slv_reg2[14]_i_6_n_0 ),
        .O(\slv_reg2[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg2[14]_i_10 
       (.I0(slv_reg4[15]),
        .I1(slv_reg4[12]),
        .I2(slv_reg4[14]),
        .I3(slv_reg4[13]),
        .O(\slv_reg2[14]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \slv_reg2[14]_i_2 
       (.I0(\slv_reg2[14]_i_6_n_0 ),
        .I1(\slv_reg2[14]_i_5_n_0 ),
        .I2(\slv_reg2[14]_i_4_n_0 ),
        .I3(\slv_reg2[14]_i_3_n_0 ),
        .O(\slv_reg2[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg2[14]_i_3 
       (.I0(slv_reg4[21]),
        .I1(slv_reg4[22]),
        .I2(slv_reg4[20]),
        .I3(slv_reg4[23]),
        .I4(\slv_reg2[14]_i_7_n_0 ),
        .O(\slv_reg2[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg2[14]_i_4 
       (.I0(slv_reg4[1]),
        .I1(slv_reg4[2]),
        .I2(slv_reg4[0]),
        .I3(slv_reg4[3]),
        .I4(\slv_reg2[14]_i_8_n_0 ),
        .O(\slv_reg2[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \slv_reg2[14]_i_5 
       (.I0(slv_reg4[9]),
        .I1(slv_reg4[10]),
        .I2(slv_reg4[8]),
        .I3(slv_reg4[11]),
        .I4(\slv_reg2[14]_i_9_n_0 ),
        .O(\slv_reg2[14]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \slv_reg2[14]_i_6 
       (.I0(slv_reg4[29]),
        .I1(slv_reg4[30]),
        .I2(slv_reg4[28]),
        .I3(slv_reg4[31]),
        .I4(\slv_reg2[14]_i_10_n_0 ),
        .O(\slv_reg2[14]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg2[14]_i_7 
       (.I0(slv_reg4[7]),
        .I1(slv_reg4[4]),
        .I2(slv_reg4[6]),
        .I3(slv_reg4[5]),
        .O(\slv_reg2[14]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg2[14]_i_8 
       (.I0(slv_reg4[19]),
        .I1(slv_reg4[16]),
        .I2(slv_reg4[18]),
        .I3(slv_reg4[17]),
        .O(\slv_reg2[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \slv_reg2[14]_i_9 
       (.I0(slv_reg4[27]),
        .I1(slv_reg4[24]),
        .I2(slv_reg4[26]),
        .I3(slv_reg4[25]),
        .O(\slv_reg2[14]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg2[1]__0_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg2[4]__0_i_2_n_0 ),
        .I2(slv_reg2[1]),
        .O(\slv_reg2[1]__0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg2[4]__0_i_1 
       (.I0(s00_axi_wdata[4]),
        .I1(\slv_reg2[4]__0_i_2_n_0 ),
        .I2(slv_reg2[4]),
        .O(\slv_reg2[4]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[4]__0_i_2 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[4]__0_i_2_n_0 ));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[14]_i_2_n_0 ),
        .D(1'b1),
        .Q(slv_reg2[11]),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg2_reg[11]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[14]__0_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[14]_i_2_n_0 ),
        .D(1'b1),
        .Q(slv_reg2[12]),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg2_reg[12]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[14]__0_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[14]_i_2_n_0 ),
        .D(1'b1),
        .Q(slv_reg2[13]),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg2_reg[13]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[14]__0_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[14]_i_2_n_0 ),
        .D(1'b1),
        .Q(slv_reg2[14]),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg2_reg[14]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[14]__0_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[14]_i_2_n_0 ),
        .D(1'b1),
        .Q(slv_reg2[1]),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg2_reg[1]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[1]__0_i_1_n_0 ),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[14]_i_2_n_0 ),
        .D(1'b1),
        .Q(slv_reg2[4]),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg2_reg[4]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[4]__0_i_1_n_0 ),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[14]_i_2_n_0 ),
        .D(1'b1),
        .Q(slv_reg2[9]),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg2_reg[9]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[14]__0_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \slv_reg3[10]_i_1 
       (.I0(\slv_reg2[14]_i_3_n_0 ),
        .I1(\slv_reg2[14]_i_4_n_0 ),
        .I2(\slv_reg2[14]_i_5_n_0 ),
        .I3(\slv_reg2[14]_i_6_n_0 ),
        .I4(Q[0]),
        .O(\slv_reg3[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \slv_reg3[12]_i_1 
       (.I0(\slv_reg2[14]_i_3_n_0 ),
        .I1(\slv_reg2[14]_i_4_n_0 ),
        .I2(\slv_reg2[14]_i_5_n_0 ),
        .I3(\slv_reg2[14]_i_6_n_0 ),
        .I4(Q[1]),
        .O(\slv_reg3[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \slv_reg3[13]_i_1 
       (.I0(\slv_reg2[14]_i_3_n_0 ),
        .I1(\slv_reg2[14]_i_4_n_0 ),
        .I2(\slv_reg2[14]_i_5_n_0 ),
        .I3(\slv_reg2[14]_i_6_n_0 ),
        .I4(Q[2]),
        .O(\slv_reg3[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \slv_reg3[14]_i_1 
       (.I0(\slv_reg2[14]_i_3_n_0 ),
        .I1(\slv_reg2[14]_i_4_n_0 ),
        .I2(\slv_reg2[14]_i_5_n_0 ),
        .I3(\slv_reg2[14]_i_6_n_0 ),
        .I4(Q[3]),
        .O(\slv_reg3[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[15]__0_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]__0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]__0_i_2 
       (.I0(s00_axi_awready),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_awvalid),
        .O(slv_reg_wren__2));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \slv_reg3[15]_i_1 
       (.I0(\slv_reg2[14]_i_3_n_0 ),
        .I1(\slv_reg2[14]_i_4_n_0 ),
        .I2(\slv_reg2[14]_i_5_n_0 ),
        .I3(\slv_reg2[14]_i_6_n_0 ),
        .I4(Q[4]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[2]__0_i_1 
       (.I0(s00_axi_wdata[2]),
        .I1(\slv_reg3[5]__0_i_2_n_0 ),
        .I2(\axi_rdata_reg[2]_0 ),
        .O(\slv_reg3[2]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \slv_reg3[2]_i_1 
       (.I0(\slv_reg2[14]_i_3_n_0 ),
        .I1(\slv_reg2[14]_i_4_n_0 ),
        .I2(\slv_reg2[14]_i_5_n_0 ),
        .I3(\slv_reg2[14]_i_6_n_0 ),
        .I4(\axi_rdata_reg[2]_0 ),
        .O(\slv_reg3[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[5]__0_i_1 
       (.I0(s00_axi_wdata[5]),
        .I1(\slv_reg3[5]__0_i_2_n_0 ),
        .I2(\axi_rdata_reg[5]_0 ),
        .O(\slv_reg3[5]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[5]__0_i_2 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg3[5]__0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \slv_reg3[5]_i_1 
       (.I0(\slv_reg2[14]_i_3_n_0 ),
        .I1(\slv_reg2[14]_i_4_n_0 ),
        .I2(\slv_reg2[14]_i_5_n_0 ),
        .I3(\slv_reg2[14]_i_6_n_0 ),
        .I4(\axi_rdata_reg[5]_0 ),
        .O(\slv_reg3[5]_i_1_n_0 ));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[10]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg3_reg[10]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]__0_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(Q[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[12]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg3_reg[12]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]__0_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(Q[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[13]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg3_reg[13]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]__0_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(Q[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[14]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg3_reg[14]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]__0_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(Q[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[15]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg3_reg[15]__0 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]__0_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(Q[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[2]_i_1_n_0 ),
        .Q(\axi_rdata_reg[2]_0 ),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg3_reg[2]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[2]__0_i_1_n_0 ),
        .Q(\axi_rdata_reg[2]_0 ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[5]_i_1_n_0 ),
        .Q(\axi_rdata_reg[5]_0 ),
        .R(\slv_reg2[14]_i_1_n_0 ));
  FDRE \slv_reg3_reg[5]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[5]__0_i_1_n_0 ),
        .Q(\axi_rdata_reg[5]_0 ),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[27]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[5]));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[5]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[11]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[11]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[11]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[11]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[11]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[11]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[21]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[21]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[21]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[21]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[5]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[21]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[21]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[21]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[21]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[27]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[27]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[27]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[27]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[27]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[27]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[5]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[27]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[27]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[5]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[5]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[5]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[5]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[5]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[11]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[11]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    slv_reg_rden
       (.I0(s00_axi_rvalid),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_My_ALLSTEP_Core_0_0,My_ALLSTEP_Core_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "My_ALLSTEP_Core_v1_0,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (PWM_SIG,
    Z_SIG,
    PWM0,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input PWM_SIG;
  input Z_SIG;
  output PWM0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire [15:2]\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 ;
  wire PWM0;
  wire PWM_SIG;
  wire Z_SIG;
  wire pwm_counter1_carry__0_i_10_n_0;
  wire pwm_counter1_carry__0_i_10_n_1;
  wire pwm_counter1_carry__0_i_10_n_2;
  wire pwm_counter1_carry__0_i_10_n_3;
  wire pwm_counter1_carry__0_i_11_n_1;
  wire pwm_counter1_carry__0_i_11_n_3;
  wire pwm_counter1_carry__0_i_12_n_0;
  wire pwm_counter1_carry__0_i_13_n_0;
  wire pwm_counter1_carry__0_i_14_n_0;
  wire pwm_counter1_carry__0_i_15_n_0;
  wire pwm_counter1_carry__0_i_16_n_0;
  wire pwm_counter1_carry__0_i_17_n_0;
  wire pwm_counter1_carry__0_i_9_n_2;
  wire [15:10]pwm_counter2;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [0:0]NLW_pwm_counter1_carry__0_i_10_O_UNCONNECTED;
  wire [3:1]NLW_pwm_counter1_carry__0_i_11_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_counter1_carry__0_i_11_O_UNCONNECTED;
  wire [3:0]NLW_pwm_counter1_carry__0_i_9_CO_UNCONNECTED;
  wire [3:1]NLW_pwm_counter1_carry__0_i_9_O_UNCONNECTED;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_My_ALLSTEP_Core_v1_0 inst
       (.CO(pwm_counter1_carry__0_i_11_n_1),
        .PWM0(PWM0),
        .PWM_SIG(PWM_SIG),
        .Z_SIG(Z_SIG),
        .pwm_counter1_carry__0_i_17(pwm_counter1_carry__0_i_9_n_2),
        .pwm_counter2({pwm_counter2[15:12],pwm_counter2[10]}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .slv_reg3({\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [15:12],\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [10],\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [5],\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [2]}));
  CARRY4 pwm_counter1_carry__0_i_10
       (.CI(1'b0),
        .CO({pwm_counter1_carry__0_i_10_n_0,pwm_counter1_carry__0_i_10_n_1,pwm_counter1_carry__0_i_10_n_2,pwm_counter1_carry__0_i_10_n_3}),
        .CYINIT(pwm_counter1_carry__0_i_11_n_1),
        .DI({\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [14:12],1'b0}),
        .O(pwm_counter2[14:11]),
        .S({pwm_counter1_carry__0_i_13_n_0,pwm_counter1_carry__0_i_14_n_0,pwm_counter1_carry__0_i_15_n_0,1'b1}));
  CARRY4 pwm_counter1_carry__0_i_11
       (.CI(1'b0),
        .CO({NLW_pwm_counter1_carry__0_i_11_CO_UNCONNECTED[3],pwm_counter1_carry__0_i_11_n_1,NLW_pwm_counter1_carry__0_i_11_CO_UNCONNECTED[1],pwm_counter1_carry__0_i_11_n_3}),
        .CYINIT(pwm_counter1_carry__0_i_16_n_0),
        .DI({1'b0,1'b0,\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [10],1'b0}),
        .O({NLW_pwm_counter1_carry__0_i_11_O_UNCONNECTED[3:2],pwm_counter2[10],NLW_pwm_counter1_carry__0_i_11_O_UNCONNECTED[0]}),
        .S({1'b0,1'b1,pwm_counter1_carry__0_i_17_n_0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_counter1_carry__0_i_12
       (.I0(\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [15]),
        .O(pwm_counter1_carry__0_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_counter1_carry__0_i_13
       (.I0(\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [14]),
        .O(pwm_counter1_carry__0_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_counter1_carry__0_i_14
       (.I0(\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [13]),
        .O(pwm_counter1_carry__0_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_counter1_carry__0_i_15
       (.I0(\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [12]),
        .O(pwm_counter1_carry__0_i_15_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pwm_counter1_carry__0_i_16
       (.I0(\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [5]),
        .I1(\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [2]),
        .O(pwm_counter1_carry__0_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_counter1_carry__0_i_17
       (.I0(\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [10]),
        .O(pwm_counter1_carry__0_i_17_n_0));
  CARRY4 pwm_counter1_carry__0_i_9
       (.CI(pwm_counter1_carry__0_i_10_n_0),
        .CO({NLW_pwm_counter1_carry__0_i_9_CO_UNCONNECTED[3:2],pwm_counter1_carry__0_i_9_n_2,NLW_pwm_counter1_carry__0_i_9_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\My_ALLSTEP_Core_v1_0_S00_AXI_inst/slv_reg3 [15]}),
        .O({NLW_pwm_counter1_carry__0_i_9_O_UNCONNECTED[3:1],pwm_counter2[15]}),
        .S({1'b0,1'b0,1'b1,pwm_counter1_carry__0_i_12_n_0}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
