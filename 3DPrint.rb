########################### 
#sample paths buffer 1 
########################### 
P1 = "/path/P3D1.wav" 
P2 = "/path/P3D2.wav" 
P3 = "/path/P3D3.wav" 
P4 = "/path/P3D4.wav" 
P5 = "/path/P3D5.wav" 
P6 = "/path/P3D6.wav" 
P7 = "/path/P3D7.wav" 
P8 = "/path/P3D8.wav" 
P9 = "/path/P3D9.wav" 

######################### 
# Mix: min 0 , max 1 #buffer 2 
######################### 
level1 =0.0 
level2 =0.0 
level3 =0.0 
level4 =0.0 
level5 =0.0 
level6 =0.0 
level7 =0.0 
level8 =0.6 
level9 =0.0 

################################ 
#definitions PLAY WITH THEM buffer 2 
################################ 
define :p1 do 
with_fx :level, amp: level1 do 
with_fx :slicer, phase: 0.1, wave: 1, mix: 0 do 
sample P1, attack: 0, sustain: 3, rate: 0.2 
end 
sleep sample_duration P1 
end 
end 

define :p2 do 
with_fx :level, amp: level2 do 
with_fx :echo, amp: 0.2 do 
sample P2, rate: 1 
sleep sample_duration (P1) 
end 
end 
end 

define :p3 do 
with_fx :level, amp: level3 do 
sample P3, rate: 1 
sleep sample_duration (P1) 
end 
end 

define :p4 do 
with_fx :level, amp: level4 do 
sample P4, rate: 1 
sleep sample_duration (P1) 
end 
end 

define :p5 do 
with_fx :level, amp: level5 do 
sample P5, rate: 1 
sleep sample_duration (P1) 
end 
end 


define :p6 do 
with_fx :level, amp: level6 do 
sample P6, rate: 1 
sleep sample_duration (P1) 
end 
end 

define :p7 do 
with_fx :level, amp: level7 do 
sample P7, rate: 1 
sleep sample_duration (P1) 
end 
end 

define :p8 do 
with_fx :echo, mix: 1 do 
with_fx :level, amp: level8 do 
sample P8, rate: 0.2 
sleep sample_duration (P1) 
end 
end 
end 

define :p9 do 
with_fx :level, amp: level9 do 
sample P9, rate: 1 
sleep sample_duration (P1) 
end 
end 

######################### 
#Run the definitions BUFFER0 
######################### 
in_thread do 
loop do 
p1 
end 
end 

in_thread do 
loop do 
p2 
end 
end 

in_thread do 
loop do 
p3 
end 
end 

in_thread do 
loop do 
p4 
end 
end 

in_thread do 
loop do 
p5 
end 
end 

in_thread do 
loop do 
p6 
end 
end 

in_thread do 
loop do 
p7 
end 
end 

in_thread do 
loop do 
p8 
end 
end 

in_thread do 
loop do 
p9 
end 
end
