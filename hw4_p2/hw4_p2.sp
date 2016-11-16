.title hw4_p2
.options post



**** inlude model file ****
.inc  ../par0.18um.net


**** Components ****
R1 Vout 0 1k
*M1 Vout Vg 0 0 N_18 W=25u L=0.5u AS=0.6u AD=0.6u PS=51.2u PD=51.2u
M1 Vout Vg Vdd Vdd P_18 W=60u L=0.5u AS=0.6u AD=0.6u PS=121.2u PD=121.2u


**** Sources ****
V1 Vdd 0 DC=1.8V
Vin Vg 0 DC=1V AC=1V

**** Controls ****                                          
.ac DEC 10 1 1000000000
.dc Vin 0v 1.8v 0.01v
.op
.print dc gmo(m1)
.print dc i(m1)

.end
