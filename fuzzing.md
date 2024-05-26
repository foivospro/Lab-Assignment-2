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
