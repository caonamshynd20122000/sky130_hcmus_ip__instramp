v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -445 -140 -290 -140 {
lab=#net1}
N -445 -140 -445 -125 {
lab=#net1}
N -445 -65 -445 -35 {
lab=GND}
N -480 -180 -290 -180 {
lab=GND}
N -480 -180 -480 -45 {
lab=GND}
N -480 -45 -445 -45 {
lab=GND}
N -435 255 -435 285 {
lab=GND}
N -435 140 -280 140 {
lab=#net2}
N -435 140 -435 195 {
lab=#net2}
N -280 180 -280 270 {
lab=GND}
N -435 270 -280 270 {
lab=GND}
N -190 75 -190 110 {
lab=VDD}
N -190 210 -190 240 {
lab=VSS}
N -200 -240 -200 -210 {
lab=VDD}
N -200 -110 -200 -75 {
lab=VSS}
N -100 400 -100 425 {
lab=GND}
N -100 300 -100 340 {
lab=VSS}
N -40 400 -40 425 {
lab=GND}
N -40 300 -40 340 {
lab=VDD}
N -120 -160 -60 -160 {
lab=VOUT1}
N -110 160 -55 160 {
lab=VOUT2}
N -165 -125 -165 -105 {
lab=GND}
N -155 195 -155 210 {
lab=GND}
C {devices/vsource.sym} -445 -95 0 0 {name=V1 value="SIN (0 10m 10hz )" savecurrent=false}
C {devices/gnd.sym} -445 -35 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -435 225 0 0 {name=V2 value="SIN (0 10m 10hz )" savecurrent=false}
C {devices/gnd.sym} -435 285 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -100 370 0 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -100 425 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -100 325 1 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -190 240 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -200 -75 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -40 370 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -40 425 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -40 325 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -190 90 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -200 -225 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/code.sym} -750 135 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 85 -230 0 0 {name=s1 only_toplevel=false value="
.control
save all
*tran 1m 100m
dc V1 -1.8 1.8 1m
write v1.raw
dc V2 -1.8 1.8 1m
write v2.raw
*write instramp_offset.raw
.endc
"}
C {devices/lab_wire.sym} -65 -160 0 0 {name=p7 sig_type=std_logic lab=VOUT1}
C {devices/lab_wire.sym} -60 160 0 0 {name=p8 sig_type=std_logic lab=VOUT2}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -140 -160 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/IA.sym} -130 160 0 0 {name=x2}
C {devices/gnd.sym} -165 -105 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -155 210 0 0 {name=l6 lab=GND}
