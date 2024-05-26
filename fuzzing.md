## Answers to Lab Exercise 3 Part 2 - SeiP 2024
Name:
### Task 1
Answer:

Results of Fuzzing

id:000000,sig:06,src:000002,time:290,execs:152,op:havoc,rep:6
^z^{ ?  ) (     ;      ^f   %  f    ^^@  r^Y lR|5^`^g^@  ^p< M)^l  ^Dl ?*@A^i^R  ^'OG^F  \ ^V  ^y  4_>

id:000001,sig:06,src:000002,time:1400,execs:783,op:havoc,rep:5
^z^{ ?  ) (     ; (     ;      ^f   %  fr^Y lR|5^`^h^@   < M)^l  ^Dl ?*@A^i^R  ^'OG^F  \ ^V E  p<v   >

id:000002,sig:06,src:000002,time:3730,execs:2134,op:havoc,rep:3     
^@^@^D^@  ) (     ;      ^f   %  f    ^^@  r^Y lR|5^`^h^@   < M)^l V^Dl ?*@A^i^R  ^'OG^F  \ ^V E  p<v>


Crash Points
If the first or the last character of the string is the null character (\0):
If there are two consecutive digits where the second digit is exactly one greater than the first. Like "123" or "890" will cause the program to crash.



### Task 2
Answer:

Results of Fuzzing

id:000000,sig:06,src:000001,time:900,execs:519,op:havoc,rep:10
 _ ^Lf^~i^j  ],^@-^p tZ $^D*  ^bZE^@-^pf^~i^j  ],^@-^p tZ $ * ^A^A ^bZE {   ^A ^K  ^a  7 Ol ^w l {  V>

id:000001,sig:06,src:000001,time:1190,execs:706,op:havoc,rep:14
 _ Lf^~i^j  _^g^Lf^~i^j  ]l^@P^p tZ $],^@P^p tZr  ^a ^@^@ 9 ^a  97>


id:000002,sig:06,src:000001,time:1900,execs:1115,op:havoc,rep:15
ttt^@^] ^K^K>^K^K^K^K^K^K^K^K^K^K^K^K^K^K^K^K^K^K l ^w^K^K^K^K^K^K1^P^P f]^K^K^K^K^K^K^K^K^K^K f]^K^K^K^K^K^K^K^K^K^K^K>

id:000003,sig:06,src:000001,time:12650,execs:7108,op:havoc,rep:6
 _ ^Lf ^`^~h^j  P^`^Lf^wi^j  ],^@-l _ ^Lfl _ ^Lf^~i^ri^r^@^@^@d, tt^?t^Z 9

id:000004,sig:06,src:000001,time:32700,execs:18320,op:havoc,rep:16
 _ffPflllLllhl  ^q-^p fffffffffff^yfGfffffffffffR^@lll^`lKm ^P^@^@^@  m ^P^@^@^@m ^Ph^@^@^@^@h rh rh rhll^]  7 9


### Task 3
Answer:

id:000000,sig:06,src:000000,time:20681,execs:14413,op:havoc,rep:2
 g c* ^Affff^Av@ l^N^_   1   .lrv@ ^l;^W.^   ^X ^@^D^NX
 
id:000001,sig:06,src:000000+000038,time:57302,execs:39352,op:splice,rep:15
 g c* ^Av@ ^l;^W@^l^m^l^mlNllc* ^l^f^?ffdfv@ llkX;v@ ll6llc* ^l^f^?ffdff        ffffX;ffffff

 
id:000002,sig:06,src:000033+000030,time:60222,execs:41040,op:splice,rep:1
 g hhhhc* ^Affffffff^Av@ l  g

id:000003,sig:06,src:000039+000033,time:64152,execs:43392,op:splice,rep:7
 ttt   g ttt   g cccccVccffff#v@ g c*  l^@  v@ ^l;^W.^

id:000004,sig:06,src:000048,time:65072,execs:43951,op:havoc,rep:12
^@^Dttg c* ^A|f  . ' ^Afff^D^@txtt^`^@^@ lllllLllllllc* ^l;f^?ffdfffff^@tKKKKKKtf ^yf


id:000005,sig:06,src:000033,time:69732,execs:46851,op:havoc,rep:13
 D c*  fffffffv ~^q^@-O ^^^ K ^cf v@ l 1 vv g c*hhh ^Av@ ^lhhvvv^@-O ^^^ K ^cf v@ l^u1 vv g cvvD ^l;^>


id:000006,sig:06,src:000052+000049,time:80353,execs:53475,op:splice,rep:12
ffffl ^XWfc*^g f q ^N\fvdff^yf~Fm    ^N\fvdff^yf~Fm   ^X T r*
