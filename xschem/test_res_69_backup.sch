v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 720 -1070 1520 -670 {flags=graph
y1=998.862
y2=1000.79
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
node=res
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 580 -510 580 -470 {
lab=GND}
N 450 -610 480 -610 {
lab=Vin}
N 450 -610 450 -570 {
lab=Vin}
N 540 -610 580 -610 {
lab=#net1}
N 450 -510 450 -470 {
lab=GND}
N 580 -610 580 -570 {
lab=#net1}
N 560 -540 560 -490 {
lab=GND}
N 560 -490 580 -490 {
lab=GND}
C {devices/vsource.sym} 450 -540 0 0 {name=V1 value=1}
C {devices/code_shown.sym} 780 -605 0 0 {name=s2 only_toplevel=false value="
* R = 1000 ---> L = 19.55, mult = 10
.control
save all
tran 0.1u 10u
let res = \{v(vin)/i(v_ires)\}
save res
write test_res_69.raw
meas tran R1 find res at=5u
.endc"}
C {devices/code.sym} 1190 -590 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/ammeter.sym} 510 -610 3 0 {name=V_ires}
C {devices/gnd.sym} 450 -470 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 450 -610 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/launcher.sym} 430 -780 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/test_res_69.raw tran"
}
C {devices/gnd.sym} 580 -470 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/res_high_po_0p69.sym} 1640 -1010 0 0 {name=R64k
L=129.40
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 1640 -910 0 0 {name=R32k
L=129.40
model=res_high_po_0p69
spiceprefix=X
mult=2}
C {sky130_fd_pr/res_high_po_0p69.sym} 1640 -810 0 0 {name=R16k
L=129.40
model=res_high_po_0p69
spiceprefix=X
mult=4}
C {sky130_fd_pr/res_high_po_0p69.sym} 1640 -710 0 0 {name=R8k
L=129.40
model=res_high_po_0p69
spiceprefix=X
mult=8}
C {sky130_fd_pr/res_high_po_0p69.sym} 1640 -610 0 0 {name=R4k
L=129.40
model=res_high_po_0p69
spiceprefix=X
mult=16}
C {sky130_fd_pr/res_high_po_0p69.sym} 1640 -510 0 0 {name=R2k
L=129.40
model=res_high_po_0p69
spiceprefix=X
mult=32}
C {sky130_fd_pr/res_high_po_0p69.sym} 1640 -410 0 0 {name=R1k
L=129.40
model=res_high_po_0p69
spiceprefix=X
mult=64}
C {sky130_fd_pr/res_high_po_0p69.sym} 580 -540 0 0 {name=R1
L=129.40
model=res_high_po_0p69
spiceprefix=X
mult=64}
