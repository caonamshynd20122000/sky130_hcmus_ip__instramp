v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -525 -25 -495 -25 {
lab=GND}
N -525 -25 -525 5 {
lab=GND}
N -225 35 -225 65 {
lab=GND}
N -225 -45 -195 -45 {
lab=VOUT0}
N -215 -225 -215 -195 {
lab=GND}
N -215 -305 -185 -305 {
lab=VOUT1}
N -515 -325 -495 -325 {
lab=GND}
N -515 -325 -515 -205 {
lab=GND}
N -410 -65 -395 -65 {
lab=GND}
N -410 -155 -410 -65 {
lab=GND}
N -310 -5 -310 35 {
lab=#net1}
N -310 35 -285 35 {
lab=#net1}
N -435 -155 -370 -155 {
lab=GND}
N -435 -155 -435 -125 {
lab=GND}
N -310 -155 -310 -85 {
lab=#net2}
N -300 -415 -300 -345 {
lab=#net3}
N -425 -415 -360 -415 {
lab=GND}
N -425 -415 -425 -385 {
lab=GND}
N -300 -225 -275 -225 {
lab=#net4}
N -300 -265 -300 -225 {
lab=#net4}
N -435 -25 -395 -25 {
lab=VIN0}
N -435 -325 -385 -325 {
lab=VIN1}
N -515 -285 -385 -285 {
lab=GND}
C {devices/vsource.sym} -340 -155 1 0 {name=V2 value=1.8 savecurrent=false}
C {devices/vsource.sym} -255 35 3 0 {name=V1 value=-1.8 savecurrent=false}
C {devices/vsource.sym} -465 -25 1 0 {name=V3 value=1 savecurrent=false}
C {devices/gnd.sym} -225 65 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -525 5 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -435 -125 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -195 -45 0 0 {name=p1 sig_type=std_logic lab=VOUT0}
C {devices/vsource.sym} -245 -225 3 0 {name=V5 value=-1.8 savecurrent=false}
C {devices/vsource.sym} -465 -325 1 0 {name=V6 value=1 savecurrent=false}
C {devices/gnd.sym} -215 -195 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -515 -205 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -425 -385 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} -185 -305 0 0 {name=p2 sig_type=std_logic lab=VOUT1}
C {devices/lab_wire.sym} -400 -325 0 0 {name=p3 sig_type=std_logic lab=VIN1}
C {devices/lab_wire.sym} -410 -25 0 0 {name=p4 sig_type=std_logic lab=VIN0}
C {devices/vsource.sym} -330 -415 1 0 {name=V4 value=1.8 savecurrent=false}
C {devices/code_shown.sym} -105 -310 0 0 {name=s1 only_toplevel=false value="
.control
save all
*tran 1m 100m
dc V3 -1.8 1.8 1m
write v3_offset.raw
dc V6 -1.8 1.8 1m
write v6_offset.raw
.endc
"}
C {devices/code.sym} -670 -150 0 0 {name=SS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -235 -305 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -245 -45 0 0 {name=x2}
