.title hw4_p3a
.options post



**** inlude model file ****
.inc  ../par0.18um.net


**** Components ****
*R1 Vout 0 1k
M1 Vds Vg 0 0 N_18 W=25u L=0.5u AS=0.6u AD=0.6u PS=51.2u PD=51.2u
*M1 Vout Vg Vdd Vdd P_18 W=60u L=0.5u AS=0.6u AD=0.6u PS=121.2u PD=121.2u


**** Sources ****
V1 Vds 0 DC=1.8V
Vin Vg 0 DC=0.872V

**** Controls ****                                          
*.ac DEC 10 1 1000000000
.dc V1 0.01v 1.8v 0.01v
.op
*.print dc gmo(m1)
.print dc i(m1)

.end
