v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -20 20 -20 {
lab=GND}
N 20 -20 20 -10 {
lab=GND}
N -10 -150 10 -150 {
lab=GND}
N 10 -150 10 -140 {
lab=GND}
N -250 -110 -170 -110 {
lab=#net1}
N -190 -210 -130 -210 {
lab=#net1}
N -190 -210 -190 -110 {
lab=#net1}
N -70 -210 50 -210 {
lab=VOUT}
N 50 -210 50 -90 {
lab=VOUT}
N -340 -110 -310 -110 {
lab=VIN}
N -270 -70 -170 -70 {
lab=GND}
N -270 -70 -270 -50 {
lab=GND}
N -440 -110 -400 -110 {
lab=GND}
N -440 -110 -440 -90 {
lab=GND}
N 0 -90 100 -90 {
lab=VOUT}
N -85 -150 -70 -150 {
lab=#net2}
N -85 -150 -85 -130 {
lab=#net2}
N -85 -50 -85 -20 {
lab=#net3}
N -85 -20 -60 -20 {
lab=#net3}
C {devices/vsource.sym} -370 -110 1 0 {name=V1 value="SIN (0 1u 10Hz)" savecurrent=false}
C {devices/gnd.sym} -440 -90 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -30 -20 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} 20 -10 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -40 -150 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} 10 -140 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -330 -110 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 90 -90 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} 100 -50 0 0 {name=s1 only_toplevel=false value="
.save all
.control
tran 1m 100m
write opamp_inv.raw
plot VOUT VIN
.endc
"}
C {devices/res.sym} -280 -110 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -100 -210 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -270 -50 0 0 {name=l4 lab=GND}
C {devices/code.sym} -530 5 0 0 {name=FS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice fs

"
spice_ignore=false}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -20 -90 0 0 {name=x1}
