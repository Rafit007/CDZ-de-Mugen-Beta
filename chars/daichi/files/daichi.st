;----------------------------------
;Daichi St File By TONYADV
;----------------------------------

;Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, Assert]
type     = AssertSpecial
trigger1 = Time = [0,150]
flag     = roundnotover

[State 170]
type = PlaySnd
trigger1 = AnimElem = 3
value = 10,0

[State 170]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,3

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
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 180]
type = ChangeState
trigger1 = MatchOver = 0
value = 181

[State 180]
type = ChangeState
trigger1 = MatchOver = 1 
value = 183

;-----------------------------------------
;-----------------------------------------
;Win pose 1 
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 181]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 181, Voce]
type = PlaySnd
trigger1 = AnimElem = 3
value = 13,3
channel = 0

[State 181, Assert]
type     = AssertSpecial
trigger1 = Time = [0,120]
flag     = roundnotover

[State 181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-----------------------------------------
;-----------------------------------------
;Win pose 2 
[Statedef 183]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 183]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,5

[State 183]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,4

[State 183]
type = PlaySnd
trigger1 = time = 35
value = 5,2

[State 183, motorino]
type = Explod
trigger1 = AnimElem = 6
anim = 183
pos = 0,0
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 0
supermove = 1

[State 183, scia]
type = Explod
trigger1 = AnimElem = 3
anim = 7010
pos = -7,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 0
supermove = 1
scale = .7, .7

[State 183, Assert]
type     = AssertSpecial
trigger1 = Time = [0,250]
flag     = roundnotover

[State 183]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 183]
type = PlaySnd
trigger1 = AnimElem = 9
value = 13,4
channel = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;intro state decider
[Statedef 191]
type = S
ctrl = 0
velset = 0,0

[State 191]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 191]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 192

[State 191]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 193

; Intro
[Statedef 192]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 192]
type = AssertSpecial
trigger1 = Time = [0,400]
flag = Intro

[State 192, motorino]
type = Explod
trigger1 = Time = 50
anim = 192
pos = 0,0
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
supermove = 1

[State 192, motorino]
type = Explod
trigger1 = time = 120
anim = 8001
pos = 150,-40
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
supermove = 1
scale = .6, .8

[State 192, motorino]
type = Explod
trigger1 = time = 140
anim = 8001
pos = 105,-35
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
supermove = 1
scale = .5, .7

[State 192, motorino]
type = Explod
trigger1 = time = 160
anim = 8001
pos = 75,-30
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
supermove = 1
scale = .4, .6

[State 192, scia]
type = Explod
trigger1 = AnimElem = 4
anim = 7010
pos = -7,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 0
supermove = 1
removetime = 145
scale = .7, .7

[State 192, eletrik]
type = Explod
trigger1 = AnimElem = 5
anim = 8004
ID = 8004
pos = -2,-15
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
supermove = 1
removetime = 150
scale = .5, .5

[State 192, eletrik]
type = Explod
trigger1 = AnimElem = 9
anim = 8004
ID = 8004
pos = 4,-59
postype = p1
sprpriority = 6
ignorehitpause = 1
ownpal = 1
supermove = 1
removetime = 55
scale = .6, .2

[State 192, eletrik]
type = Explod
trigger1 = AnimElem = 15
anim = 8004
ID = 8004
pos = 0,-65
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
supermove = 1
removetime = 150
scale = .4, .5

[State 192, removeEX]
type = RemoveExplod
triggerall = NumExplod(8004) >= 1
trigger1 = AnimElem = 22
ID = 8004

[State 192]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
value = 4,0

[State 192]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 11
value = 4,4

[State 192]
type = PlaySnd
trigger1 = AnimElem = 13
value = 4,2

[State 192]
type = PlaySnd
trigger1 = AnimElem = 17
value = 4,1

[State 192]
type = PlaySnd
trigger1 = AnimElem = 15
value = 4,3

[State 192]
type = PlaySnd
trigger1 = AnimElem = 19
value = 4,4

[State 192]
type = PlaySnd
trigger1 = AnimElem = 21
value = 4,5

[State 192]
type = PlaySnd
trigger1 = time = 170
value = 4,1

[State 192]
type = PlaySnd
trigger1 = time = 80
value = 5,12

[State 192, can]
type = Explod
trigger1 = time = 365
pos = 0,-50
anim = 6000
ID = 6000
sprpriority = -2
ownpal = 1
supermove = 1
ownpal = 1
removetime = 130

[State 192]
type = ModifyExplod
trigger1 = time = 365
ID = 6000
scale = 3, 3

[State 192]
type = ModifyExplod
trigger1 = time = 370
ID = 6000
scale = 2.8, 2.8

[State 192]
type = ModifyExplod
trigger1 = time = 375
ID = 6000
scale = 2.6, 2.6

[State 192]
type = ModifyExplod
trigger1 = time = 380
ID = 6000
scale = 2.4, 2.4

[State 192]
type = ModifyExplod
trigger1 = time = 385
ID = 6000
scale = 2.2, 2.2

[State 192]
type = ModifyExplod
trigger1 = time = 390
ID = 6000
scale = 2, 2

[State 192]
type = ModifyExplod
trigger1 = time = 395
ID = 6000
scale = 1.8, 1.8

[State 192]
type = ModifyExplod
trigger1 = time = 400
ID = 6000
scale = 1.6, 1.6

[State 192]
type = ModifyExplod
trigger1 = time = 405
ID = 6000
scale = 1.4, 1.4

[State 192]
type = ModifyExplod
trigger1 = time = 410
ID = 6000
scale = 1.2, 1.2

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

[State 192]
type = ModifyExplod
trigger1 = time = 415
ID = 6000
scale = 1, 1

; Intro Voice
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 191]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 193]
type = AssertSpecial
trigger1 = Time = [0,80]
flag = Intro

[State 193, Snd]
type = PlaySnd
triggerall = Var(2) = [0,49]
trigger1 = AnimElem = 2
value = 13,0
channel = 0

[State 193, Snd]
type = PlaySnd
triggerall = Var(2) = [50,99]
trigger1 = AnimElem = 2
value = 13,1
channel = 0

[State 193, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 193]
type = ChangeState
trigger1 = Time = 80
value = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;provocazione state decider
[Statedef 199]
type = S
ctrl = 0
velset = 0,0

[State 199]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 199]
type = ChangeState
trigger1 = Var(2) = [0,99]
value = 198

;provocazione 1
[Statedef 198]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 198, Voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 198, Voce]
type = PlaySnd
trigger1 = AnimElem = 3
value = 13,2
channel = 0

[State 198, Voce]
type = PlaySnd
trigger1 = AnimElem = 12
value = 13,5
channel = 0

[State 198]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Pugno leggero
[Statedef 200]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 1                      
velset = 0,0                     
ctrl = 0                        
anim = 201                       
poweradd = 50                  
sprpriority = 2                 

[State 200]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 200]
type = HitDef
trigger1 = time = 0
attr = S, NA                     
damage = 20                   
animtype = Light                 
guardflag = MA                   
hitflag = MAF
getpower = 0
givepower = 0
priority = 3, Hit                
pausetime = 2,9
sparkno = s7000
sparkxy = -10, -65              
hitsound   = S1,0
guardsound = S6,0              
ground.type = High               
ground.slidetime = 5             
ground.hittime  = 12             
ground.velocity = -5             
air.velocity = -3,-2
airguard.velocity = -1.9,-.8     
air.type = High                  
air.hittime = 12                 

[State 200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno medio
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 200
sprpriority = 2

[State 210]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 210]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
getpower = 0
givepower = 0
pausetime = 2,9
sparkno = s7001
sparkxy = -10,-70
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -3,-2

[State 210]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno forte
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 202
sprpriority = 2

[State 220]
type = PlaySnd
trigger1 = Time = 5
value = 0, 2

[State 220]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
getpower = 0
givepower = 0
pausetime = 2,9
sparkno = s7002
sparkxy = -10,-55
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

[State 220]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno fortissimo
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 203
sprpriority = 2

[State 225, Velset]
type = VelSet
trigger1 = AnimElem = 3
x = 6

[State 225]
type = Explod
trigger1 = AnimElem = 2
pos = 30,0
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1
scale = .8, .8
ownpal = 1

[State 225]
type = PlaySnd
trigger1 = Time = 8
value = 0, 1

[State 225]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
getpower = 0
givepower = 0
pausetime = 2,9
sparkno = s7004
sparkxy = -10,-74
hitsound   = S1,3
guardsound = S6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-2
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5

[State 225]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Calcio leggero
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 215
sprpriority = 2

[State 230]
type = PlaySnd
trigger1 = Time = 5
value = 0,0

[State 230]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = light
damage    = 20
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,8
sparkno = s7000
sparkxy = -10,-50
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -7
air.velocity = -3,-2

[State 230]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio medio
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 216
sprpriority = 2

[State 240]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 240]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
getpower = 0
givepower = 0
pausetime = 2,9
sparkno = s7001
sparkxy = -10,-40
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-2

[State 240]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio forte
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 217
sprpriority = 2

[State 250]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 250]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = hard
damage    = 40
guardflag = MA
getpower = 0
givepower = 0
pausetime = 2,9
sparkno = s7002
sparkxy = 0,-85
hitsound   = S1,3
guardsound = S6,0
ground.type = high
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
;pugno leggero abbasato
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 221
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
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = LA
getpower = 0
givepower = 0
pausetime = 10,11
sparkno = s7000
sparkxy = -10,-40
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-1

[State 400]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno medio abbasato
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 220
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
priority  = 3
animtype  = medium
hitflag = MAF
guardflag = LA
getpower = 0
givepower = 0
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

[State 410]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno forte abbasato
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 222
sprpriority = 2

[State 420]
type = PlaySnd
trigger1 = Time = 5
value = 0,3

[State 420]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
animtype  = hard
hitflag = MAF
guardflag = LA
getpower = 0
givepower = 0
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-48
hitsound   = S1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -5,-1
envshake.time =  15 
envshake.freq = 15    
envshake.ampl = 5  
envshake.phase = 5

[State 420]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio leggero abbasato
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 224
sprpriority = 2

[State 430]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 430]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MAFD
guardflag = LA
getpower = 0
givepower = 0
pausetime = 12,12
sparkno = s7000
sparkxy = -10,-2
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-3
down.velocity = -5,0
down.hittime = 20

[State 430]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio medio abbasato
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 224
sprpriority = 2

[State 440, Velset]
type = VelSet
trigger1 = AnimElem = 2
x = 4

[State 440]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 440]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
animtype  = medium
hitflag = MAFD
guardflag = LA
getpower = 0
givepower = 0
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-2
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -5,-3
down.velocity = -5,0
down.hittime = 20

[State 440]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio forte abbasato
[Statedef 450]
type    = C
movetype= A
physics = C
velset = 0,0
juggle  = 7
poweradd= 50
ctrl = 0
anim = 223
sprpriority = 2

[State 450]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 450]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
hitflag = MAFD
guardflag = LA
getpower = 0
givepower = 0
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-5
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
;Pugno leggero in salto
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 50
ctrl = 0
anim = 231
sprpriority = 2

[State 600]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 600]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
animtype  = Light
guardflag = HA
getpower = 0
givepower = 0
priority = 3
pausetime = 7,8
sparkno = s7000
sparkxy = -10,-80
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno forte in salto 
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 230
sprpriority = 2

[State 610]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 610]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
getpower = 0
givepower = 0
priority = 4
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-85
hitsound   = S1,1
guardsound = S6,0
animtype = Medium
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4
air.velocity = -3,-4

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno forte in salto 
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 232
sprpriority = 2

[State 620]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 620]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
guardflag = HA
getpower = 0
givepower = 0
priority = 4
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-80
hitsound   = S1,3
guardsound = S6,0
animtype  = hard
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
;calcio leggero in salto 
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 234
sprpriority = 2

[State 630]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 630]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
animtype  = Light
guardflag = HA
getpower = 0
givepower = 0
priority = 3
pausetime = 8,8
sparkno = s7000
sparkxy = -10,-45
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -3,-3

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio medio in salto 
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 235
sprpriority = 2

[State 640]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 640]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
getpower = 0
givepower = 0
priority = 3
pausetime = 8,8
sparkno = s7002
sparkxy = -10,-44
hitsound   = S1,1
guardsound = S6,0
animtype = Medium
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -4,-3

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio forte in salto
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 233
sprpriority = 2

[State 650]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 650]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 40
guardflag = HA
getpower = 0
givepower = 0
priority = 4
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-50
hitsound   = S1,3
guardsound = S6,0
animtype  = hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15
envshake.freq = 15   
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------------------------------------------
; Cosmo Charge
[Statedef 900]
type = S
movetype = I
physics = S
anim = 900
velset = 0,0
ctrl = 0

[State 900, Var]
type = VarSet
triggerall = var(59) = 1
trigger1 = Time = 0
v = 10
value = 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 9, 1

[State 900, voce]
type = PlaySnd
trigger1 = Animelem = 1
value = 12, 1

[State 900]
type = EnvShake
trigger1 = animelem = 1
time = 40

[State 900]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

;---------------------------------------------------------------------------
; Cosmo Charge - charging
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901

[State 901]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 1
pos = -7,0
anim = 7010
sprpriority = -2
supermove = 1
removeongethit = 1
ID = 7010
scale = .7, .7

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 1
pos = -7,2
anim = 7020
sprpriority = 2
supermove = 1
removeongethit = 1
ID = 7020
scale = .7, .7

[State 901]
type = PowerAdd
trigger1 = time > 0
value = 5

[State 901]
type = ChangeState
triggerall = Var(59) = 0
trigger1 = command != "charge"
trigger2 = command != "charge 1"
value = 902

[State 901, constellation]
type = Explod
trigger1 = NumExplod(6000) = 0
anim = 6000
ID = 6000
pos = 0,-50
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = -1

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

[state 901, End]
type = ChangeState
triggerall = time >= 1
triggerall = Var(59) = 1
trigger1 = random <= 10
value = 902
ctrl = 1

[State 901]
type = ChangeState
trigger1 = Power >= 3000
value = 902

[State 901]
type = ChangeState
trigger1 = AnimTime= 0
value = 901

;---------------------------------------------------------------------------
; Cosmo Charge - end
[Statedef 902]
type = S
movetype = I
physics = S
anim = 902

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7020) >= 1
trigger1 = time = 0
ID = 7020

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

[State 902, Var]
type = VarSet
trigger1 = Time = 0
v = 10
value = 0

[State 902]
type = PalFX
triggerAll = power >= 3000
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
triggerAll = Power >= 3000
trigger1 = Time = 1
value = 9, 3

[State 902]
type = ChangeState
trigger1 = AnimTime= 0
value =0
ctrl = 1

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(6000) >= 1
trigger1 = time = 0
ID = 6000

;---------------------------------------------------------------------------
;Combo Karate
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 206
sprpriority = 2

[State 1000]
type = PlaySnd
trigger1 = Time = 0
value = 12, 1

[State 1000]
type = PlaySnd
trigger1 = Time = 0
value = 2,1

[State 1000, Velset]
type = VelSet
trigger1 = AnimElem = 3
x = 4

[State 1000, Brilla]
type = PalFX
trigger1 = AnimElem = 1
time = 20
add = 50,0,0
sinadd = 150,150,150,3

[State 1000, Brilla]
type = PalFX
trigger1 = AnimElem = 4
time = 15
add = 50,0,0
sinadd = 150,150,150,3

[State 1000]
type = Explod
trigger1 = AnimElem = 1
pos = 5,-50
anim = 8003
sprpriority = 5
supermove = 0
removeongethit = 1
scale = .2, .2
ownpal = 1
removetime = 20

[State 1000]
type = Explod
trigger1 = AnimElem = 1
pos = 14,-50
anim = 8004
sprpriority = 3
supermove = 0
removeongethit = 1
scale = .7, .7
ownpal = 1
removetime = 20

[State 1000, POLVERE]
type = Explod
trigger1 = AnimElem = 1
pos = 10,0
anim = 7010
sprpriority = -2
supermove = 0
removeongethit = 1
ID = 7010
scale = .7, .7
ownpal = 1

[State 1000]
type = Explod
trigger1 = AnimElem = 3
pos = 38,0
anim = 7084
sprpriority = 5
supermove = 0
removeongethit = 1
scale = .8, .8
ownpal = 1

[State 1000]
type = PlaySnd
trigger1 = Time = 25
value = 0, 1

[State 1000]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Hard
damage    = 23,9
guardflag = MA
getpower = 0
givepower = 0
pausetime = 2,80
sparkno = s7004
sparkxy = -20,-65
hitsound   = s5,3
guardsound = S6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = 0,-1
envshake.time = 20           
envshake.ampl = 7
envshake.freq = 100
Palfx.time          = 10
Palfx.add           = 150,50,0
Palfx.sinadd        = -112,-122,-112,3

[State 1000]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = movehit >= 1
value = 1001
ctrl = 1

[State 1000]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = movehit = 0
value = 0
ctrl = 1

;---------------
[Statedef 1001]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 207
sprpriority = -1

[State 1001]
type = PlaySnd
trigger1 = Time = 0
value = 12, 2

[State 1001, Brilla]
type = PalFX
trigger1 = AnimElem = 2
time = 15
add = 50,0,0
sinadd = 150,150,150,3

[State 1001, Velset]
type = VelSet
trigger1 = AnimElem = 1
x = 4

[State 1001]
type = Explod
trigger1 = AnimElem = 2
pos = 18,1
anim = 7084
sprpriority = 5
supermove = 0
removeongethit = 1
scale = .8, .8
ownpal = 1

[State 1001]
type = PlaySnd
trigger1 = Time = 5
value = 0, 2

[State 1001]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Hard
damage    = 25
guardflag = MA
getpower = 0
givepower = 0
pausetime = 2,80
sparkno = s7001
sparkxy = -20,-65
hitsound   = S5,1
guardsound = S6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = 0,-1
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
Palfx.time          = 10
Palfx.add           = 150,50,0
Palfx.sinadd        = -112,-122,-112,3

[State 1001]
type = ChangeState
triggerall = AnimElem = 7
trigger1 = movehit >= 1
value = 1002
ctrl = 1

[State 1001]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = movehit = 0
value = 0
ctrl = 1

;---------------
[Statedef 1002]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 208
sprpriority = 2

[State 1002]
type = PlaySnd
trigger1 = Time = 0
value = 12, 3

[State 1002, Brilla]
type = PalFX
trigger1 = AnimElem = 2
time = 15
add = 50,0,0
sinadd = 150,150,150,3

[State 1002, Velset]
type = VelSet
trigger1 = AnimElem = 1
x = 2

[State 1002]
type = Explod
trigger1 = AnimElem = 1
pos = 38,0
anim = 7084
sprpriority = 5
supermove = 0
removeongethit = 1
scale = .8, .8
ownpal = 1

[State 1002]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 1002]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Hard
damage    = 25
guardflag = MA
getpower = 0
givepower = 0
pausetime = 2,8
sparkno = s7002
sparkxy = -25,-74
hitsound   = S1,4
guardsound = S6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -10,-3
air.velocity = -10,-3
envshake.time = 30           
envshake.ampl = 7
envshake.freq = 200
fall = 1
fall.recover = 0             
fall.damage = 15             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
p2stateno = 1025
Palfx.time          = 20
Palfx.add           = 150,50,0
Palfx.sinadd        = -112,-122,-112,3

[State 1002]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Flash Punch
[Statedef 1010]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 313
sprpriority = 2

[State 1010]
type = PlaySnd
trigger1 = Time = 0
value = 0, 1

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
value = 12, 0

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 11
value = 12, 1

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
value = 0, 2

[State 14, Brilla]
type = PalFX
trigger1 = AnimElem = 3
time = 45
add = 50,0,0
sinadd = 150,150,150,3

[State 1010]
type = Explod
trigger1 = AnimElem = 4
pos = 45,-40
anim = 80001
sprpriority = 5
supermove = 0
removeongethit = 1
ownpal = 1
removetime = 10
bindtime = -1

[State 1010]
type = Explod
trigger1 = AnimElem = 8
pos = 45,-105
anim = 80002
sprpriority = 5
supermove = 0
removeongethit = 1
ownpal = 1
removetime = 10
bindtime = -1

[State 1010]
type = Explod
trigger1 = AnimElem = 12
pos = 50,-45
anim = 8000
sprpriority = 5
supermove = 0
removeongethit = 1
ownpal = 1
removetime = 10
bindtime = -1
scale = 1.5, 1.5

[State 1010]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
attr = S, SA
animtype  = Hard
damage    = 30,3
guardflag = MA
getpower = 0
givepower = 0
pausetime = 2,10
sparkno = s7002
sparkxy = -20,-65
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = 0,-1
envshake.time = 20           
envshake.ampl = 7
envshake.freq = 100
Palfx.time          = 15
Palfx.add           = 150,50,0
Palfx.sinadd        = -112,-122,-112,3
fall = 0
fall.recover = 0             
fall.damage = 0             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1010]
type = HitDef
trigger1 = AnimElem = 13
attr = S, SA
animtype  = Hard
damage    = 30,3
guardflag = MA
getpower = 0
givepower = 0
pausetime = 2,10
sparkno = s7002
sparkxy = -20,-65
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = 0,-1
envshake.time = 20           
envshake.ampl = 7
envshake.freq = 100
Palfx.time          = 15
Palfx.add           = 150,50,0
Palfx.sinadd        = -112,-122,-112,3
fall = 1
fall.recover = 0             
fall.damage = 0             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1010]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Steel Punch 
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 311
sprpriority = -1

[State 1020]
type = PlaySnd
trigger1 = Time = 10
value = 12, 1

[State 1020]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 1020]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Medium
damage    = 80,9
hitflag = MAFD
guardflag = MA
getpower = 0
givepower = 0
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
fall = 1
fall.recover = 0             
fall.damage = 10             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 30
Palfx.add           = 150,50,0
Palfx.sinadd        = -112,-122,-112,3

[State 1020]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,5

[State 1020, Lampi]
type = Explod
trigger1 = AnimElem = 7
anim = 7010
ID = 7010
pos = 50,2
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1020, meteor]
type = Explod
trigger1 = AnimElem = 8
anim = 7005
ID = 7005
pos = 50,-5
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
trigger1 = AnimElem = 8
value = 255,255,255
under = 0
time = 3

[State 1020, envshake]
type = EnvShake
trigger1 = AnimElem = 7
time = 50

[state 1020, white fadeout]
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
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

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
value = 240,0

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
value = 1029

[State 1029]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

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

[State 1029] 
type = SelfState
Trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = time = 150
value = 5100

;-----------------------------------------------------
; reverse explosion spin
[Statedef 10291]
type    = A
movetype= H 
physics = N

[State 10291]
type = ChangeAnim2
trigger1 = 1
value = 1029

[State 10291]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 10291]
type = VelAdd
Trigger1 = Time >= 0
y = .3

[State 10291]
type = Offset
Trigger1 = Time >= 1
y = -50

[State 10291]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 10291]
type = AngleAdd
trigger1 = Time >= 1
value = -22.5

[State 10291]
type = AngleDraw
trigger1 = Time >= 1
trigger1 = Pos Y <= 10

[State 10291]
type = SelfState
Trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = time = 150
value = 5100

;---------------------------------------------------------------------------
;Armatura Meccanica by Tux 
[Statedef 1030]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1030
sprpriority = 2

[State 1030]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1030]
type = HitDef
triggerall = MoveHit = 0
trigger1 = 1
attr = S, NA
animtype  = Light
damage    = 5
getpower = 0
givepower = 0
pausetime = 1,1
sparkno = -1
hitsound   = S1,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -15
air.velocity = -15,0

[State 1030]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,5

[State 1030]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,4

[State 1030]
type = PlaySnd
trigger1 = Time = 21
value = 4,3

[State 1030]
type = Explod
trigger1 = AnimElem = 3
anim = 7010
pos = -7,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 0
supermove = 1
scale = .7, .7

[State 1030]
type = Explod
trigger1 = AnimElem = 6
anim = 1031
pos = 0,0
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 0
supermove = 1

[State 1030]
type = Helper
trigger1 = Time = 43
sprpriority = 5
pos = 75,0
postype = p1
stateno = 1031
ID = 1031
keyctrl = 0          
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 1030]
type = Explod
trigger1 = Time = 98
anim = 1033
postype = p1
pos = 0,0
sprpriority = 5
ignorehitpause = 1
ownpal = 0
supermove = 1

[State 1030]
type = Explod
trigger1 = AnimElem = 10
anim = 7010
pos = -7,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 0
supermove = 1
removetime = 70
scale = .7, .7

[State 1030]
type = PlaySnd
trigger1 = AnimElem = 11
trigger2 = AnimElem = 15
value = 4,0

[State 1030]
type = PlaySnd
trigger1 = AnimElem = 15
trigger2 = AnimElem = 17
value = 4,4

[State 1030]
type = PlaySnd
trigger1 = AnimElem = 19
value = 4,2

[State 1030]
type = PlaySnd
trigger1 = AnimElem = 23
value = 4,1

[State 1030]
type = PlaySnd
trigger1 = AnimElem = 21
value = 4,3

[State 1030]
type = PlaySnd
trigger1 = AnimElem = 25
value = 4,4

[State 192]
type = PlaySnd
trigger1 = AnimElem = 27
value = 4,5

[State 1030]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1031]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 1032
ctrl = 0
sprpriority = 5

[State 1031]
type = HitDef
triggerall = MoveHit = 0
trigger1 = 1
attr = S, SP
animtype  = Up               
damage    = 65
priority  = 5
hitflag = MAFD
getpower = 0
givepower = 0
pausetime = 1,0
sparkno = -1
hitsound = S1,3
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = 0,-10
air.velocity = 0,-10
p2facing = 1                 
fall = 1
fall.recover = 0             
fall.damage = 15             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
p2stateno = 10291

[State 1031]
type = PlaySnd
trigger1 = Time = 0
value = 5,12

[State 1031]
type = VelSet
trigger1 = Time = 0
x = 10

[State 1031]
type = Explod
trigger1 = Time = 0
anim = 8001
pos = 0,-40
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
supermove = 1
scale = .6, .8

[State 1031]
type = Explod
trigger1 = Time = 10
anim = 8001
pos = 0,-35
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
supermove = 1
scale = .5, .7

[State 1031]
type = Explod
trigger1 = Time = 20
anim = 8001
pos = 0,-30
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
supermove = 1
scale = .4, .6

[State 1031]
type = Explod
trigger1 = Time = 0
anim = 7085
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 0
supermove = 1
removetime = 30
scale = .7, .7
bindtime = -1

[State 1031]
type = Turn
trigger1 = Time = 30

[State 1031]
type = VelSet
trigger1 = Time = 30
x = 10

[State 1031]
type = Explod
trigger1 = Time = 30
anim = 8001
pos = 0,-40
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
supermove = 1
scale = .6, .8

[State 1031]
type = Explod
trigger1 = Time = 40
anim = 8001
pos = 0,-35
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
supermove = 1
scale = .5, .7

[State 1031]
type = Explod
trigger1 = Time = 50
anim = 8001
pos = 0,-30
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
supermove = 1
scale = .4, .6

[State 1031]
type = Explod
trigger1 = Time = 30
anim = 7085
pos = -30,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 0
supermove = 1
removetime = 30
scale = .7, .7
bindtime = -1

[State 1031]
type = DestroySelf
trigger1 = Time = 55

;---------------------------------------------------------------------------
;Fox Cannon
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 205
sprpriority = -1

[State 3000] 
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3000]
type = SuperPause
trigger1 = Time = 0
time = 55
movetime = 0
anim = s7007
pos = 5, -48
darken = 1

[State 3000, SuperPause]
type = Explod
trigger1 = AnimElem = 1
pos = 12,-50
anim = 8003
sprpriority = -4
supermove = 1
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
scale = 1, 1
removetime = 55

[State 3000]
type = PlaySnd
trigger1 = Time = 0
value = 5,2

[State 3000, envshake]
type = EnvShake
trigger1 = AnimElem = 1
time = 50

[State 3000]
type = PlaySnd
trigger1 = Time = 0
value = 12, 1

[State 3000]
type = PlaySnd
trigger1 = Time = 0
value = 5,10

[State 3000]
type = PlaySnd
trigger1 = Time = 0
value = 5,11

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 2

[State 3000, Brilla]
type = PalFX
trigger1 = AnimElem = 4
time = 30
add = 50,0,0
sinadd = 150,150,150,3

[State 3000, POLVERE]
type = Explod
trigger1 = AnimElem = 1
pos = 10,0
anim = 7010
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
scale = .7, .7
removetime = 100

[State 3000, eletrik]
type = Explod
trigger1 = AnimElem = 1
pos = 14,-50
anim = 8004
sprpriority = 3
supermove = 1
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
scale = .7, .7
removetime = 65

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,13

[State 3000, scia]
type = Explod
trigger1 = AnimElem = 5
pos = 10,3
anim = 7087
sprpriority = 5
supermove = 1
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1

[State 3000, eletriko]
type = Explod
trigger1 = AnimElem = 6
pos = -8,-95
anim = 428
sprpriority = -2
supermove = 1
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 4
value = 12, 2

[State 3000, Helper]
type = Helper
trigger1 = AnimElem = 6
sprpriority = 2
pos = 28,-65
postype = p1
stateno = 3002
ID = 3002
keyctrl = 0          
ownpal = 1
size.xscale = 1
size.yscale = 1

[State 3000, sfondo]
type = Explod
trigger1 = AnimElem = 6
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

[State 3000, Darken]
type = BGPalfx
trigger1 = AnimElem = 2
ignorehitpause = 1
time = 180
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3000]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;[State 3000, can]
;type = Explod
;trigger1 = time = 0
;pos = 15,-50
;anim = 6000
;ID = 6000
;sprpriority = -2
;ownpal = 1
;supermove = 1
;removetime = 60
;removeongethit = 1
;bindtime = -1
;scale = 1.5, 1.5

;-------------------
[Statedef 3002]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 8006
ctrl = 0
sprpriority = 2

[State 3002]
type = PlaySnd
trigger1 = Time = 0
value = 5,5

[State 3002, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3002, Velset]
type = VelSet
trigger1 = AnimElem >= 2
x = 4

[State 3002]
type = AfterImage
trigger1 = time = 0
time = 200
PalBright = 10,10,10
PalContrast = 128,128,128
trans = Add

[State 3002]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
attr = A, HP                     
damage = 15,2
animtype = hard                 
guardflag = MA
hitflag = MAF
getpower = 0
givepower = 0
priority = 99, Hit                
pausetime = 0, 5                 
sparkno = s8002
sparkxy = 0,0
hitsound   = s5,11
guardsound = S6,0
ground.type = low 
ground.slidetime = 5             
ground.hittime  = 12               
ground.velocity = -5,0             
air.velocity = -5,-1
air.type = High                  
air.hittime = 12
getpower = 0,0 
envshake.time = 30           
envshake.ampl = 7
envshake.freq = 200
fall = 1
fall.recover = 0             
fall.damage = 0             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 30
Palfx.add           = 150,50,0
Palfx.sinadd        = -112,-122,-112,3

[state 3002, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3002, eletriko]
type = Explod
trigger1 = time = 0
pos = -120,32
anim = 8001
ID = 8001
sprpriority = 3
supermove = 1
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removetime = -1
scale = .7, .7

[State 3002]
type = ChangeState
trigger1 = time = 150    
value = 3003

;Helper destroyself
[Statedef 3003]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
velset = 0,0
anim = 8008
ctrl = 0
sprpriority = 2

[State 3003, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3003, removeEX]
type = RemoveExplod
triggerall = NumExplod(8001) >= 1
trigger1 = time = 0
ID = 8001

[State 3003]
type = destroyself
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Bomb Punch
[Statedef 3020]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -2000
ctrl = 0
velset = 0,0
anim = 209
sprpriority = -1

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12, 1

[State 3020]
type = PlaySnd
trigger1 = time = 50
value = 12, 2

[State 3020]
type = SuperPause
trigger1 = AnimElem = 3
time = 85
movetime = 85
anim = s7008
pos = -5, -70
darken = 1

[State 3020]
type = PlaySnd
trigger1 = Time = 0
value = 5,2

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,11

[State 3020, POLVERE]
type = Explod
trigger1 = AnimElem = 3
pos = 12,0
anim = 7010
ID = 7010
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
scale = .7, .7
removetime = 200

[State 3020, POLVERE]
type = Explod
trigger1 = AnimElem = 10
pos = 12,0
anim = 7010
ID = 7010
sprpriority = -3
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
scale = 1, 1
removetime = 200

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 4
value = 5,10

[State 3020, eletrik]
type = Explod
trigger1 = AnimElem = 4
pos = 4,-45
anim = 8004
ID = 8004
sprpriority = 3
supermove = 1
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
scale = .7, .7
removetime = 150

[State 3020, Brilla]
type = PalFX
trigger1 = AnimElem = 4
time = 80
add = 50,0,0
sinadd = 150,150,150,3

[State 3020]
type = ChangeState
trigger1 = Time = 100
value = 3021
ctrl = 1

[Statedef 3021]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 2

[State 3021]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 3

[State 3021, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 3021, removeEX]
type = RemoveExplod
triggerall = NumExplod(8004) >= 1
trigger1 = time = 0
ID = 8004

[State 3021, envshake]
type = EnvShake
trigger1 = AnimElem = 5
time = 65

[State 3021, stones]
type = Explod
trigger1 = AnimElem = 5
pos = -40,15
anim = 8050
sprpriority = -5
supermove = 1
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1

[State 3021, eletrik]
type = Explod
trigger1 = AnimElem = 5
pos = 50,-8
anim = 7007
sprpriority = 5
supermove = 1
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1

[State 3021]
type = PlaySnd
trigger1 = time = 0
value = 5,13

[State 3021]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,0

[State 3021]
type = Projectile
trigger1 = AnimElem = 5
projanim = 8009
projhits = 100
projmisstime = 3
projpriority = 4
projremovetime = 64
offset = 50, 0
sparkno = s7002
sparkxy = 50,-50
velocity = 0,0 
attr = S, HP
damage    = 15,2
animtype = Hard
guardflag = MA
hitflag = MAFD
getpower = 0
givepower = 0
pausetime = 0,9
hitsound   = s1,5
guardsound = s5,3
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0,-1
air.velocity = 0,-1
air.juggle = 3
air.animtype = Back
projscale = 1.4, 1.4
envshake.time = 30           
envshake.ampl = 7
envshake.freq = 175
fall = 1
fall.recover = 0             
fall.damage = 50             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 30
Palfx.add           = 150,50,0
Palfx.sinadd        = -112,-122,-112,3
p2stateno = 1029

[state 3021, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3021, Darken]
type = BGPalfx
trigger1 = AnimElem = 5
ignorehitpause = 1
time = 110
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3021, sfondo]
type = Explod
trigger1 = AnimElem = 5
pos = -320,0
anim = 8051
ID = 8051
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

[State 3021]
type = ChangeState
trigger1 = Time = 110
value = 3023
ctrl = 1

[Statedef 3023]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 211
sprpriority = -1

[State 3023]
type = PlaySnd
trigger1 = time = 0
value = 0, 0

[State 3023, removeEX]
type = RemoveExplod
triggerall = NumExplod(8051) >= 1
trigger1 = time = 0
ID = 8051

[State 3023]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Steel Hurricane
;corsa
[Statedef 3010]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 1                      
velset = 0,0                     
ctrl = 0                        
anim = 100                       
poweradd = -3000                  
sprpriority = 1 

[State 3010]
type = PlaySnd
trigger1 = Time = 0
value = 13,6

[State 3010]
type = PlaySnd
trigger1 = time = 0
value = 5,7

[State 3010, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 40
movetime = 0
pos = 25,-60
anim = s7008
darken = 1

[State 3010, afterimage]
type = AfterImage
trigger1 = AnimElem = 1
time = 30
PalBright = 10,10,10
PalContrast = 128,128,58
trans = Add1

[State 3010, POLVERE]
type = Explod
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
pos = 20,3
anim = 7084
sprpriority = 5
supermove = 0
removeongethit = 1
scale = .8, .8

[State 3010]
type = PlaySnd
trigger1 = Animelem = 3
value = 3, 0

[State 3010]
type = PlaySnd
trigger1 = Animelem = 6
value = 3, 1

[State 3010]
type = VelSet
triggerall = time > 10
trigger1 = 1
x = 8

[State 3010]
type = ChangeState
trigger1 = P2Dist X <= 80
value = 3011
ctrl = 1

[State 3010, Velset]
type = VelSet
trigger1 = time = 69
x = 0

[State 3010, Velset]
type = VelSet
trigger1 = frontedgedist < 5
x = 0

[State 3010]
type = ChangeState
trigger1 = frontedgedist < 5
value = 0
ctrl = 1

;--------------------
[Statedef 3011]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 1                      
velset = 0,0                     
ctrl = 0                        
anim = 310                       
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

[State 3011, tornado]
type = Explod
trigger1 = time = 5
pos = 80, 1
anim = 8030
ID = 8030
postype = p1
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 660
scale = 1.5, 1.5

;Fine tornado
[State 3011, tornado]
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
scale = 1.5, 1.5

[State 3011, removeEX]
type = RemoveExplod
triggerall = NumExplod(8030) = 1
trigger1 = time = 330
ID = 8030

[State 3011]
type = PlaySnd
trigger1 = Animelem = 3
value = 5,9

[State 3011] 
type = HitDef
trigger1 = Time >= 10
attr = S, HA
animtype  = Up               
damage    = 1, 18;ifelse((time%3 = 0),1,0)
getpower  = 0
priority  = 5
guardflag = MA
hitflag = MAFD
getpower = 0
givepower = 0
pausetime = 1,0
sparkno = -1
sparkxy = 0,-120
hitsound   = -1;s5,9
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
fall.damage = 0             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100            
maxdist = 100,-10           
yaccel = .8 

[State 3011] 
type = HitDef
trigger1 = Time >= 100
attr = S, HA
animtype  = Up               
damage    = 2, ifelse((time%3 = 0),1,0)
getpower  = 0
priority  = 5
guardflag = MA
hitflag = MAFD
getpower = 0
givepower = 0
pausetime = 1,0
sparkno = -1
sparkxy = 0,-120
hitsound   = -1;s5,9
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
fall.damage = 10             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100            
maxdist = 100,-10           
yaccel = .8 

[State 3011]
type = PlaySnd
trigger1 = Time = 330
value = 1,4

[State 3011] 
type = HitDef
trigger1 = Time >= 330
attr = S, HA
animtype  = Up               
damage    = 1, ifelse((time%3 = 0),1,0)
getpower  = 0
priority  = 5
guardflag = MA
hitflag = MAFD
getpower = 0
givepower = 0
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
fall.damage = 10             
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
value = 12,0

[State 3011, afterimage]
type = AfterImage
trigger1 = Time = 0
time = 336
PalBright = 10,10,10
PalContrast = 128,128,58
trans = Add1

[State 3011, Darken]
type = BGPalfx
trigger1 = Time = 1
ignorehitpause = 1
time = 336
mul = 90,90,120
add = 5,5,5
invertall = 0

[state 3011, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3011, sfondo]
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
removetime = 330

[State 3011, tornado]
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

[State 3011, tornado]
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

[State 3011, tornado]
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

[State 3011]
type = ChangeState
triggerall = p2movetype != H
trigger1 = time >= 20
value = 3012
ctrl = 1

[State 3011]
type = ChangeState
trigger1 = time = 336
value = 0
ctrl = 1

;fine Parato
[Statedef 3012]
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
[State 3012, tornado]
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

[State 3012, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 8030

[State 3012, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 8053

[State 3012]
type = ChangeState
trigger1 = time = 10
value = 0
ctrl = 1

;-------------------------------------------------------
;Terremoto della Volpetta by Tux
[Statedef 3030]
type = S
movetype = A
physics = S
anim = 1400
juggle = 5
velset = 0,0
ctrl = 0
poweradd = 100

[State 3030]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 3030, Voce]
type = PlaySnd
trigger1 = Time = 5
value = 12,0

[State 3030]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,12

[State 3030]
type = Explod
triggerall = NumExplod(7006) = 0
trigger1 = AnimElem = 3
anim = 7006
ID = 7006
pos = 70,-67
postype = p1
sprpriority = 4
supermove = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
ownpal = 1
removeongethit = 1
scale = .8, .8

[State 3030]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
attr = S, NA
animtype  = Hard
damage    = 11,1
priority  = 5
guardflag = MA
getpower = 0
givepower = 0
pausetime = 1,4
sparkno = -1
hitsound   = -1
guardsound = S6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 4
ground.velocity = 0
air.velocity = 0,0
guard.velocity = 0
airguard.velocity = 0,0
envshake.time = 25
envshake.ampl = 5
envshake.freq = 150
p2facing = 1
p2stateno = 3031

[State 3030]
type = HitDef
trigger1 = AnimElem = 9
attr = S, NA
animtype  = Hard
damage    = 15,1
priority  = 5
guardflag = MA
getpower = 0
givepower = 0
pausetime = 1,4
sparkno = -1
hitsound   = -1
guardsound = S6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 4
ground.velocity = 0
air.velocity = 0,0
guard.velocity = 0
airguard.velocity = 0,0
envshake.time = 25           
envshake.ampl = 5
envshake.freq = 150
p2facing = 1                 
fall = 1
fall.recover = 0             
fall.damage = 0

[State 3030]
type = PlaySnd
trigger1 = AnimElem = 10
value = 0,1

[State 144002]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3031]
type = S
movetype = H
physics = S
velset = 0,0
ctrl = 0

[State 3031]
type = ChangeAnim
trigger1 = (Time % 2) = 0
value = 5000

[State 3031]
type = ChangeAnim
trigger1 = (Time % 2) = 1
value = 0

[State 3031]
type = SelfState
trigger1 = HitShakeOver = 1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; AI variabili (statedef -2)
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

;2 pugni + Spunch
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 220
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 200) && (movecontact) 
value = 1020

;3 pugni + Spunch 
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
value = 225
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 225) && (prevstateno = 210) && (movecontact) 
value = 1020

;2 pugni + Fpunch
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

;3 pugni + Fpunch 
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
value = 225
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 225) && (prevstateno = 210) && (movecontact) 
value = 1010

;combo + superpugno (HYPER)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 1002) 
trigger1 = (movecontact) && (power >= 2000) 
value = 3020

;2 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 210

;2 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 225) 
trigger1 = (movecontact)
value = 220

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

;3 pugni 
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
value = 220

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220) 
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 220) && (movecontact) 
value = 225

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
value = 225
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 225) && (prevstateno = 210) && (movecontact) 
value = 220

;---------------------------------------------------------------------------

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
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240) 
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 240) && (movecontact) 
value = 250

;---------------------------------------------------------------------------

;calci + Pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220) 
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 220) && (movecontact) 
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 230) && (movecontact) 
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact) 
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 210) && (movecontact) 
value = 225
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 225) && (prevstateno = 240) && (movecontact) 
value = 250

;---------------------------------------------------------------------------
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
value = 430
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 430) && (prevstateno = 410) && (movecontact) 
value = 420
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 420) && (prevstateno = 430) && (movecontact) 
value = 440
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 440) && (prevstateno = 420) && (movecontact) 
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
;Combo in aria
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
value = 650

;Combo in aria
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 640
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 640) && (prevstateno = 620) && (movecontact) 
value = 630

;Combo in aria
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

;Combo in aria
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

;---------------------------------------------------------------------------
;Special Moves
;---------------------------------------------------------------------------

;Charge
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 159])
trigger1 = (P2bodydist X >= 280) && (prevstateno != 5120)
value = 900

;Hand Quake
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype = S) && (ctrl) && (random = [160, 239])
trigger1 = (P2bodydist X <= 75) && (prevstateno != 5120)
value = 3030

;combo karate
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [240, 319])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120)
value = 1000

;FlashPunch
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [320, 399])
trigger1 = (P2bodydist X <= 60) && (prevstateno != 5120)
value = 1010

;SuperPunch
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [400, 479])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 1020

;Mechanical Armour
[State -2]
type = changestate
Triggerall = (roundstate = 2) && ((P2StateType = S) || (P2StateType = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [480, 559])
trigger1 = (P2bodydist X > 150) && (prevstateno != 5120) 
value = 1030

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [560,639])
value = 199

;---------------------------------------------------------------------------
;Super Moves
;---------------------------------------------------------------------------

;FOX CANNON
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 160) && (power >= 1000) && (random = [640,719])
value = 3000

;Bomb Punch
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 160) && (power >= 2000) && (power <= 2999) && (random = [720,799])
value = 3020

;Steel Hurricane
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X < 180) && (power >= 3000) && (random = [800,879])
value = 3010

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 40
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 45
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 100
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 105
trigger1 = time = 1
value = 12,0


[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 225
trigger1 = time = 1
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 450
trigger1 = time = 1
value = 12,1


[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 200
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 210
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 220
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 230
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 240
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 250
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 400
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 410
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 420
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 430
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 440
trigger1 = time = 1
value = 12,0


[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 600
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 610
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 620
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 630
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 640
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 650
trigger1 = time = 1
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
value = 10,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10,0

[State -2]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10,1

[State -2]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 10,1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[Statedef -3]

[State -3, AI Activate]
type = VarSet
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
var(59) = 1

;---------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 2
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 5
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 2
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 5
value = F3, 1

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = time = 1
value = 2, 0

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = time = 1
value = F2, 0

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = 2, 1

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = F2, 1

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = time = 1
value = 2, 2

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = time = 1
value = F2, 3

;---------------------------------------

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = time = 1
time = 25
palbright = 10,10,10
palcontrast = 98,98,98
trans = add1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = time = 1
pos = 0,0
anim = 7084
sprpriority = 5
ownpal = 1
removeongethit = 1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = animelem = 3
pos = 0,0
anim = 7085
sprpriority = 5
ownpal = 1
removeongethit = 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = time = 1
value = 2, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = time = 1
value = F2, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 3
value = 3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 3
value = F3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 6
value = 3, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 6
value = F3, 1

;---------------------------------------

[State -3, Run Back]
type = AfterImage
triggerall = stateno = 105
trigger1 = time = 1
time = 15
palbright = 10,10,10
palcontrast = 98,98,98
trans = add1

[State -3, Run Back]
type = Explod
triggerall = stateno = 105
trigger1 = time = 5
pos = -5,15
anim = 70841
sprpriority = 5
removeongethit = 1
scale = 0.8,0.8
ownpal = 1

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = time = 1
value = 2, 0

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = time = 1
value = F2, 0

[State -3, Run Back Land]
type = PlaySnd
triggerall = stateno = 106
trigger1 = time = 1
value = 2, 2

[State -3, Run Back Land]
type = PlaySnd
triggerall = stateno = 106
trigger1 = time = 1
value = F2, 3

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
value = 5,1

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