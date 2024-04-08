v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1015 -90 -1015 -70 {
lab=GND}
N -620 -95 -620 -75 {
lab=GND}
N -980 -350 -980 -330 {
lab=GND}
N -795 -185 -765 -185 {
lab=INP}
N -795 -225 -795 -185 {
lab=INP}
N -795 -225 -765 -225 {
lab=INP}
N -860 -380 -860 -330 {
lab=GND}
N -980 -330 -860 -330 {
lab=GND}
N -860 -480 -860 -440 {
lab=INP}
N -805 -205 -795 -205 {
lab=INP}
N -980 -455 -980 -410 {
lab=INN}
N -1200 -220 -1160 -220 {
lab=INN}
N -1200 -180 -1160 -180 {
lab=INP}
N -990 -200 -910 -200 {
lab=OUT}
N -935 -200 -935 -180 {
lab=OUT}
N -595 -205 -540 -205 {
lab=OUT1}
N -555 -205 -555 -185 {
lab=OUT1}
N -930 -330 -930 -300 {
lab=GND}
N -615 -265 -600 -265 {
lab=GND}
N -1015 -270 -995 -270 {
lab=GND}
N -1075 -120 -935 -120 {
lab=#net1}
N -680 -125 -555 -125 {
lab=#net2}
N -675 -265 -675 -255 {
lab=#net3}
N -680 -155 -680 -95 {
lab=#net2}
N -680 -155 -675 -155 {
lab=#net2}
N -1070 -260 -1070 -250 {
lab=#net4}
N -1075 -260 -1070 -260 {
lab=#net4}
N -1075 -270 -1075 -260 {
lab=#net4}
N -1075 -150 -1070 -150 {}
N -1075 -150 -1075 -90 {}
C {devices/vsource.sym} -980 -380 0 0 {name=V6 value="AC 1 180" savecurrent=false}
C {devices/vsource.sym} -860 -410 0 0 {name=V5 value="AC 1 0" savecurrent=false}
C {devices/gnd.sym} -930 -300 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -1045 -270 3 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -995 -270 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -1045 -90 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -1015 -70 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -645 -265 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -600 -265 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -650 -95 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -620 -75 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -980 -435 0 0 {name=p1 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -860 -450 0 0 {name=p2 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -920 -200 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -545 -205 0 0 {name=p4 sig_type=std_logic lab=OUT1}
C {devices/code_shown.sym} -570 -510 0 0 {name=s2 only_toplevel=false value="
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
C {devices/code.sym} -750 -460 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/cap_mim_m3_1.sym} -555 -155 0 0 {name=C2 model=cap_mim_m3_1 W=5.55 L=10 MF=40 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -935 -150 0 0 {name=C3 model=cap_mim_m3_1 W=5.55 L=10 MF=40 spiceprefix=X}
C {devices/lab_wire.sym} -800 -205 0 0 {name=p5 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -1175 -220 0 0 {name=p6 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -1175 -180 0 0 {name=p7 sig_type=std_logic lab=INP}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -1010 -200 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -615 -205 0 0 {name=x2}
