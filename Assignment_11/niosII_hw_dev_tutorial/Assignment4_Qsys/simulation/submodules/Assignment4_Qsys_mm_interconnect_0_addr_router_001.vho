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

--synthesis_resources = mux21 33 
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
		 src_channel	:	OUT  STD_LOGIC_VECTOR (6 DOWNTO 0);
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
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_30m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_31m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_37m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_41m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_42m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_47m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_48m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_52m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_53m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_59m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_60m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_62m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_64m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_65m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_70m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_71m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_72m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_73m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_75m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_76m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_33m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_34m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_44m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_45m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_54m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_55m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_56m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_66m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_67m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_68m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_77m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_78m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_79m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_sink_data_range121w342w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range127w316w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range145w284w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range124w328w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range130w301w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range148w283w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_0_400_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_58_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_1_328_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_346_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_364_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_382_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_5_418_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_sink_data_range121w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range124w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range127w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range130w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range145w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range148w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_sink_data_range121w342w(0) <= wire_w_sink_data_range121w(0) AND wire_w_lg_w_sink_data_range124w328w(0);
	wire_w_lg_w_sink_data_range127w316w(0) <= wire_w_sink_data_range127w(0) AND wire_w_lg_w_sink_data_range130w301w(0);
	wire_w_lg_w_sink_data_range145w284w(0) <= wire_w_sink_data_range145w(0) AND wire_w_lg_w_sink_data_range148w283w(0);
	wire_w1w(0) <= NOT s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_1_328_dataout;
	wire_w_lg_w_sink_data_range124w328w(0) <= NOT wire_w_sink_data_range124w(0);
	wire_w_lg_w_sink_data_range130w301w(0) <= NOT wire_w_sink_data_range130w(0);
	wire_w_lg_w_sink_data_range148w283w(0) <= NOT wire_w_sink_data_range148w(0);
	s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_0_400_dataout <= ((((((((((((((NOT sink_data(39)) AND wire_w_lg_w_sink_data_range124w328w(0)) AND (NOT sink_data(41))) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND sink_data(46)) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND sink_data(52));
	s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_58_dataout <= (sink_data(56) AND s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_0_400_dataout);
	s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_1_328_dataout <= ((((wire_w_lg_w_sink_data_range145w284w(0) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND sink_data(52));
	s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_346_dataout <= (((((((NOT sink_data(46)) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND sink_data(52));
	s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_364_dataout <= ((((((((((((NOT sink_data(41)) AND wire_w_lg_w_sink_data_range130w301w(0)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND sink_data(46)) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND sink_data(52));
	s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_382_dataout <= ((((((((((wire_w_lg_w_sink_data_range127w316w(0) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND sink_data(46)) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND sink_data(52));
	s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_5_418_dataout <= ((((((((((((wire_w_lg_w_sink_data_range121w342w(0) AND (NOT sink_data(41))) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND sink_data(46)) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND sink_data(52));
	sink_ready <= src_ready;
	src_channel <= ( wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_70m_dataout & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_71m_dataout & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_72m_dataout & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_73m_dataout & s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_5_418_dataout & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_75m_dataout & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_76m_dataout);
	src_data <= ( sink_data(92 DOWNTO 80) & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_77m_dataout & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_78m_dataout & wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_79m_dataout & sink_data(76 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;
	wire_w_sink_data_range121w(0) <= sink_data(39);
	wire_w_sink_data_range124w(0) <= sink_data(40);
	wire_w_sink_data_range127w(0) <= sink_data(41);
	wire_w_sink_data_range130w(0) <= sink_data(42);
	wire_w_sink_data_range145w(0) <= sink_data(47);
	wire_w_sink_data_range148w(0) <= sink_data(48);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_30m_dataout <= wire_w1w(0) AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_346_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_31m_dataout <= s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_1_328_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_346_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_37m_dataout <= s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_346_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_364_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_41m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_30m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_364_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_42m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_31m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_364_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_47m_dataout <= s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_364_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_382_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_48m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_37m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_382_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_52m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_41m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_382_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_53m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_42m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_382_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_59m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_47m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_58_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_60m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_48m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_58_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_62m_dataout <= s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_382_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_58_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_64m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_52m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_58_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_65m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_53m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_58_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_70m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_59m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_5_418_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_71m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_60m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_5_418_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_72m_dataout <= s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_58_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_5_418_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_73m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_62m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_5_418_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_75m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_64m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_5_418_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_76m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_65m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_5_418_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_33m_dataout <= wire_w1w(0) AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_346_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_34m_dataout <= wire_w1w(0) OR s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_2_346_dataout;
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_44m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_33m_dataout OR s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_364_dataout;
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_45m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_34m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_364_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_54m_dataout <= s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_3_364_dataout OR s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_382_dataout;
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_55m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_44m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_382_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_56m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_45m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_4_382_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_66m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_54m_dataout OR s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_58_dataout;
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_67m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_55m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_58_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_68m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_56m_dataout OR s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_always1_58_dataout;
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_77m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_66m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_5_418_dataout);
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_78m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_67m_dataout OR s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_5_418_dataout;
	wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_79m_dataout <= wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_data_68m_dataout AND NOT(s_wire_assignment4_qsys_mm_interconnect_0_addr_router_001_src_channel_5_418_dataout);

 END RTL; --Assignment4_Qsys_mm_interconnect_0_addr_router_001
--synopsys translate_on
--VALID FILE
