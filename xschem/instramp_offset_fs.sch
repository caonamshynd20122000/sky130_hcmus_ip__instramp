v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -855 -540 -700 -540 {
lab=#net1}
N -855 -540 -855 -525 {
lab=#net1}
N -855 -465 -855 -435 {
lab=GND}
N -890 -580 -700 -580 {
lab=GND}
N -890 -580 -890 -445 {
lab=GND}
N -890 -445 -855 -445 {
lab=GND}
N -845 -145 -845 -115 {
lab=GND}
N -845 -260 -690 -260 {
lab=#net2}
N -845 -260 -845 -205 {
lab=#net2}
N -690 -220 -690 -130 {
lab=GND}
N -845 -130 -690 -130 {
lab=GND}
N -600 -325 -600 -290 {
lab=VDD}
N -600 -190 -600 -160 {
lab=VSS}
N -610 -640 -610 -610 {
lab=VDD}
N -610 -510 -610 -475 {
lab=VSS}
N -510 0 -510 25 {
lab=GND}
N -510 -100 -510 -60 {
lab=VSS}
N -450 0 -450 25 {
lab=GND}
N -450 -100 -450 -60 {
lab=VDD}
N -530 -560 -470 -560 {
lab=VOUT1}
N -520 -240 -465 -240 {
lab=VOUT2}
N -575 -525 -575 -505 {
lab=GND}
N -565 -205 -565 -190 {
lab=GND}
C {devices/vsource.sym} -855 -495 0 0 {name=V1 value="SIN (0 10m 10hz )" savecurrent=false}
C {devices/gnd.sym} -855 -435 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -845 -175 0 0 {name=V2 value="SIN (0 10m 10hz )" savecurrent=false}
C {devices/gnd.sym} -845 -115 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -510 -30 0 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -510 25 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -510 -75 1 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -600 -160 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -610 -475 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -450 -30 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -450 25 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -450 -75 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -600 -310 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -610 -625 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/code.sym} -1160 -265 0 0 {name=FS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice fs

"
spice_ignore=false}
C {devices/code_shown.sym} -325 -630 0 0 {name=s1 only_toplevel=false value="
.control
save all
*tran 1m 100m
dc V1 -1.8 1.8 1m
write v1.raw
dc V2 -1.8 1.8 1m
write v2.raw
*write instramp_offset_fs.raw
.endc
"}
C {devices/lab_wire.sym} -475 -560 0 0 {name=p7 sig_type=std_logic lab=VOUT1}
C {devices/lab_wire.sym} -470 -240 0 0 {name=p8 sig_type=std_logic lab=VOUT2}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -550 -560 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -540 -240 0 0 {name=x2}
C {devices/gnd.sym} -575 -505 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -565 -190 0 0 {name=l6 lab=GND}
