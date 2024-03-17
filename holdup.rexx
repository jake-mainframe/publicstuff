/* REXX */

ascb_ptr = c2x(storage(d2x(x2d("224")),4))
assb_ptr = c2x(storage(d2x(x2d(ascb_ptr) + x2d("150")),4))
jsab_ptr = c2x(storage(d2x(x2d(assb_ptr) + x2d("a8")),4))

JSABJBNM_addr = d2x(x2d(jsab_ptr) + x2d(1C))
JSABJBNM_addr_just = c2x(RIGHT(X2C(JSABJBNM_addr),4,X2C("00")))
JSABJBNM = storage(JSABJBNM_addr,8)

say JSABJBNM_addr_just
say JSABJBNM

call syscalls 'ON'
address syscall 'sleep' 10000
