.title hw4_p2
.options post



**** inlude model file ****
.inc  ../par0.18um.net


**** Components ****
M1 Vout Vg1 0 0 N_18 W=25u L=0.5u AS=0.6u AD=0.6u PS=51.2u PD=51.2u
M2 Vout Vg2 Vdd Vdd P_18 W=60u L=0.5u AS=0.6u AD=0.6u PS=121.2u PD=121.2u


**** Sources ****
V1 Vdd 0 DC=1.8V
Vbias Vg2 0 DC=0.83145V
Vin Vg1 0 DC=0.872V AC=1V

**** Controls ****                                          
.ac DEC 10 1 1000000000
*.dc Vbias 0v 1.8v 0.01v
.op
.print dc gmo(m1)
.print dc i(m1)
.print dc i(m2)
.print dc v(m1)
.print dc v(m2)

.end
