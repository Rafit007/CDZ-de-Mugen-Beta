;-------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, Assert]
type = AssertSpecial
trigger1 = Time = [0,350]
flag = roundnotover

[State 170]
type = PlaySnd
trigger1 = Animelem = 1
value = 13,5
channel = 0

[State 170]
type = PlaySnd
trigger1 = Animelem = 2
value = 5,6

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180]
type = ChangeState
trigger1 = Var(4) = 1
value = 183

[State 180]
type = ChangeState
trigger1 = Var(5) = 1
value = 184

[State 180]
type = ChangeState
triggerall = Var(4) = 0
triggerall = Var(5) = 0
trigger1 = MatchOver = 0
value = 181

[State 180]
type = ChangeState
triggerall = Var(4) = 0
triggerall = Var(5) = 0
trigger1 = MatchOver = 1
value = 182

;-------------------------------------------------------
; Win 1 (round win)
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = roundnotover

[State 181]
type = PlaySnd
trigger1 = time = 25
value = 13,3
channel = 0

[State 181]
type = PlaySnd
trigger1 = time = 0
value = 0,5

[State 181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-------------------------------------------------------
; Win 2 (match win) by Tux
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182]
type = AssertSpecial
trigger1 = Time = [0,270]
flag = roundnotover

[State 182]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,1
channel = 0

;-------------------------------------------------------
; Win 3 (fatality) by Tux
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 183]
type = AssertSpecial
trigger1 = Time = [0,240]
flag = roundnotover

[State 183]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,4
channel = 0

[State 183]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-------------------------------------------------------
; Win 4 (desperate) by Tux
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 184]
type = AssertSpecial
trigger1 = Time = [0,220]
flag = roundnotover

[State 184]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13,25
channel = 0

[State 184]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-------------------------------------------------------
; Intro state decider
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190]
type = ChangeState
triggerall = (P2Name = "jabu") || (P4Name = "jabu")
trigger1 = Time = 0
value = 193

[State 190]
type = ChangeState
triggerall = (P2Name = "ikki") || (P4Name = "ikki")
trigger1 = Time = 0
value = 194

[State 190]
type = ChangeState
triggerall = (P2Name = "orpheus") || (P4Name = "orpheus")
trigger1 = Time = 0
value = 195

[State 190]
type = ChangeState
triggerall = (P2Name = "arles_gemini") || (P4Name = "arles_gemini")
trigger1 = Time = 0
value = 196

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

;-------------------------------------------------------
; Intro 1 (cloth)
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191]
type = AssertSpecial
trigger1 = Time = [0,680]
flag = Intro
flag = nobardisplay

[State 191, box 1]
type = Explod
trigger1 = AnimElem = 1
pos = -40,4
anim = 1910
ID = 1910
sprpriority = 3

[State 191, box 2]
type = ModifyExplod
trigger1 = time = 96
pos = -40,4
anim = 1910
ID = 1910
sprpriority = -3

[State 191, box light 1]
type = Explod
trigger1 = AnimElem = 1
pos = -40,4
anim = 7040
sprpriority = 4
removetime = 80

[State 191, cloth]
type = Explod
trigger1 = time = 80
pos = -43,2
anim = 1911
sprpriority = -4

[State 191, box light 2]
type = Explod
trigger1 = time = 80
pos = -40,-2
anim = 7050
sprpriority = -1
removetime = 70

[State 191, cloth light]
type = Explod
trigger1 = time = 225
pos = -43,-150
anim = 7001
sprpriority = 0

[State 191]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,0

[State 191]
type = PlaySnd
trigger1 = time = 70
value = 1,15

[State 191]
type = PlaySnd
trigger1 = AnimElem = 71
value = 3,0

[State 191]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2,0

[State 191]
type = PlaySnd
trigger1 = AnimElem = 61
value = 13,7
channel = 0

[State 191]
type = Explod
trigger1 = time = 50
pos = -42,-3
anim = 8098
sprpriority = 1

[State 191]
type = PlaySnd
trigger1 = time = 225
value = 4,4

[State 191]
type = PlaySnd
trigger1 = time = 270
value = 5,9

[State 191, Tux]
type = PlaySnd
trigger1 = Time = 120
value = 2,0

[State 191]
type = Explod
trigger1 = time = 120
pos = 0,8
anim = 8099
removetime = 130
sprpriority = -2

[State 191]
type = Explod
trigger1 = time = 230
pos = 0,-150
anim = 7009
sprpriority = 5

[State 191]
type = PlaySnd
trigger1 = time = 60
value = 4,6

[State 191]
type = PlaySnd
trigger1 = AnimElem = 37
value = 4,1

[State 191]
type = PlaySnd
trigger1 = AnimElem = 41
value = 4,2

[State 191]
type = PlaySnd
trigger1 = AnimElem = 47
trigger2 = AnimElem = 53
value = 4,3

[State 191]
type = PlaySnd
trigger1 = AnimElem = 50
trigger2 = AnimElem = 56
value = 4,2

[State 191]
type = PlaySnd
trigger1 = AnimElem = 60
value = 4,5

[State 191]
type = PlaySnd
trigger1 = AnimElem = 71
value = 3,2

[State 191]
type = Explod
trigger1 = AnimElem = 72
scale = 0.8,0.8
postype = p1
pos = 0,50
anim = 6001
ID = 6001
sprpriority = -1
bindtime = -1
removetime = 94

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

[State 191, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;-------------------------------------------------------
; Intro 2 by Tux
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192]
type = AssertSpecial
trigger1 = Time = [0,255]
flag = Intro

[State 192] 
type = AssertSpecial
trigger1 = Time = [0,255]
flag = nobardisplay

[State 192]
type = PlaySnd
triggerall = Anim = 192
trigger1 = AnimElem = 1
value = 9,0
channel = 27

[State 192]
type = PlaySnd
triggerall = Anim = 192
trigger1 = AnimElem = 1
value = 13,0
channel = 28

[State 192]
type = Explod
triggerall = Anim = 192
trigger1 = AnimElem = 1
postype = p1
pos = 0,0
anim = 1920
sprpriority = -1
bindtime = -1
removetime = 255

[State 192]
type = Explod
triggerall = Anim = 192
trigger1 = AnimElem = 1
scale = 0.65,0.65
postype = p1
pos = -65,-175
anim = 6000
ID = 6000
sprpriority = -1
bindtime = -1
removetime = 255

[State 192, explod]
type = Explod
trigger1 = AnimElem = 1
anim = 8041
pos = 0,0
postype = back
sprpriority = -2
removetime = 255
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove= 1

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

[State 192, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;-------------------------------------------------------
; Intro vs Jabu
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193]
type = AssertSpecial
trigger1 = Time = [0,920]
flag = Intro

[State 193]
type = AssertSpecial
trigger1 = Time = [0,920]
flag = nobardisplay

[State 193]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,8

[State 193]
type = PlaySnd
trigger1 = AnimElem = 8
value = 13,21
channel = 25

[State 193]
type = PlaySnd
trigger1 = AnimTime = 0
value = 5,6

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
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;-------------------------------------------------------
; Intro vs Ikki by Tux
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 194]
type = AssertSpecial
trigger1 = Time = [0,83]
flag = Intro

[State 194]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,18
channel = 0

[State 194]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;-------------------------------------------------------
; Intro vs Orpheus by FobiaZ
[Statedef 195]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 195]
type = AssertSpecial
trigger1 = Time = [0,450]
flag = Intro

[State 195]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,2
channel = 0

[State 195]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;-------------------------------------------------------
; Intro vs Saga Ares by mikehaggar
[Statedef 196]
type = S
ctrl = 0
anim = 1
velset = 0,0

[State 196]
type = AssertSpecial
trigger1 = Time = [0,840]
flag = Intro

[State 196]
type = PlaySnd
trigger1 = time = 300
value = 13,6

[State 196]
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
type = Changestate
trigger1 = Time = 840
value = 0
ctrl = 0

;-------------------------------------------------------
; Provoking state decider
[Statedef 197]
type = S
ctrl = 0
velset = 0,0

[State 197]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 197]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 198

[State 197]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 199

;-------------------------------------------------------
; Provoking 1
[Statedef 198]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 181
sprpriority = 2

[State 198]
type = PlaySnd
trigger1 = time = 0
value = 0,5
channel = 29

[State 198]
type = PlaySnd
trigger1 = time = 0
value = 13,12	
channel = 29

[State 198]
type = ChangeState
trigger1 = time = 320
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Provoking 2
[Statedef 199]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 199
sprpriority = 2

[State 199]
type = PlaySnd
trigger1 = time = 0
value = 13,23
channel = 30

[State 199]
type = ChangeState
trigger1 = time = 430
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Standing LP
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 200
sprpriority = 2

[State 200]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,12

[State 200]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 20
guardflag = MA
pausetime = 12,12
sparkno = s7000
sparkxy = -20,-76
hitsound   = S1,2
guardsound = S6,1
animtype = Light
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity= -3,0
ground.cornerpush.veloff=-5;,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 1
getpower = 0
givepower = 0

[State 200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
; Standing LP (close)
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 205
sprpriority = 2

[State 205]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,12

[State 205]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Light
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
pausetime = 13,13
sparkno = s7000
sparkxy = -20,-76
hitsound   = S1,2
guardsound = S6,1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.type = Low
air.hittime = 15
air.velocity = -6,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
envshake.time = 5
envshake.ampl = 5

[State 205]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
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
sprpriority = 2

[State 210]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,12

[State 210]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12,1

[State 210]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype = Medium
hitflag = MAF
priority = 4, Hit
damage    = 15
getpower = 0
givepower = 0
guardflag = MA
pausetime = 5,8
sparkno = s7001
sparkxy = -50,-75
hitsound   = S1,2
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3
air.type = High
air.velocity = -5,-4
envshake.time =  10
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 210]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
damage    = 15
getpower = 0
givepower = 0
pausetime = 10,10
sparkno = s7001
sparkxy = -30,-75
hitsound   = S1,2
guardsound = S6,1
ground.type = High
ground.slidetime = 14
ground.hittime = 14
ground.velocity = -8.71
ground.cornerpush.veloff = 0;-13.38
air.type = Low
air.hittime = 18
air.velocity = -5,0
air.cornerpush.veloff = 0
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120
envshake.time =  10
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5

[State 210]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------
; Standing MP (close)
[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 215
sprpriority = 2

[State 215]
type = PlaySnd
trigger1 = Time = 2
value = 0,6

[State 215]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12,1

[State 215]
type = PlaySnd
trigger1 = time= 4
value = 5,5

[State 215]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-50
hitsound   = S1,0
guardsound = S6,1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -5
air.velocity = -5,-4
envshake.time =  10
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5

[State 215]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Standing HP
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = 50
ctrl = 0
velset = 0,0
anim = 220
sprpriority = 2

[State 220]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,12

[State 220]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 20
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 6, 10
sparkno = s7002
sparkxy = -20, -64
hitsound   = S1,10
guardsound = S6,1
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 4		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12
envshake.time =  10
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5

[State 220]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 12
sparkno = s7002
sparkxy = -10, -75
hitsound   = S1,10
guardsound = S6,1
animtype = hard			;light,medium,hard,back,up,diagup
air.animtype = back
ground.type = high		;  high,middle,low,trip
air.type = high
ground.slidetime=16
ground.hittime=16
ground.velocity=-13
air.hittime=12
air.velocity=-5,-7
ground.cornerpush.veloff = -17
guard.cornerpush.veloff = -17
air.cornerpush.veloff = -11
yaccel= 0.55
persistent=0
fall = 1
air.fall = 0
fall.recover = 1
envshake.time = 5
envshake.freq = 110
envshake.ampl = 4
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 4	;strong weak

[State 220]
type = PlaySnd
trigger1 = Time = 1
value = 0,6

[State 220]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12,0
channel = 0

[State 200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Standing HP (close)
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = 50
ctrl = 0
velset = 0,0
anim = 225
sprpriority = 2

[State 225]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12,0
channel = 0

[State 225]
type = HitDef
trigger1 =time = 0
attr = S, NA
damage = 40
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 12
sparkno = s7002
sparkxy = -20, -70
hitsound   = S1,7
guardsound = S6,0
ground.type=High
ground.slidetime=14
ground.hittime=14
ground.velocity=-10
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 3
getpower = 0
givepower = 0

[State 225]
type = PlaySnd
trigger1 = Time = 4
value = 0,3

[State 225]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Standing LK
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = 50
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 230]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0

[State 230]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = s7000
sparkxy = -13, -45
hitsound   = S1,1
guardsound = S6, 0
animtype = Light
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=-3,0
ground.cornerpush.veloff=-5;,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 1
getpower = 0
givepower = 0

[State 230]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Standing LK (close)
[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 50
ctrl = 0
velset = 0,0
anim = 235
sprpriority = 2

[State 235]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 235]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage    = 20
guardflag = MA
pausetime = 10,10
sparkno = s7000
sparkxy = -10,-70
hitsound   = S1,1
guardsound = S6,0
animtype = Light
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=-3,0
ground.cornerpush.veloff=-5;,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 1
getpower = 0
givepower = 0

[State 235]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Standing MK
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 50
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 240]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 240]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 10,10
sparkno = s7001
sparkxy = -10,-80
hitsound   = S1,7
guardsound = S6,0
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=11
ground.velocity=-3
air.type=Low
air.velocity=-3,-2
ground.cornerpush.veloff = -13
guard.cornerpush.veloff = -13
air.cornerpush.veloff = -9
envshake.time = 0
envshake.freq = 100
envshake.ampl = 6
fall.envshake.time = 0
fall.envshake.freq = 100
fall.envshake.ampl = 6
fall=0
air.fall=0
fall.recover=1

[State 240]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Standing MK (close)
[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 50
ctrl = 0
velset = 0,0
anim = 245
sprpriority = 2

[State 245]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 245]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 30			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF
pausetime = 12,12
sparkno = s7001
sparkxy = -20,-70
hitsound   = S1,7
guardsound = S6,0
animtype = Medium
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=-3,0
ground.cornerpush.veloff=-5;,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
getpower = 0
givepower = 0

[State 245]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------
; Standing HK
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
trigger1 = Time = 6
value = 0,1

[State 250]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -15,-85
hitsound   = S1,8
guardsound = S6,0
animtype = Hard
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 3
getpower = 0
givepower = 0

[State 250]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Crouching LP
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
trigger1 = Time = 1
value = 0,6

[State 400]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,10
sparkno = s7000
sparkxy = -5,-43
hitsound   = S1,3
guardsound = S6,1
ground.type = Low
ground.slidetime = 10
ground.hittime = 18
guard.ctrltime = 18
ground.velocity = -4
air.velocity = -2, -3
air.cornerpush.veloff = 0
getpower = 0
givepower = 0

[State 400]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------
; Crouching MP
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

[State 410]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,8

[State 410] 
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
hitflag = MAF
guardflag = L
pausetime = 10,10
sparkno = s7001
sparkxy = -5,-10
hitsound   = S1,1
guardsound = S6,1
animtype = Medium
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-6
down.velocity = -5,0
down.hittime = 20
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
envshake.time = 9
envshake.ampl = 2
getpower = 0
givepower = 0

[State 410]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------
; Crouching HP
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
trigger1 = AnimElem = 1
value = 0,8

[State 420] 
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 40
getpower = 0
givepower = 0
animtype  = Heavy
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-48
hitsound   = S1,2
guardsound = S6,1
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7,-4
envshake.time =  15 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 420]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------
; Crouching LK
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
trigger1 = AnimElem = 1
value = 0,8

[State 430]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7000
sparkxy = -5,-50
hitsound   = S1,3
guardsound = S6,1
ground.type = Low
ground.slidetime = 16
ground.hittime = 17
guard.ctrltime = 15
ground.velocity = -6.5
air.velocity = -3, -4
air.cornerpush.veloff = 0
getpower = 0
givepower = 0

[State 430]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------
; Crouching MK
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

[State 440]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 440]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7001
sparkxy = -5,-7
hitsound   = S1,7
guardsound = S6,0
animtype = Medium
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-6
down.velocity = -5,0
down.hittime = 20
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
down.velocity=-3,-3
yaccel=.5
envshake.time = 9
envshake.ampl = 2
getpower = 0
givepower = 0

[State 440]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------
; Crouching HK
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 50
velset = 8,0
ctrl = 0
anim = 450
sprpriority = 2

[State 450]
type = PlaySnd
trigger1 = Time = 2
value = 0,3

[State 450]
type = Explod
trigger1 = AnimElem = 2
pos = 50,0
anim = 7085
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 450]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 40
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002
sparkxy = -5,-7
hitsound   = S1,8
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.5,0
guard.velocity = -5
fall = 1
envshake.time =  15 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 450]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------
; Jumping LP
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
trigger1 = AnimElem = 1
value = 5,12

[State 600]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 30			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA		;Flags on how move is to be guarded against
priority = 3
pausetime = 10,10
sparkno = s7000
sparkxy = -10,-71
hitsound   = S1,3
guardsound = S6,1
animtype = medium			;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup".
air.animtype = medium
ground.type = low			;  high,middle,low,trip
air.type = Low
ground.slidetime=11
ground.hittime=14
ground.velocity=-5
air.velocity = -2,((vel y)-.2)
getpower=0
yaccel = 0.55
ground.cornerpush.veloff = -8
guard.cornerpush.veloff = -8
air.cornerpush.veloff = -5
getpower = 0
givepower = 0
envshake.time = 0
envshake.freq = 110
envshake.ampl = 4
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 4	;strong weak
fall = 0
air.fall = 0
fall.recover = 1

;-------------------------------------------------------
; Jumping MP
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
trigger1 = AnimElem = 1
value = 0,7

[State 610]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,7

[State 610]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA		;Flags on how move is to be guarded against
priority = 4
pausetime = 12,12
sparkno = s7001
sparkxy = -15,-30
hitsound   = S1,1
guardsound = S6,1
animtype = Light
air.animtype = light
ground.type = low
air.type = Low
ground.slidetime=9
ground.hittime=12
ground.velocity=-3
yaccel = 0.55
ground.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
air.cornerpush.veloff = -4
air.velocity = -1,((vel y)-.2)
getpower = 0
givepower = 0
envshake.time=9
envshake.ampl=1
fall = 0
air.fall = 0
fall.recover = 1

;-------------------------------------------------------
; Jumping HP
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
trigger1 = Time = 3
value = 0,3

[State 620]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,7

[State 620]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = A, NA			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA			;Flags on how move is to be guarded against
damage = 20
priority = 4
pausetime = 10,12
sparkno = s7002
sparkxy = 0,-40
hitsound   = S1,2
guardsound = S6,1
animtype = hard			;light,medium,hard,back,up,diagup
air.animtype = back
ground.type = low		;  high,middle,low,trip
air.type = high
ground.slidetime=12
ground.hittime=16
ground.velocity=-7
air.velocity = -8,8
getpower = 0
givepower = 0
envshake.time=12
envshake.ampl=3
yaccel = 0.55
envshake.time = 5
envshake.freq = 110
envshake.ampl = 4
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 4
fall = 0
air.fall = 0
fall.recover = 1

;-------------------------------------------------------
; Jumping LK
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
trigger1 = Time = 3
value = 0,3

[State 630]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,7

[State 630]
type = HitDef
trigger1 = Time = 0
attr = A, NA			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA		;Flags on how move is to be guarded against
damage = 20
priority = 3
pausetime = 10,10
sparkno = s7000
sparkxy = 0,-40
hitsound   = S1,5
guardsound = S6,1
animtype = Light
air.animtype = light
ground.type = low
air.type = Low
ground.slidetime=9
ground.hittime=12
ground.velocity=-3
yaccel = 0.55
ground.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
air.cornerpush.veloff = -4
air.velocity=-1.5,((vel y)-.2)
getpower = 0
givepower = 0
envshake.time=9
envshake.ampl=1
fall = 0
air.fall = 0
fall.recover = 1

;-------------------------------------------------------
; Jumping MK
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
trigger1 = Time = 1
value = 0,2

[State 640]
type = HitDef
trigger1 = Time = 0
attr = A, NA			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA		;Flags on how move is to be guarded against
damage = 30
priority = 3
pausetime = 10,10
sparkno = s7001
sparkxy = -15,-65
hitsound   = S1,7
guardsound = S6,0
animtype = medium			;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup".
air.animtype = medium
ground.type = low			;  high,middle,low,trip
air.type = Low
ground.slidetime = 9
guard.slidetime = 9
ground.hittime = 10
guard.hittime = 20
guard.ctrltime = 20
ground.velocity = -5
yaccel = 0.55
air.velocity = -3,-4
airguard.velocity = -3,-2.5
ground.cornerpush.veloff = -8
guard.cornerpush.veloff = -8
air.cornerpush.veloff = -5
getpower = 0
givepower = 0
envshake.time = 0
envshake.freq = 110
envshake.ampl = 4
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 4	;strong weak
fall = 0
air.fall = 0
fall.recover = 1

;-------------------------------------------------------
; Jumping HK
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 650
sprpriority = 2

[State 650]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 650]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 40			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = HA			;Flags on how move is to be guarded against
priority = 4
pausetime = 12,12
sparkno = s7002
sparkxy = -25,-35
hitsound   = S1,8
guardsound = S6,0
animtype = hard			;light,medium,hard,back,up,diagup
air.animtype = back
ground.type = low		;  high,middle,low,trip
air.type = high
ground.slidetime = 17
ground.hittime = 18
guard.ctrltime = 10
ground.velocity = -6
yaccel = 0.55
air.velocity = -3, -4
ground.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
air.cornerpush.veloff = -6
getpower = 0
givepower = 0
envshake.time = 5
envshake.freq = 110
envshake.ampl = 4
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 4	;strong weak
fall = 0
air.fall = 0
fall.recover = 1

;-------------------------------------------------------
; Chain Shock by Tux
[Statedef 830]
type = S
movetype = A
physics = S
anim = 830
poweradd= 50
juggle = 5
velset = 0,0
ctrl = 0

[State 830]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 830]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,9
channel = 1

[State 830]
type = Explod
trigger1 = AnimElem = 2
ID = 7060
anim = 7060
pos = -15,-125
postype = p1
sprpriority = 5
supermove = 1
removetime = 24
ignorehitpause = 1
bindtime = -1
persistent = 0
ownpal = 1
removeongethit = 1

[State 830]
type = HitDef
trigger1 = Time = 4
attr = S, SP
damage = 10
getpower = 0
givepower = 0
priority = 3
guardflag = MA
pausetime = 1,5
sparkno = s8094
sparkxy = -25,-75
hitsound   = S1,12
guardsound = S6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = 0,0
air.velocity = 0,0
palfx.time = 20
palfx.color = 64
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 96,96,96,4

[State 830]
type = StopSnd
triggerall = MoveContact
trigger1 = Time >= 4
channel = 1

[State 830]
type = HitDef
trigger1 = Time = 8
attr = S, SP
damage = 10
getpower = 0
givepower = 0
priority = 3
guardflag = MA
pausetime = 1,5
sparkno = -1
sparkxy = -25,-75
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = 0,0
air.velocity = 0,0
palfx.time = 20
palfx.color = 64
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 96,96,96,4

[State 830]
type = HitDef
trigger1 = Time = 12
attr = S, SP
damage = 10
getpower = 0
givepower = 0
priority = 3
guardflag = MA
pausetime = 1,5
sparkno = -1
sparkxy = -25,-75
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = 0,0
air.velocity = 0,0
palfx.time = 20
palfx.color = 64
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 96,96,96,4

[State 830]
type = HitDef
trigger1 = Time = 16
attr = S, SP
damage = 10
getpower = 0
givepower = 0
priority = 3
guardflag = MA
pausetime = 1,5
sparkno = s8094
sparkxy = -25,-75
hitsound   = S1,12
guardsound = S6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = 0,0
air.velocity = 0,0
palfx.time = 20
palfx.color = 64
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 96,96,96,4

[State 830]
type = HitDef
trigger1 = Time = 20
attr = S, SP
damage = 10
getpower = 0
givepower = 0
priority = 3
guardflag = MA
pausetime = 1,5
sparkno = -1
sparkxy = -25,-75
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = 0,0
air.velocity = 0,0
palfx.time = 20
palfx.color = 64
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 96,96,96,4

[State 830]
type = HitDef
trigger1 = Time = 24
attr = S, SP
damage = 10
getpower = 0
givepower = 0
priority = 3
guardflag = MA
pausetime = 1,5
sparkno = -1
sparkxy = -25,-75
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -15,-3
air.velocity = -15,-3
p2stateno = 1025
fall.damage = 0            
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
palfx.time = 20
palfx.color = 64
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 96,96,96,4

[State 830]
type = ChangeState
triggerall = MoveHit
trigger1 = Time = 27
value = 831

[State 830]
type = StopSnd
trigger1 = AnimElem = 3
channel = 1

[State 830]
type = ChangeState
triggerall = !MoveHit
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 831]
type = S
movetype = A
physics = S
anim = 831
poweradd= 50
juggle = 5
velset = 0,0
ctrl = 0

[State 831]
type = PlaySnd
trigger1 = time = 0
value = 0,8

[State 831,remanescence]
type = AfterImage
trigger1 = AnimElem = 1
time = 9
length = 25
PalContrast =  205,170,220
PalBright = 5,5,5
trans = Add1

[State 831]
type = Explod
trigger1 = AnimElem = 1
anim = 70841
pos = -15,5
postype = p1
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 831]
type = VelAdd
trigger1 = time = 0
x = -7

[State 831]
type = VelMul
trigger1 = AnimElem = 1
x = 2.5

[State 831]
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
trigger1 = NumExplod(6000) = 0
postype = p1
pos = -35,-185
anim = 6000
ID = 6000
scale = 0.8,0.8
sprpriority = 1
bindtime = -1
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
triggerall = NumExplod(903) = 0
trigger1 = 1
pos = 0,2
anim = 903
sprpriority = -1
ownpal = 1
bindtime = -1
removeongethit = 1
ID = 903
removetime = 30

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

;-------------------------------------------------------
; Rolling Defense by Tux (start)
[Statedef 950]
type = S
movetype = I
physics = S
velset = 0,0
anim = 950
ctrl = 0
sprpriority = 2

[State 950]
type = PlaySnd
triggerall = random < 500
trigger1 = AnimElem = 1
value = 13,24
channel = 0

[State 950]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,11

[State 950]
type = ChangeState
trigger1 = AnimTime = 0
value = 951
ctrl = 1

;---------------------------------------
; Rolling Defense (guarding)
[Statedef 951]
type    = S
movetype= I
physics = S
juggle  = 2
velset = 0,0
anim = 951
ctrl = 0
sprpriority = 2

[State 951]
type = PowerAdd
trigger1 = time > 0
value = -5

[State 951]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,AA,AP,AT
sparkno = 40
sparkxy = 0,-10
pausetime = 6,15
p1stateno = 952
hitsound = s6,1

[State 951]
type = HitOverride
trigger1 = 1
time = 2
attr = SCA,AA,AP,AT
stateno = 952
ignorehitpause = 1

[State 951]
type = HitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 2

[State 951]
type = ChangeState
trigger1 = command != "rollingdefense1"
trigger2 = command != "rollingdefense2"
value = 953

[State 951]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,9

[State 951]
type = PalFX
trigger1 = (Time % 15) = 0
time = 15
add = 0,0,0
sinadd = 200,50,100,3

[State 951]
type = Explod
triggerall = NumExplod(953) = 0
trigger1 = 1
anim = 953
ID = 953
pos = -8,0
sprpriority = -1
ownpal = 1
removeongethit = 1
removetime = 21
bindtime = -1

[State 951]
type = Explod
triggerall = NumExplod(7013) = 0
trigger1 = 1
anim = 7013
ID = 7013
pos = -8,3
sprpriority = -2
ownpal = 1
removeongethit = 1
removetime = 9
bindtime = -1

[State 951]
type = ChangeState
trigger1 = AnimTime = 0
value = 951
ctrl = 1

[State 951]
type = ChangeState
trigger1 = Power = 0
value = 953

;---------------------------------------
; Rolling Defense (during attack)
[Statedef 952]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 951
poweradd = 200
ctrl = 0

[State 952]
type = PowerAdd
trigger1 = time > 0
value = -5

[State 952]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,NA,SA,HA,ST,SP
sparkno = 40
sparkxy = 0,-10
pausetime = 6,15
p1stateno = 952
hitsound = s6,1

[State 952]
type = HitOverride
trigger1 = 1
time = 2
attr = SCA,AP
stateno = 952
ignorehitpause = 1

[State 952]
type = HitBy
trigger1 = 1
value = SCA, AP
time = 2

[State 952]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 3

[State 952]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA
time = 1

[State 952]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,9

[State 952]
type = Explod
triggerall = NumExplod(953) = 0
trigger1 = 1
anim = 953
ID = 953
pos = -8,0
sprpriority = -1
ownpal = 1
removetime = 21
removeongethit = 1
bindtime = -1

[State 952]
type = Explod
triggerall = NumExplod(7013) = 0
trigger1 = 1
anim = 7013
ID = 7013
pos = -8,3
sprpriority = -2
ownpal = 1
removeongethit = 1
removetime = 9
bindtime = -1

[State 952]
type = HitDef
trigger1 = Time = 0
attr = S,SA
animtype  = Hard
hitflag = MAF
damage = 80,8
getpower = 0
givepower = 0
guardflag = MA
sparkno = s7000
sparkxy = 0,-75
hitsound =   S1,4
guardsound = S6,1
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -7,-5
air.velocity = -7,-5
fall.yvelocity = -3.4
air.fall = 1
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
guard.cornerpush.veloff = -12
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
yaccel = .5
fall = 1
fall.recover = 0

[State 952]
type = PalFX
trigger1 = AnimElem = 2
time = 15
add = 0,0,0
sinadd = 200,50,100,3

[State 952]
type = ChangeState
trigger1 = Time = 25
value = 951
ctrl = 1

[State 952]
type = ChangeState
trigger1 = Power = 0
value = 953

;---------------------------------------
; Rolling Defense (end)
[Statedef 953]
type    = S
movetype= I
physics = S
juggle  = 2
velset = 0,0
anim = 952
ctrl = 0
sprpriority = 2

[State 953]
type = PowerSet
triggerall = (power >= 2000)
trigger1 = animtime = 0
value = 2000

[State 953]
type = PowerSet
triggerall = (power >= 1000) && (power < 2000)
trigger1 = animtime = 0
value = 1000

[State 953]
type = PowerSet
triggerall = (power > 0) && (power < 1000)
trigger1 = animtime = 0
value = 0

[State 953]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,11

[State 953]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 953]
type = Explod
trigger1 = AnimElem = 1
anim = 7010
pos = 5,2
sprpriority = -2
ownpal = 1
removeongethit = 1
bindtime = -1

[State 953]
type = RemoveExplod
triggerall = NumExplod(953) >= 1
trigger1 = time = 0
ID = 953

[State 953]
type = RemoveExplod
triggerall = NumExplod(7013) >= 1
trigger1 = time = 0
ID = 7013

[State 953]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; 7th Sense
[Statedef 999]
type = S
movetype = I
physics = S
anim = 999
poweradd = 0
velset = 0,0
ctrl = 0

[State 999, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 999]
type = AssertSpecial
trigger1 = Time = 100
flag = nomusic
persistent = 1

[State 999]
type = SuperPause
trigger1 = Time = 15
time = 35
movetime = 35
anim = s7009
pos = 8, -65
darken = 1

[State 999]
type = VarSet
trigger1 = time = 1
var(8) = 1

[State 999]
type = PalFX
trigger1 = time = 10
time = 900
add = 5,5,5
sinadd = 40,40,40,3

[State 999]
type = RemoveExplod
trigger1 = 1
ID = 2

[State 999]
type = RemoveExplod
trigger1 = 1
ID = 3

[State 999]
type = Explod
triggerall = numexplod(7030) = 0
trigger1 = animelem = 1
anim = 7030
ID = 7030
pos = 0,5
bindtime = -1
removetime = 50
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 999]
type = Explod
triggerall = numexplod(7031) = 0
trigger1 = animelem = 1
anim = 7031
ID = 7031
pos = 0,6
vfacing = -1
bindtime = -1
removetime = 50
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 999]
type = Explod
trigger1 = animelem = 8
pos = -5,12
anim = 7088
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 999]
type = Explod
trigger1 = animelem = 8
pos = 5,12
anim = 70881
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 999]
type = EnvShake
trigger1 = time = 5
time = 50

[State 999]
type = PlaySnd
trigger1 = time = 0
value = 12, 0
channel = 0

[State 999]
type = PlaySnd
trigger1 = time = 15
value = 5, 2

[State 999]
type = PlaySnd
trigger1 = time = 15
value = 9, 4

[State 999]
type = LifeAdd
trigger1 = animtime = 15
value = 100

[State 999]
type = VarSet
trigger1 = command = "Nebula Chain 2"
var(9) = 1

[State 999]
type = ChangeState
trigger1 = animtime = 0
value = 997
ctrl = 1

;---------------
[Statedef 997]
type    = S
movetype= A
physics = S
anim = 997
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 997, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 997, Tux]
type = ChangeState
triggerall = var(9) = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 997, Tux]
type = ChangeState
triggerall = var(9) = 1
trigger1 = AnimTime = 0
value = 3200
ctrl = 0

;-------------------------------------------------------
; Chain Attack 1
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2

[State 1000]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 12,0
channel = 0

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,11

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 8
value = 5,6

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,5

[State 1000]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = medium
damage    = 15,1
getpower = 0
givepower = 0
guardflag = MA
pausetime = 5,8
sparkno = s7000
sparkxy = -10,-30
hitsound   = S1,3
guardsound = S6,1
ground.type = High
ground.slidetime = 8
ground.hittime  = 15
ground.velocity = -2
air.velocity = -5,-1

[State 1000]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype  = medium
damage    = 20,2
getpower = 0
givepower = 0
guardflag = MA
pausetime = 5,8
sparkno = s7000
sparkxy = -10,-40
hitsound   = S1,3
guardsound = S6,1
ground.type = High
ground.slidetime = 8
ground.hittime  = 15
ground.velocity = -2
air.velocity = -5,-1
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5

[State 1000]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Hard
damage    = 55,5
getpower = 0
givepower = 0
guardflag = MA
pausetime = 15,15
sparkno = s7003
sparkxy = -30,-80
hitsound   = S1,5
guardsound = S6,1
ground.type = Low
air.type = High
ground.slidetime = 12
ground.hittime = 14
air.hittime = 17
guard.ctrltime = 17
ground.velocity = -15
guard.velocity = -10
air.velocity = -8,-5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
air.fall = 1
fall.recover = 0
yaccel = .5
envshake.time =  12
envshake.freq = 8
envshake.ampl = 8
envshake.phase = 8

[State 1000]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Chain Attack 2
[Statedef 1010]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1010
sprpriority = 2

[State 1010]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 12,0
channel = 0

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,11
channel = 0

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 8
value = 5,6

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,5

[State 1010]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
attr = S, SA
animtype  = Hard
damage    = 20,2
getpower = 0
givepower = 0
guardflag = MA
pausetime = 8,10
sparkno = s7000
sparkxy = 0,-70
hitsound   = S1,3
guardsound = S6,1
ground.type = High
ground.slidetime = 8
ground.hittime  = 15
ground.velocity = -3
air.velocity = -5,-1
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5  
envshake.phase = 5

[State 1010]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Hard
damage    = 20,2
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7003
sparkxy = 0,-75
hitsound   = S1,5
guardsound = S6,1
ground.type = Low
air.type = High
ground.slidetime = 12
ground.hittime = 13
air.hittime = 17
guard.ctrltime = 17
ground.velocity = -8
guard.velocity = -10
air.velocity = -8,-5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
givepower = 0
persistent = 0
fall = 1
air.fall = 1
fall.recover = 0
yaccel = .5
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5  
envshake.phase = 5

[State 1010]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = Hard
damage    = 40,2
getpower = 0
givepower = 0
guardflag = MA
pausetime = 8,10
sparkno = s7000
sparkxy = 0,-70
hitsound   = S1,3
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -5,-1
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5

[State 1010]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Chain Attack 3
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1020
sprpriority = 2

[State 1020, removeEX]
type = RemoveExplod
triggerall = NumExplod(2) >= 1
trigger1 = time = 0
ID = 2

[State 1020]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 12,1

[State 1020]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,5

[State 1020]
type = HitDef
trigger1 = AnimElem = 2
priority = 2
attr = S, SA
damage = 20,3
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
sparkxy = -10,-73
sparkno = s7001
hitsound   = S1,5
guardsound = S6,2
pausetime = 5,8
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

[State 1020] 
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Up
damage    = 50,6
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 20,20
sparkno = s7003
sparkxy = 25,-102
hitsound   = S1,5
guardsound = S6,1
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -2,-15
air.velocity = -2,-15
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
fall.envshake.freq = 10
fall.envshake.time = 15
mindist = 50,-100            
maxdist = 100,-10           
yaccel = .8

[State 1020]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; player2 state
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

;-------------------------------------
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
anim = F8097
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
value = F7, 0

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

;-------------------------------------------------------
;explosion 
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
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 1029]
type = VelAdd
trigger1 = Time >= 0
y = .3

[State 1029]
type = Offset
trigger1 = Time >= 1
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

[State 1029, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1029] 
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = time = 150
value = 5100

;-------------------------------------------------------
;final state pl2 nebulosa
[Statedef 1030]
type=A
movetype=H
physics=N
ctrl=0
anim=5030
velset=-20,-1

[State 1030]
type=AfterImageTime
trigger1=(!time)
ignorehitpause=1

[State 1030]
type=ChangeAnim
trigger1=1
value=anim
ignorehitpause=1

[State 1030]
type=PosFreeze
trigger1=time<20
value=1
ignorehitpause=1

[State 1030]
type=PosSet
trigger1=pos y>=0
y=0
ignorehitpause=1

[State 1030]
type=VelSet
trigger1=(time=28)||(time=33)||(time=38)||(time=43)||(time=48)
y=-6

[State 1030]
type=VelSet
trigger1=(time=25)||(time=30)||(time=35)||(time=40)||(time=45)
y=6

[State 1030]
type=ScreenBound
trigger1=((time>10)&&((screenpos x>300)||(screenpos x<20)))||(time>=49)
value=0

[State 1030]
type=ChangeState
trigger1=((time>10)&&((screenpos x>300)||(screenpos x<20)))||(time>50)
value=1031

;-------------------------------------------------------
; flash - bounce on wall
[Statedef 1031]
type=A
movetype=H
physics=A
velset=2,-12
ctrl=0

[State 1031]
type=EnvShake
trigger1=!time
time=10
freq=260
ampl=-12
ignorehitpause=1

[State 1031]
type=Turn
trigger1=time=10
ignorehitpause=1
persistent=0

[State 1031: pos freeze]
type=PosFreeze
trigger1=time<10
value=1
ignorehitpause=1

[State 1031: Anim freeze]
type=ChangeAnim
trigger1=time<10
value=anim
ignorehitpause=1

[State 1002: dust]
type=Explod
trigger1=(!time)&&(pos y>-90)
anim=6015
ID=664
pos=0,-(floor(pos y))
postype=p1
facing=-1
bindtime=1
vel=0,0
removetime=-2
scale=.5,.5
sprpriority=-90
ownpal=1

[State 1031]
type=ScreenBound
trigger1=1
value=0

[State 1031]
type=SelfState
trigger1=(time>10)
value=5050

;-------------------------------------------------------
; Chain Attack (air)
[Statedef 1100]
type    = A
movetype= A
physics = A
poweradd= 100
juggle = 8
ctrl = 0
anim = 1100
velset = 0,-3

[State 1100]
type = PlaySnd
trigger1 = Animelem = 2
value = 0,3

[State 1100]
type = PlaySnd
trigger1 = Animelem = 2
value = 2,0

[State 1100]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,8

[State 1100]
type = VelSet
trigger1 = AnimElem = 5
y = 2

[State 1100]
type = VelSet
trigger1 = AnimElem = 5
x= 5

[State 1100]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
attr = A, SA
animtype  = medium
damage    = 15,1
getpower = 0
givepower = 0
guardflag = L			;Flags on how move is to be guarded against
hitflag = MAF
pausetime = 5,1
sparkno = s7001
sparkxy = -10,-10
hitsound   = S1,3
guardsound = S6,1
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -4,3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

[State 1100]
type = HitDef
trigger1 =AnimElem = 7
attr = A, SA
animtype  = Hard
damage    = 80,8
getpower = 0
givepower = 0
guardflag = L
hitflag = MAF
pausetime = 12,1
sparkno = s7001
sparkxy = -20,-30
hitsound   = S1,5
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -8
air.velocity = -8,6
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5

[State 1100]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 1100]
type = ChangeState
trigger1 = Time >= 3
trigger1 = Vel Y > 0 && Pos Y >= -5
value = 52

;-------------------------------------------------------
; Chain Spiral 1
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = -1

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,11

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 9
value = 5,7

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,5

[State 1200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12,0
channel = 0

[State 1200, 2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
attr = S, SA
animtype  = Hard
damage    = 18,2
getpower = 0
givepower = 0
guardflag = MA
pausetime = 8,8
sparkno = s8091
sparkxy = -10,-80
hitsound   = S1,3
guardsound = S6,1
ground.type = high
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -0.10
air.velocity = -0.30,-1.5
fall = 0

[State 1200, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Hard
damage    = 30,3
guardflag = MA
pausetime = 13,13
sparkno = s7001
sparkxy = -20,-85
hitsound   = S1,10
guardsound = S6,1
animtype = Hard
pausetime = 5,8
hitsound   = S1,5
guardsound = S6,0
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-5
air.type=Low
air.velocity = -2,((vel y)-.2)
getpower = 0
givepower = 0
envshake.time=9
envshake.ampl=5
fall = 1
fall.recover = 0
fall.xvelocity = 0
fall.yvelocity = -3

[State 1200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Chain Spiral 2
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
sprpriority = 0
anim = 1300
ctrl = 0

[State 1300, snd]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 12,0
channel = 0

[State 1300, snd]
type = PlaySnd
trigger1 = Time = 0
value = 0,8

[State 1300, snd]
type = PlaySnd
trigger1 = Time = 5
value = 0,9

[State 1300, snd]
type = Varset
trigger1 = Time = 51
value = 1
v = 13

[State 1300,1]
type = HitDef
trigger1 = time > 0 && time < 60
attr = S, SA
animtype  = heavy
damage    = 2,ifelse(var(13)=0,0,1)
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
sparkno = -1
sparkxy = 0,-70
hitsound = -1
ground.type = high
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -2,0
guard.velocity = 0
air.velocity = -5,-0.3
airguard.velocity = 0,0
p2facing = 1
fall.damage = 0
fall = 1
fall.recover = 0

[State 1300, snd]
type = Varset
trigger1 = Time = 64 
value = 0
v = 13

;Bypass per "Difesa inpenetrabile" di Toro
;evita la ripetizione del suddetto in caso di distanza eccessiva
;non toccate, a meno che non abbiate un idea migliore
[State 1300, 3]
type = ChangeState
triggerall = P2stateno = 861
trigger1 = P2name = "aldebaran"
value = 1301
ctrl = 1

[State 1300, 3]
type = ChangeState
trigger1 = Time = 65
value = 1301
ctrl = 1

[Statedef 1301]
type    = S
movetype= I
physics = S
juggle  = 4
velset = 0,0
sprpriority = 0
anim = 1301
ctrl = 0

[State 1301]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------
; Nebula Stream
[Statedef 1400]
type    = S
movetype= A
physics = S
anim = 1400
velset = 0,0
poweradd = 100
juggle = 0
ctrl = 0

[State 1400]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 38
value = 0,5

[State 1400]
type = PlaySnd
trigger1 = AnimElem = 5
value = 13,17
channel = 0

[State 1400, polvereS]
type = Explod
triggerall = NumExplod(7012) = 0
trigger1 = AnimElem = 2
pos = 0,-70
postype = p1
anim = 8051
ID = 7012
sprpriority = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 43

[State 1400, 2]
type = HitDef
trigger1 = AnimElem = 23
attr = S, SA
animtype  = Medium
damage    = 2
getpower = 0
givepower = 0
guardflag = MA
guard.sparkno = -1
pausetime = 12,12
sparkno = -1
sparkxy = -20,-70
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 14
ground.velocity =  -2
air.velocity = -2, -1

[State 1400, 2]
type = HitDef
trigger1 = AnimElem = 24
trigger2 = AnimElem = 25
trigger3 = AnimElem = 26
trigger4 = AnimElem = 27
trigger5 = AnimElem = 28
trigger6 = AnimElem = 29
trigger7 = AnimElem = 30
trigger8 = AnimElem = 31
attr = S, SA
animtype  = Medium
damage    = 10,1
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,70
sparkno = -1
sparkxy = 0,-70
hitsound   = S1,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 14
ground.velocity = -2
air.velocity = -2, -1
Palfx.time          = 70
Palfx.add           = 250,100,200
Palfx.sinadd        = -112,-122,-112,3

[State 1400, petali]
type = Explod
trigger1 = movehit = 1
persistent = 0
triggerall = NumExplod(8053) = 0
anim = 8053
ID = 8053
pos = -8,-10
postype = p2
sprpriority = 5
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 75
supermove = 1
persistent = 0

[State 1400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Nebula Kick
[Statedef 1500]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 100
sprpriority = 2

[State 1500]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 1500]
type = AfterImage
trigger1 = time = 0
time = 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1500]
type = Explod
trigger1 = time = 1
pos = 10,2
anim = 7085
sprpriority = 5
ownpal = 1
removeongethit = 1
scale = .8, .8

[State 1500]
type = VelSet
trigger1 = time >= 1
x = 13

[State 1500]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
value = 3,0

[State 1500]
type = ChangeState
trigger1 = Time = 40
trigger2 = P2Dist X <= 190
value = 1501
ctrl = 1

[Statedef 1501]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1500
sprpriority = 2

[State 1501]
type = VelSet
trigger1 = AnimElem = 1
x = 5

[State 1501]
type = VelSet
trigger1 = AnimElem = 5
x = 10

[State 1501]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,3

[State 1501]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 12,2

[State 1501]
type = Explod
trigger1 = AnimElem = 4
pos = 70,2
anim = 7085
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 1501]
type = Explod
trigger1 = AnimElem = 6
pos = 165,2
anim = 7089
sprpriority = 6
ownpal = 1
removeongethit = 1
scale = .6, .6

[State 1501]
type = Explod
triggerall = NumExplod(7060) = 0
trigger1 = AnimElem = 6
pos = 60,-95
anim = 7060
ID = 7060
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 50

[State 1501, removeEX]
type = RemoveExplod
triggerall = NumExplod(7060) = 1
trigger1 = AnimElem = 7
ID = 7060

[State 1501]
type = HitDef
trigger1 = time = 0
attr = C, SA
damage    = 80,8
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 15,15
sparkno = s7000
sparkxy = -5,-30
hitsound   = S1,8
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.5,0
guard.velocity = -5
fall = 1
fall.recover = 0
envshake.time =  25 
envshake.freq = 20     
envshake.ampl = 6  
envshake.phase = 5
Palfx.time          = 10
Palfx.add           = 250,100,200
Palfx.sinadd        = -112,-122,-112,3

[State 1501]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Nebula Kick (air)
[Statedef 1600]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 100
ctrl = 0
anim = 1600
sprpriority = 2
velset = 0,-5

[State 1600, Velset]
type = VelSet
trigger1 = AnimElem >= 8
x = 14
y = 10

[State 1600]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,4

[State 1600,remanescence]
type = AfterImage
trigger1 = time = 0
time = 35
length = 20
PalContrast =  205,170,220
PalBright = 5,5,5
trans = Add1

[State 1600, lightG]
type = Explod
triggerall = NumExplod(8010) = 0
trigger1 = AnimElem = 7
pos = 20,-100
anim = 8010
ID = 8010
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1600]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 80,8
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002
sparkxy = -25,-35
hitsound   = S1,4
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -7
air.velocity = -7,-3
fall = 1
fall.recover = 0
fall.damage = 10
envshake.time =  25 
envshake.freq = 20     
envshake.ampl = 6  
envshake.phase = 5
Palfx.time          = 25
palfx.add           = 210,110,180
Palfx.mul           = 255,160,220
Palfx.sinadd        = -200,-200,-200,3
Palfx.invertall     = 1

[State 1600, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 1600]
type = Explod
triggerall = NumExplod(127) = 0
trigger1 = Pos Y >= 0
anim = f127
pos = 100,10
sprpriority = 5
ownpal = 1
removeongethit = 1
persistent = 0
ignorehitpause = 1

[State 1600]
type = ChangeState
trigger1 = Pos Y >= 0
value = 51
ctrl = 1

[State 1600]
type = ChangeState
trigger1 = time = 80
value = 51
ctrl = 1

;-------------------------------------------------------
; Thunder Wave
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 2

[State 3000]
type = AssertSpecial
trigger1 = time = [0, 550]
flag = nobardisplay
ignorehitpause = 1

[State 3000]
type = SuperPause
trigger1 = Time = 0
time = 22
anim = s7009
darken = 0
pos = 0,-52
movetime = 22
sound = S4,5

[State 3000, Tux]
type = Explod
trigger1 = Time = 0
anim = 6002
ID = 6002
postype = back
pos = 140,70
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 120

[State 3000, sfondo1]
type = Explod
triggerall = NumExplod(8034) = 0
trigger1 = AnimElem = 1
anim = 8034
ID = 8033
postype = back
scale = 1.1,1.1
pos = 0, 0
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 120

[State 3000, sfondo1]
type = Explod
triggerall = NumExplod(8021) = 0
trigger1 = AnimElem = 1
anim = 8021
ID = 8021
postype = back
pos = 0, 0
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 120

[State 3000, voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,19
channel = 0

[State 3000]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 2
pos = 0,0
anim = 7011
ID = 7011
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 75

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,8

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 10
value = 0,3

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 14
value = 5,7

[State 3000]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
trigger6 = AnimElem = 9
attr = S, HA
animtype  = Medium
damage    = 18,1
getpower = 0
givepower = 0
guardflag = MA
pausetime = 5,8
sparkno = s8094
sparkxy = -20,-70
hitsound   = S1,5
guardsound = S6,1
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.5,-4
envshake.time =  25
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
;PalFX
palfx.time = 20
palfx.color = 64
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 96,96,96,4

[State 3000]
type = HitDef
trigger1 = AnimElem = 10
attr = S, HA
animtype  = Hard
damage    = 100,10
getpower = 0
givepower = 0
guardflag = MA
pausetime = 15,15
sparkno = s8095
sparkxy = -20,-70
hitsound   = S1,11
guardsound = S6,1
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -18
air.velocity = 8,6
fall = 1
fall.recover = 0
envshake.time =  25
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
;PalFX
palfx.time = 50
palfx.color = 64
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 96,96,96,4

[State 3000, eletrik]
type = Explod
trigger1 = MoveHit
pos = 0 ,0
anim = 8092
ID = 8092
postype = p2
bindtime = 12
supermove = 0
persistent = 0
sprpriority = 5
removeongethit = 0

[State 3000]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Nebula Chain 1
[Statedef 3100]
type = S
movetype = A
physics = S
anim = 3100
poweradd = -2000
juggle = 5
velset = 0,0
ctrl = 0

[State 3100, a6]
type = AssertSpecial
trigger1 = time = [0, 700]
flag = nobardisplay
ignorehitpause = 1

[State 3100, 1]
type = SuperPause
trigger1 = Time = 0
time = 75
anim = s7009
darken = 0
pos = 0,-52
movetime = 75

[State 3100, cosmo]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 3103
ID = 3103
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 169

[State 3100]
type = PlaySnd
trigger1 = Animelem = 1
value = 13,14
channel = 0

[State 3100]
type = PlaySnd
trigger1 = Animelem = 2
value = 0,8

[State 3100]
type = PlaySnd
trigger1 = Animelem = 3
value = 5,10

[State 3100]
type = PlaySnd
trigger1 = Animelem = 10
value = 5,12

[State 3100, 1]
type = PlaySnd
trigger1 = movehit =1
value = 2000,0

[State 3100, star]
type = Explod
trigger1 = time =1
anim = 8081
pos = 0,-1
postype = back
sprpriority = -1
supermove = 1
removetime = 160
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0

[State 3100, 1]
type = PlaySnd
trigger1 = animelem =8
value = 3711,0 ;WTF
volume = 510

[State 3100, 1]
type = PlaySnd
trigger1 = animelem =10
value = 3711,0 ;WTF
volume = 510

[State 3100, 1]
type = PlaySnd
trigger1 = animelem =9
value = 3711,0 ;WTF
volume = 510

[State 3100, 1]
type = PlaySnd
trigger1 = animelem =6
LOWPRIORITY =5
value = 3711,0 ;WTF
volume = 510

[State 3100, 1]
type = PlaySnd
trigger1 = animelem =4
value = 3711,0 ;WTF
volume = 510

[State 3100, 0.1]
type = helper
trigger1 = time =90
ID = 4320
name = "cadenas"
postype = p1
pos = 65,0
stateno = 4320
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =98
ID = 4321
name = "cadenas"
postype = p1
pos = 70,0
stateno = 4321
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =105
ID = 4322
name = "cadenas"
postype = p1
pos = 70,0
stateno = 4322
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =110
ID = 4323
name = "cadenas"
postype = p1
pos = 60,0
stateno = 4323
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =112
ID = 4324
name = "cadenas"
postype = p1
pos = 70,0
stateno = 4324
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =118
ID = 4325
name = "cadenas"
postype = p1
pos = 65,0
stateno = 4325
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =120
ID = 4326
name = "cadenas"
postype = p1
pos = 70,0
stateno = 4326
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =120
ID = 4327
name = "cadenas"
postype = p1
pos = 70,0
stateno = 4327
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =160
ID = 99543
name = "cadenas"
postype = p1
pos = 70,0
stateno = 4328
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =150
ID = 4321
name = "cadenas"
postype = p1
pos = 70,0
stateno = 4321
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =140
ID = 4322
name = "cadenas"
postype = p1
pos = 65,0
stateno = 4322
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =130
ID = 4323
name = "cadenas"
postype = p1
pos = 70,0
stateno = 4323
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =120
ID = 4324
name = "cadenas"
postype = p1
pos = 60,0
stateno = 4324
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =110
ID = 4325
name = "cadenas"
postype = p1
pos = 70,0
stateno = 4325
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =100
ID = 4326
name = "cadenas"
postype = p1
pos = 65,0
stateno = 4326
keyctrl = 0
ownpal = 1

[State 3100, 0.1]
type = helper
trigger1 = time =90
ID = 4327
name = "cadenas"
postype = p1
pos = 70,0
stateno = 4327
keyctrl = 0
ownpal = 1

[State 3100, scia]
type = Explod
trigger1 = AnimElem = 2
pos = 150,-49
anim = 8090
sprpriority = -2
removeongethit = 1
ownpal = 1
removetime = 40

[State 3100, sfondo1]
type = Explod
triggerall = NumExplod(8034) = 0
trigger1 = AnimElem = 1
anim = 8034
ID = 8033
postype = back
scale = 1,1
pos = 0,0
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 220
ownpal = 1

[State 3100, explod]
type = Explod
trigger1 = time = 0
anim = 8041
pos = 0,0
postype = back
sprpriority = -4
removetime = 220
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove= 1

[State 3100, 1]
type = PlaySnd
trigger1 = time = 0
value = 3710,1

[State 3100, 1]
type = hitdef
trigger1= time =0
forcestand = 1
attr = S, HP
guardflag = MA
damage = 214,42
getpower = 0
givepower = 0
animtype = Hard
pausetime = 8,8
sparkno = s8091
sparkxy = -20,-60
guard.sparkno = -1
hitsound   = -1
guardsound = -1
ground.type = low
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -8
air.velocity = -1,0

[State 3100, change state]
type = ChangeState
trigger1 = animtime =0
value = 0
ctrl = 1

;-------------------------------------------------------
; Nebula Chain 2
[Statedef 3200]
type    = S
movetype= A
physics = S
anim = 3200
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0
sprpriority = 2

[State 3200, Tux]
type = AssertSpecial
triggerall = (life <= 250) && (PrevStateNo = 3700)
trigger1 = Time = [0,121]
flag = nobardisplay
flag2 = nomusic
ignorehitpause = 1

[State 3200, a6]
type = AssertSpecial
triggerall = (life > 250) || (PrevStateNo != 3700)
trigger1 = time = [0, 750]
flag = nobardisplay
ignorehitpause = 1

[State 3200, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 3200, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 3
ID = 3

[State 3200]
type = PlaySnd
trigger1 = Animelem = 1
value = 13,10
channel = 0

[State 3200]
type = PlaySnd
trigger1 = Animelem = 2
value = 0,8

[State 3200]
type = PlaySnd
trigger1 = Animelem = 4
value = 5,10

[State 3200]
type = PlaySnd
trigger1 = Animelem = 8
value = 5,12

[State 3200]
type = SuperPause
trigger1 = AnimElem = 1
time = 74
anim = s7009
pos = 0,-52
movetime = 74
darken = 0

[State 3200, cosmo1]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 3202
ID = 7
sprpriority = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40

[State 3200, cosmo2]
type = Explod
trigger1 = AnimElem = 2
pos = 0,0
anim = 3203
ID = 3203
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 253

[State 3200, lightG]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = AnimElem = 1
pos = 0,0
anim = 7020
ID = 7020
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40

[State 3200]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 2
pos = 12,2
anim = 7010
ID = 7010
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 300

[State 3200, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 8060
ID = 8060
postype = back
pos = 0, 0
sprpriority = -4
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 17

[State 3200, explod]
type = Explod
trigger1 = AnimElem = 1
anim = 8041
pos = 0, 0
postype = back
sprpriority = -4
removetime = 82
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove= 1

[State 3200, sfondo1]
type = Explod
trigger1 = AnimElem = 7
anim = 8060
ID = 8033
postype = back
pos = 0, 0
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 230

[State 3200, explod]
type = Explod
trigger1 = AnimElem = 7
anim = 8041
ID = 8041
pos = 0, 0
postype = back
sprpriority = -4
removetime = 230
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove= 1

[State 3200, scia]
type = Explod
trigger1 = AnimElem = 6
pos = 208,-49
anim = 8090
sprpriority = -2
removeongethit = 1
ownpal = 1

[State 3200, catene]
type = Explod
triggerall = (life > 250) || (PrevStateNo != 3700)
trigger1 = AnimElem = 11
trigger2 = AnimElem = 15
trigger3 = AnimElem = 19
pos = 100,-100
anim = 8088
sprpriority = 2
removeongethit = 1
ownpal = 1
supermove = 0

[State 3200, catene]
type = Explod
triggerall = (life <= 250) && (PrevStateNo = 3700)
trigger1 = AnimElem = 11
trigger2 = AnimElem = 15
trigger3 = AnimElem = 19
pos = 100,-100
anim = 8088
sprpriority = 2
removeongethit = 1
ownpal = 1
supermove = 1

[State 3200, catene]
type = Explod
triggerall = (life > 250) || (PrevStateNo != 3700)
trigger1 = AnimElem = 13
trigger2 = AnimElem = 17
trigger3 = AnimElem = 20
pos = 120,-50
anim = 8088
sprpriority = 3
removeongethit = 1
ownpal = 1
supermove = 0

[State 3200, catene]
type = Explod
triggerall = (life <= 250) && (PrevStateNo = 3700)
trigger1 = AnimElem = 13
trigger2 = AnimElem = 17
trigger3 = AnimElem = 20
pos = 120,-50
anim = 8088
sprpriority = 3
removeongethit = 1
ownpal = 1
supermove = 1

[State 3200]
type = HitDef
triggerall = (life > 250) || (PrevStateNo != 3700)
trigger1 = AnimElem = 8
attr = S, HA
animtype = medium
air.animtype = Back
fall.animtype = Back
damage    = 25,7
getpower = 0
givepower = 0
guardflag = MA
pausetime = 8,10
sparkno = s7004
sparkxy = -45,-20
hitsound   = S1,9
guardsound = S6,1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5
air.velocity = -4,0

[State 3200]
type = HitDef
triggerall = (life <= 250) && (PrevStateNo = 3700)
trigger1 = AnimElem = 8
attr = S, HA
animtype = medium
air.animtype = Back
fall.animtype = Back
damage    = 0
getpower = 0
givepower = 0
pausetime = 8,10
sparkno = s7004
sparkxy = -45,-20
hitsound   = S1,9
guardsound = S6,1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5
air.velocity = -4,0

[State 3200]
type = HitDef
triggerall = (life > 250) || (PrevStateNo != 3700)
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
attr = S, HA
animtype  = Hard
damage    = 45,13
getpower = 0
givepower = 0
guardflag = MA
pausetime = 8,10
sparkno = s7004
sparkxy = -45,-20
hitsound   = S1,9
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -4,0

[State 3200]
type = HitDef
triggerall = (life <= 250) && (PrevStateNo = 3700)
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
attr = S, HA
animtype  = Hard
damage    = 0
getpower = 0
givepower = 0
pausetime = 8,10
sparkno = s7004
sparkxy = -45,-20
hitsound   = S1,9
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -4,0

[State 3200, Tux]
type = ChangeState
triggerall = (life <= 250) && (PrevStateNo = 3700) && (MoveContact >= 1)
trigger1 = AnimElem = 16
value = 3700
ctrl = 0

[State 3200, Tux]
type = ChangeState
triggerall = (life <= 250) && (PrevStateNo = 3700) && (MoveContact = 0)
trigger1 = AnimElem = 16
value = 3701
ctrl = 0

[State 3200]
type = HitDef
triggerall = (life > 250) || (PrevStateNo != 3700)
trigger1 = AnimElem = 10
trigger2 = AnimElem = 13
trigger3 = AnimElem = 16
trigger4 = AnimElem = 19
attr = S, HA
animtype  = Hard
damage    = 40,12
getpower = 0
givepower = 0
guardflag = MA
pausetime = 8,10
sparkno = s7004
sparkxy = -60,-90
hitsound   = S1,9
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -4,0

[State 3200]
type = HitDef
triggerall = (life <= 250) && (PrevStateNo = 3700)
trigger1 = AnimElem = 10
trigger2 = AnimElem = 13
trigger3 = AnimElem = 16
trigger4 = AnimElem = 19
attr = S, HA
animtype  = Hard
damage    = 0
getpower = 0
givepower = 0
pausetime = 8,10
sparkno = s7004
sparkxy = -60,-90
hitsound   = S1,9
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -4,0

[State 3200]
type = HitDef
triggerall = (life > 250) || (PrevStateNo != 3700)
trigger1 = AnimElem = 11
trigger2 = AnimElem = 14
trigger3 = AnimElem = 17
trigger4 = AnimElem = 20
attr = S, HA
animtype  = Hard
damage    = 40,12
getpower = 0
givepower = 0
guardflag = MA
pausetime = 8,10
sparkno = s7004
sparkxy = -30,-50
hitsound   = S1,9
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -4,0

[State 3200]
type = HitDef
triggerall = (life <= 250) && (PrevStateNo = 3700)
trigger1 = AnimElem = 11
trigger2 = AnimElem = 14
trigger3 = AnimElem = 17
trigger4 = AnimElem = 20
attr = S, HA
animtype  = Hard
damage    = 0
getpower = 0
givepower = 0
pausetime = 8,10
sparkno = s7004
sparkxy = -30,-50
hitsound   = S1,9
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -4,0

[State 3200]
type = HitDef
trigger1 = AnimElem = 21
attr = S, HA
animtype  = Hard
damage    = 40,12
getpower = 0
givepower = 0
guardflag = MA
pausetime = 8,10
sparkno = s7004
sparkxy = -30,-50
hitsound   = S1,9
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -4,0

[State 3200]
type = HitDef
trigger1 = AnimElem = 22
attr = S, HA
animtype  = Hard
damage    = 29,9
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7003
sparkxy = 0,-50
hitsound   = S1,5
guardsound = S6,1
ground.type = High
ground.slidetime = 17
ground.hittime  = 16
ground.velocity = -15,-10
air.velocity = -15,-5
fall = 1
fall.recover = 0
p2stateno = 1025

[State 3200, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3200]
type = ChangeState
trigger1 = AnimTime = 0
value = 3201
ctrl = 1

[Statedef 3201]
type    = S
movetype= A
physics = S
anim = 3201
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0
sprpriority = 1

[State 3201, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = AnimElem = 4
ID = 7010

[State 3201, removeEX]
type = RemoveExplod
triggerall = NumExplod(7) >= 1
trigger1 = AnimElem = 2
ID = 7

[State 3201, removeEX]
type = RemoveExplod
triggerall = NumExplod(8070) >= 1
trigger1 = AnimElem = 4
ID = 8070

[State 3201]
type = PlaySnd
trigger1 = Animelem = 1
value = 5,11
channel = 0

[State 3201, Tux] 
type = varset
trigger1 = var(9) = 1
v = 9
value = 0

[State 3201, Tux] 
type = varset
trigger1 = var(8) = 1
v = 8
value = 0

[State 3201]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Nebula Chain Circle 1
[Statedef 3300]
type    = S
movetype= A
physics = S
anim = 3300
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 3300, a6]
type = AssertSpecial
trigger1 = time = [0,700]
flag = nobardisplay
ignorehitpause = 1

[State 3300, Tux] 
type = AssertSpecial
trigger1 = 1
flag = noFG
ignorehitpause = 1

[State 3300]
type = PlaySnd
trigger1 = Animelem = 1
value = 13,16
channel = 0

[State 3300]
type = SuperPause
trigger1 = AnimElem = 1
time = 120
anim = s7009
pos = 0,-60
movetime = 120
darken = 0

[State 3300]
type = PlaySnd
trigger1 = Animelem = 1
value = 0,2

[State 3300]
type = PlaySnd
trigger1 = Animelem = 3
value = 5,10

[State 3300, cosmo]
type = Explod
triggerall = NumExplod(953) = 0
trigger1 = AnimElem = 24
pos = -7,-0
anim = 953
ID = 953
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3300, sfondo1]
type = Explod
triggerall = NumExplod(8034) = 0
trigger1 = AnimElem = 1
anim = 8034
ID = 8034
postype = back
scale = 1.1,1.1
pos = 0, 0
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3300, explod]
type = Explod
trigger1 = time = 0
anim = 8041
ID = 8041
pos = 0, 0
postype = back
sprpriority = -5
removetime = 1000
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove= 1

[State 3300, sfondo1]
type = Explod
triggerall = NumExplod(8021) = 0
trigger1 = AnimElem = 1
pos = 0,0
anim = 8021
ID = 8021
postype = back
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3300, Tux]
type = Helper
trigger1 = AnimElem = 25
stateno = 3302
ID = 3302
pos = -3,0
postype = p1
helpertype = normal
keyctrl = 0 
ownpal = 1

[State 3300, spirale]
type = Explod
triggerall = NumExplod(3302) = 0
trigger1 = AnimElem = 25
pos = -14,0
ID = 3302
anim = 3302
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3300]
type = PlaySnd
trigger1 = Animelem = 27
value = 5,9

[State 3300]
type = PlaySnd
trigger1 = Animelem = 25
value = 5,9

[State 3300]
type = PlaySnd
trigger1 = Animelem = 26
value = 0,9

[State 3300, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3300]
type = HitDef
trigger1 = AnimElem = 23
trigger2 = AnimElem = 24
trigger3 = AnimElem = 25
trigger4 = AnimElem = 26
trigger5 = AnimElem = 27
trigger6 = AnimElem = 28
trigger7 = AnimElem = 29
attr = S, HA
damage    = 10,1
getpower = 0
givepower = 0
guardflag = MA
pausetime = 5,25
sparkno = s8094
sparkxy = -30,-20
hitsound   = S1,12
guardsound = S6,0
animtype = Hard
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -1
guard.velocity = -5
air.velocity = -2,8
airguard.velocity = 0,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;PalFX
palfx.time = 20
palfx.color = 64
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 96,96,96,4

[State 3300, eletrik]
type = Explod
trigger1 = AnimElem = 27
pos = 79 ,11
anim = 8093
ID = 8093
sprpriority = 5
removetime= 1000
removeongethit = 1
ownpal = 1
bindtime = -1

[State 3300, eletrik]
type = Explod
trigger1 = AnimElem = 25
pos = 0 ,10
anim = 8092
ID = 8092
sprpriority = 5
removetime= 1000
removeongethit = 1
ownpal = 1
bindtime = -1

[State 3300, eletrik]
type = Explod
trigger1 = AnimElem = 27
pos = -60 ,11
anim = 8092
ID = 8092
sprpriority = 5
removetime= 1000
removeongethit = 1
ownpal = 1
bindtime = -1

[State 3300, Power]
type = PowerAdd
trigger1 = Time >= 120
value = -10

[State 3300]
type = ChangeState
triggerall = !MoveHit
trigger1 = Time = 200
value = 3301
ctrl = 1

[State 3300]
type = ChangeState
trigger1 = time = 300
trigger2 = Power = 0
value = 3301
ctrl = 1

;--------------------------------------------
[Statedef 3301]
type    = S
movetype= A
physics = S
anim = 3301
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 3301, a6]
type = AssertSpecial
trigger1 = time = [0, 80]
flag = nobardisplay
ignorehitpause = 1

[State 3301, Tux] 
type = AssertSpecial
trigger1 = Time < 35
flag = noFG
ignorehitpause = 1

[State 3301]
type = PlaySnd
trigger1 = Animelem = 1
value = 0,9

[State 3301]
type = PlaySnd
trigger1 = Animelem = 11
value = 5,11
channel = 0

[State 3301]
type = PlaySnd
trigger1 = Animelem = 10
value = 0,2

[State 3301, Tux]
type = StateTypeSet
trigger1 = AnimElem = 15
movetype = I

[State 3301]
type = PlaySnd
trigger1 = Animelem = 18
value = 5,7

[State 3301, flash]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8097
ID = 8097
pos = -320,0
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 50

[State 3301]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
damage    = 20,2
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s8094
sparkxy = -30,-50
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -15,10
air.velocity = -15,0
fall = 1
fall.recover = 0
p2stateno = 1025
;PalFX
palfx.time = 20
palfx.color = 64
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 96,96,96,4

[State 3301, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3301, remove spirale]
type = RemoveExplod
triggerall = NumExplod(3302) >= 1
trigger1 = AnimElem = 1
ID = 3302

[State 3301, remove sfondo]
type = RemoveExplod
triggerall = NumExplod(8034) >= 1
trigger1 = time = 35
ID = 8034

[State 3301, remove sfondo]
type = RemoveExplod
triggerall = NumExplod(8021) >= 1
trigger1 = time = 35
ID = 8021

[State 3301, remove sfondo]
type = RemoveExplod
triggerall = NumExplod(8041) >= 1
trigger1 = time = 35
ID = 8041

[State 3301, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(953) >= 1
trigger1 = AnimElem = 1
ID = 953

[State 3301, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8092) >= 1
trigger1 = AnimElem = 1
ID = 8092

[State 3301, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8093) >= 1
trigger1 = AnimElem = 1
ID = 8093

[State 3301, spirale]
type = Explod
trigger1 = AnimElem = 1
pos = -14,0
anim = 3303
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3301]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Anti-Projectile shield by Tux
[Statedef 3302]
type = S
movetype = I
physics = S
anim = 3302

[State 3302]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 3302]
type = NotHitBy
trigger1 = 1
value = SCA, AT

[State 3302]
type = HitBy
trigger1 = 1
value = SCA, AP
time = 2

[State 3302]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,NA,SA,HA,ST,SP
sparkno = 40
sparkxy = 0,-10
pausetime = 6,15
p1stateno = 3302
hitsound = s6,1

[State 3302]
type = HitOverride
trigger1 = 1
time = 2
attr = SCA, AP
stateno = 3302
ignorehitpause = 1

[State 3302]
type = DestroySelf
trigger1 = (parent,stateno != 3300) && (parent,stateno != 3301)
trigger2 = (parent,stateno = 3301) && (parent,animelem = 12)

;-------------------------------------------------------
; Nebula Chain Circle 2
[Statedef 3400]
type    = S
movetype= A
physics = S
anim = 3400
velset = 0,0
poweradd = -2000
juggle = 0
ctrl = 0

[State 3400, a6]
type = AssertSpecial
trigger1 = time = [0, 500]
flag = nobardisplay
ignorehitpause = 1

[State 3400, 2]
type = AssertSpecial
trigger1 = time = [0,180]
flag = nobardisplay
flag2 = nomusic

[State 3400]
type = AssertSpecial
trigger1 = 1
flag = noFG
ignorehitpause = 1

[State 3400]
type = PlaySnd
trigger1 = Animelem = 1
value = 5,13
channel = 10

[State 3400]
type = PlaySnd
trigger1 = Animelem = 3
value = 5,7

[State 3400]
type = PlaySnd
trigger1 = Animelem = 4
value = 13,8
channel = 0

[State 3400]
type = SuperPause
trigger1 = AnimElem = 1
time = 137
anim = s7009
pos = 5,-60
movetime = 137
darken = 0

[State 3400, Tux]
type = VarSet
triggerall = Time > 137
trigger1 = P2MoveType = A
v = 3
value = 1

[State 3400, Tux]
type = ChangeState
triggerall = P2BodyDist X < 180
triggerall = Time > 137
trigger1 = P2MoveType = A
value = 3403

[State 3400, Tux]
type = ChangeState
triggerall = P2BodyDist X >= 180
triggerall = Time > 137
trigger1 = P2MoveType = A
value = 3402

[State 3400, cosmo]
type = Explod
trigger1 = AnimElem = 13
pos = 0,0
anim =8030
ID = 8021
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1,1
removeongethit = 1
supermove = 1
removetime = 1000

[State 3400, cosmo]
type = Explod
trigger1 = AnimElem = 14
postype = p1
pos = 0,0
anim = 3404
ID = 8033
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 0
removetime = 1000

[State 3400, explod]
type = Explod
triggerall = NumExplod(8040) = 0
trigger1 = AnimElem = 1
anim = 8040
ID = 8021
pos = 0, 0
postype = back
sprpriority = -8
removetime = 1000
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3400]
type = PlaySnd
trigger1 = Animelem = 3
value = 5,9

[State 3400, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3400]
type = HitDef
trigger1 = Animelem = 14
trigger2 = Animelem = 15
trigger3 = Animelem = 16
trigger4 = Animelem = 17
trigger5 = Animelem = 18
trigger6 = Animelem = 19
trigger7 = Animelem = 20
trigger8 = Animelem = 21
attr = S, HA
animtype  = Hard
damage    = 20,4
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,10
sparkno = s8094
sparkxy = -30,-20
hitsound   = S1,12
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 55
ground.velocity = -1
air.velocity = -2.5,-4
envshake.time =  25
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
palfx.time = 20
palfx.color = 64
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 96,96,96,4

[State 3400, 8]
type = Explod
trigger1 = movehit = 1
anim = 3401
sprpriority = 1
scale =1.3,1
postype = p1
pos = 0,0
removetime = 15
ignorehitpause = 1
supermove = 1

[State 3400, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3400, eletrik]
type = Explod
trigger1 = AnimElem = 14
pos = 79 ,11
anim = 8093
ID = 8093
sprpriority = 5
removetime= 1000
removeongethit = 1
ownpal = 1
bindtime = -1

[State 3400, eletrik]
type = Explod
trigger1 = AnimElem = 14
pos = 0 ,10
anim = 8092
ID = 8092
sprpriority = 5
removetime= 1000
removeongethit = 1
ownpal = 1
bindtime = -1

[State 3400, eletrik]
type = Explod
trigger1 = AnimElem = 14
pos = -60 ,11
anim = 8092
ID = 7003
sprpriority = 5
removetime= 1000
removeongethit = 1
ownpal = 1
bindtime = -1

[State 3400, ChangeState] ; para el ataque de la cadena en diagonal
type = ChangeState
triggerall =P2BodyDist X < 180
trigger1 = Time = 417
value = 3403

[State 3400, ChangeState] ; para el ataque de la cadena en recto
type = ChangeState
triggerall = P2BodyDist X >= 180
trigger1 = Time = 417
value = 3402

;--------------------------------------------------------
[Statedef 3402]
type    = S
movetype= A
physics = S
anim = 3402
poweradd = 0
ctrl = 0

[State 3402, a6]
type = AssertSpecial
trigger1 = time = [0, 500]
flag = nobardisplay
ignorehitpause = 1

[State 3402, Tux]
type = AssertSpecial
trigger1 = 1
flag = noFG
ignorehitpause = 1

[State 3402, 2]
type = PlaySnd
trigger1 = Animelem = 2
value = 5,10

[State 3402, Tux]
type = StopSnd
triggerall = Var(3) = 1
trigger1 = Time = 0
channel = 10

[State 3402, PlaySnd]
type = PlaySnd
triggerall = Var(3) = 0
trigger1 = Animelem = 1
value = 13,20
channel = 0

[State 3402, PlaySnd]
type = PlaySnd
triggerall = Var(3) = 1
trigger1 = Animelem = 1
value = 13,15
channel = 0

[State 3402, 2]
type = PlaySnd
trigger1 = Animelem = 10
value = 5,5

[State 3402, cosmo]
type = Explod
triggerall = NumExplod(3406) = 0
trigger1 = AnimElem = 1
pos = 0,0
anim = 3406
ID = 953
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3402, HitDef]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
attr = S, HA
guardflag = MA
animtype = Back
damage = ifelse((var(3) = 0), 7, 21), ifelse((var(3) = 0), 1, 4)
getpower = 0
givepower = 0
pausetime = 0,5
sparkno = s7000
sparkxy = -10,-75
hitsound   = S1,3
guardsound = S6,1
ground.type = High
ground.slidetime = 0
ground.hittime  = 55
ground.velocity = 0
air.velocity = -2.5,-4

[State 3402, HitDef]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
guardflag = MA
animtype = back
damage = ifelse((var(3) = 0), 60, 180), ifelse((var(3) = 0), 12, 36)
getpower = 0
givepower = 0
pausetime = 12,12
sparkno = s7002
sparkxy = -20,-80
hitsound   = S1,10
guardsound = S6,1
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -40
air.velocity = -2.5,-4
fall = 1
fall.recover = 0
fall.damage = 20

[State 3402, re]
type = RemoveExplod
trigger1 = time = 0
ID = 8033

[State 3402, Tux]
type = VarSet
trigger1 = AnimTime = 0
v = 3
value = 0

[State 3402, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3405

;--------------------------------------------------------
[Statedef 3403]
type    = S
movetype= A
physics = S
anim = 3403
ctrl = 0

[State 3403, Tux]
type = AssertSpecial
trigger1 = 1
flag = noFG
ignorehitpause = 1

[State 3403, 2]
type = PlaySnd
trigger1 = Animelem = 2
value = 0,8

[State 3403, Tux]
type = StopSnd
triggerall = Var(3) = 1
trigger1 = Time = 0
channel = 10

[State 3403, PlaySnd]
type = PlaySnd
triggerall = Var(3) = 0
trigger1 = Animelem = 1
value = 13,20
channel = 0

[State 3403, PlaySnd]
type = PlaySnd
triggerall = Var(3) = 1
trigger1 = Animelem = 1
value = 13,15
channel = 0

[State 3403]
type = PlaySnd
trigger1 = Animelem = 9
value = 5,6

[State 3403, cosmo]
type = Explod
triggerall = NumExplod(3406) = 0
trigger1 = AnimElem = 3
pos = 0,0
anim = 3406
ID = 953
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3403, HitDef]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
attr = S, HA
guardflag = MA
animtype = up
damage = ifelse((var(3) = 0), 17, 51), ifelse((var(3) = 0), 3, 10)
getpower = 0
givepower = 0
pausetime = 0,8
sparkno = s7000
sparkxy = -10,-75
hitsound   = S1,3
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 55
ground.velocity = 1,0
air.velocity = -2.5,-4
envshake.time =  20
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5

[State 3403, HitDef]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
guardflag = MA
animtype = up
damage = ifelse((var(3) = 0), 70, 210), ifelse((var(3) = 0), 14, 42)
getpower = 0
givepower = 0
pausetime = 12,12
sparkno = s8096
sparkxy = -20,-100
hitsound   = S1,10
guardsound = S6,1
ground.type = Trip
ground.slidetime = 15
ground.hittime = 31
air.hittime = 15
ground.velocity = -10,-16
air.velocity = -5,-16
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10
fall = 1
fall.recover = 0
fall.damage = 80

[State 3403,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 8033

[State 3403, Tux]
type = VarSet
trigger1 = AnimTime = 0
v = 3
value = 0

[State 3403, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3405

;-----------------------------------------------------------------
[Statedef 3405]
type    = S
movetype= A
physics = S
anim = 3405
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 3405]
type = AssertSpecial
trigger1 = Time < 35
flag = noFG
ignorehitpause = 1

[State 3405]
type = PlaySnd
trigger1 = Animelem = 1
value = 5,11
channel = 0

[State 3405, Tux]
type = StateTypeSet
trigger1 = AnimElem = 10
movetype = I

[State 3405]
type = PlaySnd
trigger1 = Animelem = 11
value = 5,7

[State 3405]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
attr = S, HA
animtype  = Hard
damage    = 5,1
getpower = 0
givepower = 0
guardflag = MA
pausetime = 5,10
sparkno = s8094
sparkxy = -30,-50
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 16
ground.velocity = -15,10
air.velocity = -15,0
fall = 1
fall.recover = 0
p2stateno = 1025
palfx.time = 30
palfx.color = 64
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 96,96,96,4

[State 3405, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3405, remove spirale]
type = RemoveExplod
triggerall = NumExplod(3302) >= 1
trigger1 = AnimElem = 1
ID = 3302

[State 3405, remove sfondo]
type = RemoveExplod
triggerall = NumExplod(8034) >= 1
trigger1 = time = 35
ID = 8034

[State 3405, remove sfondo]
type = RemoveExplod
triggerall = NumExplod(8021) >= 1
trigger1 = time = 35
ID = 8021

[State 3405, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(953) >= 1
trigger1 = AnimElem = 1
ID = 953

[State 3405, remove spirale]
type = RemoveExplod
triggerall = NumExplod(7003) >= 1
trigger1 = AnimElem = 1
ID = 7003

[State 3405, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8092) >= 1
trigger1 = AnimElem = 1
ID = 8092

[State 3405, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8093) >= 1
trigger1 = AnimElem = 1
ID = 8093

[State 3405, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8040) >= 1
trigger1 = AnimElem = 1
ID = 8040

[State 3405]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Rolling Defense + Thunder Wave
[Statedef 3500]
type    = S
movetype= A
physics = S
anim = 3500
poweradd = -3000
ctrl = 0

[State 3500, a6]
type = AssertSpecial
trigger1 = time = [0, 410]
flag = nobardisplay
ignorehitpause = 1

[State 3500, 2]
type = AssertSpecial
trigger1 = time = [0,410]
flag = nobardisplay
flag2 = nomusic

[State 3500]
type = PlaySnd
trigger1 = Animelem = 1
value = 13,9
channel = 8

[State 3500, Tux]
type = Helper
trigger1 = AnimElem = 32
stateno = 3501
ID = 3501
pos = 12,12
postype = p1
keyctrl = 0 
ownpal = 1

[State 3500]
type = PlaySnd
trigger1 = Animelem = 35
value = 13,22
channel = 4

[State 3500, 2]
type = PlaySnd
trigger1 = Animelem = 48
value = 5,11
channel = 1

[State 3500, Pause]
type = SuperPause
trigger1 = Time = 0
time = 215
anim = s7009
pos = 0,-60
movetime = 215
darken = 1
sound = S5,10

[State 3500, sfondo1]
type = Explod
triggerall = NumExplod(8034) = 0
trigger1 = AnimElem = 1
anim = 8032
ID = 8034
postype = back
scale = 1.1,1.1
pos = 0, 0
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 413

[State 3500, explod]
type = Explod
trigger1 = time = 0
anim = 8041
pos = 0, 0
postype = back
sprpriority = -5
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove= 1
removetime = 413

[State 3500, sfondo1]
type = Explod
triggerall = NumExplod(8021) = 0
trigger1 = AnimElem = 1
anim = 8021
ID = 8021
postype = back
pos = 0, 0
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 413

[State 3500, 2]
type = PlaySnd
trigger1 = Animelem = 31
value = 0,8
channel = 2

[State 3500, 2]
type = PlaySnd
trigger1 = Animelem = 23
value = 0,9
channel = 7

[State 3500, 2]
type = PlaySnd
trigger1 = Animelem = 69
value = 0,9
channel = 9

[State 3500, Tux]
type = StateTypeSet
trigger1 = AnimElem = 29
statetype = A

[State 3500, Tux]
type = StateTypeSet
trigger1 = AnimElem = 69
movetype = I

[State 3500, Tux]
type = PlaySnd
trigger1 = AnimElem = 69
value = 5,10

[State 3500, Tux]
type = StateTypeSet
trigger1 = AnimElem = 103
statetype = S

[State 3500, 2]
type = PlaySnd
trigger1 = Animelem = 97
value = 5,6
channel = 5

[State 3500, HitDef]
type = HitDef
trigger1 = AnimElem = 49
trigger2 = AnimElem = 50
trigger3 = AnimElem = 51
trigger4 = AnimElem = 52
trigger5 = AnimElem = 53
trigger6 = AnimElem = 54
trigger7 = AnimElem = 55
trigger8 = AnimElem = 56
trigger9 = AnimElem = 56
trigger10 = AnimElem = 57
trigger11 = AnimElem = 58
trigger12 = AnimElem = 59
trigger13 = AnimElem = 60
trigger14 = AnimElem = 61
trigger15 = AnimElem = 62
trigger16 = AnimElem = 63
trigger17 = AnimElem = 65
trigger18 = AnimElem = 65
trigger19 = AnimElem = 66
attr = S, HA
guardflag = MA
animtype  = Hard
hitsound   = S1,10
guardsound = S6,1
damage = 23,7
getpower = 0
givepower = 0
pausetime = 0,3
sparkno = s8094
sparkxy = -30,-50
ground.type = High
ground.slidetime = 12
ground.hittime  = 55
ground.velocity = -3
air.velocity = -2.5,-4
envshake.time =  25
envshake.freq = 2
envshake.ampl = 2
envshake.phase = 2
palfx.time = 60
Palfx.add           = 250,100,200
Palfx.sinadd        = -112,-122,-112,3

[State 3500, HitDef]
type = HitDef
trigger1 = AnimElem = 68
attr = S, HA
guardflag = MA
animtype = back
damage = 139,42
getpower = 0
givepower = 0
pausetime =10,15
sparkno = s8095
sparkxy = -20,-100
hitsound   = S1,9
guardsound = S6,1
ground.type = Trip
ground.slidetime = 15
ground.hittime = 10
air.hittime = 15
ground.velocity = 0,-16
air.velocity = -4,-6
envshake.time =  25
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
yaccel = .45
fall = 1
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
fall.recover = 0
fall.damage = 70

[State 3500, 2]
type = PlaySnd
trigger1 = Animelem = 26
value = 0,5
channel = 6

[State 3500, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Anti-Projectile shield by Tux
[Statedef 3501]
type = S
movetype = I
physics = S
anim = 3501

[State 3501]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 3501]
type = NotHitBy
trigger1 = 1
value = SCA, AT

[State 3501]
type = HitBy
trigger1 = 1
value = SCA, AP
time = 2

[State 3501]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,NA,SA,HA,ST,SP
sparkno = 40
sparkxy = 0,-10
pausetime = 6,15
p1stateno = 3501
hitsound = s6,1

[State 3501]
type = HitOverride
trigger1 = 1
time = 2
attr = SCA, AP
stateno = 3501
ignorehitpause = 1

[State 3501]
type = DestroySelf
trigger1 = (parent,stateno != 3500)
trigger2 = (parent,stateno = 3500) && (parent,animelem = 88)

;-------------------------------------------------------
; Nebula Storm
[Statedef 3600]
type    = S
movetype= A
physics = S
anim = 3600
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0

[State 3600, a6]
type = AssertSpecial
trigger1 = time = [0, 500]
flag = nobardisplay
ignorehitpause = 1

[State 3600, 2]
type = AssertSpecial
trigger1 = time = [0,180]
flag = nobardisplay
flag2 = nomusic

[State 3600, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3600]
type = SuperPause
trigger1 = AnimElem = 2
time = 170
anim = s7009
pos = 8, -65
movetime = 170
darken = 0

[State 3600, polvereS]
type = Explod
triggerall = NumExplod(7012) = 0
trigger1 = AnimElem = 2
pos = 0,-70
postype = p1
anim = 8052
ID = 7012
sprpriority = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 124

[State 3600]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,14

[State 3600]
type = PlaySnd
trigger1 = AnimElem = 20
value = 5,14

[State 3600]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4,4

[State 3600]
type = PlaySnd
trigger1 = AnimElem = 5
value = 13,11
channel = 0

[State 3600, Darken]
type = BGPalfx
trigger1 = AnimElem = 1
ignorehitpause = 1
time = 345
mul = 200,90,200
add = 5,5,5
invertall = 0

[State 3600 , cloth pieces]
type = Explod
trigger1 =  AnimElem = 12
anim = 3604
ignorehitpause = 1
sprpriority = 2
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1
removetime = 330

[State 3600, light]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = time = 15
pos = 2,5
anim = 7020
ID = 7020
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3600]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 3
pos = 0,0
anim = 7010
ID = 7010
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3600, spausenebulosa]
type = Explod
triggerall = NumExplod(7008) = 0
trigger1 = AnimElem = 24
pos = -10,-120
anim = 7008
ID = 7008
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3600, Brilla]
type = PalFX
trigger1 = AnimElem = 24
time = 15
add = 0,0,0
sinadd = 200,100,150,3

[State 3600, sfondoventoxterra]
type = Explod
triggerall = NumExplod(8007) = 0
trigger1 = AnimElem = 13
pos = -320,75
anim = 8007
ID = 8007
postype = p1
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000
scale = 2, 1

[State 3600, simbol]
type = Explod
trigger1 = Time = 40
pos = 100,10
anim = 8061
ID = 8061
scale = .4,.4
postype = back
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 310

[State 3600, sfondogalassia]
type = Explod
triggerall = NumExplod(8036) = 0
trigger1 = time = 40
pos = 0,0
anim = 8036
ID = 8036
postype = back
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1500

[State 3600, sfondogalassia]
type = Explod
triggerall = NumExplod(8020) = 0
trigger1 = time = 30
pos = 0,0
anim = 8020
ID = 8020
postype = back
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3600, sfondovento]
type = Explod
triggerall = NumExplod(8004) = 0
trigger1 = AnimElem = 20
pos = 0,0
anim = 8004
ID = 8004
postype = back
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3600, petali]
type = Explod
trigger1 = movehit = 1
persistent = 0
triggerall = NumExplod(8053) = 0
anim = 8053
ID = 8053
pos = -8,-10
postype = p2
sprpriority = 5
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 2500
supermove = 1
persistent = 0

[State 3600]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Medium
hitflag = MAF
damage    = 0
getpower = 0
givepower = 0
guard.sparkno = -1
pausetime = 12,12
sparkno = s7000
sparkxy = -25,-60
hitsound   = S1,11
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = 0, -25
air.velocity = -2, 0
envshake.time =  30 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5
p2stateno = 3605

[State 3600]
type = ChangeState
trigger1 = animTime = 0
value = 3601
ctrl = 1

[Statedef 3601]
type    = S
movetype= A
physics = S
anim = 3601
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 3601, a6]
type = AssertSpecial
trigger1 = time = [0, 500]
flag = nobardisplay
ignorehitpause = 1

[State 3601, 2]
type = AssertSpecial
trigger1 = time = [0,180]
flag = nobardisplay
flag2 = nomusic

[State 3601, remove spirale]
type = RemoveExplod
triggerall = NumExplod(3) >= 1
trigger1 = Time = 0
ID = 3

[State 3601, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8020) >= 1
trigger1 = Time = 0
ID = 8020

[State 3601, remove spirale]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = Time = 0
ID = 7010

[State 3601, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8007) >= 1
trigger1 = Time = 0
ID = 8007

[State 3601, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8036) >= 1
trigger1 = AnimElem = 2
ID = 8036

[State 3601, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8004) >= 1
trigger1 = AnimElem = 2
ID = 8004

[State 3601]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,14

[State 3601, cosmo]
type = Explod
triggerall = NumExplod(3603) = 0
trigger1 = AnimElem = 1
pos = 5,0
anim = 3603
ID = 3603
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3601, sfondovento]
type = Explod
triggerall = NumExplod(8003) = 0
trigger1 = AnimElem = 2
pos = 0,0
anim = 8003
ID = 8003
postype = back
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3601, spolverenew]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = AnimElem = 2
pos = 0,12
anim = 8001
ID = 8001
sprpriority = 3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3601, sfondospolvereva]
type = Explod
triggerall = NumExplod(8009) = 0
trigger1 = time = 0
pos = 10,0
anim = 8009
ID = 8009
postype = p1
sprpriority = -6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3601, sfondopolvereaterra]
type = Explod
triggerall = NumExplod(8008) = 0
trigger1 = time = 0
pos = -320,75
anim = 8008
ID = 8008
postype = p1
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000
scale = 2, 1

[State 3601, superpolvere]
type = Explod
triggerall = NumExplod(7012) = 0
trigger1 = Time = 0
pos = 7,0
anim = 7012
ID = 7012
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 30000, sfondogalassia]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 8036
ID = 7012
postype = back
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3601, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3601, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8053) >= 1
trigger1 = projcontact8000 = 1
ID = 8053

[State 3601, hit]
type = Explod
triggerall = NumExplod(7000) <= 2
trigger1 = projcontact8000 = 1
pos = -20,-65
anim = 7000
ID = 7000
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3601, Brilla]
type = PalFX
trigger1 = time = 10
time = 15
add = 0,0,0
sinadd = 200,100,150,3

[State 3601, rayo]
type = Projectile
trigger1 = time = 10
projanim = 8000
projID = 8000
projhits = 1000
projmisstime = 3
projpriority = 4
projremovetime = 170
offset = 41, -78
sparkno = -1
sparkxy = 0,0
velocity = 0,0 
attr = S, HP
damage    = 7
getpower = 0
givepower = 0
animtype = Heavy
pausetime = 0,9
hitsound   = S0,5
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3
air.animtype = Back
air.velocity = -3,-5
air.juggle = 3
;PalFX
Palfx.time          = 50
Palfx.add           = 250,100,200
Palfx.sinadd        = -112,-122,-112,3

[State 3601, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

;---------------------------------
[State 3601, ventonebulosa]
type = Explod
triggerall = NumExplod(8050) = 0
trigger1 = AnimElem = 255555
pos = 0,-65
anim = 8050
ID = 8050
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3601, sfondo2]
type = Explod
triggerall = NumExplod(81) = 0
trigger1 = AnimElem = 255555
pos = -320,0
anim = 81
ID = 81
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 30000, sfondogalassia]
type = Explod
triggerall = NumExplod(8036) = 0
trigger1 = time = 0
pos = 0,0
anim = 8036
ID = 8036
postype = back
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 1000

[State 3601]
type = ChangeState
trigger1 = Time = 150
value = 3602
ctrl = 1

;---------------------------------
[Statedef 3602]
type    = S
movetype= A
physics = S
anim = 3602
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 3602, a6]
type = AssertSpecial
trigger1 = time = [0, 500]
flag = nobardisplay
ignorehitpause = 1

[State 3602, 2]
type = AssertSpecial
trigger1 = time = [0,180]
flag = nobardisplay
flag2 = nomusic

[State 3602, remove spirale]
type = RemoveExplod
triggerall = NumExplod(7012) >= 1
trigger1 = Time = 5
ID = 7012

[State 3602, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8009) >= 1
trigger1 = Time = 5
ID = 8009

[State 3602, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8008) >= 1
trigger1 = Time = 20
ID = 8008

[State 3602, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8001) >= 1
trigger1 = Time = 5
ID = 8001

[State 3602, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8003) >= 1
trigger1 = Time = 25
ID = 8003

[State 3602, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8004) >= 1
trigger1 = Time = 25
ID = 8004

[State 3602, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8050) >= 1
trigger1 = AnimElem = 6
ID = 8050

[State 3601, remove spirale]
type = RemoveExplod
triggerall = NumExplod(3603) >= 1
trigger1 = AnimElem = 5
ID = 3603

[State 3602]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = Time = 5
pos = 9,0
anim = 7010
ID = 7010
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 30

[State 3602]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 11
pos = 3,0
anim = 7010
ID = 7010
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 30

[State 3602, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3602, remove spirale]
type = RemoveExplod
triggerall = NumExplod(8053) >= 1
trigger1 = movehit = 1
ID = 8053

[State 3602]
type = PlaySnd
trigger1 = AnimElem = 14
value = 4,3

[State 3602] 
type = HitDef
trigger1 = time = 0
attr = S, HP
animtype  = Up               
damage    = 999999
getpower = 0
givepower = 0
priority  = 5
pausetime = 10,10
sparkno = s7002
sparkxy = -30,-70
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -1,-15
air.velocity = -1,-15
guard.velocity = -11
airguard.velocity = -4.5,-5
p2facing = 1                 
fall = 1
fall.recover = 0             
fall.damage = 80
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
;mindist = 50,-100            
;maxdist = 100,-10           
yaccel = .8
;PalFX
Palfx.time          = 100
Palfx.add           = 250,100,200
Palfx.sinadd        = -112,-122,-112,3
p2stateno = 1029

[State 3602, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3602, WinPose]
type = VarSet
trigger1 = P2Life = 0
v = 4
value = 1

[State 3602]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; paralisi state
[Statedef 3605]
type = S
movetype= H
physics = N
velset = 0,0

[State 3605, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1028

[State 3605, Velset]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3605]
type = PlaySnd
trigger1 = movehit = 1
value = 11,0
persistent = 0

[State 3605]
type = VelSet
trigger1 = time = 0
X = 0
Y = 0

[State 3605]
type = SelfState
trigger1 = time = 2500
value = 0
ctrl = 1

;-------------------------------------------------------
; Brotherly Aid by Tux
[Statedef 3700]
type    = S
movetype= A
physics = S
velset = 0,0
juggle = 0
ctrl = 0

[State 3700]
type = ChangeState
triggerall = PrevStateNo != 3200
trigger1 = Time = 0
value = 3200
ctrl = 0

[State 3700]
type = AssertSpecial
triggerall = PrevStateNo = 3200
trigger1 = Time = [0,121]
flag = nobardisplay
flag2 = nomusic
ignorehitpause = 1

[State 3700]
type = ChangeAnim
triggerall = PrevStateNo = 3200
trigger1 = Time = 0
value = 3700

[State 3700]
type = RemoveExplod
triggerall = NumExplod(7010) != 0
trigger1 = Time = 0
ID = 7010

[State 3700]
type = RemoveExplod
triggerall = NumExplod(7) != 0
trigger1 = Time = 0
ID = 7

[State 3700]
type = RemoveExplod
triggerall = NumExplod(8033) != 0
trigger1 = Time = 0
ID = 8033

[State 3700]
type = RemoveExplod
triggerall = NumExplod(8041) != 0
trigger1 = Time = 0
ID = 8041

[State 3700]
type = RemoveExplod
triggerall = NumExplod(3203) != 0
trigger1 = Time = 0
ID = 3203

[State 3700]
type = SuperPause
triggerall = PrevStateNo = 3200
trigger1 = Time = 0
time = 110
movetime = 110
darken = 1
anim = -1

[State 3700]
type = PlaySnd
triggerall = PrevStateNo = 3200
trigger1 = Time = 0
value = 13,18
channel = 0

[State 3700]
type = PlaySnd
trigger1 = Time = 35
value = 5,4

[State 3700]
type = Projectile
trigger1 = time = 36
projanim = 3710
projhits = 1
projhitanim = -1
postype = back
offset = -25,0
sparkno = S7072
sparkxy = 45,-155
hitsound = S1,14
velocity = 7,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage = 15
getpower = 0
givepower = 0
animtype = Hard
pausetime = 0,9
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
kill = 0

[State 3700]
type = Projectile
trigger1 = time = 37
projanim = 3711
projhits = 1
projhitanim = -1
postype = back
offset = -25,0
sparkno = S7072
sparkxy = 45,-145
hitsound = S1,14
velocity = 8,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage = 15
getpower = 0
givepower = 0
animtype = Hard
pausetime = 0,9
guardsound = 6,0
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
kill = 0

[State 3700]
type = Projectile
trigger1 = time = 38
projanim = 3712
projhits = 1
projhitanim = -1
postype = back
offset = -25,0
sparkno = S7072
sparkxy = 45,-135
hitsound = S1,14
velocity = 9,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage = 15
getpower = 0
givepower = 0
animtype = Hard
pausetime = 0,9
guardsound = 6,0
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
kill = 0

[State 3700]
type = Projectile
trigger1 = time = 39
projanim = 3713
projhits = 1
projhitanim = -1
postype = back
offset = -25,0
sparkno = S7072
sparkxy = 45,-125
hitsound = S1,14
velocity = 10,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage = 15
getpower = 0
givepower = 0
animtype = Hard
pausetime = 0,9
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
kill = 0

[State 3700]
type = Projectile
trigger1 = time = 40
projanim = 3714
projhits = 1
projhitanim = -1
postype = back
offset = -25,0
sparkno = S7072
sparkxy = 45,115
hitsound = S1,14
velocity = 11,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage = 15
getpower = 0
givepower = 0
animtype = Hard
pausetime = 0,9
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
kill = 0

[State 3700]
type = Helper
trigger1 = Time = 70
stateno = 3702
ID = 3702
pos = -50,0
postype = back
keyctrl = 0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 3700]
type = VarSet
triggerall = Time >= 70
triggerall = NumHelper(3702) = 0
trigger1 = P2Life <= 0
v = 5
value = 1

[State 3700]
type = ChangeState
triggerall = Time >= 70
trigger1 = NumHelper(3702) = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Brotherly Aid (miss)
[Statedef 3701]
type    = S
movetype= I
physics = S
anim = 3201
velset = 0,0
juggle = 0
ctrl = 0

[State 3701]
type = RemoveExplod
triggerall = NumExplod(7010) != 0
trigger1 = Time = 0
ID = 7010

[State 3701]
type = RemoveExplod
triggerall = NumExplod(7) != 0
trigger1 = Time = 0
ID = 7

[State 3701]
type = RemoveExplod
triggerall = NumExplod(8033) != 0
trigger1 = Time = 0
ID = 8033

[State 3701]
type = RemoveExplod
triggerall = NumExplod(8041) != 0
trigger1 = Time = 0
ID = 8041

[State 3701]
type = PlaySnd
trigger1 = Time = 0
value = 13,18
channel = 0

[State 3701]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Brotherly Aid (Ikki arrives)
[Statedef 3702]
type    = A
movetype= A
physics = A
anim = 8100
velset = 5.5,-9
juggle = 0
ctrl = 0
sprpriority = 2

[State 3702]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 3702]
type = VelSet
triggerall = parent,Facing = 1
trigger1 = Pos X >= (parent,Pos X + 5)
x = 0
y = 0

[State 3702]
type = ChangeState
triggerall = parent,Facing = 1
trigger1 = Pos X >= (parent,Pos X + 5)
value = 3703

[State 3702]
type = VelSet
triggerall = parent,Facing = -1
trigger1 = Pos X <= (parent,Pos X + 5)
x = 0
y = 0

[State 3702]
type = ChangeState
triggerall = parent,Facing = -1
trigger1 = Pos X <= (parent,Pos X + 5)
value = 3703

;-------------------------------------------------------
; Brotherly Aid (Ikki attacks)
[Statedef 3703]
type    = A
movetype= A
physics = S
anim = 8101
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = 2

[State 3703]
type = SuperPause
trigger1 = Time = 0
time = 50
movetime = 50
darken = 1
anim = -1

[State 3703]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 200
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3703]
type = PlaySnd
trigger1 = AnimElem = 1
value = 15,0

[State 3703]
type = Explod
trigger1 = AnimElem = 1
pos = 0,-100
anim = 8108
ID = 8108
postype = p1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 300
supermovetime = 700

[State 3703]
type = Explod
trigger1 = ProjContact = 1
trigger1 = Time
trigger1 = Time % 5 = 0
pos = -200,0
random = 320,240
anim = 8108
ID = 81080
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
removetime = 50
supermovetime = 700

[State 3703]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X > 0
pos = 320,0
anim = 8109
ID = 8109
postype = left
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 350
supermovetime = 700

[State 3703]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X < 0
pos = -320,0
anim = 8110
ID = 8110
postype = right
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 350
supermovetime = 700

[State 3703]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X < 0
pos = -350,230
anim = 8111
ID = 8111
postype = front
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 350
supermovetime = 700

[State 3703]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X > 0
pos = -150,230
anim = 8111
ID = 81110
postype = back
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 350
supermovetime = 700

[State 3703]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X < 0
pos = -350,-2
anim = 8107
ID = 8107
postype = front
facing = 1
vfacing = 1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 350
supermovetime = 700

[State 3703]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X  > 0
pos = 0,0
anim = 8107
ID = 81070
postype = back
facing = 1
vfacing = 1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 350
supermovetime = 700

[State 3703]
type = Projectile
trigger1 = AnimElem = 12
projanim = 8113
projhits = 8
projID = 81130
projscale = 1.5,1.5
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound = 120
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = S, HP
damage = 15
getpower = 0
givepower = 0
animtype = hard
hitflag = MAF
pausetime = 3,20
hitsound = S1,15
sparkno = -1
sparkxy = 0,0
ground.type = Low
ground.slidetime = 1
ground.hittime = 8
ground.velocity = -1
air.animtype = Back
air.velocity = -1,-1
air.juggle = 3
down.velocity = -4,-3.5
down.hittime = 15
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
supermovetime = 700
kill = 0

[State 3703]
type = Projectile
trigger1 = AnimElem = 20
projanim = 8113
projhits = 8
projID = 81131
projscale = 1.5,1.5
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound = 120
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = S, HP
damage = 15
getpower = 0
givepower = 0
animtype = hard
hitflag = MAF
pausetime = 3,20
hitsound = S1,15
sparkno =-1
sparkxy = 0,0
ground.type = Low
ground.slidetime = 1
ground.hittime = 8
ground.velocity = -1
air.animtype = Back
air.velocity = -1,-1
air.juggle = 3
down.velocity = -4,-3.5
down.hittime = 15
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
supermovetime = 700
kill = 0

[State 3703]
type = Projectile
trigger1 = AnimElem = 28
projanim = 8113
projhits = 8
projID = 81132
projscale = 1.5,1.5
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound = 120
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = S, HP
damage = 15
getpower = 0
givepower = 0
animtype = hard
hitflag = MAF
pausetime = 3,20
hitsound = S1,15
sparkno = -1
sparkxy = 0,0
ground.type = Low
ground.slidetime = 1
ground.hittime = 8
ground.velocity = -1
air.animtype = Back
air.velocity = -1,-1
air.juggle = 3
down.velocity = -4,-3.5
down.hittime = 15
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
supermovetime = 700
kill = 0

[State 3703]
type = Projectile
trigger1 = AnimElem = 40
projanim = 8113
projhits = 1
projID = 81133
projscale = 1.5,1.5
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound = 120
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = S, HP
damage = 15
getpower = 0
givepower = 0
animtype = hard
hitflag = MAF
pausetime = 3,200
hitsound   = S1,15
guardsound = S6,0
sparkno = -1
sparkxy = 0,0
ground.type = Low
ground.slidetime = 1
ground.hittime = 8
ground.velocity = -1
air.animtype = Back
air.velocity = -1,-1
air.juggle = 3
down.velocity = -4,-3.5
down.hittime = 15
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
supermovetime = 700
kill = 0

[State 3703]
type = Explod
trigger1 = AnimElem = 43
pos = 0,0
anim = 8105
ID = 8105
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =-2
supermovetime = 700

[State 3703]
type = PlaySnd
trigger1 = AnimElem = 44
value = 15,1

[State 3703]
type = Explod
trigger1 = AnimElem = 45
pos = 15,-100
anim = 8106
ID = 8106
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =-2
supermovetime = 700

[State 3703]
type = Projectile
trigger1 = AnimElem = 52
projanim = 8114
projID = 8114
projhits = 1
projhitanim = -1
offset = 0,-40
sparkno = S8112
sparkxy = 50,30
velocity = 5,2
attr = S, HP
hitflag = MAF
damage = 465
getpower = 0
givepower = 0
animtype = Hard
pausetime = 0,9
hitsound = S1,16
ground.type = low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
envshake.time = 15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5
fall = 1
palfx.time = 120
palfx.mul = 240,192,128
palfx.sinadd = 96,128,160,16
palfx.add = 224,128,64
supermovetime = 700
kill = 1

[State 3703]
type = ChangeState
trigger1 = AnimTime = 0
value = 3704

;-------------------------------------------------------
; Brotherly Aid (Ikki leaves)
[Statedef 3704]
type    = A
movetype= I
physics = N
anim = 8102
velset = 0,-11
juggle = 0
ctrl = 0
sprpriority = 2

[State 3704]
type = PlaySnd
trigger1 = Time = 0
value = 2,1

[State 3704]
type = AfterImage
trigger1 = Time = 0
time = 20
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 3704]
type = DestroySelf
trigger1 = AnimTime = 0

;-------------------------------------------------------
; Chain (helper)
[Statedef 4320]
type    = A
movetype= A
physics = S
juggle  = 1
poweradd = 0
ctrl = 0
anim = 8080

[State 4320]
type = VelSet ;Aumento de velocidad del personaje (efecto de correr)
trigger1 = Time >= 0 ;todo el tiempo
x = 10 ; Mover seis pixeles

[State 4320]
type = hitdef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
forcestand = 1
animtype = Hard
air.animtype = Back
fall.animtype = Back
attr = S, HA
guardflag = MA
damage = 12,2
getpower = 0
givepower = 0
sparkno = s8091
sparkxy = -20,-60
hitsound   = S1,5
guardsound = S6,1
pausetime = 0,12
ground.type = low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
guard.slidetime = 10
guard.hittime = 10
guard.velocity = -1
airguard.velocity = -3,-4
air.type = high
air.velocity = -3,-5
air.hittime = 15
ground.cornerpush.veloff = -9
guard.cornerpush.veloff = -12
down.cornerpush.veloff = -10

[State 4320, byebye]
type = DestroySelf
trigger1 = Time = 80

[Statedef 4321]
type    = A
movetype= A
physics = S
juggle  = 1
poweradd = 0
ctrl = 0
anim = 8081

[State 4321]
type = VelSet ;Aumento de velocidad del personaje (efecto de correr)
trigger1 = Time >= 0 ;todo el tiempo
x = 10 ; Mover seis pixeles

[State 4321]
type = hitdef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
forcestand = 1
animtype = Hard
air.animtype = Back
fall.animtype = Back
attr = S, HA
guardflag = MA
damage = 12,2
getpower = 0
givepower = 0
sparkno = s8091
sparkxy = -20,-60
hitsound   = S1,3
guardsound = S6,1
pausetime = 0,12
ground.type = low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
guard.slidetime = 10
guard.hittime = 10
guard.velocity = -1
airguard.velocity = -3,-4
air.type = high
air.velocity = -3,-5
air.hittime = 15
ground.cornerpush.veloff = -9
guard.cornerpush.veloff = -12
down.cornerpush.veloff = -10

[State 4320, byebye]
type = DestroySelf
trigger1 = Time = 80

[Statedef 4322]
type    = A
movetype= A
physics = S
juggle  = 1
poweradd = 0
ctrl = 0
anim = 8082

[State 4322]
type = VelSet ;Aumento de velocidad del personaje (efecto de correr)
trigger1 = Time >= 0 ;todo el tiempo
x = 10 ; Mover seis pixeles

[State 4322]
type = hitdef
trigger1=animelem= 1
trigger2 =animelem =2
trigger3 = animelem =3
trigger4 = animelem =4
trigger5 = animelem =5
trigger6 =animelem =6
trigger7 =animelem =7
trigger8 =animelem =8
forcestand = 1
animtype = Hard
air.animtype = Back
fall.animtype = Back
attr = S, HA
guardflag = MA
damage = 12,2
getpower = 0
givepower = 0
sparkno = s8091
sparkxy = -20,-60
hitsound   = S1,3
guardsound = S6,1
pausetime = 0,12
ground.type = low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
guard.slidetime = 10
guard.hittime = 10
guard.velocity = -1
airguard.velocity = -3,-4
air.type = high
air.velocity = -3,-5
air.hittime = 15
ground.cornerpush.veloff = -9
guard.cornerpush.veloff = -12
down.cornerpush.veloff = -10

[State 4320, byebye]
type = DestroySelf
trigger1 = Time = 80

[Statedef 4323]
type    = A
movetype= A
physics = S
juggle  = 1
poweradd = 0
ctrl = 0
anim = 8083

[State 4323]
type = VelSet ;Aumento de velocidad del personaje (efecto de correr)
trigger1 = Time >= 0 ;todo el tiempo
x = 10 ; Mover seis pixeles

[State 4323]
type = hitdef
trigger1=animelem= 1
trigger2 =animelem =2
trigger3 = animelem =3
trigger4 = animelem =4
trigger5 = animelem =5
trigger6 =animelem =6
trigger7 =animelem =7
trigger8 =animelem =8
forcestand = 1
animtype = Hard
air.animtype = Back
fall.animtype = Back
attr = S, HA
guardflag = MA
damage = 10,2
getpower = 0
givepower = 0
sparkno = s8091
sparkxy = -20,-60
hitsound   = S1,5
guardsound = S6,1
pausetime = 0,12
ground.type = low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
guard.slidetime = 10
guard.hittime = 10
guard.velocity = -1
airguard.velocity = -3,-4
air.type = high
air.velocity = -3,-5
air.hittime = 15
ground.cornerpush.veloff = -9
guard.cornerpush.veloff = -12
down.cornerpush.veloff = -10

[State 4320, byebye]
type = DestroySelf
trigger1 = Time = 80

[Statedef 4324]
type    = A
movetype= A
physics = S
juggle  = 1
poweradd = 0
ctrl = 0
anim = 8084

[State 4324]
type = VelSet ;Aumento de velocidad del personaje (efecto de correr)
trigger1 = Time >= 0 ;todo el tiempo
x = 10 ; Mover seis pixeles

[State 4324]
type = hitdef
trigger1=animelem= 1
trigger2 =animelem =2
trigger3 = animelem =3
trigger4 = animelem =4
trigger5 = animelem =5
trigger6 =animelem =6
trigger7 =animelem =7
trigger8 =animelem =8
forcestand = 1
animtype = Hard
air.animtype = Back
fall.animtype = Back
attr = S, HA
guardflag = MA
sparkno = s8091
sparkxy = -20,-60
damage = 12,2
getpower = 0
givepower = 0
hitsound   = S1,3
guardsound = S6,1
pausetime = 0,12
ground.type = low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
guard.slidetime = 10
guard.hittime = 10
guard.velocity = -1
airguard.velocity = -3,-4
air.type = high
air.velocity = -3,-5
air.hittime = 15
ground.cornerpush.veloff = -9
guard.cornerpush.veloff = -12
down.cornerpush.veloff = -10

[State 4320, byebye]
type = DestroySelf
trigger1 = Time = 80

[Statedef 4325]
type    = A
movetype= A
physics = S
juggle  = 1
poweradd = 0
ctrl = 0
anim = 8085

[State 4325]
type = VelSet ;Aumento de velocidad del personaje (efecto de correr)
trigger1 = Time >= 0 ;todo el tiempo
x = 10 ; Mover seis pixeles

[State 4325]
type = hitdef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
forcestand = 1
animtype = Hard
air.animtype = Back
fall.animtype = Back
attr = S, HA
guardflag = MA
damage = 12,2
getpower = 0
givepower = 0
sparkno = s8091
sparkxy = -20,-60
hitsound   = S1,5
guardsound = S6,1
pausetime = 0,12
ground.type = low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
guard.slidetime = 10
guard.hittime = 10
guard.velocity = -1
airguard.velocity = -3,-4
air.type = high
air.velocity = -3,-5
air.hittime = 15
ground.cornerpush.veloff = -9
guard.cornerpush.veloff = -12
down.cornerpush.veloff = -10

[State 4320, byebye]
type = DestroySelf
trigger1 = Time = 80

[Statedef 4326]
type    = A
movetype= A
physics = S
juggle  = 1
poweradd = 0
ctrl = 0
anim = 8086

[State 4326]
type = VelSet ;Aumento de velocidad del personaje (efecto de correr)
trigger1 = Time >= 0 ;todo el tiempo
x = 10 ; Mover seis pixeles

[State 4326]
type = hitdef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
forcestand = 1
animtype = Hard
air.animtype = Back
fall.animtype = Back
attr = S, HA
guardflag = MA
damage = 12,2
getpower = 0
givepower = 0
sparkno = s8091
sparkxy = -20,-60
hitsound   = S1,3
guardsound = S6,1
pausetime = 0,12
ground.type = low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
guard.slidetime = 10
guard.hittime = 10
guard.velocity = -1
airguard.velocity = -3,-4
air.type = high
air.velocity = -3,-5
air.hittime = 15
ground.cornerpush.veloff = -9
guard.cornerpush.veloff = -12
down.cornerpush.veloff = -10

[State 4320, byebye]
type = DestroySelf
trigger1 = Time = 80

[Statedef 4327]
type    = A
movetype= A
physics = S
juggle  = 1
poweradd = 0
ctrl = 0
anim = 8087

[State 4327]
type = VelSet ;Aumento de velocidad del personaje (efecto de correr)
trigger1 = Time >= 0 ;todo el tiempo
x = 10 ; Mover seis pixeles

[State 4327]
type = hitdef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
forcestand = 1
animtype = Hard
air.animtype = Back
fall.animtype = Back
attr = S, HA
guardflag = MA
sparkno = s8091
sparkxy = -20,-60
damage = 10,2
getpower = 0
givepower = 0
hitsound   = S1,3
guardsound = S6,1
pausetime = 0,12
ground.type = low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
guard.slidetime = 10
guard.hittime = 10
guard.velocity = -1
airguard.velocity = -3,-4
air.type = high
air.velocity = -3,-5
air.hittime = 15
ground.cornerpush.veloff = -9
guard.cornerpush.veloff = -12
down.cornerpush.veloff = -10

[State 4320, byebye]
type = DestroySelf
trigger1 = Time = 80

[Statedef 4328]
type    = A
movetype= A
physics = S
juggle  = 1
poweradd = 0
ctrl = 0
anim = 8080

[State 4328]
type = VelSet ;Aumento de velocidad del personaje (efecto de correr)
trigger1 = Time >= 0 ;todo el tiempo
x = 10 ; Mover seis pixeles

[State 4328]
type = hitdef
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
trigger5 = animelem = 5
trigger6 = animelem = 6
trigger7 = animelem = 7
trigger8 = animelem = 8
forcestand = 1
animtype = Hard
air.animtype = Back
fall.animtype = Back
attr = S, HA
guardflag = MA
damage = 14,2
getpower = 0
givepower = 0
sparkno = s956
sparkxy = 0,-75
hitsound   = S1,5
guardsound = S6,1
pausetime = 0,12
ground.type = low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -1
guard.slidetime = 10
guard.hittime = 10
guard.velocity = -1
airguard.velocity = -3,-4
air.type = high
air.velocity = -3,-5
air.hittime = 15
ground.cornerpush.veloff = -9
guard.cornerpush.veloff = -12
down.cornerpush.veloff = -10
fall = 1
fall.recover = 0
fall.envshake.ampl = 5
fall.envshake.freq = 10
fall.envshake.time = 10

[State 4320, byebye]
type = DestroySelf
trigger1 = Time = 80

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

;-------------------------------------------------------
;-------------------------------------------------------
;Combo 
;-------------------------------------------------------
;-------------------------------------------------------

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 220
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 200) && (movecontact) 
value = 1020

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 215) 
trigger1 = (movecontact)
value = 220
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 215) && (movecontact) 
value = 1010

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220) 
trigger1 = (movecontact)
value = 215
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 215) && (prevstateno = 220) && (movecontact) 
value = 1010

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 220
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 200) && (movecontact) 
value = 215
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 215) && (prevstateno = 220) && (movecontact) 
value = 210

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 215
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 215) && (prevstateno = 200) && (movecontact) 
value = 205

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240) 
trigger1 = (movecontact)
value = 250

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 250) 
trigger1 = (movecontact)
value = 240

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240) 
trigger1 = (movecontact)
value = 250
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 240) && (movecontact) 
value = 556

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 250) 
trigger1 = (movecontact)
value = 240
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 250) && (movecontact) 
value = 556

;-------------------------------------------------------
;-------------------------------------------------------

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400) 
trigger1 = (movecontact)
value = 410
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 400) && (movecontact) 
value = 420

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 400
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = C)
trigger1 = (stateno = 400) && (prevstateno = 430) && (movecontact) 
value = 410
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 400) && (movecontact) 
value = 420

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 440) 
trigger1 = (movecontact)
value = 450

;-------------------------------------------------------
;-------------------------------------------------------

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 610
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 600) && (movecontact) 
value = 620

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 600
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 630) && (movecontact) 
value = 620

[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 1600

;-------------------------------------------------------
;-------------------------------------------------------
;Special Moves
;-------------------------------------------------------
;-------------------------------------------------------

; Cosmo Charge
[State -2]
type = ChangeState
value = 900
Triggerall = roundstate = 2
triggerall = var(8) = 0
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0,79])
trigger1 = (P2bodydist X >= 150) && (power < 3000) && (prevstateno != 5120)

; Chain Shock
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [80,119])
trigger1 = (P2bodydist X <= 60) && (p2statetype = S) && (prevstateno != 5120)
value = 830

; Chain Attack 1
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [120, 159])
trigger1 = (P2bodydist X >= 50) && (prevstateno != 5120)
value = 1000

; Chain Attack 2
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [160, 199])
trigger1 = (P2bodydist X <= 60) && (prevstateno != 5120)
value = 1010

; Chain Attack 3
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [200, 239])
trigger1 = (P2bodydist X <= 70) && (prevstateno != 5120)
value = 1020

; Chain Attack (air)
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [240, 279])
trigger1 = (p2bodydist X <= 110) && (p2bodydist X > 70) && (prevstateno != 5120)
value = 1100

; Chain Spiral 1
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [280, 319])
trigger1 = (P2bodydist X <= 90) && (prevstateno != 5120)
value = 1200

; Chain Spiral 2
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [320, 359])
trigger1 = (P2bodydist X > 70) && (P2bodydist X <= 150) && (prevstateno != 5120)
value = 1300

; Nebula Stream
[State -2]
type = ChangeState
value = 1400
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [360, 399])
trigger1 = ((prevstateno != 1400) && (p2movetype != H)) && (prevstateno != 5120)

; Nebula Kick
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [400, 439])
trigger1 = (P2bodydist X >= 50) && (prevstateno != 5120)
value = 556

; Nebula Kick (air)
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [440, 479])
trigger1 = (p2bodydist X <= 120) && (p2bodydist X >= 70) && (prevstateno != 5120)
value = 1600

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [480,519])
value = 197

;-------------------------------------------------------
;-------------------------------------------------------
;Super Moves
;-------------------------------------------------------
;-------------------------------------------------------

; Rolling Defense
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [520,559])
trigger1 = (power >= 1000) && (power < 3000) && (prevstateno != 5120) && (p2movetype != H)
value = 950

; 7th Sense
[State -2]
type = ChangeState
Triggerall = roundstate = 2
triggerall = var(8) = 0
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (prevstateno != 5120)
trigger1 = (p2bodydist X >= 100) && (power >= 3000) && (life <= 250) && (random = [560,599])
value = 999

; Thunder Wave
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [600, 639])
trigger1 = (P2bodydist X >= 60) && (power >= 1000) && (power < 3000) && (prevstateno != 5120)
value = 3000

; Nebula Chain 1
[State -2]
type = ChangeState
value = 3100
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (ctrl) && (power >= 2000) && (statetype = S)
trigger1 = (P2bodydist X >= 70) && (random = [640, 679])

; Nebula Chain 2
[State -2]
type = ChangeState
value = 3200
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 70) && (power >= 3000) && (random = [680,719])

; Nebula Chain Circle 1
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (prevstateno != 5120)
trigger1 = (p2bodydist X <= 160) && (p2bodydist X >= 50) && (power >= 1000) && (power < 3000) && (random = [720,759])
value = 3300

; Nebula Chain Circle 2
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (prevstateno != 5120)
trigger1 = (p2bodydist X >= 70) && (power >= 2000) && (random = [760,799])
value = 3400

; Nebula Chain Circle 3
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (prevstateno != 5120)
trigger1 = (p2bodydist X >= 80) && (power >= 3000) && (random = [800,839])
value = 3500

; Nebula Storm
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (prevstateno != 5120)
trigger1 = (p2bodydist X >= 90) && (power >= 3000) && (p2life <= 250) && (random = [840,879])
value = 3600

; Brotherly Aid
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (P2Name != "ikki") && (P3Name != "ikki") && (P4Name != "ikki")
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (prevstateno != 5120)
trigger1 = (p2bodydist X >= 50) && (power >= 3000) && (life <= 250) && (random = [880,919])
value = 3700

;------------------------------------------
; -------------- END OF AI ---------------
;------------------------------------------

[State -2, VarSet]
type = VarSet
triggerall = var(9) = 0
triggerall = var(8) = 1
trigger1 = power = 0
v = 8
value = 0

;Face Right
[State -2, faceVar] 
type = VarSet
triggerall = Var(51) != 2
trigger1 = Facing = 1
v = 51
value = 1

;Face Left
[State -2, faceVar] 
type = VarSet
triggerall = Var(51) != 1
trigger1 = Facing = -1
v = 51
value = 2

;Right
[State -2 ,2]
type = Explod
triggerAll = Var(51) = 1
trigger1 = StateNo = 999
trigger1 = Time = 26
anim = 7099
postype = left
pos = 65,175
sprpriority = -5
ownpal = 1
persistent = 0
removeongethit = 0
supermove = 1

;Left 
[State -2 ,2]
type = Explod
triggerAll = Var(51) = 2
trigger1 = StateNo = 999
trigger1 = Time = 26
anim = 7099
postype = right
pos = -65,175
sprpriority = -5
ownpal = 1
persistent = 0
removeongethit = 0
supermove = 1

[State -2, powerAdd]
type = powerAdd
trigger1 = var(8) = 1
value = -5

[State -2, Brilla]
type = PalFX
triggerall = var(8) = 1
triggerall = power >= 1
triggerall = life >= 1
trigger1  = anim != 6666666
trigger1 = AnimElem = 2
time = 100
add = 5,5,5
sinadd = 200,200,10,4

[State -2]
type = AttackMulSet
triggerall = var(8) = 1
triggerall = power >= 1
triggerall = life >= 1
trigger1 = anim != 6666666
trigger1 = AnimElem = 2
value = 2
 
[State -2]
type = AttackMulSet
triggerall = var(8) != 1
triggerall = var(8) = 0
triggerall = power < 1
triggerall = life >= 1
trigger1 = anim != 6666666
trigger1 = AnimElem = 2
value = 1

[State -2, STAND]
type = Explod
triggerall = Life > 250
triggerall = stateno = 0
triggerall = var(8) = 1
triggerall = NumExplod(2) = 0
trigger1 = time = 1
anim = 2
ID = 2
pos = 0,0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
supermove = 0
removeongethit = 1

[State -2, STAND]
type = Explod
triggerall = Life <= 250
triggerall = stateno = 0
triggerall = var(8) = 1
triggerall = NumExplod(2) = 0
trigger1 = time = 1
anim = 3
ID = 3
pos = -1,1
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
supermove = 0
removeongethit = 1

;------------------------------------------
;------------------------------------------
;------------------------------------------
;------------------------------------------

;---------- Hit ------------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5010
value = 10,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
value = 10,1

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5001
trigger2 = anim = 5011
value = 10,0

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5021
value = 10,0

[State -2]
type = PlaySnd
triggerall = random < 750
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10,2

[State -2]
type = PlaySnd
trigger1 = random < 750
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10,2

[State -2 , 7]
type = PlaySnd
triggerall = Alive
triggerall = stateno = 5100
trigger1 = time = 3
value = 10,3

;-------------------------------------
;-------------------------------------

[Statedef -3]

;-------------------------------------

[State -3, AI Activate]
type = VarSet
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
var(59) = 1

;-------------------------------------
;-------------------------------------

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life <= 250
ID = 2

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life > 250
ID = 3

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(1920) >= 1
trigger1 = stateno != 193
ID = 1920

[State -3, remove EX]
type = RemoveExplod
triggerall = NumExplod(8010) >= 1
trigger1 = stateno != 1600
ID = 8010

;-------------------------------------
;-------------------------------------

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 3
value = 3,0

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 3
value = F3,0

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 6
value = 3,1

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 6
value = F3,1

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 21
trigger1 = AnimElem = 3
value = 3,0

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 21
trigger1 = AnimElem = 3
value = F3,0

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 21
trigger1 = AnimElem = 6
value = 3,1

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 21
trigger1 = AnimElem = 6
value = F3,1

;---------------------------------------

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
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = 2,1

[State -3, AirJump]
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
removeongethit = 1
ownpal = 1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = AnimElem = 3
pos = 0,0
anim = 7085
sprpriority = 5
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
value = 3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 2
value = F3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 5
value = 3,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 5
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
trigger1 = time = 1
anim = 70841
pos = -10,5
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

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
triggerall = anim = 5148
trigger1 = time = 1
trigger2 = time = 10
trigger3 = time = 20
value = 11,1

;---------------------------------------

[State -3, StopSnd]
type = Stopsnd
trigger1 = Power < 3000
trigger2 = Stateno != 0
channel = 9

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 3500
channel = 1

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 3500
channel = 2

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 3500
channel = 3

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 3500
channel = 4

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 3500
channel = 5

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 3500
channel = 6

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 3500
channel = 7

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 3500
channel = 8

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 192
channel = 27

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 192
channel = 28

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 193
channel = 25

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 198
channel = 29

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 199
channel = 30