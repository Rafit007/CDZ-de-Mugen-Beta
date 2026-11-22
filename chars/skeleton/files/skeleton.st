;---------------------------------------------------------------------------
; SKELETON ST FILE by TonyAdv
;---------------------------------------------------------------------------

; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = PlaySnd
trigger1 = time = 0
value = 11, 0

[State 170, 1]
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
triggerall = var(0) = 0
trigger1 = time = 0
trigger1 = matchover = 0
value = 181

[State 180]
type = ChangeState
triggerall = var(0) = 0
trigger1 = time = 0
trigger1 = matchover = 1
value = 182

;---------------------------------------------------------------------------
; Win Pose 1 
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, Assert]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = roundnotover

[State 181, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12, 3
channel = 0

[State 181, 2]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win Pose 2 
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 181, Assert]
type = AssertSpecial
trigger1 = Time = [0,350]
flag = roundnotover

[State 181, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 4
channel = 0

[State 181, 2]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;--------------------------------
;Intro state decider
[Statedef 190]
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
value = 191

[State 190, 3]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 192

;---------------------------------------------------------------------------
; Intro 1
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 0]
type = AssertSpecial
trigger1 = Time = [0,650]
flag = Intro

[State 191, testa]
type = Explod
trigger1 = Animelem = 1
anim = 191
pos = 0,0
postype = p1
sprpriority = 1
ownpal = 1
ignorehitpause = 0

[State 191, fuoco]
type = Explod
trigger1 = Animelem = 1
anim = 8020
pos = 10,-95
postype = p1
sprpriority = -5
ownpal = 1
ignorehitpause = 0

[State 191, polvere]
type = Explod
trigger1 = Animelem = 2
anim = 8000
pos = 0,-15
postype = p1
sprpriority = 9
ownpal = 1
ignorehitpause = 0

[State 191]
type = PlaySnd
trigger1 = Animelem = 6
value = 6, 0

[State 191]
type = PlaySnd
trigger1 = Animelem = 1
value = 11, 0

[State 191]
type = PlaySnd
trigger1 = Animelem = 2
value = 12, 0
channel = 0

[State 191]
type = PlaySnd
trigger1 = time = 230
value = 12, 1
channel = 0

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

[State 191, 4]
type = ChangeState
trigger1 = Time = 650
value = 0
ctrl = 0

;---------------------------------------------------------------------------
; Intro 2 by Tux
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, 0]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

[State 192, testa]
type = Explod
trigger1 = Animelem = 1
anim = 191
pos = 0,0
postype = p1
sprpriority = 1
ownpal = 1
ignorehitpause = 0

[State 192, fuoco]
type = Explod
trigger1 = Animelem = 1
anim = 8020
pos = 10,-95
postype = p1
sprpriority = -5
ownpal = 1
ignorehitpause = 0

[State 192, polvere]
type = Explod
trigger1 = Animelem = 2
anim = 8000
pos = 0,-15
postype = p1
sprpriority = 9
ownpal = 1
ignorehitpause = 0

[State 192]
type = PlaySnd
trigger1 = Animelem = 6
value = 6, 0

[State 192]
type = PlaySnd
trigger1 = Animelem = 1
value = 11, 0

[State 192, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 195
sprpriority = 2

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 2
channel = 0

[State 195, 3]
type = ChangeState
trigger1 = Time = 170
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing LP
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = 50
ctrl = 0
velset = 0,0
anim = 200
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0                 

[State 200, 2]
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
sparkxy = -10, -76
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing MP
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

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-70
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing HP
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

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-70
hitsound   = S1,2
guardsound = S6,0
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
; Standing LK
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = s7000
sparkxy = -10,-57
hitsound   = S1,0
guardsound = S6,0
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
; Standing MK
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 40
ctrl = 0
velset = 7,0
anim = 240
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-60
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 7
x = 12

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing HK
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 15,0
anim = 240
sprpriority = 2

[State 250, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 250, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2

[State 250, 3]
type = PosAdd
trigger1 = AnimElem = 7
x = 12

[State 250, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

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

[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = s7000
sparkxy = -10,-42
hitsound   = S1,0
guardsound = S6,0
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
;Crouching MP
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
value = 0, 1

[State 410, 2] 
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 30
animtype  = Heavy
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-53
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -3,-4

[State 410, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching HP
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 50
ctrl = 0
velset = 10,0
anim = 410
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 50
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = s7002
sparkxy = -15,-50
hitsound   = S1,2
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 440, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

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

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = s7000
sparkxy = -10,-8
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching MK
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 440, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = s7001
sparkxy = -5,-10
hitsound   = S1,1
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 440, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
;Crouching HK
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

[State 440, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 440, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = s7002
sparkxy = -5,-10
hitsound   = S1,2
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 440, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

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

[State 600, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s7000
sparkxy = -10,-58
hitsound   = S1,0
guardsound = S6,0
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

[State 610, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 610, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 35
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-55
hitsound   = S1,1
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

;---------------------------------------------------------------------------
;Jumping HP
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 610, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 50
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-55
hitsound   = S1,2
guardsound = S6,0
animtype = Hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
fall = 1
fall.damage = 0

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

[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7000
sparkxy = -5,-35
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3

;---------------------------------------------------------------------------
;Jumping MK
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 640
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 640, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 35
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-40
hitsound   = S1,1
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

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

[State 650, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 650, 2]
type = VelAdd
trigger1 = AnimElem = 2
x = 2

[State 650, 3] ;Gravity
type = VelAdd
trigger1 = AnimElem = 2
y = .3

[State 650, 4] ;Gravity
type = VelAdd
trigger1 = AnimElem = 2
y = .3

[State 650, 5]
type = HitDef
trigger1 = time = 0
attr = A, SA
animtype = Hard
damage    = 50
priority  = 5
hitflag   = M
guardflag = M
pausetime = 8,8
sparkxy = -25,-40
sparkno = s7002
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5,-3
air.velocity = -5,-5
fall.animtype = Hard
fall = 1

[State 650, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
type = ChangeState
value = 651

;---------------------------------------------------------------------------
;Jumping HK (landing)
[Statedef 651]
type    = A
movetype= A
physics = N
anim = 11
velset = 0,0

[State 651, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 651, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
 ;Throw
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1facing = ifelse (command = "holdfwd", -1, 1) ;Turn if holding forwards
p2facing = 1
p1stateno = 810
p2stateno = 820
fall = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw - Throwing the opponent

[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60

[State 810 , sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8, 0

[State 810 , sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,0

[State 9750, luce]
type = Explod
trigger1 = AnimElem = 5
anim = 801
ID = 801
pos = 0, 5 
postype = p1
sprpriority = 5
supermove = 1
removetime = 60
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 28, 0

[State 810, Width 2-11]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
edge = 60,0

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
pos = 58, 0

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 47, 0

[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 41, -60

[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 25, -75

[State 810, Bind 8]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 15, -90

[State 810, Bind 9]
type = TargetBind
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = -5, -96

[State 810, Bind 10]
type = TargetBind
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = -14, -90

[State 810, Bind 11]
type = TargetBind
trigger1 = AnimElem = 11
pos = -50, -50

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 11
value = -78

[State 810, Throw 11]
type = TargetState
trigger1 = AnimElem = 11
value = 821

[State 810, Turn 12]
type = Turn
trigger1 = AnimElem = 12

[State 810, Pos 15]
type = PosAdd
trigger1 = AnimElem = 15
x = -10

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown- Throw

[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[Statedef 821]
type    = A
movetype= H
physics = N
velset = 2.8,-7
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
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
value = 12, 3
channel = 0

[State 900]
type = EnvShake
trigger1 = animelem = 1
time = 40

[State 900]
type = ChangeState
trigger1 = animtime = 0
value = 901

;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
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
value = 9, 3

[State 902]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rotating Rib 1
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 150
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 0

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 6
value = 5, 5

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1001
ProjID = 1000
offset = 60, -85
velocity = 3,0
attr = S, SP
damage    = 60, 6
animtype = Heavy
guardflag = MA
pausetime = 0,9
sparkno = s7071
hitsound   = S1,9
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -7
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 1000, 7]
type = Helper
trigger1 = AnimElem = 6
name = "Dust"
stateno = 1001

[State 1000, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 
[Statedef 1001]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 4,0
anim = 7085
sprpriority = 3

[State 1001, 1]
type = VelSet
trigger1 = parent, NumProjID(1000) = 0
x = 1

[State 1001, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; 
[Statedef 1002]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 6,0
anim = 7085
sprpriority = 3

[State 1001, 1]
type = VelSet
trigger1 = parent, NumProjID(1000) = 0
x = 1

[State 1001, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; 
[Statedef 1003]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 6,0
anim = 7085
sprpriority = 3

[State 1001, 1]
type = VelSet
trigger1 = parent, NumProjID(1000) = 0
x = 1

[State 1001, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Rotating Rib 2
[Statedef 1010]
type    = S
movetype= A
physics = N
juggle  = 6
poweradd= 150
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 0

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 6
value = 5, 5

[State 1010]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1001
ProjID = 1000
offset = 0, -85
velocity = 5,0
attr = S, SP
damage    = 60, 6
animtype = Heavy
guardflag = MA
pausetime = 0,9
sparkno = s7071
hitsound   = S1,9
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5, -5
air.animtype = Back
air.velocity = -6,-5
air.juggle = 3

[State 1010]
type = Helper
trigger1 = AnimElem = 6
name = "Dust"
stateno = 1002

[State 1010]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rotating Rib 3
[Statedef 1020]
type    = S
movetype= A
physics = N
juggle  = 6
poweradd= 150
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 1020]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 0

[State 1020]
type = PlaySnd
trigger1 = AnimElem = 6
value = 5, 5

[State 1020]
type = Projectile
trigger1 = AnimElem = 4
projanim = 1001
ProjID = 1000
offset = 60, -85
velocity = 7,0
attr = S, SP
damage    = 60, 6
animtype = Heavy
guardflag = MA
pausetime = 0,9
sparkno = s7071
hitsound   = S1,9
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5, -5
air.animtype = Back
air.velocity = -6,-5
air.juggle = 3

[State 1020]
type = Helper
trigger1 = AnimElem = 6
name = "Dust"
stateno = 1003

[State 1020]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Flying kick
[Statedef 1200]
type    = A
movetype= A
physics = N
poweradd= 150
juggle = 8
ctrl = 0
anim = 1200
velset = 0, -4

[State 9750, luce]
type = Explod
trigger1 = AnimElem = 1
anim = 885
ID = 885
pos = 0, 5 
postype = p1
sprpriority = 5
supermove = 1
;removetime = 80
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 1340, afterimage]
type = AfterImage
trigger1 = time = 1
time = 70
framegap = 2
length = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add

[State 1200, voce]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5, 4

[State 1200, voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 1200, 1]
type = VelAdd
trigger1 = Time >= 30
x = .7

[State 1200, 2] ;Gravity
type = VelAdd
trigger1 = Time >= 20
y = .3

[State 1200, 2] ;Gravity
type = VelAdd
trigger1 = Time >= 30
y = .10

[State 1200, 3]
type = Width
trigger1 = AnimElem = 4, >= 0
trigger2 = AnimElem = 8, < 0
value = 20,0

[State 1200, 4]
type = HitDef
trigger1 = time = 0
attr = A, SA
animtype = Back
damage    = 70, 7
priority  = 5
hitflag   = M
guardflag = M
pausetime = 8,8
sparkxy = 5,0
sparkno = S7002
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5,-6
air.velocity = -5,-5
fall.animtype = Hard
fall = 1
;palfx.time = 40
;palfx.add = 40,-70,-200
;palfx.sinadd = 40,30,0,10
;palfx.color = 0
;palfx.invertall = 1

[State 1200, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
type = ChangeState
value = 1201

;---------------------------------------------------------------------------
; Flying kick (land on ground)
[Statedef 1201]
type    = A
movetype= A
physics = N
anim = 11
velset = 0,0

[State 1091, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1091, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 100 Punches 1
[Statedef 1300]
type = S
movetype = A
physics = S
anim = 1300
poweradd = 150
velset = 0,0
ctrl = 0

[State 1300, Voice]
type = PlaySnd
trigger1 = time = 0
value = S2,0

[State 1300, polvere]
type = Explod
trigger1 = time = 0
anim = 7088
pos = -10,10
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0
removetime = 27
scale = .5,.5	

[State 1300, wind]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
attr = S, SA
animtype  = medium
damage    = 10, 1
guardflag = MA
pausetime = 8,8
sparkno = S7000
sparkxy = 0,-80
hitsound   = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -0.20,-1
air.velocity = -0.30,-1.5
fall = 0

[State 1300, wind]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
attr = S, SA
animtype  = medium
damage    = 10, 1
guardflag = MA
pausetime = 8,8
sparkno = S7000
sparkxy = 0,-70
hitsound   = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -0.20,-1
air.velocity = -0.30,-1.5
fall = 0

[State 1300, wind]
type = HitDef
trigger1 = AnimElem = 9
attr = S, SA
animtype  = medium
damage    = 15, 2
guardflag = MA
pausetime = 8,8
sparkno = S7000
sparkxy = 0,-60
hitsound   = S1,1
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -2,-1
air.velocity = -2,-2
fall = 0

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 9
value = 0, 0

[State 1300, endcorsa]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 100 Punches 2
[Statedef 1310]
type = S
movetype = A
physics = S
anim = 1310
poweradd = 150
velset = 0,0
ctrl = 0

[State 1310, Voice]
type = PlaySnd
trigger1 = time = 0
value = S2,0

[State 1310, polvere]
type = Explod
trigger1 = time = 0
anim = 7088
pos = -10,10
postype = p1
removetime= 52
sprpriority = 2
ownpal = 1
ignorehitpause = 0
scale = .5,.5

[State 1310, wind]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 10
trigger4 = AnimElem = 11
attr = S, SA
animtype  = medium
damage    = 5, 1
guardflag = MA
pausetime = 7,7
sparkno = S7000
sparkxy = 0,-80
hitsound   = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -0.20,-1
air.velocity = -0.30,-1.5
fall = 0

[State 1310, wind]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 14
trigger4 = AnimElem = 15
attr = S, SA
animtype  = medium
damage    = 5, 1
guardflag = MA
pausetime = 7,7
sparkno = S7000
sparkxy = 0,-70
hitsound   = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -0.20,-1
air.velocity = -0.30,-1.5
fall = 0

[State 1310, wind]
type = HitDef
trigger1 = AnimElem = 9
trigger2 = AnimElem = 18
attr = S, SA
animtype  = medium
damage    = 5, 1
guardflag = MA
pausetime = 7,7
sparkno = S7000
sparkxy = 0,-60
hitsound   = S1,1
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -2,-1
air.velocity = -2,-2
fall = 0

[State 1310, wind]
type = HitDef
trigger1 = AnimElem = 18
attr = S, SA
animtype  = medium
damage    = 15, 7
guardflag = MA
pausetime = 7,7
sparkno = s7002
sparkno = S7000
sparkxy = 0,-90
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -2,-1
air.velocity = -2,-2
fall = 1

[State 1310]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 9
value = 0, 0

[State 1310, endcorsa]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 100 Kicks
[Statedef 1320]
type = S
movetype = A
physics = S
anim = 1320
poweradd = 150
velset = 0,0
ctrl = 0

[State 1320, Voice]
type = PlaySnd
trigger1 = time = 0
value = S2,0

[State 1320, polvere]
type = Explod
trigger1 = time = 0
anim = 7088
pos = -20,10
postype = p1
removetime= 60
sprpriority = 2
ownpal = 1
ignorehitpause = 0
scale = .5,.5

[State 1320, wind]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 10
trigger4 = AnimElem = 11
attr = S, SA
animtype  = medium
damage    = 5, 1
guardflag = MA
pausetime = 7,7
sparkno = S7000
sparkxy = 0,-80
hitsound   = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -0.20,-1
air.velocity = -0.30,-1.5
fall = 0

[State 1320, wind]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 14
trigger4 = AnimElem = 15
attr = S, SA
animtype  = medium
damage    = 5, 1
guardflag = MA
pausetime = 7,7
sparkno = S7000
sparkxy = 0,-70
hitsound   = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -0.20,-1
air.velocity = -0.30,-1.5
fall = 0

[State 1320, wind]
type = HitDef
trigger1 = AnimElem = 9
trigger2 = AnimElem = 18
attr = S, SA
animtype  = medium
damage    = 5, 1
guardflag = MA
pausetime = 7,7
sparkno = S7000
sparkxy = 0,-60
hitsound   = S1,1
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -2,-1
air.velocity = -2,-2
fall = 0

[State 1320, wind]
type = HitDef
trigger1 = AnimElem = 18
attr = S, SA
animtype  = medium
damage    = 15, 7
guardflag = MA
pausetime = 7,7
sparkno = S7002
sparkxy = 0,-50
hitsound   = S1,1
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -2,-1
air.velocity = -2,-2
fall = 1

[State 1320]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 9
trigger5 = AnimElem = 18
value = 0, 1

[State 1320, endcorsa]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Harpooning Rib
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 150
ctrl = 0
velset = 0,0
anim = 1400
sprpriority = -1

[State 1400, scia]
type = Explod
trigger1 = AnimElem = 5
anim = 1401
pos = 6,0
postype = p1
removetime = 9
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State 1400, afterimage]
type = AfterImage
trigger1 = time = 1
time = 15
framegap = 2
length = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add

[State 1400, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 1400, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 1400, 2]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
attr = S, NA
animtype  = Medium
damage    = 70, 7
guardflag = MA
pausetime = 12,12
sparkno = S7071
sparkxy = 0,-90
hitsound   = S1,9
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 1400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Teleport
[Statedef 1500]
type    = S
movetype= I
physics = S
ctrl = 0
velset = (prevstateno = 9010)* 0,(prevstateno = 9010)* 0
facep2 = !(prevstateno = 9010)
poweradd = 150

[State 1500, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 1500, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1400
value = 1500

[State 20002, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 3
channel = 0

[State 20002, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 1500, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 1500, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add1

[State 1500, TeleportFwd]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger2 = PalNo = [7, 12]
x = 400
y = 0

[State 1500, TeleportBack]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command = "holdback"
trigger1 = command != "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
x = -400
y = 0

[State 1500, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1500, 3]
type = Projectile
trigger1 = AnimElem = 1
projanim = 1501
projremovetime = 10
projid = 1500
velocity = 0,0
offset = 0,0

[State 1500, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1502
ctrl = 1

[State 1500, 7]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 1500, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,8

;----------------------------------------------------------------------------------------
; Teleport (reappears)
[Statedef 1502]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1502
ctrl = 0
facep2 = 1

[State 20002, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 1502, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 1502, 0]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add1

[State 1502, 2]
type = Projectile
trigger1 = Time = AnimElem = 1
projanim = 1500
projremovetime = 10
velocity = 0,0
offset = 0,0

[State 1502, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------
; 1000 Punches 1
[Statedef 3000];launcher
type = S
movetype = I
physics = S
velset = 0,0
anim = 3000
ctrl = 0
poweradd = -1000

[State 3000, superpause]
type = superpause
trigger1 = animelem = 1
time = 50
anim = s7008
pos = 0,-50
sound = s9, 3

[State 3000, Width]
type = Width
trigger1 = AnimTime <= 0
value = 30,0

[State 3000, DelayTimerReset]
type = VarSet
trigger1 = time = 0
v = 32
value = 0

[State 3000, DelayTimer]
type = VarAdd
trigger1 = time = 60
trigger2 = time = 120
trigger3 = time = 180
v = 32
value = 1

[State 3000, DelayTimerFlash]
type = PalFX
trigger1 = time = 60
time = 6
add = 32,32,32
sinadd = 32,32,32,1

[State 3000, DelayTimerFlash]
type = PalFX
trigger1 = time = 120
time = 6
add = 48,0,0
sinadd = 48,0,0,1

[State 3000, Slash]
type = ChangeState
trigger1 = animelem = 1, >= 0
value = 3001
ctrl = 1

;-----------------------------------------
[Statedef 3001];connect
type = S
movetype = A
physics = S
anim = 3001
juggle = 20
poweradd = 0
velset = 0,0
ctrl = 0

[State 3001, Width]
type = Width
trigger1 = AnimTime <= 0
value = 70,0

[State 3001, SoundVar]
type = VarRandom
trigger1 = time = 0
v = 6
range = 0,3

[State 3001, Sprite]
type = SprPriority
trigger1 = time >= 0
value = 4

[State 3001, unguardable]
type = Assertspecial
triggerall = time = [0,10]
trigger1 = var(32) = 3
flag = unguardable

[State 3001, Slash]
type = projectile
trigger1 = AnimElem = 1
postype = p1
projid = 3005
projanim = 3005+5*var(32)
projremove = 0
offset = 10 + var(32)*50 ,-20
projremovetime = 6
projhits = 1
projedgebound = 150
projstagebound = 150
projheightbound = -240,240
attr = S, HA
damage = 0
animtype = Heavy
guardflag = H
hitflag = HA
priority = 4, Hit
pausetime = 5,15
getpower = 0,10
sparkno = s7000
sparkxy = 0,0
hitsound = S2,(var(6))
guardsound = S6, (0+(random < 500))
ground.type = high
air.animtype = heavy
ground.slidetime = 28
guard.slidetime = 10
ground.hittime = 28
guard.hittime = 10
ground.velocity = 40
guard.velocity = -6
air.velocity = 40,40
airguard.velocity = -3,-3

[State 3001, Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 6

[State 3001, Waves]
type = Explod
trigger1 = AnimElem = 4
id = 8030
anim = 8030
postype = p1
pos = 40,-77
bindtime = -1
supermovetime = 20
removetime = 20
ontop = 1
removeongethit = 1

[State 3001, connect]
type = ChangeState
triggerall = animtime = 0
trigger1 = p2stateno = [5000,5030]
value = 3002
ctrl = 1

[State 3001, failed]
type = ChangeState
triggerall = animtime = 0
trigger1 = movecontact = 0
value = 0
ctrl = 1

;-----------------------------------------
[Statedef 3002];begin
type = S
movetype = I
velset = 0,0
anim = 3002

[State 3002, continue]
type = changestate
trigger1= animtime = 0
value = 3003

;-----------------------------------------
[Statedef 3003];continue
type = S
movetype = A
physics = S
velset = 0,0
anim = 3003
ctrl = 0
juggle = 15

[State 3003, Width]
type = Width
trigger1 = AnimTime <= 0
value = 90,0

[State 3003, polvere]
type = Explod
trigger1 = time = 1
anim = 70881
pos = 0,10
postype = p1
sprpriority = 7
supermove = 1
removetime = 200
ignorehitpause = 1
bindtime = -1
persistent = 0
scale = .5,.5

[State 3003, sfondo kanon]
type = Explod
trigger1 = time = 1
anim = 8040
pos = -320,0
postype = right
sprpriority = -9
supermove = 1
removetime = 200
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3003, aft2]
type = AfterImageTime
trigger1 = time > 0
time = 2

[State 3003,nohit]
type = NotHitBy
trigger1 = Time > 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2

[State 3003, color]
type = EnvColor
trigger1 = AnimElem = 2,1
trigger2 = AnimElem = 5,1
trigger3 = AnimElem = 8,1
trigger4 = AnimElem = 11,1
value = 255,255,255
time = 1
under = 1

[State 3003, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 50
ignorehitpause = 1
persistent= 0

[State 3003, ht]
type = HitDef
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 5,1
trigger3 = AnimElem = 9,1
attr = S,HA
hitflag = MAF
guardflag = MA
sparkno = s7071
priority = 5,Hit
damage = 1
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-80
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3003, ht2]
type = HitDef
trigger1 = AnimElem = 2,1
trigger2 = AnimElem = 6,1
trigger3 = AnimElem = 10,1
attr = S,HA
hitflag = MAF
guardflag = MA
sparkno = s7071
priority = 5,Hit
damage = 1
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-20
hitsound   = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3003, ht]
type = HitDef
trigger1 = AnimElem = 3,1
trigger2 = AnimElem = 7,1
trigger3 = AnimElem = 11,1
attr = S,HA
hitflag = MAF
guardflag = MA
sparkno = s7071
priority = 5,Hit
damage = 2, 1
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-100
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3003, ht2]
type = HitDef
trigger1 = AnimElem = 4,1
trigger2 = AnimElem = 8,1
trigger3 = AnimElem = 12,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-40
hitsound   = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3003, end]
type = ChangeState
trigger1 = Time = 200
value = 3004
ctrl = 1

;-----------------------------------------
[Statedef 3004];final punch
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 10,0
anim = 220
sprpriority = -1

[State 3004, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 3004, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 3004, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3004, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 50
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-70
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 3004, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------
; 1000 Punches 2
[Statedef 3100];launcher
type = S
movetype = I
physics = S
velset = 0,0
anim = 3100
ctrl = 0
poweradd = -2000

[State 3200, superpause]
type = superpause
trigger1 = animelem = 1
time = 50
anim = s7008
pos = 0,-50
sound = s9, 3

[State 3200, Width]
type = Width
trigger1 = AnimTime <= 0
value = 30,0

[State 3200, DelayTimerReset]
type = VarSet
trigger1 = time = 0
v = 32
value = 0

[State 3200, DelayTimer]
type = VarAdd
trigger1 = time = 60
trigger2 = time = 120
trigger3 = time = 180
v = 32
value = 1

[State 3200, DelayTimerFlash]
type = PalFX
trigger1 = time = 60
time = 6
add = 32,32,32
sinadd = 32,32,32,1

[State 3200, DelayTimerFlash]
type = PalFX
trigger1 = time = 120
time = 6
add = 48,0,0
sinadd = 48,0,0,1

[State 3200, Slash]
type = ChangeState
trigger1 = animelem = 1, >= 0
value = 3101
ctrl = 1

;-----------------------------------------
[Statedef 3101];connect
type = S
movetype = A
physics = S
anim = 3101
juggle = 20
poweradd = 0
velset = 0,0
ctrl = 0

[State 3101, Width]
type = Width
trigger1 = AnimTime <= 0
value = 70,0

[State 3101, SoundVar]
type = VarRandom
trigger1 = time = 0
v = 6
range = 0,3

[State 3101, Sprite]
type = SprPriority
trigger1 = time >= 0
value = 4

[State 3101, unguardable]
type = Assertspecial
triggerall = time = time = [0,10]
trigger1 = var(32) = 3
flag = unguardable

[State 3101, Slash]
type = projectile
trigger1 = AnimElem = 1
postype = p1
projid = 3005
projanim = 3005+5*var(32)
projremove = 0
offset = 10+ var(32)*50 ,-20
projremovetime = 6
projhits = 1
projedgebound = 150
projstagebound = 150
projheightbound = -240,240
attr = S, HA
damage = 0
animtype = Heavy
guardflag = H
hitflag = HA
priority = 4, Hit
pausetime = 5,15
getpower = 0,10
sparkno = s7000
sparkxy = 0,0
hitsound = S2,(var(6))
guardsound = S6, (0+(random < 500))
ground.type = high
air.animtype = heavy
ground.slidetime = 28
guard.slidetime = 10
ground.hittime = 28
guard.hittime = 10
ground.velocity = 40
guard.velocity = -6
air.velocity = 40,40
airguard.velocity = -3,-3

[State 3101, Snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 6

[State 3101, Waves]
type = Explod
trigger1 = AnimElem = 2
id = 8030
anim = 8030
postype = p1
pos = 45,-85
bindtime = -1
supermovetime = 20
removetime = 22
ontop = 1
removeongethit = 1

[State 3101, connect]
type = ChangeState
triggerall = animtime = 0
trigger1 = p2stateno = [5000,5030]
value = 3102
ctrl = 1

[State 3101, failed]
type = ChangeState
triggerall = animtime = 0
trigger1 = movecontact = 0
value = 0
ctrl = 1

;-----------------------------------------
[Statedef 3102];begin
type = S
movetype = I
velset = 0,0
anim = 3102

[State 3102, continue]
type = changestate
trigger1= animtime = 0
value = 3103

;-----------------------------------------
[Statedef 3103];continue
type = S
movetype = A
physics = S
velset = 0,0
anim = 3103
ctrl = 0
juggle = 15

[State 3103, Width]
type = Width
trigger1 = AnimTime <= 0
value = 90,0

[State 3103, polvere]
type = Explod
trigger1 = time = 1
anim = 70881
pos = 0,10
postype = p1
sprpriority = 7
supermove = 1
removetime = 200
ignorehitpause = 1
bindtime = -1
persistent = 0
scale = .5,.5

[State 3103, sfondo kanon]
type = Explod
trigger1 = time = 1
anim = 8040
pos = -320,0
postype = right
sprpriority = -9
supermove = 1
removetime = 200
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3103,aft2 ]
type = AfterImageTime
trigger1 = time > 0
time = 2

[State 3103,nohit]
type = NotHitBy
trigger1 = Time > 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2

[State 3103, color]
type = EnvColor
trigger1 = AnimElem = 2,1
trigger2 = AnimElem = 5,1
trigger3 = AnimElem = 8,1
trigger4 = AnimElem = 11,1
value = 255,255,255
time = 1
under = 1

[State 3103, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 50
ignorehitpause = 1
persistent= 0

[State 3103,ht ]
type = HitDef
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 5,1
trigger3 = AnimElem = 9,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-80
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3103,ht2 ]
type = HitDef
trigger1 = AnimElem = 2,1
trigger2 = AnimElem = 6,1
trigger3 = AnimElem = 10,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-20
hitsound   = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3103,ht ]
type = HitDef
trigger1 = AnimElem = 3,1
trigger2 = AnimElem = 7,1
trigger3 = AnimElem = 11,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-100
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3103,ht2 ]
type = HitDef
trigger1 = AnimElem = 4,1
trigger2 = AnimElem = 8,1
trigger3 = AnimElem = 12,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-40
hitsound   = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3103,end ]
type = ChangeState
trigger1 = Time = 200
value = 3104
ctrl = 1

;-----------------------------------------
[Statedef 3104];final punch
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 15,0
anim = 240
sprpriority = -1

[State 3104, Vel]
type = VelSet
trigger1 = Time > 0
x = 10

[State 3104, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 3104, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 3104, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3104, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Hard
damage    = 150
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-70
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4
fall = 1
fall.damage = 0

[State 3104, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------
; 1000 Kicks 1
[Statedef 3200];launcher
type = S
movetype = I
physics = S
velset = 0,0
anim = 3200
ctrl = 0
poweradd = -1000

[State 3200, superpause]
type = superpause
trigger1 = animelem = 1
time = 50
anim = s7008
pos = 0,-50
sound = s9, 3

[State 3200, Width]
type = Width
trigger1 = AnimTime <= 0
value = 30,0

[State 3200, DelayTimerReset]
type = VarSet
trigger1 = time = 0
v = 32
value = 0

[State 3200, DelayTimer]
type = VarAdd
trigger1 = time = 60
trigger2 = time = 120
trigger3 = time = 180
v = 32
value = 1

[State 3200, DelayTimerFlash]
type = PalFX
trigger1 = time = 60
time = 6
add = 32,32,32
sinadd = 32,32,32,1

[State 3200, DelayTimerFlash]
type = PalFX
trigger1 = time = 120
time = 6
add = 48,0,0
sinadd = 48,0,0,1

[State 3200, Slash]
type = ChangeState
trigger1 = animelem = 1, >= 0
value = 3201
ctrl = 1

;-----------------------------------------
[Statedef 3201];connect
type = S
movetype = A
physics = S
anim = 3201
juggle = 20
poweradd = 0
velset = 0,0
ctrl = 0

[State 3201, Width]
type = Width
trigger1 = AnimTime <= 0
value = 70,0

[State 3201, SoundVar]
type = VarRandom
trigger1 = time = 0
v = 6
range = 0,3

[State 3201, Sprite]
type = SprPriority
trigger1 = time >= 0
value = 4

[State 3201, unguardable]
type = Assertspecial
triggerall = time = [0,10]
trigger1 = var(32) = 3
flag = unguardable

[State 3201, Slash]
type = projectile
trigger1 = AnimElem = 1
postype = p1
projid = 3005
projanim = 3005+5*var(32)
projremove = 0
offset = 10+ var(32)*50 ,-20
projremovetime = 6
projhits = 1
projedgebound = 150
projstagebound = 150
projheightbound = -240,240
attr = S, HA
damage = 0
animtype = Heavy
guardflag = H
hitflag = HA
priority = 4, Hit
pausetime = 5,15
getpower = 0,10
sparkno = s7000
sparkxy = 0,0
hitsound = S2,(var(6))
guardsound = S6, (0+(random < 500))
ground.type = high
air.animtype = heavy
ground.slidetime = 28
guard.slidetime = 10
ground.hittime = 28
guard.hittime = 10
ground.velocity = 40
guard.velocity = -6
air.velocity = 40,40
airguard.velocity = -3,-3

[State 3201, connect]
type = ChangeState
triggerall = animtime = 0
trigger1 = p2stateno = [5000,5030]
value = 3202
ctrl = 1

[State 3201, failed]
type = ChangeState
triggerall = animtime = 0
trigger1 = movecontact = 0
value = 0
ctrl = 1

;-----------------------------------------
[Statedef 3202];begin
type = S
movetype = I
velset = 0,0
anim = 3202

[State 3202, continue]
type = changestate
trigger1= animtime = 0
value = 3203

;-----------------------------------------
[Statedef 3203];continue
type = S
movetype = A
physics = S
velset = 0,0
anim = 3203
ctrl = 0
juggle = 15

[State 3203, Width]
type = Width
trigger1 = AnimTime <= 0
value = 90,0

[State 3203, polvere]
type = Explod
trigger1 = time = 1
anim = 70881
pos = -20,10
postype = p1
sprpriority = 7
supermove = 1
removetime = 200
ignorehitpause = 1
bindtime = -1
persistent = 0
scale = .5,.5

[State 3203, sfondo kanon]
type = Explod
trigger1 = time = 1
anim = 8040
pos = -320,0
postype = right
sprpriority = -9
supermove = 1
removetime = 200
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3203,SDM effects ]
type = BGPalFX
trigger1 = time > 0
time = 15
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1

[State 3203,aft2 ]
type = AfterImageTime
trigger1 = time > 0
time = 2

[State 3203,nohit]
type = NotHitBy
trigger1 = Time > 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2

[State 3203, color]
type = EnvColor
trigger1 = AnimElem = 2,1
trigger2 = AnimElem = 5,1
trigger3 = AnimElem = 8,1
trigger4 = AnimElem = 11,1
value = 255,255,255
time = 1
under = 1

[State 3203, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 50
ignorehitpause = 1
persistent= 0

[State 3203,ht ]
type = HitDef
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 5,1
trigger3 = AnimElem = 9,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 1
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-80
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3203,ht2 ]
type = HitDef
trigger1 = AnimElem = 2,1
trigger2 = AnimElem = 6,1
trigger3 = AnimElem = 10,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 1
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-20
hitsound   = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3203,ht ]
type = HitDef
trigger1 = AnimElem = 3,1
trigger2 = AnimElem = 7,1
trigger3 = AnimElem = 11,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-100
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3203,ht2 ]
type = HitDef
trigger1 = AnimElem = 4,1
trigger2 = AnimElem = 8,1
trigger3 = AnimElem = 12,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-40
hitsound   = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3203,end ]
type = ChangeState
trigger1 = Time = 200
value = 3204
ctrl = 1

;-----------------------------------------
[Statedef 3204];final kick
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
anim = 240
sprpriority = 2
velset = 15,0

[State 3204, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 3204, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 50
ignorehitpause = 1
persistent= 0

[State 3204, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 35
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-60
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2

[State 3204, 3]
type = PosAdd
trigger1 = AnimElem = 7
x = 12

[State 3204, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------
; 1000 Kicks 2
[Statedef 3300];launcher
type = S
movetype = I
physics = S
velset = 0,0
anim = 3200
ctrl = 0
poweradd = -2000

[State 3300, superpause]
type = superpause
trigger1 = animelem = 1
time = 50
anim = s7008
sound = s9, 3

[State 3300, Width]
type = Width
trigger1 = AnimTime <= 0
value = 30,0

[State 3300, DelayTimerReset]
type = VarSet
trigger1 = time = 0
v = 32
value = 0

[State 3300, DelayTimer]
type = VarAdd
trigger1 = time = 60
trigger2 = time = 120
trigger3 = time = 180
v = 32
value = 1

[State 3300, DelayTimerFlash]
type = PalFX
trigger1 = time = 60
time = 6
add = 32,32,32
sinadd = 32,32,32,1

[State 3300, DelayTimerFlash]
type = PalFX
trigger1 = time = 120
time = 6
add = 48,0,0
sinadd = 48,0,0,1

[State 3300, Slash]
type = ChangeState
trigger1 = animelem = 1, >= 0
value = 3301
ctrl = 1

;-----------------------------------------
[Statedef 3301];connect
type = S
movetype = A
physics = S
anim = 3201
juggle = 20
poweradd = 0
velset = 0,0
ctrl = 0

[State 3301, Width]
type = Width
trigger1 = AnimTime <= 0
value = 70,0

[State 3301, SoundVar]
type = VarRandom
trigger1 = time = 0
v = 6
range = 0,3

[State 3301, Sprite]
type = SprPriority
trigger1 = time >= 0
value = 4

[State 3301, unguardable]
type = Assertspecial
triggerall = time = [0,10]
trigger1 = var(32) = 3
flag = unguardable

[State 3301, Slash]
type = projectile
trigger1 = AnimElem = 1
postype = p1
projid = 3005
projanim = 3005+5*var(32)
projremove = 0
offset = 10+ var(32)*50 ,-20
projremovetime = 6
projhits = 1
projedgebound = 150
projstagebound = 150
projheightbound = -240,240
attr = S, HA
damage = 0
animtype = Heavy
guardflag = H
hitflag = HA
priority = 4, Hit
pausetime = 5,15
getpower = 0,10
sparkno = s7000
sparkxy = 0,0
hitsound = S2,(var(6))
guardsound = S6, (0+(random < 500))
ground.type = high
air.animtype = heavy
ground.slidetime = 28
guard.slidetime = 10
ground.hittime = 28
guard.hittime = 10
ground.velocity = 40
guard.velocity = -6
air.velocity = 40,40
airguard.velocity = -3,-3

[State 3301, connect]
type = ChangeState
triggerall = animtime = 0
trigger1 = p2stateno = [5000,5030]
value = 3302
ctrl = 1

[State 3301, failed]
type = ChangeState
triggerall = animtime = 0
trigger1 = movecontact = 0
value = 0
ctrl = 1

;-----------------------------------------
[Statedef 3302]; begin
type = S
movetype = I
velset = 0,0
anim = 3202

[State 3302, continue]
type = changestate
trigger1= animtime = 0
value = 3303

;-----------------------------------------
[Statedef 3303];continue
type = S
movetype = A
physics = S
velset = 0,0
anim = 3203
ctrl = 0
juggle = 15

[State 3303, Width]
type = Width
trigger1 = AnimTime <= 0
value = 90,0

[State 3303, polvere]
type = Explod
trigger1 = time = 1
anim = 70881
pos = -20,10
postype = p1
sprpriority = 7
supermove = 1
removetime = 200
ignorehitpause = 1
bindtime = -1
persistent = 0
scale = .5,.5

[State 3303, sfondo kanon]
type = Explod
trigger1 = time = 1
anim = 8040
pos = -320,0
postype = right
sprpriority = -9
supermove = 1
removetime = 260
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3303,SDM effects ]
type = BGPalFX
trigger1 = time > 0
time = 15
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1

[State 3303,aft2 ]
type = AfterImageTime
trigger1 = time > 0
time = 2

[State 3303,nohit]
type = NotHitBy
trigger1 = Time > 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2

[State 3303, color]
type = EnvColor
trigger1 = AnimElem = 2,1
trigger2 = AnimElem = 5,1
trigger3 = AnimElem = 8,1
trigger4 = AnimElem = 11,1
value = 255,255,255
time = 1
under = 1

[State 3303, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 50
ignorehitpause = 1
persistent= 0

[State 3303,ht ]
type = HitDef
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 5,1
trigger3 = AnimElem = 9,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 4
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-80
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3303,ht2 ]
type = HitDef
trigger1 = AnimElem = 2,1
trigger2 = AnimElem = 6,1
trigger3 = AnimElem = 10,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 4
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-20
hitsound   = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3303,ht ]
type = HitDef
trigger1 = AnimElem = 3,1
trigger2 = AnimElem = 7,1
trigger3 = AnimElem = 11,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 4
pausetime = 1,1
sparkno = S7000
sparkxy = 0,-100
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3303,ht2 ]
type = HitDef
trigger1 = AnimElem = 4,1
trigger2 = AnimElem = 8,1
trigger3 = AnimElem = 12,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 4
pausetime = 1,1
sparkno = S7000
sparkxy = 70,-40
hitsound   = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3303,end ]
type = ChangeState
trigger1 = Time = 200
value = 3304
ctrl = 1

;-----------------------------------------
[Statedef 3304];flying kick
type    = A
movetype= A
physics = N
poweradd= 110
juggle = 8
ctrl = 0
anim = 1200
velset = 0, -4

[State 3304, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3304, luce]
type = Explod
trigger1 = AnimElem = 1
anim = 885
ID = 885
pos = 0, 5 
postype = p1
sprpriority = 5
supermove = 1
;removetime = 80
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3304, afterimage]
type = AfterImage
trigger1 = time = 1
time = 70
framegap = 2
length = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add

[State 3304, voce]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5, 4

[State 3304, voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3304, 1]
type = VelAdd
trigger1 = Time >= 30
x = .5

[State 3304, 2] ;Gravity
type = VelAdd
trigger1 = Time >= 20
y = .3

[State 3304, 3] ;Gravity
type = VelAdd
trigger1 = Time >= 30
y = .3

[State 3304, 4]
type = Width
trigger1 = AnimElem = 4, >= 0
trigger2 = AnimElem = 8, < 0
value = 20,0

[State 3304, 5]
type = HitDef
trigger1 = time = 0
attr = A, SA
animtype = Back
damage    = 50
priority  = 5
hitflag   = M
guardflag = M
pausetime = 8,8
sparkxy = 5,0
sparkno = S7071
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5,-6
air.velocity = -5,-5
fall.animtype = Hard
fall = 1

[State 3304, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
type = ChangeState
value = 3305

;-----------------------------------------
[Statedef 3305]; land
type    = A
movetype= A
physics = N
anim = 11
velset = 0,0

[State 3305, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3305, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Multi Rotating Rib
[Statedef 3400]
type = S
movetype = A
physics = S
anim = 3400
poweradd = -3000
juggle = 5
velset = 0,0
ctrl = 0

[State 3400, superpause]
type = superpause
trigger1 = animelem = 1
time = 50
anim = s7008
pos = 0,-50
sound = s9, 3

[State 3400 , voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 2
channel = 0

[State 3400, afterimage]
type = AfterImage
trigger1 = time = 1
time = 130
framegap = 2
length = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add1

[State 3400, sfondo]
type = Explod
trigger1 = AnimElem = 6
anim = 8040
pos = -320,0
postype = right
sprpriority = -9
supermove = 1
removetime = 130
ignorehitpause = 1
bindtime = -1
persistent = 0

;fireball 1-3
[State 3400, one2]
type = Projectile
trigger1 = AnimElem = 6, = 1
trigger2 = AnimElem = 11, = 2
trigger3 = AnimElem = 16, = 3
attr = S, HP
projanim = 3401          
offset = 20,-85    
velocity = 16,0
damage = 70,7
animtype = Hard
guardflag = MA
pausetime = 0,12
sparkno = S7071
hitsound   = S1,9
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = 1,1
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

;fireball 4
[State 3400, one]
type = Projectile
trigger1 = AnimElem = 21
attr = S, HP
projanim = 3401          
projhits = 1   
offset = 20,-85    
velocity = 7,0
damage = 190,95
animtype = Hard
guardflag = MA
pausetime = 0,12
sparkno = S7071
hitsound   = S1,9
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = 0, -25
air.velocity = 2, -8
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5
fall = 1

[State 3400 , voce]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 18
value = 4, 0

[State 3400 , voce]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 11
trigger3 = AnimElem = 16
trigger4 = AnimElem = 21
value = 5, 6

[State 3400, 7]
type = Helper
trigger1 = AnimElem = 6
trigger2 = AnimElem = 11
trigger3 = AnimElem = 16
trigger4 = AnimElem = 21
name = "Dust"
stateno = 1001

[State 3400, nothittable]
type = NotHitBy
trigger1 = 1
value = , NA, AP

[State 3400 , 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Super Combo Teleport
[Statedef 3500]
type    = S
movetype= I
physics = S
poweradd = -3000
ctrl = 0
velset = (prevstateno = 9010)* 0,(prevstateno = 9010)* 0
facep2 = !(prevstateno = 9010)

[State 3500, superpause]
type = superpause
trigger1 = time = 0
time = 50
anim = s7008
pos = 0,-50
sound = s9, 3

[State 3500, sfondo]
type = Explod
trigger1 = AnimElem = 6
anim = 8040
pos = -320,0
postype = right
sprpriority = -9
supermove = 1
removetime = 880
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3500, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 3500, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1400
value = 1500

[State 3500, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 2
channel = 0

[State 3500, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3500, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 3500, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add1

[State 3500, TeleportFwd]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger2 = PalNo = [7, 12]
x = 400
y = 0

[State 3500, TeleportBack]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command = "holdback"
trigger1 = command != "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
x = -400
y = 0

[State 3500, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 3500, 3]
type = Projectile
trigger1 = AnimElem = 1
projanim = 1501
projremovetime = 10
projid = 1500
velocity = 0,0
offset = 0,0

[State 3500, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3501
ctrl = 1

[State 3500, 7]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 3500, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,8

;---------------------------------------------------------------------------
[Statedef 3501]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1502
ctrl = 0
facep2 = 1

[State 3501, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3501, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 3501, 0]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add1

[State 3501, 2]
type = Projectile
trigger1 = Time = AnimElem = 1
projanim = 1500
projremovetime = 10
velocity = 0,0
offset = 0,0

[State 3501, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3502
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3502]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 3502, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3502]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0

[State 3502]
type = PlaySnd
trigger1 = AnimElem = 6
value = 5, 5

[State 3502, 2]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1001
ProjID = 1000
offset = 60, -85
velocity = 3,0
attr = S, SP
damage    = 100
animtype = Heavy
guardflag = MA
pausetime = 0,9
sparkno = s7071
hitsound   = S1,9
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -7
air.animtype = Back
air.velocity = -2.5,-5
air.juggle = 3

[State 3502, 7]
type = Helper
trigger1 = AnimElem = 6
name = "Dust"
stateno = 1001

[State 3502, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 3503
ctrl = 1

[Statedef 3503]
type    = S
movetype= I
physics = S
ctrl = 0
velset = (prevstateno = 9010)* 0,(prevstateno = 9010)* 0
facep2 = !(prevstateno = 9010)

[State 3503, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 3503, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1400
value = 1500

[State 3503, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 3
channel = 0

[State 3503, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3503, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 3503, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add1

[State 3503, TeleportFwd]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger2 = PalNo = [7, 12]
x = 400
y = 0

[State 3503, TeleportBack]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command = "holdback"
trigger1 = command != "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
x = -400
y = 0

[State 3503, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 3503, 3]
type = Projectile
trigger1 = AnimElem = 1
projanim = 1501
projremovetime = 10
projid = 1500
velocity = 0,0
offset = 0,0

[State 3503, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3504
ctrl = 1

[State 3503, 7]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 3503, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,8

[Statedef 3504]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1502
ctrl = 0
facep2 = 1

[State 3504, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3504, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 3504, 0]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add1

[State 3504, 2]
type = Projectile
trigger1 = Time = AnimElem = 1
projanim = 1500
projremovetime = 10
velocity = 0,0
offset = 0,0

[State 3504, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3505
ctrl = 1

[Statedef 3505]
type    = S
movetype= A
physics = N
juggle  = 6
poweradd= 120
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 3505, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3505]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0

[State 3505]
type = PlaySnd
trigger1 = AnimElem = 6
value = 5, 5

[State 3505, 2]
type = Projectile
trigger1 = AnimElem = 6
projanim = 1001
ProjID = 1000
offset = 60, -85
velocity = 5,0
attr = S, SP
damage    = 100
animtype = Heavy
guardflag = MA
pausetime = 0,9
sparkno = s7071
hitsound   = S1,9
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5, -5
air.animtype = Back
air.velocity = -6,-5
air.juggle = 3

[State 3505, 7]
type = Helper
trigger1 = AnimElem = 6
name = "Dust"
stateno = 1002

[State 3505, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 3506
ctrl = 1

[Statedef 3506]
type    = S
movetype= I
physics = S
ctrl = 0
velset = (prevstateno = 9010)* 0,(prevstateno = 9010)* 0
facep2 = !(prevstateno = 9010)

[State 3506, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 3506, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1400
value = 1500

[State 3506, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 3
channel = 0

[State 3506, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3506, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 3506, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add1

[State 3506, TeleportFwd]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger2 = PalNo = [7, 12]
x = 400
y = 0

[State 3506, TeleportBack]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command = "holdback"
trigger1 = command != "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
x = -400
y = 0

[State 3506, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 3506, 3]
type = Projectile
trigger1 = AnimElem = 1
projanim = 1501
projremovetime = 10
projid = 1500
velocity = 0,0
offset = 0,0

[State 3506, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3507
ctrl = 1

[State 3506, 7]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 3506, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,8

[Statedef 3507]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1502
ctrl = 0
facep2 = 1

[State 3507, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3507, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 3507, 0]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add1

[State 3507, 2]
type = Projectile
trigger1 = Time = AnimElem = 1
projanim = 1500
projremovetime = 10
velocity = 0,0
offset = 0,0

[State 3507, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3508
ctrl = 1

[Statedef 3508]
type    = S
movetype= A
physics = N
juggle  = 6
poweradd= 120
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 3508, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3508]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0

[State 3508]
type = PlaySnd
trigger1 = AnimElem = 6
value = 5, 5

[State 3508, 2]
type = Projectile
trigger1 = AnimElem = 4
projanim = 1001
ProjID = 1000
offset = 0, -85
velocity = 7,0
attr = S, SP
damage    = 150
animtype = Heavy
guardflag = MA
pausetime = 0,9
sparkno = s7071
hitsound   = S1,9
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5, -5
air.animtype = Back
air.velocity = -6,-5
air.juggle = 3

[State 3508, 7]
type = Helper
trigger1 = AnimElem = 6
name = "Dust"
stateno = 1003

[State 3508, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 3509
ctrl = 1

[Statedef 3509]
type    = S
movetype= I
physics = S
ctrl = 0
velset = (prevstateno = 9010)* 0,(prevstateno = 9010)* 0
facep2 = !(prevstateno = 9010)

[State 3509, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 3509, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1400
value = 1500

[State 3509, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 3
channel = 0

[State 3509, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3509, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 3509, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add1

[State 3509, TeleportFwd]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger2 = PalNo = [7, 12]
x = 400
y = 0

[State 3509, TeleportBack]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command = "holdback"
trigger1 = command != "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
x = -400
y = 0

[State 3509, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 3509, 3]
type = Projectile
trigger1 = AnimElem = 1
projanim = 1501
projremovetime = 10
projid = 1500
velocity = 0,0
offset = 0,0

[State 3509, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3510
ctrl = 1

[State 3509, 7]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 3509, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,8

[Statedef 3510]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1502
ctrl = 0
facep2 = 1

[State 3510, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3510, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 3510, 0]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add1

[State 3510, 2]
type = Projectile
trigger1 = Time = AnimElem = 1
projanim = 1500
projremovetime = 10
velocity = 0,0
offset = 0,0

[State 3510, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3511
ctrl = 1

[Statedef 3511]
type    = A
movetype= A
physics = N
poweradd= 110
juggle = 8
ctrl = 0
anim = 1200
velset = 0, -4

[State 3511, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3511, luce]
type = Explod
trigger1 = AnimElem = 1
anim = 885
ID = 885
pos = 0, 5 
postype = p1
sprpriority = 5
supermove = 1
;removetime = 80
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3511, afterimage]
type = AfterImage
trigger1 = time = 1
time = 70
framegap = 2
length = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add

[State 3511, voce]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5, 4

[State 3511, voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3511, 1]
type = VelAdd
trigger1 = Time >= 30
x = .5

[State 3511, 2] ;Gravity
type = VelAdd
trigger1 = Time >= 20
y = .3

[State 3511, 2] ;Gravity
type = VelAdd
trigger1 = Time >= 30
y = .3

[State 3511, 3]
type = Width
trigger1 = AnimElem = 4, >= 0
trigger2 = AnimElem = 8, < 0
value = 20,0

[State 3511, 4]
type = HitDef
trigger1 = time = 0
attr = A, SA
animtype = Back
damage    = 100
priority  = 5
hitflag   = M
guardflag = M
pausetime = 8,8
sparkxy = 5,0
sparkno = S7071
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5,-6
air.velocity = -5,-5
fall.animtype = Hard
fall = 1

[State 3511, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
type = ChangeState
value = 3512

[Statedef 3512]
type    = A
movetype= A
physics = N
anim = 11
velset = 0,0

[State 3512, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3512, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3513
ctrl = 1

[Statedef 3513]
type    = S
movetype= I
physics = S
ctrl = 0
velset = (prevstateno = 9010)* 0,(prevstateno = 9010)* 0
facep2 = !(prevstateno = 9010)

[State 3513, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 3513, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1400
value = 1500

[State 3513, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 3
channel = 0

[State 3513, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3513, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 3513, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
trans = Add1
paladd = 0,0,190

[State 3513, TeleportFwd]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger2 = PalNo = [7, 12]
x = 400
y = 0

[State 3513, TeleportBack]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command = "holdback"
trigger1 = command != "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
x = -400
y = 0

[State 3513, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 3513, 3]
type = Projectile
trigger1 = AnimElem = 1
projanim = 1501
projremovetime = 10
projid = 1500
velocity = 0,0
offset = 0,0

[State 3513, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3514
ctrl = 1

[State 3513, 7]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 3513, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,8

[Statedef 3514]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1502
ctrl = 0
facep2 = 1

[State 3514, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3514, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 3514, 0]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
trans = Add1
paladd = 0,0,190

[State 3514, 2]
type = Projectile
trigger1 = Time = AnimElem = 1
projanim = 1500
projremovetime = 10
velocity = 0,0
offset = 0,0

[State 3514, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3515
ctrl = 1

[Statedef 3515]
type    = A
movetype= A
physics = N
poweradd= 110
juggle = 8
ctrl = 0
anim = 1200
velset = 0, -4

[State 3515, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3515, luce]
type = Explod
trigger1 = AnimElem = 1
anim = 885
ID = 885
pos = 0, 5 
postype = p1
sprpriority = 5
supermove = 1
;removetime = 80
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3515, afterimage]
type = AfterImage
trigger1 = time = 1
time = 70
framegap = 2
length = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add

[State 3515, voce]
type = PlaySnd
trigger1 = AnimElem = 5
value = 9, 3

[State 3515, voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 4

[State 3515, 1]
type = VelAdd
trigger1 = Time >= 30
x = .5

[State 3515, 2] ;Gravity
type = VelAdd
trigger1 = Time >= 20
y = .3

[State 3515, 2] ;Gravity
type = VelAdd
trigger1 = Time >= 30
y = .3

[State 3515, 3]
type = Width
trigger1 = AnimElem = 4, >= 0
trigger2 = AnimElem = 8, < 0
value = 20,0

[State 3515, 4]
type = HitDef
trigger1 = time = 0
attr = A, SA
animtype = Back
damage    = 100
priority  = 5
hitflag   = M
guardflag = M
pausetime = 8,8
sparkxy = 5,0
sparkno = S7002
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5,-6
air.velocity = -5,-5
fall.animtype = Hard
fall = 1

[State 3515, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
type = ChangeState
value = 3516

[Statedef 3516]
type    = A
movetype= A
physics = N
anim = 11
velset = 0,0

[State 3516, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3516, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3517
ctrl = 1

[Statedef 3517]
type    = S
movetype= I
physics = S
ctrl = 0
velset = (prevstateno = 9010)* 0,(prevstateno = 9010)* 0
facep2 = !(prevstateno = 9010)

[State 3517, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 3517, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1400
value = 1500

[State 3517, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 3
channel = 0

[State 3517, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3517, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 25

[State 3517, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
trans = Add1
paladd= 0,0,190

[State 3517, TeleportFwd]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger2 = PalNo = [7, 12]
x = 400
y = 0

[State 3517, TeleportBack]
type = PosAdd
triggerall = AnimElem = 11
trigger1 = PalNo = [1, 6]
trigger1 = command = "holdback"
trigger1 = command != "holdfwd"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
x = -400
y = 0

[State 3517, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 3517, 3]
type = Projectile
trigger1 = AnimElem = 1
projanim = 1501
projremovetime = 10
projid = 1500
velocity = 0,0
offset = 0,0

[State 3517, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3518
ctrl = 1

[State 3517, 7]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 3517, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 20,8

[Statedef 3518]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1502
ctrl = 0
facep2 = 1

[State 3518, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 3518, polvere]
type = Explod
trigger1 = time = 0
anim = 8000
pos = 0,-5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 3518, 0]
type = AfterImage
trigger1 = AnimElem = 1
time = 20
trans = Add1
paladd= 0,0,190

[State 3518, 2]
type = Projectile
trigger1 = Time = AnimElem = 1
projanim = 1500
projremovetime = 10
velocity = 0,0
offset = 0,0

[State 3518, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3519
ctrl = 1

[Statedef 3519]
type = S
movetype = A
physics = S
anim = 1310
poweradd = 50
velset = 0,0
ctrl = 0

[State 3519, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3519, Voice]
type = PlaySnd
trigger1 = time = 0
value = S2,0

[State 3519, polvere]
type = Explod
trigger1 = time = 0
anim = 7088
pos = -10,10
postype = p1
removetime= 80
sprpriority = 2
ownpal = 1
ignorehitpause = 0
scale = .5,.5	

[State 3519, wind]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 10
trigger4 = AnimElem = 11
attr = S, SA
animtype  = medium
damage    = 10,5
guardflag = MA
pausetime = 7,7
sparkno = S7000
sparkxy = 0,-80
hitsound   = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -0.20,-1
air.velocity = -0.30,-1.5
fall = 0

[State 3519, wind]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 14
trigger4 = AnimElem = 15
attr = S, SA
animtype  = medium
damage    = 20,2
guardflag = MA
pausetime = 7,7
sparkno = S7000
sparkxy = 0,-70
hitsound   = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -0.20,-1
air.velocity = -0.30,-1.5
fall = 0

[State 3519, wind]
type = HitDef
trigger1 = AnimElem = 9
trigger2 = AnimElem = 18
attr = S, SA
animtype  = medium
damage    = 30,3
guardflag = MA
pausetime = 7,7
sparkno = S7000
sparkxy = 0,-60
hitsound   = S1,1
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -2,-1
air.velocity = -2,-2
fall = 0

[State 3519, wind]
type = HitDef
trigger1 = AnimElem = 18
attr = S, SA
animtype  = medium
damage    = 40,4
guardflag = MA
pausetime = 7,7
sparkno = s7001
sparkno = S7000
sparkxy = 0,-90
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime  = 8
ground.velocity = -2,-1
air.velocity = -2,-2
fall = 1

[State 3519, endcorsa]
type = ChangeState
trigger1 = animtime = 0
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

;-------------------------------------------------------
;Combo 
;-------------------------------------------------------

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
value = 1000

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 220
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 20) && (movecontact) 
value = 1010

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220) 
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 220) && (movecontact) 
value = 1020

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
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S) &&  (power >= 100)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact) 
value = 1300

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
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 220) && (movecontact) 
value = 1310

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
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 240

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240) 
trigger1 = (movecontact)
value = 250

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 250) 
trigger1 = (movecontact)
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 250) && (movecontact) 
value = 1320

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
trigger1 = (stateno = 250) && (prevstateno = 230) && (movecontact) 
value = 1400

;-------------------------------------------------------
;-------------------------------------------------------

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
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 400
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 400) && (prevstateno = 430) && (movecontact) 
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
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 440) 
trigger1 = (movecontact)
value = 450

;-------------------------------------------------------
;-------------------------------------------------------

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

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 600
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 630) && (movecontact) 
value = 620

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 660

;---------------------------------------------------------------------------
;Special Moves
;---------------------------------------------------------------------------

;cosmo charge
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 99])
trigger1 = (P2bodydist X >= 200) &&  (power <= 2999) && (prevstateno != 5120) && (p2movetype != H) 
value = 900

;fireball 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [100, 149])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120) && (p2movetype != H) 
value = 1000

;fireball 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [150, 199])
trigger1 = (P2bodydist X >= 180) && (prevstateno != 5120) && (p2movetype != H) 
value = 1010

;fireball 3
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [200, 249])
trigger1 = (P2bodydist X >= 210) && (prevstateno != 5120) && (p2movetype != H) 
value = 1020

;flying kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [250, 299])
trigger1 = (P2bodydist X <= 180) && (prevstateno != 5120) && (p2movetype != H) 
value = 1200

;100 punches 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [300, 349])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120) && (p2movetype != H) 
value = 1300

;100 punches 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [350, 399])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120) && (p2movetype != H) 
value = 1310

;100 kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [400, 449])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120) && (p2movetype != H) 
value = 1320

;harpoon
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [450, 499])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120) && (p2movetype != H) 
value = 1400

;teleport
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) &&  (var(59) != 0) && (statetype = S) && (ctrl) && (random = [500, 549])
trigger1 = (P2bodydist X >= 210) && (prevstateno != 5120) && (p2movetype = A)
value = 1500

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [550,599])
value = 195

;---------------------------------------------------------------------------
;Super Moves
;---------------------------------------------------------------------------

;1000 punches 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X <= 320) && (power >= 1000) && (random = [600,649])
value = 3000

;1000 kicks 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X <= 50) && (power >= 1000) && (random = [650,699])
value = 3200

;1000 punches 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X <= 320) && (power >= 2000) && (random = [700,749])
value = 3100

;1000 kicks 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X <= 50) && (power >= 2000) && (random = [750,799])
value = 3300

;super harpoon
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X >= 150) && (power >= 3000) && (random = [800,849])
value = 3400

;super combo teleport
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X >= 200) && (power >= 3000) && (random = [850,899])
value = 2000 

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

;---------------------------------------

[State -3, AI Activate]
type = VarSet
trigger1 = ishometeam
trigger1 = teamside = 2
var(59) = 1

;---------------------------------------

[State -3, Cosmo 1]
type = RemoveExplod
triggerall = numexplod(2) >= 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life <= 250
ID = 2

[State -3, Cosmo 2]
type = RemoveExplod
triggerall = numexplod(3) >= 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life > 250
ID = 3

;---------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 8
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 8
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 16
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 16
value = F3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 7
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 7
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 15
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 15
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
triggerall = life <= 0
triggerall = anim = 5150
triggerall = numexplod(5250) = 0
trigger1 = time = 1
anim = 5250
ID = 5250
pos = -15,-15
sprpriority = 5
ownpal = 1

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = 5150
trigger1 = time = 1
trigger2 = time = 10
trigger3 = time = 20
value = 11, 1

[State -3, Lie Dead]
type = PalFX
triggerall = life <= 0
triggerall = anim = 5150
trigger1 = time = 1
time = 10
add = 0,0,0
sinadd = 200,200,200,3

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9