;---------------------------------------------------------------------------
; SHO ST FILE by Squall
;---------------------------------------------------------------------------

; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170]
type = PlaySnd
trigger1 = time = 18
value = 13,10

[State 170]
type = PlaySnd
trigger1 = time = 109
value = 1,1

[State 170]
type     = AssertSpecial
trigger1 = Time = [0,168]
flag     = roundnotover

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180]
type = ChangeState
trigger1 = Var(4) = 1
value = 182

[State 190, 1]
type = VarRandom
triggerall = Var(4) = 0
trigger1 = Time = 0
v = 2
range = 0,99

[State 190, 3]
type = ChangeState
triggerall = Var(4) = 0
trigger1 = !MatchOver
value = 181

[State 190, 3]
type = ChangeState
triggerall = Var(4) = 0
trigger1 = MatchOver
value = 183

;---------------------------------------------------------------------------
; Win pose 1 - Cesare
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 181, Assert]
type     = AssertSpecial
trigger1 = Time = [0,200]
flag     = roundnotover

[State 300]
type = PlaySnd
trigger1 = time = 0
value = 13,5

[State 901, ico win]
type = Explod
trigger1 = AnimElem = 1
anim = 177222
ID = 177222
pos = -310, 210
postype = right
sprpriority = 4
supermove = 2
removetime = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 2 - Trio
[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 182, Assert]
type     = AssertSpecial
trigger1 = Time = [0,220]
flag     = roundnotover

[State 182, Helper]
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

[State 182, Voice]
type = PlaySnd
trigger1 = Time = 7
value = 13,4

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 3 - braccio su
[Statedef 183]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 300]
type = PlaySnd
trigger1 = Animelem = 5
value = 13,14
channel = 0

[State 183, Assert]
type     = AssertSpecial
trigger1 = Time = [0,170]
flag     = roundnotover

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
;---------------------------------------------------
;intro state decider
[Statedef 191]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 190, 2]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 192

[State 190, 2]
type = ChangeState
trigger1 = Var(2) = [50,74]
value = 193

[State 190, 2]
type = ChangeState
trigger1 = Var(2) = [75,99]
value = 194

;---------------------------------------------------------------------------
; Intro con vestizione
[Statedef 192]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 0]
type = AssertSpecial
trigger1 = Time = [0,355]
flag = Intro

[State 191, Aircraft sound]
type = PlaySnd
trigger1 = Animelem = 1
value = 5,15

[State 191, Aircraft]
type = Explod
trigger1 = AnimElem = 4
pos = 0,-150
anim = 191
sprpriority = 5
removetime = 45

[State 191, Landing]
type = PlaySnd
trigger1 = Animelem = 5
value = 52,0

[State 191, cloth]
type = PlaySnd
trigger1 = Animelem = 22
value = 4,1

[State 191, fulmine]
type = PlaySnd
trigger1 = Animelem = 15
value = 1,8

[State 191, polver]
type = PlaySnd
trigger1 = Animelem = 14
value = 2,1

[State 191, tucano]
type = PlaySnd
trigger1 = Animelem = 20
value = 5, 11

[State 901, spause]
type = Explod
trigger1 = AnimElem = 23
pos = 0,-15
anim = 75
sprpriority = 5

[State 901, fulmini]
type = Explod
trigger1 = AnimElem = 15
pos = -20,0
anim = 72
sprpriority = -5
removetime = 100

[State 901, polvere]
type = Explod
trigger1 = AnimElem = 14
pos = -5,5
anim = 74
sprpriority = 5
removetime = 110

[State 901, tucano]
type = Explod
trigger1 = AnimElem = 20
pos = 0,-80
anim = 84
sprpriority = 9

[State 191, 1] ;Intro not yet over
type = VarSet
trigger1 = Time = 0
v = 9
value = 1

[State 191, 3] ;Intro over, set v9 to 0
type = VarSet
trigger1 = Time = 65
v = 9
value = 0

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

[State 191, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------------------------------------------
; Intro parlante 1
[Statedef 193]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 193, 0]
type = AssertSpecial
trigger1 = Time = [0,131]
flag = Intro

[State 193, 1]
type = PlaySnd
trigger1 = Time = 0
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

[State 193, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------------------------------------------
; Intro parlante 1
[Statedef 194]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 194, 0]
type = AssertSpecial
trigger1 = Time = [0,162]
flag = Intro

[State 194, 1]
type = PlaySnd
trigger1 = Time = 0
value = 13,0
channel = 0

[State 194, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 194, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;provocazione state decider
[Statedef 195]
type = S
ctrl = 0
velset = 0,0

[State 195, 1]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 195, 2]
type = ChangeState
trigger1 = Var(2) = [0,99]
value = 196

; provocazione 1
[Statedef 196]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2
poweradd = 0

[State 300]
type = PlaySnd
trigger1 = time = 0
value = 13,18
channel = 0

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Pugno leggero
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

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     
damage = 20
animtype = Light                 
guardflag = MA                   
hitflag = MAF                    
priority = 3, Hit                
pausetime = 8, 8                 
sparkno = s7000
guard.sparkno = S7004
sparkxy = -10, -90               
hitsound   = S1,0
guardsound = S6,1                
ground.type = High               
ground.slidetime = 5             
ground.hittime  = 12             
ground.velocity = -4             
airguard.velocity = -1.9,-.8     
air.type = High                  
air.velocity = -1.4,-3           
air.hittime = 12                 

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;pugno medio
[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 210
sprpriority = -1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = s7001
guard.sparkno = S7004
sparkxy = -10, -88 
hitsound   = S1,1
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;pugno forte
[Statedef 201]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 8,0
anim = 220
sprpriority = -1

[State 1015, scia]
type = Explod
trigger1 = Animelem = 1
anim = 7089
pos = 0,0
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = s7002
guard.sparkno = S7004
sparkxy = -10, -90 
hitsound   = S1,2
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Calcio Debole
[Statedef 290]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
anim = 240
sprpriority = 2
velset = 0,0

[State 250, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 20
guardflag = MA
pausetime = 1,1
sparkno = s7000
guard.sparkno = S7004
sparkxy = -10, -75
hitsound   = S1,0
guardsound = S6,1
ground.type = High
ground.slidetime = 4
ground.hittime  = 5
ground.velocity = -3
air.velocity = -1.2,-2.2

[State 250, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Calcio Medio
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 230, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = s7001
guard.sparkno = S7004
sparkxy = -15, -23
hitsound   = S1,1
guardsound = S6,1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2.5,-3.5

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

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
anim = 250
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 40
guardflag = MA
pausetime = 8,8
sparkno = s7002
guard.sparkno = S7004
sparkxy = -20, -95 
hitsound   = S1,2
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;pugno leggero abbasato
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 400
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 10,11
sparkno = s7000
guard.sparkno = S7004
sparkxy = -5,-50
hitsound   = S1,0
guardsound = S6,1
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, 3]
type = CtrlSet
trigger1 = Time = 5
value = 1

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
;pugno medio abbasato
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 410, 3] 
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 30
animtype  = Heavy
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7001
guard.sparkno = S7004
sparkxy = -5,-50
hitsound   = S1,1
guardsound = S6,1
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -3,-4

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;pugno forte abbasato
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 420
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 410, 3] 
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 20
animtype  = Heavy
hitflag = MAF
guardflag = MA
pausetime = 3,12
sparkno = s7001
guard.sparkno = S7004
sparkxy = -5,-53
hitsound   = S1,2
guardsound = S6,1
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -3,-4

[State 410, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 20
animtype  = Heavy
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = s7002
guard.sparkno = S7004
sparkxy = -5,-93
hitsound   = S1,5
guardsound = S6,1
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7,-2
air.velocity = -3,-4
fall = 1

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;calcio leggero abbasato
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

[State 440, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 440, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 30
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7001
guard.sparkno = S7004
sparkxy = -10,-8
hitsound   = S1,0
guardsound = S6,1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5
air.velocity = -1.2,-3
guard.velocity = -5

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;calcio medio abbasato
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 430
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 440, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7000
guard.sparkno = S7004
sparkxy = -10,-8
hitsound   = S1,1
guardsound = S6,1
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20
fall = 1

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;calcio forte abbasato - scivolata
[Statedef 450]
type    = C
movetype= A
physics = C
velset = 10,0
juggle  = 7
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

[State 440, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,4

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = -25,5
anim = 7089
sprpriority = 5

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7002
guard.sparkno = S7004
sparkxy = -10,-8
hitsound   = S1,2
guardsound = S6,1
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Pugno leggero in salto
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 50
ctrl = 0
anim = 600
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s7000
guard.sparkno = S7004
sparkxy = -10,-28
hitsound   = S1,0
guardsound = S6,1
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 600, 3]
type = CtrlSet
trigger1 = Time = 17
value = 1

;---------------------------------------------------------------------------
;Pugno medio in salto
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 610, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 30
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7001
guard.sparkno = S7004
sparkxy = -10,-58
hitsound   = S1,1
guardsound = S6,1
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

;---------------------------------------------------------------------------
;pugno forte in salto
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 620
sprpriority = 2

[State 610, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 610, 3]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = A, NA
damage = 40
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002
guard.sparkno = S7004
sparkxy = -10,-48
hitsound   = S1,2
guardsound = S6,1
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

;---------------------------------------------------------------------------
;calcio leggero in salto
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 640
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7001
guard.sparkno = S7004
sparkxy = -5,-37
hitsound   = S1,0
guardsound = S6,1
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3

;---------------------------------------------------------------------------
;calcio medio in salto
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 630
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7000
guard.sparkno = S7004
sparkxy = -5,-37
hitsound   = S1,1
guardsound = S6,1
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3

;---------------------------------------------------------------------------
;calcio forte in salto
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 650
sprpriority = 2

[State 640, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 40
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002
guard.sparkno = S7004
sparkxy = -5,-30
hitsound   = S1,2
guardsound = S6,1
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

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
value = 9, 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 13, 9
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
value = 9, 2

[State 901, Explod]
type = Explod
Triggerall = NumExplod(6000) = 0
trigger1 = Time = 0
anim = 6000
ID = 6000
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = -3
removeongethit = 1

[State 901, polvere]
type = Explod
triggerall = numexplod(7006) = 0
trigger1 = 1
anim = 7006
ID = 7006
pos = 0,7
bindtime = 1
scale = 0.9,0.9
sprpriority = -3
ownpal = 1
removeongethit = 1

[State 901, polvere]
type = Explod
triggerall = numexplod(7007) = 0
trigger1 = 1
anim = 7007
ID = 7007
pos = -3,8
bindtime = 1
scale = 0.8,0.8
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 901]
type = Explod
triggerall = numexplod(7008) = 0
trigger1 = 1
anim = 7008
ID = 7008
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
triggerall = numexplod(7009) = 0
trigger1 = 1
anim = 7009
ID = 7009
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

[State 901, 1]
type = ChangeState
triggerall = Var(59) = 0
trigger1 = command != "charge"
trigger2 = command != "charge 1"
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
triggerall = numexplod(7006) >= 1
trigger1 = time = 0
ID = 7006

[State 902]
type = RemoveExplod
triggerall = numexplod(7007) >= 1
trigger1 = time = 0
ID = 7007

[State 902]
type = RemoveExplod
triggerall = numexplod(7008) >= 1
trigger1 = time = 0
ID = 7008

[State 902]
type = RemoveExplod
triggerall = numexplod(7009) >= 1
trigger1 = time = 0
ID = 7009

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
value = 9, 3

[State 902, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;SPECIAL
;---------------------------------------------------------------------------

;Tucano's Kick Near
[Statedef 1000]
type = A
physics = S
anim = 1000
poweradd= 100
juggle = 1
ctrl = 0

[State 191, voce]
type = PlaySnd
trigger1 = time = 0
value = 13,8
Channel = 0

[State 8887]
type = PlaySnd
trigger1 = time = 0
value = 0,3

;afterimage
[State 630, afterI]
type = AfterImage
trigger1 = time = 2
time = 50;20
FrameGap = 2
length = 10
PalContrast =  200,0,0
PalBright = 10,10,10
trans = Add1

[State 630 , vel]
type = VelSet
trigger1 = AnimElem = 2
x = 2
y = -9

[State 630 , 4]
type = ChangeState
trigger1 = Time = 30
value = 1001
ctrl = 0

;---------------------------------------------------------------------------
;Air kick
[Statedef 1001]
type = A
movetype = A
physics = A
anim = 1001
poweradd= 0
juggle = 1
ctrl = 0

[State 630 , vel]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = 9

[State 191, voce]
type = PlaySnd
trigger1 = Animelem = 1
value = 13,6
channel = 0

[State 901, scia]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 1002
ID = 1002
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 901, scia]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 1003
ID = 1003
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 630 , 3]
type = HitDef
trigger1 = Time = 0
priority = 6
attr = A, SA
damage = 90,9
getpower = 0
givepower = 0
animtype = hard
guardflag = HA
sparkxy = 0,0
sparkno = s7002
guard.sparkno = S7004
hitsound   = S1,12
guardsound = S6,1
pausetime = 12,12
ground.hittime = 13
ground.type = high
ground.slidetime = 9
ground.velocity = 0,5
air.velocity = 0,5
envshake.time =  20 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5
fall = 1
fall.recover = 0

[State 630 , 4]
type = ChangeState
trigger1 = Pos Y >= -5
value = 50
ctrl = 0

;-----------------------------------------------------------------------
;Tucano's Kick Medium
[Statedef 1010]
type = A
physics = S
anim = 1000
poweradd= 100
juggle = 1
ctrl = 0

[State 191, voce]
type = PlaySnd
trigger1 = time = 0
value = 13,8
Channel = 0

[State 8887]
type = PlaySnd
trigger1 = time = 0
value = 0,3

;afterimage
[State 630, afterI]
type = AfterImage
trigger1 = time = 2
time = 50;20
FrameGap = 2
length = 10
PalContrast =  200,0,0
PalBright = 10,10,10
trans = Add1

[State 630 , vel]
type = VelSet
trigger1 = Time >= 5
x = 5
y = -9

[State 630 , 4]
type = ChangeState
trigger1 = Time = 30
value = 1001
ctrl = 0

;-----------------------------------------------------------------------
;Tucano's Kick Far
[Statedef 1020]
type = A
physics = S
anim = 1000
poweradd= 100
juggle = 1
ctrl = 0

[State 191, voce]
type = PlaySnd
trigger1 = time = 0
value = 13,8
Channel = 0

[State 8887]
type = PlaySnd
trigger1 = time = 0
value = 0,3

;afterimage
[State 630, afterI]
type = AfterImage
trigger1 = time = 2
time = 50;20
FrameGap = 2
length = 10
PalContrast =  200,0,0
PalBright = 10,10,10
trans = Add1

[State 630 , vel]
type = VelSet
trigger1 = Time >= 5
x = 8
y = -9

[State 630 , 4]
type = ChangeState
trigger1 = Time = 30
value = 1001
ctrl = 0

;--------------------------------------------------------------------
;Fireball Debole
[Statedef 1100]
type    = S
movetype= A
physics = N
juggle  = 6
poweradd= 100
velset = 0,0
anim = 3040
ctrl = 0
sprpriority = 2

[State 191, voce]
type = PlaySnd
trigger1 = Animelem = 2
value = 13,8
Channel = 0

[State 300]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,4

[State 300]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,4

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = 60,-80
anim = 69
sprpriority = 9
removeongethit = 1

[State 1010, 2]
type = Projectile
trigger1 = AnimElem = 3
projanim = 65
ProjID = 65
offset = 40, -85
velocity = 9,0
attr = S, SP
damage    = 60,6
animtype = Heavy
guardflag = MA
pausetime = 0,9
sparkno = s66
guard.sparkno = S7004
sparkxy = 0,0
hitsound   = S1,9
guardsound = S1,8
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5, -5
air.animtype = Back
air.velocity = -6,-5
air.juggle = 3
envshake.time =  30
envshake.freq = 20
envshake.ampl = 3
envshake.phase = 3
;PalFX
palfx.time = 20
palfx.add = 130,100,190

[State 1010, 7]
type = Helper
trigger1 = AnimElem = 3
name = "Dust"
stateno = 1101

[State 1010, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1101]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 5,0
anim = 71
sprpriority = 3

[State 1001, 1]
type = VelSet
trigger1 = parent, NumProjID(65) = 0
x = 0

[State 1001, 3]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;Fireball Media
[Statedef 1110]
type    = S
movetype= A
physics = N
juggle  = 6
poweradd= 100
velset = 0,0
anim = 3040
ctrl = 0
sprpriority = 2

[State 191, voce]
type = PlaySnd
trigger1 = Animelem = 2
value = 13,8
Channel = 0

[State 300]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,4

[State 300]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,4

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = 60,-80
anim = 69
sprpriority = 9
removeongethit = 1

[State 1010, 2]
type = Projectile
trigger1 = Time = 15
projanim = 65
ProjID = 65
offset = 40, -85
velocity = 6,0
attr = S, SP
damage    = 30,3
animtype = Heavy
guardflag = MA
pausetime = 0,9
sparkno = s66
guard.sparkno = S7004
sparkxy = 0,0
hitsound   = S1,9
guardsound = S1,8
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5, -5
air.animtype = Back
air.velocity = -6,-5
air.juggle = 3
envshake.time =  30
envshake.freq = 20
envshake.ampl = 3
envshake.phase = 3
;PalFX
palfx.time = 20
palfx.add = 130,100,190

[State 1010, 2]
type = Projectile
trigger1 = Time = 30
projanim = 65
ProjID = 65
offset = 40, -85
velocity = 6,0
attr = S, SP
damage    = 35,3
animtype = Heavy
guardflag = MA
pausetime = 0,9
sparkno = s66
guard.sparkno = S7004
sparkxy = 0,0
hitsound   = S1,9
guardsound = S1,8
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5, -5
air.animtype = Back
air.velocity = -6,-5
air.juggle = 3
envshake.time =  30
envshake.freq = 20
envshake.ampl = 3
envshake.phase = 3
;PalFX
palfx.time = 20
palfx.add = 130,100,190

[State 1010, 7]
type = Helper
trigger1 = AnimElem = 3
name = "Dust"
stateno = 1101

[State 1010, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Fireball Forte
[Statedef 1105]
type    = S
movetype= A
physics = N
juggle  = 6
poweradd= 100
velset = 0,0
anim = 3040
ctrl = 0
sprpriority = 2

[State 191, voce]
type = PlaySnd
trigger1 = Animelem = 2
value = 13,9
Channel = 0

[State 300]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,4

[State 300]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,4

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = 60,-80
anim = 69
sprpriority = 9
removeongethit = 1

[State 1010, 2]
type = Projectile
trigger1 = AnimElem = 3
projanim = 65
ProjID = 65
offset = 40, -85
velocity = 5,0
attr = S, SP
damage    = 35,3
animtype = Heavy
guardflag = MA
pausetime = 0,9
sparkno = s66
guard.sparkno = S7004
sparkxy = 0,0
hitsound   = S1,9
guardsound = S1,8
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5, -5
air.animtype = Back
air.velocity = -6,-5
air.juggle = 3
envshake.time =  30
envshake.freq = 20
envshake.ampl = 3
envshake.phase = 3
;PalFX
palfx.time = 20
palfx.add = 130,100,190
Fall = 1

[State 1010, 2]
type = Projectile
trigger1 = Time = 19
projanim = 70
offset = 65, 5
velocity = 5,0
attr = S, SP
damage    = 35,3
animtype = Heavy
guardflag = MA
pausetime = 0,9
sparkno = s71
guard.sparkno = S7004
sparkxy = -25,0
hitsound   = S1,9
guardsound = S1,8
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5, -5
air.animtype = Back
air.velocity = -6,-5
air.juggle = 3
envshake.time =  30
envshake.freq = 20
envshake.ampl = 3
envshake.phase = 3
;PalFX
palfx.time = 20
palfx.add = 80,200,250
Fall = 1

[State 1010, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;super pugno combo V1
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 3010
sprpriority = -1

[State 191, voce]
type = PlaySnd
trigger1 = Animelem = 2
value = 13,6
channel = 0

[State 300]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
value = 2,1

[State 300]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,4

[State 901, scia]
type = Explod
trigger1 = AnimElem = 4
pos = 120,-70
anim = 790
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = 0,5
anim = 7089
sprpriority = 5

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 3
pos = 35,5
anim = 71
sprpriority = 9

[State 1113,remanescence]
type = AfterImage
trigger1 = time = 0
time = 35
length = 20
PalContrast =  200,0,0
PalBright = 10,10,10
trans = Add1

[State 432, 0]
type = VelSet
trigger1 = Time >= 9 && Time <= 28
x = 4

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Hard
damage    = 40,4
guardflag = MA
pausetime = 1,12
sparkno = s7003
guard.sparkno = S7004
sparkxy = 0,-90
hitsound   = S5,8
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4
envshake.time =  25 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5
;PalFX
palfx.time = 20
palfx.add = 80,200,250

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Hard
damage    = 40,4
guardflag = MA
pausetime = 8,8
sparkno = s7003
guard.sparkno = S7004
sparkxy = 0,-90
hitsound   = S1,2
guardsound = S6,1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -15,-10
air.velocity = 8,6
fall = 1
p2stateno = 1025
;PalFX
palfx.time = 20
palfx.add = 80,200,250

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------
;super pugno combo V2
[Statedef 1210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 3011
sprpriority = -1

[State 191, voce]
type = PlaySnd
trigger1 = Animelem = 2
value = 13,7
channel = 0

[State 300]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
value = 2,1

[State 300]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,4

[State 901, scia]
type = Explod
trigger1 = AnimElem = 3
pos = 120,-70
anim = 790
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
pos = 0,5
anim = 7089
sprpriority = 5

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
pos = 35,5
anim = 71
sprpriority = 9

[State 1113,remanescence]
type = AfterImage
trigger1 = time = 0
time = 35
length = 20
PalContrast =  200,0,0
PalBright = 10,10,10
trans = Add1

[State 432, 0]
type = VelSet
trigger1 = Time >= 9 && Time <= 28
trigger2 = AnimElem = 8
x = 7

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = S, SA
animtype  = Hard
damage    = 20,2
guardflag = MA
pausetime = 1,25
sparkno = s7002
guard.sparkno = S7004
sparkxy = 0,-90
hitsound   = S5,8
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4
envshake.time =  25
envshake.freq = 20
envshake.ampl = 5
envshake.phase = 5
;PalFX
palfx.time = 50
palfx.add = 80,200,250

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = S, SA
animtype  = Hard
damage    = 45,4
guardflag = MA
pausetime = 8,8
sparkno = s7003
guard.sparkno = S7004
sparkxy = 0,-90
hitsound   = S1,2
guardsound = S6,1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -15,-10
air.velocity = 8,6
fall = 1
p2stateno = 1025
envshake.time =  35
envshake.freq = 20
envshake.ampl = 5
envshake.phase = 5
;PalFX
palfx.time = 20
palfx.add = 80,200,250

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------
;super pugno combo V3
[Statedef 1220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 3012
sprpriority = -1

[State 191, voce]
type = PlaySnd
trigger1 = Animelem = 2
value = 13,6
channel = 0

[State 300]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,1

[State 300]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,4

[State 901, scia]
type = Explod
trigger1 = AnimElem = 3
pos = 120,-70
anim = 790
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = 0,5
anim = 7089
sprpriority = 5

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 3
pos = 35,5
anim = 71
sprpriority = 9

[State 1113,remanescence]
type = AfterImage
trigger1 = time = 0
time = 35
length = 20
PalContrast =  200,0,0
PalBright = 10,10,10
trans = Add1

[State 432, 0]
type = VelSet
trigger1 = Time >= 9 && Time <= 28
x = 15

[State 432, 0]
type = VelSet
trigger1 = Movehit && Time <= 28
trigger1 = Moveguarded && Time <= 28
x = 20

[State 432, 0]
type = VelSet
trigger1 = Animelem = 5
x = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = Time >= 11 && Time <= 28
value = 0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Hard
damage    = 90,9
guardflag = MA
pausetime = 0,15
sparkno = s7003
guard.sparkno = S7004
sparkxy = 0,-90
hitsound   = S1,2
guardsound = S6,1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0,0
air.velocity = 0,0
fall = 1
;p2stateno = 1025
;PalFX
palfx.time = 20
palfx.add = 80,200,250

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
;Air kick
[Statedef 1300]
type = A
movetype = A
physics = A
anim = 2000
poweradd= 100
juggle = 1
ctrl = 0

[State 191, voce]
type = PlaySnd
trigger1 = Animelem = 2
value = 13,6
channel = 0

[State 200, 2]
type = Playsnd
trigger1 = Animelem = 2
value = 2,0

[State 300]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,1

;afterimage
[State 630, afterI]
type = AfterImage
trigger1 = time = 2
time = 50;20
FrameGap = 2
length = 10
PalContrast =  200,0,0
PalBright = 10,10,10
trans = Add1

[State 630, 0]
type = SuperPause
trigger1 = Time = 0
trigger1 = AnimElem = 1
time = 13
anim = -1
movetime = 5

[State 630 , vel]
type = VelSet
trigger1 = AnimElem = 2
x = 15
y = 10

[State 630 , 3]
type = HitDef
trigger1 = Time = 0
priority = 6
attr = A, SA
damage = 80,8
getpower = 0
givepower = 0
animtype = hard
guardflag = HA
sparkxy = -10,0
sparkno = s7002
guard.sparkno = S7004
hitsound   = S1,12
guardsound = S6,1
pausetime = 12,12
ground.hittime = 13
ground.type = high
ground.slidetime = 9
ground.velocity = -10;-25
air.velocity = -3,-3
envshake.time =  20
envshake.freq = 20
envshake.ampl = 5
envshake.phase = 5
fall = 1
fall.recover = 0

[State 630 , 4]
type = ChangeState
trigger1 = Pos Y >= -5
value = 50
ctrl = 0

;----------------------------------------------------------------------
;Assorbimento
[Statedef 1400]
type = S
physics = S
anim = 1400
juggle = 5
velset = 0,0
ctrl = 0

[State 900, 2]
type = PlaySnd
trigger1 = (Time%160) = 0
value = 5,16
channel = 9

[State 0, PowerAdd]
type = PowerAdd
trigger1 = (Time%5) = 0
value = -10

[State 1401, light]
type = Explod
trigger1 = (Time%25) = 0
ID = 7440
anim = 744
pos = 10,-90
postype = p1
sprpriority = 5
supermove = 1
removetime = 28
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1

[State 1400 , 4]
type = Hitoverride
trigger1 = time >= 0
attr = SCA, NP, SP, HP
stateno = 1401

[State 1400 , 7]
type = ChangeState
triggerall = var(59) = 0
trigger1 = Command != "Assorbimento1"
trigger2 = Command != "Assorbimento2"
trigger3 = Power = 0
value = 0
ctrl = 1

[State 1400 , 7]
type = ChangeState
triggerall = var(59) = 1
trigger1 = p2movetype != A
trigger2 = random = [0,5]
trigger3 = Power = 0
value = 0
ctrl = 1

;-------------------------------------------------------
;Assorbimento p1
[Statedef 1401]
type = S
movetype = A
physics = S
anim = 1401
poweradd = 0
juggle = 5
velset = 0,0
ctrl = 0

[State 900, 2]
type = Stopsnd
trigger1 = Time = 0
channel = 9

[State 900, 2]
type = PlaySnd
trigger1 = Time = 0
value = 5,4
channel = 8

;Var Accumulo Hyper
[State 0, PowerAdd]
type = Varadd
trigger1 = Time = 0
value = 1
V = 58

;Var Sovraccarico
[State 0, PowerAdd]
type = Varadd
triggerall = Var(21) <= 30
trigger1 = Time = 0
value = 1
V = 21

[State 0, PowerAdd]
type = PowerAdd
trigger1 = Time = 0
value = -10

[State 1400 , 4]
type = Hitoverride
triggerall = var(21) < 24
triggerall = Power > 0
trigger1 = time >= 0
attr = SCA, NP, SP, HP
stateno = 1401

[State 1400 , 4]
type = Hitoverride
triggerall = var(21) >= 24
trigger1 = (command = "holdback") && (p2movetype = A)
attr = SCA, NP, SP, HP
stateno = 130

[State 1400 , 1]
type = PlaySnd
trigger1 = time = 0
value = 6,2

[State 1401, light]
type = Explod
triggerall = numexplod(699) = 0
trigger1 = Time >= 0
ID = 699
anim = 69
pos = 10,-90
postype = p1
sprpriority = 5
supermove = 1
removetime = 28
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 1401 , 2]
type = VelSet
trigger1 = time = 0
x = 0

[State 1401 , 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
;Steel Suplex
[Statedef 1500]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
anim = 1500
juggle = 0

[State 1500, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
getpower  = 50
givepower = 40
hitflag = M-
priority = 1, Miss
snap = 26, 0
sparkno = -1
p2facing = -1
p1stateno = 1501
p2stateno = 1502
p2getp1state = 1
hitsound = 6,0
fall = 1

[State 1500, 2] ;Holding fwd
type = HitDef
Trigger1 = Time = 0
Trigger1 = Command = "holdfwd"
attr = S, NT
getpower  = 50
givepower = 40
hitflag = M-
priority = 1, Miss
snap = 26, 0
sparkno = -1
p1facing = -1
p2facing = -1
p1stateno = 1501
p2stateno = 1502
p2getp1state = 1
hitsound = 6,0
fall = 1

[State 1500, 3]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Steel Suplex Success
[Statedef 1501]
type    = C
movetype= A
physics = N
anim = 1501

[State 1501, 1]
type = Width
Trigger1 = AnimElem = 1, >= 0
Trigger1 = AnimElem = 3, < 0
edge = 0,20

[State 1501, 1]
type = Width
Trigger1 = AnimElem = 3, >= 0
Trigger1 = AnimElem = 4, < 0
edge = 0,60

[State 1501, 1]
type = Width
Trigger1 = AnimElem = 4, >= 0
Trigger1 = AnimElem = 5, < 0
edge = 0,110

[State 1501, 2]
type = PlaySnd
Trigger1 = AnimElem = 2
value = 13,8
channel = 0

[State 1501, 3]
type = TargetBind
Trigger1 = Time >= 0
Trigger1 = AnimElem = 2, < 0
pos = 26,0
time = 1

[State 1501, 3]
type = TargetBind
Trigger1 = AnimElem = 2, >= 0
Trigger1 = AnimElem = 3, < 0
pos = 26,-30
time = 1

[State 1501, 4]
type = TargetBind
Trigger1 = AnimElem = 3, >= 0
Trigger1 = AnimElem = 4, < 0
pos = -37,-30
time = 1

[State 1501, 5]
type = TargetBind
Trigger1 = AnimElem = 4
Trigger1 = AnimElem = 5, < 0
pos = -110,0
time = 1

[State 1501, 6] ;Damage target
type = TargetLifeAdd
Trigger1 = AnimElem = 4
value = -75

[State 1501, 7] ;Shake
type = EnvShake
Trigger1 = AnimElem = 4
time = 30

[State 1501, 8] ;Hit ground sound
type = PlaySnd
Trigger1 = AnimElem = 4
value = F7,0

[State 1501, 9] ;Ground shockwave
type = Explod
trigger1 = AnimElem = 4
anim = F60
pos = -110, 0
under = 1

[State 1501, 8] ;Hit ground sound
type = turn
Trigger1 = animtime = 0

[State 1501, 10]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Thrown by Steel Suplex
[Statedef 1502]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0

[State 1502, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1502

[State 1502, 2]
type = ScreenBound
Trigger1 = Time >= 0
value = 0

[State 1502, 3] ;Bounce into air
type = ChangeState
Trigger1 = AnimElem = 5
value = 1503

;---------------------------------------------------------------------------
; Thrown by Steel Suplex (Bounce into air)
[Statedef 1503]
type    = L
movetype= H
physics = N
velset = -2,-6.3

[State 1503, 1] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .4

[State 1503, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive = 1
triggerall = CanRecover = 1
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 1503, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
type = SelfState
value = 5110

;---------------------------------------------------------------------------
;Uragano d'Acciaio (Solo)
;corsa
[Statedef 3400]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3400
poweradd = -3000
sprpriority = 1

[State 3011]
type = PlaySnd
trigger1 = Time = 0
value = 13,2
channel = 0

[State 3010]
type = PlaySnd
trigger1 = Time = 0
value = 5,11

[State 3010, SuperPause]
type = SuperPause
trigger1 = Time = 1
time = 33
movetime = 0
pos = 7,-60
anim = s7005
darken = 1

[State 3010, afterimage]
type = AfterImage
trigger1 = AnimElem = 1
time = 30
PalBright = 10,10,10
PalContrast = 128,128,128
trans = Add1

[State 3010, POLVERE]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
pos = 20,3
anim = 7089
sprpriority = 5
supermove = 1
removeongethit = 1

[State 3010]
type = PlaySnd
trigger1 = Animelem = 2
value = 3,0

[State 3010]
type = PlaySnd
trigger1 = Animelem = 5
value = 3,1

[State 3010]
type = VelSet
trigger1 = 1
x = 8

[State 3010]
type = ChangeState
trigger1 = P2Dist X <= 80
value = 3401
ctrl = 0

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
[Statedef 3401]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3401
poweradd = 0
sprpriority = 1

[State 3011]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 70
trigger3 = Time = 140
trigger4 = Time = 210
trigger5 = Time = 280
value = 5,14

[State 3011, tornado]
type = Explod
trigger1 = time = 5
pos = 60, 10
anim = 6003
ID = 320
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
pos = 60, 10
anim = 6004
ID = 3207
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
triggerall = NumExplod(320) = 1
trigger1 = time = 330
ID = 320

[State 3011]
type = HitDef
trigger1 = Time >= 10
attr = S, HA
animtype  = Up
damage    = 1, 18;ifelse((time%3 = 0),1,0)
getpower  = 0
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
envshake.time = 1
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
type = HitDef
trigger1 = Time >= 100
attr = S, HA
animtype  = Up
damage    = 2, ifelse((time%3 = 0),1,0)
getpower  = 0
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
envshake.time = 1
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
value = 5,12

[State 3011]
type = HitDef
trigger1 = Time >= 330
attr = S, HA
animtype  = Up
damage    = 1, ifelse((time%3 = 0),1,0)
getpower  = 0
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
ground.velocity = 0,-10
air.velocity = 0,-10
guard.velocity = -11
airguard.velocity = -4.5,-5
envshake.time = 1
envshake.ampl = 7
envshake.freq = 176
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
p2stateno = 7002

[State 3011]
type = PlaySnd
trigger1 = Time = 1
trigger2 = Time = 120
trigger3 = Time = 330
value = 1,6

[State 3011, afterimage]
type = AfterImage
trigger1 = Time = 0
time = 336
PalBright = 10,10,10
PalContrast = 128,128,128
trans = Add1

[State 3011, Darken]
type = BGPalfx
trigger1 = Time = 1
ignorehitpause = 1
time = 350
mul = 90,90,120
add = 5,5,5
invertall = 0

[state 3011, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
trigger2 = time > 10 && p2movetype != H
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3011, sfondo]
type = Explod
trigger1 = Time = 10
pos = -330,-10
anim = 3402
ID = 435
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

[State 3011, tornado]
type = Explod
trigger1 = Animelem = 2
trigger2 = Animelem = 15
pos = 60, 0
anim = 6001
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
pos = 50, 0
anim = 7089
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
pos = 70, 0
anim = 70891
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
value = 3402
ctrl = 1

[State 3011]
type = ChangeState
trigger1 = time = 336
value = 0
ctrl = 1

;fine Parato
[Statedef 3402]
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
[State 3011, tornado]
type = Explod
trigger1 = time = 0
pos = 60, 10
anim = 6004
ID = 3207
postype = p1
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermove = 1
scale = 1.5, 1.5

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 320

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 435

[State 3011]
type = ChangeState
trigger1 = time = 10
value = 0
ctrl = 1

;-----------------------------------------------------
; explosion spin
[Statedef 7002]
type    = A
movetype= H
physics = N

[State 7002]
type = ChangeAnim2
trigger1 = 1
value = 11000

[State 7002]
type = VelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 7002]
type = VelAdd
Trigger1 = Time >= 0
y = .3

[State 7002]
type = Offset
Trigger1 = Time >= 1
y = -50

[State 7002]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 7002]
type = AngleAdd
trigger1 = Time >= 1
value = 22.5

[State 7002]
type = AngleDraw
trigger1 = Time >= 1
trigger1 = Pos Y <= 10

[State 7002 ouch]
type = SelfState
Trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = time = 150
value = 5100



;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Uragano d'Acciaio (Trio)
;Posa+corsa
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

[State 0, Helper]
type = Helper
trigger1 = Time = 0
name = "Benam"
ID = 3502
stateno = 3502
pos = -440,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 80

[State 0, Helper]
type = Helper
trigger1 = Time = 0
name = "Lear"
ID = 3503
stateno = 3503
pos = -360,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 80

[State 3010]
type = PlaySnd
trigger1 = Time = 0
value = 5,11

[State 3010]
type = PlaySnd
trigger1 = Time = 0
value = 13,20

[State 3010]
type = PlaySnd
trigger1 = Time = 0
value = 13,21

[State 3010, SuperPause]
type = SuperPause
trigger1 = Time = 1
time = 80
movetime = 80
pos = 7,-60
anim = -1;s7005
darken = 1

[State 3010, SuperPause]
type = SuperPause
trigger1 = Time = 81
time = 33
movetime = 0
pos = 7,-60
anim = -1;s7005
darken = 1

[State 0, Snd]
type = PlaySnd
trigger1 = Time = 80
value = 9,3

[State 0, Explod]
type = Explod
trigger1 = Time = 80
anim = 7005
ID = 3510
pos = 7,-60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
sprpriority = 3
supermovetime = 113

[State 3010, afterimage]
type = AfterImage
trigger1 = AnimElem = 1
time = 30
PalBright = 10,10,10
PalContrast = 128,128,128
trans = Add1

[State 3010, POLVERE]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
pos = 20,3
anim = 7089
sprpriority = 5
supermove = 1
removeongethit = 1

[State 3010]
type = PlaySnd
trigger1 = Animelem = 2
value = 3,0

[State 3010]
type = PlaySnd
trigger1 = Animelem = 5
value = 3,1

[State 3011]
type = PlaySnd
trigger1 = Time = 80
value = 13,2
channel = 0

[State 3010]
type = VelSet
trigger1 = Time >= 82
x = 10

[State 3010]
type = ChangeState
triggerall = Time >= 82
trigger1 = P2Dist X <= 80
value = 3501
ctrl = 0

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

[State 0, Helper]
type = Helper
trigger1 = Time = 0
name = "Camera"
ID = 3504
stateno = 3504
pos = 0,170
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 80

[State 3011]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 70
trigger3 = Time = 140
trigger4 = Time = 210
trigger5 = Time = 280
value = 5,14

[State 3011, tornado]
type = Explod
trigger1 = time = 5
pos = 90, 20
anim = 6003
ID = 320
postype = p1
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 660
scale = 3, 3

;Fine tornado
[State 3011, tornado]
type = Explod
trigger1 = time = 5
pos = 90, 20
anim = 6004
ID = 3207
postype = p1
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = 3, 3

[State 3011, removeEX]
type = RemoveExplod
triggerall = NumExplod(320) = 1
trigger1 = time = 330
ID = 320

[State 3011]
type = HitDef
trigger1 = Time >= 10
attr = S, HA
animtype  = Up
damage    = 1, ifelse((time%3 = 0),1,0)
getpower  = 0
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

[State 3011]
type = HitDef
trigger1 = Time >= 100
attr = S, HA
animtype  = Up
damage    = 2, ifelse((time%3 = 0),1,0)
getpower  = 0
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

[State 3011]
type = PlaySnd
trigger1 = Time = 330
value = 5,12

[State 3011]
type = HitDef
trigger1 = Time >= 330
attr = S, HA
animtype  = Up
damage    = 1, ifelse((time%3 = 0),1,0)
getpower  = 0
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
p2stateno = 7002

[State 0, EnvShake]
type = EnvShake
trigger1 = (Time%10) = 0
time = 10
freq = 60
ampl = 4

[State 3011]
type = PlaySnd
trigger1 = Time = 1
trigger2 = Time = 120
trigger3 = Time = 330
value = 1,6

[State 3011, afterimage]
type = AfterImage
trigger1 = Time = 0
time = 336
PalBright = 10,10,10
PalContrast = 128,128,128
trans = Add1

[State 3011, Darken]
type = BGPalfx
trigger1 = Time = 1
ignorehitpause = 1
time = 350
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
pos = -330,-10
anim = 3516
ID = 435
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

[State 3011, tornado]
type = Explod
trigger1 = Animelem = 2
trigger2 = Animelem = 15
pos = 80, 10
anim = 6001
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
anim = 7089
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
anim = 70891
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
trigger1 = Time = 250
value = 13,13
channel = 0

[State 3011, Voice]
type = PlaySnd
trigger1 = Time = 336
value = 13,12
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
;Benam
[Statedef 3502]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3502
sprpriority = -1

;------Arrivo in corsa---------
[State 0, VelSet]
type = VelSet
trigger1 = Time <= 79
x = 5

;------Posa+effetto------------
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3502
trigger1 = time = 80
value = 3503

[State 0, Explod]
type = Explod
trigger1 = Time = 80
anim = 3510
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
triggerall = anim = 3503
triggerall = parent, stateno = 3500
trigger1 = parent, vel X > 0
value = 3502

[State 0, VelSet]
type = VelSet
triggerall = parent, stateno != 3501
trigger1 = parent, vel X > 0
x = 10

;-------Uragano---------
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = parent, stateno = 3501
trigger1 = Anim != 3504
flag = invisible

[State 0, PosSet]
type = PosSet
trigger1 = parent, stateno = 3501
x = Parent, Pos X
y = 0
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3502
triggerall = parent, stateno = 3501
trigger1 = parent, animelem = 10
value = 3504

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
triggerall = anim != 3508
trigger1 = Var(27) = 1
value = 183

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
;Lear
[Statedef 3503]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3505
sprpriority = 1

;------Arrivo in corsa---------
[State 0, VelSet]
type = VelSet
trigger1 = Time <= 79
x = 5

;------Posa+effetto------------
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3505
trigger1 = time = 80
value = 3506

[State 0, Explod]
type = Explod
trigger1 = Time = 80
anim = 3511
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
triggerall = anim = 3506
triggerall = parent, stateno = 3500
trigger1 = parent, vel X > 0
value = 3505

[State 0, VelSet]
type = VelSet
triggerall = parent, stateno != 3501
trigger1 = parent, vel X > 0
x = 10

;-------Uragano---------
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = parent, stateno = 3501
trigger1 = Anim != 3507
flag = invisible

[State 0, PosSet]
type = PosSet
trigger1 = parent, stateno = 3501
x = Parent, Pos X
y = 0
persistent = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3505
triggerall = parent, stateno = 3501
trigger1 = parent, animelem = 18
value = 3507

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
triggerall = anim != 3509
trigger1 = Var(27) = 1
value = 184

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
triggerall = anim != 3515
trigger1 = Var(27) = -1
value = 3515

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
[Statedef 3504]
type    = S
movetype= I
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3513
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

;Turbine d'Acciaio
[Statedef 3200]
type    = S
movetype= A
physics = S
anim = 3030
velset = 0,0
poweradd = -2000
juggle = 0
ctrl = 0

[State 200, 2]
type = Playsnd
trigger1 = Animelem = 2
value = 5,16

[State 200, 2]
type = Playsnd
trigger1 = Animelem = 2
value = 2,1

[State 200, 2]
type = Playsnd
trigger1 = Animelem = 1
value = 13,19
channel = 0

[State 630, 0]
type = SuperPause
trigger1 = Time = 1
time = 60
anim = S7005
pos = 10,-90
movetime = 60
darken = 1

[State 901, tornado]
type = Explod
trigger1 = AnimElem = 2
triggerall = NumExplod(69) = 0
anim = 744
ID = 69
pos = 10,-90
removetime = 100
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 901, polvere]
type = Explod
trigger1 = AnimElem = 2
triggerall = NumExplod(74) = 0
anim = 7006
ID = 74
pos = 0,7
removetime = 115
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 901, polvere]
type = Explod
trigger1 = AnimElem = 2
triggerall = NumExplod(78) = 0
anim = 7007
ID = 78
pos = -5,10
removetime = 115
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3201
ctrl = 1


[Statedef 3201]
type    = S
movetype= A
physics = S
anim = 3035
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 200, 2]
type = Playsnd
trigger1 = Animelem = 6
value = 5,14

[State 901, tornado]
type = Explod
trigger1 = AnimElem = 5
anim = 744
pos = 25,-92
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[state 1200, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 1700, envshake]
type = EnvShake
trigger1 = AnimElem = 6
time = 80

[State 1988, sfondo]
type = Explod
trigger1 = AnimElem = 5
anim = 87
pos = -320,0
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = 1.1,1.1
removetime = 105

[State 1988, sfondo]
type = Explod
trigger1 = AnimElem = 5
anim = 88
pos = -320,0
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = 1.1,1.1
removetime = 105

[State 0, Helper]
type = Helper
trigger1 = Animelem = 6
name = "Turbine"
ID = 3202
stateno = 3202
pos = 10, -97
postype = p1
size.xscale = 2.5
size.yscale = 0.6

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Turbine Helper
[Statedef 3202]
type    = S
movetype= A
physics = S
anim = 76
velset = 0,0
sprpriority = 3
poweradd = 0
juggle = 0
ctrl = 0

[State 0, PosAdd]
type = PosSet
triggerall = Facing = 1
trigger1 = Time >= 0
x = parent, Pos X+30

[State 0, PosAdd]
type = PosSet
triggerall = Facing = -1
trigger1 = Time >= 0
x = parent, Pos X-30

[State 0, HitDef]
type = HitDef
trigger1 = (Time%3) = 0
attr = S, HP
damage   = 12,2
animtype = heavy
guardflag = MA
hitflag = MAF
pausetime = 0,3
hitsound   = s1,6
sparkno = -1;s62
guard.sparkno = -1
sparkxy = 180,9999
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
fall = 1
fall.damage = 40
air.animtype = Back
air.velocity = -5,-8
air.juggle = 1
down.velocity = -10,0
down.hittime = 30
down.bounce = 0
;PalFX
palfx.time = 5
palfx.add = 150,180,250

[State 1988, sfondo]
type = Explod
trigger1 = moveguarded = 1
anim = 7004
pos = 10,-80
postype = p2
sprpriority = 7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 3201
trigger2 = parent, movetype = H
trigger3 = (parent, anim = 3035) && (parent, animelem = 24)

;------------------------------------------------------------------------------------------
;Mitraglia
[Statedef 3100]
type    = S
movetype= A
physics = S
anim = 3020
velset = 0,0
poweradd = -1000
juggle = 0
ctrl = 0

[State 3010]
type = PlaySnd
trigger1 = Time = 0
value = 5,11

[State 200, 2]
type = Playsnd
trigger1 = Animelem = 2
value = 9,3

[State 200, 2]
type = Playsnd
trigger1 = Animelem = 2
value = 2,1

[State 0, Explod]
type = Explod
trigger1 = Time = 0
anim = 7005
ID = 7005
pos = 20,-65
postype = p1  ;p2,front,back,left,right
bindtime = -1
supermove = 1
sprpriority = 2
removeongethit = 1

[State 630, 0]
type = SuperPause
trigger1 = AnimElem = 2
time = 50
anim = s75 
pos = 0,-5
movetime = 0
darken = 1

[State 191, voce]
type = PlaySnd
trigger1 = Animelem = 2
value = 13,16
channel = 0

[State 1988, polvere]
type = Explod
triggerall = NumExplod(73) = 0
trigger1 = AnimElem = 2
anim = 7006
ID = 83
pos = 10,7
postype = p1
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1988, sfondo]
type = Explod
trigger1 = Time = 6
anim = 67
pos = -320,0
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100

[State 200, 2]
type = Playsnd
trigger1 = (Time%6) = 0
value = 1,13

[State 0, Helper]
type = Helper
trigger1 = Time = 6
name = "Mitraglia"
ID = 3101
stateno = 3101
pos = 50, -85
postype = p1    ;p2,front,back,left,right

[State 1700, envshake]
type = EnvShake
trigger1 = Time = 6
trigger2 = Time = 48
trigger3 = Time = 95
time = 30

[state 1200, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Mitraglia Helper
[Statedef 3101]
type    = S
movetype= A
physics = S
anim = 68
velset = 0,0
sprpriority = 3
poweradd = 0
juggle = 0
ctrl = 0

[State 0, PosAdd]
type = PosSet
triggerall = facing = 1
trigger1 = Time >= 0
x = parent, Pos X +50

[State 0, PosAdd]
type = PosSet
triggerall = facing = -1
trigger1 = Time >= 0
x = parent, Pos X -50


[State 0, HitDef]
type = HitDef
trigger1 = (Time%3) = 0
attr = S, HP
damage   = 6,1
animtype = heavy
guardflag = MA
hitflag = MAF
pausetime = 0,3
hitsound   = s1,11
sparkno = -1
guard.sparkno = -1
sparkxy = 0,9999
guardsound = s6,2
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
fall = 1
fall.damage = 4
air.animtype = Back
air.velocity = -5,0
air.juggle = 1
down.velocity = -10,0
down.hittime = 30
down.bounce = 0
;PalFX
palfx.time = 10
palfx.add = 220,220,100

[State 1988, sfondo]
type = Explod
trigger1 = moveguarded = 1
anim = 7004
pos = 10,-80
postype = p2
sprpriority = 7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 3100
trigger2 = parent, movetype = H
trigger3 = (parent, anim = 3020) && (parent, animelem = 3)

;----------------------------------------------
;Contrattacco Energetico
[Statedef 3300]
type    = S
movetype= A
physics = S
anim = 3030
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0

[State 200, 2]
type = Playsnd
trigger1 = Animelem = 2
value = 5,16

[State 200, 2]
type = Playsnd
trigger1 = Animelem = 2
value = 2,1

[State 630, 0]
type = SuperPause
trigger1 = AnimElem = 2
time = 50
anim = s744
pos = 10,-90
movetime = 50
darken = 1

[State 1988, sfondo]
type = Explod
trigger1 = AnimElem = 1
anim = 3300
pos = -320,0
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 140

[State 901, tornado]
type = Explod
trigger1 = AnimElem = 2
triggerall = NumExplod(69) = 0
anim = 69
ID = 69
pos = 10,-90
removetime = 50
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 901, polvere]
type = Explod
trigger1 = AnimElem = 2
triggerall = NumExplod(74) = 0
anim = 7006
ID = 74
pos = 0,7
removetime = 50
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 901, polvere]
type = Explod
trigger1 = AnimElem = 2
triggerall = NumExplod(78) = 0
anim = 7007
ID = 78
pos = -5,8
removetime = 50
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301
ctrl = 1

;Lancio Fireball
[Statedef 3301]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd= 0
velset = 0,0
anim = 3041
ctrl = 0
sprpriority = 2

;Var Accumulo Hyper
[State 0, PowerAdd]
type = Varset
trigger1 = Time = 0
value = 0
V = 58

[State 191, voce]
type = PlaySnd
trigger1 = Animelem = 1
value = 13,17
Channel = 0

[State 300]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,13

[State 200, 2]
type = Playsnd
trigger1 = Animelem = 2
value = 2,1

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = 60,-80
anim = 69
sprpriority = 9

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = 7,9
anim = 74
sprpriority = 5
removetime = 70

[State 0, VarSet]
type = VarSet
trigger1 = Time = 0
v = 31
value = 0

[State 0, Helper]
type = Helper
trigger1 = Animelem = 3
name = "Proj"
ID = 3302
stateno = 3302
pos = 60,-80
postype = p1    ;p2,front,back,left,right

[State 0, Helper]
type = Helper
trigger1 = Animelem = 3
name = "Proj2"
ID = 3303
stateno = 3303
pos = 60,-80
postype = p1    ;p2,front,back,left,right

[State 0, Helper]
type = Helper
trigger1 = Animelem = 3
name = "Proj3"
ID = 3304
stateno = 3304
pos = 60,-80
postype = p1    ;p2,front,back,left,right

[State 0, Helper]
type = Helper
trigger1 = Animelem = 3
name = "Proj4"
ID = 3305
stateno = 3305
pos = 60,-80
postype = p1    ;p2,front,back,left,right

[State 0, Helper]
type = Helper
trigger1 = Animelem = 3
name = "Proj5"
ID = 3306
stateno = 3306
pos = 60,-80
postype = p1    ;p2,front,back,left,right

[State 1700, envshake]
type = EnvShake
trigger1 = AnimElem = 3
time = 30

[state 1200, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 1010, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Fireball Diritta
[Statedef 3302]
type    = A
movetype= A
physics = S
juggle  = 6
poweradd= 0
velset = 0,0
anim = 65
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0
x = 8
y = 0

[State 0, Turn]
type = Turn
trigger1 = frontedgedist < 5

[State 0, HitOverride]
type = HitOverride
trigger1 = Time >= 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3307
time = 1

[State 0, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
damage = 120,36
pausetime = 2,20
sparkno = S66
guard.sparkno = S7004
sparkxy = 0,0
hitsound = S1,10
guardsound = S6,1
ground.type = High
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
fall = 0
fall.recover = 0

[State 0, DestroySelf]
type = DestroySelf
Trigger1 = Movecontact

;---------------------------------------------------------------------------
;Fireball Diritto-alto
[Statedef 3303]
type    = A
movetype= A
physics = S
juggle  = 6
poweradd= 0
anim = 65
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = var(31) = 0
x = 8+(random/50)
y = -5-(random/100)

[State 0, VelSet]
type = VelSet
trigger1 = var(31) = 2
x = 8+(random/50)
y = -5-(random/100)

[State 0, VelSet]
type = VelSet
trigger1 = Var(31) = 1
x = 8+(random/50)
y = 5+(random/100)

[State 0, Turn]
type = Turn
trigger1 = frontedgedist < 10

[State 0, VarSet]
type = Varset
trigger1 = Pos Y <= -230
v = 31
value = 1

[State 0, VarSet]
type = Varset
trigger1 = Pos Y >= 0
v = 31
value = 2

[State 0, HitOverride]
type = HitOverride
trigger1 = Time >= 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3307
time = 1

[State 0, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 120,36
pausetime = 2,20
sparkno = S66
guard.sparkno = S7004
sparkxy = 0,0
hitsound = S1,10
guardsound = S6,1
ground.type = High      ;Low,Trip,None
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
fall = 0
fall.recover = 0

[State 0, DestroySelf]
type = DestroySelf
Trigger1 = Movecontact

;---------------------------------------------------------------------------
;Fireball alto
[Statedef 3304]
type    = A
movetype= A
physics = S
juggle  = 6
poweradd= 0
anim = 65
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = var(31) = 0
x = 7+(random/70)
y = -10-(random/100)

[State 0, VelSet]
type = VelSet
trigger1 = var(31) = 2
x = 7+(random/70)
y = -5-(random/100)

[State 0, VelSet]
type = VelSet
trigger1 = Var(31) = 1
x = 7+(random/70)
y = 5+(random/100)

[State 0, Turn]
type = Turn
trigger1 = frontedgedist < 10

[State 0, VarSet]
type = Varset
trigger1 = Pos Y <= -230
v = 31
value = 1

[State 0, VarSet]
type = Varset
trigger1 = Pos Y >= 0
v = 31
value = 2

[State 0, HitOverride]
type = HitOverride
trigger1 = Time >= 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3307
time = 1

[State 0, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 120,36
pausetime = 2,20
sparkno = S66
guard.sparkno = S7004
sparkxy = 0,0
hitsound = S1,10
guardsound = S6,1
ground.type = High      ;Low,Trip,None
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
fall = 1
fall.recover = 0

[State 0, DestroySelf]
type = DestroySelf
Trigger1 = Movecontact

;---------------------------------------------------------------------------
;Fireball Medio-Basso
[Statedef 3305]
type    = A
movetype= A
physics = S
juggle  = 6
poweradd= 0
anim = 65
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = var(31) = 0
x = 5+(random/60)
y = 5+(random/100)

[State 0, VelSet]
type = VelSet
trigger1 = var(31) = 2
x = 5+(random/60)
y = -5-(random/100)

[State 0, VelSet]
type = VelSet
trigger1 = Var(31) = 1
x = 5+(random/60)
y = 5+(random/100)

[State 0, Turn]
type = Turn
trigger1 = frontedgedist < 10

[State 0, VarSet]
type = Varset
trigger1 = Pos Y <= -230
v = 31
value = 1

[State 0, VarSet]
type = Varset
trigger1 = Pos Y >= 0
v = 31
value = 2

[State 0, HitOverride]
type = HitOverride
trigger1 = Time >= 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3307
time = 1

[State 0, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 120,36
pausetime = 2,20
sparkno = S66
guard.sparkno = S7004
sparkxy = 0,0
hitsound = S1,10
guardsound = S6,1
ground.type = High      ;Low,Trip,None
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
fall = 0
fall.recover = 0

[State 0, DestroySelf]
type = DestroySelf
Trigger1 = Movecontact

;---------------------------------------------------------------------------
;Fireball Basso
[Statedef 3306]
type    = A
movetype= A
physics = S
juggle  = 6
poweradd= 0
anim = 65
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = var(31) = 0
x = 5+(random/100)
y = 10+(random/100)

[State 0, VelSet]
type = VelSet
trigger1 = var(31) = 2
x = 5+(random/100)
y = -5-(random/100)

[State 0, VelSet]
type = VelSet
trigger1 = Var(31) = 1
x = 5+(random/100)
y = 5+(random/100)

[State 0, Turn]
type = Turn
trigger1 = frontedgedist < 10

[State 0, VarSet]
type = Varset
trigger1 = Pos Y <= -230
v = 31
value = 1

[State 0, VarSet]
type = Varset
trigger1 = Pos Y >= 0
v = 31
value = 2

[State 0, HitOverride]
type = HitOverride
trigger1 = Time >= 0
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 3307
time = 1

[State 0, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 120,36
pausetime = 2,20
sparkno = S66
guard.sparkno = S7004
sparkxy = 0,0
hitsound = S1,10
guardsound = S6,1
ground.type = High      ;Low,Trip,None
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
fall = 1
fall.recover = 0

[State 0, DestroySelf]
type = DestroySelf
Trigger1 = Movecontact

;---------------------------------------------------------------------------
;DestroySelf
[Statedef 3307]
type    = A
movetype= I
physics = S
juggle  = 6
poweradd= 0
anim = 66
ctrl = 0
sprpriority = 2

[State 0, DestroySelf]
type = DestroySelf
Trigger1 = Time = 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;iper pugno
[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 6
poweradd= -1000
velset = 0,0
anim = 3050
ctrl = 0
sprpriority = 2

[State 191, voce]
type = PlaySnd
trigger1 = Time = 0
value = 13,15
channel = 0

[State 1340, afterimage]
type = AfterImage
trigger1 = time = 1
time = 62
FrameGap = 2
length = 20
PalContrast =  200,0,0
PalBright = 10,10,10
trans = Add1

[State 300]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,11

[State 200, 2]
type = Playsnd
trigger1 = Animelem = 1
value = 2,1

[State 630, 0]
type = SuperPause
trigger1 = AnimElem = 1
time = 62
anim = s75 
pos = 10,-5
movetime = 0
darken = 1

[State 1988, polvere]
type = Explod
triggerall = NumExplod(83) = 0
trigger1 = AnimElem = 1
anim = 7006
ID = 83
pos = 5,7
postype = p1
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40

[State 1988, polvere]
type = Explod
triggerall = NumExplod(84) = 0
trigger1 = AnimElem = 1
anim = 84
ID = 84
pos = 0,-70
postype = p1
sprpriority = 7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40

[State 200, 2]
type = Playsnd
trigger1 = Animelem = 2
value = 5,14

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
pos = 0,5
anim = 7089
sprpriority = 8

[State 901, POLVERE]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
pos = 50,5
anim = 80
sprpriority = 9

[State 1988, Boom]
type = Explod
triggerall = NumExplod(55) = 0
trigger1 = AnimElem = 4
anim = 55
ID = 55
pos = 120,-70
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 432, 0]
type = VelSet
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
x = 5

[State 432, 0]
type = VelSet
trigger1 = AnimElem = 5
x = 20

[State 210, 2]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage    = 190,20
guardflag = MA
pausetime = 12,12
sparkno = s7003
guard.sparkno = s7004
sparkxy = -20,-70
hitsound   = S5,10
guardsound = S6,2
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -15,-10
air.velocity = 8,6
fall = 1
fall.recover = 0
fall.damage = 10
p2stateno = 1025
envshake.time =  35 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5
;PalFX
palfx.time = 40
palfx.add = 250,250,160

[state 1200, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 1988, striscia]
type = Explod
trigger1 = AnimElem = 4
anim = 81
pos = -320,110
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1988, sfondo]
type = Explod
trigger1 = AnimElem = 4
anim = 67
pos = -320,0
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 20

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------
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

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------

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

;---------------------------------------

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 5
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 410
trigger4 = stateno = 440
trigger5 = stateno = 610
trigger6 = stateno = 640
value = 13, 8
channel = 0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 500
triggerall = time = 5
trigger1 = stateno = 225
trigger2 = stateno = 220
trigger3 = stateno = 250
trigger4 = stateno = 420
trigger5 = stateno = 450
trigger6 = stateno = 620
trigger7 = stateno = 650
value = 13, 9
channel = 0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 13, 10

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 13, 10

[State -2, Random sound]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 13, 10

[State -2, Random sound]
type = PlaySnd
trigger1 = random < 500
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 13, 10

[State -2, Random sound]
type = PlaySnd
trigger1 = random < 750
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 13, 11

;---------------------------------------------------------------------------
; AI Combos
;---------------------------------------------------------------------------

; 3 Punches
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200)
trigger1 = (movecontact)
value = 215
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 215) && (prevstateno = 200) && (movecontact)
value = 201

; 3 Punches + Mini Sacro Toro
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 215)
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 215) && (movecontact)
value = 215
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 215) && (prevstateno = 200) && (movecontact)
value = 1200

; 3 Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 290)
trigger1 = (movecontact)
value = 220
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 290) && (movecontact)
value = 250

; 3 Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220)
trigger1 = (movecontact)
value = 290
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 290) && (prevstateno = 220) && (movecontact)
value = 250

; 3 Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200)
trigger1 = (movecontact)
value = 290
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 290) && (prevstateno = 200) && (movecontact)
value = 220

; 3 Kick + Super Calcio
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 215)
trigger1 = (movecontact)
value = 290
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 290) && (prevstateno = 215) && (movecontact)
value = 201
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 201) && (prevstateno = 290) && (movecontact)
value = 1220

; 3 Crouch Punches
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

; 2 Crouch Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430)
trigger1 = (movecontact)
value = 440

; 2 Crouch Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430)
trigger1 = (movecontact)
value = 450

; 3 Air Punches
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600)
trigger1 = (movecontact)
value = 620
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 620) && (prevstateno = 600) && (movecontact)
value = 610

; 3 Air Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640)
trigger1 = (movecontact)
value = 630
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 630) && (prevstateno = 640) && (movecontact)
value = 650

;---------------------------------------------------------------------------
;Special Moves
;---------------------------------------------------------------------------

;carica cosmo
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 119])
trigger1 = (P2bodydist X >= 200) &&  (power < 3000) && (prevstateno != 5120) && (p2movetype != H)
value = 900

;Presa d'Acciaio
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [120, 179])
trigger1 = (P2bodydist X < 5) && (prevstateno != 5120) && ((p2statetype = S) || (p2statetype = C)) && (p2movetype != H)
value = 1500

;Assorbimento
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [180, 239])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120) && (p2movetype = A) && (Power >= 500)
value = 1400

;Calcio volante
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [240, 299])
trigger1 = (P2bodydist X <= 200) && (prevstateno != 5120) && (p2statetype != L) && (NumProjID(65) = 0)
value = 1300

;fireball
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [300, 359])
trigger1 = (P2bodydist X >= 100) && (p2bodydist X < 130) && (prevstateno != 5120) && (p2statetype != L) && (NumProjID(65) = 0)
value = 1100
;fireball2
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [300, 359])
trigger1 = (P2bodydist X >= 130) && (p2bodydist X <= 180) && (prevstateno != 5120) && (p2statetype != L) && (NumProjID(65) = 0)
value = 1110
;fireball3
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [300, 359])
trigger1 = (P2bodydist X > 180) && (prevstateno != 5120) && (p2statetype != L)
value = 1105

;Combo
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [360, 419])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120) && (p2statetype != L)
value = 1200
;Combo
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [360, 419])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120) && (p2statetype != L)
value = 1210
;Combo
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [360, 419])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120) && (p2statetype != L)
value = 1220

;Tucano
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [420, 479])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120) && (p2statetype != L)
value = 1000
;Tucano
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [420, 479])
trigger1 = (P2bodydist X <= 150) && (p2bodydist X > 80) &&(prevstateno != 5120) && (p2statetype != L)
value = 1010
;Tucano
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [420, 479])
trigger1 = (P2bodydist X > 150) && (prevstateno != 5120) && (p2statetype != L)
value = 1020

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [480,539])
value = 195

;---------------------------------------------------------------------------
;Super Moves
;---------------------------------------------------------------------------

;uragano d'acciaio
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L) && (var(58) < 5)
trigger1 = (p2bodydist X >= 40) && (power >= 3000) && (p2life <= 250) && (random = [540,599])
value = 3500

;Uragano d'acciaio (Solo)
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L) && (var(58) < 5)
trigger1 = (p2bodydist X > 60) && (power >= 3000) && (random = [600,659])
value = 3400

;mitraglia
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L) && (var(58) < 5)
trigger1 = (p2bodydist X >= 100) && (power >= 2000) && (random = [660,719])
value = 3100

;Turbine d'acciaio
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L) && (var(58) < 5)
trigger1 = (p2bodydist X >= 100) && (power >= 2000) && (random = [720,779])
value = 3200

;Pugno energetico
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L) && (var(58) < 5)
trigger1 = (p2bodydist X >= 80) && (p2bodydist X <= 180) && (power >= 1000) && (power < 3000) && (random = [780,839])
value = 3000

;Contrattacco energetico
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X >= 90) && (power >= 3000) && (var(58) >= 5) && (random = [840,899])
value = 3300

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

;---------------------------------------

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Stateno != 1401
ID = 699

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Stateno != 1400
ID = 7440

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = var(58) = 0
ID = 1400
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = var(58) = 0
ID = 1401
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = var(58) = 0
ID = 1402
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = var(58) = 0
ID = 1403
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = var(58) = 0
ID = 1404

;----------------------------
;Accumula Fireball SX
[State -3, Explod]
type = Explod
triggerall = NumExplod(1400) = 0
trigger1 = var(19) = 1
trigger1 = var(58) >= 1
anim = 1402
ID = 1400
pos = 40,50
postype = left  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.3,0.3
sprpriority = -5
removeongethit = 0

[State -3, Explod]
type = Explod
triggerall = NumExplod(1401) = 0
trigger1 = var(19) = 1
trigger1 = var(58) >= 2
anim = 1402
ID = 1401
pos = 60,50
postype = left  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.3,0.3
sprpriority = -5
removeongethit = 0

[State -3, Explod]
type = Explod
triggerall = NumExplod(1402) = 0
trigger1 = var(19) = 1
trigger1 = var(58) >= 3
anim = 1402
ID = 1402
pos = 80,50
postype = left  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.3,0.3
sprpriority = -5
removeongethit = 0

[State -3, Explod]
type = Explod
triggerall = NumExplod(1403) = 0
trigger1 = var(19) = 1
trigger1 = var(58) >= 4
anim = 1402
ID = 1403
pos = 100,50
postype = left  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.3,0.3
sprpriority = -5
removeongethit = 0

[State -3, Explod]
type = Explod
triggerall = NumExplod(1404) = 0
trigger1 = var(19) = 1
trigger1 = var(58) >= 5
anim = 1402
ID = 1404
pos = 120,50
postype = left  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.3,0.3
sprpriority = -5
removeongethit = 0

;----------------------------
;Accumula Fireball DX
[State -3, Explod]
type = Explod
triggerall = NumExplod(1400) = 0
trigger1 = var(19) = 2
trigger1 = var(58) >= 1
anim = 1403
ID = 1400
pos = -40,50
postype = right  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.3,0.3
sprpriority = -5
removeongethit = 0

[State -3, Explod]
type = Explod
triggerall = NumExplod(1401) = 0
trigger1 = var(19) = 2
trigger1 = var(58) >= 2
anim = 1403
ID = 1401
pos = -60,50
postype = right  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.3,0.3
sprpriority = -5
removeongethit = 0

[State -3, Explod]
type = Explod
triggerall = NumExplod(1402) = 0
trigger1 = var(19) = 2
trigger1 = var(58) >= 3
anim = 1403
ID = 1402
pos = -80,50
postype = right  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.3,0.3
sprpriority = -5
removeongethit = 0

[State -3, Explod]
type = Explod
triggerall = NumExplod(1403) = 0
trigger1 = var(19) = 2
trigger1 = var(58) >= 4
anim = 1403
ID = 1403
pos = -100,50
postype = right  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.3,0.3
sprpriority = -5
removeongethit = 0

[State -3, Explod]
type = Explod
triggerall = NumExplod(1404) = 0
trigger1 = var(19) = 2
trigger1 = var(58) >= 5
anim = 1403
ID = 1404
pos = -120,50
postype = right  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.3,0.3
sprpriority = -5
removeongethit = 0

;Face Left
[State -2, faceVar]
type = VarSet
triggerall = Var(19) != 2
trigger1 = Facing = 1
v = 19
value = 1

;Face Right
[State -2, faceVar]
type = VarSet
triggerall = Var(19) != 1
trigger1 = Facing = -1
v = 19
value = 2

;-------------------------------------------------------------
;-------------------------------------------------------------
;-------------------------------------------------------------
;Sovraccarico

;Scaricamento
[State 0, VarSet]
type = VarAdd
triggerall = Var(21) > 0
triggerall = stateno != 1401
trigger1 = (gameTime%300) = 0
v = 21
value = -2

;No Neg-Value
[State 0, VarSet]
type = VarSet
trigger1 = Var(21) < 0
v = 21
value = 0

;Barra Fireball SX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1410) = 0
trigger1 = Facing = 1
trigger1 = Var(21) = [0,1]
anim = 1410
ID = 1410
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [0,1]
trigger2 = stateno != [1400,1401]
ID = 1410

;Barra Fireball SX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1411) = 0
trigger1 = Facing = 1
trigger1 = Var(21) = [2,3]
anim = 1411
ID = 1411
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [2,3]
trigger2 = stateno != [1400,1401]
ID = 1411

;Barra Fireball SX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1412) = 0
trigger1 = Facing = 1
trigger1 = Var(21) = [4,5]
anim = 1412
ID = 1412
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [4,5]
trigger2 = stateno != [1400,1401]
ID = 1412

;Barra Fireball SX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1413) = 0
trigger1 = Facing = 1
trigger1 = Var(21) = [6,7]
anim = 1413
ID = 1413
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [6,7]
trigger2 = stateno != [1400,1401]
ID = 1413

;Barra Fireball SX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1414) = 0
trigger1 = Facing = 1
trigger1 = Var(21) = [8,9]
anim = 1414
ID = 1414
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [8,9]
trigger2 = stateno != [1400,1401]
ID = 1414

;Barra Fireball SX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1415) = 0
trigger1 = Facing = 1
trigger1 = Var(21) = [10,11]
anim = 1415
ID = 1415
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [10,11]
trigger2 = stateno != [1400,1401]
ID = 1415

;Barra Fireball SX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1416) = 0
trigger1 = Facing = 1
trigger1 = Var(21) = [12,13]
anim = 1416
ID = 1416
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [12,13]
trigger2 = stateno != [1400,1401]
ID = 1416

;Barra Fireball SX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1417) = 0
trigger1 = Facing = 1
trigger1 = Var(21) = [14,15]
anim = 1417
ID = 1417
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [14,15]
trigger2 = stateno != [1400,1401]
ID = 1417

;Barra Fireball SX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1418) = 0
trigger1 = Facing = 1
trigger1 = Var(21) = [16,17]
anim = 1418
ID = 1418
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [16,17]
trigger2 = stateno != [1400,1401]
ID = 1418

;Barra Fireball SX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1419) = 0
trigger1 = Facing = 1
trigger1 = Var(21) = [18,19]
anim = 1419
ID = 1419
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [18,19]
trigger2 = stateno != [1400,1401]
ID = 1419

;Barra Fireball SX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1420) = 0
trigger1 = Facing = 1
trigger1 = Var(21) = [20,21]
anim = 1420
ID = 1420
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [20,21]
trigger2 = stateno != [1400,1401]
ID = 1420

;Barra Fireball SX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1421) = 0
trigger1 = Facing = 1
trigger1 = Var(21) = [22,23]
anim = 1421
ID = 1421
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [22,23]
trigger2 = stateno != [1400,1401]
ID = 1421

;Barra Fireball SX FINALE
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1422) = 0
trigger1 = Facing = 1
trigger1 = Var(21) >= 24
anim = 1422
ID = 1422
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) < 24
trigger2 = (stateno != [1400,1401]) && (movetype != H)
ID = 1422


;-------------------------------------------------------------
;Barra Fireball DX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1410) = 0
trigger1 = Facing = -1
trigger1 = Var(21) = [0,1]
anim = 1430
ID = 1410
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [0,1]
trigger2 = stateno != [1400,1401]
ID = 1410

;Barra Fireball DX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1411) = 0
trigger1 = Facing = -1
trigger1 = Var(21) = [2,3]
anim = 1431
ID = 1411
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [2,3]
trigger2 = stateno != [1400,1401]
ID = 1411

;Barra Fireball DX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1412) = 0
trigger1 = Facing = -1
trigger1 = Var(21) = [4,5]
anim = 1432
ID = 1412
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [4,5]
trigger2 = stateno != [1400,1401]
ID = 1412

;Barra Fireball DX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1413) = 0
trigger1 = Facing = -1
trigger1 = Var(21) = [6,7]
anim = 1433
ID = 1413
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [6,7]
trigger2 = stateno != [1400,1401]
ID = 1413

;Barra Fireball DX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1414) = 0
trigger1 = Facing = -1
trigger1 = Var(21) = [8,9]
anim = 1434
ID = 1414
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [8,9]
trigger2 = stateno != [1400,1401]
ID = 1414

;Barra Fireball DX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1415) = 0
trigger1 = Facing = -1
trigger1 = Var(21) = [10,11]
anim = 1435
ID = 1415
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [10,11]
trigger2 = stateno != [1400,1401]
ID = 1415

;Barra Fireball DX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1416) = 0
trigger1 = Facing = -1
trigger1 = Var(21) = [12,13]
anim = 1436
ID = 1416
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [12,13]
trigger2 = stateno != [1400,1401]
ID = 1416

;Barra Fireball DX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1417) = 0
trigger1 = Facing = -1
trigger1 = Var(21) = [14,15]
anim = 1437
ID = 1417
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [14,15]
trigger2 = stateno != [1400,1401]
ID = 1417

;Barra Fireball DX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1418) = 0
trigger1 = Facing = -1
trigger1 = Var(21) = [16,17]
anim = 1438
ID = 1418
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [16,17]
trigger2 = stateno != [1400,1401]
ID = 1418

;Barra Fireball DX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1419) = 0
trigger1 = Facing = -1
trigger1 = Var(21) = [18,19]
anim = 1439
ID = 1419
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [18,19]
trigger2 = stateno != [1400,1401]
ID = 1419

;Barra Fireball DX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1420) = 0
trigger1 = Facing = -1
trigger1 = Var(21) = [20,21]
anim = 1440
ID = 1420
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [20,21]
trigger2 = stateno != [1400,1401]
ID = 1420

;Barra Fireball DX
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1421) = 0
trigger1 = Facing = -1
trigger1 = Var(21) = [22,23]
anim = 1441
ID = 1421
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) != [22,23]
trigger2 = stateno != [1400,1401]
ID = 1421

;Barra Fireball DX FINALE
[State -3, Explod]
type = Explod
triggerall = stateno = [1400,1401]
triggerall = NumExplod(1422) = 0
trigger1 = Facing = -1
trigger1 = Var(21) >= 24
anim = 1442
ID = 1422
pos = -47,-15
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
scale = 0.7,0.4
sprpriority = 5
removeongethit = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = Var(21) < 24
trigger2 = (stateno != [1400,1401]) && (movetype != H)
ID = 1422

;-------------------------------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 2
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 2
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 6
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 6
value = F3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 2
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 2
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 4
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 4
value = F3, 1

;---------------------------------------

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

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = time = 1
value = 13, 8

[State -3, Air Jump]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = add1

[State -3, Air Jump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = 2, 1

[State -3, Air Jump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = F2, 1

[State -3, Air Jump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = 13, 9

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
trigger1 = animelem = 2
value = 3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 2
value = F3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 5
value = 3, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 5
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
triggerall = life <= 0
triggerall = anim = ifelse(selfanimexist(5148),5148,5150)
triggerall = numexplod(5151) = 0
trigger1 = time = 1
anim = 5151
ID = 5151
pos = -15,-15
sprpriority = 5
ownpal = 1

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = ifelse(selfanimexist(5148),5148,5150)
trigger1 = AnimElem = 4
value = 1,0

;---------------------------------------

; Remove Wind sound (Charge/Assorbimento)
[State -3, StopSnd]
type = StopSnd
trigger1 = Stateno != [1400,14001]
trigger1 = Stateno != [900,901]
trigger2 = stateno != 0
channel = 9