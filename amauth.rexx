/* REXX */ 
tcb_ptr = c2x(storage(d2x(x2d("21C")),4)) 
jscb_ptr = c2x(storage(d2x(x2d(tcb_ptr) + x2d("B4")),4)) 
JSCBOPTS_addr = d2x(x2d(jscb_ptr) + x2d(EC)) 
JSCBOPTS = storage(JSCBOPTS_addr,1) 
say '<'X2B(C2X(JSCBOPTS))'>' 
return 123 
                                                                       
create_buffer: 
parse arg repeat_chars,iterations 
buffer = '' 
do I = 1 to iterations 
  buffer = buffer||repeat_chars 
end 
return buffer 
debrujin: 
parse arg len 
UPPERCASE = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" 
LOWERCASE = "abcdefghijklmnopqrstuvwxyz" 
ALLDIGITS = "1234567890" 
pattern = "" 
do u=1 to length(UPPERCASE) 
  do l=1 to length(LOWERCASE) 
    do d=1 to length(ALLDIGITS) 
      if length(pattern) < len   then 
        do 
          ucase = substr(UPPERCASE, u, 1) 
          lower = substr(LOWERCASE, l, 1) 
          digit = substr(ALLDIGITS, d, 1) 
          pattern = pattern || ucase || lower || digit 
        end 
    end 
  end 
end 
return substr(pattern, 1, len) 
