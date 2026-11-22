;----------------------------------
;Ushio St File By TONYADV
;----------------------------------

;Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, Assert]
type = AssertSpecial
trigger1 = Time = [0,150]
flag = roundnotover

[State 170, Voce]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10,1

[State 170]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3,1

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Win state decider
[Statedef 180]
type = S

[State 180]
type = ChangeState
trigger1 = Var(4) = 1
value = 183

[State 180]
type = ChangeState
triggerall = Var(4) = 0
trigger1 = MatchOver = 0
value = 181

[State 180]
type = ChangeState
triggerall = Var(4) = 0
trigger1 = MatchOver = 1
value = 182

;-----------------------------------------
;-----------------------------------------
;Win pose 1
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, Assert]
type = AssertSpecial
trigger1 = Time = [0,140]
flag = roundnotover

[State 181, Voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 16,0

[State 181, Mouth]
type = Explod
trigger1 = Time = 20
anim = 193
ID = 193
pos = 1,0
postype = p1
bindtime = 60
sprpriority = 10
removetime = 60
removeongethit = 1

[State 181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-----------------------------------------
;-----------------------------------------
;Win pose 2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, Assert]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = roundnotover

[State 182]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3,1

[State 182, Voce]
type = PlaySnd
trigger1 = AnimElem = 2
value = 17,0

[State 182, Mouth]
type = Explod
trigger1 = AnimElem = 2
anim = 193
ID = 193
pos = 1,-1
postype = p1
bindtime = 15
sprpriority = 10
removetime = 15
removeongethit = 1

[State 182, Mouth]
type = Explod
trigger1 = AnimElem = 2
anim = 193
ID = 193
pos = 2,-1
postype = p1
bindtime = 15
sprpriority = 10
removetime = 15
removeongethit = 1

[State 182, Mouth]
type = Explod
trigger1 = AnimElem = 3
anim = 193
ID = 193
pos = 3,-1
postype = p1
bindtime = 90
sprpriority = 10
removetime = 90
removeongethit = 1

[State 182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-----------------------------------------
;-----------------------------------------
;Win pose Fatality
[Statedef 183]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 183, Assert]
type     = AssertSpecial
trigger1 = Time = [0,220]
flag     = roundnotover

[State 183, Helper]
type = Helper
trigger1 = Time = 0
name = "Rigel"
ID = 184
stateno = 184
pos = 0,0
postype = back
facing = 1
keyctrl = 0
ownpal = 1

[State 183, Voice]
type = PlaySnd
trigger1 = Time = 7
value = 18,3

[State 183, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------
;Professor Rigel
[Statedef 184]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 185
sprpriority = 3

[State 184]
type = VelSet
trigger1 = Time < 160
x = const(velocity.walk.fwd.x) / 3

[State 184]
type = PlaySnd
triggerall = Anim = 185
trigger1 = (Time % 42) = 0
value = 3,0

[State 184]
type = PlaySnd
triggerall = Anim = 185
trigger1 = ((Time + 21) % 42) = 0
value = 3,1

[State 184]
type = PlaySnd
trigger1 = Time = 160
value = 3,1

[State 184]
type = VelSet
trigger1 = Time = 160
x = 0

[State 184]
type = ChangeAnim
trigger1 = Time = 160
value = 186

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;intro state decider
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 190]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 191

[State 190]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 192

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Intro 1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = Intro

[State 191, Voce]
type = PlaySnd
trigger1 = AnimElem = 9
value = 12,2

[State 191]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1

[State 191]
type = PlaySnd
trigger1 = AnimElem = 7
value = 5,2

[State 191]
type = PlaySnd
trigger1 = AnimElem = 10
value = 4,1

[State 191, eletrik]
type = Explod
trigger1 = AnimElem = 10
pos = 0,0
anim = 8000
sprpriority = 4
ownpal = 1
supermove = 1
removetime = 80

[State 191, pesc]
type = Explod
trigger1 = time = 170
pos = -25,-65
anim = 6000
ID = 6000
sprpriority = -2
ownpal = 1
supermove = 1

[State 191, polvere]
type = Explod
trigger1 = AnimElem = 10
pos = 2,2
anim = 7010
sprpriority = -2
ownpal = 1
supermove = 1
scale = .8,.8

[State 191]
type = ModifyExplod
trigger1 = time = 170
ID = 6000
scale = 3, 3

[State 191]
type = ModifyExplod
trigger1 = time = 175
ID = 6000
scale = 2.8, 2.8

[State 191]
type = ModifyExplod
trigger1 = time = 180
ID = 6000
scale = 2.6, 2.6

[State 191]
type = ModifyExplod
trigger1 = time = 185
ID = 6000
scale = 2.4, 2.4

[State 191]
type = ModifyExplod
trigger1 = time = 190
ID = 6000
scale = 2.2, 2.2

[State 191]
type = ModifyExplod
trigger1 = time = 195
ID = 6000
scale = 2, 2

[State 191]
type = ModifyExplod
trigger1 = time = 200
ID = 6000
scale = 1.8, 1.8

[State 191]
type = ModifyExplod
trigger1 = time = 205
ID = 6000
scale = 1.6, 1.6

[State 191]
type = ModifyExplod
trigger1 = time = 210
ID = 6000
scale = 1.4, 1.4

[State 191]
type = ModifyExplod
trigger1 = time = 215
ID = 6000
scale = 1.2, 1.2

[State 191, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 191]
type = ModifyExplod
trigger1 = time = 220
ID = 6000
scale = 1, 1

;-----------------------------------------
;-----------------------------------------
;Intro 2 by Tux 
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, Assert]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

[State 192]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3,1

[State 192, Voce]
type = PlaySnd
trigger1 = Time = 20
value = 13,0

[State 192, Mouth]
type = Explod
trigger1 = Time = 15
anim = 193
ID = 193
pos = 3,-1
postype = p1
bindtime = 110
sprpriority = 10
removetime = 110
removeongethit = 1

[State 192, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Taunt by Tux
[Statedef 199]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 199]
type = PlaySnd
trigger1 = AnimElem = 2
value = 14,0

[State 199]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3,1

[State 199, Mouth]
type = Explod
trigger1 = AnimElem = 2
anim = 193
ID = 193
pos = 1,-1
postype = p1
bindtime = 90
sprpriority = 10
removetime = 90
removeongethit = 1

[State 199, Mouth]
type = Explod
trigger1 = AnimElem = 2
anim = 193
ID = 193
pos = 2,-1
postype = p1
bindtime = 90
sprpriority = 10
removetime = 90
removeongethit = 1

[State 199]
type = ChangeState
trigger1 = Time = 100
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Standing LP
[Statedef 200]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 1                      
velset = 0,0                     
ctrl = 0                        
anim = 200                       
poweradd = 50                  
sprpriority = 2                 

[State 200]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 200]
type = HitDef
trigger1 = time = 0
attr = S, NA                     
damage = 20    
getpower = 0
givepower = 0               
animtype = Light                 
guardflag = MA                   
hitflag = MAF                    
priority = 3, Hit                
pausetime = 2,9
sparkno = s7000
sparkxy = -10, -85              
hitsound   = S1,0
guardsound = S6,0              
ground.type = High               
ground.slidetime = 5             
ground.hittime  = 12             
ground.velocity = -3             
air.velocity = -3,-2
airguard.velocity = -1.9,-.8     
air.type = High                  
air.hittime = 12                 
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Standing MP
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 210
sprpriority = -1

[State 210]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 210]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 2,9
sparkno = s7001
sparkxy = -10,-80
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-2
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

[State 210]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Standing HP
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 220
sprpriority = -1

[State 220]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 220]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 2,9
sparkno = s7002
sparkxy = -10,-80
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5

[State 220]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Standing LK
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 230]
type = PlaySnd
trigger1 = Time = 5
value = 0,0

[State 230]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,8
sparkno = s7000
sparkxy = -15,-16
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-2
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 230]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Standing LK (close)
[Statedef 231]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 231
sprpriority = 2

[State 231]
type = PlaySnd
trigger1 = Time = 5
value = 0,0

[State 231]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,8
sparkno = s7000
sparkxy = 0,-78
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-2
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 231]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Standing MK
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 240]
type = PlaySnd
trigger1 = Time = 5
value = 0,1

[State 240]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 2,9
sparkno = s7001
sparkxy = -10,-85
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-2
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

[State 240]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Standing HK
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2

[State 250]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 250]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 2,9
sparkno = s7002
sparkxy = 0,-75
hitsound   = S1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15 
envshake.freq = 15    
envshake.ampl = 5  
envshake.phase = 5

[State 250]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouching LP
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 400
sprpriority = 2

[State 400]
type = PlaySnd
trigger1 = Time = 5
value = 0,0

[State 400]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
getpower = 0
givepower = 0
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 10,11
sparkno = s7000
sparkxy = -10,-45
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-1
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 400]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouching MP
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

[State 410]
type = PlaySnd
trigger1 = Time = 5
value = 0,1

[State 410]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
getpower = 0
givepower = 0
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 10,11
sparkno = s7001
sparkxy = -10,-45
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -4,-1
envshake.time =  10
envshake.freq = 10    
envshake.ampl = 5  
envshake.phase = 5

[State 410]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouching HP
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 420
sprpriority = 2

[State 420]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 420]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-30
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -2
air.velocity = -2,-1
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5
Fall = 1

[State 420]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouching LK
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 430
sprpriority = 2

[State 430]
type = PlaySnd
trigger1 = Time = 5
value = 0,0

[State 430]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7000
sparkxy = -10,0
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-3
down.velocity = -5,0
down.hittime = 20
envshake.time =  5 
envshake.freq = 5    
envshake.ampl = 5  
envshake.phase = 5

[State 430]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouching MK
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

[State 440]
type = PlaySnd
trigger1 = Time = 5
value = 0,1

[State 440]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7001
sparkxy = -10,0
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -5,-3
down.velocity = -5,0
down.hittime = 20
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

[State 440]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouching HK
[Statedef 450]
type    = C
movetype= A
physics = C
velset = 0,0
juggle  = 7
poweradd= 50
ctrl = 0
anim = 450
sprpriority = 2

[State 450, Velset]
type = VelSet
trigger1 = AnimElem = 2
x = 10

[State 450]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 450]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
getpower = 0
givepower = 0
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7002
sparkxy = -10,0
hitsound   = S1,2
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.5,-3
guard.velocity = -5
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5

[State 450]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Jumping LP
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 50
ctrl = 0
anim = 600
sprpriority = 2

[State 600]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s7000
sparkxy = -10,-40
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
envshake.time =  5
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Jumping MP 
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 610
sprpriority = 2

[State 610]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-40
hitsound   = S1,1
guardsound = S2,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4
air.velocity = -3,-4
envshake.time =  10
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Jumping HP
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 620
sprpriority = 2

[State 620]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-80
hitsound   = S1,3
guardsound = S2,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
envshake.time =  15
envshake.freq = 15    
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Jumping LK
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 630
sprpriority = 2

[State 630]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7000
sparkxy = -10,-40
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -3,-3
envshake.time =  5
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Jumping MK
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 640
sprpriority = 2

[State 640]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7001
sparkxy = -10,-75
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -4,-3
envshake.time =  10
envshake.freq = 10    
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Jumping HK
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 640
sprpriority = 2

[State 650]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 650]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-70
hitsound   = S1,1
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15
envshake.freq = 15   
envshake.ampl = 5  
envshake.phase = 5
fall = 1
fall.damage = 0

;---------------------------------------
; Cosmo Charge (start)
[Statedef 900]
type = S
movetype = I
physics = S
anim = 900
velset = 0,0
ctrl = 0

[State 900]
type = VarSet
triggerall = var(59) = 1
trigger1 = time = 0
var(10) = 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 9,1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 12,3
channel = 0

[State 900]
type = EnvShake
trigger1 = animelem = 1
time = 40

[State 900]
type = ChangeState
trigger1 = animtime = 0
value = 901

;---------------------------------------
; Cosmo Charge (charging)
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901

[State 901]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9,2

[State 901]
type = Explod
triggerall = numexplod(7010) = 0
trigger1 = 1
anim = 7010
ID = 7010
pos = 0,0
bindtime = 1
scale = 0.9,0.9
sprpriority = -3
ownpal = 1
removeongethit = 1

[State 901]
type = Explod
triggerall = numexplod(7020) = 0
trigger1 = 1
anim = 7020
ID = 7020
pos = 0,2
bindtime = 1
scale = 0.9,0.9
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 901, Constellation]
type = Explod
trigger1 = animelem = 1
anim = 6000
ID = 6000
pos = 0,-50
postype = p1
bindtime = -1
sprpriority = -4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 901]
type = Explod
triggerall = numexplod(7030) = 0
trigger1 = 1
anim = 7030
ID = 7030
pos = 0,5
bindtime = -1
removetime = -1
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 901]
type = Explod
triggerall = numexplod(7031) = 0
trigger1 = 1
anim = 7031
ID = 7031
pos = 0,6
vfacing = -1
bindtime = -1
removetime = -1
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 901]
type = PowerAdd
trigger1 = time > 0
value = 5

[State 901]
type = Explod
triggerall = numexplod(903) = 0
trigger1 = 1
anim = 903
ID = 903
pos = 0,0
bindtime = 1
removetime = -1
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 901]
type = ChangeState
triggerall = var(59) = 0
trigger1 = command != "charge1"
trigger2 = command != "charge2"
value = 902

[State 901]
type = ChangeState
triggerall = time >= 1
triggerall = var(59) = 1
trigger1 = random <= 10
value = 902
ctrl = 1

[State 901]
type = ChangeState
trigger1 = power >= 3000
value = 902

[State 901]
type = ChangeState
trigger1 = animtime = 0
value = 901

;---------------------------------------
; Cosmo Charge (end)
[Statedef 902]
type = S
movetype = I
physics = S
anim = 902

[State 902]
type = VarSet
trigger1 = time = 0
var(10) = 0

[State 902]
type = RemoveExplod
triggerall = numexplod(6000) >= 1
trigger1 = time = 0
ID = 6000

[State 902]
type = RemoveExplod
triggerall = numexplod(6001) >= 1
trigger1 = time = 0
ID = 6001

[State 902]
type = RemoveExplod
triggerall = numexplod(7030) >= 1
trigger1 = time = 0
ID = 7030

[State 902]
type = RemoveExplod
triggerall = numexplod(7031) >= 1
trigger1 = time = 0
ID = 7031

[State 902]
type = RemoveExplod
triggerall = numexplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 902]
type = RemoveExplod
triggerall = numexplod(7020) >= 1
trigger1 = time = 0
ID = 7020

[State 902]
type = RemoveExplod
triggerall = numexplod(903) >= 1
trigger1 = time = 0
ID = 903

[State 902]
type = PalFX
triggerall = power >= 3000
trigger1 = time = 1
time = 15
add = 0,0,0
sinadd = 20,200,20,3

[State 902]
type = EnvShake
triggerall = power >= 3000
trigger1 = time = 0
time = 64

[State 902]
type = PlaySnd
triggerall = power >= 3000
trigger1 = time = 1
value = 9,3

[State 902]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Fireball 1
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = -1

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,3

[State 1000, Brilla]
type = PalFX
trigger1 = AnimElem = 3
time = 12
add = 0,0,50
sinadd = 100,100,100,3

[State 1000, Fireball]
type = Projectile
trigger1 = AnimElem = 5
projanim = 8002
projhitanim = 7007
offset = -5, -65
sparkno = s7004
sparkxy = 70,0
velocity = 4,0
attr = S, SP
damage    = 60,6
getpower = 0
givepower = 0
animtype = Heavy
guardflag = MA
pausetime = 0,9
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.animtype = Back
ground.velocity = -5
air.velocity = -5,-2
air.juggle = 3
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5
Palfx.time          = 10
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 1000]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;------------------------------------------
;------------------------------------------
;Fireball 2
[Statedef 1001]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = -1

[State 1001]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 1001]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,3

[State 1001, Brilla]
type = PalFX
trigger1 = AnimElem = 3
time = 12
add = 0,0,50
sinadd = 100,100,100,3

[State 1001, Fireball]
type = Projectile
trigger1 = AnimElem = 5
projanim = 8002
projhitanim = 7007
offset = -5, -65
sparkno = s7004
sparkxy = 70,0
velocity = 6,0
attr = S, SP
damage    = 60,6
getpower = 0
givepower = 0
animtype = Heavy
guardflag = MA
pausetime = 0,9
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.animtype = Back
ground.velocity = -5
air.velocity = -5,-2
air.juggle = 3
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5
Palfx.time          = 10
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 1001]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;------------------------------------------------
;------------------------------------------------
;Fireball 3
[Statedef 1002]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = -1

[State 1002]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 1002]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,3

[State 1002, Brilla]
type = PalFX
trigger1 = AnimElem = 3
time = 12
add = 0,0,50
sinadd = 100,100,100,3

[State 1002, Fireball]
type = Projectile
trigger1 = AnimElem = 5
projanim = 8002
projhitanim = 7007
offset = -5, -65
sparkno = s7004
sparkxy = 70,0
velocity = 8,0
attr = S, SP
damage    = 60,6
getpower = 0
givepower = 0
animtype = Heavy
guardflag = MA
pausetime = 0,9
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
air.animtype = Back
ground.velocity = -5
air.velocity = -5,-2
air.juggle = 3
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5
Palfx.time          = 10
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 1002]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Waves
[Statedef 1010]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1010
sprpriority = -1

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2,1

[State 1010, Brilla]
type = PalFX
trigger1 = AnimElem = 10
time = 15
add = 0,0,50
sinadd = 100,100,100,3

[State 1010, POLVERE]
type = Explod
trigger1 = AnimElem = 9
pos = -2,1
anim = 7010
sprpriority = -2
supermove = 1
removeongethit = 1
ID = 7010
scale = .6,.6

[State 1010, POLVERE]
type = Explod
trigger1 = AnimElem = 10
pos = -2,1
anim = 7010
sprpriority = -2
supermove = 1
removeongethit = 1
ID = 7010
scale = 1,1

[State 1010, onde]
type = Explod
trigger1 = AnimElem = 9
anim = 8010
ID = 8010
pos = 0,-110
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1010, onde]
type = Explod
trigger1 = AnimElem = 10
anim = 8011
ID = 8011
pos = -15,-110
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1010, lampi]
type = BGPalfx
trigger1 = AnimElem = 10
ignorehitpause = 1
time = 15
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 1010]
type = HitDef
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
trigger3 = AnimElem = 12
trigger4 = AnimElem = 13
attr = S, SA
animtype  = Medium
damage    = 20,2
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,100
sparkno = s7007
sparkxy = 0,-80
hitsound   = S4,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1,-3
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5

[State 1010]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Super Punch
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1020
sprpriority = -1

[State 1020]
type = PlaySnd
trigger1 = Time = 5
value = 0,1

[State 1020]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Medium
damage    = 80,8
getpower = 0
givepower = 0
guardflag = LA
pausetime = 2,9
sparkno = s7002
sparkxy = 0,-5
hitsound   = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1,0
envshake.time =  50 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5
Fall = 1
Palfx.time          = 10
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 1020]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,2

[State 1020, Lampi]
type = Explod
trigger1 = AnimElem = 3
anim = 7010
ID = 7010
pos = 45,2
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1020, Lampi]
type = Explod
trigger1 = AnimElem = 3
anim = 7005
ID = 7005
pos = 45,2
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1020, flash]
type = EnvColor
trigger1 = AnimElem = 3
value = 255,255,255
under = 0
time = 3

[State 1020, envshake]
type = EnvShake
trigger1 = AnimElem = 3
time = 50

[State 1020, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 1020]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; player 2 state
[Statedef 1025]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] 
type = ChangeAnim2
trigger1 = Time >= 0
value = 1025

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1026

;----------------------------------
;player2 on air
[Statedef 1026]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = VelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 1026, Gravity]
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 1026, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1027

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------------------------------
;player2 hit on wall
[Statedef 1027]
type    = A
movetype= H
physics = N

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3
ownpal = 1

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1027

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 1
value = F7,0

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;------------------------------------------
; hit on wall
[Statedef 1028]
type    = A
movetype= H
physics = N

[State 1028, 1]
type = NotHitBy
trigger1 = Time >= 0
value = , NA, NP

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -6

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1028, Gravity]
type = VelAdd
trigger1 = Time >= 0
y = .35

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;-----------------------------------------------------
; explosion spin
[Statedef 1029]
type    = A
movetype= H 
physics = N

[State 1029]
type = ChangeAnim2
trigger1 = 1
value = 1030

[State 1029]
type = VelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 1029]
type = VelAdd
Trigger1 = Time >= 0
y = .3

[State 1029]
type = Offset
Trigger1 = Time >= 1
y = -50

[State 1029]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 1029]
type = AngleAdd
trigger1 = Time >= 1
value = 22.5

[State 1029]
type = AngleDraw
trigger1 = Time >= 1
trigger1 = Pos Y <= 10

[State 1029 ouch] 
type = SelfState
Trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = time = 150
value = 5100

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Super Kick by Tux
[Statedef 1030]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2

[State 1030]
type = VelAdd
trigger1 = AnimElem = 1
x = 12
y = 0

[State 1030]
type = Explod
trigger1 = Animelem = 1
pos = 0,0
anim = 7089
scale = 0.5,0.5
postype = p1
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1
removetime = 26

[State 1030]
type = AfterImage
trigger1 = AnimElem = 1
time = 30
PalBright = 10,10,10
PalContrast = 128,128,128
trans = Add1

[State 1030]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,1

[State 1030]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Hard
damage    = 80,8
getpower = 0
givepower = 0
guardflag = MA
pausetime = 9,9
sparkno = s7002
sparkxy = 0,-65
hitsound   = S1,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -10,0
air.velocity = -12,0
envshake.time =  50 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5
Fall = 1

[State 1030]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Water Barrier by Tux
[Statedef 1040]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1040
sprpriority = 2

[State 1040, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1

[State 1040, 2]
type = Explod
trigger1 = AnimElem = 3
anim = 8001
ID = 8001
pos = 25,-80
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1040, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Up
damage    = 60,8
getpower = 0
givepower = 0
guardflag = MA
pausetime = 1,1
sparkno = S7007
sparkxy = -10,-80
hitsound   = -1
guardsound = S6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = -3,-8
air.velocity = -4,-9
envshake.time = 20 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5
p2facing = 1
fall = 1
fall.recover = 0
fall.damage = 20
fall.envshake.ampl = 7       
fall.envshake.freq = 50
fall.envshake.time = 10          
yaccel = .8 
p2stateno = 1029

[State 1040, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Super Waves
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = -1

[State 3000]
type = SuperPause
trigger1 = Time = 0
time = 55
movetime = 55
anim = 110
pos = -5, -90
darken = 1

[State 3000]
type = PlaySnd
trigger1 = Time = 0
value = 5,2

[State 3000]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

[Statedef 3001]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3001
sprpriority = -1

[State 3001]
type = PlaySnd
trigger1 = Time = 0
value = 12,3

[State 3001]
type = PlaySnd
trigger1 = Time = 0
value = 2,1

[State 3001, Brilla]
type = PalFX
trigger1 = Time = 5
time = 135
add = 0,0,50
sinadd = 100,100,100,3

[State 3001, lampi]
type = BGPalfx
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
ignorehitpause = 1
time = 25
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 3001, POLVERE]
type = Explod
trigger1 = Time = 0
pos = -2,1
anim = 7010
sprpriority = -2
supermove = 1
removeongethit = 1
ID = 7010
removetime = 150
scale = .6,.6

[State 3001, POLVERE]
type = Explod
trigger1 = Time = 10
pos = -2,1
anim = 7010
sprpriority = -2
supermove = 1
removeongethit = 1
ID = 7010
removetime = 140
scale = 1,1

[State 3001, onde]
type = Explod
trigger1 = Time = 0
anim = 8010
ID = 8010
pos = 0,-110
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150

[State 3001, onde]
type = Explod
trigger1 = Time = 5
anim = 8011
ID = 8011
pos = -15,-110
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 145

[State 3001]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
attr = S, HA
animtype  = Medium
damage    = 8,1
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,80
sparkno = s7007
sparkxy = 0,-80
hitsound   = S4,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1,-3
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5

[State 3001, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3001]
type = ChangeState
trigger1 = Time = 150
value = 3002
ctrl = 1

[Statedef 3002]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3002
sprpriority = -1

[State 3002]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Tsunami
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -2000
ctrl = 0
velset = 0,0
anim = 3100
sprpriority = -1

[State 3100]
type = PlaySnd
trigger1 = Time = 0
value = 12,3

[State 3100]
type = SuperPause
trigger1 = Time = 0
time = 35
movetime = 0
anim = s7008
pos = -2, -76
darken = 0

[State 3100, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 50
mul = 90,90,120
add = 5,5,5
invertall = 0

[State 3100, Darken]
type = BGPalfx
trigger1 = AnimElem = 2
ignorehitpause = 1
time = 50
mul = 90,90,120
add = 5,5,5
invertall = 0

[State 3100, Darken]
type = BGPalfx
trigger1 = Time = 50
trigger2 = Time = 100
ignorehitpause = 1
time = 50
mul = 90,90,120
add = 5,5,5
invertall = 0

[State 3100]
type = PlaySnd
trigger1 = Time = 0
value = 5,2

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1

[State 3100, envshake]
type = EnvShake
trigger1 = AnimElem = 4
time = 100

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2,2

[State 3100, sfondo]
type = Explod
trigger1 = AnimElem = 4
pos = -180,110
anim = 6000
ID = 6000
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 120

[State 3100, sfondo]
type = Explod
trigger1 = AnimElem = 4
pos = -320,0
anim = 8052
ID = 8052
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 120

[State 3100, sfondo]
type = Explod
trigger1 = AnimElem = 4
pos = 0, 20
anim = 8051
ID = 8051
postype = p1
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3100, sfondo]
type = Explod
trigger1 = AnimElem = 4
pos = -3, 20
anim = 80511
ID = 80511
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3100, Brilla]
type = PalFX
trigger1 = AnimElem = 5
time = 110
add = 0,0,50
sinadd = 100,100,100,3

[State 3100, luce]
type = Explod
trigger1 = AnimElem = 4
pos = 20, -70
anim = 7007
ID = 7007
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100

[State 3100, polvere]
type = Explod
trigger1 = AnimElem = 4
pos = 0, 1
anim = 7010
ID = 7010
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100

[State 3100, HitSpecial]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
attr = S, HA
animtype  = Hard
damage    = 9,3
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,0
sparkno = s7004
sparkxy = 0,-20 
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5,0
air.velocity = -5,0
envshake.time =  50 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5

[State 3100, HitSpecial]
type = HitDef
trigger1 = time >= 110
attr = S, HA
animtype  = Hard
damage    = 37,3
getpower = 0
givepower = 0
guardflag = MA
pausetime = 5,0
sparkno = s7004
sparkxy = 0,-20
hitsound   = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5,0
air.velocity = -5,0
envshake.time =  50 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5
Fall = 1

[State 3100, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3100]
type = ChangeState
trigger1 = Time = 120
value = 3101
ctrl = 1

[Statedef 3101]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3101
sprpriority = -1

[State 3101]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 3101]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Steel Hurricane
;run
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3200
poweradd = -3000
sprpriority = 1

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 15,0

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 5,7

[State 3200, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 33
movetime = 0
pos = 30,-60
anim = s7008
darken = 1

[State 3200, afterimage]
type = AfterImage
trigger1 = AnimElem = 1
time = 30
PalBright = 10,10,10
PalContrast = 128,128,128
trans = Add1

[State 3200, POLVERE]
type = Explod
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
pos = 20,3
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1

[State 3200]
type = PlaySnd
trigger1 = Animelem = 2
value = 3,0

[State 3200]
type = PlaySnd
trigger1 = Animelem = 5
value = 3,1

[State 3200]
type = VelSet
triggerall = time > 10
trigger1 = 1
x = 8

[State 3200]
type = ChangeState
trigger1 = P2Dist X <= 80
value = 3201
ctrl = 1

[State 3200, Velset]
type = VelSet
trigger1 = time = 69
x = 0

[State 3200, Velset]
type = VelSet
trigger1 = frontedgedist < 5
x = 0

[State 3200]
type = ChangeState
trigger1 = frontedgedist < 5
value = 0
ctrl = 1

;--------------------
[Statedef 3201]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 1                      
velset = 0,0                     
ctrl = 0                        
anim = 3201                       
poweradd = 0                  
sprpriority = 1

[State 3201]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 70
trigger3 = Time = 140
trigger4 = Time = 210
trigger5 = Time = 280
value = 5,6

[State 3201, tornado]
type = Explod
trigger1 = time = 5
pos = 80, 1
anim = 8030
ID = 8030
postype = p1
sprpriority = 9
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 660
scale = 1.5, 1.5

;Fine tornado
[State 3201, tornado]
type = Explod
trigger1 = time = 5
pos = 70, 1
anim = 8031
ID = 8031
postype = p1
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 27
scale = 1.5, 1.5

[State 3201, removeEX]
type = RemoveExplod
triggerall = NumExplod(8030) >= 1
trigger1 = time = 330
ID = 8030

[State 3201]
type = PlaySnd
trigger1 = Animelem = 3
value = 5,9

[State 3201] 
type = HitDef
trigger1 = Time >= 10
attr = S, HA
animtype  = Up               
damage    = 1, 18;ifelse((time%3 = 0),1,0)
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 1,0
sparkno = -1
sparkxy = 0,-120
hitsound   = -1
guardsound = S6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = 0,-2
air.velocity = 0,-2
guard.velocity = -11
airguard.velocity = -4.5,-5
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
p2facing = 1                 
fall = 1
fall.recover = 0             
fall.damage = 9             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100            
maxdist = 100,-10           
yaccel = .8

[State 3201] 
type = HitDef
trigger1 = Time >= 100
attr = S, HA
animtype  = Up               
damage    = 2, ifelse((time%3 = 0),1,0)
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 1,0
sparkno = -1
sparkxy = 0,-120
hitsound   = -1
guardsound = S6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = 0,-2
air.velocity = 0,-2
guard.velocity = -11
airguard.velocity = -4.5,-5
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
p2facing = 1                 
fall = 1
fall.recover = 0             
fall.damage = 9             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100            
maxdist = 100,-10           
yaccel = .8

[State 3201]
type = PlaySnd
trigger1 = Time = 330
value = 1,4

[State 3201] 
type = HitDef
trigger1 = Time >= 330
attr = S, HA
animtype  = Up               
damage    = 1, ifelse((time%3 = 0),1,0)
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 1,0
sparkno = s7002
sparkxy = 0,-120
hitsound   = -1
guardsound = S6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = 0,-10
air.velocity = 0,-10
guard.velocity = -11
airguard.velocity = -4.5,-5
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
p2facing = 1                 
fall = 1
fall.recover = 0             
fall.damage = 49             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100            
maxdist = 100,-10           
yaccel = .8 
p2stateno = 1029

[State 3201]
type = PlaySnd
trigger1 = Time = 1
trigger2 = Time = 120
trigger3 = Time = 330
value = 5,8

[State 3201]
type = PlaySnd
trigger1 = Time = 330
value = 12,3

[State 3201, afterimage]
type = AfterImage
trigger1 = Time = 0
time = 336
PalBright = 10,10,10
PalContrast = 128,128,128
trans = Add1

[State 3201, Darken]
type = BGPalfx
trigger1 = Time = 1
ignorehitpause = 1
time = 336
mul = 90,90,120
add = 5,5,5
invertall = 0

[State 3201, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
trigger2 = time > 10 && p2movetype != H
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3201, sfondo]
type = Explod
trigger1 = Time = 10
pos = -320,0
anim = 8053
ID = 8053
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150

[State 3201, tornado]
type = Explod
trigger1 = Animelem = 2
trigger2 = Animelem = 15
pos = 80, 10
anim = 8032
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 3201, tornado]
type = Explod
trigger1 = Animelem = 2
trigger2 = Animelem = 15
pos = 70, 10
anim = 7088
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 3201, tornado]
type = Explod
trigger1 = Animelem = 2
trigger2 = Animelem = 15
pos = 90, 10
anim = 70881
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 3201]
type = ChangeState
triggerall = p2movetype != H
trigger1 = time >= 20
value = 3202
ctrl = 1

[State 3201]
type = ChangeState
trigger1 = time = 336
value = 0
ctrl = 1

;fine Parato
[Statedef 3202]
type    = S
movetype= I
physics = S
juggle  = 1
velset = -6,0
ctrl = 0
anim = 0
poweradd = 0
sprpriority = 1

;Fine tornado
[State 3202, tornado]
type = Explod
trigger1 = time = 0
pos = 60, 10
anim = 8031
ID = 8031
postype = p1
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermove = 1
scale = 1.5, 1.5

[State 3202, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 8030

[State 3202, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 8053

[State 3202]
type = ChangeState
trigger1 = time = 10
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Steel Hurricane (Triplet)
;Pose+run
[Statedef 3500]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3500
poweradd = -3000
sprpriority = 1

[State 3500, Helper]
type = Helper
trigger1 = Time = 0
name = "Daichi"
ID = 3510
stateno = 3510
pos = -440,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 80

[State 3500, Helper]
type = Helper
trigger1 = Time = 0
name = "Sho"
ID = 3520
stateno = 3520
pos = -360,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 80

[State 3500]
type = PlaySnd
trigger1 = Time = 0
value = 5,7

[State 3500]
type = PlaySnd
trigger1 = Time = 0
value = 18,0

[State 3500]
type = PlaySnd
trigger1 = Time = 0
value = 18,1

[State 3500, SuperPause]
type = SuperPause
trigger1 = Time = 1
time = 80
movetime = 80
pos = 7,-60
anim = -1;s7005
darken = 1

[State 3500, SuperPause]
type = SuperPause
trigger1 = Time = 81
time = 33
movetime = 0
pos = 7,-60
anim = -1;s7005
darken = 1

[State 3500, Explod]
type = Explod
trigger1 = Time = 80
anim = 7008
ID = 3510
pos = 7,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
sprpriority = 3
supermovetime = 113

[State 3500, afterimage]
type = AfterImage
trigger1 = AnimElem = 1
time = 30
PalBright = 10,10,10
PalContrast = 128,128,128
trans = Add1

[State 3500, POLVERE]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
pos = 20,3
anim = 7089
scale = 0.5,0.5
sprpriority = 5
supermove = 1
removeongethit = 1

[State 3500]
type = PlaySnd
trigger1 = Animelem = 2
value = 3,0

[State 3500]
type = PlaySnd
trigger1 = Animelem = 5
value = 3,1

[State 3501]
type = PlaySnd
trigger1 = Time = 80
value = 15,0
channel = 0

[State 3500]
type = VelSet
trigger1 = Time >= 82
x = 10

[State 3500]
type = ChangeState
triggerall = Time >= 82
trigger1 = P2Dist X <= 80
value = 3501
ctrl = 0

[State 3500, Velset]
type = VelSet
trigger1 = frontedgedist < 5
x = 0

[State 3500]
type = ChangeState
trigger1 = frontedgedist < 5
value = 0
ctrl = 1

;--------------------
[Statedef 3501]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3501
poweradd = 0
sprpriority = 1

[State 3501, Helper]
type = Helper
trigger1 = Time = 0
name = "Camera"
ID = 3530
stateno = 3530
pos = 0,170
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 80

[State 3501]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 70
trigger3 = Time = 140
trigger4 = Time = 210
trigger5 = Time = 280
value = 5,6

[State 3501, tornado]
type = Explod
trigger1 = time = 5
pos = 90, 20
anim = 8040
ID = 8030
postype = p1
sprpriority = 9
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 660
scale = 3, 3

;Fine tornado
[State 3501, tornado]
type = Explod
trigger1 = time = 5
pos = 90, 20
anim = 8041
ID = 8031
postype = p1
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = 3, 3

[State 3501, removeEX]
type = RemoveExplod
triggerall = NumExplod(8030) = 1
trigger1 = time = 330
ID = 8030

[State 3501]
type = HitDef
trigger1 = Time >= 10
attr = S, HA
animtype  = Up
damage    = 1, ifelse((time%3 = 0),1,0)
getpower = 0
givepower = 0
priority  = 5
pausetime = 1,0
sparkno = -1
sparkxy = 0,-120
hitsound   = -1
guardsound = S6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = 0,-2
air.velocity = 0,-2
guard.velocity = -11
airguard.velocity = -4.5,-5
p2facing = 1
fall = 1
Kill = 0
fall.recover = 0
fall.damage = 10
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100
maxdist = 100,-10
yaccel = .8

[State 3501]
type = HitDef
trigger1 = Time >= 100
attr = S, HA
animtype  = Up
damage    = 2, ifelse((time%3 = 0),1,0)
getpower = 0
givepower = 0
priority  = 5
pausetime = 1,0
sparkno = -1
sparkxy = 0,-120
hitsound   = -1
guardsound = S6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = 0,-2
air.velocity = 0,-2
guard.velocity = -11
airguard.velocity = -4.5,-5
p2facing = 1
fall = 1
Kill = 0
fall.recover = 0
fall.damage = 10
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100
maxdist = 100,-10
yaccel = .8

[State 3501]
type = PlaySnd
trigger1 = Time = 330
value = 1,4

[State 3501]
type = HitDef
trigger1 = Time >= 330
attr = S, HA
animtype  = Up
damage    = 1, ifelse((time%3 = 0),1,0)
getpower = 0
givepower = 0
priority  = 5
pausetime = 1,0
sparkno = -1
sparkxy = 0,-120
hitsound   = -1
guardsound = S6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = 0,-10
air.velocity = 0,-10
guard.velocity = -11
airguard.velocity = -4.5,-5
p2facing = 1
fall = 1
fall.recover = 0
fall.damage = 50
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100
maxdist = 100,-10
yaccel = .8
p2stateno = 1029

[State 3501, EnvShake]
type = EnvShake
trigger1 = (Time%10) = 0
time = 10
freq = 60
ampl = 4

[State 3501]
type = PlaySnd
trigger1 = Time = 1
trigger2 = Time = 120
trigger3 = Time = 330
value = 5,8

[State 3501, afterimage]
type = AfterImage
trigger1 = Time = 0
time = 336
PalBright = 10,10,10
PalContrast = 128,128,128
trans = Add1

[State 3501, Darken]
type = BGPalfx
trigger1 = Time = 1
ignorehitpause = 1
time = 350
mul = 90,90,120
add = 5,5,5
invertall = 0

[State 3501, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3501, sfondo]
type = Explod
trigger1 = Time = 10
pos = -330,-10
anim = 8054
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = 1.2,1.2
removetime = 330

[State 3501, tornado]
type = Explod
trigger1 = Animelem = 2
trigger2 = Animelem = 15
pos = 80, 10
anim = 8042
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 3501, tornado]
type = Explod
trigger1 = Animelem = 2
trigger2 = Animelem = 15
pos = 70, 10
anim = 7089
scale = 0.5,0.5
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 3501, tornado]
type = Explod
trigger1 = Animelem = 2
trigger2 = Animelem = 15
pos = 90, 10
anim = 70891
scale = 0.5,0.5
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 3011, Voice]
type = PlaySnd
trigger1 = Time = 336
value = 18,2
channel = 0

[State 3501]
type = VarSet
triggerall = P2Life <= 0
trigger1 = Time = 336
v = 4
value = 1

[State 3501]
type = ChangeState
trigger1 = time = 336
value = 0
ctrl = 1

;---------------------------------------------
;Daichi
[Statedef 3510]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3510
sprpriority = 1

;------Arrivo in corsa---------
[State 0, VelSet]
type = VelSet
trigger1 = Time <= 79
x = 5

;------Posa+effetto------------
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3510
trigger1 = time = 80
value = 3511

[State 0, Explod]
type = Explod
trigger1 = Time = 80
anim = 7109
ID = 3510
pos = 0,-30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
sprpriority = 3
supermovetime = 113

;------Corsa verso nemico------
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3511
triggerall = parent, stateno = 3500
trigger1 = parent, vel X > 0
value = 3510

[State 0, VelSet]
type = VelSet
triggerall = parent, stateno != 3501
trigger1 = parent, vel X > 0
x = 10

;-------Uragano---------
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = parent, stateno = 3501
trigger1 = Anim != 3512
flag = invisible

[State 0, PosSet]
type = PosSet
trigger1 = parent, stateno = 3501
x = Parent, Pos X
y = 0
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3510
triggerall = parent, stateno = 3501
trigger1 = parent, animelem = 10
value = 3512

;-------Fine Uragano Win---------
[State 0, VarSet]
type = VarSet
triggerall = p2life <= 0
trigger1 = parent, stateno != [3500,3501]
v = 27
value = 1

[State 0, PosSet]
type = PosSet
triggerall = p2life <= 0
trigger1 = parent, stateno != [3500,3501]
x =  parent, pos X + 40

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3513
trigger1 = Var(27) = 1
value = 3513

;-------Fine Uragano Miss---------
[State 0, VarSet]
type = VarSet
triggerall = p2life > 0
trigger1 = parent, stateno != [3500,3501]
v = 27
value = -1

[State 0, PosSet]
type = PosSet
trigger1 = Var(27) = -1
x =  parent, pos X - 40
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3514
trigger1 = Var(27) = -1
value = 3514

[State 0, VelSet]
type = VelSet
triggerall = Time >= 0
trigger1 = Var(27) = -1
x = -6
y = 0

[State 0, DestroySelf]
type = DestroySelf
triggerall = Time >= 560
trigger1 = Var(27) = -1

;---------------------------------------------
;Sho
[Statedef 3520]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3520
sprpriority = 1

;------Arrivo in corsa---------
[State 0, VelSet]
type = VelSet
trigger1 = Time <= 79
x = 5

;------Posa+effetto------------
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3520
trigger1 = time = 80
value = 3521

[State 0, Explod]
type = Explod
trigger1 = Time = 80
anim = 7209
ID = 3511
pos = 0,-50
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
sprpriority = 3
supermovetime = 113

;------Corsa verso nemico------
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3521
triggerall = parent, stateno = 3500
trigger1 = parent, vel X > 0
value = 3520

[State 0, VelSet]
type = VelSet
triggerall = parent, stateno != 3501
trigger1 = parent, vel X > 0
x = 10

;-------Uragano---------
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = parent, stateno = 3501
trigger1 = Anim != 3522
flag = invisible

[State 0, PosSet]
type = PosSet
trigger1 = parent, stateno = 3501
x = Parent, Pos X
y = 0
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3520
triggerall = parent, stateno = 3501
trigger1 = parent, animelem = 18
value = 3522

;-------Fine Uragano Win---------
[State 0, VarSet]
type = VarSet
triggerall = p2life <= 0
trigger1 = parent, stateno != [3500,3501]
v = 27
value = 1

[State 0, PosSet]
type = PosSet
triggerall = p2life <= 0
trigger1 = parent, stateno != [3500,3501]
x =  parent, pos X - 40

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3523
trigger1 = Var(27) = 1
value = 3523

;-------Fine Uragano Miss---------
[State 0, VarSet]
type = VarSet
triggerall = p2life > 0
trigger1 = parent, stateno != [3500,3501]
v = 27
value = -1

[State 0, PosSet]
type = PosSet
trigger1 = Var(27) = -1
x =  parent, pos X + 40
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim != 3524
trigger1 = Var(27) = -1
value = 3524

[State 0, VelSet]
type = VelSet
triggerall = time >= 0
trigger1 = Var(27) = -1
x = -6
y = 0

[State 0, DestroySelf]
type = DestroySelf
triggerall = Time >= 560
trigger1 = Var(27) = -1

;---------------------------------------------
;Camera
[Statedef 3530]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3530
sprpriority = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = Time >= 0
value = 1
movecamera = 1,1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != [3500,3501]

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; AI variabili (statedef -2)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[Statedef -2]

[State -2, Get P2 Distance]
type = VarSet
trigger1 = P2Dist X != 0
v = 11
value = floor(P2Dist X)

[State -2, ScreenBound]
type = ScreenBound
trigger1 = stateno = 5150
value = 0
movecamera = 0,0

[State -2, Moves List]
type = Helper
trigger1 = movetype != H
trigger1 = !ailevel
trigger1 = roundstate = 2
trigger1 = numhelper(8150) = 0
trigger1 = command = "ss"
name = "moves_list"
ID = 8150
stateno = 8150
pos = 0,-600
postype = left
keyctrl = 1
ownpal = 1

;---------------------------------------------------------------------------
;Combo 
;---------------------------------------------------------------------------

;onde + 3 pugni + fireball
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 1010) 
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 1010) && (movecontact) 
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact) 
value = 220
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 210) && (movecontact) 
value = 1002

;onde + pugno + fireball
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 1010) 
trigger1 = (movecontact)
value = 220
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 1010) && (movecontact) 
value = 1002

;3 pugni + fireball
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact) 
value = 220
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 210) && (movecontact) 
value = 1002

;2 pugni + fireball
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact) 
value = 1001

;2 pugni + fireball
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 210) && (movecontact) 
value = 1000

;2 pugni + onde + superpugno
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact) 
value = 1010
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 1010) && (prevstateno = 210) && (movecontact) 
value = 1020

;2 pugni + superpugno
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact) 
value = 1020

;3 pugni
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact) 
value = 220

;4 calci
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 231
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 231) && (prevstateno = 230) && (movecontact) 
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 231) && (movecontact) 
value = 250

;3 calci
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 230) && (movecontact) 
value = 250

;3 calci
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 231
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 231) && (prevstateno = 230) && (movecontact) 
value = 250

;4 calci + onde
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 231
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 231) && (prevstateno = 230) && (movecontact) 
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 231) && (movecontact) 
value = 250
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 240) && (movecontact) 
value = 1010

;triplo pugno in salto 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 610
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 600) && (movecontact) 
value = 620

;triplo calcio in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 640
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 640) && (prevstateno = 630) && (movecontact) 
value = 650

;combo abbasato
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400) 
trigger1 = (movecontact)
value = 410
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 400) && (movecontact) 
value = 420
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 420) && (prevstateno = 410) && (movecontact) 
value = 430
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 430) && (prevstateno = 420) && (movecontact) 
value = 440
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 440) && (prevstateno = 430) && (movecontact) 
value = 450

;Triplo pugno abbasato
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400) 
trigger1 = (movecontact)
value = 410
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 400) && (movecontact) 
value = 420

;Triplo calcio abbasato
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 440
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 440) && (prevstateno = 430) && (movecontact) 
value = 450


;---------------------------------------------------------------------------
;Special Moves
;---------------------------------------------------------------------------

;Charge
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 129])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120) 
value = 900

;fireball
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [130, 194])
trigger1 = (P2bodydist X >= 140) && (prevstateno != 5120) 
value = 1000
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [195, 259])
trigger1 = (P2bodydist X >= 170) && (prevstateno != 5120)
value = 1001
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [260, 324])
trigger1 = (P2bodydist X >= 200) && (prevstateno != 5120)
value = 1002

;onde
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [325, 389])
trigger1 = (P2bodydist X <= 120) && (prevstateno != 5120) 
value = 1010

;super punch
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [390, 454])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120) 
value = 1020

;super kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [455, 519])
trigger1 = (P2bodydist X <= 320) && (prevstateno != 5120) 
value = 1030

;Water Barrier
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [520, 584])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) 
value = 1040

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [585,649])
value = 199

;---------------------------------------------------------------------------
;Super Moves
;---------------------------------------------------------------------------

;
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 120) && (power >= 1000) && (power < 2000) && (random = [650,714])
value = 3000

;
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X < 180) && (power >= 3000) && (random = [715,779])
value = 3010

;
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 180) && (power >= 2000) && (random = [780,844])
value = 3100

;
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 40) && (power >= 3000) && (p2life <= 250) && (random = [845,909])
value = 3500

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1020
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1000
trigger1 = time = 5
value = 12,2

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1001
trigger1 = time = 5
value = 12,2

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1002
trigger1 = time = 5
value = 12,2

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1010
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 40
trigger1 = time = 5
value = 12,0

;---------- Hit ------------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 10,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 10,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10,3

[State -2]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10,4

[State -2]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 10,3

;---------------------------------------------------------------------------
; Automatic States (Statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3, AI Activate]
type = VarSet
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
var(59) = 1

;---------------------------------------

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(193) >= 1
trigger1 = numhelper(8150) > 0
ID = 193

;---------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = Animelem = 2
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = Animelem = 5
value = 3,1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = Animelem = 2
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = Animelem = 5
value = 3,1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = Animelem = 2
value = F3,0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = Animelem = 5
value = F3,1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = Animelem = 2
value = F3,0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = Animelem = 5
value = F3,1

;---------------------------------------

[State -3, Air Jump]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 20
PalBright = 10,10,10
PalContrast= 98,98,98
trans = Add1

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = time = 1
value = 2,0

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = time = 1
value = F2,0

[State -3, Air Jump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = 2,1

[State -3, Air Jump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = F2,1

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = time = 1
value = 2,2

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = time = 1
value = F2,3

;---------------------------------------

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = time = 1
time = 25
PalBright = 10,10,10
PalContrast= 98,98,98
trans = Add1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = time = 1
pos = 0,0
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = AnimElem = 3
pos = 0,0
anim = 7085
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = time = 1
value = 2,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = time = 1
value = F2,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 2
value = 3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 2
value = F3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 5
value = 3,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 5
value = F3,1

;---------------------------------------

[State -3, Run Back]
type = AfterImage
triggerall = stateno = 105
trigger1 = time = 1
time = 15
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State -3, Run Back]
type = Explod
triggerall = stateno = 105
trigger1 = time = 5
pos = -5,15
anim = 70841
sprpriority = 5
supermove = 1
removeongethit = 1
scale = .8, .8
ownpal = 1

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = time = 1
value = 2,0

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = time = 1
value = F2,0

[State -3, Run Back Land]
type = PlaySnd
triggerall = stateno = 106
trigger1 = time = 1
value = 2,2

[State -3, Run Back Land]
type = PlaySnd
triggerall = stateno = 106
trigger1 = time = 1
value = F2,3

;---------------------------------------

[State -3, Cloth Pieces]
type = Explod
triggerall = Life <= 0
triggerall = MatchOver = 1
triggerall = stateno = 5150
trigger1 = time = 1
pos = 0,5
anim = 5151
sprpriority = 5
supermove = 1
ownpal = 0
scale = 1, 1

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = Life <= 0
triggerall = MatchOver = 1
triggerall = stateno = 5150
trigger1 = time = 1
value = 5, 1

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = Var(58) = 0
triggerall = Life <= 0
triggerall = anim = 5150
trigger1 = time = 1
trigger2 = time = 10
trigger3 = time = 20
value = 11,1

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9