v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 405 -1395 1205 -995 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-4.27559e-05
x2=-2.5185e-05
divx=5
subdivx=1
node=vin
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1225 -1395 2025 -995 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-4.27559e-05
x2=-2.5185e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=vout}
B 2 1575 -935 2375 -535 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-4.27559e-05
x2=-2.5185e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0

color=8
node=i(v.x1.v_ibias)}
N 1350 -600 1370 -600 {
lab=GND}
N 1370 -600 1370 -590 {
lab=GND}
N 1350 -730 1370 -730 {
lab=GND}
N 1370 -730 1370 -720 {
lab=GND}
N 1170 -650 1190 -650 {
lab=GND}
N 1170 -650 1170 -550 {
lab=GND}
N 1275 -730 1290 -730 {
lab=#net1}
N 1275 -730 1275 -710 {
lab=#net1}
N 1450 -580 1450 -550 {
lab=GND}
N 1450 -670 1450 -640 {
lab=VOUT}
N 960 -580 960 -550 {
lab=GND}
N 960 -690 960 -640 {
lab=VIN}
N 960 -690 1030 -690 {
lab=VIN}
N 1090 -690 1190 -690 {
lab=#net2}
N 1060 -670 1060 -650 {
lab=GND}
N 1170 -850 1170 -690 {
lab=#net2}
N 1170 -850 1260 -850 {
lab=#net2}
N 1290 -830 1290 -810 {
lab=GND}
N 1275 -630 1275 -600 {
lab=#net3}
N 1275 -600 1290 -600 {
lab=#net3}
N 1360 -670 1450 -670 {
lab=VOUT}
N 1450 -670 1490 -670 {
lab=VOUT}
N 1490 -850 1490 -670 {
lab=VOUT}
N 1320 -850 1490 -850 {
lab=VOUT}
C {devices/vsource.sym} 960 -610 0 0 {name=V1 value="SIN (0 1u 50K)" savecurrent=false}
C {devices/vsource.sym} 1320 -600 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} 1370 -590 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 1320 -730 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} 1370 -720 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 990 -690 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 1450 -670 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} 430 -705 0 0 {name=s1 only_toplevel=false value="
*.param I_bias = 200u
.param W8 = 38.01
.param L_bias = 5.86

.control
save all
tran 0.1u 20u
meas tran minv MIN v(vout)
meas tran maxv MAX v(vout)
let gain = ((abs(maxv)+abs(minv))/(2e-6))
print gain
meas tran ibias find i(v.x1.v_ibias) at=10u
write opamp_inv_v2.raw
.endc"}
C {devices/gnd.sym} 1170 -550 0 0 {name=l4 lab=GND}
C {devices/code.sym} 420 -900 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {../xschem/opamp.sym} 1340 -670 0 0 {name=x1}
C {devices/capa.sym} 1450 -610 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1450 -550 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 960 -550 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/res_high_po_0p69.sym} 1060 -690 3 0 {name=R1k
L=129.40
model=res_high_po_0p69
spiceprefix=X
mult=64}
C {devices/gnd.sym} 1060 -650 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1290 -810 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/res_high_po_0p69.sym} 1290 -850 3 0 {name=R64k
L=129.40
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {devices/launcher.sym} 730 -830 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/opamp_inv_v2.raw tran"
}
