v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1280 -800 -480 -400 {flags=graph
y1=-1e-05
y2=1e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
N -700 -120 -680 -120 {
lab=GND}
N -700 -120 -700 -80 {
lab=GND}
N -220 -140 -160 -140 {
lab=VOUT}
N -310 -220 -280 -220 {
lab=GND}
N -280 -220 -280 -195 {
lab=GND}
N -300 -70 -280 -70 {
lab=GND}
N -280 -70 -280 -40 {
lab=GND}
N -385 -70 -360 -70 {
lab=#net1}
N -385 -100 -385 -70 {
lab=#net1}
N -385 -220 -370 -220 {
lab=#net2}
N -385 -220 -385 -180 {
lab=#net2}
N -300 -140 -220 -140 {
lab=VOUT}
N -490 -120 -470 -120 {
lab=VIN}
N -470 -260 -470 -160 {
lab=VOUT}
N -470 -260 -220 -260 {
lab=VOUT}
N -220 -260 -220 -140 {
lab=VOUT}
N -620 -120 -490 -120 {
lab=VIN}
C {devices/vsource.sym} -650 -120 1 0 {name=V1 value="SIN (0 1u 100hz)" savecurrent=false}
C {devices/gnd.sym} -700 -80 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -165 -140 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} -340 -220 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -280 -195 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -330 -70 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -280 -40 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -530 -120 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/launcher.sym} -1210 -320 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/buffer.raw tran"
}
C {devices/code_shown.sym} -330 -580 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1m 100m
write buffer.raw
.endc
"}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -320 -140 0 0 {name=x1}
C {sky130_fd_pr/corner.sym} -960 -220 0 0 {name=CORNER only_toplevel=true corner=tt}
