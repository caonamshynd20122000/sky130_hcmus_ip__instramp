v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -265 -385 -250 -385 {
lab=GND}
N -330 -385 -325 -385 {
lab=#net1}
N -330 -385 -330 -370 {
lab=#net1}
N -270 -210 -270 -190 {
lab=GND}
N -330 -270 -330 -210 {
lab=#net2}
N -250 -320 -190 -320 {
lab=VOUT}
N -570 -250 -530 -250 {
lab=GND}
N -570 -250 -570 -180 {
lab=GND}
N -490 -300 -420 -300 {
lab=VIN1}
N -490 -300 -490 -250 {
lab=VIN1}
N -490 -340 -420 -340 {
lab=VIN2}
N -490 -430 -490 -340 {
lab=VIN2}
N -570 -430 -550 -430 {
lab=GND}
N -570 -430 -570 -240 {
lab=GND}
N -295 -285 -270 -285 {
lab=GND}
N -270 -285 -270 -210 {
lab=GND}
C {devices/vsource.sym} -520 -430 1 0 {name=V1 value="SIN(0 100u 10hz 0 0 180)" savecurrent=false
}
C {devices/lab_wire.sym} -450 -340 0 0 {name=p1 sig_type=std_logic lab=VIN2}
C {devices/vsource.sym} -520 -250 1 0 {name=V2 value="SIN(0 100u 10hz 0 0 0" savecurrent=false}
C {devices/gnd.sym} -570 -180 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -450 -300 0 0 {name=p2 sig_type=std_logic lab=VIN1}
C {devices/vsource.sym} -295 -385 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -250 -385 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -300 -210 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -270 -190 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -200 -320 0 0 {name=p3 sig_type=std_logic lab=VOUT}
C {devices/code.sym} -390 -115 0 0 {name=SS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
C {devices/code_shown.sym} -105 -360 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1m 100m
plot VIN1 VIN2 VOUT
.endc
"}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -270 -320 0 0 {name=x1}
