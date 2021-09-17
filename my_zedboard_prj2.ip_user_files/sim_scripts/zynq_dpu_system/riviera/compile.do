vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_8
vlib riviera/processing_system7_vip_v1_0_10
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 riviera/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 riviera/processing_system7_vip_v1_0_10
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../my_zedboard_project_1.gen/sources_1/bd/zynq_dpu_system/ipshared/ec67/hdl" "+incdir+../../../../my_zedboard_project_1.gen/sources_1/bd/zynq_dpu_system/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../my_zedboard_project_1.gen/sources_1/bd/zynq_dpu_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../my_zedboard_project_1.gen/sources_1/bd/zynq_dpu_system/ipshared/ec67/hdl" "+incdir+../../../../my_zedboard_project_1.gen/sources_1/bd/zynq_dpu_system/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../my_zedboard_project_1.gen/sources_1/bd/zynq_dpu_system/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv2k12 "+incdir+../../../../my_zedboard_project_1.gen/sources_1/bd/zynq_dpu_system/ipshared/ec67/hdl" "+incdir+../../../../my_zedboard_project_1.gen/sources_1/bd/zynq_dpu_system/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../my_zedboard_project_1.gen/sources_1/bd/zynq_dpu_system/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../my_zedboard_project_1.gen/sources_1/bd/zynq_dpu_system/ipshared/ec67/hdl" "+incdir+../../../../my_zedboard_project_1.gen/sources_1/bd/zynq_dpu_system/ipshared/34f8/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/zynq_dpu_system/ip/zynq_dpu_system_processing_system7_0_0/sim/zynq_dpu_system_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/zynq_dpu_system/sim/zynq_dpu_system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

