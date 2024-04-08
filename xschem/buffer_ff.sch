v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -480 -70 -460 -70 {
lab=GND}
N -480 -70 -480 -30 {
lab=GND}
N 0 -90 60 -90 {
lab=VOUT}
N -90 -170 -60 -170 {
lab=GND}
N -60 -170 -60 -145 {
lab=GND}
N -80 -20 -60 -20 {
lab=GND}
N -60 -20 -60 10 {
lab=GND}
N -165 -20 -140 -20 {
lab=#net1}
N -165 -50 -165 -20 {
lab=#net1}
N -165 -170 -150 -170 {
lab=#net2}
N -165 -170 -165 -130 {
lab=#net2}
N -80 -90 0 -90 {
lab=VOUT}
N -270 -70 -250 -70 {
lab=VIN}
N -250 -210 -250 -110 {
lab=VOUT}
N -250 -210 0 -210 {
lab=VOUT}
N 0 -210 0 -90 {
lab=VOUT}
N -400 -70 -270 -70 {
lab=VIN}
C {devices/vsource.sym} -430 -70 1 0 {name=V1 value="SIN (0 1000u 50Mhz)" savecurrent=false}
C {devices/gnd.sym} -480 -30 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 55 -90 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} -120 -170 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -60 -145 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -110 -20 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -60 10 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -310 -70 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -100 -90 0 0 {name=x1}
C {devices/code_shown.sym} -580 -310 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1m 20
plot VOUT VIN
*write buffer_ff.raw
.endc
"}
C {sky130_fd_pr/corner.sym} -730 -200 0 0 {name=CORNER only_toplevel=true corner=ff}
