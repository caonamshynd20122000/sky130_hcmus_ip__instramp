v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -195 -275 -180 -275 {
lab=GND}
N -260 -275 -255 -275 {
lab=#net1}
N -260 -275 -260 -260 {
lab=#net1}
N -200 -100 -200 -80 {
lab=GND}
N -260 -160 -260 -100 {
lab=#net2}
N -180 -210 -120 -210 {
lab=VOUT}
N -500 -140 -460 -140 {
lab=GND}
N -500 -140 -500 -70 {
lab=GND}
N -420 -190 -350 -190 {
lab=VIN1}
N -420 -190 -420 -140 {
lab=VIN1}
N -420 -230 -350 -230 {
lab=VIN2}
N -420 -320 -420 -230 {
lab=VIN2}
N -500 -320 -480 -320 {
lab=GND}
N -500 -320 -500 -130 {
lab=GND}
N -225 -175 -200 -175 {
lab=GND}
N -200 -175 -200 -100 {
lab=GND}
C {devices/vsource.sym} -450 -320 1 0 {name=V1 value="SIN(0 100u 10hz 0 0 180)" savecurrent=false
}
C {devices/lab_wire.sym} -380 -230 0 0 {name=p1 sig_type=std_logic lab=VIN2}
C {devices/vsource.sym} -450 -140 1 0 {name=V2 value="SIN(0 100u 10hz 0 0 0" savecurrent=false}
C {devices/gnd.sym} -500 -70 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -380 -190 0 0 {name=p2 sig_type=std_logic lab=VIN1}
C {devices/vsource.sym} -225 -275 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -180 -275 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -230 -100 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -200 -80 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -130 -210 0 0 {name=p3 sig_type=std_logic lab=VOUT}
C {devices/code.sym} -320 -5 0 0 {name=FF_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ff

"
spice_ignore=false}
C {devices/code_shown.sym} -35 -250 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1m 100m
plot VIN1 VIN2 VOUT
.endc
"}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -200 -210 0 0 {name=x1}
