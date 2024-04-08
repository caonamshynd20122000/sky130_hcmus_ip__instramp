v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -745 -570 -590 -570 {
lab=#net1}
N -745 -570 -745 -555 {
lab=#net1}
N -745 -495 -745 -465 {
lab=GND}
N -780 -610 -590 -610 {
lab=GND}
N -780 -610 -780 -475 {
lab=GND}
N -780 -475 -745 -475 {
lab=GND}
N -735 -175 -735 -145 {
lab=GND}
N -735 -290 -580 -290 {
lab=#net2}
N -735 -290 -735 -235 {
lab=#net2}
N -580 -250 -580 -160 {
lab=GND}
N -735 -160 -580 -160 {
lab=GND}
N -490 -355 -490 -320 {
lab=VDD}
N -490 -220 -490 -190 {
lab=VSS}
N -500 -670 -500 -640 {
lab=VDD}
N -500 -540 -500 -505 {
lab=VSS}
N -400 -30 -400 -5 {
lab=GND}
N -400 -130 -400 -90 {
lab=VSS}
N -340 -30 -340 -5 {
lab=GND}
N -340 -130 -340 -90 {
lab=VDD}
N -420 -590 -360 -590 {
lab=VOUT1}
N -410 -270 -355 -270 {
lab=VOUT2}
N -465 -555 -465 -535 {
lab=GND}
N -455 -235 -455 -220 {
lab=GND}
C {devices/vsource.sym} -745 -525 0 0 {name=V1 value="SIN (0 10m 10hz )" savecurrent=false}
C {devices/gnd.sym} -745 -465 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -735 -205 0 0 {name=V2 value="SIN (0 10m 10hz )" savecurrent=false}
C {devices/gnd.sym} -735 -145 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -400 -60 0 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -400 -5 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -400 -105 1 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -490 -190 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -500 -505 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -340 -60 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -340 -5 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -340 -105 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -490 -340 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -500 -655 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/code.sym} -1050 -295 0 0 {name=FF_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ff

"
spice_ignore=false}
C {devices/code_shown.sym} -215 -660 0 0 {name=s1 only_toplevel=false value="
.control
save all
*tran 1m 100m
dc V1 -1.8 1.8 1m
write v1.raw
dc V2 -1.8 1.8 1m
write v2.raw
*write instramp_offset_ff.raw
.endc
"}
C {devices/lab_wire.sym} -365 -590 0 0 {name=p7 sig_type=std_logic lab=VOUT1}
C {devices/lab_wire.sym} -360 -270 0 0 {name=p8 sig_type=std_logic lab=VOUT2}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -440 -590 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -430 -270 0 0 {name=x2}
C {devices/gnd.sym} -465 -535 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -455 -220 0 0 {name=l6 lab=GND}
