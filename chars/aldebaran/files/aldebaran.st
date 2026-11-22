;--------------------------------------------------------------------------
; TAURUS ALDEBARAN ST FILE by Tux & tallon
;---------------------------------------------------------------------------

; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
velset = 0,0

[State 170]
type = ChangeState
trigger1 = MatchOver = 0
value = 171

[State 170]
type = ChangeState
trigger1 = MatchOver = 1
value = 172

;-----------------------------
; Lose by Time Over 1
[Statedef 171]
type = S
ctrl = 0
anim = 171
velset = 0,0

[State 171]
type = AssertSpecial
trigger1 = Time = [0,410]
flag = roundnotover

[State 171, 1]
type = PlaySnd
trigger1 = AnimElem = 16
value = 13,0
channel = 0

[State 171, 3]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

; Lose by Time Over 2
[Statedef 172]
type = S
ctrl = 0
anim = 172
velset = 0,0

[State 170, 1]
type     = AssertSpecial
trigger1 = Time = [0,150]
flag     = roundnotover

[State 170, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 13,1
channel = 1

[State 170, 2]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win Pose (state decider)
[Statedef 180]
type = S

; Win Pose 1 (round win)
[State 180]
type = ChangeState
triggerall = Var(9) = 0
trigger1 = Time = 0
trigger1 = MatchOver = 0
value = 181

; Win Pose 2 (match win)
[State 180]
type = ChangeState
triggerall = Var(9) = 0
trigger1 = Time = 0
trigger1 = MatchOver = 1
value = 182

; Win Pose 3 (conditioned by in-game action)
[State 180]
type = ChangeState
triggerall = Var(9) = 1 ;The enemy was killed by the Extreme Great Horn
trigger1 = Time = 0
value = 183

; Win Pose 4 (conditioned by in-game action)
[State 180]
type = ChangeState
triggerall = Var(9) = 2 ;The enemy was killed by the Devastating Great Horn
trigger1 = Time = 0
value = 184

;---------------------------------------
; Win Pose 1 (round win)
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181]
type = PlaySnd
trigger1 = Time = 0
value = 17,0
channel = 0

[State 181, Assert]
type     = AssertSpecial
trigger1 = Time = [0,115]
flag     = roundnotover

[State 181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win Pose 2 (match win)
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, Assert]
type     = AssertSpecial
trigger1 = Time = [0,220]
flag     = roundnotover

[State 182, Jump]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,8
channel = 0

[State 182, Jump]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2,0

[State 182]
type = Explod
trigger1 = AnimElem = 6
anim = 8000
id = 8000
pos = 0,0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1

[State 182]
type = PlaySnd
trigger1 = AnimElem = 6
value = 9,0

[State 183]
type = PlaySnd
trigger1 = AnimElem = 7
value = 17,1
channel = 0

[State 182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win Pose 3 (conditioned by in-game action)
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 183, music]
type = PlaySnd
trigger1 = Time = 0
value = 33,0

[State 183, Girl face]
type = explod
trigger1 = Time = 510
anim = 6998

[State 183, Assert]
type     = AssertSpecial
trigger1 = Time = [0,700]
flag     = roundnotover
flag2	 = nomusic

[State 183]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------

; Win Pose 4 (conditioned by in-game action)
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 184, Assert]
type     = AssertSpecial
trigger1 = Time = [0,100]
flag     = roundnotover

[State 184]
type = PlaySnd
trigger1 = AnimElem = 1
value = 17,2
channel = 0

[State 184]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Intro (state decider)
[Statedef 191]
type = S
ctrl = 0
velset = 0,0

[State 191, vs Mur]
type = Changestate
triggerall = time = 0
triggerall = roundno = 1
trigger1 = p2name = "mu" || p4name = "mu"
value = 194

[State 191, vs Saga(empty armor)]
type = Changestate
triggerall = time = 0
triggerall = roundno = 1
trigger1 = p2name = "saga" || p4name = "saga"
trigger2 = p2name = "gemini" || p4name = "gemini"
trigger3 = p2name = "sagaEvil" || p4name = "sagaEvil"
trigger4 = p2name = "kanonGold" || p4name = "kanonGold"
value = 195

[State 191, vs Hyoga]
type = Changestate
triggerall = time = 0
triggerall = roundno = 1
trigger1 = p2name = "hyoga" || p4name = "hyoga"
value = 196

[State 191, vs Seiya]
type = Changestate
triggerall = time = 0
triggerall = roundno = 1
trigger1 = p2name = "seiya" || p4name = "seiya"
value = 8010

[State 191, vs Pope Ares]
type = Changestate
triggerall = time = 0
triggerall = roundno = 1
trigger1 = p2name = "arles_gemini" || p4name = "arles_gemini"
value = 8011

[State 191]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

;Intro 1 (clothing)
[State 191]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 192

;Intro 2 (cloack)
[State 191]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 193

;---------------------------------------
; Intro 1 (clothing)
[Statedef 192]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 192]
type = AssertSpecial
trigger1 = Time = [0,700]
flag = Intro

[State 192]
type = AssertSpecial
trigger1 = time = [0,700]
flag = nobardisplay

[State 192, box1]
type = Explod
trigger1 = time = 0
anim = 50
pos = 55,2
postype = p1
sprpriority = 3
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 192, box2]
type = Explod
trigger1 = time = 0
anim = 53
pos = 55,2
postype = p1
sprpriority = -3
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 192, box eyes]
type = PlaySnd
trigger1 = Time = 60
value = 5,0

[State 192, box opened]
type = PlaySnd
trigger1 = Time = 135
value = 4,0

[State 192, cloth1]
type = Explod
trigger1 = time = 0
anim = 51
pos = 55,1
postype = p1
sprpriority = -1
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 290

[State 192, cloth2]
type = Explod
trigger1 = time = 290
anim = 52
pos = 55,1
postype = p1
sprpriority = -1
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 192, box light 1]
type = Explod
trigger1 = time = 90
anim = 7040
pos = 53,5
postype = p1
sprpriority = 5
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 192, box light 2a]
type = Explod
trigger1 = time = 145
anim = 7050
pos = 56,1
postype = p1
sprpriority = 1
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 193, box light 2b]
type = Explod
trigger1 = time = 145
anim = 7051
pos = 55,1
postype = p1
sprpriority = -2
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 192, box light in]
type = PlaySnd
trigger1 = time = 180
value = 2,1

[State 192, pieces]
type = PlaySnd
trigger1 = time = 295
value = 7,2

[State 192, flash]
type = EnvColor
trigger1 = time = 295
value = 255,255,255
under = 0
time = 3

[State 192, cloth]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,5

[State 192, cloth]
type = PlaySnd
trigger1 = AnimElem = 8
value = 4,3

[State 192, cloth]
type = PlaySnd
trigger1 = AnimElem = 11
value = 4,1

[State 192, cloth]
type = PlaySnd
trigger1 = AnimElem = 15
value = 4,2

[State 192, cloth]
type = PlaySnd
trigger1 = AnimElem = 18
value = 4,4

[State 192, cloth]
type = PlaySnd
trigger1 = AnimElem = 21
value = 4,1

[State 192, cloth]
type = PlaySnd
trigger1 = AnimElem = 24
value = 4,2

[State 192, cloth]
type = PlaySnd
trigger1 = AnimElem = 28
value = 4,6

[State 192, black bg]
type = BGPalFX
trigger1 = AnimElem = 31
time = 180
add = -255,-255,-255

[State 192, constellation]
type = Explod
trigger1 = AnimElem = 31
anim = 6001
ID = 6001
pos = -130,30
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
removetime = 180

[State 192, constellation bling]
type = PlaySnd
trigger1 = AnimElem = 31
value = 5,4

[State 192, noFG]
type = AssertSpecial
trigger1 = Time >= 519
flag = noFG

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

[State 192, Stand]
type = ChangeState
trigger1 = Time = 700
value = 0
ctrl = 0

;---------------------------------------
; Intro 2 (cloack)
[Statedef 193]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 193, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, 2]
type = EnvShake
trigger1 = AnimElem = 101
time = 15
freq = 50
ampl = 10
phase = 90

[State 193, 3]
type = EnvColor
trigger1 = AnimElem = 101
value = 220,220,0
time = 3
under = 0

[State 193, 4]
type = PlaySnd
trigger1 = AnimElem = 101
value = 7,1

[State 193, 5]
type = Explod
trigger1 = AnimElem = 101
anim = 7010
ID = 7010
pos = 0,0
sprpriority = -3
supermove = 1
removeongethit = 1
bindtime = -1
ownpal = 1
scale = .9, .9

[State 193, 6]
type = Explod
trigger1 = AnimElem = 101
anim = 7020
ID = 7020
pos = 0,2
sprpriority = 2
supermove = 1
removeongethit = 1
bindtime = -1
ownpal = 1
scale = .9, .9

[State 193, 7]
type = Explod
trigger1 = AnimElem = 101
anim = 7030
ID = 7030
pos = 0,5
sprpriority = -2
bindtime = -1
ownpal = 1
scale = .6,.6

[State 193, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 16,0
channel = 0

[State 193, PlaySnd]
type = PlaySnd
trigger1 = animelem = 101
value = 12,2
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

[State 193, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------
;Intro vs Mu
[Statedef 194]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 194]
type = AssertSpecial
trigger1 = Time = [0,80]
flag = Intro

[State 194, PlaySnd]
type = PlaySnd
trigger1 = Time = 30
value = 25,3
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

[State 194]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------
;Intro vs Saga
[Statedef 195]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 195]
type = AssertSpecial
trigger1 = Time = [0,170]
flag = Intro

[State 195, PlaySnd]
type = PlaySnd
trigger1 = Time = 30
value = 25,2
channel = 0

[State 195, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 195]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------
;Intro vs Hyoga
[Statedef 196]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 196]
type = AssertSpecial
trigger1 = Time = [0,470]
flag = Intro

[State 196, PlaySnd]
type = PlaySnd
trigger1 = Time = 150
value = 25,1
channel = 0

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

[State 196]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------
;Intro vs Seiya
[Statedef 8010]
type = S
ctrl = 0
anim = 8010
sprpriority = 4
velset = 0,0

[State 8010, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,420]
flag = Intro

[State 8010, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,420]
flag = nobardisplay

[State 8010, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,420]
flag = nomusic

[State 8010, BGPalFX]
type = BGPalFX
trigger1 = animelem = 1
time = 275
add = 0,0,0
mul = 25,25,25

[State 8010, PlaySnd]
type = PlaySnd
trigger1 = Time = 269
value = 25,0
channel = 0

[State 8010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,1

[State 8010, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 8010]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;------------------------------
;Intro vs Pope Ares
[Statedef 8011]
type = S
ctrl = 0
anim = 8011
velset = 0,0

[State 8011, 1]
type = AssertSpecial
trigger1 = Time = [0,1760]
flag = Intro

[State 8011, PlaySnd]
type = PlaySnd
trigger1 = time = 660
value = 34,3
channel = 0

[State 8011, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 8011, 3]
type = Changestate
trigger1 = Time = 1760
value = 0
ctrl = 0

;---------------------------------------
; Provoking (state decider)
[Statedef 199]
type = S
ctrl = 0
velset = 0,0

[State 199]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

; Provoking
[State 198, 2]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 198

[State 197, 3]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 197

;---------------------------------------
; Provoking 1
[Statedef 198]
type = S
ctrl = 0
anim = 198
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 198, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 14,0
channel = 0

[State 198]
type = ChangeState
trigger1 = Time = 130
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------
; Provoking 2
[Statedef 197]
type = S
ctrl = 0
anim = 197
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 197, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 14,1
channel = 0

[State 197]
type = ChangeState
trigger1 = Time = 240
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Light Punch
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 200
poweradd = 50
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 200 , 2a]
type = HitDef
triggerall = Var(5) < 3
trigger1 = AnimElem = 2
priority = 3
attr = S, NA
damage = 20
getpower = 0
givepower = 0
animtype = light
guardflag = MA
sparkno = s7000
sparkxy = -10,-100
hitsound = s1,0
guardsound = s6,0
pausetime = 0,3
ground.hittime = 8
ground.type = high
ground.slidetime = 8
ground.velocity = -4
air.velocity = -1.5,-3

[State 200 , 2b]
type = HitDef
triggerall = Var(5) >= 3
trigger1 = AnimElem = 2
priority = 3
attr = S, NA
damage = 20
getpower = 0
givepower = 0
animtype = light
guardflag = MA
sparkno = s7000
sparkxy = -10,-100
hitsound = s1,0
guardsound = s6,0
pausetime = 5,1
ground.hittime = 8
ground.type = high
ground.slidetime = 8
ground.velocity = -4
air.velocity = -1.5,-3

[State 200, 3]
type = VarSet
triggerall = AnimElem = 3
trigger1 = !MoveHit
trigger2 = Var(5) >= 3
v = 5
value = 0

[State 200, 4]
type = VarSet
triggerall = AnimElem = 3
trigger1 = MoveHit
trigger1 = Var(5) < 3
v = 5
value = (var(5) + 1)

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Medium Punch
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

[State 210, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 10,12
sparkno = s7001
sparkxy = -10,-110
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2.5,-4

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Heavy Punch
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

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = Hard
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,12
sparkno = s7002
sparkxy = -10,-95
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -15,-10
air.velocity = -8,-6
fall = 1
fall.damage = 10
air.velocity = -10,-5
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Heavy Punch (close)
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 225
sprpriority = 2

[State 225, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

[State 225, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Up
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 5,5
sparkno = s7002
sparkxy = -35,-125
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -3,-7
air.velocity = -0.5,-10
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
fall = 1
fall.damage = 10

[State 225, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Light Kick
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

[State 230, 1]
type = PlaySnd
trigger1 = Time = 3
value = 0,0

[State 230, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = light
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,5
sparkno = s7000
sparkxy = -10,-40
hitsound = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -7
air.velocity = -4,-2

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Light Kick (close)
[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 235
sprpriority = 2

[State 235, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 235, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = light
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
pausetime = 7,9
sparkno = s7000
sparkxy = -30,-90
hitsound = s1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -5
air.velocity = -3,-2

[State 235, 3]
type = PosAdd
trigger1 = AnimElem = 3
x = 5

[State 235, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
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
trigger1 = AnimElem = 4
value = 0,1

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 8,10
sparkno = s7001
sparkxy = -20,-85
hitsound = s1,1
guardsound = s6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
air.velocity = -3,-3

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Heavy Kick
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
trigger1 = AnimElem = 3
attr = S, NA
animtype  = DiagUp
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 6,9
sparkno = s7002
sparkxy = -20,-105
hitsound = s1,2
guardsound = s6,0
ground.type = high
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -5,-11
air.velocity = -4,-10
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
fall = 1
fall.damage = 10

[State 250, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Crouching Light Punch
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
trigger1 = AnimElem = 3
attr = C, NA
damage    = 20
getpower = 0
givepower = 0
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 0,6
sparkno = s7000
sparkxy = -10,-65
hitsound = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouching Medium Punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage    = 30
getpower = 0
givepower = 0
priority  = 3
animtype  = medium
hitflag = MAF
guardflag = LA
pausetime = 9,11
sparkno = s7001
sparkxy = -10,-65
hitsound = s1,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -4
air.velocity = -3,-1

[State 410, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouching Heavy Punch
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

[State 420, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
animtype  = Up
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 15,5
sparkno = s7002
sparkxy = -20,-120
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1,-15
air.velocity = -0.5,-10
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
fall = 1
fall.damage = 10

[State 420, 3]
type = ChangeState
trigger1 = AnimElem = 4
trigger1 = !MoveHit
value = 421
ctrl = 0

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
[Statedef 421]
type    = C
movetype= I
physics = C
ctrl = 0
anim = 421
sprpriority = 2

[State 421]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
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
trigger1 = Time = 1
value = 0,0

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 20
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 7,8
sparkno = s7000
sparkxy = -5,-50
hitsound = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -4
air.velocity = -2,-3

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouching Medium Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = C, NA
damage    = 30
getpower = 0
givepower = 0
animtype  = medium
hitflag = MAF
guardflag = LA
pausetime = 5,8
sparkno = s7001
sparkxy = -10,-75
hitsound = s1,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6,-6
air.velocity = -4,-5
envshake.time =  10
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 440, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouching Heavy Kick
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

[State 450, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 450, Velset]
type = VelSet
trigger1 = AnimElem = 1
x = 12

[State 450, Afterimage]
type = AfterImage
trigger1 = AnimElem = 1
length = 20
PalBright= 0, 0,0
PalContrast= 98,98,98
PalAdd=0,  0,  0
PalMul      =  1,1,1
TimeGap  = 1
FrameGap = 2
Trans = Add1
time = 15

[State 450, Polvere]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 7085
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 450, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 40
getpower = 0
givepower = 0
hitflag = MAFD
guardflag = LA
pausetime = 12,12
sparkno = s7002
sparkxy = 5,0
hitsound = s1,2
guardsound = s6,0
ground.type = Trip
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -2,-2
air.velocity = -1,-3
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
fall = 1

[State 450, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Jumping Light Punch
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 600
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
damage    = 20
getpower = 0
givepower = 0
animtype = Light
guardflag = HA
priority = 3
pausetime = 5,2
sparkno = s7000
sparkxy = -10,-105
hitsound = s1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4
air.velocity = -2,-3

[State 600, 3]
type = CtrlSet
trigger1 = Time = 5
value = 1

;---------------------------------------
; Jumping Medium Punch
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
trigger1 = Time = 0
value = 0,1

[State 610, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
damage = 30
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 9,3
sparkno = s7001
sparkxy = -10,-105
hitsound = s1,1
guardsound = s6,0
animtype = Medium
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -5
air.velocity = -3,-4

[State 610, 3]
type = CtrlSet
trigger1 = Time = 15
value = 1

;---------------------------------------
; Jumping Heavy Punch
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 620
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 40
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 10,12
sparkno = s7002
sparkxy = 0,-55
hitsound = s1,2
guardsound = s6,0
animtype = Hard
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -5
air.velocity = -3,-4
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5

[State 620, 3]
type = CtrlSet
trigger1 = Time = 16
value = 1

;---------------------------------------
; Jumping Light Kick
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 630
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 630, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
animtype = Light
damage = 20
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 8,3
sparkno = s7000
sparkxy = -5,-75
hitsound = s1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -4
air.velocity = -2,-3

[State 630, 3]
type = CtrlSet
trigger1 = Time = 6
value = 1

;---------------------------------------
; Jumping Medium Kick
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
trigger1 = Time = 0
value = 0,1

[State 640, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
animtype = Medium
damage = 30
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 8,3
sparkno = s7001
sparkxy = -10,-65
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -5
air.velocity = -3,-4

[State 600, 3]
type = CtrlSet
trigger1 = Time = 13
value = 1

;---------------------------------------
; Jumping Heavy Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 650
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0,2

[State 650, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
animtype = Hard
damage = 40
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7002
sparkxy = -15,-35
hitsound = s1,2
guardsound = s6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -5,2
air.velocity = -3,1
envshake.time = 15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
fall = 1

[State 600, 3]
type = CtrlSet
trigger1 = Time = 13
value = 1

;---------------------------------------
;Presa Bestiale
[Statedef 800]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 800

[State 800, 1]
type = HitDef
trigger1 = Time = 0
attr = S, ST
damage = 0
getpower = 0
givepower = 0
hitflag = M
priority = 1, Miss
sparkno = -1
p1facing = ifelse (command = "holdfwd", -1, 1)
p2facing = 1
p1stateno = 810
p2stateno = 820
fall = 1

[State 800, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
[Statedef 810]
type = S
movetype= A
physics = N
anim = 810
poweradd = 100

[State 810, Width]
type = Width
trigger1 = Time >= 0
edge = 110,0
player = 0,0

[State 810, PlaySnd voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,8
channel = 0

[State 810]
type = EnvColor
trigger1 = AnimElem = 4
value = 225,222,90
under = 0
time = 3

[State 810, EnvShake]
type = EnvShake
trigger1 = AnimElem = 4
time = 5
freq = 15
ampl = -10
phase = 30

[State 810, PlaySnd presa]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8,0

[State 810, PlaySnd cosmo]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2,1

[State 810, PlaySnd voce]
type = PlaySnd
trigger1 = AnimElem = 11
value = 12,4
channel = 0

[State 810, PlaySnd hit]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1,6

[State 810, EnvShake]
type = EnvShake
trigger1 = AnimElem = 12
time = 25
freq = 60
ampl = -30
phase = 90

[State 810, Explod ground]
type = Explod
trigger1 = AnimElem = 4
anim = 7020
pos = 0,0
facing = 1
vfacing = 1
bindtime = 1
removetime = 36
SprPriority = 5

[State 810, Explod hit]
type = Explod
trigger1 = AnimElem = 12
anim = 7030
pos = 30,25
facing = 1
vfacing = 1
bindtime = 1
removetime = 24
SprPriority = 5

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem =1
value = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 82, 0; -104

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem =2
value = 1

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 82, 0; -107

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem =3
value = 1

[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 82, 0; -109

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem =4
value = 1

[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 82, 0; -111

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem =5
value = 1

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 82, 0 ;-109

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem =6
value = 1

[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = 82, 0; -111

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem =7
value = 1

[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
pos = 82, 0; -109

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem =8
value = 1

[State 810, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8
pos = 82, 0; -111

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem =9
value = 1

[State 810, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9
pos = 82, 0; -109

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem =10
value = 1

[State 810, Bind 10]
type = TargetBind
trigger1 = AnimElem = 10
pos = 82, 0; -111

[State 810, Bind 11]
type = TargetBind
trigger1 = AnimElem = 11
pos = 36, -35

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem =11
value = -1

[State 810, Bind 12]
type = TargetBind
trigger1 = AnimElem = 12
pos = 34, -2

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem =12
value = -1

[State 810, Bind 13]
type = TargetBind
trigger1 = AnimElem = 13
pos = 34, -2

[State 810, Bind 14]
type = TargetBind
trigger1 = AnimElem = 14
pos = 34, -2

[State 810, Bind 15]
type = TargetBind
trigger1 = AnimElem = 15
pos = 34, -2

[State 810, Bind 16]
type = TargetBind
trigger1 = AnimElem = 16
pos = 34, -2

[State 810, Bind 17]
type = TargetBind
trigger1 = AnimElem = 17
pos = 34, -2

[State 810, Bind 18]
type = TargetBind
trigger1 = AnimElem = 18
pos = 34, -2

[State 810, Bind 19]
type = TargetBind
trigger1 = AnimElem = 19
pos = 34, -2

[State 810, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 19
value = -78

[State 810, Throw]
type = TargetState
trigger1 = AnimElem = 19
value = 821

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
;Presa - Custom P2
[Statedef 820]
type = A
movetype = H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[Statedef 821]
type = A
movetype = H
physics = N
velset = 0,0
poweradd = 60

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

;---------------------------------------
;Difesa Impenetrabile (Defense)
[Statedef 860]
type = S
movetype = I
physics = S
anim = 850
juggle = 5
velset = 0,0
ctrl = 0

[State 860, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 7010
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = 90
supermove = 80
sprpriority = -1
removeongethit = 1

[State 860, voice]
type = PlaySnd
trigger1 = Time = 0
value = 12,8
channel = 0

[State 860, pose]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,1

; Final Defense (Atk)
[State 860]
type = Helper
trigger1 = AnimElem = 3
stateno = 863
id = 863
pos = 0,0
postype = p1
keyctrl = 0
ownpal = 1

; Final Defense (Prj)
[State 860]
type = Helper
trigger1 = AnimElem = 3
stateno = 865
id = 865
pos = 0,0
postype = p1
keyctrl = 0
ownpal = 1

; Final Defense (Hyp)
[State 860]
type = Helper
trigger1 = AnimElem = 3
stateno = 867
id = 867
pos = 0,0
postype = p1
keyctrl = 0
ownpal = 1

; Cosmo Release (Atk)
[State 860, 1]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,NA,SA
p1stateno = 861
sparkno = -1
hitsound = s6,0
pausetime = 30,40

; Cosmo Release (Prj)
[State 860, 4]
type = HitOverride
trigger1 = 1
time = 1
attr = SCA,NP,SP
stateno = 861
ignorehitpause = 1
slot = 0

; Auto Guard (Hyp)
[State 860]
type = HitOverride
trigger1 = 1
time = 1
attr = SCA,HA,HP
stateno = 120
ignorehitpause = 1
slot = 1

; Cosmo Release (Var)
[State 860]
type = ChangeState
trigger1 = Var(30) = 1
value = 861

; Auto Guard (Var)
[State 860]
type = ChangeState
trigger1 = Var(31) = 1
value = 120

[State 860, 3]
type = HitBy
trigger1 = 1
value = SCA,AA,AP,HT
time = 2

[State 860, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
;Difesa Impenetrabile (Cosmo Release)
[Statedef 861]
type = S
movetype = A
physics = S
anim = 861
poweradd= 100
juggle = 5
velset = 0,0
ctrl = 0

[State 861]
type = VarSet
triggerall = Var(30) = 1
trigger1 = Time = 0
v = 30
value = 0

; Final Defense (Atk)
[State 861]
type = Helper
triggerall = NumHelper(863) = 0
trigger1 = Time = 0
stateno = 863
id = 863
pos = 0,0
postype = p1
keyctrl = 0
ownpal = 1

; Final Defense (Prj)
[State 861]
type = Helper
triggerall = NumHelper(865) = 0
trigger1 = Time = 0
stateno = 865
id = 865
pos = 0,0
postype = p1
keyctrl = 0
ownpal = 1

; Final Defense (Hyp)
[State 861]
type = Helper
triggerall = NumHelper(867) = 0
trigger1 = Time = 0
stateno = 867
id = 867
pos = 0,0
postype = p1
keyctrl = 0
ownpal = 1

; Cosmo Release (Atk)
[State 861]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,NA,SA
p1stateno = 861
sparkno = -1
hitsound = s6,0
pausetime = 30,40

; Cosmo Release (Prj)
[State 861]
type = HitOverride
trigger1 = 1
time = 1
attr = SCA,NP,SP
stateno = 861
ignorehitpause = 1
slot = 0

; Auto Guard (Hyp)
[State 861]
type = HitOverride
trigger1 = 1
time = 1
attr = SCA,HA,HP
stateno = 120
ignorehitpause = 1
slot = 1

; Cosmo Release (Var)
[State 860]
type = ChangeState
trigger1 = Var(30) = 1
value = 861

; Auto Guard (Var)
[State 860]
type = ChangeState
trigger1 = Var(31) = 1
value = 120

[State 861]
type = HitBy
trigger1 = 1
value = SCA,AA,AP
time = 2

[State 861, absorption]
type = PlaySnd
trigger1 = Time = 0
value = 5,1

[State 861, spark]
type = Explod
triggerall = NumExplod(7005) = 0
trigger1 = Time = 0
anim = 7005
ID = 7005
pos = 10,-90
postype = p1
sprpriority = 2
supermove = 1
removetime = 40
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 861, big light]
type = Explod
trigger1 = Time = 10
anim = 7065
pos = 0,-110
removetime = 120
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
ownpal = 1
removeongethit = 1
scale = 1,1

[State 861, explosion]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,5

[State 861, ground charge]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 4
anim = 7010
ID = 7010
pos = 0,0
sprpriority = -2
ignorehitpause = 1
supermove = 1
removeongethit = 1
bindtime = 1
ownpal = 1
scale = .9, .9

[State 861, air charge]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = AnimElem = 4
anim = 7020
ID = 7020
pos = 0,2
sprpriority = -2
ignorehitpause = 1
supermove = 1
removeongethit = 1
bindtime = 1
ownpal = 1
scale = .9, .9

[State 861, hit]
type = HitDef
trigger1 = AnimElem = 4
priority = 5
attr = S, SA
damage = 50
getpower = 0
givepower = 0
animtype  = Up
sparkno = -1
hitsound = -1
guardsound = -1
pausetime = 1,1
ground.hittime = 1
ground.type = High
ground.slidetime = 1
ground.velocity = -5,-12
air.velocity = -5,-12
envshake.time =  20
envshake.freq = 50
envshake.ampl = 25
envshake.phase = 25
fall = 1
fall.recover = 1
fall.damage = 40
fall.envshake.ampl = 10
fall.envshake.freq = 50
fall.envshake.time = 10
yaccel = .8
p2stateno = 3220

[State 860, voice]
type = PlaySnd
trigger1 = Time = 20
value = 15,0
channel = 0

[State 861]
type = EnvColor
trigger1 = AnimElem = 4
value = 225,222,90
under = 0
time = 10

[State 861]
type = ChangeState
trigger1 = Time = 150
value = 0
ctrl = 1

;---------------------------------------
; Defense 2 (Cosmo Release) p2 state
[Statedef 3220]
type    = A
movetype= H
physics = N
velset = 0, 0
sprpriority = 2

[State 3220, 0]
type = ChangeAnim2
trigger1 = time = 0
value = 3220

[State 3220, 1]
type = Velset
trigger1 = Time = 1
x = -.1
y = -.15

[State 3220, 2]
type = ChangeState
trigger1 = animtime = 0
value = 5600

;---------------------------------------
[Statedef 5600]
type = S
movetype = H
physics = N
velset = -26,0
ctrl = 0

[State 5600, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5600, push]
type = PlayerPush
trigger1 = 1
value = 0

[State 5600, anim]
type = ChangeAnim
trigger1 = 1
value = 5017

[State 5600, shake]
type = EnvShake
trigger1 = time > 5
trigger1 = backedgedist <= 20
time = 10
ampl = 4

[State 5600, end]
type = ChangeState
trigger1 = time > 5
trigger1 = backedgedist <= 20
value = 5610

;---------------------------------------
[Statedef 5610]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 5610, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5610, anim]
type = ChangeAnim
trigger1 = time < 7
value = 5030

[State 5610, anim]
type = ChangeAnim
trigger1 = time = 7
value = 5050

[State 5610, vel]
type = VelSet
trigger1 = time = 7
persistent = 0
x = 3
y = -6

[State 5610, vel]
type = VelAdd
trigger1 = time >= 7
y = 0.45

[State 5610, shake]
type = EnvShake
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
time = 10
ampl = 3

[State 5610, Sound]
type = PlaySnd
triggerall = Anim = 5030
trigger1 = time = 1
value = F7,0

[State 5610, Spark]
type = Explod
triggerall = Anim = 5030
trigger1 = time = 1
anim = f72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 5610, anim]
type = ChangeAnim
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
value = 5050

[State 5610, end]
type = SelfState
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
value = 5100

;---------------------------------------
;Final Defense (Attacks)
[Statedef 863]
type = S
movetype = I
physics = S
anim = 863

[State 863]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 863]
type = NotHitBy
trigger1 = 1
value = SCA,HA,AP,AT

[State 863]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,NA,SA
p1stateno = 864
sparkno = -1
hitsound = s6,0
pausetime = 30,40

[State 863]
type = DestroySelf
trigger1 = parent,Stateno != 860
trigger1 = parent,Stateno != 861

[Statedef 864]
type = S
movetype = I
physics = S

[State 864]
type = ParentVarSet
trigger1 = Time = 0
v = 30
value = 1

[State 864]
type = DestroySelf
trigger1 = Time = 0

;---------------------------------------
;Final Defense (Projectiles)
[Statedef 865]
type = S
movetype = I
physics = S
anim = 863

[State 865]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 865]
type = NotHitBy
trigger1 = 1
value = SCA,AA,HP,AT

[State 865]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,NP,SP
p1stateno = 866
sparkno = -1
hitsound = -1
pausetime = 0,0

[State 865]
type = DestroySelf
trigger1 = parent,Stateno != 860
trigger1 = parent,Stateno != 861

[Statedef 866]
type = S
movetype = I
physics = S

[State 866]
type = ParentVarSet
trigger1 = Time = 0
v = 30
value = 1

[State 866]
type = DestroySelf
trigger1 = Time = 0

;---------------------------------------
;Final Defense (Hypers)
[Statedef 867]
type = S
movetype = I
physics = S
anim = 863

[State 867]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 867]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,NP,SP,AT

[State 867]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,HA,HP
p1stateno = 868
sparkno = -1
hitsound = -1
pausetime = 0,0

[State 867]
type = DestroySelf
trigger1 = parent,Stateno != 860
trigger1 = parent,Stateno != 861

[Statedef 868]
type = S
movetype = I
physics = S

[State 868]
type = ParentVarSet
trigger1 = Time = 0
v = 31
value = 1

[State 868]
type = DestroySelf
trigger1 = Time = 0

;---------------------------------------
; Cosmo Charge (start)
[Statedef 900]
type = S
movetype = I
physics = S
anim = 900
velset = 0,0
ctrl = 0

[State 900, var]
type = VarSet
triggerall = var(59) = 1
trigger1 = Time = 0
v = 10
value = 1

[State 900]
type = PlaySnd
trigger1 = Animelem = 1
value = 9, 1

[State 900, voice]
type = PlaySnd
trigger1 = Animelem = 1
value = 12,7
channel = 0

[State 900]
type = EnvShake
trigger1 = Animelem = 1
time = 30

[State 900]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

;---------------------------------------
; Cosmo Charge (charging)
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901

[State 901, sound]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

[State 901, ground charge]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = 1
anim = 7010
ID = 7010
pos = 0,0
sprpriority = -3
supermove = 1
removeongethit = 1
bindtime = 1
ownpal = 1
scale = .9, .9

[State 901, cosmo]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = Time = 1
pos = 0,0
postype = p1
anim = 8001
ID = 8001
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = -1

[State 901, air charge]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = 1
anim = 7020
ID = 7020
pos = 0,2
sprpriority = 2
supermove = 1
removeongethit = 1
bindtime = 1
ownpal = 1
scale = .9, .9

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

[State 901, big light]
type = Explod
triggerall = NumExplod(7030) = 0
trigger1 = 1
anim = 7030
ID = 7030
pos = 0,5
sprpriority = -5
ignorehitpause = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = -1
ownpal = 1
scale = .6,.6

[State 901, big light]
type = Explod
triggerall = NumExplod(7031) = 0
trigger1 = 1
anim = 7031
ID = 7031
pos = 0,6
sprpriority = -5
ignorehitpause = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = -1
ownpal = 1
scale = .6,.6
vfacing = -1

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

[State 901, End]
type = ChangeState
triggerall = time >= 1
triggerall = Var(59) = 1
trigger1 = random <= 1
trigger2 = p2movetype = A && random <= 100
trigger3 = p2bodydist X <= 100
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

;---------------------------------------
; Cosmo Charge (end)
[Statedef 902]
type = S
movetype = I
physics = S
anim = 902

[State 902, Var]
type = VarSet
trigger1 = Time = 0
v = 10
value = 0

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(6000) >= 1
trigger1 = time = 0
ID = 6000

[State 902]
type = RemoveExplod
triggerall = numexplod(7030) >= 1
trigger1 = time = 0
ID = 7030

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7031) >= 1
trigger1 = time = 0
ID = 7031

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(8001) >= 1
trigger1 = time = 0
ID = 8001

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7020) >= 1
trigger1 = time = 0
ID = 7020

[State 902, shine]
type = PalFX
triggerAll = Power >= 3000
trigger1 = Time = 1
time = 15
add = 0,0,0
sinadd = 20,200,20,3

[State 902, Scuoti]
type = EnvShake
triggerall = power >= 3000
trigger1 = time = 1
time = 50
freq = 60

[State 902, urlo]
type = PlaySnd
triggerAll = Power >= 3000
trigger1 = Time = 1
value = 12,0
channel = 0

[State 902]
type = PlaySnd
triggerAll = Power >= 3000
trigger1 = Time = 1
value = 9,3

[State 902]
type = ChangeState
trigger1 = AnimTime= 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Special Moves (Statedef 1000-2999)
;------------------------------------------------------------------------------

; super pugno - caricamento
[Statedef 1050]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 1050

[State 1050,1]
type = Explod
trigger1 = time = 0
anim = 7010
ID = 7010
pos = 0,0
postype = p1
facing = 1
bindtime = -1
removetime = -1
supermove = -1
removeongethit = 1
sprpriority = -3
supermovetime = -1

[State 1050,2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1050, EnvShake]
type = EnvShake
trigger1 = time > 23
trigger1 = timemod = 10,0
time = 10
freq = 20
ampl = -3
phase = 150

[State 1050,3]
type = PlaySnd
triggerall = Time > 0
trigger1 = (Time % 25) = 0
value = 2,1

[State 1050,4]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,6
channel = 0

[State 1050, Tux]
type = Explod
trigger1 = AnimElem = 2
anim = 9012
ID = 9012
pos = -60,-90
postype = p1
facing = 1
bindtime = -1
removetime = -1
supermove = -1
removeongethit = 1
sprpriority = 3
supermovetime = -1

[State 1050,4] ;debole
type = ChangeState
triggerall = Var(59) = 0
trigger1 = Time = [0,49]
trigger1 = Command != "premuto c"
value = 1052

[State 1050,5] ;medio
type = ChangeState
triggerall = Var(59) = 0
trigger1 = Time = [50,99]
trigger1 = Command != "premuto c"
value = 1053

[State 1050,6] ;forte
type = ChangeState
triggerall = Var(59) = 0
trigger1 = Command = "premuto c"
trigger1 = Time = 100
value = 1051

[State 1050,7] ;debole - AI
type = ChangeState
triggerall = Var(59) = 1
trigger1 = Time = [0,49]
trigger1 = P2BodyDist X <= 50
trigger1 = P2StateType = S
value = 1052

[State 1050,8] ;medio - AI
type = ChangeState
triggerall = Var(59) = 1
trigger1 = Time = [50,99]
trigger1 = P2BodyDist X <= 50
trigger1 = P2StateType = S
value = 1053

[State 1050,9] ;forte - AI
type = ChangeState
triggerall = Var(59) = 1
trigger1 = Time = 100
value = 1051

;super pugno - colpo 1 (forte)
[Statedef 1051]
type    = S
movetype= A
physics = S
velset = 0,0
juggle = 4
ctrl = 0
poweradd = 100
anim = 1051

[State 1051, Tux]
type = RemoveExplod
trigger1 = Time = 0
ID = 9012

[State 1051, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 12,4
channel = 0

[State 1051, RemoveExplod]
type = RemoveExplod
trigger1 =  time = 0
ID = 7010

[State 1051,1]
type= PalFX
trigger1= (!Time)
time= 10
add= 0,0,0
mul= 256,256,256
sinadd= -100,-100,-100, 10
invertall= 0
color= 256

[State 1051,2]
type= BGPalFX
trigger1= movehit = 1
time= 5
add= 75,75,75
mul= 256,256,256
sinadd	= 80,80,80,4
invertall= 0
color	= 256
ignorehitpause= 1

[State 1051,3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage = 90,9
getpower = 0
givepower = 0
animtype = medium
hitflag = MAF
guardflag = MA
priority = 3
pausetime = 3,1
sparkno = s7002
sparkxy = -10,-95
hitsound = s1,1
guardsound = 6,0
ground.type = trip
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -20,-4
fall.damage = 10
fall = 0
fall.recover = 0
air.velocity = -20,-4
envshake.time =8
envshake.freq = 60
envshake.ampl = -5
envshake.phase = 90
p2stateno = 1025

[State 1051,4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;super pugno - colpo 2 (debole)
[Statedef 1052]
type    = S
movetype= A
physics = S
velset = 0,0
juggle = 4
ctrl = 0
poweradd= 100
anim = 1051

[State 1052, Tux]
type = RemoveExplod
trigger1 = Time = 0
ID = 9012

[State 1052, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 12,4
channel = 0

[State 1052,2]
type = PlaySnd
trigger1 = time = 0
value = 0,2

[State 1052,3]
type = RemoveExplod
trigger1 =  time = 0
ID = 7010

[State 1052,3]
type= PalFX
trigger1= (!Time)
time= 10
add= 0,0,0
mul= 256,256,256
sinadd= -100,-100,-100, 10
invertall= 0
color= 256

[State 1052,4]
type= BGPalFX
trigger1= movehit = 1
time= 5
add= 75,75,75
mul= 256,256,256
sinadd	= 80,80,80,4
invertall= 0
color	= 256
ignorehitpause= 1

[State 1052, Explod]
type = Explod
trigger1 =  movehit = 1
anim = 2525
pos = 0,-50
postype = p2
facing = 1
vfacing = 1
bindtime = -1
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 1052, Explod]
type = Explod
triggerall = pos y =0
trigger1 =  time > 5
trigger1 =  time < 7
anim = 3202
pos = 30,20
postype = p1
vel = 15,0
accel = 3,0
facing = 1
vfacing = 1
bindtime = 1
scale = 2,1
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 1052, EnvShake]
type = EnvShake
trigger1 =  time = 5
time = 10
freq = 60
ampl = -3
phase = 90

[State 1052,5]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage = 40,9
getpower = 0
givepower = 0
animtype = medium
hitflag = MAF
priority = 3
guardflag = MA
pausetime = 3,1
sparkno = s7002
sparkxy = -10,-95
hitsound = s1,1
guardsound = 6,0
ground.type = trip
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -20,-4
fall.damage = 10
fall = 0
fall.recover = 0
air.velocity = -20,-4
envshake.time =8
envshake.freq = 60
envshake.ampl = -5
envshake.phase = 90
p2stateno = 1025

[State 1052,6]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;super pugno - colpo 3 (medio)
[Statedef 1053]
type    = S
movetype= A
physics = S
velset = 0,0
juggle = 4
ctrl = 0
poweradd= 100
anim = 1051

[State 1053, Tux]
type = RemoveExplod
trigger1 = Time = 0
ID = 9012

[State 1053, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 12,4
channel = 0

[State 1053,2]
type = PlaySnd
trigger1 = time = 0
value = 0,2

[State 1053,3]
type = RemoveExplod
trigger1 =  time = 0
ID = 7010

[State 1053,3]
type= PalFX
trigger1= (!Time)
time= 10
add= 0,0,0
mul= 256,256,256
sinadd= -100,-100,-100, 10
invertall= 0
color= 256

[State 1053,4]
type= BGPalFX
trigger1= movehit = 1
time= 5
add= 75,75,75
mul= 256,256,256
sinadd	= 80,80,80,4
invertall= 0
color	= 256
ignorehitpause= 1

[State 1053, Explod]
type = Explod
trigger1 =  movehit = 1
anim = 2525
pos = 0,-50
postype = p2
facing = 1
vfacing = 1
bindtime = -1
scale = 1,1
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 1053, Explod]
type = Explod
triggerall = pos y =0
trigger1 =  time > 5
trigger1 =  time < 7
anim = 3202
pos = 30,20
postype = p1
vel = 15,0
accel = 3,0
facing = 1
vfacing = 1
bindtime = 1
scale = 2,1
sprpriority = 20
ownpal = 1
removeongethit = 1

[State 1053, EnvShake]
type = EnvShake
trigger1 =  time = 5
time = 10
freq = 60
ampl = -3
phase = 90

[State 1053,5]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage = 65,9
getpower = 0
givepower = 0
animtype = medium
hitflag = MAF
priority = 3
guardflag = MA
pausetime = 3,1
sparkno = s7002
sparkxy = -10,-95
hitsound = s1,1
guardsound = 6,0
ground.type = trip
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -20,-4
fall.damage = 10
fall = 0
fall.recover = 0
air.velocity = -20,-4
envshake.time =8
envshake.freq = 60
envshake.ampl = -5
envshake.phase = 90
p2stateno = 1025

[State 1053,6]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

; shaking from the hit
; (a custom gethit state)
[Statedef 1025]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 1025

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1026

;---------------------------------------
; Flying through the air
; (a custom gethit state)
[Statedef 1026]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1026, Gravity]
type = VelAdd
trigger1 = 1
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

;---------------------------------------
; Hit wall
; (a custom gethit state)
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

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1027

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

; Bounce off wall
; (a custom gethit state)
[Statedef 1028]
type    = A
movetype= H
physics = N

[State 1028, 1]
type = NotHitBy
trigger1 = 1
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
trigger1 = 1
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
;Carica del Toro
[Statedef 1300]
type = S
movetype = A
physics = N
juggle = 5
velset = 0,0
poweradd = 100
anim = 1300
ctrl = 0
sprpriority = 2

[State 1300,1]
type=Playsnd
trigger1 = animelem = 1
value = 12,9
channel = 0

[State 1300, Explod]
type = Explod
trigger1 = (!time)
anim = 7078
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

[State 1300, Aft]
type = afterimage
trigger1 = time = 0
time = 30
framegap = 2
length = 10
palbright   =   0,  0,  0
palcontrast = 201, 211, 7
paladd      =   0,  0,  0
palmul      =  1,1,1
trans = add1

[State 1300, RUN_FWD]
type = Explod
trigger1 = AnimElem = 1
pos = 25,0
anim = 7085
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 1300, 2]
type=Playsnd
trigger1 = animelem=4||animelem=8
value = 3,0

[State 1300, 3]
type=Playsnd
trigger1 = animelem=2||animelem=6
value = 3,1

[State 1300, 4]
type = EnvShake
trigger1 = animelem=4||animelem=8
time = 5
freq = 80
ampl = 4

[State 1300, 5]
type = velset
trigger1 = time = 0
x = 12
y = 0

[State 1300, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S,SA
animtype = Hard
damage = 80,9
getpower = 0,0
givepower = 0,0
priority = 5,Hit
guardflag = MA
hitflag = MAF
pausetime = 15,15
sparkno = s7079
guard.sparkno = s676700
sparkxy = -53,-70
hitsound = s1,5
guardsound = S6,0
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -20,-10
fall = 1
fall.damage = 10
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
fall.recover = 0
air.velocity = -20,-4
envshake.time =8
envshake.freq = 60
envshake.ampl = -5
envshake.phase = 90
p2stateno = 1125

[State 1300, 6]
type = playerpush
trigger1 = movecontact
trigger1 =! numtarget&&P2movetype != H
value = 0

[State 1300, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = FrontEdgeBodyDist <= 0
value = 0
ctrl = 1

[State 1300, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------
; shaking from the hit
; (a custom gethit state)
[Statedef 1125]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1125, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 1025

[State 1125, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1126

;---------------------------------------
; Flying through the air
; (a custom gethit state)
[Statedef 1126]
type    = A
movetype= H
physics = N

[State 1126, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1126, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 1126, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1126, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1127

[State 1126, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------
; Hit wall
; (a custom gethit state)
[Statedef 1127]
type    = A
movetype= H
physics = N

[State 1127, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1127, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1127, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1127, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1127, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1127, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1027

[State 1127, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1127, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1128

; Bounce off wall
; (a custom gethit state)
[Statedef 1128]
type    = A
movetype= H
physics = N

[State 1128, 1]
type = NotHitBy
trigger1 = 1
value = , NA, NP

[State 1128, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -10

[State 1128, Vel X]
type = VelSet
trigger1 = Time = 0
x = 3

[State 1128, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1128, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 1128, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1128, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1128, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1128, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1128, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100


;--------------------------------------------------------------------------
;Mini sacro toro
[Statedef 1400]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1400
ctrl = 0
poweradd = 60
juggle = 5

[State 1400, PlaySnd voice]
type= PlaySnd
trigger1 = AnimElem = 1
value = 12,10
channel = 0

[State 1400, Beam]
type = helper
trigger1 = AnimElem = 5
id = 1401
postype = P1
sprpriority = 45
pos = 70,-117
stateno = 1401
size.xscale = 1
size.yscale = 1

ignorehitpause = 0
ownpal = 1

[State 1400, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------
;Mini sacro toro Helper Raggio
[Statedef 1401]
type = A
movetype = A
physics = S
anim = 7076
sprpriority = 45

[State 1401]
type = BindToParent
trigger1 = 1
pos = 70,-117

[State 1401, Beam]
type = Hitdef
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
trigger11 = AnimElem = 11
trigger12 = AnimElem = 12
trigger13 = AnimElem = 13
trigger14 = AnimElem = 14
trigger15 = AnimElem = 15
trigger16 = AnimElem = 16
trigger17 = AnimElem = 17
trigger18 = AnimElem = 18
trigger19 = AnimElem = 19
trigger20 = AnimElem = 20
trigger21 = AnimElem = 21
trigger22 = AnimElem = 22
trigger23 = AnimElem = 23
trigger24 = AnimElem = 24
trigger25 = AnimElem = 25
trigger26 = AnimElem = 26
trigger27 = AnimElem = 27
trigger28 = AnimElem = 28
trigger29 = AnimElem = 29
trigger30 = AnimElem = 30
trigger31 = AnimElem = 31
trigger32 = AnimElem = 32
trigger33 = AnimElem = 33
trigger34 = AnimElem = 34
trigger35 = AnimElem = 35
trigger36 = AnimElem = 36
trigger37 = AnimElem = 37
trigger38 = AnimElem = 38
attr = S,SP
hitflag = MAF
guardflag = MA
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = medium
priority = 4,Hit
damage = 1,0
pausetime = 0,0
sparkno = s7001
sparkxy = -20,-0
guard.sparkno = S7006
hitsound = S20,0
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 3
ground.hittime = 3
air.hittime = 3
ground.velocity = -0.5,0
guard.velocity = -0.25
air.velocity = -0.5,0
fall = 0

[State 1401, EnvColor]
type = EnvColor
trigger1 = AnimElem = 39
value = 254,222,114
time = 3

[State 1401, Beam explosion]
type = Hitdef
trigger1 = AnimElem = 39
attr = S,SP
hitflag = MAF
guardflag = MA
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = medium
priority = 4,Hit
damage = 12,6
pausetime = 0,0
sparkno = s7002
sparkxy = -15,-15
guard.sparkno = S7006
hitsound = S1,8
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
ground.velocity = -7,-12
guard.velocity = 0
air.velocity = -7,-4
fall = 1
fall.damage = 10
fall.recover = 0
envshake.time = 50
envshake.freq = 60
envshake.ampl = -10
envshake.phase = 90

[State 1401, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1401, End]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 1400

;---------------------------------------------------------------------------
; Hammer Blow (Colpo mani giunte)
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
poweradd= 100
anim = 1100
ctrl = 0
sprpriority = 2

[State 1100, PlaySnd braccia]
type = PlaySnd
trigger1 = animelem = 1
value = 7,2

[State 1100]
type = Explod
trigger1 = time = 0
anim = 7007
pos = -15,-55
postype = p1
sprpriority = 5
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 1100, PlaySnd urlo]
type = PlaySnd
trigger1 = animelem = 2
value = 12,2
channel = 0

[State 1100, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(16) < 0
value = 5,0

[State 1100, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 1100, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, 2

[State 1100, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Up               ;Make p2 use "Up" type animation on hit
damage    = 55,8
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 15,15
sparkno = s7002
sparkxy = -30,-110
hitsound   = s1,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 26
ground.hittime  = 26
ground.velocity = -1.3,-25
guard.velocity = -11
air.velocity = -1.3,-25
airguard.velocity = -4.5,-5
envshake.time = 25           ;Parameters for shaking the screen on hit
envshake.ampl = 7
envshake.freq = 176
p2facing = 1                 ;Force p2 to face p1 on hit
fall = 1
fall.recover = 0             ;Prevent p2 from recovering
fall.damage = 30             ;p2 will take 50 damage on hitting the ground
fall.envshake.ampl = 6       ;Parameters for shaking the screen on fall
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100            ;Keep p2 a minimum of 50 pixels away from p1, and no higher than 100 pixels up
maxdist = 100,-10            ;Keep p2 a maximum of 100 pixels away from p1, and no lower than 10 pixels below
yaccel = .8                  ;Accelerate p2 downwards rapidly

;This controller below makes Kung Fu man change to a success state if he
;successfully hits the Smash Kung Fu Upper.

[State 1100, 4]
type = ChangeState
trigger1 = MoveHit
value = 1110

[State 1100, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
; Hammer Blow (success)
[Statedef 1110]
type    = S
movetype= A
physics = S
anim = 1110

[State 1110, 1]
type = AfterImageTime
trigger1 = AnimTime < -2
time = 2

[State 1110, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Super Kick
[Statedef 1150]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 100
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2

[State 1150, Brilla]
type = PalFX
trigger1 = AnimElem = 1
time = 10
add = 0,0,0
sinadd = 100,100,200,3

[State 1150, PlaySnd urlo]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,5
channel = 0

[State 1150, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 1150, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = DiagUp
damage    = 70,8
getpower = 0
givepower = 0
guardflag = MA
pausetime = 3,6
sparkno = s7003
sparkxy = -20,-105
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -10,-13
air.velocity = -9,-12
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
p2stateno = 1025
fall = 1
fall.damage = 10
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1150, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------
; Pugni alla Velocità della Luce
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1450
sprpriority = 2

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4
trigger2 = AnimElem = 5 || AnimElem = 6 || AnimElem = 7 || AnimElem = 8
trigger3 = AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12
trigger4 = AnimElem = 13 || AnimElem = 14 || AnimElem = 15 || AnimElem = 16
value = 0,0

[State 1200 , 2]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4
trigger2 = AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12
priority = 3
attr = S, SA
damage = 6,1
getpower = 0
givepower = 0
animtype = light
guardflag = MA
sparkno = s7000
sparkxy = -20,-110
hitsound = s1,0
guardsound = s6,0
pausetime = 0,3
ground.hittime = 8
ground.type = high
ground.slidetime = 8
ground.velocity = -4
air.velocity = -1.5,-3

[State 1200 , 3]
type = HitDef
trigger1 = AnimElem = 5 || AnimElem = 6 || AnimElem = 7 || AnimElem = 8
trigger2 = AnimElem = 13 || AnimElem = 14 || AnimElem = 15 || AnimElem = 16
priority = 3
attr = S, SA
damage = 6
getpower = 0
givepower = 0
animtype = light
guardflag = MA
sparkno = -1
sparkxy = -20,-110
hitsound = s1,0
guardsound = s6,0
pausetime = 0,3
ground.hittime = 8
ground.type = high
ground.slidetime = 8
ground.velocity = -4
air.velocity = -1.5,-3

[State 1200, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------
;Combo del toro 1°parte
[Statedef 1500]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1500
sprpriority = 2

[State 150, Brilla]
type = PalFX
trigger1 = AnimElem = 1
time = 10
add = 0,0,0
sinadd = 100,100,200,3

[State 1500, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

[State 1500, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Up
damage    = 40,8
getpower = 0
givepower = 0
guardflag = MA
pausetime = 5,5
sparkno = s7002
sparkxy = -35,-125
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -0.5,-16
air.velocity = -0.5,-10
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
fall = 1
fall.recover = 0
kill = 0

[State 1500, 2]
type = ChangeState
trigger1 = Movehit = 1
value = 1501
ctrl = 0

[State 1500, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------
;Combo del toro 2°parte
[Statedef 1501]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1501
sprpriority = 2

[State 1501, AfterImage]
type = AfterImage
trigger1 = AnimElem = 15
time = 15
length = 20

[State 1501, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 14,0
channel = 0

[State 1501, 1]
type = PlaySnd
trigger1 = AnimElem = 15
value = 0,2

[State 1501, 2]
type = HitDef
trigger1 = AnimElem = 16
attr = S, SA
animtype  = light
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -15,-125
hitsound = s1,2
guardsound = s6,0
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -10
air.velocity = -7,-5
fall = 1
air.fall = 1
p2stateno = 1025
fall.damage = 10

[State 1501, friction]
type = VelMul
trigger1 = AnimElem = 15
x = 0.5

[State 1501, 3]
type = PosAdd
trigger1 = AnimElem = 16
trigger2 = AnimElem = 17
trigger3 = AnimElem = 18
x = 10

[State 1501, 4]
type = VelSet
trigger1 = AnimElem = 19
x = 2

[State 1501, 5]
type = PosAdd
trigger1 = AnimElem = 23
x = 10

[State 1501, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-----------------------------------------------------------------------------
; Hyper Moves (Statedef 3000-4999)
;-----------------------------------------------------------------------------
;Presa Calpestante
[Statedef 3000]
type = S
movetype = A
physics = S
poweradd = -2000
anim = 1200
juggle = 5
velset = 0,0
ctrl = 0

[State 3000]
type = HitDef
trigger1 = AnimElem = 1
priority = 5
attr = S, HT
damage = 50
getpower = 0
givepower = 0
animtype  = up
sparkno = -1
hitsound = -1
guardsound = -1
ground.hittime = 1
ground.type = High
ground.slidetime = 1
ground.velocity = -5,-12
air.velocity = -5,-12
fall = 1
fall.recover = 1
yaccel = .8
kill = 0
p2stateno = 3221
p2facing = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 5,4

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 22
value = 12,1
channel = 0

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 8
anim = 7032
pos = 139,30
postype = p1
bindtime = -1
removetime = 105
removeongethit = 1
sprpriority = 5
scale = 0.7,0.7

[State 3000, Explod]
type = Explod
trigger1 = AnimElem = 8
anim = 7033
pos = -128,30
postype = p1
bindtime = -1
removetime = 105
removeongethit = 1
sprpriority = 5
scale = 0.7,0.7

[State 3000, cosmo]
type = Explod
trigger1 = AnimElem = 1
anim = 8003
id = 8003
pos = 0,0
postype = p1
bindtime = -1
removetime = 154
removeongethit = 1
sprpriority = -1

[State 3000]
type = RemoveExplod
triggerall = !movehit
trigger1 = AnimElem = 5
ID = 8003

[State 3000, Sound]
type = PlaySnd
triggerall = NumTarget > 0
triggerall = target,StateNo = 5611
trigger1 = target,Time = 1
value = 1,5

[State 3000]
type = ChangeState
triggerall = !movehit
trigger1 = AnimElem = 5
value = 0
ctrl = 1

[State 3000]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 0

;---------
[Statedef 3001]
type = S
movetype = I
physics = S
anim = 0
velset = 0,0
ctrl = 0

[State 3001, ChangeState]
type = ChangeState
trigger1 = P2BodyDist X < 1
value = 3003
ctrl = 0

[State 3001, ChangeState]
type = ChangeState
trigger1 = (P2StateNO = 5612) && (enemy,Anim = 3222)
value = 3002
ctrl = 0


;---------
[Statedef 3002]
type = S
movetype = I
physics = S
anim = 20
velset = 0,0
ctrl = 0

[State 3002, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 9999
anim = -1
sound = -1
movetime = 9999
darken = 1
unhittable = 0

[State 3002]
type = VelSet
trigger1 = P2BodyDist X >= 1
x = const(velocity.walk.fwd.x)

[State 3002, SuperPause]
type = SuperPause
trigger1 = P2BodyDist X < 1
time = 1
movetime = 1
anim = -1
sound = -1
darken = 1
unhittable = 0


[State 3002]
type = ChangeState
trigger1 = P2BodyDist X < 1
value = 3003
ctrl = 0

;---------
[Statedef 3003]
type = S
movetype = A
physics = S
anim = 1250
velset = 0,0
ctrl = 0

[State 3003, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 30,0
channel = 0

[State 3003, Explod]
type = Explod
trigger1 = Time = 21 || Time = 42 || Time = 63 || Time = 84 || Time = 105
trigger2 = Time = 126 || Time = 147 || Time = 168 || Time = 189 ||Time = 210
trigger3 = Time = 231
anim = 7002
pos = 0,-15
postype = p2
bindtime = -1
removetime = 15
sprpriority = 3

[State 3003, PlaySnd]
type = PlaySnd
trigger1 = Time = 21 || Time = 42 || Time = 63 || Time = 84 || Time = 105
trigger2 = Time = 126 || Time = 147 || Time = 168 || Time = 189 ||Time = 210
trigger3 = Time = 231
value = 1,1

[State 3003, PlaySnd]
type = PlaySnd
trigger1 = Time = 260
value = 7,2

[State 3003, Explod]
type = Explod
trigger1 = Time = 260
anim = 9013
ID = 9013
pos = 33,-53
postype = p1
facing = 1
bindtime = -1
removetime = 15
supermove = -1
removeongethit = 1
sprpriority = 3
supermovetime = -1
scale = 1.5,1

[State 3003, EnvColor]
type = EnvColor
trigger1 = Time = 275
value = 254,222,114
time = 2

[State 3003, PlaySnd]
type = PlaySnd
trigger1 = Time = 275
value = 2,3

[State 3003, Explod]
type = Explod
trigger1 = Time = 275
anim = 9920
id = 9920
pos = 30,5
postype = p1
facing = (IfElse(Random <= 499,1,-1))
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 5,10
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
scale = 1.5,1
sprpriority = -8
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
persistent = 0

[State 3003, Explod]
type = Explod
trigger1 = Time = 275
anim = 11102
id = 11102
pos = 0,0
postype	= p2
facing = -1
vfacing	= 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3003, Explod]
type = Explod
trigger1 = Time = 275
anim = 11103
id = 11103
pos = 0,0
postype	= p2
facing = -1
vfacing	= 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3003, EnvShake]
type = EnvShake
trigger1 = Time = 275
time = 50
freq = 60
ampl = -4
phase = 90

[State 3003, PlaySnd]
type = PlaySnd
trigger1 = Time = 282
value = 2,4

[State 3003, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 105
ctrl = 0

;-----------------------------------------------
; P2 customstate
[Statedef 3221]
type    = A
movetype= H
physics = N
velset = 0, 0
sprpriority = 2
ctrl = 0

[State 3221, 0]
type = ChangeAnim2
trigger1 = time = 0
value = 3221

[State 3221, 1]
type = Velset
trigger1 = Time = 1
x = 0
y = 0

[State 3221, 2]
type = Velset
trigger1 = Time = 20
x = -.1
y = -.15

[State 3221, 3 LifeAdd]
type = LifeAdd
trigger1 = Time = 10
trigger2 = Time = 20
trigger3 = Time = 35
trigger4 = Time = 50
trigger5 = Time = 65
trigger6 = Time = 80
trigger7 = Time = 95
trigger8 = Time = 110
value = -10
kill = 0

[State 3221, 4]
type = ChangeState
trigger1 = time = 120
value = 5601

;---------------------------------------
[Statedef 5601]
type = S
movetype = H
physics = N
velset = -26,0
ctrl = 0

[State 5601, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5601, push]
type = PlayerPush
trigger1 = 1
value = 0

[State 5601, anim]
type = ChangeAnim2
trigger1 = 1
value = 5017

[State 5601, shake]
type = EnvShake
trigger1 = time > 5
trigger1 = backedgedist <= 20
time = 10
ampl = 4

[State 5601, end]
type = ChangeState
trigger1 = time > 5
trigger1 = backedgedist <= 20
value = 5611

;---------------------------------------
[Statedef 5611]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 5611, LifeAdd]
type = LifeAdd
trigger1 = Time = 0
value = -60
kill = 0

[State 5611, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5611, anim]
type = ChangeAnim
trigger1 = time < 7
value = 5030

[State 5611, anim]
type = ChangeAnim
trigger1 = time = 7
value = 5050

[State 5611, vel]
type = VelSet
trigger1 = time = 7
persistent = 0
x = 2
y = 0

[State 5611, vel]
type = VelAdd
trigger1 = time >= 7
y = 0.45

[State 5611, shake]
type = EnvShake
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
time = 10
ampl = 3

[State 5611, Spark]
type = Explod
triggerall = Anim = 5030
trigger1 = time = 1
anim = f72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3
supermove = 1

[State 5611, anim]
type = ChangeAnim
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
value = 5050

[State 5611]
type = LifeAdd
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = -20
kill = 0

[State 5611, end]
type = Changestate
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5612

;------------------------
[Statedef 5612]
type    = L
movetype= I
physics = N
velset = 0, 0
sprpriority = 2

[State 5612, Explod]
type = Explod
triggerall = P2stateno = 3000
trigger1 = Time = 2
anim = F60
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
sprpriority = -1
supermove = 1

[State 5612, 0]
type = ChangeAnim2
trigger1 = time = 0
value = 3222

[State 5612, 1]
type = Changestate
trigger1 = enemy,P2BodyDist X < 1
value = 5613

;------------------------
[Statedef 5613]
type    = L
movetype= H
physics = N
velset = 0, 0
sprpriority = 2

[State 5613, 0]
type = ChangeAnim2
trigger1 = time = 0
value = 3223

[State 5613, LifeAdd]
type = LifeAdd
trigger1 = Time = 21 || Time = 42 || Time = 63 || Time = 84 || Time = 105
trigger2 = Time = 126 || Time = 147 || Time = 168 || Time = 189 ||Time = 210
trigger3 = Time = 231
value = -9
kill = 0

[State 5613, Tux]
type = ChangeAnim2
trigger1 = Time = 245
value = 3225

[State 5613, LifeAdd]
type = LifeAdd
trigger1 = Time = 275
value = -51
kill = 1

[State 5613, 1]
type = Changestate
trigger1 = Time = 275
value = 5614
ctrl = 0

;---------------
;P2 scomparso
[Statedef 5614]
type = A
movetype = H
physics	= N
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist	= 0
sprpriority = -2

[State 5614, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 5614, Var x FATALITY]
type = VarSet
triggerall = P2StateNO = 3500
trigger1 = Time = 0
v = 58
value = 1

[State 5614, AssertSpecial]
type = AssertSpecial
triggerall = P2StateNO != 3500
trigger1 = Time <= 60
flag = NoShadow

[State 5614, AssertSpecial x FATALITY]
type = AssertSpecial
trigger1 = P2StateNO = 3500
flag = nokosnd
flag2 = nokoslow
flag3 = NoShadow

[State 5614, AssertSpecial]
type = AssertSpecial
triggerall = P2StateNO != 3500
trigger1 = Time <= 60
flag = invisible

[State 5614, AssertSpecial x FATALITY]
type = AssertSpecial
triggerall = P2StateNO = 3500
trigger1 = 1
flag = invisible

[State 5614, Vel x FATALITY]
type = VelSet
triggerall = P2StateNO = 3500
trigger1 = Time = 0
y = 10000

[State 5614, VelSet]
type = VelSet
triggerall = Alive
trigger1 = P2StateNO != 3500
trigger1 = (Time = 60)
x = -1
y = -8

[State 5614, LifeAdd]
type = LifeAdd
trigger1 = (!Time)
value = -100
absolute = 1

[State 5614, AssertSpecial]
type = AssertSpecial
triggerall = P2StateNO != 3500
trigger1 = !Alive
flag = invisible

[State 5614, Vel]
type = VelSet
triggerall = P2StateNO != 3500
trigger1 = !Alive
y = 10000
persistent = 1

[State 5614, ChangeState]
type = ChangeState
triggerall = P2StateNO != 3500
trigger1 = (Alive) && (Time > 60)
value = 5615
ctrl = 0

[State 5614, SelfState]
type = SelfState
triggerall = (P2StateNO != 3500)
trigger1 = (!Alive)
value = 5150

;---------------------------------------------------------------------------
;P2 ritorno
[Statedef 5615]
type = A
movetype = I
physics = N
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0

[State 5615, ChangeAnim]
type = ChangeAnim
trigger1 = (!Time)
value = IfElse((Vel X) = 0,41,IfElse((Vel X) > 0,42,43))

[State 5615, ChangeAnim]
type = ChangeAnim
trigger1 = (Vel Y > -2) && (SelfAnimExist(Anim + 3))
value = (Anim + 3)
persistent = 0

[State 5615, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 5615, VarSet]
type = VarSet
trigger1 = (!Time)
sysvar(1) = 0

[State 5615, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.40

[State 5615, SelfState]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 52

;---------------------------------------------------------------------------
; Great Horn LV1 (Sacro Toro Terremotante)
[Statedef 3100]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= -1000
velset = 0,0
sprpriority = 0
anim = 3000
ctrl = 0

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 215
anim = -1
sound = -1
movetime = 215
darken = 1

[State 3100, Turn Cosmo 1]
type = RemoveExplod
triggerall = NumExplod(8004) > 0
triggerall = Time > 215
trigger1 = P2Dist X < 0
ID = 8004

[State 3100, Turn Cosmo 2]
type = Explod
triggerall = NumExplod(8004) = 0
triggerall = Time > 215
trigger1 = P2Dist X < 0
anim = 8004
ID = 8004
pos = 0,0
sprpriority = -1
postype = p1
bindtime = -1
removeongethit = 1
removetime = -1
facing = -1

[State 3100, Turn]
type = Turn
triggerall = Time > 215
trigger1 = P2Dist X < 0

[State 3100]
type = Explod
trigger1 = animelem = 1
anim = 3003
ID = 3003
pos = 65,-15
sprpriority = -2
scale = 0.9,0.9
postype = back
bindtime = -1
removeongethit = 1
supermove = 1
removetime = 215

[State 3100, cosmo]
type = Explod
trigger1 = animelem = 22
anim = 8004
ID = 8004
pos = 0,0
sprpriority = -1
postype = p1
bindtime = -1
removeongethit = 1
removetime = 230

[State 3100, Sound voce]
type = PlaySnd
trigger1 = time = 0
value = 31,0
channel = 0

[State 3100, Sound]
type = PlaySnd
trigger1 = time = 215
value = 5,1

;IMPORTANTE: i seguenti EnvShake esistono per coprire anche l'EnvShake
;usato dai "Giant Character" del loro atterraggio dal salto
;indi questi non si toccano
[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 241
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 251
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 261
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 271
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 281
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 291
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 301
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 311
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 321
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 331
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 341
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 351
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 361
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 371
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 381
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 391
time = 10
freq = 60
ampl = -4
phase = 90

[State 3100, EnvShake]
type = EnvShake
trigger1 = Time = 401
time = 15
freq = 60
ampl = -4
phase = 90

[State 3100, Helper terremoto]
type = Helper
trigger1 = AnimElem = 26
ID = 3101
stateno = 3101
pos = 0,0
postype = p1

[State 3100, Explod]
type = Explod
trigger1 = Time = 230
anim = 3004
id = 3004
pos = 0,0
postype	= p1
facing = -1
vfacing	= 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3100, Explod polvere]
type = Explod
trigger1 = Time = 300
anim = 3005
id = 3005
pos = -50,0
postype	= p1
facing = -1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Explod polvere]
type = Explod
trigger1 = Time = 282
anim = 3005
id = 3005
pos = 200,0
postype	= p1
facing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Explod polvere]
type = Explod
trigger1 = Time = 320
anim = 3005
id = 3005
pos = 70,0
postype	= p1
facing = -1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Explod polvere]
type = Explod
trigger1 = Time = 271
anim = 3005
id = 3005
pos = -200,0
postype	= p1
facing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Explod polvere]
type = Explod
trigger1 = Time = 342
anim = 3005
id = 3005
pos = -210,0
postype	= p1
facing = -1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Explod pietra1]
type = Explod
trigger1 = Time = 300
anim = 3007
id = 3007
pos = 150,-20
postype	= p1
facing = -1
bindtime = 1
vel = 0,-3
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Explod pietra1]
type = Explod
trigger1 = Time = 330
anim = 3007
id = 3007
pos = 70,-5
postype	= p1
facing = -1
bindtime = 1
vel = 0,-3
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Explod pietra1]
type = Explod
trigger1 = Time = 260
anim = 3007
id = 3007
pos = -40,-10
postype	= p1
facing = 1
bindtime = 1
vel = 0,-2
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Explod pietra1]
type = Explod
trigger1 = Time = 355
anim = 3007
id = 3007
pos = -80,-15
postype	= p1
facing = -1
bindtime = 1
vel = 0,-3
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Explod pietra1]
type = Explod
trigger1 = Time = 335
anim = 3007
id = 3007
pos = 260,-15
postype	= p1
facing = -1
bindtime = 1
vel = 0,-3
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Explod pietra2]
type = Explod
trigger1 = Time = 290
anim = 3008
id = 3008
pos = -10,-10
postype	= p1
facing = -1
bindtime = 1
vel = 0,-2
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Explod pietra2]
type = Explod
trigger1 = Time = 355
anim = 3008
id = 3008
pos = 200,-20
postype	= p1
facing = -1
bindtime = 1
vel = 0,-4
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Explod pietra2]
type = Explod
trigger1 = Time = 269
anim = 3008
id = 3008
pos = -190,-5
postype	= p1
facing = 1
bindtime = 1
vel = 0,-3
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Explod pietra2]
type = Explod
trigger1 = Time = 375
anim = 3008
id = 3008
pos = -200,-25
postype	= p1
facing = -1
bindtime = 1
vel = 0,-3
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3100, Sound terremoto]
type = PlaySnd
trigger1 = time = 241
value = 2,4

[State 3100, Sound fascio luce]
type = PlaySnd
trigger1 = AnimElem = 40
value = 2,5

[State 3100, helper raggio verticale vicino]
type = helper
triggerall = NumHelper(3102) = 0
triggerall = AnimElem = 38
trigger1 = (Var(59) = 0) && (var(22) = 1)
trigger2 = (Var(59) = 1) && (P2BodyDist X <= 100)
id = 3102
postype = p1
pos = 90,0
stateno = 3102

[State 3100, helper raggio verticale medio]
type = helper
triggerall = NumHelper(3103) = 0
triggerall = AnimElem = 38
trigger1 = (Var(59) = 0) && (var(22) = 2)
trigger2 = (Var(59) = 1) && ((P2BodyDist X > 100) && (P2BodyDist X <= 200))
id = 3103
postype = p1
pos = 170,0
stateno = 3103

[State 3100, helper raggio verticale lontano]
type = helper
triggerall = NumHelper(3104) = 0
triggerall = AnimElem = 38
trigger1 = (Var(59) = 0) && (var(22) = 3)
trigger2 = (Var(59) = 1) && (P2BodyDist X > 200)
id = 3104
postype = p1
pos = 250,0
stateno = 3104

[State 3100, RemEx]
type = RemoveExplod
triggerall = NumExplod(8004) > 0
trigger1 = AnimTime = 0
ID = 8004

[State 3100 , 11]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------
;Terremoto
[Statedef 3101]
type = A
movetype = A
physics = N
anim = 3001

[State 3101,1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
attr = S,HA
animtype = Back
damage = 10
getpower = 0
givepower = 0
numhits = 7
priority = 4
Hitflag = H
sparkno = -1
hitsound = -1
ground.type = Low
pausetime = 0,180
kill = 0

[State 3101,2]
type = HitDef
trigger1 = AnimElem = 8
attr = S,HA
animtype = Back
damage = 10
getpower = 0
givepower = 0
priority = 4
Hitflag = H
sparkno = -1
hitsound = -1
ground.type = Trip
pausetime = 0,0
kill = 0

[State 3101,3]
type = DestroySelf
trigger1 = AnimTime = 0

;-------
;raggio verticale (vicino)
[Statedef 3102]
type = A
movetype = A
physics = N
anim = 3002
sprpriority = 0

[State 3102]
type = BindToParent
trigger1 = 1
pos = 90,0

[State 3102, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3102, 1]
type = HitDef
trigger1 = Time = 20
attr = S, HP
animtype  = Up
damage    = 125,20
getpower = 0
givepower = 0
priority  = 5
numhits = 1
hitflag = MAFD
guardflag = MA
pausetime = 0,5
sparkno = -1
sparkxy = -1,0
hitsound   = -1
guardsound = s6,0
ground.type = Low
ground.slidetime = 26
ground.hittime  = 26
ground.velocity = -1.3,-25
guard.velocity = -11
air.velocity = -1.3,-25
airguard.velocity = -4.5,-5
p2facing = 1
fall = 1
fall.damage = 15
yaccel = .8

[State 3102, Explod]
type = Explod
trigger1 = Time = 20 || Time = 40
anim = 11101
id = 11101
pos = 25,0
postype	= p1
facing = -1
vfacing	= 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3102, Explod]
type = Explod
trigger1 = Time = 25 || Time = 45
anim = 11101
id = 11101
pos = -25,0
postype	= p1
facing = 1
vfacing	= 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3102, Explod]
type = Explod
trigger1 = Time = 20
anim = 3006
id = 3006
pos = 0,10
postype	= p1
facing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3102,2]
type = DestroySelf
trigger1 = AnimTime = 0

;-------------------
;raggio verticale (centrale)
[Statedef 3103]
type = A
movetype = A
physics = N
anim = 3002
sprpriority = 0

[State 3103]
type = BindToParent
trigger1 = 1
pos = 170,0

[State 3103, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3103, 1]
type = HitDef
trigger1 = Time = 20
attr = S, HP
animtype  = Up
damage    = 125,20
getpower = 0
givepower = 0
priority  = 5
numhits = 1
hitflag = MAFD
guardflag = MA
pausetime = 0,5
sparkno = -1
sparkxy = -1,0
hitsound   = -1
guardsound = s6,0
ground.type = Low
ground.slidetime = 26
ground.hittime  = 26
ground.velocity = -1.3,-25
guard.velocity = -11
air.velocity = -1.3,-25
airguard.velocity = -4.5,-5
p2facing = 1
fall = 1
fall.damage = 15
yaccel = .8

[State 3103, Explod]
type = Explod
trigger1 = Time = 20 || Time = 40
anim = 11101
id = 11101
pos = 25,0
postype	= p1
facing = -1
vfacing	= 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3103, Explod]
type = Explod
trigger1 = Time = 25 || Time = 45
anim = 11101
id = 11101
pos = -25,0
postype	= p1
facing = 1
vfacing	= 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3103, Explod]
type = Explod
trigger1 = Time = 20
anim = 3006
id = 3006
pos = 0,10
postype	= p1
facing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3103,2]
type = DestroySelf
trigger1 = AnimTime = 0

;-------------------
;raggio verticale (Lontano)
[Statedef 3104]
type = A
movetype = A
physics = N
anim = 3002
sprpriority = 0

[State 3104]
type = BindToParent
trigger1 = 1
pos = 250,0

[State 3104, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3104, 1]
type = HitDef
trigger1 = Time = 20
attr = S, HP
animtype  = Up
damage    = 125,20
getpower = 0
givepower = 0
priority  = 5
hitflag = MAFD
guardflag = MA
pausetime = 0,5
sparkno = -1
hitsound   = -1
guardsound = s6,0
ground.type = Low
ground.slidetime = 26
ground.hittime  = 26
ground.velocity = -1.3,-25
guard.velocity = -11
air.velocity = -1.3,-25
airguard.velocity = -4.5,-5
p2facing = 1
fall = 1
fall.damage = 15
yaccel = .8

[State 3104, Explod]
type = Explod
trigger1 = Time = 20 || Time = 40
anim = 11101
id = 11101
pos = 25,0
postype	= p1
facing = -1
vfacing	= 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 0
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3104, Explod]
type = Explod
trigger1 = Time = 25 || Time = 45
anim = 11101
id = 11101
pos = -5,0
postype	= p1
facing = 1
vfacing	= 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3104, Explod]
type = Explod
trigger1 = Time = 20
anim = 3006
id = 3006
pos = 0,10
postype	= p1
facing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 0
supermovetime = 0
pausemovetime = 0
sprpriority = 1
removeongethit = 0

[State 3104,2]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Great Horn LV2
[Statedef 3200]
type = S
movetype = A
physics = S
anim = 3100
poweradd = -2000
juggle = 4
ctrl = 0

[State 3200, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 125
anim = -1
sound = -1
movetime = 125
darken = 1

[State 3200, Voice]
type = PlaySnd
trigger1 = time = 0
value = 32,0
channel = 0

[State 3200, Sound]
type = PlaySnd
trigger1 = AnimElem = 52
value = 2,5

[State 3200, sfondo]
type = Explod
trigger1 = animelem = 1
anim = 3104
pos = 0,0
postype = back
bindtime = -1
removetime = 275
supermovetime = 200
sprpriority = -5
scale = 1.2,1.2
ownpal = 1
removeongethit = 1

[State 3200, BGToro]
type = Explod
trigger1 = animelem = 1
anim = 3105
pos = 0,0
postype = back
bindtime = -1
supermovetime = 150
removetime = 150
sprpriority = -3
removeongethit = 1

[State 3200, BGTorostelle]
type = Explod
trigger1 = animelem = 1
anim = 3106
pos = 0,0
postype = back
bindtime = -1
supermovetime = 150
removetime = 150
sprpriority = -4
removeongethit = 1

[State 3200, voice]
type = PlaySnd
trigger1 = time = 150
value = 12,0
channel = 0

[State 3200, Sound]
type = PlaySnd
trigger1 = time = 140
value = 5,5

[State 3200, cosmo]
type = Explod
trigger1 = AnimElem = 1
anim = 3103
id = 3103
pos = 0,0
postype	= p1
bindtime = -1
removetime = 270
supermovetime = 270
pausemovetime = 270
sprpriority = -1
removeongethit = 1

[State 3200, EnvColor]
type = EnvColor
trigger1 = AnimElem = 18
value = 254,222,114
time = 4

[State 3200, Explod]
type = Explod
trigger1 = Time = 150
anim = 3101
ID = 3101
pos = 60,-138
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 3200, Explod]
type = Explod
trigger1 = Time = 150
anim = 3101
ID = 3101
pos = 35,-130
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 3200, helper]
type = helper
trigger1 = AnimElem = 18
id = 3200
postype = p1
pos = 0,0
stateno = 3201

[State 3200, Sound]
type = PlaySnd
trigger1 = (P2StateNO = 1252) && (enemy,Anim = 3224)&& (enemy,Time = 1)
value = 2,6

[State 3200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------
;Vortice
[Statedef 3201]
type = A
movetype = A
physics = N
juggle = 4
anim = 3102
sprpriority = 0

[State 3201]
type = BindToParent
trigger1 = 1
pos = 0,0

[State 3201, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3201, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HP
animtype  = Up
damage = 380,80
getpower = 0
givepower = 0
priority = 5
hitflag = MAF
guardflag = MA
pausetime = 0,5
guard.pausetime = 0,90
sparkno = -1
sparkxy = 0,-90
hitsound = -1
guardsound = s6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -16,-8
guard.velocity = -25
air.velocity = -20,-8
airguard.velocity = -25,-5
p2facing = 1
fall = 1
fall.damage = 20
yaccel = .2
p2stateno = 1250

[State 3201,2]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 3200


; shaking from the hit
; (a custom gethit state)
[Statedef 1250]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1250, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 1025

[State 1250, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1251

;---------------------------------------
; Flying through the air
; (a custom gethit state)
[Statedef 1251]
type    = A
movetype= H
physics = N

[State 1251, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1251, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 1251, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1251, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1252

[State 1251, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------
; Bounce off wall
; (a custom gethit state)
[Statedef 1252]
type    = A
movetype= H
physics = N

[State 1252, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 3224

[State 1252, EnvShake]
type = EnvShake
trigger1 = Time = 1
time = 50
freq = 60
ampl = -4
phase = 90

[State 1252, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 75
postype = back
sprpriority = 3

[State 1252, 1]
type = NotHitBy
trigger1 = 1
value = , NA, NP

[State 1252, Vel Y]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1252, Vel Y]
type = VelSet
trigger1 = Time = 45
y = 3

[State 1252, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5110

;---------------------------------------------------------------------------
; Great Horn LV3
[Statedef 3300]
type = S
movetype = A
physics = S
anim = 3400
poweradd = -3000
juggle = 4
ctrl = 0

[State 3300, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 135
anim = -1
sound = -1
pos = 0,0
movetime = 135
darken = 1

[State 3300, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 32,1
channel = 0

[State 3300, Cosmo]
type = Explod
trigger1 = Time = 0
pos = 0,0
postype = p1
anim = 8006
ID = 8006
sprpriority = -1
ignorehitpause = 1
supermove = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 123

[State 3300, BKG]
type = Explod
trigger1 = Time = 0
pos = 0,0
postype = back
anim = 9007
ID = 9007
sprpriority = -5
ignorehitpause = 1
supermove = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 123

[State 3300, BKG]
type = Explod
trigger1 = Time = 0
pos = 160,180
postype = back
anim = 6002
ID = 6002
sprpriority = -4
ignorehitpause = 1
supermove = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 123

[State 3300, Explod]
type = Explod
trigger1 = AnimElem = 9
anim = 7032
pos = 139,23
postype = p1
bindtime = -1
supermove = 1
removetime = 60
removeongethit = 1
sprpriority = 5
scale = 0.7,0.7

[State 3300, Explod]
type = Explod
trigger1 = AnimElem = 9
anim = 7033
pos = -128,23
postype = p1
bindtime = -1
supermove = 1
removetime = 60
removeongethit = 1
sprpriority = 5
scale = 0.7,0.7

[State 3300, Flash]
type = EnvColor
trigger1 = AnimElem = 10
value = 220,220,0
under = 0
time = 3

[State 3300, Snd]
type = PlaySnd
trigger1 = AnimElem = 10
value = 7,1

[State 3300, Pal]
type = AllPalFX
trigger1 = AnimElem = 10
time = -1
add = 0,0,0
mul = 250,200,50
sinadd = 20,20,20,45
invertall = 0
color = 256

[State 3300, BKG]
type = Explod
trigger1 = AnimElem = 10
pos = 112,65
postype = back
anim = 6003
ID = 6003
sprpriority = -4
ignorehitpause = 1
supermove = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = -1

[State 3300, End]
type = ChangeState
trigger1 = Time = 135
value = 3301
ctrl = 0

;---------------------------------------------------------------------------
; Great Horn LV3 - Sparizione
[Statedef 3301]
type = S
movetype = A
physics = S
anim = 0
ctrl = 0

[State 3301, Inv]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 3301, NotHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3301, Hit]
type = HitDef
trigger1 = 1
guard.dist = 320
getpower = 0
givepower = 0

[State 3301, Var]
type = VarSet
triggerall = enemy,Var(59) = 0
trigger1 = P2StateNo = [120,155]
v = 3
value = 1

[State 3301, Var]
type = VarSet
triggerall = enemy,Var(59) = 1
trigger1 = P2MoveType = A
trigger1 = ((P2StateType = S) || (P2StateType = C))
v = 3
value = 1

[State 3301, End]
type = ChangeState
trigger1 = (P2StateNo = [130,131]) && (enemy,Var(59) = 0)
trigger2 = (Var(3) = 1) && (P2StateType != A) && (enemy,Var(59) = 0)
trigger3 = (command = "a") && (Var(59) = 0)
trigger4 = (command = "b") && (Var(59) = 0)
trigger5 = (command = "c") && (Var(59) = 0)
trigger6 = (command = "x") && (Var(59) = 0)
trigger7 = (command = "y") && (Var(59) = 0)
trigger8 = (command = "z") && (Var(59) = 0)
trigger9 = (command = "holdfwd") && (Var(59) = 0)
trigger10 = (command = "holdback") && (Var(59) = 0)
trigger11 = (command = "holdup") && (Var(59) = 0)
trigger12 = (command = "holddown") && (Var(59) = 0)
trigger13 = (command = "start") && (Var(59) = 0)
trigger14 = (P2MoveType = A) && ((P2StateType = S) || (P2StateType = C)) && (enemy,Var(59) = 1)
trigger15 = (random <= 1) && ((P2StateType = S) || (P2StateType = C)) && (Var(59) = 1)
trigger16 = Time = 180
value = 3302
ctrl = 0

;---------------------------------------------------------------------------
; Great Horn LV3 - Attacco
[Statedef 3302]
type = S
movetype = A
physics = S
anim = 3401
juggle = 4
ctrl = 0

[State 3302, Var]
type = VarSet
triggerall = (Var(3) = 1) && (enemy,Var(59) = 1)
trigger1 = P2StateNo = [120,155]
v = 3
value = 0

[State 3302, NotHit]
type = NotHitBy
trigger1 = Var(3) = 0
value = SCA, NA, NP, NT

[State 3302, NotHit]
type = NotHitBy
trigger1 = Var(3) = 1
value = SCA

[State 3302, RemExp]
type = RemoveExplod
trigger1 = Time = 0
ID = 6003

[State 3302, Pal]
type = AllPalFX
trigger1 = Time = 0
time = -1
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,0
invertall = 0
color = 256

[State 3302, Flash]
type = EnvColor
trigger1 = Time = 0
value = 220,220,0
under = 0
time = 2

[State 3302, Pos]
type = PosSet
triggerall = Time = 0
trigger1 = Facing = 1
trigger1 = enemy,BackEdgeDist >= 125
trigger2 = Facing = -1
trigger2 = enemy,BackEdgeDist < 125
x = enemy,Pos X + 175

[State 3302, Pos]
type = PosSet
triggerall = Time = 0
trigger1 = Facing = -1
trigger1 = enemy,BackEdgeDist >= 125
trigger2 = Facing = 1
trigger2 = enemy,BackEdgeDist < 125
x = enemy,Pos X - 175 

[State 3302, Turn]
type = Turn
triggerall = Time = 0
trigger1 = P2Dist X < 0

[State 3302, Vel]
type = VelSet
trigger1 = Time = 0
x = 15

[State 3302, BKG]
type = Explod
trigger1 = Time = 0
pos = 0,0
postype = back
anim = 9009
ID = 9009
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 72

[State 3302, BKG]
type = Explod
trigger1 = Time = 0
pos = -20,140
postype = back
anim = 9010
ID = 9010
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 72
scale = 1.2,1

[State 3302, BKG]
type = Explod
trigger1 = Time = 0
pos = -50,-125
postype = p1
anim = 6997
ID = 6997
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 30
scale = 0.8,0.8

[State 3302, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 5,4

[State 3302, Snd]
type = PlaySnd
trigger1 = AnimElem = 10
value = 0,5

[State 3302, Vel]
type = VelSet
trigger1 = AnimElem = 11
x = 0

[State 3302, Explod]
type = Explod
trigger1 = AnimElem = 11
anim = 7010
ID = 7010
pos = 40,0
postype = p1
bindtime = -1
removetime = 24
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 3302, Hit]
type = HitDef
triggerall = Var(3) = 0
trigger1 = AnimElem = 13
attr = S, HA
damage = 600,180
getpower = 0
givepower = 0
animtype = hard
hitflag = MAF
guardflag = MA
priority = 4
pausetime = 0,1
sparkno = S7004
sparkxy = -20,-110
hitsound = s1,8
guardsound = 6,0
ground.type = trip
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -20,-4
fall = 0
air.velocity = -20,-4
envshake.time = 15
envshake.freq = 60
envshake.ampl = -5
envshake.phase = 90
p2stateno = 1250

[State 3302, Hit]
type = HitDef
triggerall = Var(3) = 1
trigger1 = AnimElem = 13
attr = S, HA
damage = 570,180
getpower = 0
givepower = 0
animtype = hard
hitflag = MAF
guardflag = MA
priority = 4
pausetime = 0,1
sparkno = S7004
sparkxy = -20,-110
hitsound = s1,8
guardsound = 6,0
ground.type = trip
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -20,-4
fall.damage = 30
fall = 1
fall.recover = 0
air.velocity = -20,-4
envshake.time = 15
envshake.freq = 60
envshake.ampl = -5
envshake.phase = 90
p2stateno = 1025

[State 3302, Explod]
type = Explod
trigger1 = AnimElem = 13
anim = 9011
ID = 9011
pos = 90,-108
postype = p1
bindtime = -1
removetime = 38
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 3302, Explod]
type = Explod
trigger1 = AnimElem = 13
anim = 9008
ID = 9008
pos = 100,-108
postype = p1
bindtime = 1
removetime = 27
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3302, Var]
type = VarSet
triggerall = Var(3) = 1
trigger1 = AnimTime = 0
v = 3
value = 0

[State 3302, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Great Horn Fatality
[Statedef 3500]
type = S
movetype = A
physics = S
anim = 3600
poweradd = -3000
juggle = 5
ctrl = 0

[State 3500, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 249
anim = -1
sound = -1
pos = 0,0
movetime = 249
darken = 1

[State 3500, Timer]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 3500, cosmo]
type = Explod
trigger1 = Time = 0
pos = 0,0
postype = p1
anim = 8005
ID = 8005
sprpriority = -1
ignorehitpause = 1
supermove = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 783

[State 3500, Sound]
type = PlaySnd
trigger1 = time = 0
value = 12,1
channel = 0

[State 3500, Sound]
type = PlaySnd
trigger1 = AnimElem = 31
value = 32,2
channel = 0

[State 3500, sound]
type = PlaySnd
trigger1 = AnimElem = 40
value = 0,2

[State 3500, EnvColor]
type = EnvColor
trigger1 = AnimElem = 46
value = 254,222,114
time = 4

[State 3500, Explod]
type = Explod
trigger1 = AnimElem = 43
anim = 3101
ID = 3101
pos = 60,-125
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 76
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 3500, Explod]
type = Explod
trigger1 = AnimElem = 43
anim = 3101
ID = 3101
pos = 45,-118
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 76
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 3500, Explod]
type = Explod
trigger1 = AnimElem = 46 || AnimElem = 50 || AnimElem = 54
trigger2 = AnimElem = 58  || AnimElem = 62 || AnimElem = 66 || AnimElem = 70
anim = 9001
ID = 9001
pos = 80,80
vel = 6,0
postype = back
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 1
removeongethit = 1
scale = 1.5,1.5

[State 3500, Explod]
type = Explod
trigger1 = AnimElem = 46 || AnimElem = 50 || AnimElem = 54
trigger2 = AnimElem = 58  || AnimElem = 62 || AnimElem = 66 || AnimElem = 70
anim = 7078
ID = 7078
pos = 80,150
vel = 6,0
postype = back
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 1
removeongethit = 1
scale = 1.5,1.5

[State 3500, Explod]
type = Explod
trigger1 = AnimElem = 77
anim = 9002
ID = 9002
pos = -30,-130
postype = p2
facing = -1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 1
removeongethit = 1
scale = 1.5,1.5

[State 3500, sound]
type = PlaySnd
trigger1 = AnimElem = 44
value = 34,2

[State 3500, Explod fasci]
type = Explod
triggerall = (p2name != "cassios") && (p2name != "algethiS") && (p2name != "algethiH") && (p2name != "aldebaran")
trigger1 = Time = 545
anim = 9003
ID = 9003
pos = -10,-50
postype = p2
facing = -1
bindtime = 1
removetime = 55
sprpriority = 1
scale = 1,1

[State 3500, Explod fasci]
type = Explod
triggerall = (p2name = "cassios") || (p2name = "algethiS") || (p2name = "algethiH") || (p2name = "aldebaran")
trigger1 = Time = 545
anim = 9003
ID = 9003
pos = 5,-80
postype = p2
facing = -1
bindtime = 1
removetime = 55
sprpriority = 1
scale = 1,1

[State 3500, sound]
type = PlaySnd
trigger1 = Time = 545 || Time = 560
value = 5,1

[State 3500, Helper Esplosione]
type = Helper
trigger1 = Time = 600
stateno = 3506
postype = p2
pos = -10,-100

[State 3500, Sound Esplosione]
type = PlaySnd
trigger1 = Time = 600
value = 2,2

[State 3500, Helper Esplosione]
type = Helper
trigger1 = Time = 615
stateno = 3507
postype = p2
pos = -50,-65

[State 3500, Sound Esplosione]
type = PlaySnd
trigger1 = Time = 615
value = 1,8

[State 3500, Helper Esplosione]
type = Helper
trigger1 = Time = 630
stateno = 3508
postype = p2
pos = -5,-95

[State 3500, Sound Esplosione]
type = PlaySnd
trigger1 = Time = 630
value = 1,7

[State 3500, Explod trinciapollo]
type = Explod
trigger1 = Time = 645
anim = 7999
ID = 7999
pos = 20,-100
postype = p2
facing = -1
bindtime = 1
removetime = -2
sprpriority = -1

[State 3500, Explod cerchio rosso]
type = Explod
trigger1 = Time = 645
anim = 9004
ID = 9004
pos = 10,-60
postype = p2
facing = -1
bindtime = 1
removetime = -2
sprpriority = -2

[State 3500, Explod sfondo rosso]
type = Explod
trigger1 = Time = 651
anim = 9005
ID = 9005
pos = 0,0
postype = back
facing = 1
vfacing = 1
bindtime = 1
removetime = 50
sprpriority = -2
removeongethit = 1

[State 3500, sound]
type = PlaySnd
trigger1 = Time = 643
value = 34,0

[State 3500, sound]
type = PlaySnd
trigger1 = Time = 644
value = 34,1

[State 3500, Helper]
type = Helper
trigger1 = AnimElem = 46
stateno = 3501

[State 3500, varset]
type = varset
trigger1 = p2life <= 0
v = 9
value = 2

[State 3500, VarSet]
type = VarSet
triggerall = Time = 0
trigger1 = Var(4) = 1
v = 4
value = 0

[State 3500, RemEx]
type = RemoveExplod
triggerall = Time >= 250
trigger1 = Var(4) = 1
ID = 8005

[State 3500, RemEx]
type = RemoveExplod
triggerall = Time >= 250
trigger1 = Var(4) = 1
ID = 3101

[State 3500, Explod]
type = Explod
triggerall = Time >= 250
trigger1 = Var(4) = 1
anim = 9002
ID = 90020
pos = 0,-130
bindtime = 1
removetime = 60
sprpriority = 1
removeongethit = 0
scale = 1.5,1.5

[State 3500, CS]
type = ChangeState
triggerall = Time >= 250
trigger1 = Var(4) = 1
value = 0
ctrl = 1

[State 3500]
type = ChangeState
trigger1 = Time = 788
value = 0
ctrl = 1

;-------
;helper Box rosso
[Statedef 3501]
type = A
movetype = A
physics = N
anim = 3601
sprpriority = 0

[State 3501,1]
type = HitDef
trigger1 = Time = 1
attr = S, HP
damage = 99999
animtype = medium
getpower = 0
givepower = 0
hitflag = M
priority = 3
pausetime = 0,0
sparkno = -1
hitsound = -1
guardsound = -1
ground.type = low
kill = 0
p2stateno = 3502

[State 3501, ParVar]
type = ParentVarSet
triggerall = Time = 2
trigger1 = !MoveHit
v = 4
value = 1

[State 3501, DS]
type = DestroySelf
triggerall = Time = 2
trigger1 = !MoveHit

[State 3501,2]
type = DestroySelf
trigger1 = AnimTime = 0

;-----------------
[Statedef 3502]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3502, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = 120

[State 3502, 2]
type = ChangeState
trigger1 = Time = 5
value = 3503

[Statedef 3503]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3503, Anim]
type = ChangeAnim
trigger1 = 1
value = 130

[State 3503, 2]
type = ChangeState
trigger1 = Time= 150
value = 3504

[Statedef 3504]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3504, Anim]
type = ChangeAnim
trigger1 = 1
value = 120

[State 3504, 2]
type = ChangeState
trigger1 = Time = 135
value = 3505

[Statedef 3505]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3505, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = Time = 0
value = 3602

[State 3505, Sound KO]
type = PlaySnd
trigger1 = (P2StateNO = 3500) && (enemy,Time = 552)
value = 11,0

[State 3505, 2]
type = ChangeState
trigger1 = animtime = 0
value = 5614

;Helper Esplosione 1
[Statedef 3506]
type = A
movetype = I
physics = N
anim = 9000
sprpriority = 5

[State 3506]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3506]
type = AngleDraw
trigger1 = 1
value = 10

[State 3506]
type = Trans
trigger1 = 1
trans = add

[State 3506]
type = DestroySelf
trigger1 = AnimTime = 0

;Helper Esplosione 2
[Statedef 3507]
type = A
movetype = I
physics = N
anim = 90001
sprpriority = 5

[State 3507]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3507]
type = AngleDraw
trigger1 = 1
value = 40

[State 3507]
type = Trans
trigger1 = 1
trans = add

[State 3507]
type = DestroySelf
trigger1 = AnimTime = 0

;Helper Esplosione 3
[Statedef 3508]
type = A
movetype = I
physics = N
anim = 9000
sprpriority = 5

[State 3508]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3508]
type = AngleDraw
trigger1 = 1
value = 50

[State 3508]
type = Trans
trigger1 = 1
trans = add

[State 3508]
type = DestroySelf
trigger1 = AnimTime = 0

;------------------------------------------------------------------------------
; Great Horn Desperate
[Statedef 3400]
type    = S
movetype= A
physics = N
juggle  = 6
poweradd= -3000
velset = 0,0
anim = 3500
ctrl = 0
sprpriority = 1

[State 3400, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 143
anim = -1
sound = -1
pos = 0,0
movetime = 143
darken = 1

[State 3400, Timer]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze

[State 3400, cosmo]
type = Explod
trigger1 = Time = 0
pos = 0,0
postype = p1
anim = 8002
ID = 8002
sprpriority = -1
ignorehitpause = 1
supermove = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 302

[State 3400, Girl face]
type = explod
trigger1 = Time = 0
anim = 6998
removetime = 118
supermove = 1

[State 3400, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,9
channel = 0

[State 3400, 1]
type = PlaySnd
trigger1 = AnimElem = 15
value = 32,3
channel = 0

[State 3400, 2]
type = PlaySnd
trigger1 = AnimElem = 19
value = 0,2

[State 3400, Explod]
type = Explod
trigger1 = AnimElem = 23
anim = 3101
ID = 3101
pos = 60,-125
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 3400, Explod]
type = Explod
trigger1 = AnimElem = 23
anim = 3101
ID = 3101
pos = 45,-118
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 3400, Explod]
type = Explod
trigger1 = AnimElem = 26 || AnimElem = 30 || AnimElem = 34
trigger2 = AnimElem = 38  || AnimElem = 42 || AnimElem = 46 || AnimElem = 50
anim = 9001
ID = 9001
pos = 80,80
vel = 6,0
postype = back
facing = 1
vfacing = 1
bindtime = 1
supermove = 1
removetime = -2
sprpriority = 2
removeongethit = 1
scale = 1.5,1.5

[State 3400, Explod]
type = Explod
trigger1 = AnimElem = 26 || AnimElem = 30 || AnimElem = 34
trigger2 = AnimElem = 38  || AnimElem = 42 || AnimElem = 46 || AnimElem = 50
anim = 7078
ID = 7078
pos = 80,150
vel = 6,0
postype = back
facing = 1
vfacing = 1
bindtime = 1
supermove = 1
removetime = -2
sprpriority = 2
removeongethit = 1
scale = 1.5,1.5

[State 3400, Explod]
type = Explod
trigger1 = AnimElem = 57
anim = 9002
ID = 9002
pos = -30,-130
postype = p2
facing = -1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 2
removeongethit = 1
scale = 1.5,1.5

[State 3400, sound]
type = PlaySnd
trigger1 = AnimElem = 22
value = 34,2

[State 3400, Helper]
type = Helper
trigger1 = AnimElem = 22
stateno = 3402

[State 3400, sound]
type = PlaySnd
trigger1 = Time = 307
value = 1,8

[State 3400, Helper]
type = Helper
trigger1 = Time = 297
ID = 3401
stateno = 3401
pos = 0,-80
postype = p2
sprpriority = 2

[State 3400, varset]
type = varset
trigger1 = p2life <= 0
v = 9
value = 1

[State 3400, 4]
type = ChangeAnim
trigger1 = Time = 302
value = 1

[State 3400, VarSet]
type = VarSet
triggerall = Time = 0
trigger1 = Var(4) = 1
v = 4
value = 0

[State 3400, RemEx]
type = RemoveExplod
triggerall = Time >= 124
trigger1 = Var(4) = 1
ID = 8002

[State 3400, RemEx]
type = RemoveExplod
triggerall = Time >= 124
trigger1 = Var(4) = 1
ID = 3101

[State 3400, Explod]
type = Explod
triggerall = Time >= 124
trigger1 = Var(4) = 1
anim = 9002
ID = 90020
pos = 0,-130
bindtime = 1
removetime = 60
sprpriority = 1
removeongethit = 0
scale = 1.5,1.5

[State 3400, CS]
type = ChangeState
triggerall = Time >= 124
trigger1 = Var(4) = 1
value = 0
ctrl = 1

[State 3400, 4]
type = ChangeState
trigger1 = Time = 342
value = 0
ctrl = 1

;helper
[Statedef 3401]
type = A
movetype = A
physics = N
anim = 9006
sprpriority = 2

[State 3401, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3401, Freeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3500, EnvColor]
type = EnvColor
trigger1 = Time = 10
value = 254,222,114
time = 2

[State 3401,1]
type = HitDef
trigger1 = Time = 10
attr = S, HP
damage = 600
animtype = medium
getpower = 0
givepower = 0
hitflag = MA
priority = 3
pausetime = 0,0
sparkno = -1
hitsound = -1
guardsound = -1
ground.velocity = 40,-10
air.velocity = 40,-10
ground.type = low
fall.recover = 0
fall = 1
kill = 1
p2stateno = 1125
p1sprpriority = 2
envshake.time = 5
envshake.freq = 180
envshake.ampl = 5
envshake.phase = 90

[State 3401,2]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = parent,stateno != 3400

;helper Box rosso Desperate
[Statedef 3402]
type = A
movetype = A
physics = N
anim = 3601
sprpriority = 0

[State 3402,1]
type = HitDef
trigger1 = Time = 1
attr = S, HP
damage = 0
animtype = medium
getpower = 0
givepower = 0
hitflag = M
priority = 3
pausetime = 0,0
sparkno = -1
hitsound = -1
guardsound = -1
ground.type = low
kill = 0
p2stateno = 3403

[State 3402, ParVar]
type = ParentVarSet
triggerall = Time = 2
trigger1 = !MoveHit
v = 4
value = 1

[State 3402, DS]
type = DestroySelf
triggerall = Time = 2
trigger1 = !MoveHit

[State 3402,2]
type = DestroySelf
trigger1 = AnimTime = 0

;-----------------
[Statedef 3403]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3403, Anim]
type = ChangeAnim
trigger1 = 1
value = 120

[State 3403, Pos]
type = PosAdd
trigger1 = (Time >= 15 && Time <= 150)
x = -0.25

[State 3403, Dust]
type = MakeDust
trigger1 = (Time >= 15 && Time <= 150)
pos = 0,0

[Statedef -2]

;---------------------------------------------------------------------------
; AI Variables (Statedef -2)
;---------------------------------------------------------------------------

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

[State -2, Moves list]
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

[State -2, Var Reset]
type = VarSet
triggerall = Var(3) = 1
trigger1 = (StateNo != 3301) && (StateNo != 3302)
v = 3
value = 0

; Cosmo Release (Var)
[State -2]
type = ChangeState
triggerall = StateType != A
trigger1 = (StateNo != 860) && (StateNo != 861)
trigger1 = Var(30) = 1
value = 861

; Auto Guard (Var)
[State -2]
type = ChangeState
triggerall = StateType != A
trigger1 = (StateNo != 860) && (StateNo != 861)
trigger1 = Var(31) = 1
value = 120

;---------------------------------------------------------------------------
; Random Sounds
;---------------------------------------------------------------------------

; Strong Punch/Kick
[State -2]
type = PlaySnd
triggerall = time = 1
triggerall = random < 250
trigger1 = stateno = 225
trigger2 = stateno = 220
trigger3 = stateno = 250
trigger4 = stateno = 420
trigger5 = stateno = 450
trigger6 = stateno = 620
trigger7 = stateno = 650
value = 12,3
channel = 0

; Hit
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
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10,2

[State -2]
type = PlaySnd
trigger1 = random < 500
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10,2

[State -2]
type = PlaySnd
trigger1 = random < 750
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 10,1

;---------------------------------------------------------------------------
; AI Combos
;---------------------------------------------------------------------------

; Supercombo
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
value = 235
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 210) && (movecontact)
value = 230
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 235) && (movecontact)
value = 240
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 230) && (movecontact)
value = 225

; 3 Punches
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

; 3 Punches + Mini Sacro Toro
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
value = 225
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 225) && (prevstateno = 200) && (movecontact)
value = 1400

; 3 Kicks
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

; 3 Kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235)
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 235) && (movecontact)
value = 250

; 3 Kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240)
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 240) && (movecontact)
value = 250

; 3 Kick + Super Calcio
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230)
trigger1 = (movecontact)
value = 235
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 230) && (movecontact)
value = 240
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 235) && (movecontact)
value = 1150

; 3 Crouch Punches
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

; 2 Crouch Kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430)
trigger1 = (movecontact)
value = 440

; 2 Crouch Kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430)
trigger1 = (movecontact)
value = 450

; 3 Air Punches
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600)
trigger1 = (movecontact)
value = 620
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 620) && (prevstateno = 600) && (movecontact)
value = 610

; 3 Air Kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640)
trigger1 = (movecontact)
value = 630
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 630) && (prevstateno = 640) && (movecontact)
value = 650

;---------------------------------------------------------------------------
; AI Special Moves
;---------------------------------------------------------------------------

; Carica Cosmo
[State -2]
type = changestate
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 99])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120) && (power < 3000)
value = 900

; Presa Bestiale
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (stateno != 100) && (random = [100, 149])
trigger1 = (P2bodydist X < 40) && (prevstateno != 5120) && (p2movetype != H)
value = 800

; Difesa Impenetrabile
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [150, 199])
trigger1 = (P2bodydist X >= 50) && (prevstateno != 5120) && (p2movetype = A)
value = 860

; Colpo a Martello
[State -2]
type = changestate
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [200, 249])
trigger1 = (P2bodydist X <= 60) && (prevstateno != 5120)
value = 1100

; Carica del Toro
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [250, 299])
trigger1 = (P2bodydist X >= 50) && (prevstateno != 5120)
value = 1300

; Pugno trattenuto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [300, 349])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120)
value = 1050

; Mini Sacro Toro
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [350, 399])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120)
value = 1400

; Super Calcio
[State -2]
type = changestate
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [400, 449])
trigger1 = (P2bodydist X <= 60) && (prevstateno != 5120)
value = 1150

; Pugni alla Velocità della Luce
[State -2]
type = changestate
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [450, 499])
trigger1 = (P2bodydist X <= 30) && (prevstateno != 5120)
value = 1200

; Combo del Toro
[State -2]
type = changestate
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [500, 549])
trigger1 = (P2bodydist X <= 40) && (prevstateno != 5120)
value = 1500

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [550,599])
value = 199

;---------------------------------------------------------------------------
; AI Hyper Moves
;---------------------------------------------------------------------------

; Sacro Toro Terremotante
[State -2]
type = changestate
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [600, 649])
trigger1 = (P2bodydist X >= 20) && (prevstateno != 5120) && (power >= 1000) && (power < 2000)
value = 3100

; Presa Calpestante
[State -2]
type = changestate
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [650, 699])
trigger1 = (P2bodydist X <= 30) && (prevstateno != 5120) && (power >= 2000) && (stateno != 100) && (p2movetype != H)
value = 3000

; Sacro Toro
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [700, 749])
trigger1 = (P2bodydist X >= 140) && (prevstateno != 5120) && (power >= 2000)
value = 3200

; Sacro Toro Corrida
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [750, 799])
trigger1 = (P2bodydist X <= 320) && (prevstateno != 5120) && (power >= 3000)
value = 3300

;---------------------------------------------------------------------------
; AI Desperate Moves
;---------------------------------------------------------------------------

; Sacro Toro Estremo
[State -2]
type = changestate
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [800, 849])
trigger1 = (P2bodydist X >= 30) && (prevstateno != 5120) && (power >= 3000) && (life <= 250)
value = 3400

;---------------------------------------------------------------------------
; AI Fatality Moves
;---------------------------------------------------------------------------

; Sacro Toro Devastante
[State -2]
type = changestate
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [850, 899])
trigger1 = (P2bodydist X >= 30) && (prevstateno != 5120) && (power >= 3000) && (p2life <= 250)
value = 3500

;---------------------------------------------------------------------------
; Automatic States (Statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3, AI Activate]
type = VarSet
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
var(59) = 1

;-------------------------------------
; Remove Explods
;-------------------------------------

[State -3, Cosmo 1]
type = RemoveExplod
triggerall = NumExplod(2) >= 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = Life <= 250
ID = 2

[State -3, Cosmo 2]
type = RemoveExplod
triggerall = NumExplod(3) >= 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = Life > 250
ID = 3

;---------------------------------------

[State -3, Walk Forward]
type = PlaySnd
triggerall = Anim = 20
trigger1 = Animelem = 4
value = 3, 0

[State -3, Walk Forward]
type = PlaySnd
triggerall = Anim = 20
trigger1 = Animelem = 9
value = 3, 1

[State -3, Walk Back]
type = PlaySnd
triggerall = Anim = 21
trigger1 = Animelem = 3
value = 3, 0

[State -3, Walk Back]
type = PlaySnd
triggerall = Anim = 21
trigger1 = Animelem = 8
value = 3, 1

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
value = 2, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = time = 1
value = F2, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 3
value = 3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 5
value = 3, 1


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
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = 5150
trigger1 = time = 9
value = 6, 1

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9