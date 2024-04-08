v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -505 0 -505 20 {
lab=GND}
N -110 -5 -110 15 {
lab=GND}
N -470 -260 -470 -240 {
lab=GND}
N -285 -95 -255 -95 {
lab=INP}
N -285 -135 -285 -95 {
lab=INP}
N -285 -135 -255 -135 {
lab=INP}
N -350 -290 -350 -240 {
lab=GND}
N -470 -240 -350 -240 {
lab=GND}
N -350 -390 -350 -350 {
lab=INP}
N -295 -115 -285 -115 {
lab=INP}
N -170 -175 -170 -155 {
lab=#net1}
N -170 -175 -165 -175 {
lab=#net1}
N -565 -180 -565 -150 {
lab=#net2}
N -470 -365 -470 -320 {
lab=INN}
N -690 -130 -650 -130 {
lab=INN}
N -690 -90 -650 -90 {
lab=INP}
N -480 -110 -400 -110 {
lab=OUT}
N -425 -110 -425 -90 {
lab=OUT}
N -85 -115 -30 -115 {
lab=OUT1}
N -45 -115 -45 -95 {
lab=OUT1}
N -420 -240 -420 -210 {
lab=GND}
N -105 -175 -90 -175 {
lab=GND}
N -505 -180 -485 -180 {
lab=GND}
N -565 -70 -565 0 {
lab=#net3}
N -565 -30 -425 -30 {
lab=#net3}
N -170 -75 -170 -5 {
lab=#net4}
N -170 -35 -45 -35 {
lab=#net4}
C {devices/vsource.sym} -470 -290 0 0 {name=V6 value="AC 1 180" savecurrent=false}
C {devices/vsource.sym} -350 -320 0 0 {name=V5 value="AC 1 0" savecurrent=false}
C {devices/gnd.sym} -420 -210 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -535 -180 3 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -485 -180 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -535 0 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -505 20 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -135 -175 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -90 -175 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -140 -5 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -110 15 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -470 -345 0 0 {name=p1 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -350 -360 0 0 {name=p2 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -410 -110 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -35 -115 0 0 {name=p4 sig_type=std_logic lab=OUT1}
C {devices/code_shown.sym} -60 -420 0 0 {name=s2 only_toplevel=false value="
.control
save all
ac dec 100 1 10G
let Ad = \{v(OUT)/(v(INP)-v(INN))\}
let Acm = \{v(OUT1)/v(INP)\}
let CMRR = \{20*log(Ad/Acm)\}
let Ao = \{20*log(Ad)\}
save Ad Acm CMRR Ao
write opamp_cmrr.raw
plot CMRR
plot Ao
.endc
"}
C {devices/code.sym} -240 -370 0 0 {name=SS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
C {sky130_fd_pr/cap_mim_m3_1.sym} -45 -65 0 0 {name=C2 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -425 -60 0 0 {name=C3 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {devices/lab_wire.sym} -290 -115 0 0 {name=p5 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -665 -130 0 0 {name=p6 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -665 -90 0 0 {name=p7 sig_type=std_logic lab=INP}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -500 -110 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -105 -115 0 0 {name=x2}
