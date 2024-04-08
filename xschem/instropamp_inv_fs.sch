v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -245 -325 -230 -325 {
lab=GND}
N -310 -325 -305 -325 {
lab=#net1}
N -310 -325 -310 -310 {
lab=#net1}
N -250 -150 -250 -130 {
lab=GND}
N -310 -210 -310 -150 {
lab=#net2}
N -230 -260 -170 -260 {
lab=VOUT}
N -550 -190 -510 -190 {
lab=GND}
N -550 -190 -550 -120 {
lab=GND}
N -470 -240 -400 -240 {
lab=VIN1}
N -470 -240 -470 -190 {
lab=VIN1}
N -470 -280 -400 -280 {
lab=VIN2}
N -470 -370 -470 -280 {
lab=VIN2}
N -550 -370 -530 -370 {
lab=GND}
N -550 -370 -550 -180 {
lab=GND}
N -275 -225 -250 -225 {
lab=GND}
N -250 -225 -250 -150 {
lab=GND}
C {devices/vsource.sym} -500 -370 1 0 {name=V1 value="SIN(0 100u 10hz 0 0 180)" savecurrent=false
}
C {devices/lab_wire.sym} -430 -280 0 0 {name=p1 sig_type=std_logic lab=VIN2}
C {devices/vsource.sym} -500 -190 1 0 {name=V2 value="SIN(0 100u 10hz 0 0 0" savecurrent=false}
C {devices/gnd.sym} -550 -120 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -430 -240 0 0 {name=p2 sig_type=std_logic lab=VIN1}
C {devices/vsource.sym} -275 -325 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -230 -325 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -280 -150 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -250 -130 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -180 -260 0 0 {name=p3 sig_type=std_logic lab=VOUT}
C {devices/code.sym} -370 -55 0 0 {name=FS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice fs

"
spice_ignore=false}
C {devices/code_shown.sym} -85 -300 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1m 100m
plot VIN1 VIN2 VOUT
.endc
"}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -250 -260 0 0 {name=x1}
