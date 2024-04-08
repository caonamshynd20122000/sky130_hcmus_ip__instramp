v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -420 45 -420 65 {
lab=GND}
N -25 55 -25 75 {
lab=GND}
N -390 -200 -390 -180 {
lab=GND}
N -205 -35 -175 -35 {
lab=INP}
N -205 -75 -205 -35 {
lab=INP}
N -205 -75 -175 -75 {
lab=INP}
N -270 -230 -270 -180 {
lab=GND}
N -390 -180 -270 -180 {
lab=GND}
N -270 -330 -270 -290 {
lab=INP}
N -215 -55 -205 -55 {
lab=INP}
N -390 -305 -390 -260 {
lab=INN}
N -610 -70 -570 -70 {
lab=INN}
N -610 -30 -570 -30 {
lab=INP}
N -400 -50 -320 -50 {
lab=OUT}
N -345 -50 -345 -30 {
lab=OUT}
N -5 -55 50 -55 {
lab=OUT1}
N 35 -55 35 -35 {
lab=OUT1}
N -340 -180 -340 -150 {
lab=GND}
N -25 -115 -10 -115 {
lab=GND}
N -420 -120 -400 -120 {
lab=GND}
N -85 -115 -85 -105 {
lab=#net1}
N -85 -5 -85 55 {
lab=#net2}
N -85 25 35 25 {
lab=#net2}
N -50 -20 -15 -20 {
lab=GND}
N -480 0 -480 45 {
lab=#net3}
N -480 30 -345 30 {
lab=#net3}
N -445 -15 -420 -15 {
lab=GND}
N -480 -120 -480 -100 {
lab=#net4}
C {devices/vsource.sym} -390 -230 0 0 {name=V6 value="AC 1 180" savecurrent=false}
C {devices/vsource.sym} -270 -260 0 0 {name=V5 value="AC 1 0" savecurrent=false}
C {devices/gnd.sym} -340 -150 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -450 -120 3 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -400 -120 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -450 45 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -420 65 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -55 -115 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -10 -115 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -55 55 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -25 75 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -390 -285 0 0 {name=p1 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -270 -300 0 0 {name=p2 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -330 -50 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 45 -55 0 0 {name=p4 sig_type=std_logic lab=OUT1}
C {devices/code_shown.sym} 20 -360 0 0 {name=s2 only_toplevel=false value="
.control
save all
ac dec 100 1 10G
let Ad = \{v(OUT)/(v(INP)-v(INN))\}
let Acm = \{v(OUT1)/v(INP)\}
let CMRR = \{20*log(Ad/Acm)\}
let Ao = \{20*log(Ad)\}
save Ad Acm CMRR Ao
write IA_cmrr.raw
plot CMRR
plot Ao
.endc
"}
C {devices/code.sym} -160 -310 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/cap_mim_m3_1.sym} 35 -5 0 0 {name=C2 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -345 0 0 0 {name=C3 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {devices/lab_wire.sym} -210 -55 0 0 {name=p5 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -585 -70 0 0 {name=p6 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -585 -30 0 0 {name=p7 sig_type=std_logic lab=INP}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -420 -50 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -25 -55 0 0 {name=x2}
C {devices/gnd.sym} -15 -20 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -420 -15 0 0 {name=l7 lab=GND}
