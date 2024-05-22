v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 450 -1270 1250 -870 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
node=""
color=""
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
C {devices/gnd.sym} 580 -470 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 450 -540 0 0 {name=V1 value="1"}
C {devices/code_shown.sym} 1020 -755 0 0 {name=s2 only_toplevel=false value="
.param L = 1
.options savecurrents
.save all
.control

let start_l = 1
let stop_l = 10
let delta_l = 1
let l_act = start_l

save all

while l_act le stop_l
  alterparam L = $&l_act
  *reset
  *op
  *remzerovec
  write test_res_69_v3.raw
  set appendwrite
  
  let l_act = l_act + delta_l
  let res = \{v(vin)/i(v_ires)\}
  save res
end
.endc"}
C {devices/code.sym} 460 -800 0 0 {name=TT_MODELS
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
C {sky130_fd_pr/res_high_po_0p69.sym} 850 -630 0 0 {name=R1
L=19.55
model=res_high_po_0p69
spiceprefix=X
mult=10}
C {sky130_fd_pr/res_high_po_0p69.sym} 680 -630 0 0 {name=R2
L=1.24
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 580 -540 0 0 {name=R3
L=\{L\}
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {devices/launcher.sym} 710 -770 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/test_res_69_v3.raw tran"
}
