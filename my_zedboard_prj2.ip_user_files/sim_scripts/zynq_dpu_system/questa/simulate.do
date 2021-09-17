onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib zynq_dpu_system_opt

do {wave.do}

view wave
view structure
view signals

do {zynq_dpu_system.udo}

run -all

quit -force
