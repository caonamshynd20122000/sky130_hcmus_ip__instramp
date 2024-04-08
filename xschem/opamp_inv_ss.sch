v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -150 -10 -130 -10 {
lab=GND}
N -130 -10 -130 0 {
lab=GND}
N -160 -140 -140 -140 {
lab=GND}
N -140 -140 -140 -130 {
lab=GND}
N -400 -100 -320 -100 {
lab=#net1}
N -340 -200 -280 -200 {
lab=#net1}
N -340 -200 -340 -100 {
lab=#net1}
N -220 -200 -100 -200 {
lab=VOUT}
N -100 -200 -100 -80 {
lab=VOUT}
N -490 -100 -460 -100 {
lab=VIN}
N -420 -60 -320 -60 {
lab=GND}
N -420 -60 -420 -40 {
lab=GND}
N -590 -100 -550 -100 {
lab=GND}
N -590 -100 -590 -80 {
lab=GND}
N -150 -80 -50 -80 {
lab=VOUT}
N -235 -140 -220 -140 {
lab=#net2}
N -235 -140 -235 -120 {
lab=#net2}
N -235 -40 -235 -10 {
lab=#net3}
N -235 -10 -210 -10 {
lab=#net3}
C {devices/vsource.sym} -520 -100 1 0 {name=V1 value="SIN (0 1u 10Hz)" savecurrent=false}
C {devices/gnd.sym} -590 -80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -180 -10 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -130 0 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -190 -140 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -140 -130 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -480 -100 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} -60 -80 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} -50 -40 0 0 {name=s1 only_toplevel=false value="
.save all
.control
tran 1m 100m
write opamp_inv.raw
plot VOUT VIN
.endc
"}
C {devices/res.sym} -430 -100 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -250 -200 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -420 -40 0 0 {name=l4 lab=GND}
C {devices/code.sym} -680 15 0 0 {name=SS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -170 -80 0 0 {name=x1}
