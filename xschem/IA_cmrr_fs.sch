v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -510 -55 -510 -35 {
lab=GND}
N -115 -45 -115 -25 {
lab=GND}
N -480 -300 -480 -280 {
lab=GND}
N -295 -135 -265 -135 {
lab=INP}
N -295 -175 -295 -135 {
lab=INP}
N -295 -175 -265 -175 {
lab=INP}
N -360 -330 -360 -280 {
lab=GND}
N -480 -280 -360 -280 {
lab=GND}
N -360 -430 -360 -390 {
lab=INP}
N -305 -155 -295 -155 {
lab=INP}
N -480 -405 -480 -360 {
lab=INN}
N -700 -170 -660 -170 {
lab=INN}
N -700 -130 -660 -130 {
lab=INP}
N -490 -150 -410 -150 {
lab=OUT}
N -435 -150 -435 -130 {
lab=OUT}
N -95 -155 -40 -155 {
lab=OUT1}
N -55 -155 -55 -135 {
lab=OUT1}
N -430 -280 -430 -250 {
lab=GND}
N -115 -215 -100 -215 {
lab=GND}
N -510 -220 -490 -220 {
lab=GND}
N -175 -215 -175 -205 {
lab=#net1}
N -175 -105 -175 -45 {
lab=#net2}
N -175 -75 -55 -75 {
lab=#net2}
N -140 -120 -105 -120 {
lab=GND}
N -570 -100 -570 -55 {
lab=#net3}
N -570 -70 -435 -70 {
lab=#net3}
N -535 -115 -510 -115 {
lab=GND}
N -570 -220 -570 -200 {
lab=#net4}
C {devices/vsource.sym} -480 -330 0 0 {name=V6 value="AC 1 180" savecurrent=false}
C {devices/vsource.sym} -360 -360 0 0 {name=V5 value="AC 1 0" savecurrent=false}
C {devices/gnd.sym} -430 -250 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -540 -220 3 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -490 -220 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -540 -55 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -510 -35 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -145 -215 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -100 -215 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -145 -45 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -115 -25 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -480 -385 0 0 {name=p1 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -360 -400 0 0 {name=p2 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -420 -150 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -45 -155 0 0 {name=p4 sig_type=std_logic lab=OUT1}
C {devices/code_shown.sym} -70 -460 0 0 {name=s2 only_toplevel=false value="
.control
save all
ac dec 100 1 10G
let Ad = \{v(OUT)/(v(INP)-v(INN))\}
let Acm = \{v(OUT1)/v(INP)\}
let CMRR = \{20*log(Ad/Acm)\}
let Ao = \{20*log(Ad)\}
save Ad Acm CMRR Ao
write IA_cmrr_fs.raw
plot CMRR
plot Ao
.endc
"}
C {devices/code.sym} -250 -410 0 0 {name=FS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice fs

"
spice_ignore=false}
C {sky130_fd_pr/cap_mim_m3_1.sym} -55 -105 0 0 {name=C2 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -435 -100 0 0 {name=C3 model=cap_mim_m3_1 W=5 L=10 MF=50 spiceprefix=X}
C {devices/lab_wire.sym} -300 -155 0 0 {name=p5 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -675 -170 0 0 {name=p6 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -675 -130 0 0 {name=p7 sig_type=std_logic lab=INP}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -510 -150 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -115 -155 0 0 {name=x2}
C {devices/gnd.sym} -105 -120 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -510 -115 0 0 {name=l7 lab=GND}
