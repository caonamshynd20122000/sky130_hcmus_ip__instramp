v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -370 -80 -350 -80 {
lab=GND}
N -370 -80 -370 -40 {
lab=GND}
N 110 -100 170 -100 {
lab=VOUT}
N 20 -180 50 -180 {
lab=GND}
N 50 -180 50 -155 {
lab=GND}
N 30 -30 50 -30 {
lab=GND}
N 50 -30 50 0 {
lab=GND}
N -55 -30 -30 -30 {
lab=#net1}
N -55 -60 -55 -30 {
lab=#net1}
N -55 -180 -40 -180 {
lab=#net2}
N -55 -180 -55 -140 {
lab=#net2}
N 30 -100 110 -100 {
lab=VOUT}
N -160 -80 -140 -80 {
lab=VIN}
N -140 -220 -140 -120 {
lab=VOUT}
N -140 -220 110 -220 {
lab=VOUT}
N 110 -220 110 -100 {
lab=VOUT}
N -290 -80 -160 -80 {
lab=VIN}
C {devices/vsource.sym} -320 -80 1 0 {name=V1 value="SIN (0 1u 10hz)" savecurrent=false}
C {devices/gnd.sym} -370 -40 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 165 -100 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} -10 -180 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} 50 -155 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 0 -30 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} 50 0 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -200 -80 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} 10 -100 0 0 {name=x1}
C {devices/code.sym} -540 -40 0 0 {name=SS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
C {devices/code_shown.sym} -470 -320 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1m 100m
plot VOUT VIN
*write buffer_ss.raw
.endc
"}
