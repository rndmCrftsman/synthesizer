onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib audio_station_overview_opt

do {wave.do}

view wave
view structure
view signals

do {audio_station_overview.udo}

run -all

quit -force
