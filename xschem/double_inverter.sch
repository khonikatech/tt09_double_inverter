v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 270 110 270 140 {
lab=inverted}
N 210 80 230 80 {
lab=in1}
N 210 170 230 170 {
lab=in1}
N 210 80 210 170 {
lab=in1}
N 270 30 270 50 {
lab=VDD}
N 270 200 270 230 {
lab=VSS}
N 410 110 410 140 {
lab=out1}
N 350 80 370 80 {
lab=inverted}
N 350 170 370 170 {
lab=inverted}
N 350 80 350 170 {
lab=inverted}
N 410 30 410 50 {
lab=VDD}
N 410 200 410 230 {
lab=VSS}
N 270 120 350 120 {
lab=inverted}
N 410 120 480 120 {
lab=out1}
N 160 120 210 120 {
lab=in1}
N 270 170 280 170 {
lab=VSS}
N 280 170 280 200 {
lab=VSS}
N 270 200 280 200 {
lab=VSS}
N 410 170 430 170 {
lab=VSS}
N 430 170 430 190 {
lab=VSS}
N 430 190 430 200 {
lab=VSS}
N 410 200 430 200 {
lab=VSS}
C {devices/iopin.sym} 80 -40 0 0 {name=p1 lab=VDD
}
C {devices/iopin.sym} 80 -10 0 0 {name=p2 lab=VSS

}
C {sky130_fd_pr/pfet3_01v8.sym} 250 80 0 0 {name=M1
L=0.15
W=1

nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 250 170 0 0 {name=M2
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 270 230 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 270 30 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 160 120 0 0 {name=p5 lab=in1}
C {devices/opin.sym} 480 120 0 0 {name=p6 lab=out1}
C {sky130_fd_pr/pfet3_01v8.sym} 390 80 0 0 {name=M3
L=0.15
W=20
body=VDD
nf=20
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 390 170 0 0 {name=M4
L=0.15
W=20
nf=20 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 410 230 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 410 30 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 340 120 0 0 {name=p9 sig_type=std_logic lab=inverted}
