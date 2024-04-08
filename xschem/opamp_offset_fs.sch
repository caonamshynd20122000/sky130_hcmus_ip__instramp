v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -805 -145 -775 -145 {
lab=GND}
N -805 -145 -805 -115 {
lab=GND}
N -505 -85 -505 -55 {
lab=GND}
N -505 -165 -475 -165 {
lab=VOUT0}
N -495 -345 -495 -315 {
lab=GND}
N -495 -425 -465 -425 {
lab=VOUT1}
N -795 -445 -775 -445 {
lab=GND}
N -795 -445 -795 -325 {
lab=GND}
N -690 -185 -675 -185 {
lab=GND}
N -690 -275 -690 -185 {
lab=GND}
N -590 -125 -590 -85 {
lab=#net1}
N -590 -85 -565 -85 {
lab=#net1}
N -715 -275 -650 -275 {
lab=GND}
N -715 -275 -715 -245 {
lab=GND}
N -590 -275 -590 -205 {
lab=#net2}
N -580 -535 -580 -465 {
lab=#net3}
N -705 -535 -640 -535 {
lab=GND}
N -705 -535 -705 -505 {
lab=GND}
N -580 -345 -555 -345 {
lab=#net4}
N -580 -385 -580 -345 {
lab=#net4}
N -715 -145 -675 -145 {
lab=VIN0}
N -715 -445 -665 -445 {
lab=VIN1}
N -795 -405 -665 -405 {
lab=GND}
C {devices/vsource.sym} -620 -275 1 0 {name=V2 value=1.8 savecurrent=false}
C {devices/vsource.sym} -535 -85 3 0 {name=V1 value=-1.8 savecurrent=false}
C {devices/vsource.sym} -745 -145 1 0 {name=V3 value=1 savecurrent=false}
C {devices/gnd.sym} -505 -55 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -805 -115 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -715 -245 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -475 -165 0 0 {name=p1 sig_type=std_logic lab=VOUT0}
C {devices/vsource.sym} -525 -345 3 0 {name=V5 value=-1.8 savecurrent=false}
C {devices/vsource.sym} -745 -445 1 0 {name=V6 value=1 savecurrent=false}
C {devices/gnd.sym} -495 -315 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -795 -325 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -705 -505 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} -465 -425 0 0 {name=p2 sig_type=std_logic lab=VOUT1}
C {devices/lab_wire.sym} -680 -445 0 0 {name=p3 sig_type=std_logic lab=VIN1}
C {devices/lab_wire.sym} -690 -145 0 0 {name=p4 sig_type=std_logic lab=VIN0}
C {devices/vsource.sym} -610 -535 1 0 {name=V4 value=1.8 savecurrent=false}
C {devices/code_shown.sym} -385 -430 0 0 {name=s1 only_toplevel=false value="
.control
save all
*tran 1m 100m
dc V3 -1.8 1.8 1m
write v3_offset.raw
dc V6 -1.8 1.8 1m
write v6_offset.raw
.endc
"}
C {devices/code.sym} -950 -270 0 0 {name=FS_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice fs

"
spice_ignore=false}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -515 -425 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -525 -165 0 0 {name=x2}
