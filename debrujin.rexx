/* REXX */ 
/* Simplistic De Brujin pattern generator in REXX                     */ 
/* SYNTAX: BRUJIN <pattern length>                                    */ 
parse arg len 
/* Alphabets                                                          */ 
UPPERCASE = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" 
LOWERCASE = "abcdefghijklmnopqrstuvwxyz" 
ALLDIGITS = "1234567890" 
debruj.1 = debrujin(len) 
debruj.0 = 1 
                                                                         
"ALLOC DA('"JAKE.FB32760"(TESTDEB)') F(TESTDEB) SHR REUSE" 
"EXECIO * DISKW TESTDEB (STEM debruj. FINIS" 
"FREE F(TESTDEB)" 
                                                                         
exit 
debrujin: 
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
