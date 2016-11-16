.title CommSource
.options post



**** inlude model file ****
.inc  ../par0.18um.net


**** Components ****

M1 Vout Vb vd Vd P_18 W=3u L=1u M=2
M2 Vout Vg 0 0 N_18 W=3u L=1u M=2


**** Sources ****

Vdd Vd 0 DC=1.8v
Vin Vg 0 


**** Controls ****                                          
.dc Vin 0v 1.8v 0.01v                        
.op
.print dc v(Vout)


.end
