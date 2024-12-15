v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 70 -590 870 -190 {flags=graph
y1=-0.069444235
y2=1.9305561
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in1
x1.inverted
out1"
color="5 12 4"
dataset=-1
unitx=1
logx=0
logy=0
}
N -270 -490 -270 -460 {
lab=VSS}
N -190 -400 -190 -380 {
lab=VSS}
N -190 -500 -190 -460 {
lab=VDD}
C {double_inverter.sym} 310 -120 0 0 {name=x1}
C {devices/lab_pin.sym} 460 -140 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 460 -120 0 1 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 460 -100 0 1 {name=p3 lab=out1}
C {devices/lab_pin.sym} 160 -140 0 0 {name=p4 lab=in1}
C {devices/vsource.sym} -270 -430 0 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} -190 -430 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/gnd.sym} -270 -400 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -270 -490 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -190 -380 0 0 {name=p6 sig_type=std_logic lab=VSS
}
C {devices/lab_wire.sym} -190 -500 0 0 {name=p7 sig_type=std_logic lab=VDD
}
C {devices/code.sym} -170 70 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -320 130 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} -450 -340 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
vin in1 0 pulse 0 1.8 5n 1n 1n 50n 100n

.control

tran 100p 200n

write testbench.raw

.endc

"


}
