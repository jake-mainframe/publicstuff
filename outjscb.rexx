/* REXX */


tcb_ptr = c2x(storage(d2x(x2d("21C")),4))
jscb_ptr = c2x(storage(d2x(x2d(tcb_ptr) + x2d("B4")),4))

JSCBOPTS_addr = d2x(x2d(jscb_ptr) + x2d(EC))

JSCBOPTS = storage(JSCBOPTS_addr,1)

say '<'X2B(C2X(JSCBOPTS))'>'

return 0
