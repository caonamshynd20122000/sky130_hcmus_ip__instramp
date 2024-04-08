v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -150 -30 -130 -30 {
lab=GND}
N -130 -30 -130 -20 {
lab=GND}
N -160 -160 -140 -160 {
lab=GND}
N -140 -160 -140 -150 {
lab=GND}
N -400 -120 -320 -120 {
lab=#net1}
N -340 -220 -280 -220 {
lab=#net1}
N -340 -220 -340 -120 {
lab=#net1}
N -220 -220 -100 -220 {
lab=VOUT}
N -100 -220 -100 -100 {
lab=VOUT}
N -490 -120 -460 -120 {
lab=VIN}
N -420 -80 -320 -80 {
lab=GND}
N -420 -80 -420 -60 {
lab=GND}
N -590 -120 -550 -120 {
lab=GND}
N -590 -120 -590 -100 {
lab=GND}
N -150 -100 -50 -100 {
lab=VOUT}
N -235 -160 -220 -160 {
lab=#net2}
N -235 -160 -235 -140 {
lab=#net2}
N -235 -60 -235 -30 {
lab=#net3}
N -235 -30 -210 -30 {
lab=#net3}
C {devices/vsource.sym} -520 -120 1 0 {name=V1 value="SIN (0 1u 10Hz)" savecurrent=false}
C {devices/gnd.sym} -590 -100 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -180 -30 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -130 -20 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -190 -160 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -140 -150 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -480 -120 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} -60 -100 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} -50 -60 0 0 {name=s1 only_toplevel=false value="
.save all
.control
tran 1m 100m
write opamp_inv.raw
plot VOUT VIN
.endc
"}
C {devices/res.sym} -430 -120 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -250 -220 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -420 -60 0 0 {name=l4 lab=GND}
C {devices/code.sym} -680 -5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -170 -100 0 0 {name=x1}
