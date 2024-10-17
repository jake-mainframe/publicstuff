/* REXX */ 
                                                                 
ascb_ptr = c2x(storage(d2x(x2d("224")),4)) 
asxb_ptr = c2x(storage(d2x(x2d(ascb_ptr) + x2d("6c")),4)) 
acee_ptr = c2x(storage(d2x(x2d(asxb_ptr) + x2d("c8")),4)) 
                                                                 
                                                                 
ACEEUSRI_ptr = d2x(x2d(acee_ptr) + x2d("15")) 
ACEEUSRI = storage(ACEEUSRI_ptr,8) 
ACEEFLG1_ptr = d2x(x2d(acee_ptr) + x2d("26")) 
ACEEFLG1 = x2b(c2x(storage(ACEEFLG1_ptr,3))) 
                                                                 
SOMEACEE = storage(acee_ptr,50) 
/* variable 'acee_ptr' points to the ACEE */ 
                                                                 
say acee_ptr 
say C2X(SOMEACEE) 
say ACEEUSRI_ptr 
say ACEEUSRI 
say ACEEFLG1_ptr 
say ACEEFLG1 
