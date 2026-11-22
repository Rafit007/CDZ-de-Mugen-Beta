; ANKOKU PHOENIX ST FILE by PARDO

;----------------------------------------------------------------
; Time Over Lose
[Statedef 170]
type = S
anim = 170

[State 170]
type = AssertSpecial
trigger1 = Time = [0,70]
flag = roundnotover

[State 171, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 11, 0
channel = 0

[State 171, Tux]
type = PlaySnd
trigger1 = AnimElem = 4
value = 12, 2

;----------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, 8]
type = ChangeState
triggerall = MatchOver = 0
trigger1 = Time = 0
value = 181

[State 180, 9]
type = ChangeState
triggerall = MatchOver = 1
trigger1 = Time = 0
value = 184

;----------------------------------------------------------------
; Win 1 (round win)
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 181, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = RoundNotOver

[State 181, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 2
channel = 0

;----------------------------------------------------------------
; Win 2 (match win) by Tux
[Statedef 184]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 184, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 184, 2]
type = AssertSpecial
trigger1 = Time = [0,240]
flag = RoundNotOver

[State 3500, a6]
type = AssertSpecial
trigger1 = time = [0, 240]
flag = nobardisplay
ignorehitpause = 1

[State 3500, BGPalfx]
Type = BGPalfx
Trigger1 = time = [80, 240]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 3110, explod]
type = explod
trigger1 = animelem= 3
anim = 3036
ID = 4105
pos = 60, 0
postype = back
sprpriority = 0
removetime = -1
ownpal = 1
scale = 0.8,0.8
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove= 1

[State 184, 12]
type = PlaySnd
trigger1 = Time = 0
value = 180, 0
channel = 0

[State 184, 5]
type = PlaySnd
trigger1 = time = 80
value = 190, 2

[State 184, 6]
type = EnvShake
trigger1 = time = 80
time = 16
persistent = 0
ignorehitpause = 1

[State 184, 7]
type = PlaySnd
trigger1 = time = 86
value = 190, 1

[State 184, 8]
type = Explod
triggerall = NumExplod(19000) = 0
triggerall = stateno = 193
trigger1 = time = 0
anim = 19000
id = 19000
pos = 0,0
postype = LEFT
sprpriority = -4
removetime = 57
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 184, 9]
type = Explod
trigger1 = time = 80  
anim = 1930
sprpriority = -2
postype = p1
pos = 7,15
bindtime = 1
supermove = 1
ownpal = 1

[State 184, 10]
type = VarRandom
trigger1 = Time = 131
v = 2
range = 0,99

[State 184, 3]
type = PlaySnd
trigger1 = Time = 112
value = 190, 0

;----------------------------------------------------------------
; Intro state decider
[Statedef 190]
type = s
ctrl = 0
velset = 0,0

[State 190, 3]
type = varrandom
trigger1 = time = 0
v = 2
range = 0,99

;Random
[State 190, 6]
type = changestate
trigger1 = var(2) = [0,49]
value = 191

[State 190, 6]
type = changestate
trigger1 = var(2) = [50,74]
value = 192

[State 190, 6]
type = changestate
trigger1 = var(2) = [75,99]
value = 193

;----------------------------------------------------------------
; Intro (cloth)
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,538]
flag = Intro

[State 3500, a6]
type = AssertSpecial
trigger1 = time = [0, 538]
flag = nobardisplay
ignorehitpause = 1

[State 3500, BGPalfx]
Type = BGPalfx
Trigger1 = time = [0, 538]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State 191, 0.1]
type = PlaySnd
trigger1 = time = 120
value = 190, 0

[State 191, 2]
type = PlaySnd
trigger1 = AnimElem = 18
value = 190, 1

[State 191 , 5]
type = PlaySnd
trigger1 = AnimElem = 29;Jambe
trigger2 = AnimElem = 34;Bras1
trigger3 = AnimElem = 42;Torse
trigger4 = AnimElem = 47;Dos
trigger5 = AnimElem = 52;Casque
value = 190, 3

[State 191 , 5]
type = PlaySnd
trigger1 = AnimElem = 32;Jupe
trigger2 = AnimElem = 40;Bras2
trigger3 = AnimElem = 44;Epaule1
trigger4 = AnimElem = 49;Epaule2
value = 190, 4

[State 191 , 5]
type = PlaySnd
trigger1 = AnimElem = 59
value = 190, 2

[State 191, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 12, 2
channel = 0

[State 191, Shake1]
type = EnvShake
trigger1 = AnimElem = 10, = 19
time = 4

[State 191, BoxHit1]
type = PlaySnd
trigger1 = AnimElem = 10, = 19
value = 190, 3

[State 191, Shake2]
type = EnvShake
trigger1 = AnimElem = 10, = 27
time = 4

[State 193, colone de feux]
type = Explod
trigger1 = AnimElem = 24
anim = 199
sprpriority = 5
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1

;Armure
[State 191,1]
type = explod
trigger1 = AnimElem = 1
scale= 0.88,0.88
id = 1920
anim = 1919
pos = 0, 0
postype = p1
removetime = 85
sprpriority = -3
ownpal = 1


;Armure
[State 191,1]
type = explod
trigger1 = AnimElem = 12
id = 1920
anim = 1920
pos = 0, 13
postype = p1
removetime = 255
sprpriority = -3
ownpal = 1

; fenix negra
[State 193]
type = Explod
trigger1 = AnimElem = 1
scale = 0.8,0.8
postype = p1
pos = -55,7
anim = 8241
ID = 1920
sprpriority = -1
bindtime = -1
removetime = 408


;oiseau flamme
[State 191 , 8]
type = Explod
ID = 1960
trigger1 = AnimElem = 60
anim = 1960
sprpriority = -2
postype = p1
pos = -19,0
removetime = 95
bindtime = 1
supermove = 1
ownpal = 1

[State 191 , 10]
type = EnvShake
trigger1 = AnimElem = 60
time = 10

[State 191, Flash]
type = EnvColor
trigger1 = AnimElem = 60
value = 93,0,127
time = 3

[State 191, Tux]
type = PlaySnd
trigger1 = AnimElem = 63
value = 5, 9

[State 191,remove]
type = RemoveExplod
triggerall = NumExplod(1980) = 1
trigger1 = animelem = 65
ID = 1980

[State 191, 11] ;Intro not yet over
type = VarSet
trigger1 = Time = 0
v = 9
value = 1

[State 191, 12] ;Intro over, set v9 to 0
type = VarSet
trigger1 = Time = 538
v = 9
value = 0

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

[State 191, 14]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0


;----------------------------------------------------------------
; Intro 2
[Statedef 192]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193: 	assertspecial]
type 			= assertspecial
trigger1 		= 1
flag 			= intro
flag2 		= nomusic
flag3 		= nobardisplay

[State 193, 0]
type = AssertSpecial
trigger1 = Time = [0,160]
flag = intro

[State 193, 0]
type = AssertSpecial
trigger1 = Time = [0,160]
flag = nomusic

[State 193, phoenix]
type = PlaySnd
trigger1 = time = 0
value = 190, 0

[State 193, impact]
type = PlaySnd
trigger1 = time = 26
value = 190, 2

[State 193, tremblement impact]
type = EnvShake
trigger1 = time = 26
time = 16
persistent = 0
ignorehitpause = 1

[State 193, colone]
type = PlaySnd
trigger1 = time = 32
value = 190, 1

[State 193, colone de feux]
type = Explod
trigger1 = time = 26
anim = 1930
sprpriority = -2
postype = p1
pos = 7,15
bindtime = 1
supermove = 1
ownpal = 1

;Signe
[State 193 , Sign]
type = Explod
ID = 1980
trigger1 = time = 50
anim = 1980
sprpriority = -1
postype = p1
pos = 0,30
removetime = 95
bindtime = 1
supermove = 1
ownpal = 1

[State 193, Voix]
type = PlaySnd
trigger1 = Animelem = 2
value = 199, 0
channel = 0

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

[State 193, 9]
type = changestate
trigger1 = time = 160
value = 0
ctrl = 0

;----------------------------------------------------------------
; Intro 3 (galaxian wars)
[Statedef 193]
type = A
ctrl = 0
anim = 183
velset = 0,0

[State 196, a]
type = AssertSpecial
trigger1 = Anim != 0
flag = Intro

[State 196, b]
type = ScreenBound
trigger1 = 1
value = 0

[State 196, 1]
type = PosAdd
trigger1 = time = 0
x = -250
y = -150

[State 196, 2]
type = VelSet
trigger1 = time = 25
x = 10
y = 6

[State 196, 3]
type = ChangeAnim
trigger1 = Pos Y > -1
value = 184
persistent = 0

[State 196, 4]
type = VelSet
trigger1 = Anim = 184
x = 0
y = 0
persistent = 0

[State 196, 5]
type = PosSet
trigger1 = Anim = 184
y = 0
persistent = 0

[State 196, Tux1]
type = PlaySnd
triggerall = Anim = 183
trigger1 = AnimElem = 1
value = 4000, 2

[State 196, Tux1]
type = PlaySnd
triggerall = Anim = 184
trigger1 = AnimElem = 2
value = 12, 2

[State 196, Tux1]
type = PlaySnd
triggerall = Anim = 184
trigger1 = AnimElem = 6
value = 13, 0
channel = 0

[State 196, 10]
type = ChangeAnim
triggerall = Anim = 184
trigger1 = AnimTime = 0
value = 185
persistent = 0

[State 196, 10]
type = ChangeAnim
triggerall = Anim = 184
trigger1 = Time = 321
value = 185
persistent = 0

[State 196, Tux2]
type = PlaySnd
triggerall = Anim = 185
trigger1 = AnimElem = 1
value = 199, 0
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

[State 196, 4]
type = ChangeState
trigger1 = Time = 320
value = 0
ctrl = 0

;===========================================================================
;Provoking
;===========================================================================
;Provoking
[Statedef 1990]
type = S
movetype = I
physics = S
anim = 1990
velset = 0,0
ctrl = 0

[State 1990, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 0
channel = 0

[State 1990, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Light Punch
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

;voix
[State 200, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 12, 2

;vent
[State 200, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 200, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = s7000;0
sparkxy =-10, -100;-10, -80
hitsound = s1, 0
guardsound = s6, 0
animtype = Light
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
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

[State 200, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Light Punch Close
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 205
poweradd = 50
sprpriority = 2

;voix
[State 205, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 12, 2

;vent
[State 205, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 205, 3]
type = HitDef
trigger1 = time= 0
attr = S, NA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 12
sparkno = s7000;0
sparkxy = -10, -85
hitsound = s1, 0
guardsound = s6, 0
ground.type=High
ground.slidetime=8
ground.hittime=8
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 7
envshake.ampl = 1
getpower = 0
givepower = 0

[State 205, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Medium Punch
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 210
poweradd = 50
sprpriority = 2

;voix
[State 210, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 1
value = 12, 4

;vent
[State 210, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 210, 3]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 30
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = s7001 ;0
sparkxy = -20, -96
hitsound = s1, 1
guardsound = s6, 0
animtype = Medium
ground.type=High
ground.slidetime=13
ground.hittime=13
ground.velocity=-6
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 2
getpower = 0
givepower = 0

[State 210, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Strong Punch
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 220
poweradd= 50
sprpriority = -1

;voix
[State 220, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 12, 5

;vent
[State 220, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = s7002 ;1
sparkxy = -10,-80
hitsound = s1, 2
guardsound = s6, 0
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

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Light Kick
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 230
poweradd = 50
sprpriority = 2

;voix
[State 230, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 12, 2

;vent
[State 230, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20, 0
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12,12
sparkno = s7000 ;0
sparkxy = -10, -76
hitsound = s1, 0
guardsound = s6, 0
animtype = Light
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
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

[State 230, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand MÈdium Kick
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 240
poweradd = 50
sprpriority = 2

;voix
[State 240, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 2
value = 12, 4

;vent
[State 240, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 240, 3]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7001;0 ;1
sparkxy = -10,-70
hitsound = s1, 1
guardsound = s6, 0
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-3
air.type=Low
air.velocity=-3,-2
envshake.time=9
envshake.ampl=2

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Medium Kick Close
[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 245
poweradd = 50
sprpriority = 2

;voix
[State 245, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 1
value = 12, 4

;vent
[State 245, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 245, 3]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
attr = S, NA
damage = 15, 0
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 8
sparkno = s7001;0
sparkxy = -10, -76
hitsound = s1, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 245, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Strong Kick
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 250

;voix
[State 250, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 12, 5

;vent
[State 250, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 250, 3]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 40
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 12
sparkno = s7002 ;1
sparkxy = -10, -100
hitsound = s1, 2
guardsound = s6, 0
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

[State 250, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
;Crouch Light Punch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 400
sprpriority = 2

;vent
[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 400, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 20
priority  = 3
hitflag = MAF
guardflag = LA
pausetime = 10,11
sparkno = s8147;0
sparkxy = -10,-50
hitsound = s1, 0
guardsound = s6, 0
animtype = Light
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
envshake.time = 9
envshake.ampl = 1
getpower = 0
givepower = 0

[State 400, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;----------------------------------------------------------------
;Crouch Medium Punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

;vent
[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 30
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7001;0
sparkxy = -10,-45
hitsound = s1, 1
guardsound = s6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4
animtype = Medium
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-6
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
envshake.time = 9
envshake.ampl = 2
getpower = 0
givepower = 0

[State 410, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;Crouch Strong Punch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 420
sprpriority = 2

;voix
[State 420, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 12, 5

;vent
[State 420, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 420, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 40
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7002;0
sparkxy = -10,-100
hitsound = s1, 2
guardsound = s6, 0
animtype = up
ground.type=Low
ground.slidetime=14
ground.hittime=14
ground.velocity = 0,-11
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
envshake.time = 9
envshake.ampl = 3
getpower = 0
givepower = 0
fall = 1

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;Crouch Light Kick
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 430
sprpriority = 2

;voix
[State 430, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 12, 2

;vent
[State 430, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 430, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 20
priority  = 3
hitflag = MAF
guardflag = LA
pausetime = 10,11
sparkno = s8147;0
sparkxy = 0,-10
hitsound = s1, 1
guardsound = s6, 0
animtype = Light
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
down.velocity=-2,-2
yaccel=.5
envshake.time = 9
envshake.ampl = 1
getpower = 0
givepower = 0

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;Crouch Medium Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

;voix
[State 440, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 1
value = 12, 4

;vent
[State 440, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 440, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 30
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7001;0
sparkxy = -10,-20
hitsound = s1, 0
guardsound = s6, 0
animtype = Medium
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-6
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

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;Crouch Strong Kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 450
sprpriority = 2

;voix
[State 450, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 12, 5

;vent
[State 450, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 450, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 40
animtype  = hard
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-83
hitsound = s1, 2
guardsound = s6, 0
ground.type= trip
ground.slidetime=16
ground.hittime=16
ground.velocity=-1.33,-6.85
air.type=Low
air.hittime=12
air.velocity=-1.33,-6.85
air.cornerpush.veloff=0
down.velocity=-4,-4
getpower = 0
givepower = 0
yaccel=.5
envshake.time = 9
envshake.ampl = 3
getpower=0
fall =1

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;Jump Light Punch
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 50
ctrl = 0
anim = 600
sprpriority = 2

;voix
[State 600, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 12, 2

;vent
[State 600, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 600, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage    = 20
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s8147;0
sparkxy = -10,-100
hitsound = s1, 0
guardsound = s6, 0
animtype = Light
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=-3
air.type=Low
air.velocity = -1,((vel y)-.2)
getpower = 0
givepower = 0
envshake.time=9
envshake.ampl=1

;----------------------------------------------------------------
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

;voix
[State 610, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 2
value = 12, 4

;vent
[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 610, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 30
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7001;0
sparkxy = -10,-55
hitsound = s1, 1
guardsound = s6, 0
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-5
air.type=Low
air.velocity = -2,((vel y)-.2)
getpower = 0
givepower = 0
envshake.time=9
envshake.ampl=2

;----------------------------------------------------------------
;Jump Strong Punch
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 620
sprpriority = 2

;voix
[State 620, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 2
value = 12, 5

;vent
[State 620, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 620, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 40
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002;0
sparkxy = -10,-55
hitsound = s1, 2
guardsound = s6, 0
animtype = Hard
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-7
air.type=high
air.velocity = -8,8
getpower = 0
givepower = 0
envshake.time=12
envshake.ampl=3
;fall=1
air.fall=1
fall.recover=0

;----------------------------------------------------------------
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

;voix
[State 630, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 12, 2

;vent
[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 630, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 20
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s8147;0
sparkxy = -5,-70
hitsound = s1, 1
guardsound = s6, 0
animtype = Light
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=-3
air.type=Low
air.velocity=-1.5,((vel y)-.2)
envshake.time=9
envshake.ampl=1

;----------------------------------------------------------------
;Jump Medium Kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 640
sprpriority = 2

;voix
[State 640, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 2
value = 12, 4

;vent
[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 640, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage    = 30
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = s7001;0
sparkxy = -10,-65
hitsound = s1, 0
guardsound = s6, 0
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-5
air.type=Low
air.velocity=-2,((vel y)-.2)
getpower = 0
givepower = 0
envshake.time=9
envshake.ampl=2

;----------------------------------------------------------------
;Jump Strong Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 650
sprpriority = 2

;voix
[State 650, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 2
value = 12, 5

;vent
[State 650, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 650, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage    = 40
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002;0
sparkxy = -10,-65
hitsound = s1, 2
guardsound = s6, 0
animtype = Hard
ground.type=High
ground.slidetime=12
ground.hittime=11
ground.velocity=-3
air.type=Low
air.velocity = -8,8
getpower = 0
givepower = 0
envshake.time=10
envshake.ampl=3
fall=1
air.fall=1
fall.recover=0

;----------------------------------------------------------------
; Throw
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
poweradd = 50
ctrl = 0
anim = 800

[State 800, 5]
type = envshake
trigger1 = animelem = 5
trigger2 = animelem = 7
time = 10
ampl = 4

[State 800, 5]
type = envshake
trigger1 = animelem = 9
time = 40
ampl = 8
;===============================
;SND
;===============================
;tenir
[State 800, p2 tenir]
type = playsnd
trigger1 = animelem = 2
value = s1,6

;===============================
 ;HIT ATTAQUE
;===============================
[State 800, 1]
type = hitdef
trigger1 = time = 0
attr = s, NT
getpower = 0
givepower = 0
damage = 8
hitflag = M
sparkno = -1
priority = 3, miss
pausetime = 25,25
p2facing = 1
p2stateno = 810
hitsound = s1100, 1
fall.damage = 20

[State 800, 2]
type = changestate
triggerall = MoveHit
trigger1 = animtime = 0
value = 801
ctrl = 0

[State 800, 3]
type = changestate
triggerall = !MoveHit
trigger1 = animtime = 0
value = 0
ctrl = 1

;
[Statedef 801]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 801

 ;===============================
;paramÈtre spÈtial
;===============================
[State 800, TargetLifeAdd]
type = TargetLifeAdd
trigger1  = MoveContact =1
trigger2 = animelem = 2
trigger3 = animelem = 4
trigger4 = animelem = 6
value = -10
ID = -1
;kill = 1
;absolute = 0
;ignorehitpause =
;persistent =

;===============================
;SND
;===============================
;vent
[State 800, 1]
type = playsnd
trigger1 = time = 0
value = 0, 1

;voix
[State 800, p1 voix frapland]
type = playsnd
trigger1 = animelem = 2
trigger2 = animelem = 4
value = s12, 2

;voix (shinÈ)
[State 800, 1]
type = playsnd
trigger1 = animelem = 6
value = S12, 6

 ;frape lande
[State 800, 1]
type = playsnd
trigger1  = MoveContact =1
trigger2 = animelem = 2
trigger3 = animelem = 4
value = s1, 2

 ;frap fin
[State 800, 2]
type = playsnd
trigger1 = animelem = 6
value = 1500, 0

;===============================
;EXPLOD
;===============================

[State 800, Explod]
type = Explod
trigger1  = MoveContact =1
trigger2 = animelem = 2
trigger3 = animelem = 4
anim = 7001
;ID =
pos = 0,-70
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 1
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 800, Explod]
type = Explod
trigger1  = MoveContact =1
trigger2 = animelem = 6
anim = 7002
;ID =
pos = 0,-100
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 1
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 801, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;
[Statedef 810]
type    = A
movetype= H 
physics = N
velset = 0,0
ctrl = 0

[State 810, 0]
type = changeanim2
trigger1 = time = 0
value = 810

[State 810, 2]
type = hitby
trigger1 = 1
value = sca
time = 1


[State 810, 3]
type = sprpriority
trigger1 = animelem = 5
trigger1 = animelem = 7
value = 2

[State 810, 8]
type = changestate
trigger1 = animtime = 0
value = 820
ctrl = 0

;
[Statedef 820]
type = A
movetype = H
physics = N

[State 820 , 1]
type = velset
trigger1 = time = 0
x = 0
y = -5

[State 820 , 2]
type = changeanim2
trigger1 = time >= 0
value = 820

[State  820 , 3]
type = changestate
trigger1 = hitshakeover = 1
value =  821

;
[Statedef  821]
type = A
movetype = H
physics = N
velset = -1.7,-11

[State  821 , 1]
type = veladd
trigger1 = time > 0
y = .4

[State  821 , 2]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100

;----------------------------------------------------------------
; Neck-Breaker by Tux
[Statedef 850]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
poweradd = 50
anim = 850

[State 850, Hit]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NT
getpower = 0
givepower = 0
damage = 50
hitflag = M
sparkno = -1
animtype = Light
priority = 3, miss
mindist = 45 ,-6
maxdist = 45,-6
pausetime = 0,40
ground.type = High
p2facing = 1
hitsound = S1, 6
fall = 1
fall.damage = 10

[State 850, FX]
type = Explod
triggerall = MoveHit
trigger1 = AnimElem = 5
anim = F10
facing = -1
postype = p1
pos = 65, -95
sprpriority = 4

[State 850, Snd]
type = PlaySnd
triggerall = MoveHit
trigger1 = AnimElem = 5
value = 1, 5

[State 850, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;  Cosmos Charge
;===========================================================================

;--------------------------------------
; Cosmo Charge - start
[Statedef 900]
type = S
movetype = I
physics = S
anim = 900
ctrl = 0

[State 900, Var]
type = VarSet
triggerall = var(59) = 1
trigger1 = Time = 0
var(10) = 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 9, 1

[State 900, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 8
channel = 0

[State 900, shake]
type = EnvShake
trigger1 = Time = 0
time = 40

[State 900, 1]
type = changestate
trigger1 = AnimTime = 0
value = 901

;--------------------------------------
; Cosmo Charge - charging
[Statedef 901]
type = s
physics = s
ctrl = 0
velset = 0,0
anim = 901

[State 901]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

[State 901]
type = PowerAdd
trigger1 = time > 0
value = 5

[State 901, 3]
type = changestate
triggerall = time >= 1
triggerall = Var(59) = 0
trigger1 = command != "hold_c"
trigger2 = command != "hold_z"
trigger3 = power >= 3000
value = 902

[State 901, End]
type = ChangeState
triggerall = time >= 1
triggerall = Var(59) = 1
trigger1 = random <= 1
trigger2 = p2movetype = A && random <= 100
trigger3 = p2bodydist X <= 100
trigger4 = power >= 3000
value = 902
ctrl = 1

;===============================
;EXPLOD
;===============================

[State 901, Phoenix]
type = Explod
;triggerall = NumExplod(6000) = 0
trigger1 = AnimElem = 1
anim = 6000
id = 6000
pos = 0,0
postype = p1
sprpriority = -3
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 901, Cosmos]
type = Explod
;triggerall = NumExplod(903) = 0
trigger1 = AnimElem = 3
anim = 903
id = 903
pos = 0,0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1

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

[State 901, fire]
type = Explod
triggerall = NumExplod(8123) = 0
trigger1 = AnimElem = 1
anim = 8123
id = 8123
pos = 0,10
bindtime = -1
removetime = -1
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 901, big light]
type = Explod
triggerall = numexplod(7030) = 0
trigger1 = 1
anim = 7030
ID = 7030
pos = -10,5
bindtime = -1
removetime = -1
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 901, big light]
type = Explod
triggerall = numexplod(7031) = 0
trigger1 = 1
anim = 7031
ID = 7031
pos = -10,6
vfacing = -1
bindtime = -1
removetime = -1
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

;--------------------------------------
; Cosmo Charge - end
[Statedef 902]
type = s
physics = s
anim = 902

[State 902, Var]
type = VarSet
trigger1 = Time = 0
v = 10
value = 0

[State 902, Flash]
type = EnvColor
triggerall = power >= 3000
trigger1 = time = 0
value = 93,0,127
time = 3

[State 902, Tux]
type = PlaySnd
triggerall = power >= 3000
trigger1 = time = 0
value = 9, 3

[State 902, 1]
type = EnvShake
triggerall = power >= 3000
trigger1 = time >= 0
time = 64

[State 902,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 8123

[State 902,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 7030

[State 902,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 7031

[State 902,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 7020

[State 902,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 7010

[State 902,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 6000

[State 902,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Fireball 1
[StateDef 1000]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1002
poweradd = 100

;flam
[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5, 1

[State 1000, 4]
type = Explod
trigger1 = AnimElem = 2
persistent = 0
anim = 8224
pos = 14,-32
postype = p1
sprpriority = 3
bindtime = 1
ignorehitpause = 1
ownpal = 1

 ;voix
[State 1000, PlaySnd]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem = 3
value = s12, 5

[State 1001, 4]
type = Projectile
trigger1 = AnimElem = 3
projanim = 8088
projhitanim = 8090
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projshadow = -1
offset = 50,0
velocity = 6,0
attr = S, SP
damage   = 60,6
getpower = 0
givepower = 0
animtype = heavy
guardflag = LA
pausetime = 10,10
hitsound = S5, 6
guardsound = s6, 0
sparkxy = 500,500
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -3
air.type = Low
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Fireball 2
[StateDef 1010]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 100

;flam
[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5, 1

[State 1000, 4]
type = Explod
trigger1 = AnimElem = 2
persistent = 0
anim = 8224
pos = 14,-32
postype = p1
sprpriority = 3
bindtime = 1
ignorehitpause = 1
ownpal = 1

 ;voix
[State 1020, PlaySnd]
type = PlaySnd
triggerall = random <= 500
trigger1 = AnimElem = 3
value = s12, 5

[State 1010, 1]
type = Projectile
trigger1 = AnimElem = 3
projID = 1010
projanim = 8089
projhitanim = 81460
projhits = 2
projmisstime = 2
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projshadow = -1
offset = 90,-90
velocity = 7,0
attr = S, SP
damage   = 30,3
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
supermovetime = 900
pausemovetime = 900
hitflag = MAF
pausetime = 0,10
hitsound = s5, 6
guardsound = s6, 0
sparkno = s7002
sparkxy = 45,-5
guard.sparkno = s7006
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
air.type = Low
air.velocity = -4,-6
air.juggle = 3
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512
air.fall = 1
fall.recover = 0
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 12
envshake.freq = 100
envshake.ampl = 4


;âäÉqÉbÉgÉXÉpÅ[ÉNÇP
[State 1010, 4]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 8230
pos = -10,-50
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;âäÉqÉbÉgÉXÉpÅ[ÉNÇQ
[State 1010, 4]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 8231
pos = 10,-40
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;âäëäéËÇ™îRÇ¶ÇÈÅiåJï‘ÇµÅj
[State 1010, 4]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 8240
pos = 0,20
postype = p2
removetime = 30
sprpriority = 2
bindtime = 51
ignorehitpause = 1
facing = -1
ownpal = 1

[State 1010, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Fireball 3
[StateDef 1020]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1001
poweradd = 100

;flam
[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5, 1

 ;voix
[State 1020, PlaySnd]
type = PlaySnd
triggerall = random <= 750
trigger1 = AnimElem = 3
value = 12, 5

[State 1000, 4]
type = Explod
trigger1 = AnimElem = 3
persistent = 0
anim = 8224
pos = 58,-36
postype = p1
sprpriority = 3
bindtime = 1
ignorehitpause = 1
ownpal = 1


[State 1020, 1]
type = Projectile
trigger1 = AnimElem = 3
projID = 1010
projanim = 8089
projhitanim = 81460
projhits = 3
projmisstime = 3
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projshadow = -1
offset = 103,-85
velocity = 8,0
attr = S, SP
damage   = 20,2
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
supermovetime = 900
pausemovetime = 900
hitflag = MAF
hitsound = s5, 6
guardsound = s6, 0
pausetime = 0,12
sparkno = s7002
sparkxy = 45,-5
guard.sparkno = s7006
ground.type = Low
ground.slidetime = 24
ground.hittime = 24
ground.velocity = -10
ground.cornerpush.veloff = 0
air.velocity = -3,-3
air.fall = 1
fall.recover = 0
air.type = Low
air.velocity = -4,-6
air.juggle = 3
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 12
envshake.freq = 100
envshake.ampl = 4

;âäÉqÉbÉgÉXÉpÅ[ÉNÇP
[State 1020, 4]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 8230
pos = -10,-50
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;âäÉqÉbÉgÉXÉpÅ[ÉNÇQ
[State 1020, 4]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 8231
pos = 10,-40
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;âäëäéËÇ™îRÇ¶ÇÈÅiåJï‘ÇµÅj
[State 1020, 4]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 8240
pos = 0,20
postype = p2
removetime = 30
sprpriority = 2
bindtime = 51
ignorehitpause = 1
facing = -1
ownpal = 1

[State 1020, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;===========================================================================
;Fly away phoenix
[Statedef 1034]
type    = S
movetype= A
physics = S
poweradd= 100
ctrl = 0
velset = 0,0
anim = 47
sprpriority = 2

  ;voix
[State 1034, PlaySnd]
type = PlaySnd
triggerall = random <= 750
trigger1 = AnimElem =2
value = S12, 1

[State 1034, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1035

;---------------------------------------------------------------------------
[Statedef 1035]
type    = A
movetype= A
physics = A
juggle  = 8
ctrl = 0
anim = 1020
sprpriority = 2
velset = 1.3,-5.0

[State 1031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =2
value = 5, 2

[State 45, 5]
type = AfterImage
trigger1 = AnimElem = 2
time = 15
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1


[State 1035, lightG]
type = Explod
trigger1 = AnimElem = 3
pos = 0,0
postype = p1
anim = 1021
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removetime = 15
persistent = 0
removeongethit = 1
supermove = 1

[State 1035, lightG]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
postype = p1
anim = 1022
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
;removetime = 15
persistent = 0
removeongethit = 1
supermove = 1


[State 1035, 1]
type = HitDef
trigger1 = Time = 0
trigger2 = movecontact =3
attr = A, SA
animtype = Up
damage    = 10,1
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002 ;0;s8146
sparkxy = -10,-100
guard.sparkno = s7006
hitsound = S1, 2
guardsound = s6, 0
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -.1,-5.5
guard.velocity = -7
air.velocity = -.1,-6.0
airguard.velocity = -3,-4
fall = 1
fall.damage = 20
fall.recover = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512

[State 1035]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;===========================================================================
;les Serres du phÈnix
;===========================================================================

;les Serres du phÈnix Light
[Statedef 1050]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1050
velset = 0,0
poweradd = 100
juggle = 7



;kik snd
[State 1050, PlaySnd2]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem = 3
;trigger2 = time=2
value = S12, 7
channel = 0

[State 1031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =2
value = 0, 2


; traverser P2
[State 1050, PushOff]
type = PlayerPush
trigger1 = anim = 1050
value = 0

;vel kik
[State 1050, Vel]
type = VelSet
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
X = 7
Y = 7

[State 1050, flach kik]
type = Explod
trigger1 = AnimElem = 4
anim =8124
ID = 8124
pos = 85,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 1
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 1050,kik]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 80,8
getpower = 0
givepower = 0
pausetime = 15,15
guard.pausetime = 12,12
sparkno = s7001 ;0;s8146
guard.sparkno = s7006
sparkxy = 0,-25
hitsound = S1, 2
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1

;Axe de  fin para pore au sol
[State 1050, end axe]
type = ChangeState
trigger1 = MoveContact=1

;trigger2 = Pos Y >= 3
value = 1055

;Axe de  fin para pore au sol
[State 1050, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1053
;===========================================================================

;mÈdium les Serres du phÈnix
[Statedef 1051]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1050
velset = 0,0
juggle = 7


;kik snd
[State 1051, PlaySnd2]
type = PlaySnd
triggerall = random <= 500
trigger1 = AnimElem = 3
;trigger2 = time=2
value = S12, 7
channel = 0

[State 1031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =2
value = 0, 2

; traverser P2
[State 1051, PushOff]
type = PlayerPush
trigger1 = anim = 1050
value = 0



;vel kik
[State 1051, Vel]
type = VelSet
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
X = 7
Y =7



[State 1051, flach kik]
type = Explod
trigger1 = AnimElem = 4
anim =8124
ID = 8124
pos = 85,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 1
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 1051, kik]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 80,8
getpower = 0
givepower = 0
pausetime = 20,20
guard.pausetime = 12,12
sparkno = s7001 ;0;s8146
guard.sparkno = s7006
sparkxy = 0,-25
hitsound = S1, 2
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1


;;Axe de  fin para pore au sol
[State 1051, end axe]
type = ChangeState
trigger1 = MoveContact=1
;trigger2 = Pos Y >= 3
value = 1055

;Axe de  fin para pore au sol
[State 1051, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1053

;===========================================================================
;hard les Serres du phÈnix
[Statedef 1052]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1050
velset = 0,0
juggle = 7

;voix
[State 1052, PlaySnd2]
type = PlaySnd
triggerall = random <= 750
trigger1 = AnimElem = 3
value = S12, 7
channel = 0

[State 1031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =2
value = 0, 2

; traverser P2
[State 1052, PushOff]
type = PlayerPush
trigger1 = anim = 1050
value = 0

;vel kik
[State 1052, Vel]
type = VelSet
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
X = 7
Y = 7

[State 1052, flach kik]
type = Explod
trigger1 = AnimElem = 4
anim =8124
ID = 8124
pos = 85,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 1
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 1051, kik]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
animtype = Medium
damage = 90,9
getpower = 0
givepower = 0
pausetime = 25,25
guard.pausetime = 12,12
sparkno = s7001 ;0;s8146
guard.sparkno = s7006
sparkxy = 0,-25
hitsound = S1, 2
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1

;Axe de  fin para pore au sol
[State 1052, end axe]
type = ChangeState
trigger1 = MoveContact=1
;trigger2 = Pos Y >= 3
value = 1055

;Axe de  fin para pore au sol
[State 1052, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1053

;===========================================================================
;atÈrire
[Statedef 1053]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1053
velset = 0,0
juggle = 7

[State 1053,1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1053, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
;rebon sur p2
[Statedef 1055]
type = A
movetype = A
physics = N
ctrl = 0
anim =1055
velset = 0,0
juggle = 7

[State 1055,1]
type = PosSet
trigger1 = Time = 0
y = 0

 [State 1055, VelSet]
type = VelSet
trigger1 = Anim = 1055
trigger1 = AnimElem=1
x = -10
y = -7
;ignorehitpause =
;persistent =


[State 1055, VelSet]
type = VelSet
trigger1 = Anim = 1055
trigger1 = AnimElem=6
x = 0
y = 0

;ignorehitpause =
;persistent =
[State 1055, end]
type = ChangeState
trigger1 =AnimTime = 0; AnimElem =6
value = 50
ctrl = 1
;===========================================================================
; Light MULTI Punch
;===========================================================================
; MULTI Punch
[Statedef 1060]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1060
poweradd = 50
sprpriority = 2

[State 1060, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage =30,3
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3, 3
sparkno = s8147
sparkxy = -10, -80
guard.sparkno = s7006
hitsound = s1, 1
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 1060, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
damage =30,3
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3, 3
sparkno = s8147
sparkxy = -10, -80
guard.sparkno = s7006
hitsound = s1, 1
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 3
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 1060, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 1060, 1]
type = PlaySnd
trigger1 = Animelem = 5
value = 0, 2

[State 1060, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
; Stand Wings
;===========================================================================
;Light Stand Wings
[Statedef 1070]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1070
poweradd = 100
sprpriority = 2

[State 1070]
type = PlaySnd
trigger1 = Time = 14
value = 0, 0

;voix
[State 1070, PlaySnd2]
type = PlaySnd
triggerall = random <= 250
trigger1 =Time = 0
value = S12, 5

[State 1070, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20,2
getpower = 0
givepower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7006
sparkno = 0
sparkxy = -10, -76
hitsound = s5, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12


[State 1070, Wings]
type = Projectile
trigger1 = time = 13
projanim = 3412
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = s8107
sparkxy = 45,-90 ;100
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 6, 0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3

[State 1070, Wings]
type = Projectile
trigger1 = time = 14
projanim = 3413
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = s8107
sparkxy = 45,-80
guard.sparkno = s7006
velocity = 7,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
pausetime = 0,9
hitsound = s1, 3 ;5,0
guardsound = s6, 0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3


[State 1070, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; mÈdium Stand Wings
[Statedef 1071]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
poweradd = 100
anim = 1070
sprpriority = 2

[State 1070]
type = PlaySnd
trigger1 = Time = 14
value = 0, 0

;voix
[State 1071, PlaySnd2]
type = PlaySnd
triggerall = random <= 500
trigger1 =Time = 0
value = S12, 5

[State 1071, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20,2
getpower = 0
givepower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
sparkxy = -10, -76
guard.sparkno = s7006
hitsound = s5, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12


[State 1071, Wings]
type = Projectile
trigger1 = time = 12
projanim = 3411
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = s8107
sparkxy = 45,-90
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 5,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3


[State 1071, Wings]
type = Projectile
trigger1 = time = 13
projanim = 3412
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = s8107
sparkxy = 45,-80
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 6,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 10,1
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3


[State 1071, Wings]
type = Projectile
trigger1 = time = 14
projanim = 3413
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = s8107
sparkxy = 45,-70
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 7,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 10,1
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3

[State 1071, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------
; Strong Stand Wings
[Statedef 1072]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1070
poweradd = 100
sprpriority = 2

[State 1070]
type = PlaySnd
trigger1 = Time = 14
value = 0, 1

;voix
[State 1072, PlaySnd2]
type = PlaySnd
triggerall = random <= 750
trigger1 =Time = 0
value = S12, 5

[State 1072, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20,2
getpower = 0
givepower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
guard.sparkno = s7006
sparkxy = -10, -76
hitsound = s5, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 1072, Wings]
type = Projectile
trigger1 = time = 11
projanim = 3410
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = s8107
sparkxy = 45,-90
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 5,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3


[State 1072, Wings]
type = Projectile
trigger1 = time = 12
projanim = 3411
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = s8107
sparkxy =45,-80
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 5,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 10,1
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3


[State 1072, Wings]
type = Projectile
trigger1 = time = 13
projanim = 3412
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = s8107
sparkxy = 45,-70
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 6,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 10,1
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3

[State 1072, Wings]
type = Projectile
trigger1 = time = 14
projanim = 3413
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = s8107
sparkxy = 45,-60
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 7,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 10,1
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3

[State 1072, Wings]
type = Projectile
trigger1 = time = 15
projanim = 3414
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = s8107
sparkxy =  45,-80
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 8,0
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 10,1
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3


[State 1072, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;===========================================================================
;auto garde (dÈsactivÈ)
;===========================================================================
;===========================================================================
;super Guard 1
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = 2

[State 1100,nohit ]
type = varset
trigger1 = time = 0
value = 1
v = 23

[State 1100, rev]
type = ReversalDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3
reversal.attr = SCA,NA,SA,HA,ST,SP
pausetime = 0,0
p1stateno = 1101

[State 1100, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==============================================

[Statedef 1101]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1101
poweradd = 0
ctrl = 0

[State 1101,env ]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 3

[State 1101,nohit ]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA
time = 1

[State 1101,nohit ]
type = poweradd
trigger1 = time = 0
value = 50

[State 1101,fire ]
type = Explod
triggerall = NumExplod(1102) = 0
triggerall = stateno = 1101
trigger1 = time = 20
anim = 1102
id = 1102
pos = 0,0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 1101, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S,SA
animtype  = Hard
hitflag = MA
guardflag = MA 
animtype = Hard
damage = 80,0
getpower = 0
givepower = 0
sparkno = 1
guard.sparkno = -1
sparkxy = 0,-100
hitsound = s1, 7
guardsound = s6, 0
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 1
fall.recover = 0
fall.damage = 75

[State 1101, 6]
type = ChangeState
trigger1 = Time = 100
value = 1102
ctrl = 0

;==============================================

[Statedef 1102]
type    = S
movetype= A
physics = S
velset = -12,0
anim = 1101
poweradd = 0
ctrl = 0

[State 1102,nohit ]
type = varset
trigger1 = time = 0
value = 0
v = 23

[State 1102, 6]
type = ChangeState
trigger1 = time = 2
value = 0
ctrl = 1

;=====================================================================================================================================================================
; chamas de Fenix negra no ar
;=====================================================================================================================================================================
[Statedef 1200]
type    = S
movetype= A
physics = N
juggle  = 5
poweradd= 100
ctrl = 0
anim = 1200
velset = 0,0

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 12, 3
channel = 0

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 230, 0

;âä
[State 1000, 4]
type = Explod
trigger1 = AnimTime = 0
persistent = 0
anim = 8220
pos = 10,20
postype = p1
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1

;èâä˙âª
[State 5000, 21]
type = VarSet
trigger1 = time = 0
v = 22
value = 0

;ÉRÉ}ÉìÉhì¸óÕämîF
[State 5000, 20]
type = VarSet
triggerall = time >= 2
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
v = 22
value = 1

[State 1000, 8]
trigger1 = AnimTime = 0
type = ChangeState
value = 1201

;---------------------
;è„è∏
[Statedef 1201]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 1201

;ÉRÉ}ÉìÉhì¸óÕämîF
[State 5000, 21]
type = VarSet
triggerall = time < 6
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
v = 22
value = 1

;ÉuÉåÅ[ÉLÉìÉOÇ÷à⁄çs
[State 1053, 3]
type = ChangeState
trigger1 = Var(22) = 1
value = 1500

;èâä˙âª
[State 5000, 21]
type = VarSet
trigger1 = time = 6
v = 22
value = 0

[State 1003, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0

[State 1003, 5]
type = velset
trigger1 = time >= 0
trigger1 = time < 3
x = 4.5
y = -7.6

[State 1003, 5]
type = VelAdd
trigger1 = time >= 3
y = 0.48

;ÉmÅ[É}Éã
[State 1053, 2]
type = HitDef
triggerall = palno < 7
trigger1 = AnimElem = 1
attr = S, NA
animtype  = hard
damage    = 40,4
getpower = 0
givepower = 0
guardflag = MA
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S230, 0
guardsound = s6, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -1.6
air.velocity = -2,-6
fall = 1
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 50
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512

;ÉJÉâÅ[ÇV
[State 1053, 2]
type = HitDef
triggerall = palno >= 7
trigger1 = AnimElem = 1
attr = S, NA
animtype  = hard
damage    = 40,4
getpower = 0
givepower = 0
guardflag = MA
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S230,0
guardsound = s6, 0
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -1.6
air.velocity = -2,-6
fall = 1
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512

;âä ÉqÉbÉgÉXÉpÅ[ÉNÇP
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8230
pos = -10,-55
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;âä ÉqÉbÉgÉXÉpÅ[ÉNÇQ
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8231
pos = 10,-40
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;âä ëäéËÇ™îRÇ¶ÇÈÅiåJï‘ÇµÅj
[State 7020, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8240
pos = 0,20
postype = p2
sprpriority = 2
bindtime = 51
ignorehitpause = 1
facing = -1
ownpal = 1

;ÉKÅ[ÉhÉXÉpÅ[ÉNÇP
[State 1053, 4]
type = Explod
trigger1 = moveguarded = 1
persistent = 0
anim = 7120
pos = 10,0
postype = p2
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1

;îÚÇ—ìπãÔî≠ê∂
[State 1000, 4]
type = helper
trigger1 = animelem = 9
ID = 8220
pos = 25, -100
postype = p1
stateno = 8220
name = "uzu"
ownpal = 1
keyctrl = 0

;ÉqÉbÉgíºå„Ç…ëäéËÇÃà íuÇèCê≥
[State 905, 0]
type = TargetBind
trigger1 = movehit = 1
trigger1 = p2statetype = S
pos = 60, 0

[State 201, 4]
type = MoveHitReset
trigger1 = movehit = 1

[State 1053, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 1202

;---------------------
; èIóπÉÇÅ[ÉVÉáÉì
[Statedef 1202]
type = A
movetype = A
physics = N
anim = 1202
velset = 0,0
ctrl = 0

;èdóÕ
[State 1054, 5]
type = veladd
trigger1 = time >= 0
y = 0.43

[State 1053, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 1204

;---------------------
;óéâ∫
[Statedef 1204]
type = A
movetype = A
physics = N
anim = 1204
ctrl = 0

;èdóÕ
[State 1054, 5]
type = veladd
trigger1 = time >= 0
y = 0.48

[State 1054, 3]
type = ChangeState
trigger1 = Pos Y > 0
trigger1 = Vel Y >=0
value = 1205

;---------------------
; éÛÇØêg;íÖín
[Statedef 1205]
type = S
movetype = A
physics = S
anim = 1205
velset = 0,0
ctrl = 0

[State 1055, 5]
type = PosSet
trigger1 = time =0
y = 0

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 0, 0

[State 1055, 4]
type = MakeDust
trigger1 = Time = 1
pos = 15, 0
spacing = 1

;ëäéËínè„åÉì¨
[State 207, 4]
type = EnvShake
trigger1 = p2stateno = 5100
time = 15
ampl = -3
freq = 40
phase = 40

[State 1055, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=====================================================================================================================================================================
;ÉuÉåÅ[ÉLÉìÉO
;=====================================================================================================================================================================
[Statedef 1500]
type = S
movetype = I
physics = S
juggle  = 5
anim = 1206
velset = 0,0
ctrl = 0

[State 1201, 4]
type = CtrlSet
trigger1 = time = 3
value = 1

;[State 1400, 1]
;type = RemoveExplod
;trigger1 = time =0
;ignorehitpause = 1
;ID = 7000

[State 1500, 5]
type = PosSet
trigger1 = time =0
y = 0

[State 1500, 2]
type = Afterimage
trigger1 = Time = 0
time = 14
length = 12
PalBright   =   0,  0,  40
PalContrast = 200,200,250
PalAdd      =   10,  10,  10
PalMul      =  1,1,1
FrameGap = 4
Trans = Add1

[State 1500, 4]
type = MakeDust
trigger1 = Time = 1
pos = 15, 0
spacing = 1

[State 1500, 1]
type = PlaySnd
trigger1 = time = 0
value = 100, 4

[State 1500, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------
;îÚÇ—ìπãÔåJÇËï‘Çµ
[Statedef 8220]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 8210

[State 8220, Tux]
type = Explod
trigger1 = Time = 0
anim = 8001
ID = 8001
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
supermovetime = 9999
pausemovetime = 9999
sprpriority = 5
ontop = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
scale = 0.75,0.75

[State 7000, 5]
type = velset
trigger1 = time >= 0
x = 6
y = 6

[State 7000, 2]
type = sprpriority
trigger1 = time = 0
value = 2

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 230, 2

;ÉmÅ[É}Éãínè„ÉqÉbÉgéû
[State 7000, 1]
type = hitdef
triggerall = parent,palno < 7
trigger1 = p2statetype != A
trigger1 = animelem = 4
attr = S, SP
damage    = 80,8
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
pausetime = 0,8
sparkno = -1
guard.sparkno = -1
hitsound = S230, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -7
air.type = Low
air.velocity = -5.5,4
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 50
palfx.add = 155,155,155
palfx.sinadd = 255,255,255,80
palfx.mul = 70,40,100

;ÉmÅ[É}ÉããÛíÜÉqÉbÉgéû
[State 7000, 1]
type = hitdef
triggerall = parent,palno < 7
trigger1 = p2statetype = A
trigger1 = animelem = 4
attr = S, SP
damage    = 40,4
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
hitsound = S230,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -15
air.type = Low
air.velocity = -5.5,4
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 50
palfx.add = 155,155,155
palfx.sinadd = 255,255,255,80
palfx.mul = 70,40,100

;ÉJÉâÅ[ÇVínè„ÉqÉbÉgéû
[State 7000, 1]
type = hitdef
triggerall = parent,palno >= 7
trigger1 = p2statetype != A
trigger1 = animelem = 4
attr = S, SP
damage    = 80,8
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
hitsound = S230,0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -15
air.type = Low
air.velocity = -5.5,4
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 40
palfx.add = 0,0,0
palfx.sinadd = 90,90,90,60
palfx.mul = 140,140,160

;ÉJÉâÅ[ÇVãÛíÜÉqÉbÉgéû
[State 7000, 1]
type = hitdef
triggerall = parent,palno >= 7
trigger1 = p2statetype = A
trigger1 = animelem = 4
attr = S, SP
damage    = 40,4
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
hitsound = S230,0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -15
air.type = Low
air.velocity = -5.5,4
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 40
palfx.add = 0,0,0
palfx.sinadd = 90,90,90,60
palfx.mul = 140,140,160

;âäÉqÉbÉgÉXÉpÅ[ÉNÇP
[State 8220, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8230
pos = -10,-50
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;âäÉqÉbÉgÉXÉpÅ[ÉNÇQ
[State 8220, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8231
pos = 10,-40
postype = p2
sprpriority = 2
bindtime = 15
ignorehitpause = 1
ownpal = 1

;âäëäéËÇ™îRÇ¶ÇÈÅiåJï‘ÇµÅj
[State 8220, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8240
pos = 0,20
postype = p2
sprpriority = 2
bindtime = 51
ignorehitpause = 1
facing = -1
ownpal = 1


[State 9000, 2]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 7001

[State 8220, Tux]
type = RemoveExplod
trigger1 = movehit = 1
trigger2 = moveguarded = 1
trigger3 = time = 60
trigger4 = parent, stateno = [5000,5210]
trigger5 = Pos Y >= 0
ID = 8001

[State 8220, 2]
type = ChangeState
trigger1 = movehit = 1
trigger2 = moveguarded = 1
trigger3 = time = 60
trigger4 = parent, stateno = [5000,5210]
trigger5 = Pos Y >= 0
value = 7001


;----------------------
;è¡ñ≈
[Statedef 7001]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 8230
VelSet = 0,0

[State 8220, 2]
type = destroyself
trigger1 = Animtime = 0
trigger2 = parent, stateno = [5000,5210]

;===============================================================================================================================================


;===========================================================================
; air Wings
;===========================================================================
;Light air Wings
[Statedef 1750]
type    = A
movetype= A
physics = A
anim = 1750
velset = 0,0
poweradd = 0
juggle = 5
ctrl = 0



[State 1752, Snd]
type = PlaySnd
trigger1 = time = 5
value = 0, 1

;voix
[State 1750, PlaySnd2]
type = PlaySnd
triggerall = random <= 250
trigger1 =Time = 0
value = S12, 5
channel = 0

[State 1750, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3511
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 45,-80
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 5,2
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
envshake.time =  15 
envshake.freq = 10
envshake.ampl = 5  
envshake.phase = 5

[State 1750, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3512
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-80
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 6,3
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1751, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1753
ctrl = 1

[Statedef 1753]
type = A
movetype = A
physics = A
anim = 1751
velset = 0, 0
juggle = 2
ctrl = 0

[State 660 , 4]
type = ChangeState
trigger1 = pos Y >= 0
value = 52
ctrl = 1



;===========================================================================


;mÈdium air Wings
[Statedef 1751]
type    = A
movetype= A
physics = A
anim = 1750
velset = 0,0
poweradd = 0
juggle = 5
ctrl = 0


[State 1752, Snd]
type = PlaySnd
trigger1 = time = 5
value = 0, 1



;voix
[State 1751, PlaySnd2]
type = PlaySnd
triggerall = random <= 500
trigger1 =Time = 0
value = S12, 5
channel = 0


[State 1751, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3511
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 45,-80
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 5,2
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1751, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3512
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-80
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 6,3
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1751, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3513
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-50
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 7,4
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1751, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1753
ctrl = 1

[Statedef 1753]
type = A
movetype = A
physics = A
anim = 1751
velset = 0, 0
juggle = 2
ctrl = 0

[State 660 , 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 47
ctrl = 1

;===========================================================================


;Strong air Wings
[Statedef 1752]
type    = A
movetype= A
physics = A
anim = 1750
velset = 0,0
poweradd = 0
juggle = 5
ctrl = 0


[State 1752, Snd]
type = PlaySnd
trigger1 = time = 5
value = 0, 1


;voix
[State 1752, PlaySnd2]
type = PlaySnd
triggerall = random <= 750
trigger1 =Time = 0
value = S12, 5
channel = 0

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3510
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 45,-90
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 4,1
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3511
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-70
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 5,2
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3512
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-40
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 6,3
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3513
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-20
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 7,4
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = s6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1752, Wings]
type = Projectile
trigger1 =  AnimElem=3
projanim = 3514
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8107
sparkxy = 90,-10
guard.sparkno = s7006
hitsound = s1, 3 ;5,0
velocity = 8,5
supermovetime = 900
pausemovetime = 900
attr = S, HP
damage    = 20,2
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound = s5, 0
guardsound = s6, 0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.type = low
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1751, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1753
ctrl = 1

[Statedef 1753]
type = A
movetype = A
physics = A
anim = 1751
velset = 0, 0
juggle = 2
ctrl = 0

[State 660 , 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 47
ctrl = 1

;=====================================================================================================================================================================
; ForÁa das sombras
;=====================================================================================================================================================================
;çUåÇÇP
[Statedef 1080]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 100
ctrl = 0
anim = 1090
VelSet = 0,0

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 5, 6

;ÉmÅ[É}Éã
[State 1053, 2]
type = HitDef
triggerall = palno < 7
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
attr = S, NA
animtype  = hard
damage    = 10,3
getpower = 0
givepower = 0
guardflag = MA
pausetime = 6,8;12
sparkno = -1
guard.sparkno = -1
hitsound = S200, 7
guardsound = s6, 0
ground.type = Low
ground.slidetime = 28
ground.hittime  = 28
ground.velocity = -2
air.velocity = -4,-4
;fall = 1
;air.fall = 1
;fall.recover = 0
;PalFX
palfx.time = 50
palfx.add = 155,155,155
palfx.sinadd = 255,255,255,80
palfx.mul = 70,40,100

;ÉJÉâÅ[ÇV
[State 1053, 2]
type = HitDef
triggerall = palno >= 7
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
attr = S, NA
animtype  = hard
damage    = 5
getpower = 0
givepower = 0
guardflag = MA
pausetime = 6,8;12
sparkno = -1
guard.sparkno = -1
hitsound = S200, 7
guardsound = s6, 0
ground.type = Low
ground.slidetime = 28
ground.hittime  = 28
ground.velocity = -2
air.velocity = -4,-4
;fall = 1
;air.fall = 1
;fall.recover = 0
;PalFX
palfx.time = 40
palfx.add = 0,0,0
palfx.sinadd = 90,90,90,60
palfx.mul = 140,140,160

;âäÉqÉbÉgÉXÉpÅ[ÉNÇP
[State 8220, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8230
pos = 55,-55
postype = p1
sprpriority = 4
bindtime = 15
ignorehitpause = 1
ownpal = 1

;âäÉqÉbÉgÉXÉpÅ[ÉNÇQ
[State 8220, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8231
pos = 45,-45
postype = p1
sprpriority = 4
bindtime = 15
ignorehitpause = 1
ownpal = 1

[State 5000, 21]
type = VarSet
trigger1 = time = 0
v = 31
value = 0

[State 5000, 21]
type = VarAdd
trigger1 = movehit = 1
v = 31
value = 1
ignorehitpause = 1

;ÉâÉìÉ_ÉÄ
[State 5000, 0]
type = VarRandom
trigger1 = time = 0
v = 0
range = 0, 2

;r1
;ÇøÇ¡ÇøÇ·Ç¢âäÉqÉbÉgÉXÉpÅ[ÉNÇPÅiå≈íËï\é¶Åj
[State 8220, 4]
type = Explod
trigger1 = Var(31) >= 2
trigger1 = Var(0) = 0
persistent = 0
anim = 8232
pos = 10,-50
postype = p1
sprpriority = 4
bindtime = 16
ignorehitpause = 1
ownpal = 1

;ÇøÇ¡ÇøÇ·Ç¢âäÉqÉbÉgÉXÉpÅ[ÉNÇP
[State 8220, 4]
type = Explod
trigger1 = Var(31) >= 12
trigger1 = Var(0) = 0
persistent = 0
anim = 8233
pos = 25,-90
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1

;r2
;ÇøÇ¡ÇøÇ·Ç¢âäÉqÉbÉgÉXÉpÅ[ÉNÇPÅiå≈íËï\é¶Åj
[State 8220, 4]
type = Explod
trigger1 = Var(31) >= 4
trigger1 = Var(0) = 1
persistent = 0
anim = 8232
pos = 20,-55
postype = p1
sprpriority = 4
bindtime = 16
ignorehitpause = 1
ownpal = 1

;ÇøÇ¡ÇøÇ·Ç¢âäÉqÉbÉgÉXÉpÅ[ÉNÇP
[State 8220, 4]
type = Explod
trigger1 = Var(31) >= 14
trigger1 = Var(0) = 1
persistent = 0
anim = 8233
pos = 30,-85
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1


;âäëäéËÇ™îRÇ¶ÇÈÅiåJï‘ÇµÅj
[State 8220, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8240
pos = 0,20
postype = p2
sprpriority = 2
bindtime = 51
ignorehitpause = 1
facing = -1
ownpal = 1

;ÉKÅ[ÉhÉXÉpÅ[ÉNÇP
[State 1053, 4]
type = Explod
trigger1 = moveguarded = 1
persistent = 0
anim = 7120
pos = 10,0
postype = p2
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1

;âäÉGÉtÉFÉNÉgÇSÅiÉVÉÖÉèÉãÉcÉpÉìÉcÉ@Å[óp ã≠ Åj
[State 1000, 4]
type = Explod
trigger1 = AnimElem = 10
persistent = 0
anim = 8223
pos = 57,-27
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1
Vel = 1,0

;ÉJÉâÅ[ÇV
[State 207, 4]
type = EnvShake
triggerall = palno >= 7
trigger1 = movehit = 1
time = 15
ampl = -3
freq = 40
phase = 40

[State 1000, 8]
trigger1 = AnimTime = 0
type = ChangeState
value = 1081

;--------------------
;ÉÇÅ[ÉVÉáÉì
[Statedef 1081]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 1091


[State 1000, 8]
trigger1 = AnimTime = 0
type = ChangeState
value = 1082

;--------------------
;çUåÇÇQÅiåJï‘ÇµÅj
[Statedef 1082]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1092

[State 182, 1]
type = explod
trigger1 = animelem = 1
anim = 7085
pos = 25,0
postype = p1
bindtime = 1
supermove = 1
sprpriority = 4
ownpal = 1

[State 100,Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 101
anim = 101
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

[State 10001, Super B]
type=AfterImage
trigger1= Time = 0
time= 20
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1000, 1]
type = VelSet
triggerall = time >= 0
trigger1 = movehit != 1
trigger2 = moveguarded != 1
x = 10

[State 1000, 1]
type = VelSet
triggerall = time >= 0
trigger1 = movehit = 1
trigger2 = moveguarded = 1
x = 7

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 230, 10

;ÉmÅ[É}Éã
[State 1053, 2]
type = HitDef
triggerall = palno < 7
trigger1 = AnimElem = 2
trigger1 = moveguarded != 1
trigger1 = movehit != 1
attr = S, NA
animtype  = hard
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 8,14
sparkno = -1
guard.sparkno = -1
hitsound = S230, 0
guardsound = s6, 0
ground.type = Low;High
ground.slidetime = 28
ground.hittime  = 28
ground.velocity = -5.5
air.velocity = -5.5,-2
fall = 1
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 50
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512

;ÉJÉâÅ[ÇV
[State 1053, 2]
type = HitDef
triggerall = palno >= 7
trigger1 = AnimElem = 2
trigger1 = moveguarded != 1
trigger1 = movehit != 1
attr = S, NA
animtype  = hard
damage    = 50
getpower = 0
givepower = 0
guardflag = MA
pausetime = 8,14
sparkno = -1
guard.sparkno = -1
hitsound = S230, 0
guardsound = s6, 0
ground.type = Low;High
ground.slidetime = 28
ground.hittime  = 28
ground.velocity = -5.5
air.velocity = -5.5,-2
fall = 1
air.fall = 1
fall.recover = 0
;PalFX
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512

;âäÉqÉbÉgÉXÉpÅ[ÉNÇP
[State 8220, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8230
pos = -10,-50
postype = p2
sprpriority = 4
bindtime = 15
ignorehitpause = 1
ownpal = 1

;âäÉqÉbÉgÉXÉpÅ[ÉNÇQ
[State 8220, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8231
pos = 10,-40
postype = p2
sprpriority = 4
bindtime = 15
ignorehitpause = 1
ownpal = 1

[State 5000, 21]
type = VarSet
trigger1 = time = 0
v = 31
value = 0

[State 5000, 21]
type = VarAdd
trigger1 = movehit = 1
v = 31
value = 1
ignorehitpause = 1

;ÉâÉìÉ_ÉÄ
[State 5000, 0]
type = VarRandom
trigger1 = time = 0
v = 0
range = 0, 2

;r1
;ÇøÇ¡ÇøÇ·Ç¢âäÉqÉbÉgÉXÉpÅ[ÉNÇPÅiå≈íËï\é¶Åj
[State 8220, 4]
type = Explod
trigger1 = Var(31) >= 2
trigger1 = Var(0) = 0
persistent = 0
anim = 8232
pos = 10,-50
postype = p1
sprpriority = 4
bindtime = 16
ignorehitpause = 1
ownpal = 1

;ÇøÇ¡ÇøÇ·Ç¢âäÉqÉbÉgÉXÉpÅ[ÉNÇP
[State 8220, 4]
type = Explod
trigger1 = Var(31) >= 12
trigger1 = Var(0) = 0
persistent = 0
anim = 8233
pos = 25,-90
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1

;r2
;ÇøÇ¡ÇøÇ·Ç¢âäÉqÉbÉgÉXÉpÅ[ÉNÇPÅiå≈íËï\é¶Åj
[State 8220, 4]
type = Explod
trigger1 = Var(31) >= 4
trigger1 = Var(0) = 1
persistent = 0
anim = 8232
pos = 20,-55
postype = p1
sprpriority = 4
bindtime = 16
ignorehitpause = 1
ownpal = 1

;ÇøÇ¡ÇøÇ·Ç¢âäÉqÉbÉgÉXÉpÅ[ÉNÇP
[State 8220, 4]
type = Explod
trigger1 = Var(31) >= 14
trigger1 = Var(0) = 1
persistent = 0
anim = 8233
pos = 30,-85
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1

;âäëäéËÇ™îRÇ¶ÇÈÅiåJï‘ÇµÅj
[State 8220, 4]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8240
pos = 0,20
postype = p2
sprpriority = 2
bindtime = 51
ignorehitpause = 1
facing = -1
ownpal = 1



;âäÉGÉtÉFÉNÉgÇQÅiÉVÉÖÉèÉãÉcÉpÉìÉcÉ@Å[ópÅj
[State 1000, 4]
type = Explod
trigger1 = time = 0
persistent = 0
anim = 8221
pos = 33,-17
postype = p1
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1
Vel = -2,0

;âäÉGÉtÉFÉNÉgÇQÅiÉVÉÖÉèÉãÉcÉpÉìÉcÉ@Å[ópÅj
[State 1000, 4]
type = Explod
trigger1 = time = 8
persistent = 0
anim = 8221
pos = 33,-17
postype = p1
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1
Vel = -2,0

;âäÉGÉtÉFÉNÉgÇRÅiÉVÉÖÉèÉãÉcÉpÉìÉcÉ@Å[ópÅjÅiåJï‘ÇµÅj
[State 1000, 4]
type = Explod
trigger1 = time = 0
persistent = 0
anim = 8222
pos = 33,-17
postype = p1
sprpriority = 3
bindtime = 28
ignorehitpause = 1
ownpal = 1
removetime = 28
Vel = -2,0

;ÉJÉâÅ[ÇV
[State 207, 4]
type = EnvShake
triggerall = palno >= 7
trigger1 = movehit = 1
time = 15
ampl = -3
freq = 40
phase = 40

[State 1000, 8]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 1092

[State 1000, 8]
type = ChangeState
trigger1 = Time = 20
value = 1083

;--------------------
;èIóπ
[Statedef 1083]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1093

;r1
;ÇøÇ¡ÇøÇ·Ç¢âäÉqÉbÉgÉXÉpÅ[ÉNÇP
[State 8220, 4]
type = Explod
trigger1 = Var(31) >= 5
trigger1 = Var(0) = 0
trigger1 = time = 0
persistent = 0
anim = 8232
pos = -5,-80
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1
Vel = -1,0

;r2
;ÇøÇ¡ÇøÇ·Ç¢âäÉqÉbÉgÉXÉpÅ[ÉNÇP
[State 8220, 4]
type = Explod
trigger1 = Var(31) >= 5
trigger1 = Var(0) = 1
trigger1 = time = 0
persistent = 0
anim = 8232
pos = -10,-75
postype = p1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
ownpal = 1
Vel = -1,0

[State 5000, 21]
type = VarSet
trigger1 = time = 0
v = 31
value = 0

[State 5000, 21]
type = VarSet
trigger1 = time = 0
v = 0
value = 0

[State 1000, 1]
type = PlaySnd
trigger1 = time = 0
value = 0, 0

;âä
[State 1000, 4]
type = Explod
trigger1 = AnimElem = 1
persistent = 0
anim = 7001
pos = -12,0
postype = p1
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1

;ëäéËínè„åÉì¨
[State 207, 4]
type = EnvShake
trigger1 = p2stateno = 5100
time = 15
ampl = -3
freq = 40
phase = 40

[State 1055, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rage Run (inicio)
[Statedef 1400]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 120
velset = 0,0
anim = 1400
ctrl = 0

[State 1010, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 5, 7

[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1401
ctrl = 0

;---------------------------------------------------------------------------
; Rage Run (erro)
[Statedef 1408]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 0.8,0
ctrl = 0

[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rage Run (corrida)
[Statedef 1401]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
velset = 0,0
anim = 1401
ctrl = 0

[State 1300, 1]
type = VelSet
trigger1 = Time > 2
x = 12
y = 0

[State 1010, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 5, 9
channel = 0

[State 182, 1]
type = explod
trigger1 = animelem = 2
anim = 7085
pos = 25,0
postype = p1
bindtime = 1
supermove = 1
sprpriority = 4
ownpal = 1

[State 100,Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 101
anim = 101
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

[State 10001, Super B]
type=AfterImage
trigger1= Time = 0
time= 20
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1010, 3]
type = ChangeState
trigger1 = P2bodydist X <= 20
trigger1 = P2StateType != A
value = 1402
ctrl = 0

[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1408
ctrl = 0

;---------------------------------------------------------------------------
; Rage Run - Type Swift (corrida)
[Statedef 1405]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
velset = 0,0
anim = 1405
ctrl = 0

[State 1300, 1]
type = VelSet
trigger1 = Time > 2
x = 8
y = 0

[State 1010, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 5, 9

[State 1010, 3]
type = ChangeState
trigger1 = P2bodydist X <= 10
trigger1 = P2StateType != A
value = 1406
ctrl = 0

[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1408
ctrl = 0

;---------------------------------------------------------------------------
; Rage Run - Type Swift (troca)
[Statedef 1406]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 1406
ctrl = 0

[State 1010, 1]
type = SprPriority
trigger1 = Time = 0
value = 3

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5, 7

[State 1010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1407
ctrl = 0

;---------------------------------------------------------------------------
; Rage Run - Type Swift (final)
[Statedef 1407]
type    = S
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 1407
ctrl = 0

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 2

[State 1380, 1]
type = PosAdd
trigger1 = Time = 0
x = 100

[State 1380, 1]
type = PosAdd
trigger1 = AnimTime = 0
x = 10

[State 1380, 2]
type = Turn
trigger1 = Time = 0

[State 1380, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rage Run - Type "Dunk" (inicio)
[Statedef 1402]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 1402
ctrl = 0

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13, 1
channel = 0

[State 195, 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 5, 8

[State 1451, 1]
type = VelSet
trigger1 = AnimElem = 1
y = -4.5
x = 1.5

[State 1451, 2]
type = VelAdd
trigger1 = Time >= 2
y = .35

[State 1451, 3]
type = explod
trigger1 = AnimElem = 7
anim = 8209
pos = 41,-43
sprpriority = 2
postype = p1
bindtime = 1
supermove = 1
ownpal = 1

[State 1451, 5]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 90,9
getpower = 0
givepower = 0
guardflag = M
sparkno = S8231
guard.sparkno = S8233
sparkxy = -10,-38
animtype = Hard
pausetime = 5,8
hitsound = S1, 7
guardsound = s6, 0
ground.slidetime = 0
ground.hittime = 18
ground.velocity = 0,10
air.velocity = 0,10
air.fall = 0
fall.recover = 0
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512
fall = 1
fall.recover = 0
fall.xvelocity = 0
fall.yvelocity = -3

[State 1451, 6]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1403
ctrl = 0

;---------------------------------------------------------------------------
; Rage Run - Type "Dunk" ( landing - sucesso do hit )
[Statedef 1403]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 1403
ctrl = 0

[State 1010, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 2

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1010, 1]
type = VelMul
trigger1 = Time >= 0
x = .8

[State 1010, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;================================================================

;Soco atravessante
[Statedef 10000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 10003
sprpriority = 1


[State 20100, 1]
type = PlaySnd
trigger1 = Time = 2
value = 12, 5

[State 182, 1]
type = explod
trigger1 = animelem = 2
anim = 7085
pos = 25,0
postype = p1
bindtime = 1
supermove = 1
sprpriority = 4
ownpal = 1

[State 100,Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 101
anim = 101
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

[State 10000, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Hard
damage    = 90,9
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 0, 35
sparkno = S7002
sparkxy = -10,-90
guard.sparkno = S8233
hitsound = S1, 7
guardsound = S6, 0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 6
ground.velocity = 0
air.velocity = -2.5,-4
fall = 1
air.fall= 1
fall.recover= 0

[State 2199 , 8]
type = Explod
trigger1 = movehit
anim = 8104
sprpriority = 1
postype = p2
pos = -10,-100
removetime = 20
ignorehitpause = 1
supermove = 1
bindtime = -1


[State 10000, 3]
Type = Velset
trigger1 = AnimElem = 2
x = 16

[State 10000, 4]
Type = VelMul
trigger1 = AnimElem = 3
x = 1.5

[State 10000, 5]
Type = VelMul
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
x = 1.5

[State 10000, 6]
Type = VelMul
trigger1 = AnimElem = 6
x = 1.7

[State 10000,7]
type = PlaySnd
trigger1 = AnimElem = 2,1
value = 0, 11

[State 10000, 8]
Type = VelMul
trigger1 = AnimElem = 7
x = 2

[State 10000, 9]
Type = VelMul
trigger1 = AnimElem = 8
x = 1.1

[State 10000, afterimage]
type=AfterImage
trigger1= AnimElem = 2
time = 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 10000, 10]
type = ChangeState
trigger1 = MoveHit
value = 10001
ctrl = 1

[State 10000, 11]
type = ChangeState
trigger1 = MoveGuarded
value = 0
ctrl = 1

[State 10000, 12]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1


;Atravessando
[Statedef 10001]
type = S
Movetype = I
Physics = S
Anim = 10001
ctrl = 0

[State 10001, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 6

[State 10001, Super B]
type=AfterImage
trigger1= Time = 0
time = 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 10001,1]
type = posadd
trigger1 = animtime = 0
x = 100

[State 10001,2]
type = changestate
trigger1 = animtime = 0
value = 10002
ctrl = 1

;atravessando (fim)
[Statedef 10002]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 10001
sprpriority = 8

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3


[State 10002, Explod]
type = Explod
trigger1 = Time = 1
anim = F12
postype = p2
pos = 0, -80

[State 10002, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 10002, 5]
type = ChangeState
trigger1 = time = 70
value = 0
ctrl = 1

[State 10002, 6.1]
Type = Velset
trigger1 = AnimElem = 1
x = 8


[State 10002, nothittableanything]
type = NotHitBy
trigger1 = 1
value = SCA

[State 10002, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;===========================================================================
;Ankoku Houou Guenma-Ken
;===========================================================================
;(prÈparation)
[Statedef 3030]
type = S
movetype = A
physics = S
anim = 3030
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0

;===============================
;SND
;===============================
[State 3030,0Snd]
type = PlaySnd
Trigger1=animelem= 1
value = 3030, 0
channel = 0
;===============================
;paramÈtre spÈtial
;===============================
[State 3030 , pause]
type = SuperPause
trigger1 = Time = 0
time = 120
anim = -1
darken = 100
movetime = 120

;(trainÈ rouge)
[State 3030, 1]
type = AfterImage
trigger1 =Time = 0
time = 214
FrameGap = 2
palcolor = 1
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
length = 10
Trans = Add1

;===============================
;paramÈtre posture et vitesse
;===============================
;(dÈplasmen ver l'avent)
[State 3030, VelAdd]
type = VelAdd
trigger1 = AnimElem=5
x =5
y = 0
;ignorehitpause =
;persistent =

;===============================
;EXPLOD
;===============================

[State 3030, Explod2]
type = Explod
trigger1 = animelem= 3
anim = 8145
ID = 8015
pos = 152,160
postype =back
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 1

scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
supermovetime = 140
removeongethit = 1

[State 3110, explod]
type = Explod
trigger1 = AnimElem = 1
postype = p1
pos = 0,-100
anim = 6000
ID = 4105
sprpriority = -1
bindtime = -1
removetime = 90
ownpal = 1
ignorehitpause = 1
persistent = 0
removeongethit = 1
supermove= 1

;===============================
[State 3030,cosmos]
type = Explod
triggerall= anim = 3030
trigger1 =animelem= 1
anim = 3038
id = 3038
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
;vel = 0,0
;accel = 0,0
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

;===============================
[State 3030, petit explosion de magma ]
type = Explod
trigger1 = animelem= 1
anim =8038
ID = 8038
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 1
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
 supermovetime = 140

[State 3000,explosion demagma 2]
type = Explod
trigger1 = animelem= 1
anim =8049
ID = 8100
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 32
supermove = 1
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
;===============================
[State 3000,explosion demagma 2]
type = Explod
trigger1 = animelem= 1
anim =8100
ID = 8100
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
 supermovetime = 140

[State 3000,explosion demagma 2]
type = Explod
trigger1 = animelem= 1
anim =8123
ID = 8100
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove = 1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =
 supermovetime = 140

;===============================
[State 3030,jin gauche ]
type = Explod
trigger1 = AnimElem = 1
;trigger1 = Pos X   < 0
pos = 0,0
anim = 8041
ID = 4209
postype = left
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime =100
;ontop =1
supermovetime = 700
;===============================
[State 3030 , 11]
type = ChangeState
trigger1 = animtime = 0
value =3031
ctrl =1
;============================================
;ChangeState
;===============================
;(STATE D'ATTAQUE)
;===============================
[Statedef 3031]
type = S
movetype = A
physics = S
anim = 3031
velset = 0,0
juggle = 0
ctrl = 0

;===============================
;paramÈtre posture et vitesse
;===============================
[State 3031]
type = VarSet
triggerall = stateno = 3031
trigger1 = time = 0
value = 0
v = 48

;(dÈplasmen ver l avent)
[State 3030, VelAdd]
 type = VelAdd
trigger1 = AnimElem=1
x =40
y = 0
;ignorehitpause =
;persistent =

;===============================
;EXPLOD
;===============================
;(COMOSE de feux)
[State 3031,cosmos]
type = Explod
triggerall =anim=3031
trigger1 =animelem= 1
anim = 3039
id = 3039
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
;vel = 0,0
;accel = 0,0
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1
;===============================
;(Si P1 est du cÙtÈ droite)
[State  3031, cervo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = 3035
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos =  320,-0
postype = front
anim = 8040
;ID = 8032
scale = 1,1
;facing = -1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700

;(Si P1 est du cÙtÈ gauche)
[State  3031, cervo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = 3035
trigger1 = MoveContact = 1
;trigger1 = Pos X  > 0
pos = 0,-0
postype = back
anim = 8039
;ID = 8032
scale = 1,1
;facing = -1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700
;===============================
;Si P1 est du cÙtÈ droite
[State  3031, Èlectic cÈrvo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = 3035
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos = 320,-0
postype = front
anim = 8016
;ID = 8032
scale = 1,1
;facing = -1
;vfacing = 1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700

;Si P1 est du cÙtÈ gauche
[State  3031, Èlectic cÈrvo]
type = Explod
triggerall =  Anim=3031
trigger1 = p2stateno = 3035
trigger1 = MoveContact = 1
;trigger1 = Pos X  > 0
pos = -1,-0
postype = back
anim = 8015
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40
supermovetime = 700
;===============================
 ;HIT ATTAQUE
;================================
[State 3031, 3]
type = hitdef
triggerall=anim=3031
trigger1 =  AnimElem = 1
attr = S, HT
;projhitanim = -1
hitflag=MA
damage = 155,180
getpower = 0
givepower = 0
animtype = Light
guardflag = MAF
pausetime = 0,666
sparkno = 0
sparkxy = 47, -120
;sparkno = -1
;guard.sparkno = -1
hitsound = S4000, 1
guardsound = s6, 0
guard.pausetime =1, 130
mindist = 45 ,-6
maxdist = 45,-6
;guardsound = 6,0
ground.type = High
ground.slidetime=12
ground.hittime=11
ground.velocity=-2
air.velocity = -0,0
p2stateno = 3035
p2facing =1
snap = 38,0
fall = 1
fall.recover= 0
id = 3031

;================================
[State 3031 , transition si il est touchez]
type = ChangeState
trigger1 = MoveContact =1
trigger1 = p2stateno = 3035
;trigger1 = Time = 10
value = 3032
ctrl =0

[State 3031 , 11]
type = ChangeState
trigger1 = animtime = 0
value =3033
ctrl =0

;--------------------------------
;State Tux for P2
[Statedef 3035]
type = S
movetype = H
physics = S
ctrl = 0

[State 3035, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3037

[State 3035, Anim]
type = posset
trigger1 = Time >= 0
Y = 0

[State 3035, Anim]
type = velset
trigger1 = Time = 0
Y = 0

[State 3035, SS]
type = SelfState
trigger1 = Time = 666
value = 5050
ctrl = 0

;=======================================
;ChangeState de 3031a 3032
;=======================================
;(si p2 est en fall)
[Statedef 3032]
type = S
movetype = A
physics = S
anim = 3032
velset = 0,0
juggle = 0
ctrl = 0


;===============================
;SND
;===============================
[State 3032, batment Coeur Snd]
type = PlaySnd
trigger1 = Anim =3032
trigger1= Time
trigger1= Time%80=0
value = 3032, 0

[State 3032, provoc Snd]
type = PlaySnd
trigger1 =  AnimElem = 6
value = 3032, 1
channel = 0
;===============================
;paramÈtre spÈtial
;===============================
;(traverser P2)
[State 3032, PushOff]
type = PlayerPush
trigger1 = anim = 3032
value = 0
trigger1 = p2stateno = 3035

[State 3032, NoHit]
type = NotHitBy
trigger1 = anim = 3032
value = SCA

;(trainÈ rouge)
[State 3032, 2]
type = BGPalfx
trigger1 =AnimElem =27
ignorehitpause = 1
time = 47
mul = 93,0,127
add = 93,0,127
invertall = 1

[State 3601, lifeadd]
type = TargetLifeAdd
trigger1 = time = 100
trigger2 = time = 200
trigger3 = time = 300
trigger4 = time = 400
trigger5 = time = 500
value = -96
id = 3031

[State 3601, explod]
type = Explod
trigger1 = time = 100
trigger2 = time = 200
trigger3 = time = 300
trigger4 = time = 400
trigger5 = time = 500
anim = F10
facing = -1
postype = p1
pos = 40, -113
sprpriority = 4

[State 3601, explod]
type = Explod
trigger1 = time = 225
trigger2 = time = 550
trigger3 = time = 600
anim = F11
facing = -1
postype = p1
pos = 40, -113
sprpriority = 4

[State 3601, explod]
type = Explod
trigger1 = AnimElem = 2
anim = 3035
postype = p1
pos = 0, 0
scale = 0.55,0.55
bindtime = 1
sprpriority = 4
persistent = 0

[State 3601, explod]
type = Explod
trigger1 = time = 240
anim = 8063
postype = p2
removetime =60
pos = 20, -95
bindtime = 1
sprpriority = 4
persistent = 0

[State 3601, explod]
type = Explod
trigger1 =  AnimElem = 27
anim = 8063
postype = p2
removetime =45
pos = 20, -95
bindtime = 1
sprpriority = 4
persistent = 0

;===============================
;EXPLOD
;===============================
[State 3002,cosmos]
type = Explod
trigger1 =animelem= 1
anim = 3040
id = 3040
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
;vel = 0,0
;accel = 0,0
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1
;===============================
;divert las
[State 3032, las ]
type = Explod
;trigger1 = MoveContact =3
trigger1 = AnimElem = 1
trigger1 = p2name!= "cassios" && p2name != "aldebaran" && p2name != "algethiH" && p2name != "algethiS" 
;trigger1 = Pos X  > 0
pos =220,-40
anim = 8101
ID = 4209
;facing = 1
;vfacing = -1
postype = p2
sprpriority = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100
;ontop =1
supermovetime = 700

;cassios las
[State 3032, las ]
type = Explod
;trigger1 = MoveContact =3
trigger1 = AnimElem = 1
trigger1 =p2name= "cassios" || p2name = "aldebaran" || p2name = "algethiH" || p2name = "algethiS"
;trigger1 = Pos X  > 0
pos =220,-85
anim = 8101
ID = 4209
;facing = 1
;vfacing = -1
postype = p2
sprpriority = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100
;ontop =1
supermovetime = 700



;===============================
[State 3032 , 11]
type = ChangeState
trigger1 = animtime = 0
value =0
ctrl =1

;===========================================================================
;(alternative state p2 touchÈ)
;===========================================================================
;(si p2  en gard   plus utille)
[Statedef 3033]
type = S
movetype = A
physics = S
anim = 3033
velset = 0,0
juggle = 0
ctrl = 0
;===============================
;paramÈtre spÈtial
;===============================
[State 3033, NoHit]
type = NotHitBy
trigger1 = anim = 3032
value = SCA

;traverser P2
[State 3033, PushOff]
type = PlayerPush
trigger1 = anim = 3032
value = 0
trigger1 = p2stateno = 3035
;;;loop %80=0
;;;Time%80=0
;===============================
[State 3033 , 11]
type = ChangeState
trigger1 = animtime = 0
value =0
ctrl =1
;=======================================================
;Black fenix Fire

[StateDef 11000]
type    = S
movetype = A
physics = S
poweradd= -1000
juggle  = 2
ctrl = 0
velset = 0,0
anim = 11000

[State 700, snd]
type = PlaySnd
trigger1 = animelem= 1
value = 2, 1

[State 3000, phoenix cosmo gauche]
type = Explod
trigger1 = animelem= 1
anim = 4106
ID = 4105
pos = 0,0
postype = back
sprpriority = -1
supermove = 1
removetime = 175
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3110, explod]
type = explod
trigger1 = time = 0
anim = 8050
ID = 4105
pos = 0, 0
postype = back
sprpriority = -5
removetime = 175
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove= 1

[State 900]
type = superpause
trigger1=time=1
time = 183
anim = -1
movetime = 183

[State 3500, BGPalfx]
Type = BGPalfx
Trigger1 = time = [0, 600]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1


[State Snd]
type = PlaySnd
trigger1 = Time = 5
value = 4200, 0
channel = 0

[State 735000, cosmo]
type = Explod
triggerall = NumExplod(7750) = 0
trigger1 = AnimElem = 6
pos = 5,0
ID = 7750
anim = 7750
sprpriority = 1
removetime = 374
ownpal = 1
scale = 1,1
ignorehitpause = 1
supermove = 1
bindtime = -1
removeongethit = 1

[State 735000, cosmo]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 1
pos = 0,0
ID = 7010
anim = 7010
sprpriority = 0
removetime = 374
ownpal = 1
ignorehitpause = 1
supermove = 1
bindtime = -1
removeongethit = 1

[State 184, 9]
type = Explod
trigger1 = AnimElem = 2
anim = 1931
sprpriority = -2
postype = p1
pos = 7,15
bindtime = 1
supermove = 1
ownpal = 1


;----------------------

[State 3505, a1]
type = PlaySnd
trigger1 = time = 0
value = 1000, 12
channel = 6
loop = 1

[State 20000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 11001

[StateDef 11001]
type    = S
movetype = A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0
anim = 11001

[State 3500, BGPalfx]
Type = BGPalfx
Trigger1 = time = [0, 500]
Add = -70,-70,-90
IgnoreHitPause = 1
time = 1

[State ]
type = Helper
trigger1 = time = 0
helpertype = Normal
ID = 7000
name = "o_O"
postype = p1
pos = 0, 0
persistent = 1
ignorehitpause = 1
stateno = 7000
ownpal = 1

[State ]
type = Helper
trigger1 = time = 0
ID = 7001
name = "o_O"
postype = p1
pos = 0, 0
persistent = 1
ignorehitpause = 1
stateno = 7001
ownpal = 1

[State 3505, a1]
type = PlaySnd
trigger1 = time = 0
value = 1000, 12
channel = 7

[State 20000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
time = 2

[State 20000, sound]
type = Playsnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 10
trigger3 = AnimElem = 17
value = S190, 0

[State 20000, sound]
type = Playsnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 10
trigger3 = AnimElem = 17
value = S1500, 14

[State 2199 , 6]
type = Explod
trigger1 = AnimElem = 3
anim = 3001
sprpriority = 1
postype = p1
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0


[State 2199 , 6]
type = Explod
trigger1 = AnimElem = 10
anim = 3001
sprpriority = 1
postype = p1
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0



[State 2199 , 6]
type = Explod
trigger1 = AnimElem = 17
anim = 3001
sprpriority = 1
postype = p1
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0



[State 20000, BoltFat1]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11
projanim = 30022
projhitanim = -1
projscale = 0.85,0.85
postype = p2
offset = 0, -300
velocity = 0, 8
attr = S, SP
damage    = 50,5
getpower = 0
givepower = 0
animtype = medium
air.type = Low
guardflag = HAD
hitflag = HAFD
pausetime = 0,120
sparkno = -1
guard.sparkno = -1
hitsound = S1500, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = 0, 12
air.velocity = 0, 12
air.juggle = 3
Palfx.Time = 120
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512
fall.recover = 0


[State 20000, BoltFat1]
type = Projectile
trigger1 = AnimElem = 18
projanim = 30022
projhitanim = -1
projscale = 0.9,0.9
postype = p2
offset = 0, -300
velocity = 0, 8
attr = S, SP
damage = 100,5
getpower = 0
givepower = 0
animtype = medium
air.type = Low
guardflag = HAD
hitflag = HAFD
pausetime = 0,25
sparkno = -1
guard.sparkno = -1
hitsound = S1500, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 70
ground.velocity = 0, 12
air.velocity = 0, 12
air.juggle = 3
Palfx.Time = 90
palfx.time = 40
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512
EnvShake.Time = 10
EnvShake.Ampl = 5
EnvShake.Freq = 90
fall = 1
Air.Fall = 1
fall.recover = 0

[State ]
type = Helper
trigger1 = projcontact = 1
helpertype = Normal
ID = 8010
name = "o_O"
postype = p2
pos = 0, -50
persistent = 1
ignorehitpause = 1
stateno = 8010
ownpal = 1

[State 660 , 1]
type = PlaySnd
trigger1 = projcontact = 1
value = 1000, 14


[State 2199 , 6]
type = Explod
trigger1 = (projhit = 1) && (time >= 182)
anim = 3001
sprpriority = 1
postype = p2
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0

[State 2199 , 6]
type = Explod
trigger1 = (projhit = 1) && (AnimElem >= 18)
anim = 3001
sprpriority = 1
postype = p2
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0

[State 2199 , 6]
type = Explod
trigger1 = projhit = 1
anim = 3001
sprpriority = 1
postype = p2
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0

[State 20000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 11003


[StateDef 11003]
type = S
ctrl = 0
anim = 192
velset = 0,0
movetype = I
physics = S
sprpriority = 2
poweradd= 0

[State 3100]
type = RemoveExplod
trigger1 = time = 0
id = 4937

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13, 2

[State 660 , 1]
type = PlaySnd
trigger1 = projcontact = 1
value = 1000, 14

[State 2199 , 6]
type = Explod
trigger1 = projcontact = 1
anim = 3001
sprpriority = 1
postype = p2
pos = 0,5
removetime = 66
ignorehitpause = 1
supermove = 1
bindtime = -1
ownpal = 1
persistent = 0

[State ]
type = Helper
trigger1 = projcontact = 1
helpertype = Normal
ID = 8000
name = "o_O"
postype = p2
pos = 0, -50
persistent = 0
ignorehitpause = 1
stateno = 8000
ownpal = 1


[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------

[Statedef 7000]
type    = S
ctrl = 0
anim = 9999
velset = 0,0

[State 7000,vr ]
type = VarRandom
trigger1 = timemod = 3,0
v = 2
range = -2,5
ignorehitpause = 1

[State 7000,vr ]
type = VarRandom
trigger1 = timemod = 3,0
v = 3
range = 1,3
ignorehitpause = 1


[State 7000,explod ]
type = Explod
trigger1 = timemod = 3,0
trigger2 = timemod = 7,0
anim = 8232   ; 7204
ID = 0
pos = 0,-30
vel = 0,-random%4
random = 30,60
sprpriority = var(2)
ownpal = 1
ignorehitpause = 1
supermove = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 7000,explod ]
type = Explod
trigger1 = timemod = 4,2
trigger2 = timemod = 8,2
anim = 8231
ID = 0
pos = 0,-30
vel = 0,-random%3
random = 30,60
sprpriority = var(2)
ownpal = 1
ignorehitpause = 1
supermove = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State 7000,bind ]
type = BindToParent
trigger1 = time > 0
ignorehitpause = 1

[State 7000,ds ]
type = DestroySelf
trigger1 = parent,stateno != 3010

[Statedef 7001]
type    = S
ctrl = 0
anim = 9999
velset = 0,0

[State 7000,vr ]
type = VarRandom
trigger1 = timemod = 3,0
v = 2
range = -2,5
ignorehitpause = 1

[State 7000,vr ]
type = VarRandom
trigger1 = timemod = 3,0
v = 3
range = 1,3
ignorehitpause = 1

[State 7000,explod ]
type = Explod
trigger1 = timemod = 3,0
trigger2 = timemod = 7,0
anim = 8232  ; 7204
ID = 0
pos = 0,-30
vel = 0,-random%4
random = 30,60
sprpriority = var(2)
ownpal = 1
ignorehitpause = 1
SuperMoveTime = 9999
supermove = 1

[State 7000,explod ]
type = Explod
trigger1 = timemod = 4,2
trigger2 = timemod = 8,2
anim = 8231
ID = 0
pos = 0,-30
vel = 0,-random%3
random = 30,60
sprpriority = var(2)
ownpal = 1
ignorehitpause = 1
supermove = 1
SuperMoveTime = 9999


[State 7000,bind ]
type = BindToParent
trigger1 = time > 0
ignorehitpause = 1

[State 7000,ds ]
type = DestroySelf
trigger1 = parent,stateno != 3000

;-----------------------------------------------------------------

[Statedef 8000]
Type = A
Physics = N
SprPriority = -1

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State -1]
Type = VarRandom
Trigger1 = 1
V = 7
Range = 0,1
IgnoreHitPause = 1
Persistent = 1

[State -1]
Type = Explod
Trigger1 = Time = [1,90]
Anim = 8230+Var(7)
ID = 8000
Ownpal = 1
BindTime = 4
PosType = P2
Pos = 0,IfElse(P2StateType != L,Const(Size.Mid.Pos.Y)+10,-10)
Random = 20,0
Vel = 0,-2.5
SprPriority = 1
IgnoreHitPause = 1
Persistent = 3
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -1]
Type = Explod
Trigger1 = Time >= 92
Anim = 8230+Var(7)
ID = 8000
Ownpal = 1
BindTime = 4
PosType = P2
Pos = 0,IfElse(P2StateType != L,Const(Size.Mid.Pos.Y)+10,-10)
Random = 20,0
Vel = 0,-2.5
SprPriority = 0
IgnoreHitPause = 1
Persistent = 0
SuperMoveTime = 9999
PauseMoveTime = 9999


[State -1]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
Flag2 = Invisible
IgnoreHitPause = 1

[State -1]
Type = DestroySelf
Trigger1 = Time >= 92
IgnoreHitPause = 0

;-----------------------------------------------------------------

[Statedef 8010]
Type = A
Physics = N
SprPriority = -1

[State -1]
Type = NotHitBy
Trigger1 = 1
Value = SAC, NT, ST, HT ,NA, SA, HA ,NP, SP, HP
Time = 1

[State -1]
Type = VarRandom
Trigger1 = 1
V = 7
Range = 0,1
IgnoreHitPause = 1
Persistent = 1

[State -1]
Type = Explod
Trigger1 = Time = [1,110]
Anim = 8230+Var(7)
ID = 8000
Ownpal = 1
BindTime = 4
PosType = P2
Pos = 0,IfElse(P2StateType != L,Const(Size.Mid.Pos.Y)+10,-10)
Random = 20,0
Vel = 0,-2.5
SprPriority = 1
IgnoreHitPause = 1
Persistent = 3
SuperMoveTime = 9999
PauseMoveTime = 9999
supermove = 1

;[State -1]
;Type = Explod
;Trigger1 = Time >= 112
;Anim = 8230+Var(7)
;ID = 8000
;Ownpal = 1
;BindTime = 4
;PosType = P2
;Pos = 0,IfElse(P2StateType != L,Const(Size.Mid.Pos.Y)+10,-10)
;Random = 20,0
;Vel = 0,-2.5
;SprPriority = 1
;IgnoreHitPause = 1
;Persistent = 0
;SuperMoveTime = 9999
;PauseMoveTime = 9999
;supermove = 1



[State -1]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow
Flag2 = Invisible
IgnoreHitPause = 1

[State -1]
Type = DestroySelf
Trigger1 = Time >= 112
IgnoreHitPause = 0

;======================================================================

;Fire Fenix Summon
[Statedef 3200]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = -2000
anim = 3200
ctrl = 0
sprpriority = 2

[State 3500, a6]
type = AssertSpecial
trigger1 = time = [0, 320]
flag = nobardisplay
ignorehitpause = 1

[State 4200,2]
type = Explod
trigger1 = animelem= 4
anim = 3211  ;4002
ID =11111  ; 4002
pos = 0, 0
postype = p1
sprpriority = 0
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3000,explosion demagma 2]
type = Explod
trigger1 = animelem= 1
anim =8123
ID = 8100
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 32
supermove = 1
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 3000,explosion demagma 2]
type = Explod
trigger1 = animelem= 1
anim =8049
ID = 8100
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 32
supermove = 1
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 3000, pelicula de fondo]
type = Explod
trigger1 = AnimElem = 1
anim = 8100
pos = 0,0
postype = p1
removetime = 32
supermove = 1
sprpriority = 2
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1

[State 3000, Tux]
type = PlaySnd
trigger1 = AnimElem = 1
value = 190, 0

[State 3110, explod]
type = explod
trigger1 = animelem= 1
anim = 8002
ID = 4105
pos = 75, -125
postype = p2
facing = -1
vel = -0.3,0.3
sprpriority = -1
removetime = 35
ownpal = 1
scale = 0.8,0.8
ignorehitpause = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove= 1

[State 3210, Snd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 5, 0

[State 4001 , pause]
type = SuperPause
trigger1 = Time = 0
time = 50
anim = -1
darken = 1
movetime = 50

[State 3210, Snd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = s12, 7
channel = 0

[State 3200, End]
type = ChangeState
trigger1 = animtime=0
trigger1 = BackEdgeBodyDist > -1
value = 3210
ctrl = 1

;(Here We Go)
[Statedef 3210]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3210
velset = 0,0

[State 3500, a6]
type = AssertSpecial
trigger1 = time = [0, 100]
flag = nobardisplay
ignorehitpause = 1

[State 4200,2]
type = Explod
trigger1 = animelem= 1
anim = 3212  ;4002
ID =11111  ; 4002
pos = 0, 0
postype = p1
sprpriority = 0
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0



[State 3210, Snd]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 5, 2

[State 3210, Helper]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
ignorehitpause = 1
name = "Fenix"
id = 3220
pos = 0,0
postype = P1
stateno = 3220

[State 3210, change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;(Black Fenix)
[Statedef 3220]
type = A
movetype = A
anim = 3220
sprpriority = 5
velset = 20,0

[State 3220, 0]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3220, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 5, 10

[State 3220, Explod]
type = Explod
trigger1 = MoveHit = 1
anim = 8234
ID = 3220
pos = 20,-80
postype = p2
bindtime = -1
removetime = -2
sprpriority = 0
removeongethit = 1

[State 3220, Hitdef]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
damage = 400,80
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 6
sparkno = s9992
sparkxy = -10,-60
hitsound = S5, 1
guardsound = S6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -20,-6
airguard.velocity = -10,-3
air.type = High
air.velocity = -20,-6
air.hittime = 12
air.fall = 1
fall = 1
fall.recover= 0
Kill = 1
envshake.time = 10
envshake.ampl = 10
palfx.time = 90
palfx.color = 64
palfx.sinadd = 30,10,40,12
palfx.mul = 384,192,512

[State 3220, Destroyself]
type = DestroySelf
triggerall = Time > 10
trigger1 = BackEdgeBodyDist <= -100
trigger2 = FrontEdgeBodyDist <= -100




;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

;---------------------------------------------------
;===================================================
;AI Variabili
;===================================================
;---------------------------------------------------

[State -2, Get P2 Distance]
type = VarSet
trigger1 = P2Dist X != 0
v = 11
value = Floor(P2Dist X)

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
value = 215
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 215) && (prevstateno = 200) && (movecontact) 
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
value = 215

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
value = 215

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 215) 
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 215) && (movecontact) 
value = 200

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220) 
trigger1 = (movecontact)
value = 215
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 215) && (prevstateno = 220) && (movecontact) 
value = 215

;3 calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220) 
trigger1 = (movecontact)
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 220) && (movecontact) 
value = 250

;3 calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240) 
trigger1 = (movecontact)
value = 250
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 240) && (movecontact) 
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
value = 400
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 400) && (prevstateno = 410) && (movecontact) 
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
triggerall =  (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 69])
trigger1 = (var(10) = 0) && (P2bodydist X >= 150) && (power < 3000) && (prevstateno != 5120)
value = 900

[State -2, agarr„o]
type = ChangeState
value = 800
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = S)
trigger1 = (p2bodydist X <= 10) && (P2MoveType !=A) && (random = [70, 104])

[State -2, neck-breaker]
type = ChangeState
value = 850
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = S)
trigger1 = (p2bodydist X <= 10) && (P2MoveType !=A) && (random = [105, 139])

[State -2, joelhada]
type = ChangeState
value = 1034
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 30)  && (random = [140, 174])  && (prevstateno != 5120)

[State -2, Light Fireball]
type = changestate
value = 1000
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [175, 209])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 170)  && (prevstateno != 5120)

[State -2, medium Fireball]
type = changestate
value = 1010
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [210, 244])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 160)  && (prevstateno != 5120)

[State -2, Strong  Fireball]
type = changestate
value = 1020
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [245, 279])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 180)  && (prevstateno != 5120)

[State -2, Light Super_kick]
type = ChangeState
value = 1050
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = A) && (ctrl) && (random = [280, 314])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (p2bodydist X > 60) && (P2bodydist X <= 160) && (prevstateno != 5120) && (stateno != 1051)

[State -2, MÈdium Super_kick]
type = ChangeState
value = 1051
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = A) && (ctrl) && (random = [315, 349])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (p2bodydist X > 60) && (P2bodydist X <= 160) && (prevstateno != 5120)

[State -2, Strong Super_kick]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [350, 384])
trigger1 = (p2bodydist X > 60) && (P2bodydist X <= 160) && (prevstateno != 5120)
value = 1052

[State -2, MULTI-Punch]
type = ChangeState
value = 1060
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [385, 419])
trigger1 = (p2bodydist X <= 50) && (prevstateno != 5120)

[State -2, weak wings]
type = changestate
value = 1071
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [420, 454])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 140) && (prevstateno != 5120)

[State -2, strong wings]
type = changestate
value = 1072
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [450, 489])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 140) && (prevstateno != 5120)

[State -2, weak air wings]
type = changestate
value = 1750
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = A) && (ctrl) && (random = [490, 524])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 140) && (prevstateno != 5120)

[State -2, medium air wings]
type = changestate
value = 1751
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = A) && (ctrl) && (random = [525, 559])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 140) && (prevstateno != 5120)

[State -2, strong air wings]
type = changestate
value = 1752
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = A) && (ctrl) && (random = [560, 594])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X >= 140) && (prevstateno != 5120)

[State -2, soco atravessante ]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [595, 629])
trigger1 = (P2bodydist X <= 120) && (P2bodydist X >= 30) && (prevstateno != 5120)
value = 10000

[State -2, forÁa das sombras]
type = changestate
value = 1080
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [630, 664])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X <= 180) && (P2bodydist X >= 40) && (prevstateno != 5120)

[State -2, sombras aereas]
type = ChangeState
value = 1200
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [665, 699])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X <= 210) && (P2bodydist X >= 100) && (prevstateno != 5120)

[State -2, rage ]
type = changestate
value = 1400
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (statetype = S) && (ctrl) && (random = [700, 734])
triggerall = (var(10) = 0) && (var(59) != 0)
trigger1 = (P2bodydist X <= 210) && (P2bodydist X >= 80)  && (prevstateno != 5120)

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [735,769])
value = 1990

;---------------------------------------------------
;===================================================
;Hypers
;===================================================
;---------------------------------------------------

[State -2,Black Fenix fire]
type = changestate
value = 11000
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = S)
trigger1 = (p2bodydist X > 90) && (p2bodydist X < 210) && (power >= 1000) && (random = [770,804])

[State -2,  Black fenix Summon]
type = changestate
value = 3200
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X > 80)  && (power >= 2000) && (random = [805,839])

[State -2,  Ankoku Houou Guenma-Ken]
type = changestate
value = 3030
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X > 50)  && (power >= 3000) && (random = [840,874])

;===============================
;Hit Voices
;===============================
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 10, 0
channel = 0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 10, 0
channel = 0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5020
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 10, 0
channel = 0

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10, 1
channel = 0

[State -2]
type = PlaySnd
trigger1 = random < 500
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10, 1
channel = 0

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5020
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10, 1
channel = 0

[State -2]
type = PlaySnd
trigger1 = time = 1
trigger1 = stateno = 5030
trigger1 = Alive = 1
value = 10, 2
channel = 0

;===============================
;COSMOS
;===============================
 ;COSMOS CHARGE
[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(7002) = 1
trigger1 = stateno != 900
trigger1 = anim!= 901
ID = 7002

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(7002) = 1
trigger1 = stateno = [5000,5999]
ID = 7002
;========================================
   ;COSMOS CHARGE Èffet
[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8123) = 1
trigger1 = stateno != 900
trigger1 = anim!= 901
ID = 8123

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8123) = 1
trigger1 = stateno = [5000,5999]
ID =  8123

 ;========================================
 
[State -2,remove]
type = RemoveExplod
;triggerall =anim = 3037;NumExplod( 8010) = 1
triggerall = numexplod(8010)
trigger1 =time= 500
ID = 8010

;========================================
 ;COSMOS genmaken
[State -2,remove]
type = removeexplod
;triggerall = numexplod(3038) = 1
trigger1 = anim=3037
id = 3038

;[State -2,remove]
;type = RemoveExplod
;triggerall = NumExplod(3038) = 1
;trigger1 = stateno = [5000,5999]
;ID = 3039

 ;COSMOS genmaken
[State -2,remove]
type = removeexplod
;triggerall = numexplod(3038) = 1
trigger1 =  stateno=198
id = 2002
;========================================


;========================================
;Serres du phÈnix
;========================================
[State -2,remove]
type = removeexplod
triggerall = numexplod(8124) = 1
;trigger1 = Pos Y >= 29
trigger1 =time = 1
id = 8124

;===============================
;Anti-Bug to avoid going under the floor
;===============================
[State -2, TuxAntiBug]
type = PosSet
trigger1 = Pos Y > 50
y = 0

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

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
trigger1 = animelem = 2
trigger2 = animelem = 6
value = 3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 2
trigger2 = animelem = 6
value = F3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 4
trigger2 = animelem = 8
value = 3, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 4
trigger2 = animelem = 8
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
trigger1 = time = 1
trigger2 = time = 10
trigger3 = time = 20
value = 11, 1

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9

;---------------------------------------

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(50) = 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life < 250
ID = 50

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(51) = 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life > 250
ID = 51

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life < 250
ID = 2

;cosmos stand
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life > 250
ID = 3

[State -3, Remove]
type = RemoveExplod
triggerall = NumExplod(4139) != 0
trigger1 = Life <= 0
Id = 4139