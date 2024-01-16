/* REXX */
parse arg DUMP NEWDUMP OLDSTR NEWSTR
DUMP = "TS3552.JAKE"
NEWDUMP = "TS3552.JAKE2"
OLDSTR = "TS3552.APFLOAD"
NEWSTR = "TS3552.APFLOA2"

DUMPDSN = "'"||DUMP||"'"
NDUMPDSN = "'"||NEWDUMP||"'"


"DELETE "NDUMPDSN

"ALLOC DA("||NDUMPDSN||") F(NDUMPFI) LIKE("||DUMPDSN||") CATALOG BLKSIZE(27998)"
"ALLOC DA("||DUMPDSN||") F(DUMPFI) SHR REU"
"EXECIO * DISKR DUMPFI (STEM DUMPST. FINIS"

NDUMPST.0 = DUMPST.0

do Z = 1 to DUMPST.0
  NDUMPST.Z = DUMPST.Z
  index = 1
  do while pos(OLDSTR,DUMPST.Z,index) /= 0
    current_loc = pos(OLDSTR,DUMPST.Z,index)
    x = current_loc-1
    y = current_loc + length(NEWSTR)
    say x 
    say y
    NDUMPST.Z = substr(NDUMPST.Z,1,x)||NEWSTR||substr(NDUMPST.Z,y)
    index = current_loc + 1  
  end
end

"EXECIO * DISKW NDUMPFI (STEM NDUMPST. FINIS"

"FREE DA("||NDUMPDSN||")"
"FREE DA("||DUMPDSN||")"