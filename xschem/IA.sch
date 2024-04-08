v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -510 -500 -280 -500 {
lab=VOUT}
N -440 -940 -340 -940 {
lab=VOUT}
N -340 -940 -340 -500 {
lab=VOUT}
N -740 -520 -680 -520 {
lab=#net1}
N -740 -940 -740 -520 {
lab=#net1}
N -740 -480 -680 -480 {
lab=#net2}
N -740 -480 -740 -80 {
lab=#net2}
N -1140 -940 -1140 -880 {
lab=#net3}
N -1140 -140 -1140 -80 {
lab=#net4}
N -1440 -960 -1370 -960 {
lab=#net5}
N -1440 -960 -1440 -620 {
lab=#net5}
N -1440 -620 -1140 -620 {
lab=#net5}
N -1440 -100 -1370 -100 {
lab=#net6}
N -1440 -440 -1440 -100 {
lab=#net6}
N -1440 -440 -1140 -440 {
lab=#net6}
N -440 -80 -280 -80 {
lab=G}
N -595 -580 -595 -540 {
lab=VDD}
N -595 -460 -595 -420 {
lab=VSS}
N -1505 -920 -1370 -920 {
lab=V2}
N -1500 -60 -1370 -60 {
lab=V1}
N -1285 -160 -1285 -120 {
lab=VDD}
N -1285 -40 -1285 0 {
lab=VSS}
N -1285 -1020 -1285 -980 {
lab=VDD}
N -1285 -900 -1285 -870 {
lab=VSS}
N -1120 -530 -1080 -530 {
lab=VSS}
N -765 -990 -765 -960 {
lab=VSS}
N -880 -80 -740 -80 {
lab=#net2}
N -1140 -500 -1140 -440 {
lab=#net6}
N -1140 -820 -1140 -750 {
lab=#net7}
N -1140 -690 -1140 -620 {
lab=#net5}
N -1120 -850 -1120 -720 {
lab=VSS}
N -1120 -720 -1120 -530 {
lab=VSS}
N -1000 -940 -940 -940 {
lab=#net8}
N -1140 -940 -1060 -940 {
lab=#net3}
N -1030 -960 -910 -960 {
lab=VSS}
N -770 -960 -620 -960 {
lab=VSS}
N -910 -960 -770 -960 {
lab=VSS}
N -620 -960 -470 -960 {
lab=VSS}
N -740 -940 -650 -940 {
lab=#net1}
N -880 -940 -740 -940 {
lab=#net1}
N -590 -940 -500 -940 {
lab=#net9}
N -1140 -620 -1140 -560 {
lab=#net5}
N -1140 -440 -1140 -350 {
lab=#net6}
N -1140 -290 -1140 -200 {
lab=#net10}
N -1120 -320 -1120 -170 {
lab=VSS}
N -1120 -530 -1120 -320 {
lab=VSS}
N -1140 -80 -1060 -80 {
lab=#net4}
N -1200 -80 -1140 -80 {
lab=#net4}
N -1000 -80 -940 -80 {
lab=#net11}
N -1030 -100 -910 -100 {
lab=VSS}
N -580 -100 -470 -100 {
lab=VSS}
N -550 -80 -500 -80 {
lab=#net12}
N -740 -80 -610 -80 {
lab=#net2}
N -1200 -940 -1140 -940 {
lab=#net3}
C {sky130_fd_pr/res_high_po.sym} -470 -940 1 0 {name=R1
W=1
L=62
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} -910 -940 1 0 {name=R4
W=1
L=62
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} -470 -80 1 0 {name=R6
W=1
L=62
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} -910 -80 1 0 {name=R8
W=1
L=62
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} -1140 -850 2 0 {name=R9
W=1
L=62
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} -1140 -170 2 0 {name=R12
W=1
L=62
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} -1140 -530 2 0 {name=R13
W=1
L=62
model=res_high_po
spiceprefix=X
mult=1}
C {devices/opin.sym} -280 -500 0 0 {name=p5 lab=VOUT}
C {devices/iopin.sym} -280 -80 0 0 {name=p1 lab=G}
C {devices/lab_wire.sym} -1495 -920 0 0 {name=p6 sig_type=std_logic lab=V2}
C {devices/lab_wire.sym} -1285 -140 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1495 -60 0 0 {name=p3 sig_type=std_logic lab=V1}
C {devices/lab_wire.sym} -1285 -15 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -595 -555 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -1285 -1000 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -595 -440 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1285 -890 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -1080 -530 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -765 -990 1 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -965 -100 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -540 -100 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -1430 -570 0 0 {name=p15 lab=VDD
}
C {devices/ipin.sym} -1430 -530 0 0 {name=p16 lab=VSS
}
C {devices/ipin.sym} -1430 -490 0 0 {name=p17 lab=V1
}
C {devices/ipin.sym} -1430 -460 0 0 {name=p18 lab=V2
}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -1220 -940 0 0 {name=x1}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -1220 -80 0 0 {name=x2}
C {/foss/designs/chipalooza2024/sky130_hcmus_ip__instramp/xschem/opamp.sym} -530 -500 0 0 {name=x3}
C {sky130_fd_pr/res_high_po.sym} -1140 -720 2 0 {name=R2
W=1
L=62
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} -1030 -940 1 0 {name=R3
W=1
L=62
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} -620 -940 1 0 {name=R5
W=1
L=62
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} -1140 -320 2 0 {name=R7
W=1
L=62
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} -1030 -80 1 0 {name=R10
W=1
L=62
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} -580 -80 1 0 {name=R11
W=1
L=62
model=res_high_po
spiceprefix=X
mult=1}
