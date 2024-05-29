v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -130 340 -130 {
lab=xxx}
N 160 -130 200 -130 {
lab=G}
N 160 -200 240 -200 {
lab=D}
N 240 -200 240 -160 {
lab=D}
N 160 -60 240 -60 {
lab=S}
N 240 -100 240 -60 {
lab=S}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 220 -130 0 0 {name=M1
L=0.5
W=1
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/iopin.sym} 160 -130 0 1 {name=p1 lab=G}
C {devices/iopin.sym} 160 -200 0 1 {name=p2 lab=D}
C {devices/iopin.sym} 160 -60 0 1 {name=p3 lab=S}
C {devices/iopin.sym} 340 -130 0 0 {name=p4 lab=B}
