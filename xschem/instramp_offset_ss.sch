v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -915 -570 -760 -570 {
lab=#net1}
N -915 -570 -915 -555 {
lab=#net1}
N -915 -495 -915 -465 {
lab=GND}
N -950 -610 -760 -610 {
lab=GND}
N -950 -610 -950 -475 {
lab=GND}
N -950 -475 -915 -475 {
lab=GND}
N -905 -175 -905 -145 {
lab=GND}
N -905 -290 -750 -290 {
lab=#net2}
N -905 -290 -905 -235 {
lab=#net2}
N -750 -250 -750 -160 {
lab=GND}
N -905 -160 -750 -160 {
lab=GND}
N -660 -355 -660 -320 {
lab=VDD}
N -660 -220 -660 -190 {
lab=VSS}
N -670 -670 -670 -640 {
lab=VDD}
N -670 -540 -670 -505 {
lab=VSS}
N -570 -30 -570 -5 {
lab=GND}
N -570 -130 -570 -90 {
lab=VSS}
N -510 -30 -510 -5 {
lab=GND}
N -510 -130 -510 -90 {
lab=VDD}
N -590 -590 -530 -590 {
lab=VOUT1}
N -580 -270 -525 -270 {
lab=VOUT2}
N -635 -555 -635 -535 {
lab=GND}
N -625 -235 -625 -220 {
lab=GND}
C {devices/vsource.sym} -915 -525 0 0 {name=V1 value="SIN (0 10m 10hz )" savecurrent=false}
C {devices/gnd.sym} -915 -465 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -905 -205 0 0 {name=V2 value="SIN (0 10m 10hz )" savecurrent=false}
C {devices/gnd.sym} -905 -145 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -570 -60 0 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -570 -5 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -570 -105 1 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -660 -190 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -670 -505 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -510 -60 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -510 -5 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -510 -105 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -660 -340 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -670 -655 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/code.sym} -1220 -295 0 0 {name=SS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss

"
spice_ignore=false}
C {devices/code_shown.sym} -385 -660 0 0 {name=s1 only_toplevel=false value="
.control
save all
*tran 1m 100m
dc V1 -1.8 1.8 1m
write v1.raw
dc V2 -1.8 1.8 1m
write v2.raw
*write instramp_offset_ss.raw
.endc
"}
C {devices/lab_wire.sym} -535 -590 0 0 {name=p7 sig_type=std_logic lab=VOUT1}
C {devices/lab_wire.sym} -530 -270 0 0 {name=p8 sig_type=std_logic lab=VOUT2}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -610 -590 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -600 -270 0 0 {name=x2}
C {devices/gnd.sym} -635 -535 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -625 -220 0 0 {name=l6 lab=GND}
