v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -70 -40 -50 -40 {
lab=GND}
N -50 -40 -50 -30 {
lab=GND}
N -80 -170 -60 -170 {
lab=GND}
N -60 -170 -60 -160 {
lab=GND}
N -320 -130 -240 -130 {
lab=#net1}
N -260 -230 -200 -230 {
lab=#net1}
N -260 -230 -260 -130 {
lab=#net1}
N -140 -230 -20 -230 {
lab=VOUT}
N -20 -230 -20 -110 {
lab=VOUT}
N -410 -130 -380 -130 {
lab=VIN}
N -340 -90 -240 -90 {
lab=GND}
N -340 -90 -340 -70 {
lab=GND}
N -510 -130 -470 -130 {
lab=GND}
N -510 -130 -510 -110 {
lab=GND}
N -70 -110 30 -110 {
lab=VOUT}
N -155 -170 -140 -170 {
lab=#net2}
N -155 -170 -155 -150 {
lab=#net2}
N -155 -70 -155 -40 {
lab=#net3}
N -155 -40 -130 -40 {
lab=#net3}
C {devices/vsource.sym} -440 -130 1 0 {name=V1 value="SIN (0 1u 10Hz)" savecurrent=false}
C {devices/gnd.sym} -510 -110 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -100 -40 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -50 -30 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -110 -170 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -60 -160 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -400 -130 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 20 -110 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} 30 -70 0 0 {name=s1 only_toplevel=false value="
.save all
.control
tran 1m 100m
write opamp_inv.raw
plot VOUT VIN
.endc
"}
C {devices/res.sym} -350 -130 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -170 -230 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -340 -70 0 0 {name=l4 lab=GND}
C {devices/code.sym} -600 -15 0 0 {name=FF_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ff

"
spice_ignore=false}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -90 -110 0 0 {name=x1}
