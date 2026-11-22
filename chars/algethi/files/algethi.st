; HERCULES ALGETHI ST File by Squall y Pardo

;---------------------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170]
type = AssertSpecial
trigger1 = time = [0,60]
flag = roundnotover

[State 170]
type = Playsnd
trigger1 = time = 0
value = 13,9
channel = 0

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
triggerall = var(24) = 1
trigger1 = time = 0
value = 184

[State 180, 2]
type = ChangeState
triggerall = var(24) = 0
trigger1 = time = 0
trigger1 = MatchOver = 0
value = 181

[State 180, 3]
type = ChangeState
triggerall = var(24) = 0
trigger1 = time = 1
trigger1 = MatchOver = 1
value = 182

;---------------------------------------------------------------------------
; Win pose 1
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, 1]
type = AssertSpecial
trigger1 = time = [0,240]
flag = RoundNotOver

[State 181, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,2
channel = 0

[State 181, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, 1]
type = AssertSpecial
trigger1 = time = [0,240]
flag = RoundNotOver

[State 182, 2]
type = ChangeState
triggerall = time = 0
trigger1 = name = "algethi" && palno = 5 || name = "algethi" && palno = 11
trigger2 = name = "algethiH"
value = 183

[State 182, 3]
type = AssertSpecial
trigger1 = BackEdgeBodyDist < 10
flag = Invisible

[State 182, 4]
type = PlaySnd
trigger1 = time = 0
value = 13,0
channel = 0

[State 182, 5]
type = PlaySnd
trigger1 = AnimElem = 19
value = 13,3
channel = 0

[State 182, 6]
type = VelSet
trigger1 = AnimElem = 20
x = -const(velocity.walk.fwd.x)

[State 182, 7]
type = PlaySnd
trigger1 = AnimElem = 21
value = 3,0

[State 182, 8]
type = PlaySnd
trigger1 = AnimElem = 24
value = 3,1

[State 182, 9]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;Win pose (Hades)
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 183, 1]
type = AssertSpecial
trigger1 = time = [0,150]
flag = roundnotover

[State 183, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 1

[State 183, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose (fatality)
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 184, 1]
type = AssertSpecial
trigger1 = time = [0,320]
flag = RoundNotOver

[State 184, 1]
type = RemoveExplod
triggerall = numexplod(1802) >= 1
trigger1 = time = 0
ID = 1802

[State 184, 1]
type = RemoveExplod
triggerall = numexplod(1812) >= 1
trigger1 = time = 0
ID = 1812

[State 184, 1]
type = RemoveExplod
triggerall = numexplod(1822) >= 1
trigger1 = time = 0
ID = 1822

;Dio (intro/win)
[State 184, 1]
type = Explod
trigger1 = time = 0
anim = 1814
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 500
removetime = 500
ownpal = 1
shadow = 5,5,5

;Sirius (intro/win)
[State 184, 1]
type = Explod
trigger1 = time = 0
anim = 1824
sprpriority = 3
postype = p1
pos = 45,0
bindtime = 500
removetime = 500
ownpal = 1
shadow = 5,5,5

[State 184, 2]
type = PlaySnd
trigger1 = time = 10
value = 13,0
channel = 0

[State 184, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;Intro general controller
[Statedef 190]
type = S
velset = 0,0

[State 190]
type = VarRandom
trigger1 = time = 0
v = 2
range = 0,99

[State 190]
type = ChangeState
trigger1 = Var(2) = [0,59]
value = 191

[State 190]
type = ChangeState
trigger1 = Var(2) = [60,99]
value = 192

;------------------------------------------------------------------------
; Intro 1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1]
type = AssertSpecial
trigger1 = time = [0,425]
flag = Intro

[State 191, 1]
type = ChangeState
triggerall = time = 0
trigger1 = name = "algethi" && palno = 5 || name = "algethi" && palno = 11
trigger2 = name = "algethiH"
value = 193

[State 191, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 191, 2]
type = Explod
trigger1 = time = 0
pos = 0,0
anim = 1910
ID = 1910
sprpriority = 10
ownpal = 1
supermovetime = 80
removetime = 80

[State 191, 3]
type = Explod
trigger1 = time = 40
pos = -1,8
anim = 7040+var(22)
ID = 7040
sprpriority = 11
ownpal = 1
supermovetime = 40
removetime = 40

[State 191, 2]
type = Explod
trigger1 = time = 80
pos = 0,0
anim = 8007+var(22)
ID = 8007
sprpriority = 9
ownpal = 1
supermovetime = 22
removetime = 22

[State 191, 2]
type = Explod
trigger1 = time = 80
pos = 0,0
anim = 8034
ID = 8034
sprpriority = 10
ownpal = 1
supermovetime = 137
removetime = 137

[State 191, 4]
type = Explod
trigger1 = AnimElem = 1
pos = -350,0
anim = 8000+var(22)
ID = 8000
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 100
removetime = 100
scale = 0.7,0.7

[State 191, 5]
type = BGPalfx
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
ignorehitpause = 1
time = 50
mul = 100,100,100
sinadd = 34,56,67,80
add = 5,5,5
invertall = 0

[State 191, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,0

[State 191, voice]
type = PlaySnd
trigger1 = time = 80
value = 5,2

[State 191, voice]
type = PlaySnd
trigger1 = time = 80
value = 5,4

[State 191, voice]
type = PlaySnd
trigger1 = AnimElem = 29
value = 4,0

[State 191, cosmo]
type = Explod
trigger1 = time = 0
pos = 0,0
anim = 2
ID = 2
sprpriority = -1
ownpal = 1
supermovetime = -1
removetime = -1
scale = 1.04,.99

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

[State 191, ChangeState]
type = ChangeState
trigger1 = time = 425
value = 0

;--------------------------------------------------------------------------
; Intro 2
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, 2]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
value = 2,3

[State 192, 3]
type = Playsnd
trigger1 = time = 70
value = 13,4
channel = 0

[State 192, Mouth]
type = Explod
trigger1 = time = 150
anim = 186
ID = 186
pos = -10,0
postype = p1
bindtime = 160
sprpriority = 10
removetime = 155
removeongethit = 1
scale = 2,1

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

[State 192, 4] ;Change to stand state
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;--------------------------------------------------------------------------
;Intro 3 (Hades)
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 1]
type = AssertSpecial
trigger1 = time = [0,375]
flag = Intro

[State 193, Voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,6

[State 193, Eyes]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,1

[State 193, capa]
type = Explod
trigger1 = AnimElem = 7
pos = 0,0
anim = 1930
sprpriority = -1
ownpal = 1
supermovetime = 21
removetime = 21

[State 193, Voce]
type = PlaySnd
trigger1 = AnimElem = 8
value = 13,0
channel = 0

[State 193, 2]
type = PlaySnd
trigger1 =  time = 145
value = 0,1

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
type = Changestate
trigger1 = time = 375
value = 0

;------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, Mouth]
type = Explod
trigger1 = time = 1
anim = 186
ID = 186
pos = -10,0
postype = p1
bindtime = 130
sprpriority = 10
removetime = 140
removeongethit = 1
scale = 2,1

[State 195, 1]
type = Playsnd
trigger1 = time = 1
value = 13,8
channel = 0

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
[Statedef 200]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 200
poweradd = 50
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = time = 0
value = 0,0			

[State 200, 2]
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
pausetime = 8, 8
sparkno = S7000+var(22)
sparkxy = -10, -106
hitsound = S1, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 200, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
[Statedef 210]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 210
poweradd = 50
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0

[State 210, 2]
type = HitDef
trigger1 =  Time = 0
attr = S, NA
damage = 30
getpower = 0
givepower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7001+var(22)
sparkxy = -10, -96
hitsound = S1, 1
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 210, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
[Statedef 220]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 220
poweradd = 50
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0,1

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 40
getpower = 0
givepower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7002+var(22)
sparkxy = -10, -76
hitsound = S1, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -10.4,-3
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -10.4,-3
air.hittime = 12
fall = 1

[State 220, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
[Statedef 230]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 230
poweradd = 50
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0

[State 230, 2]
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
pausetime = 10, 10
sparkno = S7000+var(22)
sparkxy = -10, -100
hitsound = S1, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 230, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
[Statedef 240]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 240
poweradd = 50
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0

[State 240, 2]
type = HitDef
trigger1 =  Time = 0
attr = S, NA
damage = 30
getpower = 0
givepower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7001+var(22)
sparkxy = -20, -96
hitsound = S1, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 240, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
[Statedef 250]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 250
poweradd = 50
sprpriority = 2

[State 250, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 40
getpower = 0
givepower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7002+var(22)
sparkxy = -10, -96
hitsound = S1, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 250, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Standing Strong Kick (near)
[Statedef 255]
type = S
movetype = A
physics = S
juggle = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 255
sprpriority = 2

[State 255, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0, 1

[State 255, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = heavy
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 8,10
sparkno = s7001+var(22)
sparkxy = -10,-96
hitsound   = S1, 2
guardsound = s6, 0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -9
air.velocity = -2.2,-3.2

[State 255, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
[Statedef 400]
type = C
movetype = A
physics = C
juggle = 1
velset = 0,0
ctrl = 0
anim = 400
poweradd = 50
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0,0

[State 400, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 20
getpower = 0
givepower = 0
animtype = medium
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7000+var(22)
sparkxy = 10, -53
hitsound = S1, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 400, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
[Statedef 410]
type = C
movetype = A
physics = C
juggle = 1
velset = 0,0
ctrl = 0
anim = 410
poweradd = 50
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0,0

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 30
getpower = 0
givepower = 0
animtype = medium
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7001+var(22)
sparkxy = -20, -52
hitsound = S1, 1
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 410, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 420]
type = C
movetype = A
physics = C
juggle = 5
poweradd = 50
ctrl = 0
anim = 420
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0,1

[State 420, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 40
getpower = 0
givepower = 0
priority  = 3
animtype = Up
hitflag = MAF
guardflag = L
pausetime = 0,0
sparkno = S7002+var(22)
sparkxy = -15,-100
hitsound   = S1, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 8
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1

[State 420, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
[Statedef 430]
type = C
movetype = A
physics = C
juggle = 5
poweradd = 50
ctrl = 0
anim = 430

[State 430, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 20
getpower = 0
givepower = 0
animtype = back
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7000+var(22)
sparkxy = -10, -6
hitsound = S1, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 430, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
[Statedef 440]
type = C
movetype = A
physics = C
juggle = 1
velset = 0,0
ctrl = 0
anim = 440
poweradd = 50
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 0,0

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 30
getpower = 0
givepower = 0
animtype = back
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7001+var(22)
sparkxy = -10, -6
hitsound = S1, 1
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 440, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Kick
[Statedef 450]
type = C
movetype = A
physics = C
juggle = 5
poweradd = 50
ctrl = 0
anim = 430
velset = 10, 0

[State 450, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 450, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 40
getpower = 0
givepower = 0
animtype = back
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7002+var(22)
sparkxy = -10, -6
hitsound = S1, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1

[State 430, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jump Light Punch
[Statedef 600]
type = A
movetype= A
physics = A
juggle = 1
ctrl = 0
anim = 600
poweradd = 50
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0,0

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 20
getpower = 0
givepower = 0
animtype = Light
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7000+var(22)
sparkxy = -10, -91
hitsound = S1, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;---------------------------------------------------------------------------
; Jump Medium Punch
[Statedef 610]
type = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610
poweradd = 50
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0

[State 610, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 30
getpower = 0
givepower = 0
animtype = Light
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7000+var(22)
sparkxy = -10, -96
hitsound = S1, 1
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;---------------------------------------------------------------------------
; Jump Strong Punch
[Statedef 620]
type = A
movetype = A
physics = A
juggle = 4
poweradd = 50
ctrl = 0
anim = 610

[State 620, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0,1

[State 620, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 40
getpower = 0
givepower = 0
animtype = Light
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7002+var(22)
sparkxy = -10, -96
hitsound = S1, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1

;---------------------------------------------------------------------------
; Jump Light Kick
[Statedef 630]
type = A
movetype = A
physics = A
juggle = 1
ctrl = 0
anim = 630
poweradd = 50
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0,0

[State 630, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 20
getpower = 0
givepower = 0
animtype = Light
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7000+var(22)
sparkxy = -10, -26
hitsound = S1, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;---------------------------------------------------------------------------
; Jump Medium Kick
[Statedef 640]
type = A
movetype = A
physics = A
juggle = 1
ctrl = 0
anim = 640
poweradd = 50
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0,0

[State 640, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 30
getpower = 0
givepower = 0
animtype = Light
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7001+var(22)
sparkxy = -10, -26
hitsound = S1, 1
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;---------------------------------------------------------------------------
; Jump Strong Kick
[Statedef 650]
type = A
movetype = A
physics = A
juggle = 4
poweradd = 50
ctrl = 0
anim = 650

[State 650, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 650, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 40
getpower = 0
givepower = 0
animtype = Light
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S7002+var(22)
sparkxy = -10, -76
hitsound = S1, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4, -5
airguard.velocity = -3.9,-5.8
air.type = High
air.velocity = -3.4,-6
air.hittime = 12

;---------------------------------------------------------------------------
; Bone-Breaker
[Statedef 800]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 5

[State 800, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,9
channel = 0

[State 800, VarSet]
type = VarSet
triggerall = Time <= 0
trigger1 = command = "x" && command = "y"
trigger2 = command = "y" && command = "z"
trigger3 = command = "x" && command = "z"
v = 0
value = 0

[State 800, VarSet]
type = VarSet
triggerall = Time <= 0
trigger1 = command = "a" && command = "b"
trigger2 = command = "b" && command = "c"
trigger3 = command = "a" && command = "c"
v = 0
value = 1

[State 800, VarSet]
type = VarSet
triggerall = Time <= 0
trigger1 = command = "holdfwd"
v = 1
value = 0

[State 800, VarSet]
type = VarSet
triggerall = Time <= 0
trigger1 = command != "holdfwd"
v = 1
value = 1

[State 800, Width]
type = Width
trigger1 = 1
value = 20,0

[State 800, SprPriority]
type = SprPriority
trigger1 = AnimElem = 5, < 0
value = 5

[State 800, SprPriority]
type = SprPriority
trigger1 = AnimElem = 5, >= 0
value = 5

[State 800, Arm]
type = Helper
trigger1 = AnimElem = 1
ignorehitpause = 1
name = "Grabbing Arms"
ID = 800
facing = 1
pos = 0,0
postype = P1
stateno = 801
keyctrl = 0

[State 800, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = s8, 0
channel = 0

[State 800, 1]
type = HitDef
trigger1 = Time <= 0
attr = S, NT
damage = 0
getpower = 0
givepower = 0
hitflag = M
priority = 1, Miss
sparkno = -1
ground.velocity = -4,-4
air.velocity = -4,-4
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 802
p2stateno = 804
numhits = 0
snap = 70,0
fall = 1
fall.recover = 0

[State 800, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 801]
type    = S
movetype= A
physics = S
juggle  = 0
sprpriority = 5
velset = 0,0
ctrl = 0
anim = 801

[State 800, BindToRoot]
type = BindToRoot
trigger1 = 1
facing = 1
pos = 0,0
time = 1

[State 800, 2]
type = ChangeAnim
trigger1 = Root, Anim = 805;!= 0
;trigger1 = Root, Anim != 47
value = 806
elem = Root, AnimElemNo(0)

[State 800, 2]
type = DestroySelf
trigger1 = Root, Anim != 800
trigger1 = Root, Anim != 802
trigger1 = Root, Anim != 805
trigger2 = Root, Anim = 800 || Root, Anim = 805
trigger2 = Root, AnimElem = 5, >= 0
trigger3 = Root, Anim = 820
trigger3 = Root, AnimElem = 6, >= 0
;value = 0

;
[Statedef 802]
type    = S
movetype= A
physics = N
anim = 802
poweradd = 50

[State 802, Width]
type = Width
trigger1 = 1
edge = 30,0

[State 802, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 802, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 802, SprPriority]
type = SprPriority
trigger1 = 1
value = -1

[State 802, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 1

[State 802, Bind]
type = TargetBind
trigger1 = AnimElem = 1, < 10
pos = 70, 0

[State 802, State]
type = ChangeState
trigger1 = Var(0) = 0
trigger1 = Time >= 5
value = 805

[State 802, State]
type = ChangeState
trigger1 = Var(0) = 1
trigger1 = Time > 5
value = 810

;
[Statedef 805]
type    = S
movetype= A
physics = N
anim = 805

[State 805, 0]
type = VarSet
trigger1 = AnimElem = 1
trigger2 = AnimTime = 0
v = 1
value = 1

[State 805, 0]
type = VarSet
trigger1 = AnimElem = 2
v = 1
value = 0

[State 805, Width]
type = Width
trigger1 = 1
edge = 30,0

[State 805, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 805, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 805, SprPriority]
type = SprPriority
trigger1 = 1
value = -1

[State 805, TargetState]
type = TargetState
trigger1 = AnimElem = 1
value = 809

[State 805, Bind]
type = TargetBind
trigger1 = AnimElem = 1, < 10
trigger2 = AnimTime = 0
pos = 15, -125

[State 805, Bind]
type = TargetBind
trigger1 = AnimElem = 2, >= 0
trigger1 = AnimElem = 2, < 10
pos = 15, -125

[State 805, PalFX]
type = PalFX
triggerall = Time > 0
triggerall = Time < 80
triggerall = Var(1) = 1
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = command = "a"
trigger5 = command = "b"
trigger6 = command = "c"
add = 50,50,50
time = 1

[State 805, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 0

[State 805]
type = Explod
trigger1 = AnimElem = 2
anim = 7000+var(22)
ID = 7000
pos = 0,0
postype = p2
bindtime = 1
scale = 0.9,0.9
sprpriority = 1
ownpal = 1
removeongethit = 1

[State 805, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NT
damage = 60
getpower = 0
givepower = 0
animtype = Heavy
hitflag = MA
priority = 3, Hit
pausetime = 0, 0
sparkno = S7002+var(22)
sparkxy = -20, -120
hitsound = S2, 3
ground.type = Low
ground.slidetime = 5
ground.hittime  = 15
ground.velocity = -4,-4
fall.animtype = Heavy
air.type = High
air.velocity = -4,-4
air.hittime = 10
p2stateno = 809
kill = 0

[State 805, State]
type = ChangeState
trigger1 = Time >= 105
value = 810

;
[Statedef 804]
type    = S
movetype= H
physics = N
velset = 0,0

[State 804, Anim2]
type = ChangeAnim2
trigger1 = Anim != 804
value = 804

[State 804, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 804, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 804, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 804, AfterImage]
type = AfterImage
triggerall = time = 0
trigger1 = Enemy, StateNo = 3001
trigger2 = Enemy, StateNo = 4001
time = 1

[State 804, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 804, SelfState]
type = SelfState
trigger1 = Time >= 50
value = 0
ctrl = 1


;
[Statedef 809]
type    = A
movetype= H
physics = N
velset = 0,0

[State 809, Anim2]
type = ChangeAnim2
trigger1 = Anim != 809
value = 809

[State 809, 1]
type = HitBy
trigger1 = 1
value = S, NT
time = 1

[State 809, 1]
type = NotHitBy
trigger1 = 1
value = CA, NA, SA, HA, AP
time = 1

[State 809, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 809, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

;
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810

[State 810, Width]
type = Width
trigger1 = Time < 20
edge = 30,0

[State 810, Width]
type = Width
trigger1 = Time >= 10
value = 30,0

[State 810, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 810, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 8,2
channel = 0

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem = 5, < 0
value = -1

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem = 5, >= 0
value = 1

[State 810, TargetState]
type = TargetState
trigger1 = AnimElem = 1
value = 811

[State 810, Bind]
type = TargetBind
trigger1 = AnimElem = 1
pos = -40, -90

[State 810, Bind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 0, -75

[State 810, Bind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 100, -50

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Var(0) = 1
trigger1 = AnimElem = 3
value = -20

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 811]
type    = A
movetype= H
physics = N
velset = 0,0

[State 811, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 811, Anim2]
type = ChangeAnim2
trigger1 = Anim != 811
value = 811

[State 811, 0]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 811, LifeAdd]
type = LifeAdd
trigger1 = AnimTime = 0
value = -60

[State 811, HitVelSet]
type = VelSet
trigger1 = AnimTime = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 811, SelfState]
type = SelfState
trigger1 = AnimTime = 0
value = 5050

;
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 2.8,-7
poweradd = 0

[State 821, 1] ;Gravity
type = VelAdd
trigger1 = 1
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
; Combo
[Statedef 830]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd = 100
velset = 0,0
anim = 830
ctrl = 0
sprpriority = 2

[State 830, 1]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 8
value = 0, 2

[State 830, 4]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Light
damage    = 10,2
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = S7000+var(22)
sparkxy = -10,-56
hitsound   = S1, 3
guardsound = s6, 0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 2
air.velocity = -2.5,-5
fall = 0

[State 830, 4]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Light
damage    = 15,2
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = S7000+var(22)
sparkxy = -10,-88
hitsound   = S1, 3
guardsound = s6, 0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 2
air.velocity = -2.5,-5
fall = 0

[State 830, 4]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Light
damage    = 20,2
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 5,10
sparkno = S7000+var(22)
sparkxy = -10,-84
hitsound   = S1, 3
guardsound = s6, 0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 2
air.velocity = -2.5,-5
fall = 0

[State 830, 6]
type = HitDef
trigger1 = AnimElem = 9
attr = S, SA
animtype  = Medium
damage    = 45,2
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = S7002+var(22)
sparkxy = -10,-68
hitsound   = S1, 4
guardsound = s6, 0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-5
guard.velocity = -6
air.velocity = -9,-5
airguard.velocity = -4.5,-5
envshake.time = 5           ;Parameters for shaking the screen on hit
envshake.ampl = 7
envshake.freq = 566
p2facing = 1                 ;Force p2 to face p1 on hit
fall = 1

[State 830, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

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
value = 12, 1
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

[State 901]
type = Explod
triggerall = numexplod(7010) = 0
trigger1 = 1
anim = 7010+var(22)
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
anim = 7020+var(22)
ID = 7020
pos = 0,2
bindtime = 1
scale = 0.9,0.9
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 901, Constellation]
type = Explod
triggerall = numexplod(6000) = 0
trigger1 = animelem = 1
anim = 6000
ID = 6000
pos = 0,-35
postype = p1
bindtime = -1
sprpriority = -4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
scale = 0.7,0.7

[State 901]
type = Explod
triggerall = numexplod(7030) = 0
trigger1 = 1
anim = 7030+var(22)
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
anim = 7031+var(22)
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
anim = 903+var(22)
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
triggerall = power >= 3000
trigger1 = time = 1
value = 9, 3

[State 902]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Super Punch
[Statedef 1000]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 100
sprpriority = 2

[State 1000, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 0
ID = 2

[State 1000, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 3
value = 12,2
channel = 0

[State 1000, VarSet]
type = VarSet
trigger1 =  time = 0
v = 16
value = 0

[State 1000, VarSet]
type = VarSet
trigger1 =  time = 0
v = 11
value = 5

[State 1000, Explod]
type = Explod
trigger1 =  AnimElem = 4
anim = 8006
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, 5]
type = AfterImage
trigger1 = time = 8
time = 20
FrameGap = 2
length = 10
PalBright= 0, 0,0
PalContrast= 98,98,98
PalAdd=0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1000, RUN_FWD]
type = Explod
trigger1 = AnimElem = 4
pos = 25,0
anim = 7085
sprpriority = 5
supermovetime = 30
removeongethit = 1
ownpal = 1

[State 1000, Helper]
type = Helper
trigger1 = time = 0
ID = 1001
pos = 0,0
postype = p1
stateno = 1001
name = "protect"
keyctrl = 0
ownpal = 1

[State 1000, 1]
type = HitDef
trigger1 = animelem >=6
attr = S, SA
damage = 80,8
getpower = 0
givepower = 0
animtype = diagup
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = s8051
sparkxy = -10, -75
hitsound = s1, 5
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -7,-8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 7
envshake.ampl = 2

[State 1000, attackFX]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 1000, StateTypeSet]
type = StateTypeSet
trigger1 = Animelem = 6
statetype = S
movetype = A
physics = N

[State 1000, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 10

[State 1000, StateTypeSet]
type = StateTypeSet
trigger1 = Animelem = 10
statetype = S
movetype = A
physics = S

[State 1000, VelSet]
type = VelSet
trigger1 = animelem = 9
x = 0

[State 1000, Explod-dust-walk]
type = Explod
trigger1 = animelem = 6
trigger2 = animelem = 7
trigger3 = animelem = 8
trigger4 = animelem = 9
anim = F120
ID = 120
pos = 14,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = -2
pausemovetime = -2
scale = 1,1
sprpriority = 4
ontop = 1
ownpal = 1
removeongethit = 1

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; (helper)
[Statedef 1001]
type = U
sprpriority = -9

[State 1001, armor]
type = HitOverride
trigger1 = 1
ignorehitpause = 1
time = -1
attr = SCA, AA,AP,AT
stateno = 1002
slot = 7

[State 1001, Ucan_tseeme]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = noautoturn
flag3 = invisible

[State 1001, Anim]
type = ChangeAnim
trigger1 = 1
value = Parent,Anim
elem = Parent, AnimElemNo(0)

[State 1001, Pos]
type = PosSet
trigger1 = 1
X = Parent,Pos X
Y = Parent,Pos Y

[State 1001, output damage]
type = ParentVarset
trigger1 = 1
var(16) = getHitVar(damage)
ignorehitpause = 1

[State 1001, Destroy]
type = DestroySelf
trigger1 = time >= 84
trigger2 = parent,stateno = [5000,5999]
trigger3 = parent,stateno = 0
trigger4 = parent,var(11) <= 0

; (helper)
[Statedef 1002]
type = U
sprpriority = -9

[State 1002, VarAdd]
type = parentVarAdd
trigger1 = time = 0
var(11)=-1

[State 1002, ChangeState]
type = ChangeState
trigger1 = time = 2
value = 1001
ctrl = 0

;---------------------------------------------------------------------------
; Algethi's Squall
[Statedef 1100]
type = S
movetype = A
physics = S
ctrl = 0
juggle  = 8
velset = 0,0
anim = 1100
sprpriority = 2
poweradd= 100

[State 1100, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 0
ID = 2

[State 1100, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,3

[State 1100, 2]
type = Explod
trigger1 = AnimElem = 1
anim = 613
pos = -16,-94
postype = p1
sprpriority = -2
bindtime = 1

[State 1100, 3]
type = Explod
trigger1 = AnimElem = 1
anim = 6131
pos = -17,-95
postype = p1
sprpriority = 9
persistent = 0
bindtime = 1

[State 1100, 4]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,8

[State 1100, 5]
type = Explod
trigger1 = AnimElem = 4
anim = 3802
pos = 40,0
postype = p1
sprpriority = 2
bindtime = 1

[State 1100, 6]
type = PlaySnd
trigger1 = AnimElem = 4
value = 13,0
channel = 0

[State 1100, 7]
type = Projectile
trigger1 = NumExplod(30005) = 0
trigger1 = AnimElem = 5
ProjAnim = 8021
ProjID = 8021
projhitanim = -1
projremove = 0
projremanim = 8021
projpriority = 7
projhits = 6
offset = -5,-50
velocity = 5, 0
;remvelocity = 1.7, 0
projshadow = 0,0,0
velmul = 1.01, 1
accel = 0,0
attr = S, HP
damage    = 60,1
animtype  = hard
getpower  = 0
givepower = 0
guardflag = MAF
hitflag = MA
guard.pausetime = 0,13
pausetime = 0,8
sparkxy = -10, -70
sparkno = -1
guard.sparkno = -1
hitsound   = -1
guardsound = S6, 0
ground.type = trip
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -7,-9
air.velocity = -4,-5
guard.velocity = -9
airguard.velocity = -3,-4
ground.cornerpush.veloff = 0
fall.recover = 0
fall = 1

[State 1100, 8]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Algethi's Headbutt
[Statedef 1200]
type = S
movetype = A
physics = N
juggle = 1
velset = 0,0
poweradd = 100
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 0
ID = 2

[State 1200, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 1200,Explod]
type = Explod
trigger1 = (!time)
anim = 8006
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1200, 5]
type = AfterImage
trigger1 = time = 0
time = 30
FrameGap = 2
length = 10
PalBright= 0, 0,0
PalContrast= 98,98,98
PalAdd=0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1200, RUN_FWD]
type = Explod
trigger1 = AnimElem = 1
pos = 25,0
anim = 7085
sprpriority = 5
;supermove = 1
removeongethit = 1
ownpal = 1

[State 1200]
type = Playsnd
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16
value = 100,1

[State 1200]
type = EnvShake
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16
time = 5
freq = 80
ampl = 4

[State 1200]
type = VelSet
trigger1 = time = 0
x = 10
y = 0

[State 1200]
type = HitDef
trigger1 = time = 0
attr = S,SA
animtype = Hard
air.animtype = Diagup
ground.type = High
air.type = High
damage = 90,9
getpower = 0,0
givepower = 0,0
priority = 5,Hit
guardflag = MA
hitflag = MAF
pausetime = 15,15
sparkno = s8050
sparkxy = -53,-70
guard.sparkno = s676700
hitsound =  s1, 4
guardsound = S6, 0
ground.slidetime = 14
ground.hittime = 14
ground.velocity = 2.5,-11
guard.velocity = -5
air.velocity = 3.5,-9
airguard.velocity = -2,0
yaccel = .8
fall = 1
air.fall = 1
fall.recover = 0
fall.recovertime = 30
envshake.time = 9
envshake.freq = 80
envshake.ampl = 4

[State 1200]
type = PlayerPush
trigger1 = movecontact
trigger1 = !numtarget && P2movetype != H
value = 0

[State 1200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Air Wall
[Statedef 1300]
type = S
movetype = A
physics = S
poweradd = 100
anim = 1300
ctrl = 0

[State 1300, snd]
type = PlaySnd
trigger1 = time = 0
value = 12,1
channel = 0

[State 1300, dust]
type = Explod
trigger1 = time = 0
anim = 7084
supermovetime = 22
ontop = 1
removeongethit = 1

[State 1300,helper]
type = Helper
trigger1 = StateNo = 1300
trigger1 = animelem = 2
ID = 8010
postype = P1
pos = 0,0
name = "tornadostrong"
stateno = 8010
sprpriority = 4
facing = 1
pausemovetime = 1

[State 1300, changestate]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; (helper)
[Statedef 8010]
type = S
movetype = A
physics = N
juggle  = 10
ctrl = 0
anim = 8010
sprpriority = 4

[State 8010, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 8010, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 8010
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 8010, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 8010, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8010, snd]
type = PlaySnd
trigger1 = time = 0
value = 5,6

[State 8010, tornadostrong]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 80,8
getpower = 0
givepower = 0
animtype  = Medium
hitflag= MAF
guardflag = MA
hitsound = S1, 2
guardsound = S6, 0
ground.velocity = -4, -10
air.velocity = -4, -10
pausetime = 1,5
guard.pausetime = 1,35
sparkno = -1
sparkxy = -10,-55
fall = 1
fall.recover = 0

[State 8010, snd]
type = PlaySnd
trigger1 = movehit = 1 || moveguarded = 1
value = 5,6

[State 8010, destroy]
type = Destroyself
trigger1 = time = 52

;------------------------------------------------------------------------------
; Kornephoros Hold
[Statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
poweradd = -1000
velset = 0,0
juggle = 5
ctrl = 0
sprpriority = 2

[State 3000, 1]
type = SuperPause
trigger1 = AnimElem = 1
pos = -4, -80
anim = S7009+var(22)
time = 10
darken = 1
sound = S5,3

[State 3000, snd]
type = Playsnd
trigger1 = Animelem = 2
value = 0,1

[State 3000, 2]
type = HitDef
trigger1 = time = 0
attr = S, HT
damage    = 0
getpower = 0
givepower = 0
hitflag = MAF
sparkno = -1
pausetime = 0,0
hitonce = 1
animtype = up
hitsound   = s8,1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,0
envshake.time = 5
fall.envshake.time = 10
fall.envshake.freq = 15
fall.envshake.ampl = 35
air.velocity = 3,5
guard.velocity = -5
fall = 1
fall.recover = 0
fall.yvelocity = -5
fall.damage = 200
p1stateno=3001
p2stateno=3002

[State 3000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 3001]
type    = S
movetype= A
physics = S
anim = 3001
velset = 0,0
ctrl = 0
sprpriority = 7

[State 3001, snd]
type = Playsnd
trigger1 = time = 0
value = 13,1
channel = 0

[State 3001, snd]
type = Playsnd
trigger1 = Animelem = 5
value = 12,3
channel = 0

[State 3001, snd]
type = Playsnd
trigger1 = Animelem = 6
value = 5,3

[State 3001, 1]
type = Superpause
trigger1 = time = 1
time = 100
sound = 3,1
anim = -1

[State 3001, exp]
type = Explod
trigger1 = time = 0
anim = 7009+var(22)
ID = 7009
pos = 8,-56
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removeongethit = 1
removetime = 29
supermovetime = 29

[State 3001, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 70, 0

[State 3001, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(2) >= 0 && AnimElemTime(3) < 0
pos = 50, 0

[State 3001, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(3) >= 0 && AnimElemTime(4) < 0
pos = 65, 5

[State 3001, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(4) >= 0 && AnimElemTime(5) < 0
pos = 60, 5

[State 3001, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(5) >= 0 && AnimElemTime(6) < 0
pos = 55, 5

[State 3001, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(6) >= 0 && AnimElemTime(7) < 0
pos = 35, -15

[State 3001, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(6) >= 0 && AnimElemTime(7) < 0
pos = 10, -90

[State 3001, 3]
type = Explod
trigger1 = animelem=6
anim = 8060
postype = p1
pos =-20,-250

[State 3001, exp]
type = Explod
trigger1 = AnimElem = 6
pos = -50,0
anim = 8005
ID = 8005
postype = p2
sprpriority = -5
ignorehitpause = 1
ownpal = 1
scale = 0.3,5
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 70
removetime = 70

[State 3001, 4]
type = ChangeState
trigger1 = time = 75
value = 0
ctrl = 1

;
[Statedef 3002]
type    = A
movetype= H
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 3002

[State 3002, 5]
type = VelSet
trigger1 = time = 27
x = 0
y = -20

[State 3002, 6]
type = SelfState
trigger1 = time = 70
value = 5050
ctrl = 0

;---------------------------------------------------------------------------
; Kornephoros lv1
[Statedef 3100]
type = S
movetype = A
physics = N
juggle = 0
poweradd= -1000
velset = 0,0
anim = 3100
sprpriority = 1
ctrl = 0

[State 3100]
type = SuperPause
trigger1 = AnimElem = 1
pos = -4, -80
anim = S7009+var(22)
time = 10
darken = 1
sound = S5,3

[State 3100]
type = varset
trigger1 = time = 0
v = 5
value = 0

[State 3100]
type = PlaySnd
trigger1 = animelemtime(6) = 2
value = 12,3
channel = 0

[State 3100]
type = removeexplod
trigger1 = time = 0
ID = 3000

[State 3100]
type = Helper
trigger1 = animelem = 6
ID = 8020
name = "tornado1"
sprpriority = 5
pos = floor(77 * Const(size.xscale)),floor(0 * Const(size.yscale))
postype = p1
stateno = 8020
pausemovetime = 0
keyctrl = 1
ownpal = 1

[State 3100]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; (helper)
[Statedef 8020]
type = S
ctrl = 0
anim = 8020
velset = 0,0
movetype = A
physics = N
sprpriority = 5

[State 8020]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 8020]
type = PlaySnd
trigger1 = time = 0
value = 5,8
channel = 5

[State 8020]
type = VelSet
trigger1 = time = 0
x = 10

[State 8020]
type = velmul
trigger1 = time >= 12
x = 0.9

[State 8020]
type = HitDef
trigger1 = time = 0
attr = S, HP
damage = 0,20
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
hitflag = MAFD
priority = 5, Hit
pausetime = 0, 0
guard.pausetime = 12, 12
sparkno = s7002+var(22)
sparkxy = -24, -10
hitsound = s8, 1
guard.sparkno = s7006+var(22)
guardsound = s6, 0
ground.type = high
ground.slidetime = 21
ground.hittime  = 21
guard.slidetime = 17
guard.hittime  = 17
ground.velocity = -10.5
air.velocity = -5.5,-6
yaccel = 0.45
air.type = high
air.hittime = 12
ID = 9999
nochainID = 9999
air.fall = 1
fall.recover = 0
fall.damage= 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p1stateno = 8030
p2stateno = 8040

[State 8020]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 8020]
type = hitby
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 8020]
type = hitoverride
trigger1 = 1
attr = SCA,NP,SP,HP
stateno = 8021
ignorehitpause = 1

[State 8020]
type = null;changestate
trigger1 = movecontact
value = 1115

[State 8020]
type = changestate
trigger1 = time = 38
value = 8021

; (helper)
[Statedef 8021]
type = A
ctrl = 0
anim = 8020
velset = 0,0
movetype = I
physics = N
sprpriority = 5

[State 8021]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 8021]
type = stopsnd
trigger1 = time = 0
channel = 5

[State 8021]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 8021]
type = destroyself
trigger1 = time = 10

; (helper)
[Statedef 8030]
type = A
ctrl = 0
anim = 8030
velset = 0,0
movetype = I
physics = N
sprpriority = 5

[State 8030]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
flag3 = noshadow


[State 8030 a]
type = nothitby
trigger1 = 1
value = SCA
time = -1

[State 8030 a]
type = varset
trigger1 = time = 0
v = 1
value = 0

[State 8030 a]
type = varadd
trigger1 = time < 20
v = 1
value = 5

[State 8030 a]
type = VelSet
trigger1 = time = 45
y = -8

[State 8030 a]
type = targetbind
trigger1 = time <= 64
pos = 0,floor(-var(1) *0.75)

[State 8030 a]
type = targetlifeadd
trigger1 = time = 65
value = -239

[State 8030 a]
type = targetstate
trigger1 = time = 65
value = 8025

[State 8030 a]
type = destroyself
trigger1 = time = 66

; (enemy)
[Statedef 8040]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 8040, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 8040

[State 8040, 1]
type = ChangeAnim2
trigger1 = time = 10
value = 8041

[State 8040 1]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 8040 a]
type = selfstate
trigger1 = time = 600
value = 0
ctrl = 1

; (enemy)
[Statedef 8025]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 8025, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 8025

[State 8025, 1]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 8025, a]
type = VelSet
trigger1 = time = 1
y = 2

[State 8025]
type = veladd
trigger1 = 1
y = 0.45

[State 8025]
type = selfstate
trigger1 = pos y >= 0
value = 5100

;---------------------------------------------------------------------------
; Kornephoros lv2
[Statedef 3200]
type = S
movetype = A
physics = S
juggle = 4
poweradd= -2000
velset = 0,0
sprpriority = 0
anim = 3200
ctrl = 0

[State 3200]
type = SuperPause
trigger1 = time = 1
pos = -4, -80
anim = S7009+var(22)
time = 135
darken = 1
sound = S5,3
movetime = 135

[State 3200]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1,5

[State 3200, explodere]
type = RemoveExplod
trigger1 = time = 200
ID = 2002

[State 3200, sound]
type = PlaySnd
trigger1 = time = 0
value = 13,5	
channel = 0

[State 3200, sound]
type = PlaySnd
trigger1 = time = 120
value = 12,3

[State 3200, explode]
type = Explod
trigger1 = time = 0
pos = -320,0
anim = 8005
ID = 8005
postype = right
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 135
removetime = 220

[State 3200, removexplode]
type = RemoveExplod
trigger1 = time = 200
ID = 2000

[State 3200, 2]
type = helper
trigger1 = AnimElem = 16
ID = 8031
postype = P1
pos = 40,-100
stateno = 8031

[State 3200, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Numhelper(8031) = 0
value = 0
ctrl = 1

[State 3200, 3]
type = ChangeState
trigger1 = time = 190
value = 0
ctrl = 1

;(helper)
[Statedef 8031]
type = A
movetype = A
physics = S
anim = 8031
sprpriority = 2

[State 8031, sound]
type = PlaySnd
trigger1 = (Time%10) = 0
trigger1 = time < 39
value = 5,7	
channel = 1

[State 8031,1]
type = HitDef
trigger1 = time > 0 && time < 40
attr = S, SP
animtype  = heavy
damage    = 10,1
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
sparkno = -1
hitsound   = -1
ground.type = high
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -5,0
guard.velocity = 0
air.velocity = -5,-0.3
airguard.velocity = 0,0
p2facing = 1
fall = 1

[State 8031,1]
type = DestroySelf
trigger1 = time > 40
trigger2 = movetype = H

;---------------------------------------------------------------------------
; Kornephoros x3
[Statedef 3300]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3300
ctrl = 0
sprpriority = 1
poweradd = -2000

[State 3300, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3300, a5]
type = SuperPause
trigger1 = !Var(55)=1 && !time
pos = -4, -80
anim = S7009+var(22)
time = 40
darken = 1
sound = S5,3
movetime = 40
p2defmul = 2

[State 3300, sonido]
type=PlaySnd
trigger1=animelem=2
value = 1,5

[State 3300, sfondo]
type = Explod
trigger1 = time = 0
pos = -320,0
anim = 8005
ID = 8005
postype = right
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 160
removetime = 160

[State 3300, sfondo]
type = Explod
trigger1 = time = 0
pos = -320,0
anim = 8001
ID = 8005
postype = right
sprpriority = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 160
removetime = 160

[State 3300, b1]
Type = BGPalfx
trigger1 = time = [0, 800]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3300, dust]
type = Explod
triggerall = !NumExplod(7084)
trigger1 = time = 0
ID = 7084
anim = 7084
pos = 0,0
ontop = 1
removeongethit = 1
supermovetime = 22

[State 3300, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype  = Medium
damage    = 70,10
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
ground.type = High
ground.slidetime = 19
ground.hittime = 21
ground.velocity = -0
guard.velocity = -0
air.velocity = -0,-5
airguard.velocity = -10,0
ground.cornerpush.veloff = 0
fall.damage= 15
air.fall = 1
fall.recovertime = 28

[State 3300, 3]
type = PlaySnd
trigger1 = animelem  = 2
value = 12,1
channel = 0

[State 3300, 3x]
type = PlaySnd
trigger1 = animelem  = 2
trigger2 = animelem  = 9
trigger3 = animelem  = 16
value = 0,2

[State 3300, 3y]
type = PlaySnd
trigger1 = animelem  = 1
value = 5,9

[State 3300,helper]
type = Helper
triggerall = StateNo = 3300
trigger1 = animelem  = 2
trigger2 = animelem  = 9
trigger3 = animelem  = 16
ID = 8032
postype = P1
pos = 0,0
name = "tornado2"
stateno = 8032
sprpriority = 4
facing = 1
pausemovetime = 1

[State 3300, dust]
type = Explod
trigger1 = animelem  = 1
trigger2 = animelem  = 9
trigger3 = animelem  = 16
anim = 7084
pos = 0,0
ontop = 1
removeongethit = 1
supermovetime = 22

[State 3300, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; (helper)
[Statedef 8032]
type = S
movetype = A
physics = N
ctrl = 0
anim = 8032
velset = 6,0

[State 8032, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA
ignorehitpause = 1

[State 8032, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8032, snd]
type = PlaySnd
trigger1 = time = 0
value = 5,6

[State 8032, tornadomed]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 133,60
getpower = 0
givepower = 0
animtype  = Medium
hitflag= MAF
guardflag = MA
hitsound = S1, 2
guardsound = S6, 0
ground.velocity = -10, -6
ground.slidetime = 10
ground.hittime  = 12
air.velocity =-10,-6
airguard.velocity = -6,0
down.velocity = -10,-6
down.hittime = 20
pausetime = 1,12
sparkno = -1
sparkxy = -10,-55
fall = 1
fall.recover = 0

[State 8032, destroy]
type = Destroyself
trigger1 = time = 42

;---------------------------------------------------------------------------
; Infernal Kornephoros Hold
[Statedef 3400]
type = S
movetype = A
physics = S
anim = 3400
poweradd = -2000
velset = 0,0
juggle = 5
ctrl = 0
sprpriority = 2

[State 3400, 1]
type = SuperPause
trigger1 = AnimElem = 1
pos = -4, -80
anim = S7009+var(22)
time = 10
darken = 1
sound = S5,3

[State 3400, snd]
type = Playsnd
trigger1 = Animelem = 2
value = 0,1

[State 3400, 2]
type = HitDef
trigger1 = time = 1
attr = S, HT
damage    = 0
getpower = 0
givepower = 0
hitflag = MAF
sparkno = -1
pausetime = 0,0
hitonce= 1
animtype = up
hitsound   = s8, 1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,0
envshake.time = 5
fall.envshake.time = 20
fall.envshake.freq = 30
fall.envshake.ampl = 70
air.velocity = 4,8
guard.velocity = -5
fall = 1
fall.recover= 0
fall.yvelocity = -8
fall.damage= 400
p1stateno = 3401
p2stateno = 3402

[State 3400, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 3401]
type    = S
movetype= A
physics = S
anim = 3401
velset = 0,0
ctrl = 0
sprpriority = 2

[State 3400, snd]
type = PlaySnd
trigger1 = time = 0
value = 12,1
channel = 0

[State 3401, snd]
type = PlaySnd
trigger1 = Animelem = 5
value = 13,7
channel = 0

[State 3401, snd]
type = PlaySnd
trigger1 = Animelem = 6
value = 5,3

[State 3401, spause]
type = SuperPause
trigger1 = time = 1
pos = -4, -80
anim = S7009+var(22)
darken = 1
sound = s5,3
time = 275

[State 3401, envshake]
type = EnvShake
trigger1 = time = 0
time = 274

[State 3401, exp]
type = Explod
trigger1 = time = 0
anim = 7010+var(22)
ID = 7010
pos = 0,0
postype = p1
sprpriority = -4
ownpal = 1
ignorehitpause = 0
bindtime = -1
removeongethit = 1
removetime = 274
supermovetime = 274

[State 3401, exp]
type = Explod
trigger1 = time = 0
anim = 7020+var(22)
ID = 7020
pos = 0,0
postype = p1
sprpriority = 9
ownpal = 1
ignorehitpause = 0
bindtime = -1
removeongethit = 1
removetime = 274
supermovetime = 274

[State 3401, exp]
type = Explod
trigger1 = time = 0
anim = 7009+var(22)
ID = 7009
pos = 8,-56
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removeongethit = 1
removetime = 29
supermovetime = 29

[State 3401, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 9,3
loop = 1
channel = 8

[State 3401, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 70, 0

[State 3401, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(2) >= 0 && AnimElemTime(3) < 0
pos = 50, 0

[State 3401, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(3) >= 0 && AnimElemTime(4) < 0
pos = 65, 5

[State 3401, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(4) >= 0 && AnimElemTime(5) < 0
pos = 60, 5

[State 3401, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(5) >= 0 && AnimElemTime(6) < 0
pos = 55, 5

[State 3401, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(6) >= 0 && AnimElemTime(7) < 0
pos = 35, -15

[State 3401, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(6) >= 0 && AnimElemTime(7) < 0
pos = 10, -90

[State 3401, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 8060
postype = p1
pos = -20,-250
scale = 1,8

[State 3401, exp]
type = Explod
trigger1 = AnimElem = 6
pos = -50,0
anim = 8005
ID = 8005
postype = p2
sprpriority = -5
ignorehitpause = 1
ownpal = 1
scale = 0.3,5
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 70
removetime = 70

[State 3401, 4]
type = StopSnd
trigger1 = time = 2
channel = 8

[State 3401, 5]
type = ChangeState
trigger1 = time = 237
value = 3403
ctrl = 1

;
[Statedef 3402]
type    = A
movetype= H
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 3002

[State 3402, 1]
type = VelSet
trigger1 = time = 27
x = 0
y = -20

[State 3402, 2]
type = SelfState
trigger1 = time = 70
value = 5050
ctrl = 0

;
[Statedef 3403]
type    = S
movetype= A
physics = S
anim = 195
velset = 0,0
ctrl = 0
sprpriority = 2

[State 3403, 1]
type = Playsnd
trigger1 = time = 0
value = 13,0
channel = 0

[State 3403, 2]
type = ChangeState
trigger1 = time = 120
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Kornephoros lv3
[Statedef 3500]
type = S
movetype = A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 3500
poweradd = -3000

[State 3500, superpause]
type = superpause
trigger1= animelem = 3
pos = -4, -80
anim = S7009+var(22)
time = 260
darken = 1
sound = S5,3
movetime = 260

[State 3500, sonido]
type = PlaySnd
trigger1 = animelem = 1
value = 1,5

;[State 3500, 1]
;type = PlaySnd
;trigger1 = Animelem = 48
;value = 13,7
;channel = 0

[State 3500, sonido]
type = PlaySnd
trigger1 = Animelem = 18
value = 5,7

[State 3500, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3500, quake]
type = EnvShake
trigger1 = timemod = 100,0
trigger1 = animelem = 53, >53
freq = 100
ampl = 10
time = 100

[State 3500, explode]
type = Explod
trigger1 = time = -0
anim = 8002+var(22)
ID = 8002
pos = 0,0
postype = left
supermovetime=260
bindtime = -1
removetime = 260
removeongethit = 1
sprpriority = -5
supermovetime = 525

[State 3500, sfondo]
type = Explod
trigger1 = time = 255
pos = -320,0
anim = 8005
ID = 8005
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 140
supermovetime = 140

[State 3500, sfondo]
type = Explod
trigger1 = time = -0
pos = -320,0
anim = 8001
ID = 8001
postype = right
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 400
supermovetime = 525

[State 3500, 1]
type = Projectile
trigger1 = time = 255
projanim = 8033
projhitanim = 8033
projscale = 2,2
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projshadow = 0,0,0
projremovetime = 60
offset = 70 , 0
velocity = 5,0
attr = S, SP
damage   = 316,180
getpower = 0
givepower = 0
animtype = heavy
guardflag = MA
p2stateno = 3501
ID = 3500
fall=1
fall.recover = 0
fall.damage = 86
fall.envshake.ampl = 15      
fall.envshake.freq = 50
fall.envshake.time = 20
hitflag = MAFDP
pausetime = 10,10
guard.pausetime = 10,35
hitsound   = S5,4
sparkno = -1
sparkxy = 75,-55
guardsound = S6, 0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0;-6
air.animtype = Back
air.velocity = 0,0;-5,-20
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 3500, 2]
type = PlaySnd
trigger1 = time = 20
value = 5,8

[State 3500, 2]
type = PlaySnd
trigger1 = time = 100
value = 5,8

[State 3500, 2]
type = PlaySnd
trigger1 = Animelem = 57
value = 5,9

[State 3500, 2]
type = PlaySnd
trigger1 = Animelem = 10
value = 13,6
channel = 0

[State 3500, end]
type = ChangeState
trigger1 = time = 400
value = 0
ctrl = 1

; (enemy state)
[Statedef 3501]
type = S
movetype= H
physics = A
ctrl = 0
anim = 5030
;velset = -20,-8
poweradd = -120

[State 3501, horizontal]
type = ScreenBound
trigger1 = time >= 60
value = 0

[State 3501, horizontal]
type = VelSet
trigger1 = timemod = 10,0
triggerall = time < 60
x=-30
y=-8

[State 3501, horizontal]
type = lifeadd
trigger1 = timemod = 2,0
value = -4

[State 3501, voltear]
type = turn
trigger1= timemod = 10,0
triggerall = time < 60

[State 3501, VelSet]
type = VelSet
trigger1 = time >= 60
x = 60
y = -160

[State 3501]
type = PosSet
trigger1 = time = 129
y = -1

[State 3501]
type = VelAdd
trigger1 = time = 129
x = 0
y = 0

[State 3501]
type = PlaySnd
trigger1 = time = 129
value = F7,2

[State 3501, State]
type = SelfState
trigger1 = time = 130
ctrl = 1
value = 5100

;---------------------------------------------------------------------------------
; Dio and Sirius Combo Attack (Silver)
[Statedef 3600]
type    = S
movetype= A
physics = S
anim = 1807
juggle  = 4
velset = 0,0
ctrl = 0
sprpriority = 2
poweradd = -3000

[State 3600, 1]
type = VarSet
trigger1 = time = 0
var(24) = 0

[State 3600, 1]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noFG
flag3 = nobardisplay

[State 3600, 1]
type = Superpause
trigger1 = time = 1
anim = s7009
sound = s9,1
pos = 0,-58
time = 610
movetime = 610
pausebg = 0
darken = 1

;Dio (jump in)
[State 3600, 1]
type = Explod
trigger1 = time = 0
anim = 1813
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 32
removetime = 32
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3600, 1]
type = PlaySnd
trigger1 = time = 32
value = 2, 3

;Dio (super)
[State 3600, 1]
type = Explod
trigger1 = time = 33
anim = 1817
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 578
removetime = 578
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3600, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

;Sirius (jump in)
[State 3600, 1]
type = Explod
trigger1 = time = 20  
anim = 1823
sprpriority = 3
postype = p1
pos = 45,0
bindtime = 32
removetime = 32
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3600, 1]
type = PlaySnd
trigger1 = time = 51
value = 2, 3

;Sirius (super)
[State 3600, 1]
type = Explod
trigger1 = time = 52
anim = 1827
sprpriority = 3
postype = p1
pos = 45,0
bindtime = 558
removetime = 558
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3600, 1]
type = PlaySnd
trigger1 = time = 20
value = 2, 0

[State 3600, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 3, 0

[State 3600, 2]
type = PlaySnd
trigger1 = time = 65
value = 16, 0
channel = 0

[State 3600, Mouth]
type = Explod
trigger1 = time = 75
anim = 186
ID = 186
pos = 34,38
postype = p1
bindtime = 265
sprpriority = 10
removetime = 265
removeongethit = 1
supermovetime = 265
ignorehitpause = 1
scale = 1,1

[State 3600, Mouth]
type = Explod
trigger1 = time = 400
anim = 186
ID = 186
pos = 75,56
postype = p1
bindtime = 140
sprpriority = 10
removetime = 140
removeongethit = 1
supermovetime = 140
ignorehitpause = 1
scale = 1.5,1

[State 3600, Mouth]
type = Explod
trigger1 = time = 550
anim = 186
ID = 186
pos = 8,22
postype = p1
bindtime = 40
sprpriority = 10
removetime = 50
removeongethit = 1
supermovetime = 50
ignorehitpause = 1
scale = 1,1

[State 3600, 3]
type = ChangeState
trigger1 = time = 610
value = 3601
ctrl = 0

;
[Statedef 3601]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3500
poweradd = 0

[State 3601, 1]
type = PosAdd
trigger1 = time = 0
x = 0
y = 0

;Sirius (stand)
[State 3601, 1]
type = Explod
trigger1 = time = 0
anim = 1822
ID = 1820
sprpriority = 3
postype = p1
pos = 45,0
bindtime = 568
removetime = 568
supermove = 1
ownpal = 1
shadow = 5,5,5

;Dio (stand)
[State 3601, 1]
type = Explod
trigger1 = time = 0
anim = 1812
ID = 1810
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 568
removetime = 568
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3601, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3601, sonido]
type = PlaySnd
trigger1 = animelem = 1
value = 1,5

[State 3601, spause]
type = SuperPause
trigger1 = animelem = 3
pos = -4, -80
anim = S7009+var(22)
time = 260
darken = 1
sound = S5,3
movetime = 260

[State 3601, quake]
type = EnvShake
trigger1 = timemod = 100,0
trigger1 = animelem = 53, >53
freq = 100
ampl = 10
time = 100

[State 3601, snd]
type = PlaySnd
trigger1 = time = 20
trigger2 = time = 100
value = 5,8

[State 3601, voice1]
type = PlaySnd
trigger1 = Animelem = 10
value = 13,8
channel = 3

[State 3601, sonido]
type = PlaySnd
trigger1 = animelem = 18
value = 5,7

[State 3601, voice]
type = StopSnd
trigger1 = Animelem = 47
channel = 3

[State 3601, voice]
type = PlaySnd
trigger1 = Animelem = 48
value = 12,3
channel = 0

[State 3601, explode]
type = Explod
trigger1 = time = -0
anim = 8002+var(22)
ID = 8002
pos = 0,0
postype = left
supermovetime=260
bindtime = -1
removetime = 260
removeongethit = 1
sprpriority = -5
supermovetime = 525

[State 3601, sfondo]
type = Explod
trigger1 = time = 255
pos = -320,0
anim = 8005
ID = 8005
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 140
supermovetime = 140

[State 3601, sfondo]
type = Explod
trigger1 = time = -0
pos = -320,0
anim = 8001
ID = 8001
postype = right
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 400
supermovetime = 525

[State 3601, proj]
type = Projectile
trigger1 = time = 255
;trigger2 = time = 300
projanim = 8033
projhitanim = 8033
projscale = 2,2
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projshadow = 0,0,0
projremovetime = 60
offset = 70 , 0
velocity = 5,0
attr = S, HP
damage   = 0
getpower = 0
givepower = 0
animtype = heavy
p2stateno = 3610
ID = 8033
fall=1
fall.recover = 0
fall.damage = 70
fall.envshake.ampl = 15
fall.envshake.freq = 50
fall.envshake.time = 20
hitflag = MAFDP
pausetime = 10,10
guard.pausetime = 10,35
hitsound   = S5,4
sparkno = -1
sparkxy = 75,-55
guardsound = S6, 0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0;-6
air.animtype = Back
air.velocity = 0,0;-5,-20
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 3601, VarSet]
type = VarSet
trigger1 = Projcontact = 1
var(24) = 1

[State 3601, snd]
type = PlaySnd
trigger1 = Animelem = 57
value = 5,9

[State 3601, flash]
type = EnvColor
triggerall = p2stateno != 3610
trigger1 = time = 390
value = 255,255,255
under = 0
time = 10

[State 3601, end]
type = ChangeState
triggerall = p2stateno != 3610
trigger1 = time = 390
value = 0
ctrl = 1

[State 3601, end]
type = ChangeState
triggerall = p2stateno = 3610
trigger1 = time = 390
value = 3602
ctrl = 1

;
[Statedef 3602]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 9999

[State 3602, 1]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noFG

[State 3602, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 1810

[State 3602, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 1820

;Sirius (jump out)
[State 3602, 1]
type = Explod
trigger1 = time = 0
anim = 1825
ID = 1825
sprpriority = -3
postype = p1
pos = 45,0
bindtime = 600
removetime = 600
supermove = 1
ownpal = 1
shadow = 5,5,5

;Dio (jump out)
[State 3602, 1]
type = Explod
trigger1 = time = 0
anim = 1815
ID = 1815
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 600
removetime = 600
ownpal = 1
shadow = 5,5,5

;Algethi (jump out)
[State 3602, 1]
type = Explod
trigger1 = time = 0  
anim = 1805
ID = 1805
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 600
removetime = 600
ownpal = 1
shadow = 5,5,5

[State 3602, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

;Sirius (jump)
[State 3602, 2]
type = ModifyExplod
trigger1 = time >= 60
ID = 1825
anim = 1825
pos = 0,540-(time-60)
postype = p2
facing = -1
shadow = 0,0,0

;Dio (jump)
[State 3602, 2]
type = ModifyExplod
trigger1 = time >= 60
ID = 1815
anim = 1815
pos = -240,540-(time-60)
postype = p2
shadow = 0,0,0

;Algethi (jump)
[State 3602, 2]
type = ModifyExplod
trigger1 = time >= 60
ID = 1805
anim = 1805
pos = -10,580-(time-60)
postype = p2
facing = -1
shadow = 0,0,0

[State 3602, 2]
type = PlaySnd
trigger1 = time = 60
value = 5,8

[State 3602, 2]
type = PlaySnd
trigger1 = time = 200
value = 15,0

[State 3602, 2]
type = PlaySnd
trigger1 = time = 210
value = 14,0

[State 3602, 2]
type = PlaySnd
trigger1 = time = 220
value = 12,0

[State 3602, 2]
type = Explod
trigger1 = time = 60
anim = 8003+var(22)
ID = 8003
pos = 0,0
postype = left
bindtime = -1
removetime = 280
removeongethit = 1
sprpriority = -5

[State 3602, 2]
type = Explod
trigger1 = time = 60
anim = 8005
ID = 8005
pos = 0,0
postype = left
bindtime = -1
removetime = 280
removeongethit = 1
sprpriority = -4
scale = 2,2

[State 3602, 3]
type = Explod
trigger1 = time = 320
ID = 8004
anim = 8004
pos = 0,0
postype = left
bindtime = -1
removetime = 68
removeongethit = 1
sprpriority = 10

[State 3602, 3]
type = PlaySnd
trigger1 = time = 320
value = s1,3

[State 3602, 3]
type = PlaySnd
trigger1 = time = 330
value = s1,4

[State 3602, 3]
type = PlaySnd
trigger1 = time = 340
value = s1,5

[State 3602, 4]
type = ChangeState
trigger1 = time = 320
value = 3603
ctrl = 1

;
[Statedef 3603]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 9999

[State 3603, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 1805

[State 3603, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 1815

[State 3603, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 1825

;Dio (jump in)
[State 3603, 1]
type = Explod
trigger1 = time = 100
anim = 1813
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 32
removetime = 32
ownpal = 1
shadow = 5,5,5

[State 3603, 1]
type = PlaySnd
trigger1 = time = 131
value = 2, 3

;Dio (stand)
[State 3603, 1]
type = Explod
trigger1 = time = 131
anim = 1812
ID = 1812
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 447
removetime = 447
supermove = 1
ownpal = 1
shadow = 5,5,5

;Sirius (jump in)
[State 3603, 1]
type = Explod
trigger1 = time = 100
anim = 1823
sprpriority = -3
postype = p1
pos = 45,0
bindtime = 32
removetime = 32
ownpal = 1
shadow = 5,5,5

[State 3603, 1]
type = PlaySnd
trigger1 = time = 131
value = 2, 3

;Sirius (stand)
[State 3603, 1]
type = Explod
trigger1 = time = 131
anim = 1822
ID = 1822
sprpriority = -3
postype = p1
pos = 45,0
bindtime = 426
removetime = 426
supermove = 1
ownpal = 1
shadow = 5,5,5

;Algethi (jump in)
[State 3603, 1]
type = Explod
trigger1 = time = 100  
anim = 1803
sprpriority = -3
postype = p1
pos = 0,0
bindtime = 32
removetime = 32
ownpal = 1
shadow = 5,5,5

[State 3603, 1]
type = PlaySnd
trigger1 = time = 131
value = 2, 3

[State 3603, 2]
type = SelfState
trigger1 = time = 131
value = 52
ctrl = 0

;
[Statedef 3610]
type = S
movetype = H
physics = N
velset = 0,0
sprpriority = 2

[State 3610, 1]
type = ChangeAnim2
trigger1 =  time = 0
value = 3610

[State 3610, 2]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = -10

[State 3610, 3]
type = ChangeState
trigger1 = time = 200
value = 3611
ctrl = 0

;
[Statedef 3611]
type = S
movetype = I
physics = S
sprpriority = 2

[State 3611, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3611, 2]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3611, 3]
type = ChangeAnim2
trigger1 = time = 0
value = 3611

[State 3611, 4]
type = PosSet
trigger1 = AnimElem = 1
x = 0
y = 100

[State 3611, 5]
type = VelSet
trigger1 = time < 10
x = 0
y = -1

[State 3611, 6]
type = VelSet
trigger1 = time > 10
x = 0
y = -0.4

[State 3611, 7]
type = LifeAdd
trigger1 = time = 250
value = -9999
kill = 1
absolute = 0

[State 3611, 8]
type = SelfState
trigger1 = time = 300
value = 5100
ctrl = 0

;---------------------------------------------------------------------------------
; Dio and Sirius Combo Attack (Specter)
[Statedef 3700]
type    = S
movetype= A
physics = S
anim = 1807
juggle  = 4
velset = 0,0
ctrl = 0
sprpriority = 2
poweradd = -3000

[State 3700]
type = Varset
trigger1 = time = 1
var(24) = 0

[State 3700, 1]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noFG
flag3 = nobardisplay

[State 3700, 1]
type = SuperPause
trigger1 = time = 0
anim = S7009+var(22)
sound = S9,1
pos = -4, -80
time = 610
movetime = 610
darken = 1

;Dio (jump in)
[State 3700, 1]
type = Explod
trigger1 = time = 0
anim = 1813
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 32
removetime = 32
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3700, 1]
type = PlaySnd
trigger1 = time = 32
value = 2, 3

;Dio (super)
[State 3700, 1]
type = Explod
trigger1 = time = 33
anim = 1817
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 447
removetime = 447
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3700, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

;Sirius (jump in)
[State 3700, 1]
type = Explod
trigger1 = time = 20  
anim = 1823
sprpriority = 3
postype = p1
pos = 45,0
bindtime = 32
removetime = 32
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3700, 1]
type = PlaySnd
trigger1 = time = 51
value = 2, 3

;Sirius (super)
[State 3700, 1]
type = Explod
trigger1 = time = 52
anim = 1827
sprpriority = 3
postype = p1
pos = 45,0
bindtime = 426
removetime = 426
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3700, 1]
type = PlaySnd
trigger1 = time = 20
value = 2, 0

[State 3700, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 3, 0

[State 3700, 2]
type = PlaySnd
trigger1 = time = 65
value = 16, 1
channel = 0

[State 3700, Mouth]
type = Explod
trigger1 = time = 75
anim = 186
ID = 186
pos = 75,56
postype = p1
bindtime = 80
sprpriority = 10
removetime = 80
removeongethit = 1
supermovetime = 80
ignorehitpause = 1
scale = 1.5,1

[State 3700, Mouth]
type = Explod
trigger1 = time = 200
anim = 186
ID = 186
pos = 8,22
postype = p1
bindtime = 279
sprpriority = 10
removetime = 279
removeongethit = 1
supermovetime = 279
ignorehitpause = 1
scale = 1,1

[State 3700, 3]
type = ChangeState
trigger1 = time = 480
value = 3701
ctrl = 0

;
[Statedef 3701]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 1802

;Sirius (jump out)
[State 3701, 1]
type = Explod
trigger1 = time = 0
anim = 1825
ID = 1825
sprpriority = 3
postype = p1
pos = 45,0
bindtime = 60
removetime = 60
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3701, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

;Dio (run)
[State 3701, 1]
type = Explod
trigger1 = time = 0
anim = 1810
ID = 1810
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 568
removetime = 568
supermove = 1
ownpal = 1
shadow = 5,5,5

;Dio (run)
[State 3701, 1]
type = ModifyExplod
trigger1 = time >= 0
ID = 1810
anim = 1810
pos = 75+(10*time+1),0
postype = p1
shadow = 0,0,0

[State 3701, 1]
type = RemoveExplod
trigger1 = time = 30
ID = 1810

[State 3701, 1]
type = PlaySnd
triggerall = NumExplod(1810) > 0
trigger1 = animelem = 1
trigger2 = animelem = 3
value = 3, 0

[State 3701, 1]
type = PlaySnd
triggerall = NumExplod(1810) > 0
trigger1 = animelem = 2
trigger2 = animelem = 4
value = 3, 1

[State 3701, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3701, spause]
type = SuperPause
trigger1 = time = 30
pos = GameWidth-30, -80
anim = s7009+var(22)
time = 30
darken = 1
sound = S9,1
movetime = 30

;Dio (super1)
[State 3701, 2]
type = Explod
trigger1 = time = 30
anim = 1818
ID = 1818
sprpriority = -3
postype = p2
pos = -40,0
bindtime = 30
removetime = 400
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3701, 2]
type = PlaySnd
trigger1 = time = 30
value = 14,1
channel = 0

[State 3701, 2]
type = HitDef
triggerall = P2StateType != A
trigger1 = time = 73
attr = S, NA
damage = 0
getpower = 0
givepower = 0
hitflag = MAF
pausetime = 0,0
sparkno = S7002+var(22)
sparkxy = -5,-80
hitonce = 1
animtype = up
p2facing = -1
p1stateno = 3702
hitsound   = s1, 4
ground.type = High
ground.slidetime = 10
ground.velocity = 10,-7
envshake.time = 5
air.velocity = 10,-7
fall = 1

[State 3701, 3]
type = ChangeState
trigger1 = time = 400
value = 0
ctrl = 1

;
[Statedef 3702]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 1807

[State 3702, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 0
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 0,0
hitonce = 1
animtype = up
p1stateno = 3703
p2stateno = 3710
sparkxy = -5,-10
hitsound   = s9,3
guardsound = s6,0
ground.type = High
fall.yvelocity = -8
fall.damage = 500
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -2,-1
envshake.time = 5
fall.envshake.time = 20
fall.envshake.freq = 30
fall.envshake.ampl = 70
air.velocity = 4,8
guard.velocity = -5
fall = 1

[State 3702, flash]
type = EnvColor
triggerall = p2stateno != 3710
trigger1 = time = 160
value = 255,255,255
under = 0
time = 10

[State 3702, end]
type = ChangeState
triggerall = p2stateno != 3710
trigger1 = time = 160
value = 0
ctrl = 1

;
[Statedef 3703]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 3001

[State 3703, spause]
type = SuperPause
trigger1 = time = 1
pos = -4, -80
anim = S7009+var(22)
time = 30
darken = 1
sound = S9,1
movetime = 240

[State 3703, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 13,7
channel = 0

[State 3703, 1]
type = PlaySnd
trigger1= Animelem = 6
value = 5,3

[State 3703, 1]
type = Explod
trigger1 = AnimElem = 6
anim = 8060
postype = p1
pos = -20,-250

[State 3703, 1]
type = Explod
trigger1 = AnimElem = 6
pos = -50,0
anim = 8005
ID = 8005
postype = p2
sprpriority = -5
ignorehitpause = 1
ownpal = 1
scale = 0.3,5
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 70
removetime = 70

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 70, 0

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemtime(2) >= 0 && AnimElemTime(3) < 0
pos = 50, 0

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemtime(3) >= 0 && AnimElemTime(4) < 0
pos = 65, 5

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemtime(4) >= 0 && AnimElemTime(5) < 0
pos = 60, 5

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemtime(5) >= 0 && AnimElemTime(6) < 0
pos = 55, 5

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemtime(6) >= 0 && AnimElemTime(7) < 0
pos = 35, -15

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemtime(6) >= 0 && AnimElemTime(7) < 0
pos = 10, -90

[State 3703, Bind]
type = ChangeState
trigger1 = time = 183
value = 3704
ctrl = 1

;-------------------------------------------------
;
[Statedef 3704]
type = s
movetype = i
physics = s
ctrl = 0
anim = 1828
velset = 0,0
sprpriority = 4

[State 3704, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 1818

[State 3704, BGPalFX]
type = BGPalFX
trigger1 = time = 0
time = 142
add = 0,0,0
mul = 20,20,20
sinadd = 0,0,0,10
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0

[State 3704, Explod]
type = Explod
trigger1 = time = 0
anim = 8002+var(22)
postype = back
pos = 0, 0
sprpriority = 4
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 142
removetime = 142

[State 3704, ScreenBound]
type = ScreenBound
trigger1 = time = 1
value = 0
movecamera = 0,0

[State 3704, SuperPause]
type = SuperPause
trigger1 = time = 1
time = 142
movetime = 142
darken = 1
anim = -1

[State 3704, VelSet]
type = PosSet
trigger1 = Animelem = 1
y = 0
x = ifelse(facing = 1,-160,160)

[State 3704, sound]
type = PlaySnd
trigger1 = time = 0
value = 2, 3

[State 3704, sound]
type = PlaySnd
trigger1 = time = 60
value = 15, 1
channel = 0

[State 3704, Run Forward]
type = Explod
trigger1 = time = 10
trigger2 = time = 42
trigger3 = time = 46
trigger4 = time = 74
trigger5 = time = 82
trigger6 = time = 90
trigger7 = time = 98
trigger8 = time = 106
trigger9 = time = 118
trigger10 = time = 134
postype = p1
pos = 5,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 3704, light]
type = Explod
trigger1 = AnimElem = 20
postype = p1
pos = -20,-60
anim = 8070+var(22)
ID = 8070
sprpriority = 5
supermove = 1
removetime = 50
removeongethit = 1
ownpal = 1
scale = 1,1

[State 3704, sound]
type = PlaySnd
trigger1 = time = 10
trigger2 = time = 42
trigger3 = time = 46
trigger4 = time = 74
trigger5 = time = 82
trigger6 = time = 90
trigger7 = time = 98
trigger8 = time = 106
trigger9 = time = 118
trigger10 = time = 134
value = 3, 0

[State 3704, sound]
type = PlaySnd
trigger1 = time = 1
trigger2 = time = 26
trigger3 = time = 58
trigger4 = time = 78
trigger5 = time = 86
trigger6 = time = 94
trigger7 = time = 102
trigger8 = time = 110
trigger9 = time = 126
trigger10 = time = 142
value = 3, 1

[State 3704, ChangeState]
type = ChangeState
trigger1 = time = 142
value = 3705
ctrl = 0

;-------------------------------------------------
;
[Statedef 3705]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1832
velset = 0,0

[State 3705, VarSet]
type = VarSet
trigger1 = time = 1
var(24) = 1

;Dio (stand)
[State 3705, 1]
type = Explod
trigger1 = time = 0
anim = 1812
ID = 1812
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 960
removetime = 960
supermove = 1
ownpal = 1
shadow = 5,5,5

;Algethi (stand)
[State 3705, 1]
type = Explod
trigger1 = time = 0
anim = 1802
ID = 1802
sprpriority = -3
postype = p1
pos = 0,0
bindtime = 960
removetime = 960
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3705, sound]
type = PlaySnd
trigger1 = time = 0
value = 5, 5

[State 3705, proj]
type = Projectile
trigger1 = time = 5
projanim = 1830
projhitanim = 1831
projpriority = 8
projshadow = 0,0,0
projhits = 1
projscale = 0.5, 0.5
offset = -10,0
velocity = 12,0
guardflag = MA
attr = S, SP
damage = 999,999
getpower = 0
givepower = 0
animtype = Hard
hitflag = MAF
pausetime = 0,10
guard.pausetime = 0, 110
sparkno = S7003+var(22)
guard.sparkno = S7004+var(22)
sparkxy = -10, -90
hitsound   = s1,4
guardsound = s6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 10
ground.velocity = -20,-5
air.animtype = light
air.velocity = -20,-5
air.juggle = 0
fall.recover = 0
fall = 1
palfx.time = 100
palfx.mul = 255,255,255
palfx.add = 0,127,255
palfx.sinadd = 150, 50, 50, 15
p2stateno = 3711

[State 3705, VarSet]
type = VarSet
trigger1 = Projcontact = 1
var(14) = 1

[State 3705, ChangeAnim]
type = ChangeAnim
trigger1 = var(14) = 1 && anim != 1829
trigger2 = time = 60   && anim != 1829
value = 1829

[State 3705, Explod]
type = Explod
trigger1 = anim = 1829
trigger2 = Animelem = 2
anim = 8006
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
removetime = 55
bindtime = -1
persistent = 0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3705, VelSet]
type = PosAdd
triggerall = anim = 1829 && p2life > 0
trigger1 = var(14) = 1
x = p2bodydist X -60
y = 0

[State 3705, VelSet]
type = PosAdd
triggerall = anim = 1829 && p2life > 0
triggerall = var(14) = 0
trigger1 = time = 60
x = frontedgedist
y = 0

[State 3705, ChangeState]
type = ChangeState
triggerall = anim = 1829
trigger1 = time = 150
value = 3706

;-------------------------------------------------
;
[Statedef 3706]
type = s
movetype = i
physics = s
ctrl = 0
velset = 0,0
sprpriority = 4

[State 3706, PosAdd]
type = PosAdd
trigger1 = time = 0 
x = -45
y = 0

[State 3706, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0 
ID = 1802

;Sirius (stand)
[State 3706, 1]
type = Explod
trigger1 = time = 1
anim = 1822
ID = 1822
sprpriority = 3
postype = p1
pos = 45,0
bindtime = 960
removetime = 960
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3706, SelfState]
type = SelfState
trigger1 = time = 1
value = 0

;-------------------------------------------------------------
;
[Statedef 3710]
type    = A
movetype= H
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
sprpriority = 2

[State 3710, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 3610

[State 3710, 2]
type = BindToTarget
trigger1 = time = 0
time = 1
ID = -1
pos = 0,0,Mid

[State 3710, 3]
type = VelSet
trigger1 = time = 27
x = 0
y = -16

[State 3710, 4]
type = SelfState
trigger1 = time = 70
value = 5050
ctrl = 1

;-------------------------------------------------------------
;
[Statedef 3711]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 3711, 1]
type = Turn
trigger1 = time = 0
trigger1 = p2dist x <= 0

[State 3711, 2]
type = VelSet
trigger1 = time = 25
x = -26

[State 3711, snd]
type = PlaySnd
trigger1 = time = 0
value = 5000, 0

[State 3711, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3711, push]
type = PlayerPush
trigger1 = 1
value = 0

[State 3711, anim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 3711, snd]
type = PlaySnd
trigger1 = time > 5
trigger1 = backedgedist <= 20
value = 5100, 0

[State 3711, shake]
type = EnvShake
trigger1 = time > 5
trigger1 = backedgedist <= 20
time = 10
ampl = 4

[State 3711, end]
type = ChangeState
trigger1 = time > 5
trigger1 = backedgedist <= 20
value = 3712

[Statedef 3712]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 3712, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3712, anim]
type = ChangeAnim
trigger1 = time < 7
value = 5030

[State 3712, anim]
type = ChangeAnim
trigger1 = time = 7
value = 5050

[State 3712, vel]
type = VelSet
trigger1 = time = 7
persistent = 0
x =  0.75
y = -6

[State 3712, vel]
type = VelAdd
trigger1 = time >= 7
y = 0.45

[State 3712, shake]
type = EnvShake
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
time = 10
ampl = 3

[State 3712, anim]
type = ChangeAnim
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
value = 5050

[State 3712, end]
type = SelfState
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
value = 5100

;-------------------------------------------------------------
;
[Statedef 9999]
type = s
movetype = a
physics = s
anim = 9999
juggle = 0
velset = 0,0
ctrl = 0

[State 9999, 1]
type = Destroyself
trigger1 = time = 1

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State -2, Get P2 Distance]
type = VarSet
trigger1 = P2Dist X != 0
v = 11
value = Floor(P2Dist X)

[State -2, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(24) = %d  vel x = %f"
params = var(24),vel x

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

[State -2, Silver Version]
type = RemapPal
triggerall = name = "algethiS" && palno = 5
trigger1 = 1
source = 1,1
dest = 1,13

[State -2, Silver Version]
type = RemapPal
triggerall = name = "algethiS" && palno = 11
trigger1 = 1
source = 1,1
dest = 1,14

[State -2, Silver Version]
type = VarSet
triggerall = roundno >= 1
trigger1 = name = "algethi" && palno != 5 || name = "algethi" && palno != 11
trigger2 = name = "algethiS"
var(22) = 0

[State -2, Specter Version]
type = VarSet
triggerall = roundno >= 1
trigger1 = name = "algethi" && palno = 5 || name = "algethi" && palno = 11
trigger2 = name = "algethiH"
var(22) = 100

[State -2, Constants]
type = AttackMulSet
trigger1 = name = "algethiH"
value = 1.09

[State -2, Constants]
type = DefenceMulSet
trigger1 = name = "algethiH"
value = 1.09

;---------------------------------------------------
;===================================================
; Random sounds
;===================================================
;---------------------------------------------------

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 5001
triggerall = (anim >= 5000) && (anim <= 5009)
trigger1 = time = 1
value = 10,2

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = stateno = 5001
triggerall = (anim >= 5010) && (anim <= 5019)
trigger1 = time = 1
value = 10,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 5001
triggerall = anim >= 5020
trigger1 = time = 1
value = 10,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 5010
trigger1 = time = 1
value = 10,0

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = stateno = 5020
trigger1 = time = 1
value = 10,1

[State -2]
type = PlaySnd
triggerall = stateno = 5030
trigger1 = time = 1
value = 10,3

[State -2]
type = PlaySnd
triggerall = stateno = 5070
trigger1 = time = 1
value = 10,3

[State -2]
type = PlaySnd
triggerall = stateno = 1025
trigger1 = time = 1
value = 10,3

;---------------------------------------------------
;===================================================
; Combo
;===================================================
;---------------------------------------------------

; 3 punches
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200)
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact)
value = 220

; 3 punches
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220)
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 220) && (movecontact)
value = 220

; 3 punches
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200)
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 200) && (movecontact)
value = 220

; 3 punches
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210)
trigger1 = (movecontact)
value = 220
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 210) && (movecontact)
value = 210

; 3 punches
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210)
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 210) && (movecontact)
value = 220

; 3 kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230)
trigger1 = (movecontact)
value = 240
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 230) && (movecontact)
value = 250

; 3 kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230)
trigger1 = (movecontact)
value = 240
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 230) && (movecontact)
value = 250

; 3 kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240)
trigger1 = (movecontact)
value = 250
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 240) && (movecontact)
value = 230

;---------------------------------------------------
;===================================================
; Combo Crouching
;===================================================
;---------------------------------------------------

; crouch punches
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400)
trigger1 = (movecontact)
value = 410
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 400) && (movecontact)
value = 420

; crouch punches
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 410)
trigger1 = (movecontact)
value = 400
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 400) && (movecontact)
value = 420

; crouch kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430)
trigger1 = (movecontact)
value = 440
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 440) && (prevstateno = 430) && (movecontact)
value = 450

; crouch kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430)
trigger1 = (movecontact)
value = 440

; crouch kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430)
trigger1 = (movecontact)
value = 450

;---------------------------------------------------
;===================================================
; Combo Air
;===================================================
;---------------------------------------------------

; combo in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600)
trigger1 = (movecontact)
value = 610

; combo in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610)
trigger1 = (movecontact)
value = 620

; combo in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620)
trigger1 = (movecontact)
value = 610

; combo in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630)
trigger1 = (movecontact)
value = 640

; combo in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640)
trigger1 = (movecontact)
value = 650

; combo in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 650)
trigger1 = (movecontact)
value = 610

; combo in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640)
trigger1 = (movecontact)
value = 600

; combo in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600)
trigger1 = (movecontact)
value = 610
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 600) && (movecontact)
value = 620

; combo in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610)
trigger1 = (movecontact)
value = 600
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 610) && (movecontact)
value = 620

; combo in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620)
trigger1 = (movecontact)
value = 600
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 620) && (movecontact)
value = 610

; combo in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610)
trigger1 = (movecontact)
value = 610

[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 610) && (movecontact)
value = 620

; combo in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600)
trigger1 = (movecontact)
value = 600

[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 600) && (movecontact)
value = 620

; combo in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600)
trigger1 = (movecontact)
value = 640

;---------------------------------------------------
;===================================================
; Special Motions
;===================================================
;---------------------------------------------------

; cosmo charge
[State -2]
type = changestate
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 99])
trigger1 = (P2bodydist X >= 150) && (power < 3000) && (prevstateno != 5120)
value = 900

; bone-breaker
[State -2]
type = ChangeState
value = 800
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = S)
trigger1 = (p2bodydist X <= 30) && (P2MoveType != A) && (random = [100, 149])

; combo
[State -2]
type = ChangeState
value = 830
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = statetype = S && (prevstateno != 5120)
triggerall = (var(10) = 0) && (var(59) != 0) && (ctrl) && (random = [150, 199])
trigger1 = (P2bodydist X <= 50)

; super punch
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)  && (ctrl) && (random = [200, 249])
trigger1 = (P2bodydist X >= 60) && (P2bodydist X <= 200) && (prevstateno != 5120)
value = 1000

; algethi squall
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [250, 299])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120) 
value = 1100

; algethi headbutt
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [300, 349])
trigger1 = (P2bodydist X <= 250) && (P2bodydist X >= 40) && (prevstateno != 5120)
value = 700

; air wall
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)  && (ctrl) && (random = [350, 399])
trigger1 = (P2bodydist X >= 50) && (P2bodydist X <= 100) && (prevstateno != 5120)
value = 1102

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [400,449])
value = 195

;---------------------------------------------------
;===================================================
; Super Motions
;===================================================
;---------------------------------------------------

; kornephoros hold
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = S)
trigger1 = (p2bodydist X <= 30) && (power >= 1000) && (P2MoveType != A) && (random = [450, 499])
value = 3000

; kornephoros lv1
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [500, 549])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120) && (power >= 1000) && (power < 2000)
value = 3100

; kornephoros lv2
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [550, 599])
trigger1 = (P2bodydist X >= 60) && (prevstateno != 5120) && (power >= 1000) && (power < 2000)
value = 3200

; kornephoros x3
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [600, 649])
trigger1 = (P2bodydist X >= 60) && (prevstateno != 5120) && (power >= 2000)
value = 3300

; infernal kornephoros hold
[State -2]
type = changestate
triggerall = name = "algethiH" ;|| name = "algethi" && palno = 5 || name = "algethi" && palno = 11
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = S)
trigger1 = (p2bodydist X <= 30) && (power >= 2000) && (P2MoveType != A) && (random = [650, 699])
value = 3400

; kornephoros lv3
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [700, 749])
trigger1 = (P2bodydist X >= 80) && (prevstateno != 5120) && (power >= 3000)
value = 3500

; dio and sirius combo attack (silver)
[State -2]
type = changestate
triggerall = name = "algethiS" || name = "algethi" && palno != 5 || name = "algethi" && palno != 11
triggerall = p2name != "sirius"
triggerall = p3name != "sirius"
triggerall = p4name != "sirius"
triggerall = p2name != "siriusH"
triggerall = p3name != "siriusH"
triggerall = p4name != "siriusH"
triggerall = p2name != "siriusS"
triggerall = p3name != "siriusS"
triggerall = p4name != "siriusS"
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [750, 799])
trigger1 = (P2bodydist X >= 200) && (prevstateno != 5120) && (power >= 3000) && (p2life <= 250)
value = 3600

; dio and sirius combo attack (specter)
[State -2]
type = changestate
triggerall = name = "algethiH" || name = "algethi" && palno = 5 || name = "algethi" && palno = 11
triggerall = p2name != "sirius"
triggerall = p3name != "sirius"
triggerall = p4name != "sirius"
triggerall = p2name != "siriusH"
triggerall = p3name != "siriusH"
triggerall = p4name != "siriusH"
triggerall = p2name != "siriusS"
triggerall = p3name != "siriusS"
triggerall = p4name != "siriusS"
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [800, 849])
trigger1 = (P2bodydist X >= 200) && (prevstateno != 5120) && (power >= 3000) && (p2life <= 250)
value = 3700

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

;This controller plays a sound everytime the player lands from a jump, or
;from a back-dash.

[State -3, AI Activate]
type = VarSet
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
var(59) = 1

;-------------------------------------
; Remove Explods
;-------------------------------------

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(2) >= 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life <= 250
ID = 2

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(3) >= 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life > 250
ID = 3

[State -3, remove]
type = RemoveExplod
triggerall = NumExplod(186) = 1
trigger1 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
ID = 186

[State -3, remove]
type = RemoveExplod
triggerall = NumExplod(903) = 1
trigger1 = (stateno != 900) && (stateno != 901)
ID = 903

;---------------------------------------------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = AnimElem = 2
trigger1 = anim = 20
trigger2 = anim = 21
value = 3,1

[State -3, Walk]
type = PlaySnd
triggerall = AnimElem = 2
trigger1 = anim = 20
trigger2 = anim = 21
value = F3,1

[State -3, Walk]
type = PlaySnd
triggerall = AnimElem = 5
trigger1 = anim = 20
trigger2 = anim = 21
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = AnimElem = 5
trigger1 = anim = 20
trigger2 = anim = 21
value = F3,0

;---------------------------------------

[State -3, Jump]
type = PlaySnd
trigger1 = stateno = 40
trigger1 = time = 0
value = 2,0

[State -3, Jump]
type = PlaySnd
trigger1 = stateno = 40
trigger1 = time = 0
value = F2,0

[State -3, Air Jump]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

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
trigger1 = stateno = 52
trigger1 = time = 1
value = 2,2

[State -3, Jump Land]
type = PlaySnd
trigger1 = stateno = 52
trigger1 = time = 1
value = F2,3

;---------------------------------------

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = AnimElem = 2
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
supermovetime = 30
removeongethit = 1
ownpal = 1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = AnimElem = 3
pos = 0,0
anim = 7085
sprpriority = 5
supermovetime = 30
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
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
value = 3,2

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
value = s3,2

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
pos = -10,15
anim = 70841
sprpriority = 5
supermovetime = 22
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
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = 5150
trigger1 = time = 1
trigger2 = time = 7
value = 6, 1

;---------------------------------------

[State -3, Stop Cosmo Snd]
type = Stopsnd
trigger1 = Power < 3000
trigger2 = Stateno != 0 
channel = 4

[State -3, Stop Cosmo Snd]
type = StopSnd
triggerall = time >= 1
trigger1 = stateno != 901
trigger2 = command != "charge1"
trigger3 = command != "charge2"
channel = 2