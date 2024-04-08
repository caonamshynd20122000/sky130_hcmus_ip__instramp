v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -220 190 -200 190 {
lab=GND}
N -220 190 -220 230 {
lab=GND}
N 260 170 320 170 {
lab=VOUT}
N 170 90 200 90 {
lab=GND}
N 200 90 200 115 {
lab=GND}
N 180 240 200 240 {
lab=GND}
N 200 240 200 270 {
lab=GND}
N 95 240 120 240 {
lab=#net1}
N 95 210 95 240 {
lab=#net1}
N 95 90 110 90 {
lab=#net2}
N 95 90 95 130 {
lab=#net2}
N 180 170 260 170 {
lab=VOUT}
N -10 190 10 190 {
lab=VIN}
N 10 50 10 150 {
lab=VOUT}
N 10 50 260 50 {
lab=VOUT}
N 260 50 260 170 {
lab=VOUT}
N -140 190 -10 190 {
lab=VIN}
C {devices/vsource.sym} -170 190 1 0 {name=V1 value="SIN (0 1u 10hz)" savecurrent=false}
C {devices/gnd.sym} -220 230 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 315 170 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} 140 90 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} 200 115 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 150 240 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} 200 270 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -50 190 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} 160 170 0 0 {name=x1}
C {devices/code.sym} -390 230 0 0 {name=FS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice fs

"
spice_ignore=false}
C {devices/code_shown.sym} -320 -50 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1m 100m
plot VOUT VIN
*write buffer_fs.raw
.endc
"}
