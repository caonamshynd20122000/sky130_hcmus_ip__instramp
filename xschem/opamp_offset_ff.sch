v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -95 35 -65 35 {
lab=GND}
N -95 35 -95 65 {
lab=GND}
N 205 95 205 125 {
lab=GND}
N 205 15 235 15 {
lab=VOUT0}
N 215 -165 215 -135 {
lab=GND}
N 215 -245 245 -245 {
lab=VOUT1}
N -85 -265 -65 -265 {
lab=GND}
N -85 -265 -85 -145 {
lab=GND}
N 20 -5 35 -5 {
lab=GND}
N 20 -95 20 -5 {
lab=GND}
N 120 55 120 95 {
lab=#net1}
N 120 95 145 95 {
lab=#net1}
N -5 -95 60 -95 {
lab=GND}
N -5 -95 -5 -65 {
lab=GND}
N 120 -95 120 -25 {
lab=#net2}
N 130 -355 130 -285 {
lab=#net3}
N 5 -355 70 -355 {
lab=GND}
N 5 -355 5 -325 {
lab=GND}
N 130 -165 155 -165 {
lab=#net4}
N 130 -205 130 -165 {
lab=#net4}
N -5 35 35 35 {
lab=VIN0}
N -5 -265 45 -265 {
lab=VIN1}
N -85 -225 45 -225 {
lab=GND}
C {devices/vsource.sym} 90 -95 1 0 {name=V2 value=1.8 savecurrent=false}
C {devices/vsource.sym} 175 95 3 0 {name=V1 value=-1.8 savecurrent=false}
C {devices/vsource.sym} -35 35 1 0 {name=V3 value=1 savecurrent=false}
C {devices/gnd.sym} 205 125 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -95 65 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -5 -65 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 235 15 0 0 {name=p1 sig_type=std_logic lab=VOUT0}
C {devices/vsource.sym} 185 -165 3 0 {name=V5 value=-1.8 savecurrent=false}
C {devices/vsource.sym} -35 -265 1 0 {name=V6 value=1 savecurrent=false}
C {devices/gnd.sym} 215 -135 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -85 -145 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 5 -325 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 245 -245 0 0 {name=p2 sig_type=std_logic lab=VOUT1}
C {devices/lab_wire.sym} 30 -265 0 0 {name=p3 sig_type=std_logic lab=VIN1}
C {devices/lab_wire.sym} 20 35 0 0 {name=p4 sig_type=std_logic lab=VIN0}
C {devices/vsource.sym} 100 -355 1 0 {name=V4 value=1.8 savecurrent=false}
C {devices/code_shown.sym} 325 -250 0 0 {name=s1 only_toplevel=false value="
.control
save all
*tran 1m 100m
dc V3 -1.8 1.8 1m
write v3_offset.raw
dc V6 -1.8 1.8 1m
write v6_offset.raw
.endc
"}
C {devices/code.sym} -240 -90 0 0 {name=FF_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ff

"
spice_ignore=false}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} 195 -245 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} 185 15 0 0 {name=x2}
