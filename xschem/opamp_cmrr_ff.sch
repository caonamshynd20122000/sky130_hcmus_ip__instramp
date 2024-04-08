v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -335 90 -335 110 {
lab=GND}
N 60 85 60 105 {
lab=GND}
N -300 -170 -300 -150 {
lab=GND}
N -115 -5 -85 -5 {
lab=INP}
N -115 -45 -115 -5 {
lab=INP}
N -115 -45 -85 -45 {
lab=INP}
N -180 -200 -180 -150 {
lab=GND}
N -300 -150 -180 -150 {
lab=GND}
N -180 -300 -180 -260 {
lab=INP}
N -125 -25 -115 -25 {
lab=INP}
N 0 -85 0 -65 {
lab=#net1}
N 0 -85 5 -85 {
lab=#net1}
N -395 -90 -395 -60 {
lab=#net2}
N -300 -275 -300 -230 {
lab=INN}
N -520 -40 -480 -40 {
lab=INN}
N -520 0 -480 0 {
lab=INP}
N -310 -20 -230 -20 {
lab=OUT}
N -255 -20 -255 0 {
lab=OUT}
N 85 -25 140 -25 {
lab=OUT1}
N 125 -25 125 -5 {
lab=OUT1}
N -250 -150 -250 -120 {
lab=GND}
N 65 -85 80 -85 {
lab=GND}
N -335 -90 -315 -90 {
lab=GND}
N -395 20 -395 90 {
lab=#net3}
N -395 60 -255 60 {
lab=#net3}
N 0 15 0 85 {
lab=#net4}
N 0 55 125 55 {
lab=#net4}
C {devices/vsource.sym} -300 -200 0 0 {name=V6 value="AC 1 180" savecurrent=false}
C {devices/vsource.sym} -180 -230 0 0 {name=V5 value="AC 1 0" savecurrent=false}
C {devices/gnd.sym} -250 -120 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -365 -90 3 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -315 -90 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -365 90 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -335 110 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 35 -85 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} 80 -85 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 30 85 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} 60 105 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -300 -255 0 0 {name=p1 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -180 -270 0 0 {name=p2 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -240 -20 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} 135 -25 0 0 {name=p4 sig_type=std_logic lab=OUT1}
C {devices/code_shown.sym} 110 -330 0 0 {name=s2 only_toplevel=false value="
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
C {devices/code.sym} -70 -280 0 0 {name=FF_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ff

"
spice_ignore=false}
C {sky130_fd_pr/cap_mim_m3_1.sym} 125 25 0 0 {name=C2 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -255 30 0 0 {name=C3 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {devices/lab_wire.sym} -120 -25 0 0 {name=p5 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -495 -40 0 0 {name=p6 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -495 0 0 0 {name=p7 sig_type=std_logic lab=INP}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -330 -20 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} 65 -25 0 0 {name=x2}
