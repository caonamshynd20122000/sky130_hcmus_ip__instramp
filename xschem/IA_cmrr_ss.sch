v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -670 -15 -670 5 {
lab=GND}
N -275 -5 -275 15 {
lab=GND}
N -640 -260 -640 -240 {
lab=GND}
N -455 -95 -425 -95 {
lab=INP}
N -455 -135 -455 -95 {
lab=INP}
N -455 -135 -425 -135 {
lab=INP}
N -520 -290 -520 -240 {
lab=GND}
N -640 -240 -520 -240 {
lab=GND}
N -520 -390 -520 -350 {
lab=INP}
N -465 -115 -455 -115 {
lab=INP}
N -640 -365 -640 -320 {
lab=INN}
N -860 -130 -820 -130 {
lab=INN}
N -860 -90 -820 -90 {
lab=INP}
N -650 -110 -570 -110 {
lab=OUT}
N -595 -110 -595 -90 {
lab=OUT}
N -255 -115 -200 -115 {
lab=OUT1}
N -215 -115 -215 -95 {
lab=OUT1}
N -590 -240 -590 -210 {
lab=GND}
N -275 -175 -260 -175 {
lab=GND}
N -670 -180 -650 -180 {
lab=GND}
N -335 -175 -335 -165 {
lab=#net1}
N -335 -65 -335 -5 {
lab=#net2}
N -335 -35 -215 -35 {
lab=#net2}
N -300 -80 -265 -80 {
lab=GND}
N -730 -60 -730 -15 {
lab=#net3}
N -730 -30 -595 -30 {
lab=#net3}
N -695 -75 -670 -75 {
lab=GND}
N -730 -180 -730 -160 {
lab=#net4}
C {devices/vsource.sym} -640 -290 0 0 {name=V6 value="AC 1 180" savecurrent=false}
C {devices/vsource.sym} -520 -320 0 0 {name=V5 value="AC 1 0" savecurrent=false}
C {devices/gnd.sym} -590 -210 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -700 -180 3 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -650 -180 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -700 -15 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -670 5 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -305 -175 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -260 -175 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -305 -5 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -275 15 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -640 -345 0 0 {name=p1 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -520 -360 0 0 {name=p2 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -580 -110 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -205 -115 0 0 {name=p4 sig_type=std_logic lab=OUT1}
C {devices/code_shown.sym} -230 -420 0 0 {name=s2 only_toplevel=false value="
.control
save all
ac dec 100 1 10G
let Ad = \{v(OUT)/(v(INP)-v(INN))\}
let Acm = \{v(OUT1)/v(INP)\}
let CMRR = \{20*log(Ad/Acm)\}
let Ao = \{20*log(Ad)\}
save Ad Acm CMRR Ao
write IA_cmrr_ss.raw
plot CMRR
plot Ao
.endc
"}
C {devices/code.sym} -410 -370 0 0 {name=SS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
C {sky130_fd_pr/cap_mim_m3_1.sym} -215 -65 0 0 {name=C2 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -595 -60 0 0 {name=C3 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {devices/lab_wire.sym} -460 -115 0 0 {name=p5 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -835 -130 0 0 {name=p6 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -835 -90 0 0 {name=p7 sig_type=std_logic lab=INP}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -670 -110 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -275 -115 0 0 {name=x2}
C {devices/gnd.sym} -265 -80 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -670 -75 0 0 {name=l7 lab=GND}
