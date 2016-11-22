.title hw5_p3
.options post

**** inlude model file ****
.inc  ../par0.18um.net


**** Components ****
Rg Vin Vg 1k
Rd Vdd Vout 1k
C1 Vout 0 1p
M1 Vout Vg 0 0 N_18 W=150u L=1u AS=90p AD=90p PS=301.2u PD=301.2u
*M2 Vout Vg2 Vdd Vdd P_18 W=60u L=0.5u AS=0.6u AD=0.6u PS=121.2u PD=121.2u


**** Sources ****
V1 Vdd 0 DC=1.8V
V2 Vin 0 DC=0.6V
 
**** Controls ****                                          
*.ac DEC 10 1 1000000000
.dc V2 0v 1.8v 0.01v
.op all
*.print dc gmo(m1)
*.print dc i(m1)
*.print dc vth(m1)
*.print dc (m1)
*.print dc v(m2)

.end
