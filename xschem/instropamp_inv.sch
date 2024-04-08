v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -215 -255 -200 -255 {
lab=GND}
N -280 -255 -275 -255 {
lab=#net1}
N -280 -255 -280 -240 {
lab=#net1}
N -220 -80 -220 -60 {
lab=GND}
N -280 -140 -280 -80 {
lab=#net2}
N -200 -190 -140 -190 {
lab=VOUT}
N -520 -120 -480 -120 {
lab=GND}
N -520 -120 -520 -50 {
lab=GND}
N -440 -170 -370 -170 {
lab=VIN1}
N -440 -170 -440 -120 {
lab=VIN1}
N -440 -210 -370 -210 {
lab=VIN2}
N -440 -300 -440 -210 {
lab=VIN2}
N -520 -300 -500 -300 {
lab=GND}
N -520 -300 -520 -110 {
lab=GND}
N -245 -155 -220 -155 {
lab=GND}
N -220 -155 -220 -80 {
lab=GND}
C {devices/vsource.sym} -470 -300 1 0 {name=V1 value="SIN(0 100u 10hz 0 0 180)" savecurrent=false
}
C {devices/lab_wire.sym} -400 -210 0 0 {name=p1 sig_type=std_logic lab=VIN2}
C {devices/vsource.sym} -470 -120 1 0 {name=V2 value="SIN(0 100u 10hz 0 0 0" savecurrent=false}
C {devices/gnd.sym} -520 -50 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -400 -170 0 0 {name=p2 sig_type=std_logic lab=VIN1}
C {devices/vsource.sym} -245 -255 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -200 -255 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -250 -80 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -220 -60 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -150 -190 0 0 {name=p3 sig_type=std_logic lab=VOUT}
C {devices/code.sym} -340 15 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} -55 -230 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1m 100m
plot VIN1 VIN2 VOUT
.endc
"}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -220 -190 0 0 {name=x1}
