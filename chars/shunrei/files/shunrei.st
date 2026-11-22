;ShunRei STATE file by Squall
;----------------------------------------------------

;---------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170]
type = AssertSpecial
trigger1 = Time = [0,170]
flag = roundnotover

[State 181, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 170, 1

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Winpose state decider
[Statedef 180]
type = S

[State 180, 2]
type = ChangeState
triggerall = var(9) = 1
trigger1 = Time = 0
value = 184

[State 180, 2]
type = ChangeState
triggerall = var(9) != 1
triggerall = var(7) != 1
triggerall = var(26) = 1
trigger1 = Time = 1
value = 181

[State 180, 2]
type = ChangeState
triggerall = MatchOver = 1
triggerall = var(9) != 1
triggerall = var(7) != 1
triggerall = var(26) != 1
trigger1 = Time = 1
value = 185

[State 180, 2]
type = ChangeState
triggerall = MatchOver = 0
triggerall = var(9) != 1
triggerall = var(7) != 1
triggerall = var(26) != 1
trigger1 = Time = 1
value = 182

[State 180, 2]
type = ChangeState
triggerall = var(9) != 1
trigger1 = time = 1
trigger1 = var(7) = 1
value = 183

;---------------------------------------------------------------------------
; Winpose after desperate
[Statedef 181]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 181, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 180, 5
channel = 0

[State 181, 4secchio] 
type = Explod
trigger1 = AnimElem = 1
postype = p1
pos = 35,0
bindtime = -1
sprpriority = -8
anim = 184

[State 181, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Winpose first round
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, 2]
type = ChangeState
triggerall = p2name = "shiryu" || p4name = "shiryu" || p2name = "shiryu2" || p4name = "shiryu2"
trigger1 = Time = 1
value = 184

[State 182, 2]
type = Explod
trigger1 = (Time%22) = 0
postype = p1
pos = -40,85
bindtime = -1
removetime = 12
sprpriority = -1
anim = 7010
ID = 7010

[State 182, 6]
type = PlaySnd
trigger1 = Time = 1
value = 2,1

[State 182, 6]
type = PlaySnd
trigger1 = Time = 45
value = 2,1

[State 182, 2]
type = AssertSpecial
trigger1 = Time = [0,50]
flag = RoundNotOver

[State 182, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Winpose after fatality
[Statedef 183]
type = S
ctrl = 0
anim = 3408
velset = 0,0

[State 180, 2]
type = ChangeState
triggerall = p2name = "shiryu" || p4name = "shiryu" || p2name = "shiryu2" || p4name = "shiryu2"
trigger1 = Time = 1
value = 184

[State 181, 2]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Winpose Vs Sirio
[Statedef 184]
type = S
ctrl = 0
anim = 188
velset = 0,0

[State 181, 1]
type = changeanim
trigger1 = time = 130
value = 189

[State 181, 1]
type = PlaySnd
trigger1 = time = 0
value = 180, 8
channel = 0

[State 181, 1]
type = PlaySnd
trigger1 = time = 130
value = 180, 9
channel = 0

;tisana Helper
[State 8000, Helper]
type = Explod
triggerall = anim = 189
trigger1 = animelem = 3
anim = 186
pos = 27,-95
vel = 0, 0
postype = p1
scale = 0.5,1
removetime = 1200
sprpriority = 1
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0

[State 181, 2]
type = AssertSpecial
trigger1 = Time = [0,500]
flag = RoundNotOver

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Winpose normal
[Statedef 185]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 180, 2]
type = ChangeState
triggerall = p2name = "shiryu" || p4name = "shiryu" || p2name = "shiryu2" || p4name = "shiryu2"
trigger1 = Time = 1
value = 184

[State 181, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 180, 4
channel = 0

[State 181, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 180, 5
channel = 0

;sirio Helper
[State 8000, Helper]
type = Explod
trigger1 = time = 1
anim = 1960
pos = 95,-80
vel = 0, 6
postype = p1
removetime = 20	
sprpriority = 3
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0

[State 181, 1]
type = PlaySnd
trigger1 = time = 900
value = 180, 7
channel = 0

[State 191, 4secchio] 
type = Explod
trigger1 = time = 20
postype = p1
pos = 95,0
bindtime = -1
sprpriority = -3
anim = 184

[State 181, 2]
type = AssertSpecial
trigger1 = Time = [0,1200]
flag = RoundNotOver

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Intro state decider
[Statedef 191]
type = S

[State 190, 2]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 190, 3]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 192

[State 190, 4]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 196

;--------------------------------------------------------------
; Intro nuda
[Statedef 192]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1] 
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 2]
type = PlaySnd
trigger1 = Animelem = 2
value = 190,1
channel = 0

[State 191, 2]
type = PlaySnd
trigger1 = Animelem = 9
value = 5,0

[State 191, 4secchio] 
type = Explod
trigger1 = AnimElem = 1
postype = p1
pos = 25,-20
bindtime = -1
removetime = 95
sprpriority = 7
anim = 192

[State 191, 4fuocosecchio] 
type = Explod
trigger1 = AnimElem = 3
postype = p1
pos = 19,-32
scale = 0.4, 0.4
bindtime = -1
removetime = 56
sprpriority = 8
anim = 199

[State 191, 4velo] 
type = Explod
trigger1 = AnimElem = 5
postype = p1
pos = 25,-80
bindtime = -1
removetime = 16
sprpriority = 9
anim = 194

[State 191, 4panni] 
type = Explod
trigger1 = AnimElem = 1
postype = p1
pos = -45,0
bindtime = -1
removetime = 111
sprpriority = 9
anim = 193

[State 191, 4] 
type = Explod
trigger1 = AnimElem = 9
postype = p1
pos = 0,-60
bindtime = -1
removetime = 29
sprpriority = 9
anim = 7009
ID = 113

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

[State 191, 5] 
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Intro invocazione
[Statedef 196]
type = S
ctrl = 0
anim = 196
velset = 0,0

[State 191, 1] 
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 2]
type = PlaySnd
trigger1 = Animelem = 1
value = 190,2
channel = 0

[State 191, 2]
type = PlaySnd
trigger1 = Animelem = 9
value = 5,0

[State 191, 4secchio] 
type = Explod
trigger1 = AnimElem = 15
postype = p1
pos = 0,-85
bindtime = -1
removetime = 176
sprpriority = 7
anim = 197

[State 191, cosmo] 
type = Explod
trigger1 = AnimElem = 16
postype = p1
pos = 0, 0
bindtime = -1
removetime = 70
sprpriority = -1
anim = 198

[State 196, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 191, 5] 
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; taunt state decider
[Statedef 195]
type = S
ctrl = 0
velset = 0,0

[State 195, 1]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,2

[State 195, 2]
type = ChangeState
trigger1 = var(6) = 1
value = 196

[State 195, 3]
type = ChangeState
trigger1 = var(6) = 2
value = 197

;---------------------------------------------------------------------------
; Taunt 1
[Statedef 196]
type = S
ctrl = 0
anim = 1961
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 196, 2]
type = PlaySnd
trigger1 = Animelem = 1
value = 180,6
channel = 0

[State 196, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Taunt 2
[Statedef 197]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 197, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 197, 1]
type = PlaySnd
trigger1 = Animelem = 6
value = 6000, 0
channel = 0

[State 197, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 900, 0
channel = 0

[State 197, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 900, 0
channel = 0

[State 197, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Light Punch
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
trigger1 = Time = 0
attr = S, NA
damage = 20, 0
getpower  = 0
givepower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S7000
sparkxy = -5, -63
guard.sparkno = S7006
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

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Medium Punch
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 210, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 30
getpower  = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = S7001
sparkxy = -15,-62
guard.sparkno = S7006
hitsound  = S1,1
guardsound = S6, 0
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
; Hard Punch
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 220
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 220, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 220, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 40
getpower  = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = S7002
sparkxy = -15,-60
guard.sparkno = S7006
hitsound  = S1,2
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Light Kick
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

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 20
getpower  = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = S7000
sparkxy = -13,-80
guard.sparkno = S7006
hitsound   = S1,1
guardsound = S6, 0
ground.type = high
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
; HARD Kick
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

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
getpower  = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = S7001
sparkxy = -10,-62
guard.sparkno = S7006
hitsound   = S1,3
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2,-12
air.velocity = -1,-11

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
; Standing Medium kick
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 241
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 241, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 241, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
getpower  = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = S7002
sparkxy = -10,-70
guard.sparkno = S7006
hitsound   = S1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 13
ground.hittime  = 15
ground.velocity = -10,-4
guard.velocity = -12
air.velocity = -7,-4.8
airguard.velocity = -3,-3
fall = 1

[State 241, 3]
type = PosAdd
trigger1 = AnimElem = 7
x = 12

[State 241, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light punch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 400
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
getpower  = 0
givepower = 0
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = S7000
sparkxy = -5,-40
guard.sparkno = S7006
hitsound   = S1,0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
 ;Crouching medium punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
getpower  = 0
givepower = 0
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = S7000
sparkxy = -5,-40
guard.sparkno = S7006
hitsound   = S1,0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
 ;Crouching Hard Punch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 420
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 420, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 420, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
getpower  = 0
givepower = 0
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = S7001
sparkxy = -5,-60
guard.sparkno = S7006
hitsound   = S1,2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light kick
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 430
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
getpower  = 0
givepower = 0
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = S7000
sparkxy = -10,-40
guard.sparkno = S7006
hitsound   = S1,2
guardsound = S6, 0
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
;Crouching medium kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 440, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
getpower  = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = S7001
sparkxy = -13,-15
guard.sparkno = S7006
hitsound   = S1,2
guardsound = S6, 0
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
;Crouching Hard kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 441
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 441, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 441, 2]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 30
getpower  = 0
givepower = 0
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = S7001
sparkxy = -5,-35
guard.sparkno = S7006
hitsound   = S1,1
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4

[State 441, 4]
type = VelSet
trigger1 = AnimElem = 1
x = 4

[State 441, 4]
type = VelSet
trigger1 = AnimElem = 4
x = 2

[State 441, 4]
type = VelSet
trigger1 = AnimElem = 5
x = 1

[State 441, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Jump light punch
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

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
getpower  = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = S7000
sparkxy = 6,-5
guard.sparkno = S7006
hitsound   = S1,0
guardsound = S6, 0
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
;Jump Medium Punch
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
trigger1 = Time = 2
value = 0, 1

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
getpower  = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S7001
sparkxy = 1,-7
guard.sparkno = S7006
hitsound   = S1,1
guardsound = S6, 0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
;---------------------------------------------------------------------------
;Jump Hard Punch
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 620
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 620, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 620, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
getpower  = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S7002
sparkxy = 1,-23
guard.sparkno = S7006
hitsound   = S1,1
guardsound = S6, 0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

;---------------------------------------------------------------------------
;Jump Light Kick
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 630
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
getpower  = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = S7001
sparkxy = 5,-15
guard.sparkno = S7006
hitsound   = S1,2
guardsound = S6, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3

;---------------------------------------------------------------------------
;Jump medium Kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 640
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 30
getpower  = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S7001
sparkxy = -7,-15
guard.sparkno = S7006
hitsound   = S1,3
guardsound = S6, 0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

;---------------------------------------------------------------------------
;Jump Strong Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 641
sprpriority = 2

[State 641, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 900,0

[State 641, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 40
getpower  = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S7002
sparkxy = -10,-40
guard.sparkno = S7006
hitsound   = S1, 2
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2,12
air.velocity = -1,11
Fall = 1


;----------------------------------------------------------
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
value = 6000, 0
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

[State 901]
type = Explod
triggerall = numexplod(7030) = 0
trigger1 = 1
anim = 7030
ID = 7030
pos = 0,5
bindtime = -1
removetime = -1
scale = 0.9,0.9
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
scale = 0.9,0.9
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
;Raffica di pugni "x"
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 900,0

[State 1000, 0]
type = VelSet
trigger1 = AnimElem <= 2
x = 3.5

[State 1000, 0]
type = VarSet
trigger1 = time = 0
v = 19
value = 1

[State 1000, 1]
type = PlaySnd
trigger1 = Time = 8
value = 1000, 0

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 9
trigger8 = AnimElem = 10
trigger9 = AnimElem = 11
trigger10 = AnimElem = 12
value = 0, 1

[State 1000, 6]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 9
trigger8 = AnimElem = 10
trigger9 = AnimElem = 11
trigger10 = AnimElem = 12
attr = S, SA
animtype  = Hard
damage    = 23,2
getpower  = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 5,20
sparkxy = -8,-52
sparkno = S7000
guard.sparkno = S7006
hitsound = S1,5
guardsound = S6, 0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0

[State 1000, 6]
type = HitDef
trigger1 = AnimElem = 8
attr = S, SA
animtype  = Hard
damage    = 10
getpower  = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 5,10
sparkxy = -8,-42
sparkno = S7001
guard.sparkno = S7006
hitsound = S1,3
guardsound = S6, 0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0
air.velocity = 0,0

[State 1000, 7]
type = ChangeState
triggerall = movehit
trigger1 = AnimTime = 0
value = 1002

[State 1000, 7]
type = ChangeState
triggerall = movehit = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1001]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
velset = 0,0
anim = 1001
ctrl = 0
sprpriority = 2

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 9
trigger8 = AnimElem = 10
value = 0, 1

[State 1000, 6]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
attr = S, SA
animtype  = Hard
damage    = 10
getpower  = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 5,10
sparkxy = -8,-52
guard.sparkno = S7006
hitsound = S1,5
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = 0
air.velocity = 0,0

[State 1000, 7]
type = ChangeState
triggerall = movehit
trigger1 = AnimTime = 0
value = 1002

[State 1000, 7]
type = ChangeState
triggerall = movehit = 0
trigger1 = AnimTime = 0
value = 0

[Statedef 1002]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
velset = 0,0
anim = 1002
ctrl = 0
sprpriority = 2

[State 1000, 6]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Hard
damage    = 10,1
getpower  = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 15,15
sparkxy = -8,-52
sparkno = S7001
guard.sparkno = S7006
hitsound = S1,4
guardsound = S6, 0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -10
air.velocity = 20, -4
fall = 1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Raffica di Pugni y
[Statedef 1010]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1010
ctrl = 0
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 900,0

[State 1000, 0]
type = VarSet
trigger1 = time = 0
v = 19
value = 1

[State 1000, 0]
type = VelSet
trigger1 = AnimElem <= 2
x = 2

[State 1000, 1]
type = PlaySnd
trigger1 = Time = 8
value = 1000, 0

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 9
trigger8 = AnimElem = 10
trigger9 = AnimElem = 11
trigger10 = AnimElem = 12
value = 0,1

[State 1000, 6]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 9
trigger8 = AnimElem = 10
trigger9 = AnimElem = 11
trigger10 = AnimElem = 12
trigger11 = AnimElem = 13
attr = S, SA
animtype  = Hard
damage    = 6,1
getpower  = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 5,20
sparkxy = -8,-52
sparkno = S7000
guard.sparkno = S7006
hitsound = S1,5
guardsound = S6, 0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0

[State 1000, 6]
type = HitDef
trigger1 = AnimElem = 12
attr = S, SA
animtype  = Hard
damage    = 10,1
getpower  = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 5,10
sparkxy = -8,-42
sparkno = S7000
guard.sparkno = S7006
hitsound = S1,4
guardsound = S6, 0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -10
air.velocity = 20, 0
fall = 0

[State 1000, 7]
type = ChangeState
triggerall = movehit
trigger1 = AnimTime = 0
value = 1002

[State 1000, 7]
type = ChangeState
triggerall = movehit = 0
trigger1 = AnimElem = 12
value = 0
ctrl = 1

[Statedef 1011]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
velset = 0,0
anim = 1011
ctrl = 0
sprpriority = 2

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 9
trigger8 = AnimElem = 10
value = 0, 1

[State 1000, 6]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
attr = S, SA
animtype  = Hard
damage    = 5
getpower  = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 15,15
sparkxy = -8,-52
guard.sparkno = S7006
hitsound = S1,5
guardsound = S6, 0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Var(10) = 0
trigger1 = Var(11) = 0
trigger2 = Time = 10
trigger2 = Var(10) = 0
trigger2 = Var(11) = 0
value = 1002

[Statedef 1012]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
velset = 0,0
anim = 1012
ctrl = 0
sprpriority = 2

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Combo Aerea
[Statedef 1100]
type = S
movetype = A
physics = N
anim = 1100
velset = 0,0
ctrl = 0
poweradd = 100
juggle = 0

[State 200, 2]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 900,0

[State 2040, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 2040, 1]
type = Explod
trigger1 = Time = 5
anim = 1104
pos = 40,-65
postype = p1
supermove = 1
ownpal = 1
removetime = 35
sprpriority = 3
bindtime = 1

[State 1100, 1]
type = PlaySnd
trigger1 = Time = 0
value = 2,1

[State 1100, 1]
type = PlaySnd
trigger1 = Animelem = 2
value = 0,2

[State 1100, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage    = 40,4
animtype  = Hard
getpower  = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 9,6
sparkno = S7000
sparkxy = 0, -20
guard.sparkno = S7006
hitsound = S1,0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = 0, -6
air.velocity = 0,-6
fall = 1
air.fall = 1
fall.recover =1

[State 1100, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1101

[Statedef 1101]  ;¸‚è
type = A
movetype = A
anim = 1101
physics = A
ctrl = 0
velset = 0,-6.5
juggle = 0

[State 1100, 1]
type = PlaySnd
trigger1 = Time = 0
value = 2,1

[State 1100, 1]
type = PlaySnd
trigger1 = Animelem = 2
value = 0,2

[State 1101, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
damage    = 40,4
animtype  = Hard
getpower  = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 10,12
sparkno = S7001
sparkxy = 15, -85
guard.sparkno = S7006
hitsound = S1,3
guardsound = S6, 0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity =5, -12
air.velocity = 5,-12
fall = 1
fall.damage = 10
air.fall = 1
fall.recover =1

[State 1101, 3]
type = ChangeState
trigger1 = Vel Y >= 0
value = 1102

[Statedef 1102]  ;~‚è
type = A
movetype = I
physics = N
velset = 0,0
anim = 1102

[State 1102, 1]
type = ChangeState
; trigger1 = Vel Y > 0
trigger1 = Time > 0
trigger1 = Pos Y >= 0
value = 1103

[State 1102, init]
type = VarSet
trigger1 = time = 0
v = 1
value = 0

[State 1102, 2]
type = VelAdd
trigger1 = time >= 0
y = .50

[Statedef 1103]  ;’…’n
type = S
movetype = I
physics = S
anim = 1103
velset = 0, 0

[State 1103, 0]
type=PlaySnd
trigger1 = time = 0
value= 2,2

[State 1103, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1103, 2]
type = PosSet
trigger1 = Time = 0
y = 0

;---------------------------------------------------------------------------
; Combo Aerea variante
[Statedef 1110]
type = S
movetype = A
Physics = N
anim = 1110
velset = 0,0
ctrl = 0
poweradd = 100
juggle = 0

[State 200, 2]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 900,0

[State 1100, 1]
type = PlaySnd
trigger1 = Time = 0
value = 2,1

[State 1100, 1]
type = PlaySnd
trigger1 = Animelem = 2
value = 0,2

[State 1110, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1110, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage    = 40,3
animtype  = Hard
getpower  = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 12,15
sparkno = S7000
guard.sparkno = S7006
sparkxy = -20, -30
hitsound = S1,0
guardsound = S6, 0
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -2, -6
air.velocity = 0,-6
fall = 1
air.fall = 1
fall.recover =1

[State 2040, 1]
type = Explod
trigger1 = Time = 5
anim = 1104
pos = 30,-95
postype = p1
supermove = 1
ownpal = 1
removetime = 35
sprpriority = 3
bindtime = 1

[State 1110, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
damage    = 20,3
animtype  = Hard
getpower  = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 12,13
sparkno = S7000
guard.sparkno = S7006
sparkxy = -20, -60
hitsound = S1,4
guardsound = S6, 0
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -2, -35
air.velocity = 0,-15
fall = 1
air.fall = 1
fall.recover =1

[State 1110, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1111

[Statedef 1111]  ;¸‚è
type = A
movetype = A
physics = A
anim = 1101
ctrl = 0
velset = 0,-9
juggle = 10

;[State 2040, 1]
;type = Explod
;trigger1 = Time = 0
;anim = 1112
;pos = -28,10
;postype = p1
;supermove = 1
;ownpal = 1
;sprpriority = 3
;bindtime = 1

[State 1111, 1]
type = ChangeState
trigger1 = Vel Y >= 0
value = 1112

[State 1111, 4]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
damage    = 20,2
animtype  = Hard
getpower  = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = S7000
guard.sparkno = S7006
sparkxy = -45, -85
hitsound = S1,4
guardsound = S6, 0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -2, -10
air.velocity = 0,-16
fall.damage = 10
fall = 1
air.fall = 1
fall.recover =1

[Statedef 1112]  ;~‚è
type = A
movetype = I
physics = N
velset = 0,0
anim = 1102

[State 1112, 1]
type = ChangeState
 trigger1 = Vel Y > 0
trigger1 = Time > 0
trigger1 = Pos Y >= 0
value = 1113

[State 1112, init]
type = VarSet
trigger1 = time = 0
v = 1
value = 0

[State 1112, 2]
type = VelAdd
trigger1 = time >= 0
y = .50

[Statedef 1113]  ;’…’n
type = S
movetype = I
physics = S
anim = 1103
velset = 0, 0

[State 1113, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 1119, 2]
type=PlaySnd
trigger1 = time = 0
value= 2,2

[State 1113, 3]
type = PosSet
trigger1 = Time = 0
y = 0

;-------------------------------------------------------------------------
;Proiettile -Super-
[Statedef 1200]
type = S
movetype = A
juggle = 0
anim = 1203
ctrl = 0
poweradd = 100
velset = 0,0
sprpriority = 2

[State 2040, 1]
type = Explod
trigger1 = Animelem = 2
anim = 1201
pos = 28,-10
postype = p1
supermove = 1
ownpal = 1
sprpriority = 3
bindtime = 1

[State 2040, 1]
type = Explod
trigger1 = Animelem = 2
anim = 1202
pos = -28,-10
postype = p1
supermove = 1
ownpal = 1
sprpriority = 3
bindtime = 1

[State 200, 2]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 900,0

[State 12000, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 1

[State 12000, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 45, 0

[State 950, 1]
type = HitDef
Trigger1 = animelem = 2
damage = 80,8
animtype = light
getpower  = 0
givepower = 0
attr = S, SP
hitflag = HD
guardflag = MAF
priority = 1
sparkno = -1
hitsound = S1,5
guardsound = S6, 0
sparkxy = -30,-100
p1sprpriority = -1
p2sprpriority = 0
guardsound = S20,0
ground.type = high
ground.slidetime = 8
ground.hittime  = 10
ground.velocity = 0
guard.velocity = -8
air.velocity = 0,0
airguard.velocity = -1,-1
air.fall = 1
fall = 1

[State 1000, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
;Proiettile variante
[Statedef 1210]
type = S
movetype = A
juggle = 0
anim = 1200
ctrl = 0
poweradd = 100
velset = 0,0
sprpriority = 2

[State 200, 2]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 900,0

[State 12000, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 1

[State 12000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 45, 0

[State 1200, 3]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1201
projhitanim = 1201
projremovetime = 32
projshadow = -1
offset = 28, -10
velocity = 0,0
accel = 0, 0
projpriority = 2
attr = S, SP
damage    = 80,8
animtype = heavy
getpower  = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
sparkxy = 99, -10
hitsound = S1,5
guardsound = S6, 0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.Velocity = -3,-5
fall = 1
fall.damage = 10
air.animtype = Back
air.Velocity = -3,-5
air.juggle = 3
air.fall = 1

[State 1010, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-|Colpo di reni State Decider|--------------------

[Statedef 1350]
type = S

[State 180,1]
type = ChangeState
trigger1 = p2bodydist x <=20
trigger1 = Time = 0
value = 1351

[State 180, 2]
type = ChangeState
trigger1 = p2bodydist x >20
trigger1 = Time = 0
value = 1352

;-------------------------------------------------------------------------
;colpo di reni
[Statedef 1351]
type = S
movetype = A
juggle = 0
anim = 1350
ctrl = 0
poweradd = 100
velset = 0,0
sprpriority = 2

[State 3001, 0]
type = VarSet
trigger1 = time = 0
v = 16
value = 1

[State 200, 2]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 900,0

[State 12000, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 0

[State 12000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200, 1

[State 1111, 4]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = animelem = 7
attr = S, SA
damage    = 40,4
animtype  = Hard
getpower  = 0
givepower = 0
hitflag = MAF
guardflag = MAD
pausetime = 12,12
sparkno = S7000
guard.sparkno = S7006
sparkxy = 15, -45
hitsound = S1,4
guardsound = S6, 0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -2, -6
air.velocity = -3.3,-10
fall = 1
air.fall = 1
fall.recover =1

[State 1010, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------
;Colpo di reni lunga distanza
[Statedef 1352]
type = S
movetype = A
juggle = 0
anim = 1351
ctrl = 0
poweradd = 80
velset = 4.5,0
sprpriority = 2

[State 12000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200, 1

[State 1010, 4]
type = ChangeState
trigger1 = P2bodydist x <=20
value = 1351

;-------------------------------

;Passaggio alle spalle
[Statedef 1400]
type = S
movetype = A
juggle = 0
anim = 1400
ctrl = 0
poweradd = 100
velset = 8.5,0
sprpriority = 2

[State 12000, 1]
type = playerpush
trigger1 = 1
value = 0

[State 1000, 6]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = Back
damage    = 70,8
getpower  = 0
givepower = 0
priority  = 5
guardflag = L
pausetime = 0,0
sparkxy = -28,-52
sparkno = -1
guard.sparkno = S7006
hitsound = S1,3
guardsound = S6, 0
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -2, -2
air.velocity = -2, -2
fall = 1
fall.damage = 10

[State 200, 2]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 900,0

[State 12000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200, 1

[State 1010, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------

;Verticale
[Statedef 1450]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1450
ctrl = 0
sprpriority = 2

[State 1000, 1]
type = PlaySnd
trigger1 = Time = 8
value = 1000, 0

[State 200, 2]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 900,0

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 1

[State 1000, 6]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Hard
damage    = 80,8
getpower  = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 15,15
sparkxy = -28,-52
sparkno = S7000
guard.sparkno = S7006
hitsound = S1,3
guardsound = S6, 0
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -2
air.velocity = -2, 0
fall = 1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------

;Verticale (presa)
[Statedef 1460]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1460
ctrl = 0
sprpriority = 2

[State 1000, 1]
type = PlaySnd
trigger1 = Time = 8
value = 1000, 0

[State 200, 2]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 900,0

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 1

[State 1000, 6]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Hard
damage    = 60
getpower  = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -28,-52
guard.sparkno = S7006
hitsound = S1,3
guardsound = S6, 0
ground.type = high
p1stateno = 1461
p2stateno = 1462
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -2
air.velocity = -2, 0
fall = 1

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;-----------------------------------------------------------

;Verticale (presa) p1state
[Statedef 1461]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
velset = 0,0
anim = 1461
ctrl = 0
sprpriority = 2

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 87, 0

[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = -20, -60

[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = -30, -30

[State 810, Throw 11]
type = TargetState
trigger1 = AnimElem = 3
value = 1463

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; P2 Thrown by verticale
[Statedef 1462]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1462

;---------------------------------------------------------------------------

; P2 Thrown into the air by verticale
[Statedef 1463]
type = a
movetype = h
physics = n
velset = 6, 10

[State 821, 1]
type = veladd
trigger1 = 1
y = .4

[State 821, 2]
type = turn
trigger1 = time = 0

[State 821, 3]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0 
value = 5100

;-|Hypers|---------------------------------------------


;--|Tornado DI SHUNREI|------------------
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
velset = 0,0
anim = 1302
ctrl = 0
sprpriority = 2

[State 3000, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1900, 1

[State 3000, 1]
type = nothitby
trigger1 = Time >= 223
value = SCA

[State 3000, 1]
type = PlaySnd
trigger1 = Time = 223
value = 3600,2

[State 267, 1]
type = Projectile
trigger1 = time = 223
;trigger2 = time = 300
projanim = 1302
projhitanim = -1
projscale = 0,0
projpriority = 9
projheightbound = -240, 100
projedgebound = 100
projshadow = -1
projremovetime = 100
offset = 0 , 0
velocity = 0,0
attr = S, SP
damage   = 25,20
getpower  = 0
givepower = 0
animtype = heavy
guardflag = MA
p2stateno = 3101
fall= 0
hitflag = MAFDP
pausetime = 10,10
hitsound   = S9,1
sparkxy = 500,500
guardsound = S1,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0;-6
air.animtype = Back
air.velocity = 0,0
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 900, 0]
type = SuperPause
trigger1 = Time = 0
time = 223
movetime = 223
sound = -1
anim = S7009
pos = 0,-35

[State 2040, 1]
type = Explod
trigger1 = time = 0
anim = 1308
pos = -5,-5
postype = back
removetime = 343
ownpal = 1
supermove = 1
removeongethit = 1
sprpriority = -5
bindtime = -1

[State 2040, 1]
type = Explod
trigger1 = time = 223
anim = 1305
pos = 0,0
postype = p1
removetime = 120
ownpal = 1
supermove = 0
sprpriority = 3
removeongethit = 1
bindtime = 1

[State 2040, 1]
type = Explod
trigger1 = time = 223
anim = 1307
pos = 0,10
postype = p1
removetime = 120
ownpal = 1
supermove = 0
sprpriority = -3
removeongethit = 1
bindtime = 1

[State 1000, 7]
type = ChangeState
trigger1 = Time = 343
value = 0
ctrl = 1


;sballottata dal tornado


[Statedef 3101]
type = S
movetype= H
physics = A
ctrl = 0
anim = 5030
;velset = -20,-8
poweradd = 0

[State 268, horizontal]
type = screenbound
trigger1 = time >= 60
value = 0

[State 268, horizontal]
type = velset
trigger1 = timemod = 10,0
triggerall = time < 60
x=-30
y=-8

[State 268, horizontal]
type = lifeadd
trigger1 = timemod = 2,0
value = -4

[State 269, voltear]
type = turn
trigger1= timemod = 10,0
triggerall = time < 60

[State 1222, State]
type = velset
trigger1 = time >= 60
x = 0
y = -160

[State 1222, State]
type = SelfState
trigger1 = time = 69
ctrl = 1
value = 5100

;-Furia di Shunrei-----------
;--|Colpo|-------------
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -3000
velset = 0,0
anim = 1303
ctrl = 0
sprpriority = 2

[State 900, 0]
type = SuperPause
trigger1 = Time = 0
time = 115
movetime = 115
sound = -1
anim = S7009
pos = 0,-35

[State 3000, 1]
type = PlaySnd
trigger1 = Time = 0
value = 190,2

[State 2040, 1]
type = Explod
trigger1 = AnimElem = 25
anim = 1306
pos = -10,160
postype = back
ownpal = 1
supermove = 168
removetime = 320
sprpriority = 3
bindtime = 1
vel = 5, 0

[State 2040, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 1113
pos = -45,-75
postype = p1
ownpal = 1
supermove = 168
removetime = 125
sprpriority = 3
bindtime = 1


[State 8001, 1]
type = HitDef
trigger1 = time = 125
trigger2 = time = 127
trigger3 = time = 129
trigger4 = time = 131
trigger5 = time = 133
trigger6 = time = 135
trigger7 = time = 137
trigger8 = time = 139
trigger9 = time = 141
trigger10 = time = 143
trigger11 = time = 145
trigger12 = time = 147
trigger13 = time = 149
trigger14 = time = 151
attr = S,SA
animtype  = medium
hitflag = MA
guardflag =MAF 
animtype = medium
damage = 43,12
getpower  = 0
givepower = 0
sparkno = S7002
guard.sparkno = -1
sparkxy = -30,-65
pausetime = 10, 10
hitsound = S1,1
guardsound = S6,0
ground.type = high
air.type = high
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -6,-2
air.velocity = -6,-2

[State 8001, 1]
type = HitDef
trigger1 = time = 151
attr = S,SA
animtype  = medium
hitflag = MA
guardflag =MAF 
animtype = medium
damage = 28,9
getpower  = 0
givepower = 0
sparkno = S7002
guard.sparkno = -1
sparkxy = -30,-60
pausetime = 0, 0
hitsound = S1,4
guardsound = S6,0
ground.type = high
air.type = high
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -6,-10
air.velocity = -6,-10
fall = 1

[State 1303, 1]
type = AfterImageTime
trigger1 = AnimTime = 0
Time = 0

[State 2040, 1]
type = Explod
trigger1 = time = 0
anim = 1308
pos = -5,-5
postype = back
removetime = 185
ownpal = 1
supermove = 1
removeongethit = 1
sprpriority = -5
bindtime = -1

[State 1000, 7]
type = ChangeState
trigger1 = time = 185
value = 0
ctrl = 1


;--------------------------------------------------
;Desperate Move - Rozan Shoryu Ha (helper)
[Statedef 3300]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 3300
poweradd = -3000
ctrl = 0
sprpriority = 2

[State 8000 , 1]
type = varset
trigger1 = time = 0
v = 26
value = 1

[State 0, PosSet]
type = PosAdd
triggerall = p2bodydist X < 60
trigger1 = Time = 1
x = -60 + p2bodydist X

[State 8000, Pause2]
Type = SuperPause
trigger1 = Animelem = 1
MoveTime = 0
Time = 1
Pos = 11, -80
anim = S7009
Darken = 1

[State 8000 , 1]
type = PlaySnd
trigger1 = time = 0
value = 1900, 2

[State 9, 1]
type = NotHitBy
trigger1 = AnimElem = 2
value =  , AP
time = 225

;[State 8000, Helper]
;type = Explod
;trigger1 = time = 1
;anim = 3101
;pos = 20,0
;postype = p1
;removetime = 35
;sprpriority = 3
;supermove = 0
;ignorehitpause = 1
;ownpal = 1
;bindtime = 1
;persistent = 0
;removeongethit = 1
;Id = 1951

;[State 8000, Helper]
;type = Explod
;trigger1 = time = 37
;anim = 3102
;pos = 20,0
;postype = p1
;removetime = 800
;sprpriority = 3
;supermove = 0
;ignorehitpause = 1
;ownpal = 1
;bindtime = 1
;persistent = 0
;removeongethit = 1
;Id = 3102

[State 0, Helper]
type = Helper
trigger1 = Time = 66
name = "Drago"
ID = 3301
stateno = 3301
pos = 40,-50
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0
size.xscale = 1.2
size.yscale = 3

[State 0, Helper]
type = Helper
trigger1 = Time = 1
name = "Shiryu"
ID = 3101
stateno = 3302
pos = 20,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 0

;[State 8000, HelperDrago]
;type = Explod
;trigger1 = time = 66
;anim = 3104
;vel = 0, -1
;scale = 1, 1.8
;pos = 20,-120
;postype = p1
;removetime = 280
;sprpriority = 3
;supermove = 0
;ignorehitpause = 1
;ownpal = 1
;Id = 3104

[State 8000 , 1]
type = PlaySnd
trigger1 = time = 48
value = 3000, 5

[State 8001, 1]
type = HitDef
trigger1 = Time = 66
attr = S,HA
animtype  = medium
hitflag = MA

animtype = Hard
damage = 0,0
getpower  = 0
givepower = 0
sparkno = S7002
guard.sparkno = -1
sparkxy = 0,0
pausetime = 15, 0
hitsound = S1,1
ground.type = high
air.type = high
ground.slidetime = 22
ground.hittime = 24
ground.velocity = 0,-6
air.velocity = 0,-6

[State 8001, 1]
type = HitDef
trigger1 = time = 67
trigger2 = time = 69
trigger3 = time = 71
trigger4 = time = 73
trigger5 = time = 75
trigger6 = time = 77
trigger7 = time = 79
trigger8 = time = 81
trigger9 = time = 83
trigger10 = time = 85
trigger11 = time = 87
trigger12 = time = 89
trigger13 = time = 91
trigger14 = time = 93
attr = S,HA
animtype  = medium
hitflag = MA
animtype = medium
damage = 20,0
getpower  = 0
givepower = 0
sparkno = S7002
guard.sparkno = -1
sparkxy = 0,var(33)
pausetime = 2, 14
hitsound = S1,1
ground.type = high
air.type = high
ground.slidetime = 22
ground.hittime = 24
ground.velocity = 0,-1
air.velocity = 0,-1
;fall = 1
;fall.recover = 0

[State 8000 , 1]
type = Varset
trigger1 = time = 66
value = -30
v = 33

[State 8000 , 1]
type = Varset
trigger1 = time >= 67
value = var(33) -2
v = 33


[State 8001, 1]
type = HitDef
trigger1 = Time = 96
attr = S,HA
animtype  = medium
hitflag = MA
animtype = medium
damage = 277,0
getpower  = 0
givepower = 0
sparkno = S7009
guard.sparkno = -1
sparkxy = 1,var(33)
pausetime = 3, 15
hitsound = S1,1
ground.type = high
air.type = high
ground.slidetime = 22
ground.hittime = 24
ground.velocity = 0,-20
air.velocity = 0,-20
fall = 1
fall.recover = 0
fall.damage = 42

[State 8000, 6]
type = ChangeState
trigger1 = Animtime = 0
value = 2

;Desperate Move - Rozan Shoryu Ha (Helper Drago)
[Statedef 3301]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,-4
anim = 3104
poweradd = 0
ctrl = 0
sprpriority = 3

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Time >= 0
flag = noshadow

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != 3300

;Desperate Move - Rozan Shoryu Ha (Helper Shiryu)
[Statedef 3302]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 3101
poweradd = 0
ctrl = 0
sprpriority = 2

[State 1112, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 3304
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 3101
trigger1 = Time = 35
value = 3102

[State 8000, Helper]
type = Explod
trigger1 = time = 37
anim = 3103
pos = 0,0
postype = p1
removetime = 190
sprpriority = -1
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
Id = 3103

[State 0, ChangeState]
type = ChangeState
triggerall = p2life > 0
trigger1 = parent, stateno != 3300
value = 3303
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
triggerall = p2life <= 0
trigger1 = parent, stateno != 3300

;Desperate Move - Rozan Shoryu Ha (Helper Shiryu)
[Statedef 3303]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 3105
poweradd = 0
ctrl = 0
sprpriority = 2

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3105
trigger1 = animtime = 0
value = 3106

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 3103

[State 0, VelSet]
type = VelSet
triggerall = Anim = 3106
trigger1 = animelem = 2
x = -2
y = -5

[State 0, DestroySelf]
type = DestroySelf
triggerall = anim = 3106
trigger1 = animtime = 0

;Desperate Move - Rozan Shoryu Ha (Helper Shiryu)
[Statedef 3304]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 3106
poweradd = 0
ctrl = 0
sprpriority = 2

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 3103

[State 0, VelSet]
type = VelSet
triggerall = Anim = 3106
trigger1 = animelem = 2
x = -2
y = -5

[State 0, DestroySelf]
type = DestroySelf
triggerall = anim = 3106
trigger1 = animtime = 0

;--------------------------------------------------
;--------------------------------------------------
;Fatality Move
[Statedef 3400]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 3400
poweradd = -3000
ctrl = 0
sprpriority = 2

[State 1000, 0]
type = VarSet
trigger1 = time = 0
v = 7
value = 0

[State 8001, 1]
type = HitDef
trigger1 = AnimElem = 14
attr = S,HA
animtype  = light
hitflag = MA
animtype = light
damage = 600,0
sparkno = S7003
guard.sparkno = -1
sparkxy = 0,-50
pausetime = 15, 15
hitsound = S1,4
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -8,-3
air.velocity = -8,-3
getpower = 0
givepower = 0

[State 8000, Pause2]
Type = SuperPause
trigger1 = Animelem = 1
MoveTime = 0
Time = 120
Pos = 60, -80
anim = S7009
Darken = 1

[State 0, PosAdd]
type = PosAdd
trigger1 = Animelem = 10
y = -15

[State 1112, 2]
type = Velset
trigger1 = Animelem = 10
x = 6

[State 1112, 2]
type = Veladd
trigger1 = Time >= 92
x = 2

[State 1112, 2]
type = Velset
trigger1 = time >= 110
trigger1 = movecontact = 1
x = 0

[State 8000 , 1]
type = PlaySnd
trigger1 = time = 0
value = 190, 2

[State 8000 , 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 900, 0

[State 0, Helper]
type = Helper
trigger1 = Animelem = 7
name = "Elmo"
ID = 3402
stateno = 3402
pos = -13,-105
postype = p1
facing = 1
keyctrl = 0
ownpal = 0

[State 8000, Helper]
type = Explod
trigger1 = Animelem = 1
anim = 3405
pos = 60,0
postype = p1
removetime = 59
sprpriority = 3
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
Id = 3405

[State 8000, Helper]
type = Explod
trigger1 = Animelem = 1
anim = 3406
scale = 0.5, 0.5
pos = 60,0
postype = p1
removetime = 180
sprpriority = 3
supermove = 120
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
Id = 19510

[State 1000, 0]
type = VarSet
triggerall = movecontact = 1
trigger1 = time >= 0
v = 7
value = 1

[State 8000, 6]
type = ChangeState
trigger1 = Movehit
trigger2 = Time >= 157
trigger3 = frontedgedist <= 3
value = 3401

;--------------------------------------------------
;Fatality Move
[Statedef 3401]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 2,0
anim = 3401
ctrl = 0
sprpriority = 2

[State 0, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
ID = 3405

[State 8000, 6]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;Fatality Move (Helper ELMO)
[Statedef 3402]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 3402
ctrl = 0
sprpriority = 3

[State 0, PosAdd]
type = PosAdd
trigger1 = Time = 18
y = -15

[State 1112, 2]
type = Velset
trigger1 = Time = 18
x = 6

[State 1112, 2]
type = Veladd
triggerall = anim != 3409
trigger1 = Time >= 37
x = 2

[State 0, VarSet]
type = VarSet
trigger1 = Time = 0
v = 15
value = 0

[State 0, VarSet]
type = VarSet
trigger1 = pos X = parent, pos X
v = 15
value = 1

[State 1112, 2]
type = Posset
triggerall = var(15) = 0
trigger1 = parent, stateno = 3401
x = parent, pos X

[State 1112, 2]
type = Velset
trigger1 = anim = 3409
y = -3
x = -3

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3402
trigger1 = Time = 6
value = 3404

[State 0, PosAdd]
type = PosAdd
trigger1 = Time = 6
x = 23
y = 26

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3404
trigger1 = Time = 12
value = 3402

[State 0, PosAdd]
type = PosAdd
trigger1 = Time = 12
x = 8
y = -2

[State 0, PosAdd]
type = PosAdd
trigger1 = Time = 18
x = 5
y = 18

[State 0, PosAdd]
type = PosAdd
trigger1 = Time = 24
x = 14
y = -1

[State 0, PosAdd]
type = PosAdd
trigger1 = Time = 30
x = 8
y = 3

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = parent, stateno = 3401
value = 3409

[State 0, AssertSpecial]
type = AssertSpecial
triggerall = anim != 3409
triggerall = parent, stateno != 3401
trigger1 = Time >= 37
flag = invisible

[State 0, DestroySelf]
type = DestroySelf
triggerall = anim = 3409
trigger1 = animtime = 0



;---------------------------------------------------
; Supplica rincoglionente
[Statedef 3500]
type    = S
physics = S
movetype = A
anim = 3500
ctrl = 0
velset = 0,0
sprpriority = -2

[State 8000, explosion]
type = Explod
trigger1 = time = 0
anim = 3501
vel = 0, 0
pos = -4,-80
postype = p1
removetime = 20
sprpriority = -1
supermove = 0
ignorehitpause = 1
ownpal = 1
Id = 3501

[State 3001, 0]
type = VarSet
trigger1 = time = 0
v = 25
value = 1

[State 3001, 0]
type = VarSet
trigger1 = time = 0
v = 23
value = 0

[State 3001, 0]
type = VarSet
trigger1 = time = 0
v = 22
value = 1

[State 8001, 1]
type = HitDef
trigger1 = Time = 1
attr = S,SA
animtype  = medium
hitflag = MA
animtype = medium
damage = 0,0
getpower  = 0
givepower = 0
sparkno = -1
guard.sparkno = -1
sparkxy = 30,-110
pausetime = 15, 60
hitsound = S1,1
ground.type = high
air.type = high
ground.slidetime = 22
ground.hittime = 24
ground.velocity = 0,0
air.velocity = 0,0

[State 3001, 0]
type = VarSet
trigger1 = time = 0
v = 21
value = 1

[State 1800, 2]
type = PlaySnd
trigger1 = Time = 0
value = 3300,0

[State 1800, 7]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------

;preghiera di Shunrei
[Statedef 3600]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 3600
poweradd = -2000
ctrl = 0
sprpriority = 2

[State 2040, 1]
type = Explod
trigger1 = time = 0
anim = 1308
pos = -5,-5
postype = back
removetime = 307
ownpal = 1
supermove = 1
removeongethit = 1
sprpriority = -5
bindtime = -1

[State 700, 4]
type = PlaySnd
trigger1 = animelem = 2
value = 6000,0
channel = 0

[State 700, 4]
type = PlaySnd
trigger1 = animelem = 18
value = 1900,0
channel = 0

;--Stacco Sfere----

[State 700, 4]
type = PlaySnd
trigger1 = time = 244
value = 3600,0
;channel = 1

[State 700, 4]
type = PlaySnd
trigger1 = time = 257
value = 3600,0
;channel = 1

[State 700, 4]
type = PlaySnd
trigger1 = time = 265
value = 3600,0
;channel = 1

[State 700, 4]
type = PlaySnd
trigger1 = time = 273
value = 3600,0
;channel = 1

;-----Fine stacco sfere--------

[State 700, 4]
type = varset
trigger1 = animelem = 1
v = 34
value = 0

[State 700, 4]
type = varset
trigger1 = animelem >= 20
v = 34
value = 1

[State 700, 6]
type = PlaySnd
trigger1 = (Time%35) = 0
value = 3600,1
loop = 1
channel = 4

[State 8000, Pause2]
Type = SuperPause
trigger1 = Animelem = 1
MoveTime = 248
Time = 248
Pos = 60, -80
anim = -1
Darken = 1


[State 40, 2]
type = Explod
trigger1 = time = 0
postype = p1
pos = 0,10
bindtime = -1
removetime = 91
supermove = 248
sprpriority = -2
anim = 3406
;ID = 701

[State 40, 2]
type = Explod
trigger1 = time = 0
postype = p1
pos = -40,0
vel = 0, -2
bindtime = 1
removetime = 60
sprpriority = 5
supermove = 248
anim = 703
;ID = 701

[State 40, 2]
type = Explod
trigger1 = time = 0
postype = p1
vel = 0, -2
pos = 30,10
bindtime = 1
supermove = 248
removetime = 60
sprpriority = 5
anim = 703
;ID = 701

[State 40, 2]
type = Explod
trigger1 = time = 0
postype = p1
pos = -20,-15
vel = 0, -2
bindtime = 1
removetime = 60
sprpriority = 5
anim = 703
supermove = 248
;ID = 701

[State 40, 2]
type = Explod
trigger1 = time = 60
postype = p1
pos = -15,30
vel = 0, -2
bindtime = 1
supermove = 248
removetime = 40
sprpriority = 5
anim = 703
;ID = 701

[State 40, 2]
type = Explod
trigger1 = time = 60
postype = p1
vel = 0, -2
pos = 15,0
bindtime = 1
supermove = 248
removetime = 40
sprpriority = 5
anim = 703
;ID = 701

[State 40, 2]
type = Explod
trigger1 = time = 60
postype = p1
pos = -50,-10
vel = 0, -2
bindtime = 1
supermove = 248
removetime = 40
sprpriority = 5
anim = 703
;ID = 701

[State 191, cosmo] 
type = Explod
trigger1 = AnimElem = 23
postype = p1
pos = 0, 0
bindtime = -1
supermove = 248
removetime = 170
sprpriority = -1
anim = 198

[State 8000, 1a riga]
type = Explod
trigger1 = animElem = 23
anim = 3601
vel = 0, 0
pos = -4,-50
postype = p1
removetime = 170
sprpriority = 3
supermove = 170
ignorehitpause = 1
ownpal = 1
Id = 3601

[State 1200, 3]
type = Projectile
trigger1 = time = 244;322
projanim = 3602
projhitanim = 1904
projremovetime = 80
;projshadow = -1
offset = -28, -5
velocity = 9,-3
accel = 0, 0
projpriority = 2
attr = S, HP
projscale = 2, 2
damage    = 100,50
animtype = heavy
getpower  = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
sparkxy = -20, -50
hitsound = S1,5
guardsound = S6, 0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.Velocity = -3,-5
air.animtype = Back
air.velocity = 0,0
air.juggle = 3

[State 1200, 3]
type = Projectile
trigger1 = time = 257;338
projanim = 3602
projhitanim = 1904
projremovetime = 80
;projshadow = -1
offset = -28, -5
velocity = 9,-3
accel = 0, 0
projpriority = 2
attr = S, HP
projscale = 2, 2
damage    = 100,29
animtype = heavy
getpower  = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
sparkxy = -20, -50
hitsound = S1,5
guardsound = S6, 0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.Velocity = -3,-5
air.animtype = Back
air.velocity = 0,0
air.juggle = 3

[State 1200, 3]
type = Projectile
trigger1 = time = 265; 346
projanim = 3602
projhitanim = 1904
projremovetime = 80
;projshadow = -1
offset = -28, -5
velocity = 9,-3
accel = 0, 0
projpriority = 2
attr = S, HP
projscale = 2, 2
damage    = 100
animtype = heavy
getpower  = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
sparkxy = -20, -50
hitsound = S1,5
guardsound = S6, 0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.Velocity = -3,-5
air.animtype = Back
air.velocity = 0,0
air.juggle = 3

[State 1200, 3]
type = Projectile
trigger1 = time = 273; 354
projanim = 3602
projhitanim = 1904
projremovetime = 80
;projshadow = -1
offset = -28, -5
velocity = 9,-3
accel = 0, 0
projpriority = 2
attr = S, HP
projscale = 2, 2
damage    = 100
animtype = heavy
getpower  = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
sparkxy = -20, -50
hitsound = S1,5
guardsound = S6, 0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.Velocity = -7,-4
air.animtype = Back
air.Velocity = -7, -4
air.juggle = 3
Fall = 1
Air.Fall = 1

[State 8000, 6]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------

; Dodge
[Statedef 1800]
type    = S
physics = S
movetype =  I
anim = 1800
ctrl = 0
velset = 0,0
sprpriority = -2

[State 1800, 1]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1800, 2]
type = PlaySnd
trigger1 = Time = 0
value = 2,2

[State 1800, 3]
type = PlayerPush
trigger1 = 1
value = 0

[State 1800, 4]
type = HitBy
trigger1 = 1
value = SCA, NT,ST,HT

[State 1800, 5]
type = Afterimage
trigger1 = AnimElem = 1
time = 26
length = 10
FrameGap = 6
PalBright = 1,1,1
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = .5,.5,.5
trans = add1

[State 1800, 6]
type = PowerAdd
triggerall = AnimElem = 4
trigger1 = P2MoveType = A
value = 250

[State 1800, 7]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1


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

;---------------------------------------------------
;===================================================
;Combo
;===================================================
;---------------------------------------------------

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
value = 220
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 210) && (movecontact) 
value = 200

;3 pugni 
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
value = 220

;3 pugni 
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
value = 220

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 200) && (movecontact) 
value = 210

;3 pugni 
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
trigger1 = (stateno = 220) && (prevstateno = 210) && (movecontact) 
value = 210


;3 calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 250) 
trigger1 = (movecontact)
value = 240

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
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 250) 
trigger1 = (movecontact)
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 250) && (movecontact) 
value = 250

;3 calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 250
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 230) && (movecontact) 
value = 250

;3 calci 
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
value = 250

;---------------------------------------------------
;===================================================
;Combo Crouching
;===================================================
;---------------------------------------------------

;pugni Abbasati
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

;pugni Abbasati
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 410) 
trigger1 = (movecontact)
value = 410
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 410) && (movecontact) 
value = 420

;calci Abbasati
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

;calci Abbasati
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 440

;calci Abbasati
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 450

;---------------------------------------------------
;===================================================
;Combo Air
;===================================================
;---------------------------------------------------

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 610

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 620

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 610

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 640

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 650

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 650) 
trigger1 = (movecontact)
value = 610

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 600

;combo in salto
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

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 600
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 610) && (movecontact) 
value = 620

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 600
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 620) && (movecontact) 
value = 610

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 610
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 610) && (movecontact) 
value = 620

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 600
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 600) && (movecontact) 
value = 620

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 640

;---------------------------------------------------
;===================================================
;Specials
;===================================================
;---------------------------------------------------

;Charge
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 109])
trigger1 = (P2bodydist X >= 150) && (power <= 2999) && (prevstateno != 5120)
value = 730000

;Colpo di reni
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = L) && (p2statetype != A) && (ctrl) && (random = [110, 164])
trigger1 = (p2movetype != H)
value = 1350

;Verticale
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [165, 219])
trigger1 = (p2bodydist X <= 50) && (prevstateno != 5120)
value = 1450

;Passaggio alle Spalle
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [220, 274])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 1400

;Calcio Volante
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [275, 329])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 1100

;Calcio Volante B
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [330, 384])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) 
value = 1110

;Millepugni
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [385, 439])
trigger1 = (P2bodydist X <= 40) && (prevstateno != 5120)
value = 1000

;Millepugni B
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [440, 494])
trigger1 = (P2bodydist X <= 70) && (prevstateno != 5120)
value = 1010

;Proiettile doppio
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [495, 549])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 1200

;Proiettile forte
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [550, 604])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 1210

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [605,659])
value = 195

;---------------------------------------------------
;===================================================
;Hypers
;===================================================
;---------------------------------------------------

;Furia di Shunrei
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [660, 714])
trigger1 = (P2bodydist X >= 50) && (prevstateno != 5120) && (power >= 3000)
value = 3000

;Preghiera di Shunrei
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [715, 769])
trigger1 = (P2bodydist X >= 50) && (prevstateno != 5120) && (power >= 2000)
value = 3600

;Volonta di Shunrei		
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [770, 824])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) && (power >= 1000) && (power < 2000)
value = 3100

;Desperate Move: Rozan ShoryuHa
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [825, 879])
trigger1 = (P2bodydist X >= 60) && (P2bodydist X >= 150) && (prevstateno != 5120) && (power >= 3000) && (life <= 200)
value = 3300

;Fatality Move: Testata del Dragone
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [880, 934])
trigger1 = (P2bodydist X >= 40) && (prevstateno != 5120) && (power >= 3000) && (p2life <= 200)
value = 3400

;-----------------------------------------------------------------------------
;=============================================================================
;End of Fiore di Luna's AI
;=============================================================================
;-----------------------------------------------------------------------------

[State -2, 1]
type = StopSnd
triggerall = time >= 1
trigger1 = stateno = 901
trigger2 = command != "holdc"
trigger3 = command != "holdz"
trigger4 = power >= 3000
channel = 2

[State -2, 1]
type = StopSnd
triggerall = time >= 1
trigger1 = stateno = 901
trigger2 = command != "holdc"
trigger3 = command != "holdz"
trigger4 = power >= 3000
channel = 3

[State -2, 1]
type = StopSnd
trigger1 = time >= 0
trigger1 = var(34) = 1
channel = 4

;sirio Helper
[State -2, Helper]
type = Explod
trigger1 = prevstateno = 3200
trigger1 = stateno != 3201
trigger1 = stateno != 3202
trigger1 = stateno != 2
trigger1 = time = 1
anim = 1953
pos = 20,0
vel = 0, -6
postype = p1
removetime = 200
sprpriority = 3
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0

;-|Supplica|---------------------------

;supplica 3000 power prima volta
[State -2, 7]
type = Changestate
triggerall = stateno != 3000 && stateno != 3100 && stateno != 3300 && stateno != 3400 && stateno != 3500 && stateno != 3600
triggerall = roundstate = 2
triggerall = power >= 3000
triggerall = statetype != A
triggerall = movetype != H
triggerall = p2life > 0
triggerall = life > 0
trigger1 = var(22) = 0
trigger1 = var(21) != 1
trigger1 = Time = 50
value = 3500
ctrl = 0

;tutte le volte
[State -2, 7]
type = Changestate
triggerall = movetype != a
triggerall = roundstate = 2
triggerall = power >= 3000
triggerall = statetype != A
triggerall = movetype != H
triggerall = p2life > 0
triggerall = life > 0
triggerall = var(22) = 0
triggerall = var(21) = 1
triggerall = var(24) != 1
trigger1 = time = 180
value = 3500
ctrl = 0

[State 3001, 0]
type = VarSet
trigger1 = stateno != 3500
trigger1 = time = 0
v = 22
value = 0

[State 3001, 0]
type = VarSet
trigger1 = power < 3000
trigger1 = time = 0
v = 21
value = 0

[State 3001, 0]
type = VarSet
trigger1 = power >= 3000
trigger1 = var(21) != 1
trigger1 = time = 0
v = 21
value = 2

[State 3001, 0]
type = VarSet
trigger1 = power < 3000
trigger1 = time = 0
v = 23
value = 0

[State 3001, 0]
type = VarSet
trigger1 = power < 3000
trigger1 = time = 0
v = 25
value = 0

[State 3001, 0]
type = VarSet
trigger1 = var(24) = 1
v = 23
value = 1

[State 3001, 0]
type = VarSet
trigger1 = power < 3000
v = 24
value = 0

[State 3001, 0]
type = VarSet
triggerall = power >= 3000
trigger1 = movetype = H
trigger1 = var(25) = 1
v = 24
value = 1

;-------- Cosmo -------

[State -2, 0]
type = varset
triggerall = Alive = 1
triggerall = power >= 3000
trigger1 = time >= 0
v = 30
value = var(30) + 1

[State -2, 1]
type = varset
triggerall = power < 3000
trigger1 = time >= 0
v = 30
value = 0

[State -2, 1]
type = varset
triggerall = power >= 3000
trigger1 = stateno = 3500
v = 30
value = 0

[State -2, 2U]
type = ChangeState
triggerall = roundstate = 2
triggerall = power >= 3000
triggerall = statetype != A
triggerall = p2life > 0
triggerall = life > 0
triggerall = movetype != H
trigger1 = var(24) != 1
Trigger1 = var(30) >= 180
value = 3500

;---------- Hit ------------

[State -2, Hit]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
value = 190,1

[State -2, Hit]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5010
value = 190,1

[State -2, Hit]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5011
trigger2 = anim = 5012
value = 190,1

[State -2, Hit]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 190,1

[State -2, Hit]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5022
value = 190,1

[State -2, Hit]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5100
trigger1 = Alive = 1
value = 190,1


;---- Automatic States -----

[Statedef -3]

[State -3, AI Activate]
type = VarSet
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
var(59) = 1

[State -3, ChangeState]
type = ChangeState
triggerall = IsHelper(3103)
trigger1 = stateno != [3302,3303]
value = 3304
ctrl = 0

[State -3, AfterImageTime]
type = AfterImageTime
trigger1 = time = 0
trigger1 = stateno = [5000,5999]
Time = 0

[State -3 , var]
type = varset
triggerall = 1
trigger1 = p2name = "shiryu"  || p4name = "shiryu"
trigger2 = p2name = "shiryu2" || p4name = "shiryu2"
var(9) = 1

;----------------------------

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 6
value = 3,0

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 6
value = F3,0

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 3
value = 3,1

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 3
value = F3,1

;----------------------------

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

[State -3, AirJump]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
Trans = Add1

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

;----------------------------

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = time = 1
time = 30
PalBright = 10,10,10
PalContrast= 98,98,98
Trans = Add1

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
trigger1 = stateno = 100
trigger1 = AnimElem = 1, = 1
value = 3,0

[State -3, Run Forward]
type = PlaySnd
trigger1 = stateno = 100
trigger1 = AnimElem = 2, = 1
value = 3,1

[State -3, Run Forward]
type = PlaySnd
trigger1 = stateno = 100
trigger1 = AnimElem = 1, = 1
value = F3,0

[State -3, Run Forward]
type = PlaySnd
trigger1 = stateno = 100
trigger1 = AnimElem = 2, = 1
value = F3,1

;----------------------------

[State -3, Run Back]
type = AfterImage
triggerall = stateno = 105
trigger1 = time = 1
time = 15
PalBright = 10,10,10
PalContrast= 98,98,98
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
trigger1 = AnimElem = 5
value = 2,0

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = AnimElem = 5
value = F2,0

;----------------------------
