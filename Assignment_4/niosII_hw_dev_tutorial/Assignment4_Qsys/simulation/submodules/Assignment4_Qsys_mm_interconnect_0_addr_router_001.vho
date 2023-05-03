--IP Functional Simulation Model
--VERSION_BEGIN 13.1 cbx_mgl 2013:10:17:09:48:49:SJ cbx_simgen 2013:10:17:09:48:19:SJ  VERSION_END


-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

--synthesis_resources = mux21 24 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  Assignment4_Qsys_mm_interconnect_0_addr_router_001 IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 sink_data	:	IN  STD_LOGIC_VECTOR (92 DOWNTO 0);
		 sink_endofpacket	:	IN  STD_LOGIC;
		 sink_ready	:	OUT  STD_LOGIC;
		 sink_startofpacket	:	IN  STD_LOGIC;
		 sink_valid	:	IN  STD_LOGIC;
		 src_channel	:	OUT  STD_LOGIC_VECTOR (5 DOWNTO 0);
		 src_data	:	OUT  STD_LOGIC_VECTOR (92 DOWNTO 0);
		 src_endofpacket	:	OUT  STD_LOGIC;
		 src_ready	:	IN  STD_LOGIC;
		 src_startofpacket	:	OUT  STD_LOGIC;
		 src_valid	:	OUT  STD_LOGIC
	 ); 
 END Assignment4_Qsys_mm_interconnect_0_addr_router_001;

 ARCHITECTURE RTL OF Assignment4_Qsys_mm_interconnect_0_addr_router_001 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_27m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_28m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_33m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_37m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_38m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_44m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_46m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_48m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_49m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_54m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_55m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_56m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_58m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_59m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_30m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_31m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_40m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_41m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_50m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_51m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_52m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_60m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_61m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_62m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_sink_data_range121w330w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range145w283w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range124w316w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range148w282w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_0_363_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_43_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_1_309_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_327_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_345_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_381_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_sink_data_range121w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range124w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range145w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range148w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_sink_data_range121w330w(0) <= wire_w_sink_data_range121w(0) AND wire_w_lg_w_sink_data_range124w316w(0);
	wire_w_lg_w_sink_data_range145w283w(0) <= wire_w_sink_data_range145w(0) AND wire_w_lg_w_sink_data_range148w282w(0);
	wire_w1w(0) <= NOT s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_1_309_dataout;
	wire_w_lg_w_sink_data_range124w316w(0) <= NOT wire_w_sink_data_range124w(0);
	wire_w_lg_w_sink_data_range148w282w(0) <= NOT wire_w_sink_data_range148w(0);
	s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_0_363_dataout <= ((((((((((((((NOT sink_data(39)) AND wire_w_lg_w_sink_data_range124w316w(0)) AND sink_data(41)) AND (NOT sink_data(42))) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND sink_data(46)) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND sink_data(52));
	s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_43_dataout <= (sink_data(56) AND s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_0_363_dataout);
	s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_1_309_dataout <= ((((wire_w_lg_w_sink_data_range145w283w(0) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND sink_data(52));
	s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_327_dataout <= (((((((NOT sink_data(46)) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND sink_data(52));
	s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_345_dataout <= ((((((((((((NOT sink_data(41)) AND (NOT sink_data(42))) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND sink_data(46)) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND sink_data(52));
	s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_381_dataout <= ((((((((((((wire_w_lg_w_sink_data_range121w330w(0) AND sink_data(41)) AND (NOT sink_data(42))) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND sink_data(46)) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND sink_data(52));
	sink_ready <= src_ready;
	src_channel <= ( wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_54m_dataout & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_55m_dataout & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_56m_dataout & s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_381_dataout & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_58m_dataout & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_59m_dataout);
	src_data <= ( sink_data(92 DOWNTO 80) & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_60m_dataout & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_61m_dataout & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_62m_dataout & sink_data(76 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;
	wire_w_sink_data_range121w(0) <= sink_data(39);
	wire_w_sink_data_range124w(0) <= sink_data(40);
	wire_w_sink_data_range145w(0) <= sink_data(47);
	wire_w_sink_data_range148w(0) <= sink_data(48);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_27m_dataout <= wire_w1w(0) AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_327_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_28m_dataout <= s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_1_309_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_327_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_33m_dataout <= s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_327_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_345_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_37m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_27m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_345_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_38m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_28m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_345_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_44m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_33m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_43_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_46m_dataout <= s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_345_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_43_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_48m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_37m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_43_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_49m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_38m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_43_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_54m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_44m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_381_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_55m_dataout <= s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_43_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_381_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_56m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_46m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_381_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_58m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_48m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_381_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_59m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_49m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_381_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_30m_dataout <= wire_w1w(0) AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_327_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_31m_dataout <= wire_w1w(0) OR s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_327_dataout;
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_40m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_30m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_345_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_41m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_31m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_345_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_50m_dataout <= s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_345_dataout OR s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_43_dataout;
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_51m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_40m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_43_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_52m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_41m_dataout OR s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_43_dataout;
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_60m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_50m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_381_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_61m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_51m_dataout OR s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_381_dataout;
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_62m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_52m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_381_dataout);

 END RTL; --Assignment4_Qsys_mm_interconnect_0_addr_router_001
--synopsys translate_on
--VALID FILE
