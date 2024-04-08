v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -390 45 -390 65 {
lab=GND}
N 5 55 5 75 {
lab=GND}
N -360 -200 -360 -180 {
lab=GND}
N -175 -35 -145 -35 {
lab=INP}
N -175 -75 -175 -35 {
lab=INP}
N -175 -75 -145 -75 {
lab=INP}
N -240 -230 -240 -180 {
lab=GND}
N -360 -180 -240 -180 {
lab=GND}
N -240 -330 -240 -290 {
lab=INP}
N -185 -55 -175 -55 {
lab=INP}
N -360 -305 -360 -260 {
lab=INN}
N -580 -70 -540 -70 {
lab=INN}
N -580 -30 -540 -30 {
lab=INP}
N -370 -50 -290 -50 {
lab=OUT}
N -315 -50 -315 -30 {
lab=OUT}
N 25 -55 80 -55 {
lab=OUT1}
N 65 -55 65 -35 {
lab=OUT1}
N -310 -180 -310 -150 {
lab=GND}
N 5 -115 20 -115 {
lab=GND}
N -390 -120 -370 -120 {
lab=GND}
N -55 -115 -55 -105 {
lab=#net1}
N -55 -5 -55 55 {
lab=#net2}
N -55 25 65 25 {
lab=#net2}
N -20 -20 15 -20 {
lab=GND}
N -450 0 -450 45 {
lab=#net3}
N -450 30 -315 30 {
lab=#net3}
N -415 -15 -390 -15 {
lab=GND}
N -450 -120 -450 -100 {
lab=#net4}
C {devices/vsource.sym} -360 -230 0 0 {name=V6 value="AC 1 180" savecurrent=false}
C {devices/vsource.sym} -240 -260 0 0 {name=V5 value="AC 1 0" savecurrent=false}
C {devices/gnd.sym} -310 -150 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -420 -120 3 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -370 -120 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -420 45 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -390 65 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -25 -115 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} 20 -115 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -25 55 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} 5 75 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -360 -285 0 0 {name=p1 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -240 -300 0 0 {name=p2 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -300 -50 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 75 -55 0 0 {name=p4 sig_type=std_logic lab=OUT1}
C {devices/code_shown.sym} 50 -360 0 0 {name=s2 only_toplevel=false value="
.control
save all
ac dec 100 1 10G
let Ad = \{v(OUT)/(v(INP)-v(INN))\}
let Acm = \{v(OUT1)/v(INP)\}
let CMRR = \{20*log(Ad/Acm)\}
let Ao = \{20*log(Ad)\}
save Ad Acm CMRR Ao
write IA_cmrr_ff.raw
plot CMRR
plot Ao
.endc
"}
C {devices/code.sym} -130 -310 0 0 {name=FF_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ff

"
spice_ignore=false}
C {sky130_fd_pr/cap_mim_m3_1.sym} 65 -5 0 0 {name=C2 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -315 0 0 0 {name=C3 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {devices/lab_wire.sym} -180 -55 0 0 {name=p5 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -555 -70 0 0 {name=p6 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -555 -30 0 0 {name=p7 sig_type=std_logic lab=INP}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -390 -50 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} 5 -55 0 0 {name=x2}
C {devices/gnd.sym} 15 -20 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -390 -15 0 0 {name=l7 lab=GND}
