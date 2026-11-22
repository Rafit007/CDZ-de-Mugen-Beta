;---------------------------------------------------------------------------
; RHADAMANTHYS ST FILE by Tux
;---------------------------------------------------------------------------

; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = AssertSpecial
trigger1 = Time = [0,0]
flag = roundnotover

[State 170, 2]
type = AssertSpecial
trigger1 = Time = [0,330]
flag = RoundNotOver

[State 170, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,9
channel = 0

;---------------------------------------------------------------------------
; Win state decider 
[Statedef 180]
type = S

; Win 4 (fatality)
[State 180, 1]
type = ChangeState
trigger1 = var(7) = 1
value = 184

; Win 1 (round win)
[State 180]
type = ChangeState
triggerall = var(0) = 0
trigger1 = time = 0
trigger1 = matchover = 0
value = 181

[State 180]
type = VarRandom
trigger1 = time = 0
trigger1 = matchover = 1
v = 2
range = 0,99

; Win 2 (Pandora)
[State 180]
type = ChangeState
trigger1 = time = 0
trigger1 = matchover = 1
trigger1 = var(2) = [0,49]
value = 182

; Win 3 (Hades)
[State 180]
type = ChangeState
trigger1 = time = 0
trigger1 = matchover = 1
trigger1 = var(2) = [50,99]
value = 183

;---------------------------------------------------------------------------
; Win 1 (round win)
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = roundnotover

[State 181, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,2
channel = 0

;---------------------------------------------------------------------------
; Win 2 (Pandora)
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, 1]
type = AssertSpecial
trigger1 = Time = [0,1050]
flag = roundnotover

[State 182, 2]
type = Explod
trigger1 = AnimElem = 1
anim = 185
ID = 185
pos = 100,0
postype = p1
sprpriority = 5
bindtime = -1

[State 182, 3]
type = PlaySnd
trigger1 = AnimElem = 5
value = 13,3
channel = 0

[State 182, 4]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1100,0

[State 182, 5]
type = PlaySnd
trigger1 = AnimElem = 10
value = 13,4
channel = 0

[State 182, 6]
type = PlaySnd
trigger1 = AnimElem = 11
value = 13,5
channel = 0

;---------------------------------------------------------------------------
; Win 3 (Hades)
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 183, 1]
type = AssertSpecial
trigger1 = Time = [0,800]
flag = roundnotover

[State 183, 2]
type = Explod
trigger1 = AnimElem = 1
anim = 186
ID = 186
pos = 100,0
postype = p1
sprpriority = 5
bindtime = -1

[State 183, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,6
channel = 0

[State 183, 4]
type = PlaySnd
trigger1 = AnimElem = 3, = 350
value = 13,7
channel = 0

;---------------------------------------------------------------------------
; Win 4 (fatality)
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 184, 1]
type = AssertSpecial
trigger1 = Time = [0,0]
flag = roundnotover

[State 184, 2]
type = AssertSpecial
trigger1 = Time = [0,450]
flag = RoundNotOver
flag2 = NoMusic
flag3 = NoBarDisplay

[State 184, 4]
type = ScreenBound
trigger1 = Time = [0,450]
value = 0

[State 184, 5]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13,8
channel = 0

[State 184, 6]
type = VelSet
trigger1 = AnimElem = 4
x = -1

[State 184, 7]
type = AllPalFX
trigger1 = Time = 400
time = 100
add = 0,0,0
sinadd = -255,-255,-255,200

[State 184, 8]
type = BGPalFX
trigger1 = Time = 400
time = 100
add = 0,0,0
sinadd = -255,-255,-255,200

[State 184, 9]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 15
value = 3, 0

[State 184, 9]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 15
value = F3, 0

[State 184, 10]
type = PlaySnd
trigger1 = animelem = 7
trigger2 = animelem = 12
trigger3 = animelem = 18
value = 3, 1

[State 184, 10]
type = PlaySnd
trigger1 = animelem = 7
trigger2 = animelem = 12
trigger3 = animelem = 18
value = F3, 1

;---------------------------------------------------------------------------
; Intro state decider
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, Seiya]
type = ChangeState
triggerall = p2name = "seiya3"
trigger1 = Time = 0
value = 193

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
; Intro (voice)
[Statedef 191]
type = S
ctrl = 0
anim = 191

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,375]
flag = Intro

[State 191, 2]
type = Projectile
trigger1 = time = 30
attr = S, SP
ignorehitpause = 1
projanim = 8001
projhitanim = -1
offset = -100,-75
velocity = 8,0
damage = 0,0
animtype = light
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
projremove = 0
projremovetime = 20

[State 191, 3]
type = Explod
trigger1 = Time = 50
anim = 7006
sprpriority = 2
postype = p2
pos = 20,-80
bindtime = 1
supermove = 1
ownpal = 1

[State 191, 4]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,0

[State 191, 5]
type = PlaySnd
trigger1 = Time = 30
value = 9,2

[State 191, 6]
type = PlaySnd
trigger1 = Time = 50
value = 6,0

[State 191, 7]
type = PlaySnd
trigger1 = AnimElem = 6
value = 13,0
channel = 0

[State 191, 8]
type = Explod
trigger1 = Time = 130
anim = 6000
pos = -50,-70
postype = Back
sprpriority = -5
ownpal = 1
bindtime = -1
removetime = 245
ignorehitpause = 0

[State 191, Darken]
type = BGPalFX
trigger1 = Time = 130
ignorehitpause = 1
time = 245
mul = 150,90,150
add = 5,5,5
invertall = 0

[State 191, 9]
type = RemoveExplod
triggerall = NumExplod(6000) >= 0
trigger1 = AnimTime = 0
ID = 6000

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

[State 191, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Intro (no voice)
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, 1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

[State 192, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 9,1

[State 192, 3]
type = Explod
trigger1 = AnimElem = 1
anim = 8000
ID = 8000
pos = 0,0
postype = p1
sprpriority = -2
supermove = 1
removetime = 180
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
vfacing = 1

[State 192, 4]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1500,0

[State 192, 5]
type = Explod
trigger1 = AnimElem = 6
anim = 1703
ID = 1703
pos = 0,0
bindtime = 1
sprpriority = -2
ownpal = 1
removeongethit = 1
removetime = 66

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

[State 192, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Intro (vs Seiya)
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 1]
type = AssertSpecial
trigger1 = Time = [0,660]
flag = Intro

[State 193, 2]
type = PlaySnd
trigger1 = AnimElem = 1
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

[State 193, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Provoking
[Statedef 199]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 199, 1]
type = Explod
trigger1 = Time = 0
anim = 198
id = 198
pos = 0,0
postype = p1
sprpriority = -2
removetime = 220
bindtime = 220
ownpal = 1
removeongethit = 1

[State 199, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,10
channel = 0

[State 199, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 9,0
channel = 5

[State 199, 4]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 200
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Light
damage = 20
guardflag = MA
pausetime = 12,5
sparkno = S7000
sparkxy = -10,-110
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -3
air.hittime = 12
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch 
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype = Hard
damage = 30
guardflag = MA
pausetime = 12,5
sparkno = S7001
sparkxy = -30,-110
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
air.hittime = 12
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Hard Punch
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 220
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,1

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype = Up
damage = 40
priority  = 5
guardflag = MA
pausetime = 15,10
sparkno = S7002
sparkxy = 0,-100
hitsound = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -3,-12
guard.velocity = -4
air.velocity = -3,-12
airguard.velocity = -6,-4
p2facing = 1
fall = 1
getpower = 0
givepower = 0

[State 220, 3]
type = VelSet
trigger1 = 1
x = 5

[State 220, 4]
type = Explod
trigger1 = Animelem = 2
anim = 7089
pos = 25,5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 220, 5]
type = AfterImage
trigger1 = AnimElem = 2
time = 10
framegap = 2
length = 20
PalBright = 10,10,10
PalContrast = 128,128,128
trans = Add1

[State 220, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick 
[Statedef 230]
type = S
movetype = A
physics = S
anim = 230
juggle = 1
poweradd= 50
velset = 0,0
ctrl = 0

[State 230 , 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0

[State 230 , 3]
type = HitDef
trigger1 = AnimElem = 3
priority = 4
attr = S, NA
damage = 20
animtype = Light
guardflag = MA
sparkno = S7000
sparkxy = 0,-75
hitsound = S1,0
guardsound = S6,0
pausetime = 2,5
ground.hittime = 13
ground.type = low
ground.slidetime = 0
ground.velocity = 0
air.velocity = -3,-3
getpower = 0
givepower = 0

[State 230 , 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick 
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

[State 240, 1]
type = PlaySnd
trigger1 = Animelem = 2
value = 0,1

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype = medium
damage = 30
guardflag = MA
pausetime = 8,8
sparkno = S7001
sparkxy = -10,-80
hitsound = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -6
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Hard Kick 
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

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Hard
damage = 40
guardflag = MA
pausetime = 12,5
sparkno = S7002
sparkxy = 0,-120
hitsound = S1,2
guardsound = S6,0
ground.type = high
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
air.velocity = -2.2,-3.2
fall = 1
getpower = 0
givepower = 0

[State 250, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch 
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 400
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0

[State 400, 2]
type = HitDef
trigger1 = animelem = 2
attr = C, NA
priority = 3
damage = 20
animtype = Light
hitflag = MAF
guardflag = L
pausetime = 8,8
sparkno = S7000
sparkxy = 0,-50
hitsound = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 10
ground.velocity = -7
air.velocity = -1.5,-3
getpower = 0
givepower = 0

[State 400, 3]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
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
trigger1 = AnimElem = 2
value = 0,1

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 30
animtype = Medium
hitflag = MAF
guardflag = L
pausetime = 12,5
sparkno = S7001
sparkxy = -10,-50
hitsound = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4
getpower = 0
givepower = 0

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Hard Punch 
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 420
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 420, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 40
animtype = Up
hitflag = MAF
guardflag = L
pausetime = 15,10
sparkno = S7002
sparkxy = -10,-70
hitsound = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -3,-12
guard.velocity = -4
air.velocity = -3,-12
airguard.velocity = -6,-4
p2facing = 1
getpower = 0
givepower = 0

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick 
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
trigger1 = AnimElem = 2
value = 0,0

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 20
animtype = Medium
hitflag = MAFD
guardflag = L
pausetime = 12,5
sparkno = S7000
sparkxy = -10,-10
hitsound = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime = 12
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20
getpower = 0
givepower = 0

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick 
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
trigger1 = AnimElem = 2
value = 0,1

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 30
animtype = Medium
hitflag = MAFD
guardflag = L
pausetime = 12,5
sparkno = S7001
sparkxy = -10,-10
hitsound = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime = 12
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20
getpower = 0
givepower = 0

[State 440, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Hard Kick 
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 430
sprpriority = 2

[State 450, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 450, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 40
animtype = Medium
hitflag = MAFD
guardflag = L
pausetime = 12,5
sparkno = S7002
sparkxy = -10,-10
hitsound = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime = 12
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20
fall = 1
getpower = 0
givepower = 0

[State 450, 3]
type = VelSet
trigger1 = 1
x = 5

[State 450, 4]
type = Explod
trigger1 = Animelem = 2
anim = 7089
pos = 25,5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 450, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jumping Light Punch
[Statedef 600]
type    = A
movetype= A
physics = A
anim = 600
juggle  = 4
poweradd= 50
ctrl = 0
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 20
guardflag = HA
priority = 4
pausetime = 12,5
sparkno = S7000
sparkxy = 10,-70
animtype = Light
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 17
ground.velocity = 0
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
; Jumping Medium Punch 
[Statedef 610]
type    = A
movetype= A
physics = A
anim = 610
juggle  = 4
poweradd= 50
ctrl = 0
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1

[State 610, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 30
guardflag = HA
priority = 4
pausetime = 10,5
sparkno = S7001
sparkxy = -10,-55
hitsound = S1,0
guardsound = S6,0
animtype = Medium
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
; Jumping Hard Punch
[Statedef 620]
type    = A
movetype= A
physics = A
anim = 620
juggle = 4
poweradd= 50
ctrl = 0
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9,2

[State 620, 2]
type = Projectile
trigger1 = AnimElem = 3
projid = 8002
projanim = 8002
projhitanim = 7002
projremove = 1
attr = S,SP
damage = 40
offset = 45,-80
velocity = 4.5, 6
pausetime = 5,5
animtype = Hard
hitflag = MAF
guardflag = HA
sparkno = -1
sparkxy = 0,10
hitsound = S9,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -5.5,5
air.juggle = 3
Palfx.time = 20
Palfx.add = 115,45,125
Palfx.mul = 256,256,256
Palfx.sinadd = 115,45,125,10
Palfx.invertall = 1
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
; Jumping Light Kick 
[Statedef 630]
type    = A
movetype= A
physics = A
anim = 630
juggle  = 3
poweradd= 50
ctrl = 0
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,0

[State 630, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = A, NA
damage = 20
guardflag = HA
priority = 3
pausetime = 12,5
sparkno = S7000
sparkxy = -5,-50
hitsound = S1,0
guardsound = S6,0
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
air.velocity = -2,-3
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
; Jumping Medium Kick 
[Statedef 640]
type    = A
movetype= A
physics = A
anim = 640
juggle  = 3
poweradd= 50
ctrl = 0
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,1

[State 640, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = A, NA
damage = 30
guardflag = HA
priority = 3
pausetime = 12,5
sparkno = S7001
sparkxy = -5,-50
hitsound = S1,1
guardsound = S6,0
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
air.velocity = -2,-3
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
; Jumping Hard Kick
[Statedef 650]
type    = A
movetype= A
physics = A
anim = 650
juggle  = 3
poweradd= 50
ctrl = 0
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2

[State 650, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = A, NA
damage = 40
guardflag = HA
priority = 3
pausetime = 12,5
sparkno = S7002
sparkxy = -5,-50
hitsound = S1,2
guardsound = S6,0
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
air.velocity = -2,-3
getpower = 0
givepower = 0

;-----------------------------------------------------------------
; Throw
[Statedef 800]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2
poweradd = 50

[State 800, 1]
type = HitDef
trigger1 = AnimElem = 1
priority = 5
attr = S, NT
damage = 60,0
animtype = hard
sparkno = -1
mindist = 25,-48
maxdist = 25,-48
p1stateno = 810
p2stateno = 820
hitsound = S8,0

[State 800, 2]
type = Explod
trigger1 = AnimElem = 1
anim = 811
ID = 811
pos = 0,0
postype = p1
bindtime = -1
removetime = 15
ontop = 1
removeongethit = 1

[State 800, 3]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------
; Throw (p1 state)
[Statedef 810]
type = S
movetype = A
physics = S
anim = 810

[State 810, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, 2]
type = Explod
trigger1 = AnimElem = 1
anim = 811
ID = 811
pos = 0,0
postype = p1
bindtime = -1
ontop = 1
removeongethit = 1

[State 810, 3]
type = PlaySnd
trigger1 = Time = 0
value = 8,1

[State 810, 4]
type = PlaySnd
trigger1 = Time = 160
value = 8,0

[State 810, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------
; Throw (p2 state while strangled)
[Statedef 820]
type = A
movetype = H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[State 820, 2]
type = SprPriority
trigger1 = Time = 0
value = 4

[State 820, 3] ;Gravity
type = VelAdd
trigger1 = Time = 180
y = 5

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -25
value = 5100 ;Hit ground

;---------------------------------------
; Combo
[Statedef 830]
type = S
movetype = A
physics = S
juggle = 4
velset = 0,0
ctrl = 0
anim = 830
poweradd = 50
sprpriority = 2

[State 830]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 6
trigger3 = animelem = 10
value = 0, 0

[State 830]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 8
trigger3 = animelem = 12
value = 0, 1

[State 830]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
attr = A, SA
guardflag = MA
animtype = Light
priority = 5
damage = 10, 1
pausetime = 5,8
sparkno = s7001
sparkxy = -10,-88
hitsound = s1, 1
guardsound = s6, 0
ground.type = High
ground.slidetime = 1
ground.hittime = 3
ground.velocity = 1
air.velocity = -2.5,-5
fall = 0
getpower = 0
givepower = 0

[State 830, 4]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 9
trigger3 = animelem = 13
attr = A, SA
guardflag = MA
animtype = Light
priority = 5
damage = 10, 1
pausetime = 5,8
sparkno = s7000
sparkxy = -10,-88
hitsound = s1, 0
guardsound = s6, 0
ground.type = High
ground.slidetime = 1
ground.hittime = 3
ground.velocity = 0
air.velocity = -2.5,-5
getpower = 0
givepower = 0

[State 830]
type = PosAdd
trigger1 = animelem = 15
x = 5

[State 830]
type = HitDef
trigger1 = AnimElem = 16
priority = 5
attr = S, NT
damage = 0,0
animtype = hard
sparkno = -1
mindist = 25,-48
maxdist = 25,-48
p1stateno = 831
p2stateno = 833
hitsound = S8,0

[State 830]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------
; Combo (p1 state) (1)
[Statedef 831]
type = S
movetype = A
physics = N
juggle = 0
ctrl = 0
anim = 831
sprpriority = 2

[State 831]
type = NotHitBy
trigger1 = 1
value = SCA

[State 831]
type = VelSet
trigger1 = time < 21
x = 10

[State 831]
type = PlayerPush
trigger1 = 1
value = 0

[State 831]
type = TargetBind
trigger1 = 1
pos = 50,1

[State 831]
type = PlaySnd
trigger1 = time = 0
value = 9,2

[State 831]
type = SelfState
trigger1 = time = 30
trigger2 = target,backedgedist < 0
value = 832

;------------------
; Combo (p1 state) (2)
[Statedef 832]
type = S
movetype = A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
facep2 = 1

[State 832]
type = PosAdd
trigger1 = time = 0 
x = p2dist x -40

[State 832]
type = PlayerPush
trigger1 = time < 3
value = 0

[State 832]
type = TargetDrop
trigger1 = time = 0

[State 832]
type = StateTypeSet
trigger1 = prevstateno = 1041
movetype = A

[State 832]
type = ChangeAnim
trigger1 = ifelse(prevstateno = 831,time = 3,time = 0)
value = 42
elem = animelemno(0)

[State 832]
type = VelAdd
trigger1 = anim = 42
x = -2.5
y = -7
persistent = 0

[State 832]
type = VelAdd
trigger1 = anim = 42
y = 0.4

[State 832]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 52
anim = 0

;------------------
; Combo (p2 state) (1)
[Statedef 833]
type = A
movetype = H
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 5030
sprpriority = 0

[State 833]
type = NotHitBy
trigger1 = 1 
value = SCA

[State 833]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 833]
type = ChangeState
trigger1 = time > 3 && gethitvar(isbound) = 0
value = ifelse (backedgebodydist > 20, 834, 835)

;------------------
; Combo (p2 state) (2a)
[Statedef 834]
type = A
movetype = H
physics = N
juggle = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 834]
type = NotHitBy
trigger1 = 1 
value = SCA

[State 834]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 834] 
type = ChangeAnim2
trigger1 = time = 0
value = 834

[State 834]
type = VelAdd
trigger1 = time < 20
x = -0.35

[State 834]
type = VelAdd
triggerall = pos y < 0
trigger1 = time > 10
y = 0.35

[State 834]
type = PosSet
trigger1 = animelem = 7
y = 0

[State 834]
type = StateTypeSet
trigger1 = animelem = 7
statetype = L

[State 834]
type = VelAdd
trigger1 = time > 20
x = -1

[State 834]
type = Explod
trigger1 = time > 10
anim = F120
pos = 12,0
postype = p1
scale = 1,1
ownpal = 1
pausemovetime = -1
bindtime = -1
removetime = 27

[State 834]
type = LifeAdd
trigger1 = animelem = 7
value = -30
kill = 1

[State 834]
type = SelfState
trigger1 = time = 45
trigger2 = backedgedist < 20
value = 5100

;------------------
; Combo (p2 state) (2b)
[Statedef 835]
type = A
movetype = H
physics = N
juggle = 0
ctrl = 0

[State 835]
type = PosFreeze
trigger1 = 1
value = 1

[State 835]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 835]
type = ChangeAnim2
trigger1 = time = 0
value = 835

[State 835]
type = Turn
trigger1 = (time = 0) && (frontedgebodydist <= 30)

[State 835]
type = PosAdd
trigger1 = time = 0
x = 15 - backedgebodydist

[State 835]
type = Explod
trigger1 = time = 0
anim = F72
pos = 0,floor(screenpos y)-50
postype = back
sprpriority = 3

[State 835]
type = PlaySnd
trigger1 = time = 0
value = 5, 2

[State 835]
type = LifeAdd
trigger1 = time = 0
value = -90
kill = 1

[State 835]
type = ChangeState
trigger1 = animtime = 0
value = 836

;------------------
; Combo (p2 state) (3)
[Statedef 836]
type = A
movetype = H
physics = N
juggle = 0
ctrl = 0

[State 836]
type = NotHitBy
trigger1 = 1
value = SCA

[State 836]
type = VelSet
trigger1 = time = 0
y = 1

[State 836]
type = VelSet
trigger1 = time = 0
x = .6

[State 836]
type = Turn
trigger1 = (time = 0) && (backedgedist < 30)

[State 836]
type = VelAdd
trigger1 = 1
y = 0.35

[State 836] ;Self falling animation
type = ChangeAnim
trigger1 = time = 0
trigger1 = !selfanimexist(5052)
value = 5050

[State 836] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = time = 0
trigger1 = selfanimexist(5052)
value = 5052

[State 836] ;Coming down - normal
type = ChangeAnim
trigger1 = vel y > -2
trigger1 = anim = 5050
trigger1 = selfanimexist(5060)
persistent = 0
value = 5060

[State 836] ;Coming down - diagup type
type = ChangeAnim
trigger1 = vel y > -2
trigger1 = anim = 5052
trigger1 = selfanimexist(5062)
persistent = 0
value = 5062

[State 836]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;-----------------------------------------------------------------
; Cosmo Charge (start)
[Statedef 900]
type = S
movetype= I
physics = S
anim = 900
velset = 0,0
ctrl = 0

[State 900, var]
type = VarSet
triggerall = var(59) = 1
trigger1 = time = 0
v = 10
value = 1

[State 900, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 12,0

[State 900, shake]
type = EnvShake
trigger1 = animelem = 1
time = 40

[State 900, 2]
type = ChangeState
trigger1 = animtime = 0
value = 901

;-----------------------------------------------------------------
; Cosmo Charge (charging)
[Statedef 901]
type = S
movetype = I ;A
physics = S
anim = 901

[State 901, sound]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

[State 901, StopSnd]
type = StopSnd
trigger1 = animelem = 6
channel = 0

[State 901, 2]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 7010
ID = 7010
removetime = 60
sprpriority = -2
supermove = 1
removeongethit = 1

[State 901, 3]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 7020
ID = 7020
removetime = 60
sprpriority = 2
supermove = 1
removeongethit = 1

[State 901, Constellation]
type = Explod
trigger1 = animelem = 1
anim = 6000
ID = 6000
pos = -140,-220
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

;[State 901, 5]
;type = EnvShake
;triggerall = var(9) = 1
;trigger1 = AnimTime = 0
;time = 30
;
;[State 901, 6]
;type = VarSet
;triggerall = var(9) = 1
;trigger1 = AnimTime = 0
;v = 9
;value = 0

;[State 901, 7]
;type = EnvShake
;triggerall = var(9) = 0
;trigger1 = Time = 0
;time = 90

;[State 901, 8]
;type = PlayerPush
;triggerall = var(9) = 0
;trigger1 = Time = [0,59]
;value = 0
;
;[State 901, 9]
;type = VarSet
;triggerall = var(9) = 0
;trigger1 = Time = [0,59]
;v = 10
;value = Random
;
;[State 901, 10]
;type = VarSet
;triggerall = var(9) = 0
;triggerall = var(10) < 499
;trigger1 = Time = [0,59]
;v = 11
;value = -1
;
;[State 901, 11]
;type = VarSet
;triggerall = var(9) = 0
;triggerall = var(10) >= 499
;trigger1 = Time = [0,59]
;v = 11
;value = 1
;
;[State 901, 12]
;type = VarSet
;triggerall = var(9) = 0
;trigger1 = Time = [0,59]
;v = 12
;value = (var(11) * (Random / 2))

;[State 901, 13]
;type = Projectile
;triggerall = P2StateType != C
;triggerall = var(9) = 0
;trigger1 = Time = 0
;trigger2 = Time = 5
;trigger3 = Time = 10
;trigger4 = Time = 15
;trigger5 = Time = 20
;trigger6 = Time = 25
;trigger7 = Time = 30
;trigger8 = Time = 35
;trigger9 = Time = 40
;trigger10 = Time = 45
;trigger11 = Time = 50
;trigger12 = Time = 55
;projanim = 8003
;velocity = 0,0
;projremovetime = 16
;projsprpriority = 5
;postype = p1
;offset = var(12),0
;attr = S, SP
;hitflag = HAF
;animtype = Up
;damage = 25
;pausetime = 0,10
;sparkno = -1
;hitsound = S1,2
;ground.type = High
;ground.slidetime = 10
;ground.hittime = 10
;ground.velocity = (var(11) * 3),-10
;air.velocity = (var(11) * 4),-5
;
;[State 901, 14]
;type = Projectile
;triggerall = P2StateType = C
;triggerall = var(9) = 0
;trigger1 = Time = 0
;trigger2 = Time = 5
;trigger3 = Time = 10
;trigger4 = Time = 15
;trigger5 = Time = 20
;trigger6 = Time = 25
;trigger7 = Time = 30
;trigger8 = Time = 35
;trigger9 = Time = 40
;trigger10 = Time = 45
;trigger11 = Time = 50
;trigger12 = Time = 55
;projanim = 8003
;velocity = 0,0
;projremovetime = 16
;projsprpriority = 5
;postype = p1
;offset = var(12),0
;attr = S, SP
;hitflag = HAF
;animtype = Light
;damage = 0
;pausetime = 0,0
;sparkno = -1
;hitsound = -1
;ground.type = Low
;ground.slidetime = 0
;ground.hittime = 0
;ground.velocity = 0
;air.velocity = 0,0

;[State 901, 15]
;type = PlaySnd
;triggerall = var(10) = 0
;trigger1 = Animelem = 1
;value = 3300,2
;channel = 1

[State 901, 16]
type = PowerAdd
trigger1 = time > 0
value = 5

[State 901, cosmo]
type = Explod
triggerall = NumExplod(903) = 0
trigger1 = 1
pos = 0,0
anim = 903
sprpriority = -1
removeongethit = 1
bindtime = 1
ownpal = 1
ID = 903

[State 901, 17]
type = ChangeState
triggerall = var(59) = 0
trigger1 = command != "charge1"
trigger2 = command != "charge2"
value = 902

[State 901, 18]
type = ChangeState
triggerall = Time >= 1
triggerall = var(59) = 1
trigger1 = random <= 10
value = 902
ctrl = 1

[State 901, 19]
type = ChangeState
trigger1 = Power >= 3000
value = 902

[State 901, 20]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

;-----------------------------------------------------------------
; Cosmo Charge (end)
[Statedef 902]
type = S
movetype = A
physics = S
anim = 902

[State 902, Var]
type = VarSet
trigger1 = time = 0
v = 10
value = 0

[State 902]
type = RemoveExplod
triggerall = NumExplod(1703) >= 1
trigger1 = Time = 0
ID = 903

[State 902]
type = RemoveExplod
triggerall = numexplod(6000) >= 1
trigger1 = time = 0
ID = 6000

[State 902]
type = RemoveExplod
triggerall = NumExplod(7030) >= 1
trigger1 = Time = 0
ID = 7030

[State 902]
type = RemoveExplod
triggerall = numexplod(7031) >= 1
trigger1 = time = 0
ID = 7031

[State 902, RE]
type = RemoveExplod
triggerall = NumExplod(7020) >= 1
trigger1 = Time = 0
ID = 7020

[State 902, RE]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = Time = 0
ID = 7010

[State 902, shine]
type = PalFX
triggerAll = Power >= 3000
trigger1 = time = [0,15]
time = 15
add = 0,0,0
sinadd = 200,20,200,3

;[State 902, hitdef]
;type = HitDef
;triggerall = Power >= 3000
;trigger1 = AnimElem = 1
;attr = S, SP
;hitflag = MAF
;animtype = Up
;damage = 0
;pausetime = 0,10
;sparkno = -1
;hitsound = -1
;ground.type = High
;ground.slidetime = 10
;ground.hittime = 10
;ground.velocity = -5,-10
;air.velocity = -3,-5
;fall = 1
;fall.damage = 100

[State 902, shake]
type = EnvShake
triggerall = power >= 3000
trigger1 = time = 0
time = 64

[State 902]
type = PlaySnd
triggerAll = Power >= 3000
trigger1 = time = 1
value = 7, 1

[State 902, StopSnd]
type = StopSnd
trigger1 = time = 1
channel = 1

[State 902]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------
; Wyvern Breath
[Statedef 1000]
type    = S
movetype= A
physics = S
poweradd = 100
ctrl = 0
anim = 1000
velset = 0,0

[State 1000, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 7061
ID = 7061
pos = -18,-72
postype = p1
sprpriority = 2
supermove = 1
removetime = 29
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 1000, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,11
channel = 0

[State 1000, 3]
type = Projectile
trigger1 = AnimElem = 4
attr = S, SP
projanim = 8004
projremove = 0
offset = 0,0
velocity = 7.5,0
damage = 90,9
animtype = Hard
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound = s7,1 ;OK
guardsound = S6,0
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
getpower = 0
givepower = 0

[State 1000, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------
; Wyvern Flight
[Statedef 1100]
type    = S
movetype= A
physics = S
poweradd = 100
juggle = 4
ctrl = 0
anim = 1100
velset = 0,0
sprpriority = -1

[State 1100, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100,0

[State 1100, 3.1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100,1

[State 1100, 3.2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1100,1

[State 1100, 4]
type = VelAdd
trigger1 = AnimElem = 3
Y = -4

[State 1100, 5]
type = VelSet
trigger1 = AnimElem = 24
Y = 0

[State 1100, 6]
type = VelAdd
trigger1 = AnimElem = 25
X = 50
Y = 8

[State 1100, 7]
type = VelSet
triggerall = AnimElem = 26
trigger1 = Pos Y < 0
X = 0
Y = 0

[State 1100, 8]
type = PosSet
triggerall = AnimElem = 26
trigger1 = Pos Y < 0
Y = 0

[State 1100, 9]
type = Explod
triggerall = Pos Y < 0
trigger1 = AnimElemTime(25) = 0
;trigger2 = AnimElemTime(25) = 2
;trigger3 = AnimElemTime(25) = 4
;trigger4 = AnimElemTime(25) = 6
;trigger5 = AnimElemTime(25) = 8
anim = 7089
pos = 0,-(Pos Y)
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 1100, 10]
type = AfterImage
trigger1 = AnimElem = 25
time = 30
framegap = 2
length = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State 1100, 11.1]
type = HitDef
trigger1 = AnimElem = 25
attr = S, NA
animtype = Hard
damage = 100,10
guardflag = MA
pausetime = 10,10
sparkno = S7001
sparkxy = -10,-80
hitsound = S1,1
guardsound = S6000,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
air.velocity = -2.5,-4
fall = 1
getpower = 0
givepower = 0

[State 1100, 11.2]
type = HitDef
triggerall = MoveContact = 0
trigger1 = AnimElem = 26
attr = S, NA
animtype = Hard
damage = 100,10
guardflag = MA
pausetime = 10,10
sparkno = S7001
sparkxy = -10,-80
hitsound = S1,1
guardsound = S6000,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
air.velocity = -2.5,-4
fall = 1
getpower = 0
givepower = 0

[State 1100, 12]
type = PlaySnd
trigger1 = AnimElem = 25
value = 1200,0

[State 1100, 14]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------
; Flying Kick
[Statedef 1200]
type = A
movetype = A
physics = A
anim = 1200
juggle = 2
poweradd = 100
ctrl = 0

[State 1200, 1]
type = AfterImage
trigger1 = time = 0
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State 1200, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 18
y = 13

[State 1200, 3]
type = HitDef
trigger1 = AnimElem = 3
priority = 7
attr = A, SA
damage = 90,9
animtype = hard
hitflag = MAF
guardflag = HA
sparkxy = 0,-25
sparkno = S7001
hitsound = S1,3
guardsound = S6,0
pausetime = 18,18
ground.hittime = 19
ground.type = high
ground.slidetime = 9
ground.velocity = -5
air.velocity = -3,-3
fall = 1
getpower = 0
givepower = 0

[State 1200, 4]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,0

;-----------------------------------------------------------------
; Hypnotizing Eyes
[Statedef 1300]
type = S
movetype= A
physics = S
anim = 1300
juggle = 2
poweradd = 100
ctrl = 0

[State 1300, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 1300, 2]
type = Explod
trigger1 = AnimElem = 1
anim = 8005
ID = 8005
pos = 4,-113
postype = p1
ontop = 1
bindtime = -1
removeongethit = 1

[State 1300, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300,0
loop = 1
channel = 1

[State 1300, 4]
type = StopSnd
trigger1 = moveguarded
trigger2 = AnimTime = 0
trigger3 = movetype = H
channel = 1

[State 1300, 5]
type = HitDef
trigger1 = AnimElem = 9
trigger1 = P2BodyDist X <= 50
priority = 5
attr = S, NA
damage = 25,5
animtype = hard
guardflag = MA
sparkno = -1      
p2stateno = 1301
hitsound = S7,1
guardsound = S6,0
palfx.time = 60
palfx.sinadd = 255,0,0,20

[State 1300, 6]
type = HitDef
trigger1 = AnimElem = 9
trigger1 = P2BodyDist X > 50
trigger1 = P2BodyDist X <= 100
priority = 5
attr = S, NA
damage = 25,5
animtype = hard
guardflag = MA
sparkno = -1      
p2stateno = 1301
hitsound = S7,1
guardsound = S6,0
palfx.time = 120
palfx.sinadd = 255,0,0,20

[State 1300, 7]
type = HitDef
trigger1 = AnimElem = 9
trigger1 = P2BodyDist X > 100
trigger1 = P2BodyDist X <= 150
priority = 5
attr = S, NA
damage = 25,5
animtype = hard
guardflag = MA
sparkno = -1      
p2stateno = 1301
hitsound = S7,1
guardsound = S6,0
palfx.time = 180
palfx.sinadd = 255,0,0,20

[State 1300, 8]
type = HitDef
trigger1 = AnimElem = 9
trigger1 = P2BodyDist X > 150
priority = 5
attr = S, NA
damage = 25,5
animtype = hard
guardflag = MA
sparkno = -1      
p2stateno = 1301
hitsound = S7,1
guardsound = S6,0
palfx.time = 240
palfx.sinadd = 255,0,0,20

[State 1300, 9]
type = RemoveExplod
trigger1 = AnimElem = 10
trigger1 = MoveHit = 0
ID = 8005

[State 1300, 10]
type = ChangeState
trigger1 = AnimElem = 10
trigger1 = MoveHit = 0
value = 0
ctrl = 1

[State 1300, 11]
type = TargetVelSet
trigger1 = AnimElem = 10
trigger1 = MoveHit
x = 1
y = -0.2

[State 1300, 12]
type = TargetBind
trigger1 = MoveHit
trigger1 = P2BodyDist X <= 30
pos = 25,-48

[State 1300, 13]
type = RemoveExplod
trigger1 = P2BodyDist X <= 30
ID = 8005

[State 1300, 14]
type = StopSnd
trigger1 = P2BodyDist X <= 30
channel = 1

[State 1300, 15]
type = PlaySnd
trigger1 = P2BodyDist X <= 30
value = 7,2

[State 1300, 16]
type = AllPalFx
trigger1 = P2BodyDist X <= 30
time = 10
add = 255,255,255

[State 1300, 17]
type = ChangeState
trigger1 = P2BodyDist X <= 30
value = 810

[State 1300, 18]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;-----------------------------------------------------------------
; Hypnotizing Eyes (p2 state)
[Statedef 1301]
type = A
movetype = H
physics = N

[State 1301, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1301

[State 1301, 2]
type = AfterImage
trigger1 = Time = 0
time = 220
framegap = 2
length = 30
PalBright = 255,0,0
PalPostBright = 10,0,0
trans = add

[State 1301, 3]
type = ChangeState
trigger1 = enemynear, stateno = 810
value = 820

;----------------------------------------
; Counter
[Statedef 1400]
type = S
movetype = A
physics = S
anim = 1400
juggle = 5
poweradd = 100
velset = 0,0
ctrl = 0

[State 1400, 1]
type = ReversalDef
trigger1 = Time = 0
reversal.attr = SCA,NA,SA
p1stateno = 1401
p2stateno = 1402
hitsound = S7,2
pausetime = 30,30
sparkno = s70051
sparkxy = 54,-6

[State 1400, 2]
type = HitOverride
trigger1 = Time = 0
time = 2
attr = SCA,NP,SP
ignorehitpause = 1

[State 1400, 4]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,12
channel = 0

[State 1400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
; Counter (p1 state)
[Statedef 1401]
type = S
movetype = A
physics = S
anim = 1401
juggle = 5
poweradd = 100
velset = 0,0
ctrl = 0

[State 1401, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7,1

[State 1401, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 2,1

[State 1401, 1]
type = PlaySnd
trigger1 = animelem = 8
value = 7,2 ;OK

[State 1401]
type = Turn
trigger1 = animelem = 9

[State 1401]
type = TargetBind
trigger1 = animelem = 1
pos = 48,0

[State 1401]
type = TargetBind
trigger1 = animelem = 2
pos = 40,-127

[State 1401]
type = TargetBind
trigger1 = animelem = 3
pos = 34,-145

[State 1401]
type = TargetBind
trigger1 = animelem = 4
pos = 33,-141

[State 1401]
type = TargetBind
trigger1 = animelem = 5
pos = 25,-137

[State 1401]
type = TargetBind
trigger1 = animelem = 6
pos = 10,-121

[State 1401]
type = TargetBind
trigger1 = animelem = 7
pos = -76,-115

[State 1401]
type = TargetBind
trigger1 = animelem = 8
pos = -109,0

[State 1401]
type = Targetlifeadd
trigger1 = animelem = 8
value = -80

[State 1401]
type = Width
trigger1 = time = 0
edge = 0,110

[State 1401]
type = EnvShake
trigger1 = animelem = 8
time = 12
ampl = -6
freq = 95
phase = 95

[State 1401] 
type = changeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Counter (p2 state)
[Statedef 1402]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -1

[State 1402]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1402]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1402

[State 1402]
type = null;screenbound
trigger1 = 1
value = 1
movecamera = 1

[State 1402]
type = VelSet
trigger1 = animelem = 9
x = 3.5
y = -6

[State 1402]
type = VelAdd
Trigger1 = animelem = 9,>=0
y = .4

[State 1402]
type = SelfState
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;-----------------------------------------------------------------
; Teleport
[Statedef 1500]
type = S
movetype = I
physics = S
anim = 1500
poweradd = 100
ctrl = 0

[State 1500, 1]
type = PosAdd
trigger1 = AnimElem = 5
x = 400
y = 0

[State 1500, 2]
type = Turn
trigger1 = Time = 36

[State 1500, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1500,0

[State 1500, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------
; Wyvern Bomb
[Statedef 1600]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1600
poweradd = 100
ctrl = 0

[State 1600, 1]
type = AfterImage
trigger1 = Time = 0
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State 1600, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1200,0

[State 1600, 3]
type = HitDef
trigger1 = time = 0
priority = 5
attr = S, NT
damage = 0,0
guardflag = MA
pausetime = 12,5
animtype = hard
sparkno = -1
mindist = 25,-48
maxdist = 25,-48
p1stateno = 1601
p2stateno = 1602
hitsound = S8,0

[State 1600, 4]
type = VelSet
trigger1 = time < 21
x = 10

[State 1600, 5]
type = VelSet
trigger1 = time = 45
x = 0
y = 0

[State 1600, 6]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = moveguarded
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Wyvern Bomb (p1 state)
[Statedef 1601]
type = S
movetype = A
physics = N
anim = 1601
sprpriority = 5
poweradd = 100

[State 1601]
type = VelSet
trigger1 = animelem = 3
y = -2
x = 1

[State 1601]
type = VelSet
trigger1 = animelem = 6
y = 0
x = 0

[State 1601, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1601, 2]
type = Explod
trigger1 = animelem = 3
postype = p1
pos = 0,0
scale = 0.5,0.5
bindtime = 1
removetime = 16
sprpriority = 3
anim = 7081
ID = 7081

[State 1601, 4]
type = PlaySnd
trigger1 = animelem = 3
value = 2,0

[State 1601, 5]
type = PlaySnd
trigger1 = animelem = 6
value = 9,1

[State 1601, 6]
type = BindToTarget
trigger1 = animelem = 6
pos = 10,50,Head

[State 1601, 9]
type = TargetLifeAdd
trigger1 = AnimElem = 6 = 10
trigger2 = AnimElem = 6 = 20
trigger3 = AnimElem = 6 = 30
trigger4 = AnimElem = 6 = 40
trigger5 = AnimElem = 6 = 50
trigger6 = AnimElem = 6 = 60
trigger7 = AnimElem = 6 = 70
trigger8 = AnimElem = 6 = 80
trigger9 = AnimElem = 6 = 90
trigger10 = AnimElem = 6 = 100
value = -10

[State 1601, 10]
type = Explod
trigger1 = AnimElem = 6 = 10
trigger2 = AnimElem = 6 = 20
trigger3 = AnimElem = 6 = 30
trigger4 = AnimElem = 6 = 40
trigger5 = AnimElem = 6 = 50
trigger6 = AnimElem = 6 = 60
trigger7 = AnimElem = 6 = 70
trigger8 = AnimElem = 6 = 80
trigger9 = AnimElem = 6 = 90
postype = p2
pos = -15,-95
bindtime = 1
removetime = 10
sprpriority = 10
anim = 7007
ID = 7007

[State 1601, 11]
type = Explod
trigger1 = AnimElem = 6 = 100
postype = p2
pos = -15,-95
bindtime = 1
removetime = 30
sprpriority = 10
anim = 7009
ID = 7009
scale = 0.5,0.5

[State 1601, 12]
type = PlaySnd
trigger1 = AnimElem = 6 = 100
value = 1600,0

[State 1601, 13]
type = VarSet
trigger1 = animtime = 0
sysvar(1) = 1

[State 1601, 14]
type = ChangeState
trigger1 = animtime = 0
value = 40
ctrl = 0

;------------------------------------------------------
; Wyvern Bomb (p2 state)
[Statedef 1602]
type = A
movetype = H
physics = N
velset = 0,0

[State 1402, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 1602

[State 1602, 2]
type = HitBy
trigger1 = 1
value = SCA
time = 1

[State 1602, 3]
type = PosSet
trigger1 = 1
Y = 0

[State 1602, 4]
type = VelSet
trigger1 = time = 0
X = 0
Y = 0

[State 1602, 5]
type = SelfState
trigger1 = animtime = 0
value = 5100
ctrl = 0

;---------------------------------------
; Wyvern Wings (start)
[Statedef 1700]
type = S
movetype = I
physics = S
velset = 0,0
anim = 1700
ctrl = 0
sprpriority = 2

[State 1700]
type = AfterImage
trigger1 = animelem = 1
time = 25
length = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
timegap = 1
framegap = 2
trans = add1

[State 1700]
type = PlaySnd
trigger1 = animelem = 1
value = 3, 0

[State 1700]
type = Explod
trigger1 = animelem = 1
anim = 6000
ID = 6000
pos = -140,-220
postype = p1
bindtime = -1
sprpriority = -4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1700]
type = PlaySnd
trigger1 = animelem = 1
value = 9, 1

[State 1700]
type = ChangeState
trigger1 = animtime = 0
value = 1701
ctrl = 1

;---------------------------------------
; Wyvern Wings (guarding)
[Statedef 1701]
type = S
movetype = I
physics = S
juggle = 2
velset = 0,0
anim = 1701
ctrl = 0
sprpriority = 2

[State 1701]
type = PowerAdd
trigger1 = time = [0,10]
value = -20

[State 1701]
type = Explod
triggerall = numexplod(1703) = 0
trigger1 = 1
anim = 1703
ID = 1703
pos = 0,0
bindtime = 1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 1701]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,AA,AP,AT
pausetime = 6,15
sparkno = s59
sparkxy = -10,-90
hitsound = s7, 2
p1stateno = 1702

[State 1701]
type = HitOverride
trigger1 = 1
time = 2
attr = SCA,AA,AP,AT
stateno = 1702
ignorehitpause = 1

[State 1701]
type = HitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 2

[State 1701]
type = Explod
trigger1 = animelem = 1
anim = 7006
pos = 10,-70
scale = 1.5, 1.5
sprpriority = -2

[State 1701]
type = Explod
trigger1 = animelem = 1
anim = 7006
pos = 10,-70
scale = 1.5,1.5
sprpriority = -1

[State 1701]
type = ChangeState
trigger1 = command != "barrier1"
trigger2 = command != "barrier2"
value = 1703

[State 1701]
type = ChangeState
trigger1 = animtime = 0
value = 1701
ctrl = 1

[State 1701]
type = ChangeState
trigger1 = power = 0
value = 1703

;---------------------------------------
; Wyvern Wings (during attack)
[Statedef 1702]
type = S
movetype = A
physics = S
velset = -12,0
anim = 1701
poweradd = 200
ctrl = 0

[State 1702]
type = RemoveExplod
triggerall = NumExplod(1703) >= 1
trigger1 = movehit = 1
ID = 1703

[State 1702]
type = RemoveExplod
triggerall = numexplod(6000) >= 1
trigger1 = movehit = 1
ID = 6000

[State 1702]
type = PowerAdd
trigger1 = time = [0,10]
value = -20

[State 1702]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,NA,SA,HA,NP,SP,HP
pausetime = 6,15
sparkno = s59
sparkxy = -10,-90
hitsound = s7, 2
p1stateno = 1702

[State 1702]
type = HitOverride
trigger1 = 1
time = 2
attr = SCA,AP
stateno = 1702
ignorehitpause = 1

[State 1702]
type = HitBy
trigger1 = 1
value = SCA,AP
time = 2

[State 1702]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 3

[State 1702]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA
time = 1

[State 1702]
type = RemoveExplod
trigger1 = time = 0
ID = 7006

[State 1702]
type = HitDef
trigger1 = time = 0
attr = S,SA
hitflag = MA
guardflag = MA
animtype = Hard
damage = 0, 0
sparkno = s7003
sparkxy = 30,-50
hitsound = s7, 2
guardsound = s6, 1
ground.type = High
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -7,-5
air.type = High
air.velocity = -7,-5
fall = 1
fall.recover = 1
fall.damage = 0
getpower = 0
givepower = 0
palfx.time = 55
palfx.add = 50,50,50

[State 1702]
type = ChangeState
trigger1 = animtime = 0
value = 1701
ctrl = 1

[State 1702]
type = ChangeState
trigger1 = power = 0
value = 1703

;---------------------------------------
; Wyvern Wings (end)
[Statedef 1703]
type = S
movetype = I
physics = S
juggle = 2
velset = 0,0
anim = 1702
ctrl = 0
sprpriority = 2

[State 1703]
type = PowerSet
triggerall = (power >= 2000)
trigger1 = animtime = 0
value = 2000

[State 1703]
type = PowerSet
triggerall = (power >= 1000) && (power < 2000)
trigger1 = animtime = 0
value = 1000

[State 1703]
type = PowerSet
triggerall = (power > 0) && (power < 1000)
trigger1 = animtime = 0
value = 0

[State 1703]
type = RemoveExplod
triggerall = NumExplod(1703) >= 1
trigger1 = Time = 1
ID = 1703

[State 1703]
type = RemoveExplod
triggerall = numexplod(6000) >= 1
trigger1 = time = 0
ID = 6000

[State 1703]
type = PlaySnd
trigger1 = animelem = 1
value = 5, 0

[State 1703]
type = PlaySnd
trigger1 = animelem = 2
value = 3, 0

[State 1703]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Wyvern Lance
[Statedef 3000]
;type = S
movetype = A
;physics = S
juggle = 4
velset = 0,0
;anim = 3000
ctrl = 0
poweradd = -1000
sprpriority = 2

[State 3000]
type = ChangeAnim
triggerall = pos y < 0
trigger1 = time = 0
value = 3002

[State 3000]
type = ChangeAnim
triggerall = pos y >= 0
trigger1 = time = 0
value = 3000

[State 3000]
type = StateTypeSet
triggerall = pos y < 0
trigger1 = time = 0
statetype = A
physics = A

[State 3000]
type = StateTypeSet
triggerall = pos y >= 0
trigger1 = time = 0
statetype = S
physics = S

[State 3700]
type = VelSet
triggerall = statetype = A
trigger1 = time = [0,70]
x = 0
y = 0

[State 3000, Super A]
type = SuperPause
trigger1 = animelem = 4
anim = s7008
pos = 0,-88
sound = s9,1

;[State 3000, Super B]
;type = AfterImage
;trigger1 = animelem = 4
;time = 2

;[State 3000, Super C]
;type = AfterImagetime
;trigger1 = animelemtime(4) >= 0
;time = 2

[State 3000, Super D]
type = NotHitBy
trigger1 = animelem = 4
value = , NA, SA, AT
time = 6

[State 3000, cosmo]
type = Explod
triggerall = statetype = S
trigger1 = time = 0
anim = 3001
ID = 3001
pos = 0,0
postype = p1
sprpriority = -1
bindtime = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 55
supermovetime = 55

[State 3000, cosmo]
type = Explod
triggerall = statetype = A
trigger1 = time = 0
anim = 3003
ID = 3003
pos = 0,0
postype = p1
sprpriority = -1
bindtime = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 55
supermovetime = 55

[State 3000, voice]
type = PlaySnd
trigger1 = animelem = 1
value = 13,13
channel = 0

[State 3000, snd]
type = PlaySnd
trigger1 = animelem = 10
value = 3000,0

[State 3000, spark]
type = Explod
triggerall = statetype = S
trigger1 = animElem = 1
pos = -10,-155
anim = 8009
ID = 8009
removetime = 305
sprpriority = 3
supermove = 1
removeongethit = 1
postype = p1

[State 3000, spark]
type = Explod
triggerall = statetype = A
trigger1 = animElem = 1
pos = -55,-85
anim = 8010
ID = 8010
removetime = 305
sprpriority = 3
supermove = 1
removeongethit = 1
postype = p1

[State 3000, removeexplod]
type = RemoveExplod
triggerall = NumExplod(8009) >= 1
trigger1 = animelem = 6
ID = 8009

[State 3000, removeexplod]
type = RemoveExplod
triggerall = NumExplod(8010) >= 1
trigger1 = animelem = 6
ID = 8010

[State 3000, proj]
type = Projectile
triggerall = statetype = S
trigger1 = animelem = 6,5
trigger2 = animelem = 6,10
trigger3 = animelem = 6,15
trigger4 = animelem = 6,20
trigger5 = animelem = 6,25
projanim = 8007
velocity = 10,0
projremovetime = 24
projsprpriority = 5
postype = p1
offset = 60,-120
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 40,4
pausetime = 15,15
sparkno = S7000
sparkxy = 0,0
hitsound = S6,1
guardsound = S6,0
ground.type = High
ground.slidetime = 0
ground.hittime = 5
ground.velocity = 0
air.velocity = -3,-2
fall = 1
getpower = 0
givepower = 0

[State 3000, proj]
type = Projectile
triggerall = statetype = A
trigger1 = animelem = 6,5
trigger2 = animelem = 6,10
trigger3 = animelem = 6,15
trigger4 = animelem = 6,20
trigger5 = animelem = 6,25
projanim = 8008
velocity = 9,8
projremovetime = 24
projsprpriority = 5
postype = p1
offset = 0,-120
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 40,4
pausetime = 15,15
sparkno = S7000
sparkxy = 0,0
hitsound = S6,1
guardsound = S6,0
ground.type = High
ground.slidetime = 0
ground.hittime = 5
ground.velocity = 0
air.velocity = -3,-2
fall = 1
getpower = 0
givepower = 0

[State 3000]
type = ChangeState
triggerall = statetype = S
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 3000]
type = ChangeState
triggerall = statetype = A
trigger1 = animtime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------------------
; Greatest Caution with Wyvern
[Statedef 3100]
type = S
movetype = A
physics = S
anim = 3100
poweradd = -1000
ctrl = 0

[State 3100, Super A]
type = SuperPause
trigger1 = time = 7
anim = s7008
pos = 0,-78
time = 60
movetime = 60
unhittable = 1
sound = s9,1

[State 3100, shine]
type = PalFX
trigger1 = time = 17
time = 5
add = 0,0,0
sinadd = 150,150,250,3

[State 3100, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3100,0

[State 3100, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3100,0

[State 3100, 3]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3100,0

[State 3100, 4]
type = Explod
trigger1 = AnimElem = 2
anim = 3101
pos = 35,-113
postype = p1
sprpriority = 5
ownpal = 1
bindtime = -1
removetime = 12
removeongethit = 1
scale = 0.5,0.5

[State 3100, 5]
type = Explod
trigger1 = AnimElem = 4
anim = 3101
pos = 57,-103
postype = p1
sprpriority = 5
ownpal = 1
bindtime = -1
removetime = 12
removeongethit = 1
scale = 0.5,0.5

[State 3100, 6]
type = Explod
trigger1 = AnimElem = 6
anim = 3101
pos = 35,-113
postype = p1
sprpriority = 5
ownpal = 1
bindtime = -1
removetime = 12
removeongethit = 1
scale = 0.5,0.5

[State 3100, 7]
type = Projectile
trigger1 = AnimElem = 2
projanim = 3102
velocity = 25,0
projremove = 0
projremovetime = 25
projsprpriority = 5
postype = p1
offset = 35,-112
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 20,2
pausetime = 12,12
sparkno = -1
hitsound = S3100,1
guardsound = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0,0
air.velocity = -3,-2
getpower = 0
givepower = 0

[State 3100, 8]
type = Projectile
trigger1 = AnimElem = 4
projanim = 3102
velocity = 25,0
projremove = 0
projremovetime = 25
projsprpriority = 5
postype = p1
offset = 57,-102
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 20,2
pausetime = 12,12
sparkno = -1
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0,0
air.velocity = -3,-2
getpower = 0
givepower = 0

[State 3100, 9]
type = Projectile
trigger1 = AnimElem = 6
projanim = 3102
velocity = 25,0
projremove = 0
projremovetime = 25
projsprpriority = 5
postype = p1
offset = 35,-112
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 20,2
pausetime = 12,12
sparkno = -1
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0,0
air.velocity = -3,-2
getpower = 0
givepower = 0

[State 3100, 10]
type = SuperPause
trigger1 = AnimElem = 8
time = 270
darken = 1
movetime = 270
anim = -1

[State 3100, 11]
type = Explod
trigger1 = AnimElem = 8
anim = 3103
pos = 0,0
postype = p1
sprpriority = -2
ownpal = 1
bindtime = -1
removetime = 320
supermovetime = 320
removeongethit = 1

[State 3100, 12]
type = PlaySnd
trigger1 = AnimElem = 8
value = 13,15
channel = 0

[State 3100, 13]
type = Explod
trigger1 = Time = 320
anim = 3104
pos = 0,0
postype = left
sprpriority = -5
ownpal = 1
bindtime = -1
removetime = 60
supermovetime = 60
removeongethit = 1

[State 3100, 14]
type = Projectile
trigger1 = Time = 320
projanim = 3105
velocity = 1,0
projremove = 1
projremovetime = 60
projsprpriority = 5
postype = p1
offset = 35,-100
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 207,20
numhits = 1
pausetime = 12,12
sparkno = S7009
sparkxy = 100,-10
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 10
ground.velocity = 0
air.velocity = -3,-2
fall = 1
supermovetime = 170
getpower = 0
givepower = 0

[State 3100, 15]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------
; Wyvern Eyes
[Statedef 3200]
type = S
movetype = A
physics = S
poweradd = -2000
anim = 3200
ctrl = 0

[State 3200, Super A]
type = SuperPause
trigger1 = time = 7
anim = s7008
pos = 0,-78
time = 60
movetime = 60
unhittable = 1
sound = s9,1

[State 3200, shine]
type = PalFX
trigger1 = time = 17
time = 5
add = 0,0,0
sinadd = 150,150,250,3

[State 3200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,14
channel = 0

[State 3200, 2]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 7020
ID = 7020
removetime = 28
sprpriority = 2
supermove = 1
removeongethit = 1

[State 3200, 3]
type = Explod
trigger1 = AnimElem = 4
pos = 5,-136
anim = 8006
ID = 8006
removetime = 305
sprpriority = 3
supermove = 1
removeongethit = 1

[State 3200, 4]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3000,0

[State 3200, 5]
type = Explod
trigger1 = AnimElem = 1
anim = 6000
pos = 0,0
postype = Back
sprpriority = -5
ownpal = 1
bindtime = -1
removetime = 70
ignorehitpause = 0

[State 3300, 7]
type = BGPalFX
trigger1 = AnimElem = 5
time = 320
add = 100,100,100
mul = 256,256,256
sinadd = -80,-80,-80,10
invertall = 0
color = 0

[State 3200, 6]
type = VarRandom
trigger1 = Time = [70,360]
v = 40
range = 50,150

[State 3200, 7]
type = VarRandom
trigger1 = Time = [70,360]
v = 41
range = -200,0

[State 3200, 8]
type = Projectile
trigger1 = AnimElem = 5, = 0
trigger2 = AnimElem = 5, = 5
trigger3 = AnimElem = 5, = 10
trigger4 = AnimElem = 5, = 15
trigger5 = AnimElem = 5, = 20
trigger6 = AnimElem = 5, = 25
trigger7 = AnimElem = 5, = 30
trigger8 = AnimElem = 5, = 35
trigger9 = AnimElem = 5, = 40
trigger10 = AnimElem = 5, = 45
trigger11 = AnimElem = 5, = 50
trigger12 = AnimElem = 5, = 55
trigger13 = AnimElem = 5, = 60
trigger14 = AnimElem = 5, = 65
trigger15 = AnimElem = 5, = 70
trigger16 = AnimElem = 5, = 75
trigger17 = AnimElem = 5, = 80
trigger18 = AnimElem = 5, = 85
trigger19 = AnimElem = 5, = 90
trigger20 = AnimElem = 5, = 95
trigger21 = AnimElem = 5, = 100
trigger22 = AnimElem = 5, = 105
trigger23 = AnimElem = 5, = 110
trigger24 = AnimElem = 5, = 115
trigger25 = AnimElem = 5, = 120
trigger26 = AnimElem = 5, = 125
trigger27 = AnimElem = 5, = 130
trigger28 = AnimElem = 5, = 135
trigger29 = AnimElem = 5, = 140
trigger30 = AnimElem = 5, = 145
trigger31 = AnimElem = 5, = 150
trigger32 = AnimElem = 5, = 155
trigger33 = AnimElem = 5, = 160
trigger34 = AnimElem = 5, = 165
trigger35 = AnimElem = 5, = 170
trigger36 = AnimElem = 5, = 175
trigger37 = AnimElem = 5, = 180
trigger38 = AnimElem = 5, = 185
trigger39 = AnimElem = 5, = 190
trigger40 = AnimElem = 5, = 195
trigger41 = AnimElem = 5, = 200
trigger42 = AnimElem = 5, = 205
trigger43 = AnimElem = 5, = 210
trigger44 = AnimElem = 5, = 215
trigger45 = AnimElem = 5, = 220
trigger46 = AnimElem = 5, = 225
trigger47 = AnimElem = 5, = 230
trigger48 = AnimElem = 5, = 235
trigger49 = AnimElem = 5, = 240
trigger50 = AnimElem = 5, = 245
trigger51 = AnimElem = 5, = 250
trigger52 = AnimElem = 5, = 255
trigger53 = AnimElem = 5, = 260
trigger54 = AnimElem = 5, = 265
trigger55 = AnimElem = 5, = 270
trigger56 = AnimElem = 5, = 275
trigger57 = AnimElem = 5, = 280
trigger58 = AnimElem = 5, = 285
trigger57 = AnimElem = 5, = 290
trigger58 = AnimElem = 5, = 295
trigger59 = AnimElem = 5, = 300
trigger60 = AnimElem = 5, = 305
projanim = 8007
velocity = 10,0
projremovetime = 24
projsprpriority = 5
postype = p1
offset = Var(40),Var(41)
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = Light
damage = 6,3
pausetime = 15,15
sparkno = S7000
sparkxy = 0,0
hitsound = S6,1
guardsound = S6,0
ground.type = High
ground.slidetime = 0
ground.hittime = 5
ground.velocity = 0
air.velocity = -3,-2
getpower = 0
givepower = 0

[State 3200, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------
; Greatest Caution with Sphere
[Statedef 3300]
type = S
physics = S
movetype = A
poweradd = -3000
anim = 3300
ctrl = 0

[State 3300, 1.1]
type = Explod
trigger1 = AnimElem = 1
anim = 3303
postype = p1
pos = 0,0
sprpriority = -2
ownpal = 1
bindtime = -1
removetime = 270
removeongethit = 1
supermove = 1

[State 3300, 1.2]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 7020
ID = 7020
removetime = 28
sprpriority = 2
supermove = 1
removeongethit = 1

[State 3300, 2]
type = SuperPause
trigger1 = AnimElem = 2
anim = s7008
pos = 0,-78
time = 270
darken = 1
movetime = 270
unhittable = 1
sound = s9,1

[State 3300, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13,16
channel = 0

[State 3300, 5]
type = Explod
trigger1 = AnimElem = 2
anim = 3301
pos = -30,-150
postype = p1
sprpriority = 3
ownpal = 1
bindtime = -1
removetime = 256
removeongethit = 1
supermovetime = 270
scale = 0.25,0.25

[State 3300, 4]
type = Explod
trigger1 = AnimElem = 2
anim = 3302
pos = 10,-110
postype = p1
sprpriority = 2
ownpal = 1
bindtime = -1
removetime = 57
removeongethit = 1
supermovetime = 177
scale = 0.5,0.5

[State 3300, 5]
type = Explod
trigger1 = Time = 276
anim = 3304
pos = -30,-150
postype = p1
sprpriority = 3
ownpal = 1
bindtime = -1
removetime = 12
removeongethit = 1

[State 3300, 6]
type = Explod
trigger1 = Time = 276
anim = 3305
pos = 0,0
postype = p1
sprpriority = 5
ownpal = 1
bindtime = -1
removetime = 56
removeongethit = 1

[State 3300, 7]
type = BGPalFX
trigger1 = Time = 278
time = 320
add = 100,100,100
mul = 256,256,256
sinadd = -80,-80,-80,10
invertall = 0
color = 0

[State 3300, 8]
type = EnvShake
trigger1 = Time = 278
time = 320

[State 3300, 9]
type = PlaySnd
trigger1 = Time = 278
value = 3300,1
channel = 1

[State 3300, 10]
type = VarRandom
trigger1 = Time = [278,578]
v = 45
range = 0,200

[State 3300, 11]
type = VarSet
triggerall = Random < 499
trigger1 = Time = [278,578]
v = 46
value = -1

[State 3300, 12]
type = VarSet
triggerall = Random >= 499
trigger1 = Time = [278,578]
v = 46
value = 1

[State 3300, 13]
type = VarSet
trigger1 = Time = [278,578]
v = 47
value = (Var(46) * Var(45))

[State 3300, 14]
type = Explod
trigger1 = Time = 278
trigger2 = Time = 288
trigger3 = Time = 298
trigger4 = Time = 308
trigger5 = Time = 318
trigger6 = Time = 328
trigger7 = Time = 338
trigger8 = Time = 348
trigger9 = Time = 358
trigger10 = Time = 368
trigger11 = Time = 378
trigger12 = Time = 388
trigger13 = Time = 398
trigger14 = Time = 408
trigger15 = Time = 418
trigger16 = Time = 428
trigger17 = Time = 438
trigger18 = Time = 448
trigger19 = Time = 458
trigger20 = Time = 468
trigger21 = Time = 478
trigger21 = Time = 488
trigger22 = Time = 498
trigger23 = Time = 508
trigger24 = Time = 518
trigger25 = Time = 528
trigger26 = Time = 538
trigger27 = Time = 548
anim = 3306
pos = Var(47),0
postype = p1
sprpriority = 5
ownpal = 1
bindtime = -1
removetime = 12
removeongethit = 1

[State 3300, 15]
type = Projectile
trigger1 = Time = 278
trigger2 = Time = 288
trigger3 = Time = 298
trigger4 = Time = 308
trigger5 = Time = 318
trigger6 = Time = 328
trigger7 = Time = 338
trigger8 = Time = 348
trigger9 = Time = 358
trigger10 = Time = 368
trigger11 = Time = 378
trigger12 = Time = 388
trigger13 = Time = 398
trigger14 = Time = 408
trigger15 = Time = 418
trigger16 = Time = 428
trigger17 = Time = 438
trigger18 = Time = 448
trigger19 = Time = 458
trigger20 = Time = 468
trigger21 = Time = 478
trigger21 = Time = 488
trigger22 = Time = 498
trigger23 = Time = 508
trigger24 = Time = 518
trigger25 = Time = 528
trigger26 = Time = 538
trigger27 = Time = 548
projanim = 3307
projremove = 0
projremovetime = 25
velocity = 0,0
projsprpriority = 5
postype = p1
offset = -1,-86
attr = S, SP
animtype = Hard
damage = 10,1
hitflag = MAF
guardflag = MA
pausetime = 25,25
sparkno = -1
hitsound = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 10
ground.velocity = 0
air.velocity = -3,-2
palfx.time = 10
palfx.add = 200,50,100
getpower = 0
givepower = 0

[State 3300, 16]
type = PlaySnd
trigger1 = Time = 525
value = 3300,0
channel = 2

[State 3300, 17]
type = Explod
trigger1 = Time = 525
anim = 3308
pos = 0,0
postype = p1
sprpriority = 5
ownpal = 1
bindtime = -1
removetime = 21
removeongethit = 1

[State 3300, 6]
type = Explod
trigger1 = Time = 545
anim = 3309
pos = 0,0
postype = left
sprpriority = 15
ownpal = 1
bindtime = -1
removetime = 30
removeongethit = 1

[State 1300, 18]
type = BGPalFx
trigger1 = Time = 545
time = 10
add = 255,255,255

[State 3300, 19]
type = Projectile
trigger1 = Time = 558
projanim = 3307
projremove = 0
projremovetime = 25
velocity = 0,0
projsprpriority = 5
postype = p1
offset = -1,-86
attr = S, SP
animtype = Hard
damage = 290,29
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
hitsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime = 4
ground.velocity = -3,-12
air.velocity = -3,-12
palfx.time = 10
palfx.add = 200,50,100
p2stateno = 3310
fall = 1
fall.damage = 50
getpower = 0
givepower = 0

[State 3300, 20]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Greatest Caution with Sphere (p2 state)
[Statedef 3310]
type = A
movetype = H
physics = N

[State 3310]
type = ChangeAnim2
trigger1 = 1
value = 5070

[State 3310]
type = VelSet
trigger1 = time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 3310]
type = VelAdd
trigger1 = time >= 0
y = 0.3

[State 3310]
type = Offset
trigger1 = time >= 1
y = -50

[State 3310]
type = AngleSet
trigger1 = time = 1
value = 0

[State 3310]
type = AngleAdd
trigger1 = time >= 1
value = 22.5

[State 3310]
type = AngleDraw
trigger1 = time >= 1
trigger1 = pos y <= 10

[State 3310]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 0
trigger2 = time = 150
value = 5100

;---------------------------------------------------------------------------------------
; Sekishiki Meikaiha 
[Statedef 3400]
type = S
movetype = A
physics = S
poweradd = -3000
anim = 3400
ctrl = 0

[State 3400, 1]
type = SuperPause
trigger1 = AnimElem = 1
anim = s7008
pos = 0,-78
time = 250
darken = 1
movetime = 250
unhittable = 1
sound = s9,1

[State 3400, 2]
type = Explod
trigger1 = AnimElem = 11
anim = 3402
postype = p1
pos = 0,0
sprpriority = -2
ownpal = 1
bindtime = -1
removetime = 360
removeongethit = 1
supermove = 1

[State 3400, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13,17
channel = 0

[State 3400, 4]
type = Explod
trigger1 = Time = 260
anim = 3009
pos = 0,0
postype = left
sprpriority = 5
ownpal = 1
bindtime = -1
removetime = 10
removeongethit = 0

[State 3400, 5]
type = Projectile
trigger1 = Time = 270
projanim = 3401
velocity = 0,0
projremove = 0
projremovetime = 75
projsprpriority = 5
postype = p1
offset = 60,-105
attr = S, SP
hitflag = MAF
animtype = Hard
damage = 10000
pausetime = 0,60
sparkno = -1
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 60
ground.velocity = 0,0
air.velocity = 0,0
p2stateno = 3401
getpower = 0
givepower = 0

[State 3400, 6]
type = Explod
trigger1 = Time = 270
anim = 3404
pos = -165,-125
postype = p1
sprpriority = -5
ownpal = 1
bindtime = -1
removetime = 80
removeongethit = 1

[State 3400, 7]
type = Explod
trigger1 = Time = 350
anim = 3407
pos = 0,0
postype = left
sprpriority = -5
ownpal = 1
bindtime = -1
removetime = 135
removeongethit = 1

[State 3400, 8]
type = Explod
trigger1 = Time = 345
anim = 3009
pos = 0,0
postype = left
sprpriority = 5
ownpal = 1
bindtime = -1
removetime = 5
removeongethit = 0

[State 3400, 9] 
type = AssertSpecial
triggerall = p2life <= 0
trigger1 = Time > 344
flag = NoMusic
flag2 = NoBarDisplay

[State 3400, 10]
type = AllPalFX
triggerall = p2life <= 0
trigger1 = Time = 433
time = 200
add = 0,0,0
sinadd = -255,-255,-255,400

[State 3400, 11]
type = BGPalFX
triggerall = p2life <= 0
trigger1 = Time = 433
time = 200
add = 0,0,0
sinadd = -255,-255,-255,400

[State 3400, 12]
type = Explod
triggerall = p2life <= 0
trigger1 = Time = 603
anim = 3405
ID = 3405
pos = 0,0
postype = left
sprpriority = -5
ownpal = 0
bindtime = -1
removetime = 1100

[State 3400, 13]
type = PlaySnd
triggerall = p2life <= 0
trigger1 = Time = 603
value = 3400,0
loop = 1

[State 3400, 15] 
type = PosSet
triggerall = facing = -1
trigger1 = AnimElem = 27
x = 125

[State 3400, 15] 
type = Turn
triggerall = facing = -1
trigger1 = AnimElem = 27

[State 3400, 15] 
type = PosSet
triggerall = p2life <= 0
trigger1 = AnimElem = 28
x = -125
y = 17

[State 3400, 17]
type = Explod
triggerall = p2life <= 0
trigger1 = AnimElem = 28
anim = 811
ID = 811
pos = 0,-2
postype = p1
sprpriority = 5
ownpal = 0
bindtime = -1
removetime = 320

[State 3400, 18]
type = TargetState
triggerall = p2life <= 0
trigger1 = AnimElem = 28
value = 3403

[State 3400, 19]
type = TargetDrop
triggerall = p2life <= 0
trigger1 = AnimElem = 28
keepone = 0

[State 3400, 20]
type = PlayerPush
triggerall = p2life <= 0
trigger1 = Time = [813,1303]
value = 0

[State 3400, 21]
type = PlaySnd
triggerall = p2life <= 0
trigger1 = Time = 878
value = 13,18

[State 3400, 22]
type = VarSet
triggerall = p2life <= 0
trigger1 = Time = 920
var(7) = 1

[State 3400, 23]
type = ChangeState
trigger1 = AnimTime = 0
value = 3402

;-----------------------------------------------------------------
; Sekishiki Meikaiha (p2 state 1)
[Statedef 3401]
type = A
movetype = H
physics = N

[State 3401, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3403

;------------------------------------------------------------------------------------
; Sekishiki Meikaiha - Go to Winpose Fatality
[Statedef 3402]
type = A
movetype = I
physics = N

[State 3402, 1]
type = ChangeState
trigger1 = Time = 1
value = 0
ctrl = 1

;-----------------------------------------------------------------
; Sekishiki Meikaiha (p2 state 2)
[Statedef 3403]
type = A
movetype = H
physics = N

[State 3403, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3406

[State 3403, 2] 
type = PosSet
trigger1 = Time = 0
x = -200
y = -33

[State 3403, 3] 
type = PosAdd
trigger1 = Time = 10
trigger2 = Time = 20
trigger3 = Time = 30
trigger4 = Time = 40
trigger5 = Time = 50
trigger6 = Time = 60
x = 16
y = 0

[State 3403, 4]
type = PlayerPush
trigger1 = Time = [0,400]
value = 0

[State 3403, 5]
type = ScreenBound
trigger1 = Time = [0,400]
value = 0

[State 3403, 6]
type = VelAdd
trigger1 = Time = 230
x = 0.5
y = 3

[State 3403, 7]
type = VelSet
trigger1 = Time = 400
x = 0
y = 0

[State 3400, 8] 
type = Turn
triggerall = facing = -1
trigger1 = Time = 0

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------

[State -2, Get P2 Distance]
type = VarSet
trigger1 = p2dist X != 0
var(11) = floor(p2dist X)

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

[State -2, Facing Right]
type = VarSet
triggerall = var(51) != 2
trigger1 = facing = 1
var(51) = 1

[State -2, Facing Left]
type = VarSet
triggerall = var(51) != 1
trigger1 = facing = -1
var(51) = 2

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
value = 12, 0
channel = 0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 500
triggerall = time = 5
trigger1 = stateno = 215
trigger2 = stateno = 220
trigger3 = stateno = 250
trigger4 = stateno = 420
trigger5 = stateno = 450
trigger6 = stateno = 620
trigger7 = stateno = 650
value = 12, 1
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
value = 10, 0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 10, 0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10, 0

[State -2, Random sound]
type = PlaySnd
trigger1 = random < 500
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10, 0

[State -2, Random sound]
type = PlaySnd
trigger1 = random < 750
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = alive = 1
value = 10, 1

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
value = 1600

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
value = 1300

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
value = 1100

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
value = 1000

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
value = 830

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
value = 800

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
value = 1500

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
; 2\3 Button Combination
;---------------------------------------------------------------------------

; Cosmo Charge
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 109])
trigger1 = (P2bodydist X >= 250) && (power < 3000) && (prevstateno != 5120) && (p2movetype != H) 
value = 900

; Wyvern Wings
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [110, 164])
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (power >= 1000)
value = 1700

; Teleport
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [165, 219])
trigger1 = (P2bodydist X >= 50) && (prevstateno != 5120) && (p2movetype != A) 
value = 1500

; Counter
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (p2statetype != L) && (movetype = A)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [220, 274])
trigger1 = (p2bodydist x <= 200) && (prevstateno != 5120)
value = 1400

; Throw
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [275, 329])
trigger1 = (prevstateno != 5120) && (p2statetype != A) && (p2movetype != H) 
value = 800

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((p2statetype = L) && (P2BodyDist X >= 200)) && (random = [330, 384])
value = 199

;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------

; Wyvern Breath
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [385, 439])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120) && (p2movetype != H) 
value = 1000

; Wyvern Flight
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [440, 494])
trigger1 = (P2bodydist X >= 200) && (prevstateno != 5120) && (p2statetype != A) && (p2movetype != H) 
value = 1100

; Flying Kick
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [495, 549])
trigger1 = (P2bodydist X <= 200) && (P2bodydist X >= 100) && (prevstateno != 5120) && (p2statetype != A) && (p2movetype != H) 
value = 1200

; Wyvern Bomb
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [550, 604])
trigger1 = (P2bodydist X <= 200) && (prevstateno != 5120) && (p2statetype != A) && (p2movetype != H) 
value = 1600

;---------------------------------------------------------------------------
; Hyper Moves
;---------------------------------------------------------------------------

; Wyvern Lance
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 100) && (power >= 1000) && (random = [605,659])
value = 3000

; Greatest Caution with Wyvern
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != A)
trigger1 = (p2bodydist X >= 50) && (power >= 1000) && (random = [660,714])
value = 3100

; Wyvern Eyes
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 100) && (power >= 2000) && (random = [715,769])
value = 3200

; Greatest Caution with Sphere
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != A)
trigger1 = (p2bodydist X >= 150) && (power >= 3000) && (random = [770,824])
value = 3300

;---------------------------------------------------------------------------
; Fatality Moves
;---------------------------------------------------------------------------

; Sekishiki Meikaiha
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != A)
trigger1 = (p2bodydist X >= 75) && (power >= 3000) && (P2Life <= 250) && (random = [825,879])
value = 3400

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

;---------------------------------------

[State -3, AI Activate]
type = VarSet
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
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

[State -3, Cosmo Taunt]
type = RemoveExplod
triggerall = numexplod(198) >= 1
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
ID = 198

;---------------------------------------

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
trigger1 = animelem = 4
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 4
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

[State -3, Air Jump]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

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
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = time = 1
pos = 0,0
anim = 7084
sprpriority = 5
removeongethit = 1
ownpal = 1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = animelem = 2
trigger2 = animelem = 5
pos = 0,0
anim = 7085
sprpriority = 5
removeongethit = 1
ownpal = 1

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
trigger1 = animelem = 4
value = 3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 4
value = F3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 7
value = 3, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 7
value = F3, 1

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
removeongethit = 1
scale = .8, .8
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
triggerall = anim = 5150
triggerall = NumExplod(5151) = 0
trigger1 = time = 1
pos = -15,-15
anim = 5151
ID = 5151
sprpriority = 5
ownpal = 1
scale = 1, 1

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = var(58) = 0
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