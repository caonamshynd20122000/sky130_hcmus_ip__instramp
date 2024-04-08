v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -535 10 -535 30 {
lab=GND}
N -140 5 -140 25 {
lab=GND}
N -500 -250 -500 -230 {
lab=GND}
N -315 -85 -285 -85 {
lab=INP}
N -315 -125 -315 -85 {
lab=INP}
N -315 -125 -285 -125 {
lab=INP}
N -380 -280 -380 -230 {
lab=GND}
N -500 -230 -380 -230 {
lab=GND}
N -380 -380 -380 -340 {
lab=INP}
N -325 -105 -315 -105 {
lab=INP}
N -200 -165 -200 -145 {
lab=#net1}
N -200 -165 -195 -165 {
lab=#net1}
N -595 -170 -595 -140 {
lab=#net2}
N -500 -355 -500 -310 {
lab=INN}
N -720 -120 -680 -120 {
lab=INN}
N -720 -80 -680 -80 {
lab=INP}
N -510 -100 -430 -100 {
lab=OUT}
N -455 -100 -455 -80 {
lab=OUT}
N -115 -105 -60 -105 {
lab=OUT1}
N -75 -105 -75 -85 {
lab=OUT1}
N -450 -230 -450 -200 {
lab=GND}
N -135 -165 -120 -165 {
lab=GND}
N -535 -170 -515 -170 {
lab=GND}
N -595 -60 -595 10 {
lab=#net3}
N -595 -20 -455 -20 {
lab=#net3}
N -200 -65 -200 5 {
lab=#net4}
N -200 -25 -75 -25 {
lab=#net4}
C {devices/vsource.sym} -500 -280 0 0 {name=V6 value="AC 1 180" savecurrent=false}
C {devices/vsource.sym} -380 -310 0 0 {name=V5 value="AC 1 0" savecurrent=false}
C {devices/gnd.sym} -450 -200 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -565 -170 3 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -515 -170 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -565 10 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -535 30 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -165 -165 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -120 -165 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -170 5 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -140 25 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -500 -335 0 0 {name=p1 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -380 -350 0 0 {name=p2 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -440 -100 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -65 -105 0 0 {name=p4 sig_type=std_logic lab=OUT1}
C {devices/code_shown.sym} -90 -410 0 0 {name=s2 only_toplevel=false value="
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
C {devices/code.sym} -270 -360 0 0 {name=FS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice fs

"
spice_ignore=false}
C {sky130_fd_pr/cap_mim_m3_1.sym} -75 -55 0 0 {name=C2 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -455 -50 0 0 {name=C3 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {devices/lab_wire.sym} -320 -105 0 0 {name=p5 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -695 -120 0 0 {name=p6 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -695 -80 0 0 {name=p7 sig_type=std_logic lab=INP}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -530 -100 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -135 -105 0 0 {name=x2}
