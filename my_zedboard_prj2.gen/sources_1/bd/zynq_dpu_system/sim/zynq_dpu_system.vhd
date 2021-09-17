--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Thu Sep 16 23:39:32 2021
--Host        : gflamis-ecsa-lab running 64-bit Ubuntu 20.04.3 LTS
--Command     : generate_target zynq_dpu_system.bd
--Design      : zynq_dpu_system
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hier_dpu_clk_rst_imp_1W4YNP5 is
  port (
    CLK : in STD_LOGIC;
    DPU_CLK : out STD_LOGIC;
    DSP_CLK : out STD_LOGIC;
    LOCKED : out STD_LOGIC;
    RSTn : in STD_LOGIC;
    RSTn_DSP : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_INTC : out STD_LOGIC_VECTOR ( 0 to 0 );
    RSTn_PER : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end hier_dpu_clk_rst_imp_1W4YNP5;

architecture STRUCTURE of hier_dpu_clk_rst_imp_1W4YNP5 is
  component zynq_dpu_system_proc_sys_reset_0_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zynq_dpu_system_proc_sys_reset_0_1;
  component zynq_dpu_system_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_dsp : out STD_LOGIC;
    clk_dpu : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component zynq_dpu_system_clk_wiz_0_0;
  component zynq_dpu_system_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zynq_dpu_system_proc_sys_reset_0_0;
  component zynq_dpu_system_proc_sys_reset_0_2 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zynq_dpu_system_proc_sys_reset_0_2;
  signal CLK_1 : STD_LOGIC;
  signal RSTn_1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal dpu_clk_wiz_clk_dpu : STD_LOGIC;
  signal dpu_clk_wiz_clk_dsp : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_gen_clk_dsp_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_gen_clk_dsp_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_gen_clk_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gen_clk_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_gen_clk_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gen_clk_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gen_clk_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gen_clk_dsp_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_gen_clk_dsp_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gen_clk_dsp_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  CLK_1 <= CLK;
  DPU_CLK <= dpu_clk_wiz_clk_dpu;
  DSP_CLK <= dpu_clk_wiz_clk_dsp;
  LOCKED <= clk_wiz_0_locked;
  RSTn_1 <= RSTn;
  RSTn_DSP(0) <= rst_gen_clk_peripheral_aresetn(0);
  RSTn_INTC(0) <= rst_gen_clk_dsp_interconnect_aresetn(0);
  RSTn_PER(0) <= rst_gen_clk_dsp_peripheral_aresetn(0);
  peripheral_aresetn(0) <= proc_sys_reset_0_peripheral_aresetn(0);
dpu_clk_wiz: component zynq_dpu_system_clk_wiz_0_0
     port map (
      clk_dpu => dpu_clk_wiz_clk_dpu,
      clk_dsp => dpu_clk_wiz_clk_dsp,
      clk_in1 => CLK_1,
      locked => clk_wiz_0_locked,
      resetn => RSTn_1
    );
proc_sys_reset_0: component zynq_dpu_system_proc_sys_reset_0_2
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => RSTn_1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => CLK_1
    );
rst_gen_clk: component zynq_dpu_system_proc_sys_reset_0_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_gen_clk_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => RSTn_1,
      interconnect_aresetn(0) => NLW_rst_gen_clk_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_gen_clk_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_gen_clk_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_gen_clk_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => dpu_clk_wiz_clk_dsp
    );
rst_gen_clk_dsp: component zynq_dpu_system_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_gen_clk_dsp_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => RSTn_1,
      interconnect_aresetn(0) => rst_gen_clk_dsp_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_gen_clk_dsp_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_gen_clk_dsp_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_gen_clk_dsp_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => dpu_clk_wiz_clk_dpu
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_D3MJNY is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_D3MJNY;

architecture STRUCTURE of s00_couplers_imp_D3MJNY is
  component zynq_dpu_system_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component zynq_dpu_system_auto_us_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_us_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_us_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_us_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_us_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_us_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_us_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_us_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_us_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_us_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_us_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_us_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_us_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_us_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_us_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_us_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_us_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_us_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_us_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_us_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_us_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= auto_us_to_s00_couplers_ARADDR(39 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(3 downto 0) <= auto_us_to_s00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_us_to_s00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_us_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_to_s00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_us_to_s00_couplers_AWADDR(39 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(3 downto 0) <= auto_us_to_s00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_us_to_s00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_us_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_us_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_us_to_s00_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_us_to_s00_couplers_WDATA(63 downto 0);
  M_AXI_wlast <= auto_us_to_s00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_us_to_s00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_us_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_us_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_us_AWREADY;
  S_AXI_bid(1 downto 0) <= s00_couplers_to_auto_us_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_us_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_us_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_us_RDATA(31 downto 0);
  S_AXI_rid(1 downto 0) <= s00_couplers_to_auto_us_RID(1 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_us_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_us_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_us_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_us_WREADY;
  auto_us_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_us_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_us_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_us_to_s00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_us_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_us_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_us_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_us_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  s00_couplers_to_auto_us_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_us_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_us_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  s00_couplers_to_auto_us_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_us_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_us_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_us_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_us_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_us_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_us_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  s00_couplers_to_auto_us_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_us_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_us_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  s00_couplers_to_auto_us_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_us_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_us_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_us_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_us_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_us_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_us_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_us_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_us_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_us_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_us_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_us_WVALID <= S_AXI_wvalid;
auto_us: component zynq_dpu_system_auto_us_0
     port map (
      m_axi_araddr(39 downto 0) => auto_us_to_s00_couplers_ARADDR(39 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(3 downto 0) => auto_us_to_s00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_us_to_s00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_us_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_s00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_us_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_s00_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_us_to_s00_couplers_AWADDR(39 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(3 downto 0) => auto_us_to_s00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_us_to_s00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_us_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_s00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_us_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_s00_couplers_AWVALID,
      m_axi_bready => auto_us_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_s00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_us_to_s00_couplers_RDATA(63 downto 0),
      m_axi_rlast => auto_us_to_s00_couplers_RLAST,
      m_axi_rready => auto_us_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_s00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_us_to_s00_couplers_WDATA(63 downto 0),
      m_axi_wlast => auto_us_to_s00_couplers_WLAST,
      m_axi_wready => auto_us_to_s00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_us_to_s00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_us_to_s00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(39 downto 0) => s00_couplers_to_auto_us_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(1 downto 0) => s00_couplers_to_auto_us_ARID(1 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_us_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_us_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_us_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_us_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_us_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_auto_us_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => s00_couplers_to_auto_us_AWID(1 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_us_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_us_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_us_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_us_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_us_AWVALID,
      s_axi_bid(1 downto 0) => s00_couplers_to_auto_us_BID(1 downto 0),
      s_axi_bready => s00_couplers_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_us_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_us_RDATA(31 downto 0),
      s_axi_rid(1 downto 0) => s00_couplers_to_auto_us_RID(1 downto 0),
      s_axi_rlast => s00_couplers_to_auto_us_RLAST,
      s_axi_rready => s00_couplers_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_us_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_us_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_auto_us_WLAST,
      s_axi_wready => s00_couplers_to_auto_us_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_us_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_us_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_dpu_system_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end zynq_dpu_system_axi_interconnect_0_0;

architecture STRUCTURE of zynq_dpu_system_axi_interconnect_0_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_ACLK_net : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_ARESETN_net : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_ARVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_AWVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_BREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_BVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_RLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_RREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_RVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_WLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_WREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_ARVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_AWVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_BREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_BVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_RLAST : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_RREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_RVALID : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_WLAST : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_WREADY : STD_LOGIC;
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_dpu_intc_M_AXI_LPD_WVALID : STD_LOGIC;
begin
  M00_AXI_araddr(39 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARADDR(39 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARCACHE(3 downto 0);
  M00_AXI_arlen(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_dpu_intc_M_AXI_LPD_ARVALID;
  M00_AXI_awaddr(39 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWADDR(39 downto 0);
  M00_AXI_awburst(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWCACHE(3 downto 0);
  M00_AXI_awlen(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_dpu_intc_M_AXI_LPD_AWVALID;
  M00_AXI_bready <= s00_couplers_to_dpu_intc_M_AXI_LPD_BREADY;
  M00_AXI_rready <= s00_couplers_to_dpu_intc_M_AXI_LPD_RREADY;
  M00_AXI_wdata(63 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_WDATA(63 downto 0);
  M00_AXI_wlast <= s00_couplers_to_dpu_intc_M_AXI_LPD_WLAST;
  M00_AXI_wstrb(7 downto 0) <= s00_couplers_to_dpu_intc_M_AXI_LPD_WSTRB(7 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_dpu_intc_M_AXI_LPD_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= dpu_intc_M_AXI_LPD_to_s00_couplers_ARREADY;
  S00_AXI_awready <= dpu_intc_M_AXI_LPD_to_s00_couplers_AWREADY;
  S00_AXI_bid(1 downto 0) <= dpu_intc_M_AXI_LPD_to_s00_couplers_BID(1 downto 0);
  S00_AXI_bresp(1 downto 0) <= dpu_intc_M_AXI_LPD_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= dpu_intc_M_AXI_LPD_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= dpu_intc_M_AXI_LPD_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(1 downto 0) <= dpu_intc_M_AXI_LPD_to_s00_couplers_RID(1 downto 0);
  S00_AXI_rlast <= dpu_intc_M_AXI_LPD_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= dpu_intc_M_AXI_LPD_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= dpu_intc_M_AXI_LPD_to_s00_couplers_RVALID;
  S00_AXI_wready <= dpu_intc_M_AXI_LPD_to_s00_couplers_WREADY;
  dpu_intc_M_AXI_LPD_ACLK_net <= M00_ACLK;
  dpu_intc_M_AXI_LPD_ARESETN_net <= M00_ARESETN;
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARADDR(39 downto 0) <= S00_AXI_araddr(39 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARID(1 downto 0) <= S00_AXI_arid(1 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWADDR(39 downto 0) <= S00_AXI_awaddr(39 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWID(1 downto 0) <= S00_AXI_awid(1 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  dpu_intc_M_AXI_LPD_to_s00_couplers_BREADY <= S00_AXI_bready;
  dpu_intc_M_AXI_LPD_to_s00_couplers_RREADY <= S00_AXI_rready;
  dpu_intc_M_AXI_LPD_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_WLAST <= S00_AXI_wlast;
  dpu_intc_M_AXI_LPD_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  dpu_intc_M_AXI_LPD_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_dpu_intc_M_AXI_LPD_ARREADY <= M00_AXI_arready;
  s00_couplers_to_dpu_intc_M_AXI_LPD_AWREADY <= M00_AXI_awready;
  s00_couplers_to_dpu_intc_M_AXI_LPD_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_LPD_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_dpu_intc_M_AXI_LPD_RDATA(63 downto 0) <= M00_AXI_rdata(63 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_LPD_RLAST <= M00_AXI_rlast;
  s00_couplers_to_dpu_intc_M_AXI_LPD_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_dpu_intc_M_AXI_LPD_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_dpu_intc_M_AXI_LPD_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_D3MJNY
     port map (
      M_ACLK => dpu_intc_M_AXI_LPD_ACLK_net,
      M_ARESETN => dpu_intc_M_AXI_LPD_ARESETN_net,
      M_AXI_araddr(39 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARADDR(39 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_dpu_intc_M_AXI_LPD_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_dpu_intc_M_AXI_LPD_ARVALID,
      M_AXI_awaddr(39 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWADDR(39 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_dpu_intc_M_AXI_LPD_AWREADY,
      M_AXI_awsize(2 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_dpu_intc_M_AXI_LPD_AWVALID,
      M_AXI_bready => s00_couplers_to_dpu_intc_M_AXI_LPD_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_dpu_intc_M_AXI_LPD_BVALID,
      M_AXI_rdata(63 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_RDATA(63 downto 0),
      M_AXI_rlast => s00_couplers_to_dpu_intc_M_AXI_LPD_RLAST,
      M_AXI_rready => s00_couplers_to_dpu_intc_M_AXI_LPD_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_dpu_intc_M_AXI_LPD_RVALID,
      M_AXI_wdata(63 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_WDATA(63 downto 0),
      M_AXI_wlast => s00_couplers_to_dpu_intc_M_AXI_LPD_WLAST,
      M_AXI_wready => s00_couplers_to_dpu_intc_M_AXI_LPD_WREADY,
      M_AXI_wstrb(7 downto 0) => s00_couplers_to_dpu_intc_M_AXI_LPD_WSTRB(7 downto 0),
      M_AXI_wvalid => s00_couplers_to_dpu_intc_M_AXI_LPD_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(39 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARID(1 downto 0),
      S_AXI_arlen(3 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => dpu_intc_M_AXI_LPD_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => dpu_intc_M_AXI_LPD_to_s00_couplers_ARVALID,
      S_AXI_awaddr(39 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWID(1 downto 0),
      S_AXI_awlen(3 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => dpu_intc_M_AXI_LPD_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => dpu_intc_M_AXI_LPD_to_s00_couplers_AWVALID,
      S_AXI_bid(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_BID(1 downto 0),
      S_AXI_bready => dpu_intc_M_AXI_LPD_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => dpu_intc_M_AXI_LPD_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_RID(1 downto 0),
      S_AXI_rlast => dpu_intc_M_AXI_LPD_to_s00_couplers_RLAST,
      S_AXI_rready => dpu_intc_M_AXI_LPD_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => dpu_intc_M_AXI_LPD_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => dpu_intc_M_AXI_LPD_to_s00_couplers_WLAST,
      S_AXI_wready => dpu_intc_M_AXI_LPD_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => dpu_intc_M_AXI_LPD_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => dpu_intc_M_AXI_LPD_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hier_dpu_gph_imp_1HGXC9J is
  port (
    CLK : in STD_LOGIC;
    DPU0_M_AXI_DATA0_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    DPU0_M_AXI_DATA0_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA0_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA0_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA0_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA0_arready : out STD_LOGIC;
    DPU0_M_AXI_DATA0_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA0_arvalid : in STD_LOGIC;
    DPU0_M_AXI_DATA0_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    DPU0_M_AXI_DATA0_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA0_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA0_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA0_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA0_awready : out STD_LOGIC;
    DPU0_M_AXI_DATA0_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA0_awvalid : in STD_LOGIC;
    DPU0_M_AXI_DATA0_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    DPU0_M_AXI_DATA0_bready : in STD_LOGIC;
    DPU0_M_AXI_DATA0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_bvalid : out STD_LOGIC;
    DPU0_M_AXI_DATA0_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    DPU0_M_AXI_DATA0_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    DPU0_M_AXI_DATA0_rlast : out STD_LOGIC;
    DPU0_M_AXI_DATA0_rready : in STD_LOGIC;
    DPU0_M_AXI_DATA0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA0_rvalid : out STD_LOGIC;
    DPU0_M_AXI_DATA0_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DPU0_M_AXI_DATA0_wid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    DPU0_M_AXI_DATA0_wlast : in STD_LOGIC;
    DPU0_M_AXI_DATA0_wready : out STD_LOGIC;
    DPU0_M_AXI_DATA0_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DPU0_M_AXI_DATA0_wvalid : in STD_LOGIC;
    DPU0_M_AXI_DATA1_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    DPU0_M_AXI_DATA1_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA1_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA1_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA1_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA1_arready : out STD_LOGIC;
    DPU0_M_AXI_DATA1_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA1_arvalid : in STD_LOGIC;
    DPU0_M_AXI_DATA1_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    DPU0_M_AXI_DATA1_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA1_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA1_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA1_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_DATA1_awready : out STD_LOGIC;
    DPU0_M_AXI_DATA1_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_DATA1_awvalid : in STD_LOGIC;
    DPU0_M_AXI_DATA1_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    DPU0_M_AXI_DATA1_bready : in STD_LOGIC;
    DPU0_M_AXI_DATA1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_bvalid : out STD_LOGIC;
    DPU0_M_AXI_DATA1_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    DPU0_M_AXI_DATA1_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    DPU0_M_AXI_DATA1_rlast : out STD_LOGIC;
    DPU0_M_AXI_DATA1_rready : in STD_LOGIC;
    DPU0_M_AXI_DATA1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_DATA1_rvalid : out STD_LOGIC;
    DPU0_M_AXI_DATA1_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DPU0_M_AXI_DATA1_wid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    DPU0_M_AXI_DATA1_wlast : in STD_LOGIC;
    DPU0_M_AXI_DATA1_wready : out STD_LOGIC;
    DPU0_M_AXI_DATA1_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DPU0_M_AXI_DATA1_wvalid : in STD_LOGIC;
    DPU0_M_AXI_INSTR_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    DPU0_M_AXI_INSTR_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_INSTR_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_INSTR_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_INSTR_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_INSTR_arready : out STD_LOGIC;
    DPU0_M_AXI_INSTR_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_INSTR_arvalid : in STD_LOGIC;
    DPU0_M_AXI_INSTR_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    DPU0_M_AXI_INSTR_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_INSTR_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_INSTR_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_INSTR_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_INSTR_awready : out STD_LOGIC;
    DPU0_M_AXI_INSTR_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DPU0_M_AXI_INSTR_awvalid : in STD_LOGIC;
    DPU0_M_AXI_INSTR_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_bready : in STD_LOGIC;
    DPU0_M_AXI_INSTR_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_bvalid : out STD_LOGIC;
    DPU0_M_AXI_INSTR_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DPU0_M_AXI_INSTR_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_rlast : out STD_LOGIC;
    DPU0_M_AXI_INSTR_rready : in STD_LOGIC;
    DPU0_M_AXI_INSTR_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DPU0_M_AXI_INSTR_rvalid : out STD_LOGIC;
    DPU0_M_AXI_INSTR_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DPU0_M_AXI_INSTR_wlast : in STD_LOGIC;
    DPU0_M_AXI_INSTR_wready : out STD_LOGIC;
    DPU0_M_AXI_INSTR_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DPU0_M_AXI_INSTR_wvalid : in STD_LOGIC;
    GHP_CLK_I : in STD_LOGIC;
    GHP_CLK_O : out STD_LOGIC;
    GHP_RSTn : in STD_LOGIC;
    M_AXI_HP0_FPD_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HP0_FPD_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP0_FPD_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_arready : in STD_LOGIC;
    M_AXI_HP0_FPD_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP0_FPD_arvalid : out STD_LOGIC;
    M_AXI_HP0_FPD_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HP0_FPD_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP0_FPD_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP0_FPD_awready : in STD_LOGIC;
    M_AXI_HP0_FPD_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP0_FPD_awvalid : out STD_LOGIC;
    M_AXI_HP0_FPD_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP0_FPD_bready : out STD_LOGIC;
    M_AXI_HP0_FPD_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_bvalid : in STD_LOGIC;
    M_AXI_HP0_FPD_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_HP0_FPD_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP0_FPD_rlast : in STD_LOGIC;
    M_AXI_HP0_FPD_rready : out STD_LOGIC;
    M_AXI_HP0_FPD_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP0_FPD_rvalid : in STD_LOGIC;
    M_AXI_HP0_FPD_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_HP0_FPD_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP0_FPD_wlast : out STD_LOGIC;
    M_AXI_HP0_FPD_wready : in STD_LOGIC;
    M_AXI_HP0_FPD_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_HP0_FPD_wvalid : out STD_LOGIC;
    M_AXI_HP1_FPD_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HP1_FPD_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP1_FPD_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_arready : in STD_LOGIC;
    M_AXI_HP1_FPD_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP1_FPD_arvalid : out STD_LOGIC;
    M_AXI_HP1_FPD_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_HP1_FPD_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP1_FPD_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_HP1_FPD_awready : in STD_LOGIC;
    M_AXI_HP1_FPD_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_HP1_FPD_awvalid : out STD_LOGIC;
    M_AXI_HP1_FPD_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP1_FPD_bready : out STD_LOGIC;
    M_AXI_HP1_FPD_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_bvalid : in STD_LOGIC;
    M_AXI_HP1_FPD_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_HP1_FPD_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP1_FPD_rlast : in STD_LOGIC;
    M_AXI_HP1_FPD_rready : out STD_LOGIC;
    M_AXI_HP1_FPD_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_HP1_FPD_rvalid : in STD_LOGIC;
    M_AXI_HP1_FPD_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_HP1_FPD_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_HP1_FPD_wlast : out STD_LOGIC;
    M_AXI_HP1_FPD_wready : in STD_LOGIC;
    M_AXI_HP1_FPD_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_HP1_FPD_wvalid : out STD_LOGIC;
    M_AXI_LPD_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_LPD_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_LPD_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_arready : in STD_LOGIC;
    M_AXI_LPD_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_LPD_arvalid : out STD_LOGIC;
    M_AXI_LPD_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_LPD_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_LPD_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_LPD_awready : in STD_LOGIC;
    M_AXI_LPD_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_LPD_awvalid : out STD_LOGIC;
    M_AXI_LPD_bready : out STD_LOGIC;
    M_AXI_LPD_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_bvalid : in STD_LOGIC;
    M_AXI_LPD_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_LPD_rlast : in STD_LOGIC;
    M_AXI_LPD_rready : out STD_LOGIC;
    M_AXI_LPD_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_LPD_rvalid : in STD_LOGIC;
    M_AXI_LPD_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_LPD_wlast : out STD_LOGIC;
    M_AXI_LPD_wready : in STD_LOGIC;
    M_AXI_LPD_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_LPD_wvalid : out STD_LOGIC;
    RSTn_INTC : in STD_LOGIC;
    RSTn_PERI : in STD_LOGIC
  );
end hier_dpu_gph_imp_1HGXC9J;

architecture STRUCTURE of hier_dpu_gph_imp_1HGXC9J is
  signal CLK_1 : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA0_1_ARVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA0_1_AWVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DPU0_M_AXI_DATA0_1_BREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_BVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal DPU0_M_AXI_DATA0_1_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DPU0_M_AXI_DATA0_1_RLAST : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_RREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA0_1_RVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal DPU0_M_AXI_DATA0_1_WID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DPU0_M_AXI_DATA0_1_WLAST : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_WREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA0_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPU0_M_AXI_DATA0_1_WVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA1_1_ARVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_DATA1_1_AWVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DPU0_M_AXI_DATA1_1_BREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_BVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal DPU0_M_AXI_DATA1_1_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DPU0_M_AXI_DATA1_1_RLAST : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_RREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_DATA1_1_RVALID : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal DPU0_M_AXI_DATA1_1_WID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DPU0_M_AXI_DATA1_1_WLAST : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_WREADY : STD_LOGIC;
  signal DPU0_M_AXI_DATA1_1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPU0_M_AXI_DATA1_1_WVALID : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARREADY : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_INSTR_1_ARVALID : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWREADY : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPU0_M_AXI_INSTR_1_AWVALID : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_BREADY : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_BVALID : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DPU0_M_AXI_INSTR_1_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_RLAST : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_RREADY : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPU0_M_AXI_INSTR_1_RVALID : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DPU0_M_AXI_INSTR_1_WLAST : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_WREADY : STD_LOGIC;
  signal DPU0_M_AXI_INSTR_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPU0_M_AXI_INSTR_1_WVALID : STD_LOGIC;
  signal GHP_CLK_I_1 : STD_LOGIC;
  signal GHP_RSTn_1 : STD_LOGIC;
  signal RSTn_INTC_1 : STD_LOGIC;
  signal RSTn_PERI_1 : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_ARVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_AWVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_BREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_BVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_RLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_RREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_RVALID : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_WLAST : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_WREADY : STD_LOGIC;
  signal dpu_intc_M_AXI_LPD_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dpu_intc_M_AXI_LPD_M00_AXI_WVALID : STD_LOGIC;
begin
  CLK_1 <= CLK;
  DPU0_M_AXI_DATA0_1_ARADDR(39 downto 0) <= DPU0_M_AXI_DATA0_araddr(39 downto 0);
  DPU0_M_AXI_DATA0_1_ARBURST(1 downto 0) <= DPU0_M_AXI_DATA0_arburst(1 downto 0);
  DPU0_M_AXI_DATA0_1_ARCACHE(3 downto 0) <= DPU0_M_AXI_DATA0_arcache(3 downto 0);
  DPU0_M_AXI_DATA0_1_ARID(1 downto 0) <= DPU0_M_AXI_DATA0_arid(1 downto 0);
  DPU0_M_AXI_DATA0_1_ARLEN(3 downto 0) <= DPU0_M_AXI_DATA0_arlen(3 downto 0);
  DPU0_M_AXI_DATA0_1_ARLOCK(1 downto 0) <= DPU0_M_AXI_DATA0_arlock(1 downto 0);
  DPU0_M_AXI_DATA0_1_ARPROT(2 downto 0) <= DPU0_M_AXI_DATA0_arprot(2 downto 0);
  DPU0_M_AXI_DATA0_1_ARQOS(3 downto 0) <= DPU0_M_AXI_DATA0_arqos(3 downto 0);
  DPU0_M_AXI_DATA0_1_ARREADY <= M_AXI_HP0_FPD_arready;
  DPU0_M_AXI_DATA0_1_ARSIZE(2 downto 0) <= DPU0_M_AXI_DATA0_arsize(2 downto 0);
  DPU0_M_AXI_DATA0_1_ARVALID <= DPU0_M_AXI_DATA0_arvalid;
  DPU0_M_AXI_DATA0_1_AWADDR(39 downto 0) <= DPU0_M_AXI_DATA0_awaddr(39 downto 0);
  DPU0_M_AXI_DATA0_1_AWBURST(1 downto 0) <= DPU0_M_AXI_DATA0_awburst(1 downto 0);
  DPU0_M_AXI_DATA0_1_AWCACHE(3 downto 0) <= DPU0_M_AXI_DATA0_awcache(3 downto 0);
  DPU0_M_AXI_DATA0_1_AWID(1 downto 0) <= DPU0_M_AXI_DATA0_awid(1 downto 0);
  DPU0_M_AXI_DATA0_1_AWLEN(3 downto 0) <= DPU0_M_AXI_DATA0_awlen(3 downto 0);
  DPU0_M_AXI_DATA0_1_AWLOCK(1 downto 0) <= DPU0_M_AXI_DATA0_awlock(1 downto 0);
  DPU0_M_AXI_DATA0_1_AWPROT(2 downto 0) <= DPU0_M_AXI_DATA0_awprot(2 downto 0);
  DPU0_M_AXI_DATA0_1_AWQOS(3 downto 0) <= DPU0_M_AXI_DATA0_awqos(3 downto 0);
  DPU0_M_AXI_DATA0_1_AWREADY <= M_AXI_HP0_FPD_awready;
  DPU0_M_AXI_DATA0_1_AWSIZE(2 downto 0) <= DPU0_M_AXI_DATA0_awsize(2 downto 0);
  DPU0_M_AXI_DATA0_1_AWVALID <= DPU0_M_AXI_DATA0_awvalid;
  DPU0_M_AXI_DATA0_1_BID(5 downto 0) <= M_AXI_HP0_FPD_bid(5 downto 0);
  DPU0_M_AXI_DATA0_1_BREADY <= DPU0_M_AXI_DATA0_bready;
  DPU0_M_AXI_DATA0_1_BRESP(1 downto 0) <= M_AXI_HP0_FPD_bresp(1 downto 0);
  DPU0_M_AXI_DATA0_1_BVALID <= M_AXI_HP0_FPD_bvalid;
  DPU0_M_AXI_DATA0_1_RDATA(63 downto 0) <= M_AXI_HP0_FPD_rdata(63 downto 0);
  DPU0_M_AXI_DATA0_1_RID(5 downto 0) <= M_AXI_HP0_FPD_rid(5 downto 0);
  DPU0_M_AXI_DATA0_1_RLAST <= M_AXI_HP0_FPD_rlast;
  DPU0_M_AXI_DATA0_1_RREADY <= DPU0_M_AXI_DATA0_rready;
  DPU0_M_AXI_DATA0_1_RRESP(1 downto 0) <= M_AXI_HP0_FPD_rresp(1 downto 0);
  DPU0_M_AXI_DATA0_1_RVALID <= M_AXI_HP0_FPD_rvalid;
  DPU0_M_AXI_DATA0_1_WDATA(63 downto 0) <= DPU0_M_AXI_DATA0_wdata(63 downto 0);
  DPU0_M_AXI_DATA0_1_WID(5 downto 0) <= DPU0_M_AXI_DATA0_wid(5 downto 0);
  DPU0_M_AXI_DATA0_1_WLAST <= DPU0_M_AXI_DATA0_wlast;
  DPU0_M_AXI_DATA0_1_WREADY <= M_AXI_HP0_FPD_wready;
  DPU0_M_AXI_DATA0_1_WSTRB(7 downto 0) <= DPU0_M_AXI_DATA0_wstrb(7 downto 0);
  DPU0_M_AXI_DATA0_1_WVALID <= DPU0_M_AXI_DATA0_wvalid;
  DPU0_M_AXI_DATA0_arready <= DPU0_M_AXI_DATA0_1_ARREADY;
  DPU0_M_AXI_DATA0_awready <= DPU0_M_AXI_DATA0_1_AWREADY;
  DPU0_M_AXI_DATA0_bid(5 downto 0) <= DPU0_M_AXI_DATA0_1_BID(5 downto 0);
  DPU0_M_AXI_DATA0_bresp(1 downto 0) <= DPU0_M_AXI_DATA0_1_BRESP(1 downto 0);
  DPU0_M_AXI_DATA0_bvalid <= DPU0_M_AXI_DATA0_1_BVALID;
  DPU0_M_AXI_DATA0_rdata(63 downto 0) <= DPU0_M_AXI_DATA0_1_RDATA(63 downto 0);
  DPU0_M_AXI_DATA0_rid(5 downto 0) <= DPU0_M_AXI_DATA0_1_RID(5 downto 0);
  DPU0_M_AXI_DATA0_rlast <= DPU0_M_AXI_DATA0_1_RLAST;
  DPU0_M_AXI_DATA0_rresp(1 downto 0) <= DPU0_M_AXI_DATA0_1_RRESP(1 downto 0);
  DPU0_M_AXI_DATA0_rvalid <= DPU0_M_AXI_DATA0_1_RVALID;
  DPU0_M_AXI_DATA0_wready <= DPU0_M_AXI_DATA0_1_WREADY;
  DPU0_M_AXI_DATA1_1_ARADDR(39 downto 0) <= DPU0_M_AXI_DATA1_araddr(39 downto 0);
  DPU0_M_AXI_DATA1_1_ARBURST(1 downto 0) <= DPU0_M_AXI_DATA1_arburst(1 downto 0);
  DPU0_M_AXI_DATA1_1_ARCACHE(3 downto 0) <= DPU0_M_AXI_DATA1_arcache(3 downto 0);
  DPU0_M_AXI_DATA1_1_ARID(1 downto 0) <= DPU0_M_AXI_DATA1_arid(1 downto 0);
  DPU0_M_AXI_DATA1_1_ARLEN(3 downto 0) <= DPU0_M_AXI_DATA1_arlen(3 downto 0);
  DPU0_M_AXI_DATA1_1_ARLOCK(1 downto 0) <= DPU0_M_AXI_DATA1_arlock(1 downto 0);
  DPU0_M_AXI_DATA1_1_ARPROT(2 downto 0) <= DPU0_M_AXI_DATA1_arprot(2 downto 0);
  DPU0_M_AXI_DATA1_1_ARQOS(3 downto 0) <= DPU0_M_AXI_DATA1_arqos(3 downto 0);
  DPU0_M_AXI_DATA1_1_ARREADY <= M_AXI_HP1_FPD_arready;
  DPU0_M_AXI_DATA1_1_ARSIZE(2 downto 0) <= DPU0_M_AXI_DATA1_arsize(2 downto 0);
  DPU0_M_AXI_DATA1_1_ARVALID <= DPU0_M_AXI_DATA1_arvalid;
  DPU0_M_AXI_DATA1_1_AWADDR(39 downto 0) <= DPU0_M_AXI_DATA1_awaddr(39 downto 0);
  DPU0_M_AXI_DATA1_1_AWBURST(1 downto 0) <= DPU0_M_AXI_DATA1_awburst(1 downto 0);
  DPU0_M_AXI_DATA1_1_AWCACHE(3 downto 0) <= DPU0_M_AXI_DATA1_awcache(3 downto 0);
  DPU0_M_AXI_DATA1_1_AWID(1 downto 0) <= DPU0_M_AXI_DATA1_awid(1 downto 0);
  DPU0_M_AXI_DATA1_1_AWLEN(3 downto 0) <= DPU0_M_AXI_DATA1_awlen(3 downto 0);
  DPU0_M_AXI_DATA1_1_AWLOCK(1 downto 0) <= DPU0_M_AXI_DATA1_awlock(1 downto 0);
  DPU0_M_AXI_DATA1_1_AWPROT(2 downto 0) <= DPU0_M_AXI_DATA1_awprot(2 downto 0);
  DPU0_M_AXI_DATA1_1_AWQOS(3 downto 0) <= DPU0_M_AXI_DATA1_awqos(3 downto 0);
  DPU0_M_AXI_DATA1_1_AWREADY <= M_AXI_HP1_FPD_awready;
  DPU0_M_AXI_DATA1_1_AWSIZE(2 downto 0) <= DPU0_M_AXI_DATA1_awsize(2 downto 0);
  DPU0_M_AXI_DATA1_1_AWVALID <= DPU0_M_AXI_DATA1_awvalid;
  DPU0_M_AXI_DATA1_1_BID(5 downto 0) <= M_AXI_HP1_FPD_bid(5 downto 0);
  DPU0_M_AXI_DATA1_1_BREADY <= DPU0_M_AXI_DATA1_bready;
  DPU0_M_AXI_DATA1_1_BRESP(1 downto 0) <= M_AXI_HP1_FPD_bresp(1 downto 0);
  DPU0_M_AXI_DATA1_1_BVALID <= M_AXI_HP1_FPD_bvalid;
  DPU0_M_AXI_DATA1_1_RDATA(63 downto 0) <= M_AXI_HP1_FPD_rdata(63 downto 0);
  DPU0_M_AXI_DATA1_1_RID(5 downto 0) <= M_AXI_HP1_FPD_rid(5 downto 0);
  DPU0_M_AXI_DATA1_1_RLAST <= M_AXI_HP1_FPD_rlast;
  DPU0_M_AXI_DATA1_1_RREADY <= DPU0_M_AXI_DATA1_rready;
  DPU0_M_AXI_DATA1_1_RRESP(1 downto 0) <= M_AXI_HP1_FPD_rresp(1 downto 0);
  DPU0_M_AXI_DATA1_1_RVALID <= M_AXI_HP1_FPD_rvalid;
  DPU0_M_AXI_DATA1_1_WDATA(63 downto 0) <= DPU0_M_AXI_DATA1_wdata(63 downto 0);
  DPU0_M_AXI_DATA1_1_WID(5 downto 0) <= DPU0_M_AXI_DATA1_wid(5 downto 0);
  DPU0_M_AXI_DATA1_1_WLAST <= DPU0_M_AXI_DATA1_wlast;
  DPU0_M_AXI_DATA1_1_WREADY <= M_AXI_HP1_FPD_wready;
  DPU0_M_AXI_DATA1_1_WSTRB(7 downto 0) <= DPU0_M_AXI_DATA1_wstrb(7 downto 0);
  DPU0_M_AXI_DATA1_1_WVALID <= DPU0_M_AXI_DATA1_wvalid;
  DPU0_M_AXI_DATA1_arready <= DPU0_M_AXI_DATA1_1_ARREADY;
  DPU0_M_AXI_DATA1_awready <= DPU0_M_AXI_DATA1_1_AWREADY;
  DPU0_M_AXI_DATA1_bid(5 downto 0) <= DPU0_M_AXI_DATA1_1_BID(5 downto 0);
  DPU0_M_AXI_DATA1_bresp(1 downto 0) <= DPU0_M_AXI_DATA1_1_BRESP(1 downto 0);
  DPU0_M_AXI_DATA1_bvalid <= DPU0_M_AXI_DATA1_1_BVALID;
  DPU0_M_AXI_DATA1_rdata(63 downto 0) <= DPU0_M_AXI_DATA1_1_RDATA(63 downto 0);
  DPU0_M_AXI_DATA1_rid(5 downto 0) <= DPU0_M_AXI_DATA1_1_RID(5 downto 0);
  DPU0_M_AXI_DATA1_rlast <= DPU0_M_AXI_DATA1_1_RLAST;
  DPU0_M_AXI_DATA1_rresp(1 downto 0) <= DPU0_M_AXI_DATA1_1_RRESP(1 downto 0);
  DPU0_M_AXI_DATA1_rvalid <= DPU0_M_AXI_DATA1_1_RVALID;
  DPU0_M_AXI_DATA1_wready <= DPU0_M_AXI_DATA1_1_WREADY;
  DPU0_M_AXI_INSTR_1_ARADDR(39 downto 0) <= DPU0_M_AXI_INSTR_araddr(39 downto 0);
  DPU0_M_AXI_INSTR_1_ARBURST(1 downto 0) <= DPU0_M_AXI_INSTR_arburst(1 downto 0);
  DPU0_M_AXI_INSTR_1_ARCACHE(3 downto 0) <= DPU0_M_AXI_INSTR_arcache(3 downto 0);
  DPU0_M_AXI_INSTR_1_ARID(1 downto 0) <= DPU0_M_AXI_INSTR_arid(1 downto 0);
  DPU0_M_AXI_INSTR_1_ARLEN(3 downto 0) <= DPU0_M_AXI_INSTR_arlen(3 downto 0);
  DPU0_M_AXI_INSTR_1_ARLOCK(1 downto 0) <= DPU0_M_AXI_INSTR_arlock(1 downto 0);
  DPU0_M_AXI_INSTR_1_ARPROT(2 downto 0) <= DPU0_M_AXI_INSTR_arprot(2 downto 0);
  DPU0_M_AXI_INSTR_1_ARQOS(3 downto 0) <= DPU0_M_AXI_INSTR_arqos(3 downto 0);
  DPU0_M_AXI_INSTR_1_ARSIZE(2 downto 0) <= DPU0_M_AXI_INSTR_arsize(2 downto 0);
  DPU0_M_AXI_INSTR_1_ARVALID <= DPU0_M_AXI_INSTR_arvalid;
  DPU0_M_AXI_INSTR_1_AWADDR(39 downto 0) <= DPU0_M_AXI_INSTR_awaddr(39 downto 0);
  DPU0_M_AXI_INSTR_1_AWBURST(1 downto 0) <= DPU0_M_AXI_INSTR_awburst(1 downto 0);
  DPU0_M_AXI_INSTR_1_AWCACHE(3 downto 0) <= DPU0_M_AXI_INSTR_awcache(3 downto 0);
  DPU0_M_AXI_INSTR_1_AWID(1 downto 0) <= DPU0_M_AXI_INSTR_awid(1 downto 0);
  DPU0_M_AXI_INSTR_1_AWLEN(3 downto 0) <= DPU0_M_AXI_INSTR_awlen(3 downto 0);
  DPU0_M_AXI_INSTR_1_AWLOCK(1 downto 0) <= DPU0_M_AXI_INSTR_awlock(1 downto 0);
  DPU0_M_AXI_INSTR_1_AWPROT(2 downto 0) <= DPU0_M_AXI_INSTR_awprot(2 downto 0);
  DPU0_M_AXI_INSTR_1_AWQOS(3 downto 0) <= DPU0_M_AXI_INSTR_awqos(3 downto 0);
  DPU0_M_AXI_INSTR_1_AWSIZE(2 downto 0) <= DPU0_M_AXI_INSTR_awsize(2 downto 0);
  DPU0_M_AXI_INSTR_1_AWVALID <= DPU0_M_AXI_INSTR_awvalid;
  DPU0_M_AXI_INSTR_1_BREADY <= DPU0_M_AXI_INSTR_bready;
  DPU0_M_AXI_INSTR_1_RREADY <= DPU0_M_AXI_INSTR_rready;
  DPU0_M_AXI_INSTR_1_WDATA(31 downto 0) <= DPU0_M_AXI_INSTR_wdata(31 downto 0);
  DPU0_M_AXI_INSTR_1_WLAST <= DPU0_M_AXI_INSTR_wlast;
  DPU0_M_AXI_INSTR_1_WSTRB(3 downto 0) <= DPU0_M_AXI_INSTR_wstrb(3 downto 0);
  DPU0_M_AXI_INSTR_1_WVALID <= DPU0_M_AXI_INSTR_wvalid;
  DPU0_M_AXI_INSTR_arready <= DPU0_M_AXI_INSTR_1_ARREADY;
  DPU0_M_AXI_INSTR_awready <= DPU0_M_AXI_INSTR_1_AWREADY;
  DPU0_M_AXI_INSTR_bid(1 downto 0) <= DPU0_M_AXI_INSTR_1_BID(1 downto 0);
  DPU0_M_AXI_INSTR_bresp(1 downto 0) <= DPU0_M_AXI_INSTR_1_BRESP(1 downto 0);
  DPU0_M_AXI_INSTR_bvalid <= DPU0_M_AXI_INSTR_1_BVALID;
  DPU0_M_AXI_INSTR_rdata(31 downto 0) <= DPU0_M_AXI_INSTR_1_RDATA(31 downto 0);
  DPU0_M_AXI_INSTR_rid(1 downto 0) <= DPU0_M_AXI_INSTR_1_RID(1 downto 0);
  DPU0_M_AXI_INSTR_rlast <= DPU0_M_AXI_INSTR_1_RLAST;
  DPU0_M_AXI_INSTR_rresp(1 downto 0) <= DPU0_M_AXI_INSTR_1_RRESP(1 downto 0);
  DPU0_M_AXI_INSTR_rvalid <= DPU0_M_AXI_INSTR_1_RVALID;
  DPU0_M_AXI_INSTR_wready <= DPU0_M_AXI_INSTR_1_WREADY;
  GHP_CLK_I_1 <= GHP_CLK_I;
  GHP_CLK_O <= GHP_CLK_I_1;
  GHP_RSTn_1 <= GHP_RSTn;
  M_AXI_HP0_FPD_araddr(39 downto 0) <= DPU0_M_AXI_DATA0_1_ARADDR(39 downto 0);
  M_AXI_HP0_FPD_arburst(1 downto 0) <= DPU0_M_AXI_DATA0_1_ARBURST(1 downto 0);
  M_AXI_HP0_FPD_arcache(3 downto 0) <= DPU0_M_AXI_DATA0_1_ARCACHE(3 downto 0);
  M_AXI_HP0_FPD_arid(1 downto 0) <= DPU0_M_AXI_DATA0_1_ARID(1 downto 0);
  M_AXI_HP0_FPD_arlen(3 downto 0) <= DPU0_M_AXI_DATA0_1_ARLEN(3 downto 0);
  M_AXI_HP0_FPD_arlock(1 downto 0) <= DPU0_M_AXI_DATA0_1_ARLOCK(1 downto 0);
  M_AXI_HP0_FPD_arprot(2 downto 0) <= DPU0_M_AXI_DATA0_1_ARPROT(2 downto 0);
  M_AXI_HP0_FPD_arqos(3 downto 0) <= DPU0_M_AXI_DATA0_1_ARQOS(3 downto 0);
  M_AXI_HP0_FPD_arsize(2 downto 0) <= DPU0_M_AXI_DATA0_1_ARSIZE(2 downto 0);
  M_AXI_HP0_FPD_arvalid <= DPU0_M_AXI_DATA0_1_ARVALID;
  M_AXI_HP0_FPD_awaddr(39 downto 0) <= DPU0_M_AXI_DATA0_1_AWADDR(39 downto 0);
  M_AXI_HP0_FPD_awburst(1 downto 0) <= DPU0_M_AXI_DATA0_1_AWBURST(1 downto 0);
  M_AXI_HP0_FPD_awcache(3 downto 0) <= DPU0_M_AXI_DATA0_1_AWCACHE(3 downto 0);
  M_AXI_HP0_FPD_awid(1 downto 0) <= DPU0_M_AXI_DATA0_1_AWID(1 downto 0);
  M_AXI_HP0_FPD_awlen(3 downto 0) <= DPU0_M_AXI_DATA0_1_AWLEN(3 downto 0);
  M_AXI_HP0_FPD_awlock(1 downto 0) <= DPU0_M_AXI_DATA0_1_AWLOCK(1 downto 0);
  M_AXI_HP0_FPD_awprot(2 downto 0) <= DPU0_M_AXI_DATA0_1_AWPROT(2 downto 0);
  M_AXI_HP0_FPD_awqos(3 downto 0) <= DPU0_M_AXI_DATA0_1_AWQOS(3 downto 0);
  M_AXI_HP0_FPD_awsize(2 downto 0) <= DPU0_M_AXI_DATA0_1_AWSIZE(2 downto 0);
  M_AXI_HP0_FPD_awvalid <= DPU0_M_AXI_DATA0_1_AWVALID;
  M_AXI_HP0_FPD_bready <= DPU0_M_AXI_DATA0_1_BREADY;
  M_AXI_HP0_FPD_rready <= DPU0_M_AXI_DATA0_1_RREADY;
  M_AXI_HP0_FPD_wdata(63 downto 0) <= DPU0_M_AXI_DATA0_1_WDATA(63 downto 0);
  M_AXI_HP0_FPD_wid(5 downto 0) <= DPU0_M_AXI_DATA0_1_WID(5 downto 0);
  M_AXI_HP0_FPD_wlast <= DPU0_M_AXI_DATA0_1_WLAST;
  M_AXI_HP0_FPD_wstrb(7 downto 0) <= DPU0_M_AXI_DATA0_1_WSTRB(7 downto 0);
  M_AXI_HP0_FPD_wvalid <= DPU0_M_AXI_DATA0_1_WVALID;
  M_AXI_HP1_FPD_araddr(39 downto 0) <= DPU0_M_AXI_DATA1_1_ARADDR(39 downto 0);
  M_AXI_HP1_FPD_arburst(1 downto 0) <= DPU0_M_AXI_DATA1_1_ARBURST(1 downto 0);
  M_AXI_HP1_FPD_arcache(3 downto 0) <= DPU0_M_AXI_DATA1_1_ARCACHE(3 downto 0);
  M_AXI_HP1_FPD_arid(1 downto 0) <= DPU0_M_AXI_DATA1_1_ARID(1 downto 0);
  M_AXI_HP1_FPD_arlen(3 downto 0) <= DPU0_M_AXI_DATA1_1_ARLEN(3 downto 0);
  M_AXI_HP1_FPD_arlock(1 downto 0) <= DPU0_M_AXI_DATA1_1_ARLOCK(1 downto 0);
  M_AXI_HP1_FPD_arprot(2 downto 0) <= DPU0_M_AXI_DATA1_1_ARPROT(2 downto 0);
  M_AXI_HP1_FPD_arqos(3 downto 0) <= DPU0_M_AXI_DATA1_1_ARQOS(3 downto 0);
  M_AXI_HP1_FPD_arsize(2 downto 0) <= DPU0_M_AXI_DATA1_1_ARSIZE(2 downto 0);
  M_AXI_HP1_FPD_arvalid <= DPU0_M_AXI_DATA1_1_ARVALID;
  M_AXI_HP1_FPD_awaddr(39 downto 0) <= DPU0_M_AXI_DATA1_1_AWADDR(39 downto 0);
  M_AXI_HP1_FPD_awburst(1 downto 0) <= DPU0_M_AXI_DATA1_1_AWBURST(1 downto 0);
  M_AXI_HP1_FPD_awcache(3 downto 0) <= DPU0_M_AXI_DATA1_1_AWCACHE(3 downto 0);
  M_AXI_HP1_FPD_awid(1 downto 0) <= DPU0_M_AXI_DATA1_1_AWID(1 downto 0);
  M_AXI_HP1_FPD_awlen(3 downto 0) <= DPU0_M_AXI_DATA1_1_AWLEN(3 downto 0);
  M_AXI_HP1_FPD_awlock(1 downto 0) <= DPU0_M_AXI_DATA1_1_AWLOCK(1 downto 0);
  M_AXI_HP1_FPD_awprot(2 downto 0) <= DPU0_M_AXI_DATA1_1_AWPROT(2 downto 0);
  M_AXI_HP1_FPD_awqos(3 downto 0) <= DPU0_M_AXI_DATA1_1_AWQOS(3 downto 0);
  M_AXI_HP1_FPD_awsize(2 downto 0) <= DPU0_M_AXI_DATA1_1_AWSIZE(2 downto 0);
  M_AXI_HP1_FPD_awvalid <= DPU0_M_AXI_DATA1_1_AWVALID;
  M_AXI_HP1_FPD_bready <= DPU0_M_AXI_DATA1_1_BREADY;
  M_AXI_HP1_FPD_rready <= DPU0_M_AXI_DATA1_1_RREADY;
  M_AXI_HP1_FPD_wdata(63 downto 0) <= DPU0_M_AXI_DATA1_1_WDATA(63 downto 0);
  M_AXI_HP1_FPD_wid(5 downto 0) <= DPU0_M_AXI_DATA1_1_WID(5 downto 0);
  M_AXI_HP1_FPD_wlast <= DPU0_M_AXI_DATA1_1_WLAST;
  M_AXI_HP1_FPD_wstrb(7 downto 0) <= DPU0_M_AXI_DATA1_1_WSTRB(7 downto 0);
  M_AXI_HP1_FPD_wvalid <= DPU0_M_AXI_DATA1_1_WVALID;
  M_AXI_LPD_araddr(39 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARADDR(39 downto 0);
  M_AXI_LPD_arburst(1 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARBURST(1 downto 0);
  M_AXI_LPD_arcache(3 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARCACHE(3 downto 0);
  M_AXI_LPD_arlen(3 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARLEN(3 downto 0);
  M_AXI_LPD_arlock(1 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARLOCK(1 downto 0);
  M_AXI_LPD_arprot(2 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARPROT(2 downto 0);
  M_AXI_LPD_arqos(3 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARQOS(3 downto 0);
  M_AXI_LPD_arsize(2 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_ARSIZE(2 downto 0);
  M_AXI_LPD_arvalid <= dpu_intc_M_AXI_LPD_M00_AXI_ARVALID;
  M_AXI_LPD_awaddr(39 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWADDR(39 downto 0);
  M_AXI_LPD_awburst(1 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWBURST(1 downto 0);
  M_AXI_LPD_awcache(3 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWCACHE(3 downto 0);
  M_AXI_LPD_awlen(3 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWLEN(3 downto 0);
  M_AXI_LPD_awlock(1 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWLOCK(1 downto 0);
  M_AXI_LPD_awprot(2 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWPROT(2 downto 0);
  M_AXI_LPD_awqos(3 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWQOS(3 downto 0);
  M_AXI_LPD_awsize(2 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_AWSIZE(2 downto 0);
  M_AXI_LPD_awvalid <= dpu_intc_M_AXI_LPD_M00_AXI_AWVALID;
  M_AXI_LPD_bready <= dpu_intc_M_AXI_LPD_M00_AXI_BREADY;
  M_AXI_LPD_rready <= dpu_intc_M_AXI_LPD_M00_AXI_RREADY;
  M_AXI_LPD_wdata(63 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_WDATA(63 downto 0);
  M_AXI_LPD_wlast <= dpu_intc_M_AXI_LPD_M00_AXI_WLAST;
  M_AXI_LPD_wstrb(7 downto 0) <= dpu_intc_M_AXI_LPD_M00_AXI_WSTRB(7 downto 0);
  M_AXI_LPD_wvalid <= dpu_intc_M_AXI_LPD_M00_AXI_WVALID;
  RSTn_INTC_1 <= RSTn_INTC;
  RSTn_PERI_1 <= RSTn_PERI;
  dpu_intc_M_AXI_LPD_M00_AXI_ARREADY <= M_AXI_LPD_arready;
  dpu_intc_M_AXI_LPD_M00_AXI_AWREADY <= M_AXI_LPD_awready;
  dpu_intc_M_AXI_LPD_M00_AXI_BRESP(1 downto 0) <= M_AXI_LPD_bresp(1 downto 0);
  dpu_intc_M_AXI_LPD_M00_AXI_BVALID <= M_AXI_LPD_bvalid;
  dpu_intc_M_AXI_LPD_M00_AXI_RDATA(63 downto 0) <= M_AXI_LPD_rdata(63 downto 0);
  dpu_intc_M_AXI_LPD_M00_AXI_RLAST <= M_AXI_LPD_rlast;
  dpu_intc_M_AXI_LPD_M00_AXI_RRESP(1 downto 0) <= M_AXI_LPD_rresp(1 downto 0);
  dpu_intc_M_AXI_LPD_M00_AXI_RVALID <= M_AXI_LPD_rvalid;
  dpu_intc_M_AXI_LPD_M00_AXI_WREADY <= M_AXI_LPD_wready;
dpu_intc_M_AXI_LPD: entity work.zynq_dpu_system_axi_interconnect_0_0
     port map (
      ACLK => CLK_1,
      ARESETN => RSTn_INTC_1,
      M00_ACLK => GHP_CLK_I_1,
      M00_ARESETN => GHP_RSTn_1,
      M00_AXI_araddr(39 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARADDR(39 downto 0),
      M00_AXI_arburst(1 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => dpu_intc_M_AXI_LPD_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => dpu_intc_M_AXI_LPD_M00_AXI_ARVALID,
      M00_AXI_awaddr(39 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWADDR(39 downto 0),
      M00_AXI_awburst(1 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => dpu_intc_M_AXI_LPD_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => dpu_intc_M_AXI_LPD_M00_AXI_AWVALID,
      M00_AXI_bready => dpu_intc_M_AXI_LPD_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => dpu_intc_M_AXI_LPD_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rlast => dpu_intc_M_AXI_LPD_M00_AXI_RLAST,
      M00_AXI_rready => dpu_intc_M_AXI_LPD_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => dpu_intc_M_AXI_LPD_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wlast => dpu_intc_M_AXI_LPD_M00_AXI_WLAST,
      M00_AXI_wready => dpu_intc_M_AXI_LPD_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => dpu_intc_M_AXI_LPD_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => dpu_intc_M_AXI_LPD_M00_AXI_WVALID,
      S00_ACLK => CLK_1,
      S00_ARESETN => RSTn_PERI_1,
      S00_AXI_araddr(39 downto 0) => DPU0_M_AXI_INSTR_1_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => DPU0_M_AXI_INSTR_1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => DPU0_M_AXI_INSTR_1_ARCACHE(3 downto 0),
      S00_AXI_arid(1 downto 0) => DPU0_M_AXI_INSTR_1_ARID(1 downto 0),
      S00_AXI_arlen(3 downto 0) => DPU0_M_AXI_INSTR_1_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => DPU0_M_AXI_INSTR_1_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => DPU0_M_AXI_INSTR_1_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => DPU0_M_AXI_INSTR_1_ARQOS(3 downto 0),
      S00_AXI_arready => DPU0_M_AXI_INSTR_1_ARREADY,
      S00_AXI_arsize(2 downto 0) => DPU0_M_AXI_INSTR_1_ARSIZE(2 downto 0),
      S00_AXI_arvalid => DPU0_M_AXI_INSTR_1_ARVALID,
      S00_AXI_awaddr(39 downto 0) => DPU0_M_AXI_INSTR_1_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => DPU0_M_AXI_INSTR_1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => DPU0_M_AXI_INSTR_1_AWCACHE(3 downto 0),
      S00_AXI_awid(1 downto 0) => DPU0_M_AXI_INSTR_1_AWID(1 downto 0),
      S00_AXI_awlen(3 downto 0) => DPU0_M_AXI_INSTR_1_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => DPU0_M_AXI_INSTR_1_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => DPU0_M_AXI_INSTR_1_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => DPU0_M_AXI_INSTR_1_AWQOS(3 downto 0),
      S00_AXI_awready => DPU0_M_AXI_INSTR_1_AWREADY,
      S00_AXI_awsize(2 downto 0) => DPU0_M_AXI_INSTR_1_AWSIZE(2 downto 0),
      S00_AXI_awvalid => DPU0_M_AXI_INSTR_1_AWVALID,
      S00_AXI_bid(1 downto 0) => DPU0_M_AXI_INSTR_1_BID(1 downto 0),
      S00_AXI_bready => DPU0_M_AXI_INSTR_1_BREADY,
      S00_AXI_bresp(1 downto 0) => DPU0_M_AXI_INSTR_1_BRESP(1 downto 0),
      S00_AXI_bvalid => DPU0_M_AXI_INSTR_1_BVALID,
      S00_AXI_rdata(31 downto 0) => DPU0_M_AXI_INSTR_1_RDATA(31 downto 0),
      S00_AXI_rid(1 downto 0) => DPU0_M_AXI_INSTR_1_RID(1 downto 0),
      S00_AXI_rlast => DPU0_M_AXI_INSTR_1_RLAST,
      S00_AXI_rready => DPU0_M_AXI_INSTR_1_RREADY,
      S00_AXI_rresp(1 downto 0) => DPU0_M_AXI_INSTR_1_RRESP(1 downto 0),
      S00_AXI_rvalid => DPU0_M_AXI_INSTR_1_RVALID,
      S00_AXI_wdata(31 downto 0) => DPU0_M_AXI_INSTR_1_WDATA(31 downto 0),
      S00_AXI_wlast => DPU0_M_AXI_INSTR_1_WLAST,
      S00_AXI_wready => DPU0_M_AXI_INSTR_1_WREADY,
      S00_AXI_wstrb(3 downto 0) => DPU0_M_AXI_INSTR_1_WSTRB(3 downto 0),
      S00_AXI_wvalid => DPU0_M_AXI_INSTR_1_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_dpu_system is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    USB_PULLUP : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute core_generation_info : string;
  attribute core_generation_info of zynq_dpu_system : entity is "zynq_dpu_system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zynq_dpu_system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=12,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_clkrst_cnt=1,da_ps7_cnt=1,synth_mode=Global}";
  attribute hw_handoff : string;
  attribute hw_handoff of zynq_dpu_system : entity is "zynq_dpu_system.hwdef";
end zynq_dpu_system;

architecture STRUCTURE of zynq_dpu_system is
  component zynq_dpu_system_processing_system7_0_0 is
  port (
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_ARREADY : out STD_LOGIC;
    S_AXI_HP1_AWREADY : out STD_LOGIC;
    S_AXI_HP1_BVALID : out STD_LOGIC;
    S_AXI_HP1_RLAST : out STD_LOGIC;
    S_AXI_HP1_RVALID : out STD_LOGIC;
    S_AXI_HP1_WREADY : out STD_LOGIC;
    S_AXI_HP1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP1_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_ACLK : in STD_LOGIC;
    S_AXI_HP1_ARVALID : in STD_LOGIC;
    S_AXI_HP1_AWVALID : in STD_LOGIC;
    S_AXI_HP1_BREADY : in STD_LOGIC;
    S_AXI_HP1_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_RREADY : in STD_LOGIC;
    S_AXI_HP1_WLAST : in STD_LOGIC;
    S_AXI_HP1_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_WVALID : in STD_LOGIC;
    S_AXI_HP1_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP1_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP2_ARREADY : out STD_LOGIC;
    S_AXI_HP2_AWREADY : out STD_LOGIC;
    S_AXI_HP2_BVALID : out STD_LOGIC;
    S_AXI_HP2_RLAST : out STD_LOGIC;
    S_AXI_HP2_RVALID : out STD_LOGIC;
    S_AXI_HP2_WREADY : out STD_LOGIC;
    S_AXI_HP2_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP2_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP2_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP2_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_ACLK : in STD_LOGIC;
    S_AXI_HP2_ARVALID : in STD_LOGIC;
    S_AXI_HP2_AWVALID : in STD_LOGIC;
    S_AXI_HP2_BREADY : in STD_LOGIC;
    S_AXI_HP2_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP2_RREADY : in STD_LOGIC;
    S_AXI_HP2_WLAST : in STD_LOGIC;
    S_AXI_HP2_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP2_WVALID : in STD_LOGIC;
    S_AXI_HP2_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP2_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP2_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP2_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 0 to 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component zynq_dpu_system_processing_system7_0_0;
  component zynq_dpu_system_DPUCZDX8G_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    dpu_2x_clk : in STD_LOGIC;
    dpu_2x_resetn : in STD_LOGIC;
    m_axi_dpu_aclk : in STD_LOGIC;
    m_axi_dpu_aresetn : in STD_LOGIC;
    dpu_interrupt : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    dpu0_m_axi_instr_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dpu0_m_axi_instr_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_instr_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_instr_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_instr_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_instr_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_instr_awvalid : out STD_LOGIC;
    dpu0_m_axi_instr_awready : in STD_LOGIC;
    dpu0_m_axi_instr_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_instr_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpu0_m_axi_instr_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_instr_wlast : out STD_LOGIC;
    dpu0_m_axi_instr_wvalid : out STD_LOGIC;
    dpu0_m_axi_instr_wready : in STD_LOGIC;
    dpu0_m_axi_instr_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_instr_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_bvalid : in STD_LOGIC;
    dpu0_m_axi_instr_bready : out STD_LOGIC;
    dpu0_m_axi_instr_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dpu0_m_axi_instr_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_instr_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_instr_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_instr_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_instr_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_instr_arvalid : out STD_LOGIC;
    dpu0_m_axi_instr_arready : in STD_LOGIC;
    dpu0_m_axi_instr_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_instr_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpu0_m_axi_instr_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_instr_rlast : in STD_LOGIC;
    dpu0_m_axi_instr_rvalid : in STD_LOGIC;
    dpu0_m_axi_instr_rready : out STD_LOGIC;
    dpu0_m_axi_data0_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dpu0_m_axi_data0_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data0_awvalid : out STD_LOGIC;
    dpu0_m_axi_data0_awready : in STD_LOGIC;
    dpu0_m_axi_data0_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_data0_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dpu0_m_axi_data0_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dpu0_m_axi_data0_wlast : out STD_LOGIC;
    dpu0_m_axi_data0_wvalid : out STD_LOGIC;
    dpu0_m_axi_data0_wready : in STD_LOGIC;
    dpu0_m_axi_data0_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_data0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_bvalid : in STD_LOGIC;
    dpu0_m_axi_data0_bready : out STD_LOGIC;
    dpu0_m_axi_data0_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dpu0_m_axi_data0_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data0_arvalid : out STD_LOGIC;
    dpu0_m_axi_data0_arready : in STD_LOGIC;
    dpu0_m_axi_data0_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_data0_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dpu0_m_axi_data0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data0_rlast : in STD_LOGIC;
    dpu0_m_axi_data0_rvalid : in STD_LOGIC;
    dpu0_m_axi_data0_rready : out STD_LOGIC;
    dpu0_m_axi_data1_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dpu0_m_axi_data1_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data1_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data1_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data1_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data1_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data1_awvalid : out STD_LOGIC;
    dpu0_m_axi_data1_awready : in STD_LOGIC;
    dpu0_m_axi_data1_wid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_data1_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dpu0_m_axi_data1_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dpu0_m_axi_data1_wlast : out STD_LOGIC;
    dpu0_m_axi_data1_wvalid : out STD_LOGIC;
    dpu0_m_axi_data1_wready : in STD_LOGIC;
    dpu0_m_axi_data1_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_data1_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_bvalid : in STD_LOGIC;
    dpu0_m_axi_data1_bready : out STD_LOGIC;
    dpu0_m_axi_data1_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    dpu0_m_axi_data1_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data1_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data1_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data1_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dpu0_m_axi_data1_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dpu0_m_axi_data1_arvalid : out STD_LOGIC;
    dpu0_m_axi_data1_arready : in STD_LOGIC;
    dpu0_m_axi_data1_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpu0_m_axi_data1_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dpu0_m_axi_data1_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dpu0_m_axi_data1_rlast : in STD_LOGIC;
    dpu0_m_axi_data1_rvalid : in STD_LOGIC;
    dpu0_m_axi_data1_rready : out STD_LOGIC
  );
  end component zynq_dpu_system_DPUCZDX8G_0_0;
  component zynq_dpu_system_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zynq_dpu_system_xlconstant_0_0;
  signal CLK_1 : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_BREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_BVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_RLAST : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_RREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_RVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_WID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_WLAST : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_WREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA0_WVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_BREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_BVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_RLAST : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_RREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_RVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_WID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_WLAST : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_WREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_DATA1_WVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_BREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_BVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_RLAST : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_RREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_RVALID : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_WLAST : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_WREADY : STD_LOGIC;
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DPUCZDX8G_0_DPU0_M_AXI_INSTR_WVALID : STD_LOGIC;
  signal DPUCZDX8G_0_dpu_interrupt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RSTn_1 : STD_LOGIC;
  signal hier_dpu_clk_rst_DPU_CLK : STD_LOGIC;
  signal hier_dpu_clk_rst_DSP_CLK : STD_LOGIC;
  signal hier_dpu_clk_rst_RSTn_DSP : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_dpu_clk_rst_RSTn_INTC : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_dpu_clk_rst_RSTn_PER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_dpu_clk_rst_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_dpu_gph_GHP_CLK_O : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP0_FPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_ARREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP0_FPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_ARVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP0_FPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_AWREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP0_FPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_AWVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP0_FPD_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_BREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP0_FPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_BVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP0_FPD_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_RLAST : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP0_FPD_RREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP0_FPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_RVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP0_FPD_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_WID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_WLAST : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP0_FPD_WREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP0_FPD_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_dpu_gph_M_AXI_HP0_FPD_WVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP1_FPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_ARREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP1_FPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_ARVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP1_FPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_AWREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP1_FPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_AWVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP1_FPD_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_BREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP1_FPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_BVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP1_FPD_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_RLAST : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP1_FPD_RREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP1_FPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_RVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP1_FPD_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_WID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_WLAST : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP1_FPD_WREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_HP1_FPD_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_dpu_gph_M_AXI_HP1_FPD_WVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_LPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_ARREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_LPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_ARVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_LPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_AWREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_LPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_AWVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_LPD_BREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_LPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_BVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_LPD_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_RLAST : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_LPD_RREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_LPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_RVALID : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_LPD_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_WLAST : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_LPD_WREADY : STD_LOGIC;
  signal hier_dpu_gph_M_AXI_LPD_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hier_dpu_gph_M_AXI_LPD_WVALID : STD_LOGIC;
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DPUCZDX8G_0_dpu0_m_axi_instr_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_hier_dpu_clk_rst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP1_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP2_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP2_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP2_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP2_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP2_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP2_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute x_interface_info of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute x_interface_info of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute x_interface_info of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute x_interface_info of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute x_interface_info of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute x_interface_info of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute x_interface_info of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute x_interface_info of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute x_interface_info of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute x_interface_info of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute x_interface_info of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute x_interface_info of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute x_interface_info of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute x_interface_info of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute x_interface_parameter of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute x_interface_info of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute x_interface_info of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute x_interface_info of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute x_interface_info of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute x_interface_info of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute x_interface_info of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
  USB_PULLUP(0) <= xlconstant_0_dout(0);
DPUCZDX8G_0: component zynq_dpu_system_DPUCZDX8G_0_0
     port map (
      dpu0_m_axi_data0_araddr(39 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARADDR(39 downto 0),
      dpu0_m_axi_data0_arburst(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARBURST(1 downto 0),
      dpu0_m_axi_data0_arcache(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARCACHE(3 downto 0),
      dpu0_m_axi_data0_arid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARID(1 downto 0),
      dpu0_m_axi_data0_arlen(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARLEN(3 downto 0),
      dpu0_m_axi_data0_arlock(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARLOCK(1 downto 0),
      dpu0_m_axi_data0_arprot(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARPROT(2 downto 0),
      dpu0_m_axi_data0_arqos(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARQOS(3 downto 0),
      dpu0_m_axi_data0_arready => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARREADY,
      dpu0_m_axi_data0_arsize(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARSIZE(2 downto 0),
      dpu0_m_axi_data0_arvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARVALID,
      dpu0_m_axi_data0_awaddr(39 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWADDR(39 downto 0),
      dpu0_m_axi_data0_awburst(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWBURST(1 downto 0),
      dpu0_m_axi_data0_awcache(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWCACHE(3 downto 0),
      dpu0_m_axi_data0_awid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWID(1 downto 0),
      dpu0_m_axi_data0_awlen(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWLEN(3 downto 0),
      dpu0_m_axi_data0_awlock(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWLOCK(1 downto 0),
      dpu0_m_axi_data0_awprot(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWPROT(2 downto 0),
      dpu0_m_axi_data0_awqos(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWQOS(3 downto 0),
      dpu0_m_axi_data0_awready => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWREADY,
      dpu0_m_axi_data0_awsize(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWSIZE(2 downto 0),
      dpu0_m_axi_data0_awvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWVALID,
      dpu0_m_axi_data0_bid(5 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_BID(5 downto 0),
      dpu0_m_axi_data0_bready => DPUCZDX8G_0_DPU0_M_AXI_DATA0_BREADY,
      dpu0_m_axi_data0_bresp(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_BRESP(1 downto 0),
      dpu0_m_axi_data0_bvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA0_BVALID,
      dpu0_m_axi_data0_rdata(63 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_RDATA(63 downto 0),
      dpu0_m_axi_data0_rid(5 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_RID(5 downto 0),
      dpu0_m_axi_data0_rlast => DPUCZDX8G_0_DPU0_M_AXI_DATA0_RLAST,
      dpu0_m_axi_data0_rready => DPUCZDX8G_0_DPU0_M_AXI_DATA0_RREADY,
      dpu0_m_axi_data0_rresp(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_RRESP(1 downto 0),
      dpu0_m_axi_data0_rvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA0_RVALID,
      dpu0_m_axi_data0_wdata(63 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_WDATA(63 downto 0),
      dpu0_m_axi_data0_wid(5 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_WID(5 downto 0),
      dpu0_m_axi_data0_wlast => DPUCZDX8G_0_DPU0_M_AXI_DATA0_WLAST,
      dpu0_m_axi_data0_wready => DPUCZDX8G_0_DPU0_M_AXI_DATA0_WREADY,
      dpu0_m_axi_data0_wstrb(7 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_WSTRB(7 downto 0),
      dpu0_m_axi_data0_wvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA0_WVALID,
      dpu0_m_axi_data1_araddr(39 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARADDR(39 downto 0),
      dpu0_m_axi_data1_arburst(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARBURST(1 downto 0),
      dpu0_m_axi_data1_arcache(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARCACHE(3 downto 0),
      dpu0_m_axi_data1_arid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARID(1 downto 0),
      dpu0_m_axi_data1_arlen(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARLEN(3 downto 0),
      dpu0_m_axi_data1_arlock(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARLOCK(1 downto 0),
      dpu0_m_axi_data1_arprot(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARPROT(2 downto 0),
      dpu0_m_axi_data1_arqos(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARQOS(3 downto 0),
      dpu0_m_axi_data1_arready => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARREADY,
      dpu0_m_axi_data1_arsize(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARSIZE(2 downto 0),
      dpu0_m_axi_data1_arvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARVALID,
      dpu0_m_axi_data1_awaddr(39 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWADDR(39 downto 0),
      dpu0_m_axi_data1_awburst(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWBURST(1 downto 0),
      dpu0_m_axi_data1_awcache(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWCACHE(3 downto 0),
      dpu0_m_axi_data1_awid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWID(1 downto 0),
      dpu0_m_axi_data1_awlen(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWLEN(3 downto 0),
      dpu0_m_axi_data1_awlock(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWLOCK(1 downto 0),
      dpu0_m_axi_data1_awprot(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWPROT(2 downto 0),
      dpu0_m_axi_data1_awqos(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWQOS(3 downto 0),
      dpu0_m_axi_data1_awready => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWREADY,
      dpu0_m_axi_data1_awsize(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWSIZE(2 downto 0),
      dpu0_m_axi_data1_awvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWVALID,
      dpu0_m_axi_data1_bid(5 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_BID(5 downto 0),
      dpu0_m_axi_data1_bready => DPUCZDX8G_0_DPU0_M_AXI_DATA1_BREADY,
      dpu0_m_axi_data1_bresp(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_BRESP(1 downto 0),
      dpu0_m_axi_data1_bvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA1_BVALID,
      dpu0_m_axi_data1_rdata(63 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_RDATA(63 downto 0),
      dpu0_m_axi_data1_rid(5 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_RID(5 downto 0),
      dpu0_m_axi_data1_rlast => DPUCZDX8G_0_DPU0_M_AXI_DATA1_RLAST,
      dpu0_m_axi_data1_rready => DPUCZDX8G_0_DPU0_M_AXI_DATA1_RREADY,
      dpu0_m_axi_data1_rresp(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_RRESP(1 downto 0),
      dpu0_m_axi_data1_rvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA1_RVALID,
      dpu0_m_axi_data1_wdata(63 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_WDATA(63 downto 0),
      dpu0_m_axi_data1_wid(5 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_WID(5 downto 0),
      dpu0_m_axi_data1_wlast => DPUCZDX8G_0_DPU0_M_AXI_DATA1_WLAST,
      dpu0_m_axi_data1_wready => DPUCZDX8G_0_DPU0_M_AXI_DATA1_WREADY,
      dpu0_m_axi_data1_wstrb(7 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_WSTRB(7 downto 0),
      dpu0_m_axi_data1_wvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA1_WVALID,
      dpu0_m_axi_instr_araddr(39 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARADDR(39 downto 0),
      dpu0_m_axi_instr_arburst(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARBURST(1 downto 0),
      dpu0_m_axi_instr_arcache(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARCACHE(3 downto 0),
      dpu0_m_axi_instr_arid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARID(1 downto 0),
      dpu0_m_axi_instr_arlen(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARLEN(3 downto 0),
      dpu0_m_axi_instr_arlock(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARLOCK(1 downto 0),
      dpu0_m_axi_instr_arprot(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARPROT(2 downto 0),
      dpu0_m_axi_instr_arqos(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARQOS(3 downto 0),
      dpu0_m_axi_instr_arready => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARREADY,
      dpu0_m_axi_instr_arsize(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARSIZE(2 downto 0),
      dpu0_m_axi_instr_arvalid => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARVALID,
      dpu0_m_axi_instr_awaddr(39 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWADDR(39 downto 0),
      dpu0_m_axi_instr_awburst(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWBURST(1 downto 0),
      dpu0_m_axi_instr_awcache(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWCACHE(3 downto 0),
      dpu0_m_axi_instr_awid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWID(1 downto 0),
      dpu0_m_axi_instr_awlen(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWLEN(3 downto 0),
      dpu0_m_axi_instr_awlock(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWLOCK(1 downto 0),
      dpu0_m_axi_instr_awprot(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWPROT(2 downto 0),
      dpu0_m_axi_instr_awqos(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWQOS(3 downto 0),
      dpu0_m_axi_instr_awready => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWREADY,
      dpu0_m_axi_instr_awsize(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWSIZE(2 downto 0),
      dpu0_m_axi_instr_awvalid => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWVALID,
      dpu0_m_axi_instr_bid(5 downto 2) => B"0000",
      dpu0_m_axi_instr_bid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_BID(1 downto 0),
      dpu0_m_axi_instr_bready => DPUCZDX8G_0_DPU0_M_AXI_INSTR_BREADY,
      dpu0_m_axi_instr_bresp(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_BRESP(1 downto 0),
      dpu0_m_axi_instr_bvalid => DPUCZDX8G_0_DPU0_M_AXI_INSTR_BVALID,
      dpu0_m_axi_instr_rdata(31 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_RDATA(31 downto 0),
      dpu0_m_axi_instr_rid(5 downto 2) => B"0000",
      dpu0_m_axi_instr_rid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_RID(1 downto 0),
      dpu0_m_axi_instr_rlast => DPUCZDX8G_0_DPU0_M_AXI_INSTR_RLAST,
      dpu0_m_axi_instr_rready => DPUCZDX8G_0_DPU0_M_AXI_INSTR_RREADY,
      dpu0_m_axi_instr_rresp(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_RRESP(1 downto 0),
      dpu0_m_axi_instr_rvalid => DPUCZDX8G_0_DPU0_M_AXI_INSTR_RVALID,
      dpu0_m_axi_instr_wdata(31 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_WDATA(31 downto 0),
      dpu0_m_axi_instr_wid(5 downto 0) => NLW_DPUCZDX8G_0_dpu0_m_axi_instr_wid_UNCONNECTED(5 downto 0),
      dpu0_m_axi_instr_wlast => DPUCZDX8G_0_DPU0_M_AXI_INSTR_WLAST,
      dpu0_m_axi_instr_wready => DPUCZDX8G_0_DPU0_M_AXI_INSTR_WREADY,
      dpu0_m_axi_instr_wstrb(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_WSTRB(3 downto 0),
      dpu0_m_axi_instr_wvalid => DPUCZDX8G_0_DPU0_M_AXI_INSTR_WVALID,
      dpu_2x_clk => hier_dpu_clk_rst_DSP_CLK,
      dpu_2x_resetn => hier_dpu_clk_rst_RSTn_DSP(0),
      dpu_interrupt(0) => DPUCZDX8G_0_dpu_interrupt(0),
      m_axi_dpu_aclk => hier_dpu_clk_rst_DPU_CLK,
      m_axi_dpu_aresetn => hier_dpu_clk_rst_RSTn_PER(0),
      s_axi_aclk => CLK_1,
      s_axi_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      s_axi_aresetn => hier_dpu_clk_rst_peripheral_aresetn(0),
      s_axi_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      s_axi_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      s_axi_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      s_axi_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      s_axi_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      s_axi_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      s_axi_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      s_axi_bready => processing_system7_0_M_AXI_GP0_BREADY,
      s_axi_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      s_axi_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      s_axi_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      s_axi_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      s_axi_rready => processing_system7_0_M_AXI_GP0_RREADY,
      s_axi_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      s_axi_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      s_axi_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      s_axi_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      s_axi_wready => processing_system7_0_M_AXI_GP0_WREADY,
      s_axi_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      s_axi_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
hier_dpu_clk_rst: entity work.hier_dpu_clk_rst_imp_1W4YNP5
     port map (
      CLK => CLK_1,
      DPU_CLK => hier_dpu_clk_rst_DPU_CLK,
      DSP_CLK => hier_dpu_clk_rst_DSP_CLK,
      LOCKED => NLW_hier_dpu_clk_rst_LOCKED_UNCONNECTED,
      RSTn => RSTn_1,
      RSTn_DSP(0) => hier_dpu_clk_rst_RSTn_DSP(0),
      RSTn_INTC(0) => hier_dpu_clk_rst_RSTn_INTC(0),
      RSTn_PER(0) => hier_dpu_clk_rst_RSTn_PER(0),
      peripheral_aresetn(0) => hier_dpu_clk_rst_peripheral_aresetn(0)
    );
hier_dpu_gph: entity work.hier_dpu_gph_imp_1HGXC9J
     port map (
      CLK => hier_dpu_clk_rst_DPU_CLK,
      DPU0_M_AXI_DATA0_araddr(39 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARADDR(39 downto 0),
      DPU0_M_AXI_DATA0_arburst(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARBURST(1 downto 0),
      DPU0_M_AXI_DATA0_arcache(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARCACHE(3 downto 0),
      DPU0_M_AXI_DATA0_arid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARID(1 downto 0),
      DPU0_M_AXI_DATA0_arlen(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARLEN(3 downto 0),
      DPU0_M_AXI_DATA0_arlock(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARLOCK(1 downto 0),
      DPU0_M_AXI_DATA0_arprot(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARPROT(2 downto 0),
      DPU0_M_AXI_DATA0_arqos(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARQOS(3 downto 0),
      DPU0_M_AXI_DATA0_arready => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARREADY,
      DPU0_M_AXI_DATA0_arsize(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARSIZE(2 downto 0),
      DPU0_M_AXI_DATA0_arvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA0_ARVALID,
      DPU0_M_AXI_DATA0_awaddr(39 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWADDR(39 downto 0),
      DPU0_M_AXI_DATA0_awburst(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWBURST(1 downto 0),
      DPU0_M_AXI_DATA0_awcache(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWCACHE(3 downto 0),
      DPU0_M_AXI_DATA0_awid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWID(1 downto 0),
      DPU0_M_AXI_DATA0_awlen(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWLEN(3 downto 0),
      DPU0_M_AXI_DATA0_awlock(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWLOCK(1 downto 0),
      DPU0_M_AXI_DATA0_awprot(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWPROT(2 downto 0),
      DPU0_M_AXI_DATA0_awqos(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWQOS(3 downto 0),
      DPU0_M_AXI_DATA0_awready => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWREADY,
      DPU0_M_AXI_DATA0_awsize(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWSIZE(2 downto 0),
      DPU0_M_AXI_DATA0_awvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA0_AWVALID,
      DPU0_M_AXI_DATA0_bid(5 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_BID(5 downto 0),
      DPU0_M_AXI_DATA0_bready => DPUCZDX8G_0_DPU0_M_AXI_DATA0_BREADY,
      DPU0_M_AXI_DATA0_bresp(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_BRESP(1 downto 0),
      DPU0_M_AXI_DATA0_bvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA0_BVALID,
      DPU0_M_AXI_DATA0_rdata(63 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_RDATA(63 downto 0),
      DPU0_M_AXI_DATA0_rid(5 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_RID(5 downto 0),
      DPU0_M_AXI_DATA0_rlast => DPUCZDX8G_0_DPU0_M_AXI_DATA0_RLAST,
      DPU0_M_AXI_DATA0_rready => DPUCZDX8G_0_DPU0_M_AXI_DATA0_RREADY,
      DPU0_M_AXI_DATA0_rresp(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_RRESP(1 downto 0),
      DPU0_M_AXI_DATA0_rvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA0_RVALID,
      DPU0_M_AXI_DATA0_wdata(63 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_WDATA(63 downto 0),
      DPU0_M_AXI_DATA0_wid(5 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_WID(5 downto 0),
      DPU0_M_AXI_DATA0_wlast => DPUCZDX8G_0_DPU0_M_AXI_DATA0_WLAST,
      DPU0_M_AXI_DATA0_wready => DPUCZDX8G_0_DPU0_M_AXI_DATA0_WREADY,
      DPU0_M_AXI_DATA0_wstrb(7 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA0_WSTRB(7 downto 0),
      DPU0_M_AXI_DATA0_wvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA0_WVALID,
      DPU0_M_AXI_DATA1_araddr(39 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARADDR(39 downto 0),
      DPU0_M_AXI_DATA1_arburst(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARBURST(1 downto 0),
      DPU0_M_AXI_DATA1_arcache(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARCACHE(3 downto 0),
      DPU0_M_AXI_DATA1_arid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARID(1 downto 0),
      DPU0_M_AXI_DATA1_arlen(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARLEN(3 downto 0),
      DPU0_M_AXI_DATA1_arlock(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARLOCK(1 downto 0),
      DPU0_M_AXI_DATA1_arprot(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARPROT(2 downto 0),
      DPU0_M_AXI_DATA1_arqos(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARQOS(3 downto 0),
      DPU0_M_AXI_DATA1_arready => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARREADY,
      DPU0_M_AXI_DATA1_arsize(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARSIZE(2 downto 0),
      DPU0_M_AXI_DATA1_arvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA1_ARVALID,
      DPU0_M_AXI_DATA1_awaddr(39 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWADDR(39 downto 0),
      DPU0_M_AXI_DATA1_awburst(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWBURST(1 downto 0),
      DPU0_M_AXI_DATA1_awcache(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWCACHE(3 downto 0),
      DPU0_M_AXI_DATA1_awid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWID(1 downto 0),
      DPU0_M_AXI_DATA1_awlen(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWLEN(3 downto 0),
      DPU0_M_AXI_DATA1_awlock(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWLOCK(1 downto 0),
      DPU0_M_AXI_DATA1_awprot(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWPROT(2 downto 0),
      DPU0_M_AXI_DATA1_awqos(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWQOS(3 downto 0),
      DPU0_M_AXI_DATA1_awready => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWREADY,
      DPU0_M_AXI_DATA1_awsize(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWSIZE(2 downto 0),
      DPU0_M_AXI_DATA1_awvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA1_AWVALID,
      DPU0_M_AXI_DATA1_bid(5 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_BID(5 downto 0),
      DPU0_M_AXI_DATA1_bready => DPUCZDX8G_0_DPU0_M_AXI_DATA1_BREADY,
      DPU0_M_AXI_DATA1_bresp(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_BRESP(1 downto 0),
      DPU0_M_AXI_DATA1_bvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA1_BVALID,
      DPU0_M_AXI_DATA1_rdata(63 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_RDATA(63 downto 0),
      DPU0_M_AXI_DATA1_rid(5 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_RID(5 downto 0),
      DPU0_M_AXI_DATA1_rlast => DPUCZDX8G_0_DPU0_M_AXI_DATA1_RLAST,
      DPU0_M_AXI_DATA1_rready => DPUCZDX8G_0_DPU0_M_AXI_DATA1_RREADY,
      DPU0_M_AXI_DATA1_rresp(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_RRESP(1 downto 0),
      DPU0_M_AXI_DATA1_rvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA1_RVALID,
      DPU0_M_AXI_DATA1_wdata(63 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_WDATA(63 downto 0),
      DPU0_M_AXI_DATA1_wid(5 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_WID(5 downto 0),
      DPU0_M_AXI_DATA1_wlast => DPUCZDX8G_0_DPU0_M_AXI_DATA1_WLAST,
      DPU0_M_AXI_DATA1_wready => DPUCZDX8G_0_DPU0_M_AXI_DATA1_WREADY,
      DPU0_M_AXI_DATA1_wstrb(7 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_DATA1_WSTRB(7 downto 0),
      DPU0_M_AXI_DATA1_wvalid => DPUCZDX8G_0_DPU0_M_AXI_DATA1_WVALID,
      DPU0_M_AXI_INSTR_araddr(39 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARADDR(39 downto 0),
      DPU0_M_AXI_INSTR_arburst(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARBURST(1 downto 0),
      DPU0_M_AXI_INSTR_arcache(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARCACHE(3 downto 0),
      DPU0_M_AXI_INSTR_arid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARID(1 downto 0),
      DPU0_M_AXI_INSTR_arlen(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARLEN(3 downto 0),
      DPU0_M_AXI_INSTR_arlock(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARLOCK(1 downto 0),
      DPU0_M_AXI_INSTR_arprot(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARPROT(2 downto 0),
      DPU0_M_AXI_INSTR_arqos(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARQOS(3 downto 0),
      DPU0_M_AXI_INSTR_arready => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARREADY,
      DPU0_M_AXI_INSTR_arsize(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARSIZE(2 downto 0),
      DPU0_M_AXI_INSTR_arvalid => DPUCZDX8G_0_DPU0_M_AXI_INSTR_ARVALID,
      DPU0_M_AXI_INSTR_awaddr(39 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWADDR(39 downto 0),
      DPU0_M_AXI_INSTR_awburst(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWBURST(1 downto 0),
      DPU0_M_AXI_INSTR_awcache(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWCACHE(3 downto 0),
      DPU0_M_AXI_INSTR_awid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWID(1 downto 0),
      DPU0_M_AXI_INSTR_awlen(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWLEN(3 downto 0),
      DPU0_M_AXI_INSTR_awlock(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWLOCK(1 downto 0),
      DPU0_M_AXI_INSTR_awprot(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWPROT(2 downto 0),
      DPU0_M_AXI_INSTR_awqos(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWQOS(3 downto 0),
      DPU0_M_AXI_INSTR_awready => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWREADY,
      DPU0_M_AXI_INSTR_awsize(2 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWSIZE(2 downto 0),
      DPU0_M_AXI_INSTR_awvalid => DPUCZDX8G_0_DPU0_M_AXI_INSTR_AWVALID,
      DPU0_M_AXI_INSTR_bid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_BID(1 downto 0),
      DPU0_M_AXI_INSTR_bready => DPUCZDX8G_0_DPU0_M_AXI_INSTR_BREADY,
      DPU0_M_AXI_INSTR_bresp(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_BRESP(1 downto 0),
      DPU0_M_AXI_INSTR_bvalid => DPUCZDX8G_0_DPU0_M_AXI_INSTR_BVALID,
      DPU0_M_AXI_INSTR_rdata(31 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_RDATA(31 downto 0),
      DPU0_M_AXI_INSTR_rid(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_RID(1 downto 0),
      DPU0_M_AXI_INSTR_rlast => DPUCZDX8G_0_DPU0_M_AXI_INSTR_RLAST,
      DPU0_M_AXI_INSTR_rready => DPUCZDX8G_0_DPU0_M_AXI_INSTR_RREADY,
      DPU0_M_AXI_INSTR_rresp(1 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_RRESP(1 downto 0),
      DPU0_M_AXI_INSTR_rvalid => DPUCZDX8G_0_DPU0_M_AXI_INSTR_RVALID,
      DPU0_M_AXI_INSTR_wdata(31 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_WDATA(31 downto 0),
      DPU0_M_AXI_INSTR_wlast => DPUCZDX8G_0_DPU0_M_AXI_INSTR_WLAST,
      DPU0_M_AXI_INSTR_wready => DPUCZDX8G_0_DPU0_M_AXI_INSTR_WREADY,
      DPU0_M_AXI_INSTR_wstrb(3 downto 0) => DPUCZDX8G_0_DPU0_M_AXI_INSTR_WSTRB(3 downto 0),
      DPU0_M_AXI_INSTR_wvalid => DPUCZDX8G_0_DPU0_M_AXI_INSTR_WVALID,
      GHP_CLK_I => hier_dpu_clk_rst_DPU_CLK,
      GHP_CLK_O => hier_dpu_gph_GHP_CLK_O,
      GHP_RSTn => hier_dpu_clk_rst_RSTn_PER(0),
      M_AXI_HP0_FPD_araddr(39 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARADDR(39 downto 0),
      M_AXI_HP0_FPD_arburst(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARBURST(1 downto 0),
      M_AXI_HP0_FPD_arcache(3 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARCACHE(3 downto 0),
      M_AXI_HP0_FPD_arid(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARID(1 downto 0),
      M_AXI_HP0_FPD_arlen(3 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARLEN(3 downto 0),
      M_AXI_HP0_FPD_arlock(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARLOCK(1 downto 0),
      M_AXI_HP0_FPD_arprot(2 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARPROT(2 downto 0),
      M_AXI_HP0_FPD_arqos(3 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARQOS(3 downto 0),
      M_AXI_HP0_FPD_arready => hier_dpu_gph_M_AXI_HP0_FPD_ARREADY,
      M_AXI_HP0_FPD_arsize(2 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARSIZE(2 downto 0),
      M_AXI_HP0_FPD_arvalid => hier_dpu_gph_M_AXI_HP0_FPD_ARVALID,
      M_AXI_HP0_FPD_awaddr(39 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWADDR(39 downto 0),
      M_AXI_HP0_FPD_awburst(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWBURST(1 downto 0),
      M_AXI_HP0_FPD_awcache(3 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWCACHE(3 downto 0),
      M_AXI_HP0_FPD_awid(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWID(1 downto 0),
      M_AXI_HP0_FPD_awlen(3 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWLEN(3 downto 0),
      M_AXI_HP0_FPD_awlock(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWLOCK(1 downto 0),
      M_AXI_HP0_FPD_awprot(2 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWPROT(2 downto 0),
      M_AXI_HP0_FPD_awqos(3 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWQOS(3 downto 0),
      M_AXI_HP0_FPD_awready => hier_dpu_gph_M_AXI_HP0_FPD_AWREADY,
      M_AXI_HP0_FPD_awsize(2 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWSIZE(2 downto 0),
      M_AXI_HP0_FPD_awvalid => hier_dpu_gph_M_AXI_HP0_FPD_AWVALID,
      M_AXI_HP0_FPD_bid(5 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_BID(5 downto 0),
      M_AXI_HP0_FPD_bready => hier_dpu_gph_M_AXI_HP0_FPD_BREADY,
      M_AXI_HP0_FPD_bresp(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_BRESP(1 downto 0),
      M_AXI_HP0_FPD_bvalid => hier_dpu_gph_M_AXI_HP0_FPD_BVALID,
      M_AXI_HP0_FPD_rdata(63 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_RDATA(63 downto 0),
      M_AXI_HP0_FPD_rid(5 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_RID(5 downto 0),
      M_AXI_HP0_FPD_rlast => hier_dpu_gph_M_AXI_HP0_FPD_RLAST,
      M_AXI_HP0_FPD_rready => hier_dpu_gph_M_AXI_HP0_FPD_RREADY,
      M_AXI_HP0_FPD_rresp(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_RRESP(1 downto 0),
      M_AXI_HP0_FPD_rvalid => hier_dpu_gph_M_AXI_HP0_FPD_RVALID,
      M_AXI_HP0_FPD_wdata(63 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_WDATA(63 downto 0),
      M_AXI_HP0_FPD_wid(5 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_WID(5 downto 0),
      M_AXI_HP0_FPD_wlast => hier_dpu_gph_M_AXI_HP0_FPD_WLAST,
      M_AXI_HP0_FPD_wready => hier_dpu_gph_M_AXI_HP0_FPD_WREADY,
      M_AXI_HP0_FPD_wstrb(7 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_WSTRB(7 downto 0),
      M_AXI_HP0_FPD_wvalid => hier_dpu_gph_M_AXI_HP0_FPD_WVALID,
      M_AXI_HP1_FPD_araddr(39 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARADDR(39 downto 0),
      M_AXI_HP1_FPD_arburst(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARBURST(1 downto 0),
      M_AXI_HP1_FPD_arcache(3 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARCACHE(3 downto 0),
      M_AXI_HP1_FPD_arid(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARID(1 downto 0),
      M_AXI_HP1_FPD_arlen(3 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARLEN(3 downto 0),
      M_AXI_HP1_FPD_arlock(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARLOCK(1 downto 0),
      M_AXI_HP1_FPD_arprot(2 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARPROT(2 downto 0),
      M_AXI_HP1_FPD_arqos(3 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARQOS(3 downto 0),
      M_AXI_HP1_FPD_arready => hier_dpu_gph_M_AXI_HP1_FPD_ARREADY,
      M_AXI_HP1_FPD_arsize(2 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARSIZE(2 downto 0),
      M_AXI_HP1_FPD_arvalid => hier_dpu_gph_M_AXI_HP1_FPD_ARVALID,
      M_AXI_HP1_FPD_awaddr(39 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWADDR(39 downto 0),
      M_AXI_HP1_FPD_awburst(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWBURST(1 downto 0),
      M_AXI_HP1_FPD_awcache(3 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWCACHE(3 downto 0),
      M_AXI_HP1_FPD_awid(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWID(1 downto 0),
      M_AXI_HP1_FPD_awlen(3 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWLEN(3 downto 0),
      M_AXI_HP1_FPD_awlock(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWLOCK(1 downto 0),
      M_AXI_HP1_FPD_awprot(2 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWPROT(2 downto 0),
      M_AXI_HP1_FPD_awqos(3 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWQOS(3 downto 0),
      M_AXI_HP1_FPD_awready => hier_dpu_gph_M_AXI_HP1_FPD_AWREADY,
      M_AXI_HP1_FPD_awsize(2 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWSIZE(2 downto 0),
      M_AXI_HP1_FPD_awvalid => hier_dpu_gph_M_AXI_HP1_FPD_AWVALID,
      M_AXI_HP1_FPD_bid(5 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_BID(5 downto 0),
      M_AXI_HP1_FPD_bready => hier_dpu_gph_M_AXI_HP1_FPD_BREADY,
      M_AXI_HP1_FPD_bresp(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_BRESP(1 downto 0),
      M_AXI_HP1_FPD_bvalid => hier_dpu_gph_M_AXI_HP1_FPD_BVALID,
      M_AXI_HP1_FPD_rdata(63 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_RDATA(63 downto 0),
      M_AXI_HP1_FPD_rid(5 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_RID(5 downto 0),
      M_AXI_HP1_FPD_rlast => hier_dpu_gph_M_AXI_HP1_FPD_RLAST,
      M_AXI_HP1_FPD_rready => hier_dpu_gph_M_AXI_HP1_FPD_RREADY,
      M_AXI_HP1_FPD_rresp(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_RRESP(1 downto 0),
      M_AXI_HP1_FPD_rvalid => hier_dpu_gph_M_AXI_HP1_FPD_RVALID,
      M_AXI_HP1_FPD_wdata(63 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_WDATA(63 downto 0),
      M_AXI_HP1_FPD_wid(5 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_WID(5 downto 0),
      M_AXI_HP1_FPD_wlast => hier_dpu_gph_M_AXI_HP1_FPD_WLAST,
      M_AXI_HP1_FPD_wready => hier_dpu_gph_M_AXI_HP1_FPD_WREADY,
      M_AXI_HP1_FPD_wstrb(7 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_WSTRB(7 downto 0),
      M_AXI_HP1_FPD_wvalid => hier_dpu_gph_M_AXI_HP1_FPD_WVALID,
      M_AXI_LPD_araddr(39 downto 0) => hier_dpu_gph_M_AXI_LPD_ARADDR(39 downto 0),
      M_AXI_LPD_arburst(1 downto 0) => hier_dpu_gph_M_AXI_LPD_ARBURST(1 downto 0),
      M_AXI_LPD_arcache(3 downto 0) => hier_dpu_gph_M_AXI_LPD_ARCACHE(3 downto 0),
      M_AXI_LPD_arlen(3 downto 0) => hier_dpu_gph_M_AXI_LPD_ARLEN(3 downto 0),
      M_AXI_LPD_arlock(1 downto 0) => hier_dpu_gph_M_AXI_LPD_ARLOCK(1 downto 0),
      M_AXI_LPD_arprot(2 downto 0) => hier_dpu_gph_M_AXI_LPD_ARPROT(2 downto 0),
      M_AXI_LPD_arqos(3 downto 0) => hier_dpu_gph_M_AXI_LPD_ARQOS(3 downto 0),
      M_AXI_LPD_arready => hier_dpu_gph_M_AXI_LPD_ARREADY,
      M_AXI_LPD_arsize(2 downto 0) => hier_dpu_gph_M_AXI_LPD_ARSIZE(2 downto 0),
      M_AXI_LPD_arvalid => hier_dpu_gph_M_AXI_LPD_ARVALID,
      M_AXI_LPD_awaddr(39 downto 0) => hier_dpu_gph_M_AXI_LPD_AWADDR(39 downto 0),
      M_AXI_LPD_awburst(1 downto 0) => hier_dpu_gph_M_AXI_LPD_AWBURST(1 downto 0),
      M_AXI_LPD_awcache(3 downto 0) => hier_dpu_gph_M_AXI_LPD_AWCACHE(3 downto 0),
      M_AXI_LPD_awlen(3 downto 0) => hier_dpu_gph_M_AXI_LPD_AWLEN(3 downto 0),
      M_AXI_LPD_awlock(1 downto 0) => hier_dpu_gph_M_AXI_LPD_AWLOCK(1 downto 0),
      M_AXI_LPD_awprot(2 downto 0) => hier_dpu_gph_M_AXI_LPD_AWPROT(2 downto 0),
      M_AXI_LPD_awqos(3 downto 0) => hier_dpu_gph_M_AXI_LPD_AWQOS(3 downto 0),
      M_AXI_LPD_awready => hier_dpu_gph_M_AXI_LPD_AWREADY,
      M_AXI_LPD_awsize(2 downto 0) => hier_dpu_gph_M_AXI_LPD_AWSIZE(2 downto 0),
      M_AXI_LPD_awvalid => hier_dpu_gph_M_AXI_LPD_AWVALID,
      M_AXI_LPD_bready => hier_dpu_gph_M_AXI_LPD_BREADY,
      M_AXI_LPD_bresp(1 downto 0) => hier_dpu_gph_M_AXI_LPD_BRESP(1 downto 0),
      M_AXI_LPD_bvalid => hier_dpu_gph_M_AXI_LPD_BVALID,
      M_AXI_LPD_rdata(63 downto 0) => hier_dpu_gph_M_AXI_LPD_RDATA(63 downto 0),
      M_AXI_LPD_rlast => hier_dpu_gph_M_AXI_LPD_RLAST,
      M_AXI_LPD_rready => hier_dpu_gph_M_AXI_LPD_RREADY,
      M_AXI_LPD_rresp(1 downto 0) => hier_dpu_gph_M_AXI_LPD_RRESP(1 downto 0),
      M_AXI_LPD_rvalid => hier_dpu_gph_M_AXI_LPD_RVALID,
      M_AXI_LPD_wdata(63 downto 0) => hier_dpu_gph_M_AXI_LPD_WDATA(63 downto 0),
      M_AXI_LPD_wlast => hier_dpu_gph_M_AXI_LPD_WLAST,
      M_AXI_LPD_wready => hier_dpu_gph_M_AXI_LPD_WREADY,
      M_AXI_LPD_wstrb(7 downto 0) => hier_dpu_gph_M_AXI_LPD_WSTRB(7 downto 0),
      M_AXI_LPD_wvalid => hier_dpu_gph_M_AXI_LPD_WVALID,
      RSTn_INTC => hier_dpu_clk_rst_RSTn_INTC(0),
      RSTn_PERI => hier_dpu_clk_rst_RSTn_PER(0)
    );
processing_system7_0: component zynq_dpu_system_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => CLK_1,
      FCLK_RESET0_N => RSTn_1,
      IRQ_F2P(0) => DPUCZDX8G_0_dpu_interrupt(0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => CLK_1,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => hier_dpu_gph_GHP_CLK_O,
      S_AXI_HP0_ARADDR(31 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 2) => B"0000",
      S_AXI_HP0_ARID(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARID(1 downto 0),
      S_AXI_HP0_ARLEN(3 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => hier_dpu_gph_M_AXI_HP0_FPD_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => hier_dpu_gph_M_AXI_HP0_FPD_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 2) => B"0000",
      S_AXI_HP0_AWID(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWID(1 downto 0),
      S_AXI_HP0_AWLEN(3 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => hier_dpu_gph_M_AXI_HP0_FPD_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => hier_dpu_gph_M_AXI_HP0_FPD_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_BID(5 downto 0),
      S_AXI_HP0_BREADY => hier_dpu_gph_M_AXI_HP0_FPD_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => hier_dpu_gph_M_AXI_HP0_FPD_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_RID(5 downto 0),
      S_AXI_HP0_RLAST => hier_dpu_gph_M_AXI_HP0_FPD_RLAST,
      S_AXI_HP0_RREADY => hier_dpu_gph_M_AXI_HP0_FPD_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => hier_dpu_gph_M_AXI_HP0_FPD_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_WID(5 downto 0),
      S_AXI_HP0_WLAST => hier_dpu_gph_M_AXI_HP0_FPD_WLAST,
      S_AXI_HP0_WREADY => hier_dpu_gph_M_AXI_HP0_FPD_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => hier_dpu_gph_M_AXI_HP0_FPD_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => hier_dpu_gph_M_AXI_HP0_FPD_WVALID,
      S_AXI_HP1_ACLK => hier_dpu_gph_GHP_CLK_O,
      S_AXI_HP1_ARADDR(31 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARADDR(31 downto 0),
      S_AXI_HP1_ARBURST(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARBURST(1 downto 0),
      S_AXI_HP1_ARCACHE(3 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARCACHE(3 downto 0),
      S_AXI_HP1_ARID(5 downto 2) => B"0000",
      S_AXI_HP1_ARID(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARID(1 downto 0),
      S_AXI_HP1_ARLEN(3 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARLEN(3 downto 0),
      S_AXI_HP1_ARLOCK(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARLOCK(1 downto 0),
      S_AXI_HP1_ARPROT(2 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARPROT(2 downto 0),
      S_AXI_HP1_ARQOS(3 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARQOS(3 downto 0),
      S_AXI_HP1_ARREADY => hier_dpu_gph_M_AXI_HP1_FPD_ARREADY,
      S_AXI_HP1_ARSIZE(2 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_ARSIZE(2 downto 0),
      S_AXI_HP1_ARVALID => hier_dpu_gph_M_AXI_HP1_FPD_ARVALID,
      S_AXI_HP1_AWADDR(31 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWADDR(31 downto 0),
      S_AXI_HP1_AWBURST(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWBURST(1 downto 0),
      S_AXI_HP1_AWCACHE(3 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWCACHE(3 downto 0),
      S_AXI_HP1_AWID(5 downto 2) => B"0000",
      S_AXI_HP1_AWID(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWID(1 downto 0),
      S_AXI_HP1_AWLEN(3 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWLEN(3 downto 0),
      S_AXI_HP1_AWLOCK(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWLOCK(1 downto 0),
      S_AXI_HP1_AWPROT(2 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWPROT(2 downto 0),
      S_AXI_HP1_AWQOS(3 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWQOS(3 downto 0),
      S_AXI_HP1_AWREADY => hier_dpu_gph_M_AXI_HP1_FPD_AWREADY,
      S_AXI_HP1_AWSIZE(2 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_AWSIZE(2 downto 0),
      S_AXI_HP1_AWVALID => hier_dpu_gph_M_AXI_HP1_FPD_AWVALID,
      S_AXI_HP1_BID(5 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_BID(5 downto 0),
      S_AXI_HP1_BREADY => hier_dpu_gph_M_AXI_HP1_FPD_BREADY,
      S_AXI_HP1_BRESP(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_BRESP(1 downto 0),
      S_AXI_HP1_BVALID => hier_dpu_gph_M_AXI_HP1_FPD_BVALID,
      S_AXI_HP1_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP1_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP1_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP1_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_RDATA(63 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_RDATA(63 downto 0),
      S_AXI_HP1_RDISSUECAP1_EN => '0',
      S_AXI_HP1_RID(5 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_RID(5 downto 0),
      S_AXI_HP1_RLAST => hier_dpu_gph_M_AXI_HP1_FPD_RLAST,
      S_AXI_HP1_RREADY => hier_dpu_gph_M_AXI_HP1_FPD_RREADY,
      S_AXI_HP1_RRESP(1 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_RRESP(1 downto 0),
      S_AXI_HP1_RVALID => hier_dpu_gph_M_AXI_HP1_FPD_RVALID,
      S_AXI_HP1_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP1_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP1_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP1_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_WDATA(63 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_WDATA(63 downto 0),
      S_AXI_HP1_WID(5 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_WID(5 downto 0),
      S_AXI_HP1_WLAST => hier_dpu_gph_M_AXI_HP1_FPD_WLAST,
      S_AXI_HP1_WREADY => hier_dpu_gph_M_AXI_HP1_FPD_WREADY,
      S_AXI_HP1_WRISSUECAP1_EN => '0',
      S_AXI_HP1_WSTRB(7 downto 0) => hier_dpu_gph_M_AXI_HP1_FPD_WSTRB(7 downto 0),
      S_AXI_HP1_WVALID => hier_dpu_gph_M_AXI_HP1_FPD_WVALID,
      S_AXI_HP2_ACLK => hier_dpu_gph_GHP_CLK_O,
      S_AXI_HP2_ARADDR(31 downto 0) => hier_dpu_gph_M_AXI_LPD_ARADDR(31 downto 0),
      S_AXI_HP2_ARBURST(1 downto 0) => hier_dpu_gph_M_AXI_LPD_ARBURST(1 downto 0),
      S_AXI_HP2_ARCACHE(3 downto 0) => hier_dpu_gph_M_AXI_LPD_ARCACHE(3 downto 0),
      S_AXI_HP2_ARID(5 downto 0) => B"000000",
      S_AXI_HP2_ARLEN(3 downto 0) => hier_dpu_gph_M_AXI_LPD_ARLEN(3 downto 0),
      S_AXI_HP2_ARLOCK(1 downto 0) => hier_dpu_gph_M_AXI_LPD_ARLOCK(1 downto 0),
      S_AXI_HP2_ARPROT(2 downto 0) => hier_dpu_gph_M_AXI_LPD_ARPROT(2 downto 0),
      S_AXI_HP2_ARQOS(3 downto 0) => hier_dpu_gph_M_AXI_LPD_ARQOS(3 downto 0),
      S_AXI_HP2_ARREADY => hier_dpu_gph_M_AXI_LPD_ARREADY,
      S_AXI_HP2_ARSIZE(2 downto 0) => hier_dpu_gph_M_AXI_LPD_ARSIZE(2 downto 0),
      S_AXI_HP2_ARVALID => hier_dpu_gph_M_AXI_LPD_ARVALID,
      S_AXI_HP2_AWADDR(31 downto 0) => hier_dpu_gph_M_AXI_LPD_AWADDR(31 downto 0),
      S_AXI_HP2_AWBURST(1 downto 0) => hier_dpu_gph_M_AXI_LPD_AWBURST(1 downto 0),
      S_AXI_HP2_AWCACHE(3 downto 0) => hier_dpu_gph_M_AXI_LPD_AWCACHE(3 downto 0),
      S_AXI_HP2_AWID(5 downto 0) => B"000000",
      S_AXI_HP2_AWLEN(3 downto 0) => hier_dpu_gph_M_AXI_LPD_AWLEN(3 downto 0),
      S_AXI_HP2_AWLOCK(1 downto 0) => hier_dpu_gph_M_AXI_LPD_AWLOCK(1 downto 0),
      S_AXI_HP2_AWPROT(2 downto 0) => hier_dpu_gph_M_AXI_LPD_AWPROT(2 downto 0),
      S_AXI_HP2_AWQOS(3 downto 0) => hier_dpu_gph_M_AXI_LPD_AWQOS(3 downto 0),
      S_AXI_HP2_AWREADY => hier_dpu_gph_M_AXI_LPD_AWREADY,
      S_AXI_HP2_AWSIZE(2 downto 0) => hier_dpu_gph_M_AXI_LPD_AWSIZE(2 downto 0),
      S_AXI_HP2_AWVALID => hier_dpu_gph_M_AXI_LPD_AWVALID,
      S_AXI_HP2_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP2_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP2_BREADY => hier_dpu_gph_M_AXI_LPD_BREADY,
      S_AXI_HP2_BRESP(1 downto 0) => hier_dpu_gph_M_AXI_LPD_BRESP(1 downto 0),
      S_AXI_HP2_BVALID => hier_dpu_gph_M_AXI_LPD_BVALID,
      S_AXI_HP2_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP2_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP2_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP2_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP2_RDATA(63 downto 0) => hier_dpu_gph_M_AXI_LPD_RDATA(63 downto 0),
      S_AXI_HP2_RDISSUECAP1_EN => '0',
      S_AXI_HP2_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP2_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP2_RLAST => hier_dpu_gph_M_AXI_LPD_RLAST,
      S_AXI_HP2_RREADY => hier_dpu_gph_M_AXI_LPD_RREADY,
      S_AXI_HP2_RRESP(1 downto 0) => hier_dpu_gph_M_AXI_LPD_RRESP(1 downto 0),
      S_AXI_HP2_RVALID => hier_dpu_gph_M_AXI_LPD_RVALID,
      S_AXI_HP2_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP2_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP2_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP2_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP2_WDATA(63 downto 0) => hier_dpu_gph_M_AXI_LPD_WDATA(63 downto 0),
      S_AXI_HP2_WID(5 downto 0) => B"000000",
      S_AXI_HP2_WLAST => hier_dpu_gph_M_AXI_LPD_WLAST,
      S_AXI_HP2_WREADY => hier_dpu_gph_M_AXI_LPD_WREADY,
      S_AXI_HP2_WRISSUECAP1_EN => '0',
      S_AXI_HP2_WSTRB(7 downto 0) => hier_dpu_gph_M_AXI_LPD_WSTRB(7 downto 0),
      S_AXI_HP2_WVALID => hier_dpu_gph_M_AXI_LPD_WVALID,
      TTC0_WAVE0_OUT => NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
xlconstant_0: component zynq_dpu_system_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
