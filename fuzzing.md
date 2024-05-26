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
 _ Lf^~i^j  _^g^Lf^~i^j  ]l^@P^p tZ $],^@P^p tZ ^c^c$^W^c^r  ^a ^K^c^c$^W^c^r ^W^c^r  ^a ^@^@***************^@ 9 ^a  97>

id:000002,sig:06,src:000001,time:1900,execs:1115,op:havoc,rep:15
ttt^@^] ^K^K>^K^K^K^K^K^K^K^K^K^K^K^K^K^K^K^K^K^K l ^w^K^K^K^K^K^K1^P^P f]^K^K^K^K^K^K^K^K^K^K f]^K^K^K^K^K^K^K^K^K^K^K>

id:000003,sig:06,src:000001,time:12650,execs:7108,op:havoc,rep:6
 _ ^Lf ^`^~h^j  P^`^Lf^wi^j  ],^@-l _ ^Lfl _ ^Lf^~i^ri^r^@^@^@d, tt^?t^Z 9

id:000004,sig:06,src:000001,time:32700,execs:18320,op:havoc,rep:16
 _ffPflllLllhl  ^q-^p fffffffffff^yfGfffffffffffR^@lll^`lKm ^P^@^@^@  m ^P^@^@^@m ^Ph^@^@^@^@h rh rh rhll^]  7 9


