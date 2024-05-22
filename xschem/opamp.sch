v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -280 140 -170 140 {
lab=#net1}
N -170 140 -60 140 {
lab=#net1}
N -740 360 -520 360 {
lab=VSS}
N -520 330 -520 360 {
lab=VSS}
N -520 360 -170 360 {
lab=VSS}
N -170 330 -170 360 {
lab=VSS}
N -170 360 120 360 {
lab=VSS}
N 120 330 120 360 {
lab=VSS}
N 120 300 140 300 {
lab=VSS}
N 140 300 140 360 {
lab=VSS}
N 120 360 140 360 {
lab=VSS}
N -170 300 -150 300 {
lab=VSS}
N -150 300 -150 360 {
lab=VSS}
N -540 300 -520 300 {
lab=VSS}
N -540 300 -540 360 {
lab=VSS}
N -740 -280 -280 -280 {
lab=VDD}
N -280 -160 -280 40 {
lab=#net2}
N -60 -160 -60 40 {
lab=#net3}
N -280 -280 -280 -220 {
lab=VDD}
N -280 -280 -60 -280 {
lab=VDD}
N -60 -280 -60 -220 {
lab=VDD}
N -320 -190 -280 -190 {
lab=VDD}
N -320 -280 -320 -190 {
lab=VDD}
N -60 -190 -20 -190 {
lab=VDD}
N -20 -280 -20 -190 {
lab=VDD}
N -60 -280 -20 -280 {
lab=VDD}
N -60 -110 80 -110 {
lab=#net3}
N 120 -280 120 -140 {
lab=VDD}
N -20 -280 120 -280 {
lab=VDD}
N 120 -110 160 -110 {
lab=VDD}
N 160 -160 160 -110 {
lab=VDD}
N 120 -160 160 -160 {
lab=VDD}
N -480 300 -210 300 {
lab=#net4}
N -520 240 -360 240 {
lab=#net4}
N -360 240 -360 300 {
lab=#net4}
N -360 240 -0 240 {
lab=#net4}
N -0 240 0 300 {
lab=#net4}
N 0 300 80 300 {
lab=#net4}
N -370 70 -320 70 {
lab=V2}
N -280 70 -240 70 {
lab=VSS}
N -240 70 -240 360 {
lab=VSS}
N -100 70 -60 70 {
lab=VSS}
N -100 70 -100 360 {
lab=VSS}
N -60 -60 -40 -60 {
lab=#net3}
N 20 -60 40 -60 {
lab=#net5}
N 100 -60 120 -60 {
lab=VOUT}
N 30 -80 70 -80 {
lab=VSS}
N 30 -80 30 360 {
lab=VSS}
N 120 80 170 80 {
lab=VOUT}
N -240 -190 -100 -190 {
lab=#net2}
N -20 70 0 70 {
lab=V1}
N -160 -190 -160 -120 {
lab=#net2}
N -280 -120 -160 -120 {
lab=#net2}
N -520 180 -520 270 {
lab=#net4}
N -280 100 -280 140 {
lab=#net1}
N -60 100 -60 140 {
lab=#net1}
N -170 140 -170 160 {
lab=#net1}
N -170 220 -170 270 {
lab=#net6}
N 120 210 120 270 {
lab=#net7}
N 120 80 120 150 {
lab=VOUT}
N 120 -80 120 80 {
lab=VOUT}
N -520 -280 -520 0 {
lab=VDD}
N -520 60 -520 120 {
lab=#net8}
N -560 -60 -560 30 {
lab=VDD}
N -560 -60 -520 -60 {
lab=VDD}
N -520 30 -460 30 {
lab=VSS}
N -460 30 -460 360 {
lab=VSS}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -300 70 0 0 {name=M2
L=1
W=16.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -80 -190 0 0 {name=M1
L=1
W=30
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -40 70 0 1 {name=M4
L=1
W=16.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -190 300 0 0 {name=M5
L=1
W=15.44
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 100 300 0 0 {name=M6
L=1
W=19
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -500 300 0 1 {name=M7
L=1
W=15.44
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X}
C {devices/ipin.sym} -740 360 0 0 {name=p1 lab=VSS
}
C {devices/ipin.sym} -740 -280 0 0 {name=p2 lab=VDD
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -260 -190 0 1 {name=M3
L=1
W=30
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 100 -110 0 0 {name=M8
L=1
W=76
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/ipin.sym} -370 70 0 0 {name=p3 lab=V2
}
C {devices/ipin.sym} 0 70 2 0 {name=p4 lab=V1
}
C {devices/opin.sym} 170 80 0 0 {name=p5 lab=VOUT}
C {sky130_fd_pr/cap_mim_m3_1.sym} -10 -60 1 0 {name=C1 model=cap_mim_m3_1 W=6.9 L=6.9 MF=1 spiceprefix=X}
C {devices/ammeter.sym} -520 150 0 0 {name=V_ibias}
C {sky130_fd_pr/res_high_po_0p69.sym} 70 -60 1 0 {name=R3
L=3.2
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {devices/ammeter.sym} -170 190 0 0 {name=V_ibias1}
C {devices/ammeter.sym} 120 180 0 0 {name=V_iout}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -540 30 0 0 {name=M9
L=1
W=0.69
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
