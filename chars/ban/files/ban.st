;Ban de Leão Menor
;"Um ardente cavaleiro com o entusiasmo de um Leão!"

;---------------------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, ChangeAnim]
type = ChangeAnim
triggerall = matchover
trigger1 = Time = 0
value = 171

[State 170, Voice2]
type = PlaySnd
trigger1 = Time = ifelse (matchover, 75, 15)
value = S13, 0

[State 170, Voice2]
type = PlaySnd
triggerall = matchover
trigger1 = Time = 5
value = S6, 0

[State 170, Voice2]
type = PlaySnd
triggerall = matchover
trigger1 = Time = 7
value = S11, 2

[State 170, Voice2]
type = PlaySnd
triggerall = matchover
trigger1 = Time = 9
value = S6, 0

[State 170, Voice2]
type = PlaySnd
triggerall = matchover
trigger1 = Time = 12
value = S11, 2

[State 170, 1]
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
trigger1 = Time = 0
trigger1 = MatchOver = 1
;trigger1 = Life > 250
value = 183 ;184

[State 180, 2]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 180, 2]
type = ChangeState
trigger1 = Var(2) = [0,49]
trigger1 = Time = 0
value = 181

[State 180, 2]
type = ChangeState
trigger1 = Var(2) = [50,99]
trigger1 = Time = 0
value = 182

;---------------------------------------------------------------------------
; Win pose 1 (bow)
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, Assert]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = roundnotover

[State 181, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 82
anim = 6001
postype = right
pos = -320,0
sprpriority = -1
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = 0.5, 0.5

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, Voice2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 13, 2

;----------------------------------------------
; Win pose 2 (provoking)
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, Assert]
type = AssertSpecial
trigger1 = Time = [0,130]
flag = roundnotover

[State 182, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 82
anim = 6001
postype = right
pos = -320,0
sprpriority = -1
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = 0.5, 0.5

[State 182, Voice2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 13, 3

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-------------------------------------
; Win pose 3 (with Athena)
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 183, Assert]
type = AssertSpecial
trigger1 = Time = [0,240]
flag = roundnotover

[State 183]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 183, nohit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 183, Voice2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 5

[State 183, Voice2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5, 9

[State 183, Voice2]
type = PlaySnd
trigger1 = Time = 90
value = 13, 8

;Bg effect
[State 183]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = -1
mul = 150,150,222
add = 0,0,0
invertall = 0
persistent = 1

;Athena
[State 183, 3]
type = Explod
trigger1 = AnimElem = 3
anim = 8050
sprpriority = 0
postype = p1
pos = 75,0
bindtime = 1
supermove = 1
ownpal = 1
removetime = -1

[State 183, imagen de fondo]
type = Explod
trigger1 = AnimElem = 1
anim = 8052
pos = -320,0
postype = right
sprpriority = -6
supermovetime = 210
removetime = 210
ignorehitpause = 1
bindtime = -1
ownpal = 1

[State 183, luce]
type = Explod
trigger1 = AnimElem = 3
anim = 8053
pos = 0,0
postype = Left
sprpriority = 4
removetime = -1
ownpal = 1
bindtime = -1

[State 183]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 4 (low life)
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 184, Assert]
type = AssertSpecial
trigger1 = Time = [0,400]
flag = roundnotover

[State 184, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 184, 2]
type = PlaySnd
trigger1 = Animelem = 1
value = 13, 0

[State 184, 4]
type = PlaySnd
trigger1 = Animelem = 6
value = 11, 2

;---------------------------------------------------------------------------
; Intro state decider
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, var]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 190]
type = ChangeState
triggerall = roundno = 1
trigger1 = Var(2) = [0,25]
value = 191

[State 190]
type = ChangeState
triggerall = roundno = 1
trigger1 = Var(2) = [26,75]
value = 192

[State 190]
type = ChangeState
triggerall = roundno = 1
trigger1 = Var(2) = [76,99]
value = 193

;--------------------------------------------
; Intro 1 (cloth)
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191] 
type = AssertSpecial
trigger1 = Time = [0,480]
flag = Intro

[State 191, cloth]
type = Explod
trigger1 = Time = 0
anim = 1910
pos = -50,0
postype = p1
removetime = 163
sprpriority = -1
supermove = 0
ownpal = 1
bindtime = 150
persistent = 0

[State 191, light]
type = Explod
trigger1 = Time = 52
anim = 7050
pos = -50,0
postype = p1
sprpriority = -2
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 0

[State 191, 6]
type = Explod
trigger1 =  Time = 10
anim = 7040
pos = -50,0
ignorehitpause = 1
sprpriority = 3
postype = p1
pos = 120,0
bindtime = 1
supermove = 1

[State 191, lion]
type = Explod
trigger1 = AnimElem = 15
anim = 6000
sprpriority = -1
postype = p1
scale= 0.19, 0.19
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1

[State 191, cloth break]
type = Explod
trigger1 = Time = 118
ID = 1911
anim = 1911
pos = -50,0
postype = p1
sprpriority = 3
supermove = 0
removetime = -2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0

[State 191, cosmo]
type = Explod
trigger1 = AnimElem = 24
ID = 6000
anim = 903
pos = 31,0
postype = p1
sprpriority = -1
removetime = 90
ownpal = 1
bindtime = 1
removeongethit = 1

[State 191, 2.5] ;Shake
type = EnvShake
Trigger1 = Time = 0
time = 0
ampl = 25

[State 191, snd2]
type = PlaySnd
trigger1 = Time = 10
value = 5, 10

[State 191, snd1]
type = PlaySnd
trigger1 = AnimElem = 16
trigger2 = AnimElem = 18
trigger3 = AnimElem = 20
value = 4, 4

[State 191, snd2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 0

[State 191, 3]
type = PlaySnd
trigger1 =AnimElem = 12
value = 12, 14

[State 191, snd2]
type = PlaySnd
trigger1 = AnimElem = 22
value = 4, 4

[State 191, snd2]
type = PlaySnd
trigger1 = AnimElem = 14
value = 4, 5

[State 191, snd2]
type = PlaySnd
trigger1 = AnimElem = 22
value = 4, 6

[State 191, snd2]
type = PlaySnd
trigger1 = AnimElem = 24
value = 5, 3

[State 191, Voice2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 5, 0

[State 191, snd2]
type = PlaySnd
trigger1 = AnimElem = 27
value = 3, 0

[State 191, snd2]
type = PlaySnd
trigger1 = AnimElem = 29
value = 3, 1

[State 191, snd2]
type = PlaySnd
trigger1 = AnimElem = 30
value = 13, 1

[State 191, end] 
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

[State 191]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

;--------------------------------------------
; Intro 2 (cloth, no talk)
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192] 
type = AssertSpecial
trigger1 = Time = [0,600]
flag = Intro

[State 192, cosmo]
type = Explod
trigger1 = Time = 116
anim = 781
pos = 0,0
postype = p1
removetime = 4
sprpriority = -1
supermove = 0
ownpal = 1
bindtime = 150
persistent = 0

[State 192, cloth]
type = Explod
trigger1 = Time = 121
anim = 1910
pos = -50,0
postype = p1
removetime = 163
sprpriority = -1
supermove = 0
ownpal = 1
bindtime = 150
persistent = 0

[State 192, light]
type = Explod
trigger1 = Time = 173
anim = 7050
pos = -50,0
postype = p1
sprpriority = -2
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 0

[State 192, 6]
type = Explod
trigger1 =  Time = 131
anim = 7040
pos = -50,0
ignorehitpause = 1
sprpriority = 3
postype = p1
pos = 120,0
bindtime = 1
supermove = 1

[State 192, explod]
type = Explod
trigger1 = AnimElem = 38
anim = 6000
sprpriority = -1
postype = p1
scale= 0.19, 0.19
pos = 0, 10
removetime = 140
bindtime = 1
supermove = 1
ownpal = 1

[State 192, lion cloth]
type = Explod
trigger1 = Time = 239
ID = 1911
anim = 1911
pos = -50,0
postype = p1
sprpriority = 3
supermove = 0
removetime = -2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0

[State 192, 2.5] ;Shake
type = EnvShake
Trigger1 = Time = 0
time = 0
ampl = 25

[State 192, snd2]
type = PlaySnd
trigger1 = Time = 132
value = 5, 10

[State 192, snd1]
type = PlaySnd
trigger1 = AnimElem = 16
trigger2 = AnimElem = 18
trigger3 = AnimElem = 20
value = 4, 4

[State 192, 3]
type = PlaySnd
trigger1 = Time = 15
value = 5, 8

[State 192, snd2]
type = PlaySnd
trigger1 = Time = 121
value = 6, 0

[State 192, snd2]
type = PlaySnd
trigger1 = Time = 130
value = 5, 0

[State 192, snd2]
type = PlaySnd
trigger1 = Time = 290
value = 5, 11

[State 192, 3]
type = PlaySnd
trigger1 =AnimElem = 12
value = 12, 14

[State 192, snd2]
type = PlaySnd
trigger1 = AnimElem = 22
value = 4, 4

[State 192, snd2]
type = PlaySnd
trigger1 = AnimElem = 27
value = 4, 5

[State 192, snd2]
type = PlaySnd
trigger1 = AnimElem = 22
value = 4, 6

[State 192, snd2]
type = PlaySnd
trigger1 = AnimElem = 38
value = 5, 3

[State 192, Voice2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 5, 0

[State 192, Voice2]
type = PlaySnd
trigger1 = Time = 100
value = 105, 0

[State 192, snd2]
type = PlaySnd
trigger1 = AnimElem = 38
value = 5, 1

[State 192, snd2]
type = PlaySnd
trigger1 = AnimElem = 48
value = 2, 2

[State 192, end] 
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

[State 192]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

;---------------------------------------------------------------------------
; Intro 3 (talk)
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193] 
type = AssertSpecial
trigger1 = Time = [0,180]
flag = Intro

[State 193, explod]
type = Explod
trigger1 = Time = 0
anim = 6000
sprpriority = -3
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1
removetime = 180
removeongethit = 1
scale = 0.19,0.19

;[State 193, explod]
;type = Explod
;trigger1 = Time = 0
;anim = 194
;ID = 194
;sprpriority = 0
;postype = p1
;pos = 0,0
;bindtime = 1
;supermove = 1
;ownpal = 1
;removetime = -2
;removeongethit = 1

[State 193, 1]
type = PlaySnd
trigger1 = Time = 1
value = 5, 3

[State 193, 2]
type = PlaySnd
trigger1 = Time = 30
value = 13, 6

[State 193, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[State 193]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

;---------------------------------------------------------------------------
; Intro (round 2)
;[Statedef 195]
;type = S
;ctrl = 0
;anim = 195
;velset = 0,0
;
;[State 196, 3]
;type = PlaySnd
;trigger1 = Time = 0
;value = 13, 3
;
;[State 196, cosmo]
;type = Explod
;trigger1 = AnimElem = 7
;anim = 3562
;postype = p1
;sprpriority = -6
;removetime = 45
;bindtime = -1
;ownpal = 1
;supermove = 1
;removeongethit = 1
;ignorehitpause = 1
;scale = 0.6, 0.6
;
;[State 196]
;type = Explod
;trigger1 = AnimElem = 7
;anim = 8021
;pos = 0,0
;postype = p1
;sprpriority = -5
;removetime = 45
;bindtime = -1
;ownpal = 1
;scale = 1, 1
;supermove = 1
;removeongethit = 1
;ignorehitpause = 1
;
;[State 196]
;type = Explod
;trigger1 = Time = 144
;anim = 8040
;pos = 0,0
;postype = p1
;sprpriority = 0
;bindtime = -1
;ownpal = 1
;supermove = 1
;removeongethit = 1
;ignorehitpause = 1
;
;[State 196, 3]
;type = PlaySnd
;trigger1 =  AnimElem = 4
;value = 3, 0
;
;[State 196, 3]
;type = PlaySnd
;trigger1 =  AnimElem = 7
;value = 9, 2
;
;[State 196, 3]
;type = PlaySnd
;trigger1 =  AnimElem = 7
;value = 12, 14
;
;[State 196, 2] ;Assert this until you want "round 1, fight" to begin
;type = AssertSpecial
;trigger1 = 1
;flag = Intro
;
;[State 196, 3] ;Change to stand state
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 0
;
;[State 196]
;type = StopSnd
;trigger1 = command = "a"
;trigger2 = command = "b"
;trigger3 = command = "c"
;trigger4 = command = "x"
;trigger5 = command = "y"
;trigger6 = command = "z"
;channel = -1

;------------------------------------
; Provoking
[Statedef 199]
type = S
movetype = I
physics = S
anim = 199
velset = 0,0
ctrl = 0

[State 199, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 199, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 199, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 3

;[State 199 , 2]
;type = ChangeState
;trigger1 = command = "a"
;trigger2 = command = "b"
;trigger3 = command = "c"
;trigger4 = command = "x"
;trigger5 = command = "y"
;trigger6 = command = "z"
;trigger7 = command = "holdfwd"
;trigger8 = command = "holdback"
;trigger9 = command = "holdup"
;trigger10 = command = "holddown"
;value = 0
;ctrl = 1

[State 199, 3]
type = ChangeState
trigger1 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
trigger2 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing light punch
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 50
ctrl = 0
velset = 0,0
anim = 200
sprpriority = 2

[State 200, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 200, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 5

[State 200, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 20
guardflag = MA
hitflag = MAF
pausetime = 8,8
sparkno = S7000
sparkxy = -10,-85
guard.sparkno = s7006
hitsound = S1, 0
guardsound = S6, 0
animtype = Light
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200 || prevstateno = 200 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 200 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
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

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing medium punch
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

[State 210, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 210, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 201, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 210, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 9

[State 210, 2]
type = HitDef
trigger1 = Time =0
attr = S, NA
damage = 30
guardflag = MA
hitflag = MAF
pausetime = 10,10
sparkno = S7001
sparkxy = -10,-80
guard.sparkno = s7006
hitsound = S1, 1
guardsound = S6, 0
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

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing medium punch close
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

[State 201, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1

[State 225, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Hard
damage = 30
guardflag = MA
pausetime = 10,10
sparkno = S7001
sparkxy = -30,-85
guard.sparkno = s7006
hitsound = S1, 1
guardsound = S6, 0
ground.hittime = 12
ground.type = High
ground.slidetime = 15
ground.hittime = 13
guard.ctrltime = 15
ground.velocity = -7.5
air.velocity = -3,-2.5
ground.cornerpush.veloff = -13
guard.cornerpush.veloff = -13
air.cornerpush.veloff = -9
yaccel = 0.55
envshake.time = 5           ;Parameters for shaking the screen on hit
envshake.ampl = 7
envshake.freq = 10              ;Force p2 to face p1 on hit
getpower = 0
givepower = 0

[State 210, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 9

[State 225, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing strong punch
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

[State 220, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 220, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 3

[State 220, 3]
type = VelSet
trigger1 = AnimElem = 2
x = 10

[State 220, Shadows]
type = AfterImage
Trigger1 = AnimElem = 2
time = 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 220, Run Forward]
type = Explod
trigger1 = AnimElem = 2
pos = -12,2
postype = p1
anim = 7085
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 220, 2]
type = PlaySnd
triggerall = random < 450
trigger1 = Time = 0
value = 12, 11

[State 220, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = hard
damage = 40
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = S7001
sparkxy = -10,-80
guard.sparkno = s7006
hitsound = S1, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -10
airguard.velocity = -4.4,-4
air.type = High
air.velocity = -4.4,-4
air.hittime = 18
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 3
getpower = 0
givepower = 0

[State 220, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing strong punch close
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 10
poweradd= 50
ctrl = 0
velset = 0,0
anim = 225
sprpriority = 2

[State 225, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 225, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 225, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 7

[State 225, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 2

[State 225, 3]
type = VelSet
trigger1 = AnimElem = 2
x = 11

[State 225, 4]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Up
damage = 40
priority  = 5
guardflag = MA
hitflag = MAF
pausetime = 15,15
sparkno = s7003 ;S8016
sparkxy = -30,-78
guard.sparkno = s7006
hitsound = S1, 7
guardsound = S6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-8.5
guard.velocity = -6
air.velocity = -1,-8.5
airguard.velocity = -4,-4.5
p2facing = 1
fall = 1
fall.recovertime = 50
yaccel = .4
getpower = 0
givepower = 0

[State 225, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
ignorehitpause = 1

[State 225, EnvShake]
type = EnvShake
trigger1 = MoveContact
time = 15
ampl = -5
freq = 120
phase = 120
ignorehitpause = 1
persistent = 0

[State 225, 3.3]
type = Explod
trigger1 = AnimElem = 1
anim = 226
ID = 3200
pos = 0,0
scale= 1, 1
postype = p1
sprpriority = 3
removetime = 18
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 225, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Running strong punch
[Statedef 226]
type    = S
movetype= A
physics = S
juggle  = 10
poweradd= 50
ctrl = 0
velset = 0,0
anim = 227
sprpriority = 2

[State 226, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 226, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 226, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = S12, 8

[State 226, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = S0, 3

[State 226, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 25

[State 226, Shadows] 
type = AfterImage 
Trigger1 = AnimElem = 2
time = 7
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 226, polvere]
type = Explod
trigger1 = Time = 0
anim = 7088
pos = -10,2
postype = p1
removetime = 16
sprpriority = 2
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
scale = 1,.33

[State 226, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8011
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

[State 226, lightG]
type = Explod
trigger1 = AnimElem = 4
pos = 110,-63
postype = p1
anim = 8015
scale = 0.25, 0.25
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 226, wind]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 40
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = S7004
sparkxy = -10,-113
hitsound = S1, 8
guardsound = S6, 0
animtype = hard
ground.type = High
ground.slidetime = 20
ground.hittime  = 16
guard.pausetime = 5,9
guard.slidetime = 18
guard.hittime  = 15
ground.velocity = -8.5
air.velocity = -2.2,-4.5
airguard.velocity = -2.7,-3.5
guard.velocity = -6.5
fall = 0
air.fall = 1
fall.recover = 0
;snap = 55
p2facing = 1
envshake.time=6
envshake.time=5
getpower = 0
givepower = 0

[State 226, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing light kick
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 230, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 230, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 230, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 9

[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 20
guardflag = MA
hitflag = MAF
pausetime = 10,10
sparkno = S7000
sparkxy = -10,-80
hitsound = S1, 3
guardsound = S6, 0
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

;---------------------------------------------------------------------------
; Standing medium kick
[Statedef 240]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
poweradd= 50                    ;Power to add (Def: 0)
ctrl = 0                         ;Set ctrl (Def: no change)
velset = 0,0                     ;Set velocity (x,y) (Def: no change)   
anim = 240                       ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 240, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 240, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 240, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 30                   ;Damage that move inflicts, guard damage
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 8, 8                ;Time attacker pauses, time opponent shakes
sparkno = S7001                    ;Spark anim no (Def: set above)
sparkxy = -10, -80               ;X-offset for the "hit spark" rel. to p2,
guard.sparkno = s7006
hitsound = S1, 4                  ;Sound to play on hit
guardsound = S6, 0                ;Sound to play on guard
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-3
air.type=Low
air.velocity=-3,-2
envshake.time=9
envshake.ampl=2
getpower = 0
givepower = 0

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 4

[State 240, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 10

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing medium kick close
[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 255
sprpriority = 2

[State 245, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 245, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 245, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 3

[State 245, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 9

[State 245, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = hard
damage = 30
guardflag = MA
hitflag = MAF
pausetime = 9,11
sparkno = S7001
sparkxy = -10,-80
hitsound = S1, 5
guardsound = S6, 0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 12
ground.velocity = -12
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
yaccel=.5
persistent=0
envshake.time = 5
envshake.ampl = 1
getpower = 0
givepower = 0

[State 245, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing strong kick
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2

[State 250, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 250, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[State 250, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 12

[State 250, 2]
type = HitDef
trigger1 = Time =0
attr = S, NA
damage = 40
guardflag = MA
hitflag = MAF
pausetime = 10,10
sparkno = S7002
sparkxy = -10,-70
guard.sparkno = s7006
hitsound = S1, 5
guardsound = S6, 0
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

[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------
; Standing strong kick close
[Statedef 255]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 255
sprpriority = 2

[State 2555, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 2555, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 255, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 4

[State 255, 2]
type = PlaySnd
triggerall = random < 500
trigger1 = Time = 0
value = 12, 9

[State 255, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = hard
damage = 40
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = S7001
sparkxy = -20,-75
hitsound = S1, 5
guardsound = S6, 0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -11
air.velocity = -2.2,-3.2
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 3
getpower = 0
givepower = 0

[State 255, 4]
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

[State 400, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 400, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 400, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 0

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 20
priority  = 3
hitflag = MAF
guardflag = L
pausetime = 8,8
sparkno = S7000
sparkxy = -10,-54
guard.sparkno = s7006
hitsound = S1, 0
guardsound = S6, 0
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
juggle  = 6
poweradd= 50
ctrl = 0
anim = 420
sprpriority = 2

[State 410, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 410, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 410, 1]
type = Playsnd
trigger1 = Time = 2
value = 0, 1

[State 410, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 1

[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage  = 30
hitflag = MAF
guardflag = M
pausetime = 10,10
sparkno = S7000
sparkxy = -10,-55
guard.sparkno = s7006
hitsound = S1, 1
guardsound = S6, 0
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

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching strong punch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 415
sprpriority = 2

[State 420, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 420, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 420, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1

[State 420, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 1

[State 420, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, 1

[State 420, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 1

[State 420, 2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
attr = C, NA
damage = 10
animtype  = Medium
hitflag = MAF
guardflag = L
pausetime = 3,7
sparkno = S7000
sparkxy = -10,-55
hitsound = S1, 1
guardsound = S6, 0
ground.type = high
ground.slidetime = 2
ground.hittime  =  0
ground.velocity = 0
airguard.velocity = -2.9,-1
air.type = High
air.velocity = -3.4,-3
air.hittime = 18
getpower = 0
givepower = 0

[State 420, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = C, NA
damage = 20
animtype  = hard
hitflag = MAF
guardflag = L
pausetime = 8,8
sparkno = S7000
sparkxy = -10,-50
hitsound = S1, 2
guardsound = S6, 0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8
airguard.velocity = -2.9,-1
air.type = High
air.velocity = -3.4,-3
air.hittime = 18
getpower = 0
givepower = 0

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching strong punch close
[Statedef 425]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

[State 425, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 425, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 425, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 425, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 1

[State 425, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 40
animtype  = hard
hitflag = MAF
guardflag = L
pausetime = 8,10
sparkno = S7000
sparkxy = -10,-65
hitsound = S1, 2
guardsound = S6, 0
ground.type = high
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -12
airguard.velocity = -2.9,-1
air.type = High
air.velocity = -3.4,-3
air.hittime = 18
getpower = 0
givepower = 0

[State 425, 4]
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
poweradd= 22
ctrl = 0
anim = 430
sprpriority = 2

[State 430, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 430, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 430, 1]
type = PlaySnd
trigger1 = Time = 3
value = 0, 1

[State 430, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 3

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 20
hitflag = MAFD
guardflag = L
pausetime = 5,8
sparkno = S7000
sparkxy = -10,-10
guard.sparkno = s7006
hitsound = S1, 3
guardsound = S6, 0
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

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching medium kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

[State 440, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 440, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 440, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 2

[State 440, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 1

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage  = 30
hitflag = MAFD
guardflag = L
pausetime = 10,10
sparkno = S7001
sparkxy = -10,-40
guard.sparkno = s7006
hitsound = S1, 4
guardsound = S6, 0
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

;---------------------------------------------------------------------------
; Crouching strong kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 50
ctrl = 0
anim = 450
sprpriority = 2

[State 450, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 450, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 450, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 3

[State 450, 2]
type = PlaySnd
triggerall = random < 450
trigger1 = Time = 0
value = 12, 5

[State 450, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage  = 40
hitflag = MAFD
guardflag = L
pausetime = 10,10
sparkno = S7001
sparkxy = -10,-40
guard.sparkno = s7006
hitsound = S1, 5
guardsound = S6, 0
ground.type = low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -2,-4
airguard.velocity = -2.9,-4
air.type = High
air.velocity = -3.4,-4
air.hittime = 12
fall=1
getpower = 0
givepower = 0

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Jumping light punch
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
trigger1 = Time = 3
value = 0, 0

[State 600, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 600, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
hitflag = MAF
priority = 3
pausetime = 12,12
sparkno = S7000
sparkxy = -10,-50
guard.sparkno = s7006
hitsound = S1, 1
guardsound = S6, 0
animtype = Light
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=-3
air.type=Low
air.velocity = -1,((vel y)-.2)
envshake.time=9
envshake.ampl=1
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
;Jumping medium punch
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 50
ctrl = 0
anim = 620

[State 610, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 610, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 610, 2]
type = PlaySnd
trigger1 = Time = 4
value = 0, 1

[State 610, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 1

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
hitflag = MAF
priority = 3
pausetime = 10,10
sparkxy = -10,-80
sparkno = S7001
guard.sparkno = s7006
hitsound = S1, 1
guardsound = S6, 0
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-5
air.type=Low
air.velocity = -2,((vel y)-.2)
envshake.time=9
envshake.ampl=2
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
;Jumping strong punch
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 610
sprpriority = 2

[State 620, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 620, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 620, 2]
type = PlaySnd
trigger1 = Time = 4
value = 0, 2

[State 620, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 1

[State 620, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
guardflag = HA
hitflag = MAF
priority = 4
pausetime = 10,10
sparkno = S7001
sparkxy = -10,-60
guard.sparkno = s7006
hitsound = S1, 2
guardsound = S6, 0
animtype = Hard
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-7
air.type=high
air.velocity = -8,8
envshake.time=12
envshake.ampl=3
;fall=1
air.fall=1
fall.recover=0
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
;Jumping light kick
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 7
poweradd= 50
ctrl = 0
anim = 630
sprpriority = 2

[State 630, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 630, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
hitflag = MAF
priority = 3
pausetime = 10,10
sparkno = S7000
sparkxy = -10,-38
guard.sparkno = s7006
hitsound = S1, 3
guardsound = S6, 0
animtype = Light
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=-3
air.type=Low
air.velocity=-1.5,((vel y)-.2)
envshake.time=9
envshake.ampl=1
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
;Jumping medium kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 650
sprpriority = 2

[State 640, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 640, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
hitflag = MAF
priority = 4
pausetime = 12,12
sparkno = S7000
sparkxy = -10,-75
guard.sparkno = s7006
hitsound = S1, 4
guardsound = S6, 0
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-5
air.type=Low
air.velocity=-2,((vel y)-.2)
envshake.time=9
envshake.ampl=2
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
;Jumping strong kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 640
sprpriority = 2

[State 650, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 650, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 650, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 650, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 1

[State 650, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
animtype = hard
guardflag = HA
hitflag = MAF
priority = 4
pausetime = 10,10
sparkno = S7001
sparkxy = -10,-25
guard.sparkno = s7006
hitsound = S1, 5
guardsound = S6, 0
animtype = Hard
ground.type=High
ground.slidetime=12
ground.hittime=11
ground.velocity=-3
air.type=Low
air.velocity = -8,8
envshake.time=10
envshake.ampl=3
fall=1
air.fall=1
fall.recover=0
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
; Throw 1
[Statedef 800]
type = S
movetype = A
physics = S
anim = 800
sprpriority = 2
juggle = 0
poweradd= 60
velset = 0,0
ctrl = 0

[State 800, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 800, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 800, Effect]
type = PlaySnd
trigger1 = Time = 0
value = 12, 5

[State 800, Hit]
type = HitDef
Trigger1 = AnimElem = 2
attr = S, Na
hitflag = M-
animtype  =  Medium
priority = 1, Miss
sparkno = -1
hitsound = S8, 1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 810
p2stateno = 820 ;811
guard.dist = 0
fall = 1
getpower = 0
givepower = 0

[State 800, StateCahnge]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 810]
type = S
movetype = A
physics = N
anim = 810
sprpriority = 2

;[State 810, Grab Sound]
;type = PlaySnd
;trigger1 = Time = 0
;value = 800, 0

;[State 810, Grab Sound]
;type = PlaySnd
;trigger1 = AnimElem = 1
;value = 12, 6
;volume = 200

;[State 810, Voice]
;type = PlaySnd
;trigger1 = AnimElem = 1
;value = 12, 5
;volume = 100
;channel = 0

[State 810, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 8, 2

[State 810, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 10

[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(35) < 0
pos = 53, -66

[State 810, Bind]
type = TargetBind
trigger1 = AnimElemTime(35) = 0
pos = 53, -15

[State 810, Width]
type = Width
trigger1 = AnimElemTime(8) < 0
edge = 50,20

[State 810, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 2 || AnimElem = 4
value = -30

[State 810, Spark]
type = Explod
trigger1 = AnimElem = 4
anim = 7000
pos = 60, -115
ontop = 1
ownpal = 1
bindtime = 1
supermove = 1

[State 810, lion]
type = Explod
trigger1 = AnimElem = 2
anim = 8013
pos = 0,0
postype = p1
sprpriority = 0
removetime = 25
ownpal = 1
bindtime = 1
removeongethit = 1

[State 810, Throw]
type = TargetState
trigger1 = AnimElemTime(35) = 0
value = 821

[State 810, State Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 812
ctrl = 0

;------------------------------
[Statedef 812]
type = S
movetype = A
physics = S
ctrl = 0
anim = 812

[State 812, 1]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
[Statedef 820]
type = A
movetype = H
physics = N
sprpriority = 2
velset = 0,0

[State 820, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 5
value = 10, 0

[State 820, Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 820, Screen]
type = ScreenBound
trigger1 = 1
Value = 1
movecamera = 1,0

[Statedef 821]
type = A
movetype = H
physics = N
anim = 5000
sprpriority = 0
velset = -4,-7

[State 821, Gravity]
type = Gravity
Trigger1 = 1

[State 821, Screen]
type = ScreenBound
trigger1 = 1
Value = 1
movecamera = 1,0

[State 821, StateChange]
type = SelfState
trigger1 = AnimTime = 0
value = 5035

;---------------------------------
; Throw 2
[Statedef 830]
type = S
movetype = A
physics = S
ctrl = 0
anim = 830
poweradd= 60

[State 830, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1

[State 830, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = Time = 0
value = 12, 9

[State 830, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 830, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 830, 0]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NT
Hitflag = M-
priority = 2, Miss
hitsound = S8, 1
sparkno = S7004
sparkxy = -15,-100
p1stateno = 835
p2stateno = 840
getpower = 0
givepower = 0

[State 830, 1]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;
[Statedef 835]
type = S
movetype = A
physics = N
anim = 835
velset = 0,0

[State 835, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 5

[State 835, 0]
type = Changestate
trigger1 = animtime = 0
value = 836

;---------------------------------------------------------------------------
;
[Statedef 836]
type = S
movetype = A
physics = N
anim = 836

[State 836, 0]
type = VelSet
trigger1 = Time = 0 
x = 2
y = -6

[State 836, 1]
type = VelAdd 
trigger1 = Time >= 0 
y = .4

[State 836, 2]
type = Changestate
trigger1 = Vel Y > 0 
trigger1 = Pos Y > 0 
value = 837

[State 836, 3]
type = PlaySnd
trigger1 = Time = 0
value = 5, 3

;---------------------------------------------------------------------------
;
[Statedef 837]
type = S
movetype = A
physics = N
anim = 837
velset = 0,0

[State 837, 0]
type = BindToTarget
trigger1 =  animtime != 0
pos = 16,0,Foot

[State 837, 1]
type = TargetLifeAdd
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
trigger5= animelem = 10
trigger6 = animelem = 12
value = -8

[State 837, 2]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
trigger5= animelem = 10
value = 1, 3

[State 837, 2]
type = PlaySnd
trigger1 = animelem = 12
value = 1, 7

[State 837, 2]
type = PlaySnd
trigger1 = animelem = 5
value = 13, 3

[State 837, 3]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 5
trigger3 = animelem = 7
trigger4 = animelem = 9
trigger5= animelem = 11
value = 0, 6

[State 837, 4]
type = Explod
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
trigger5= animelem = 10
trigger6 = animelem = 12
anim = F12
pos = 17,-15

[State 3220,Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8030
ID = 2716
pos = 0,5
postype = P2
sprpriority = 0
supermove = 1
ownpal = 1
bindtime = 1
removetime = -2
ignorehitpause = 1
scale = .9,.9

[State 837, 5]
type = Changestate
trigger1 = animtime = 0
value = 838

;---------------------------------------------------------------------------
;
[Statedef 838]
type    = S
movetype= A
physics = A
ctrl = 0
anim = 105

[State 838, 0]
type = VelSet
trigger1 = Time = 0 
x = -4
y = -8

[State 838, 1] 
type = EnvShake
Trigger1 = Time = 0
time = 12
ampl = 4
freq = 127

[State 838, 2]
type = TargetLifeAdd
trigger1 = Time = 0
value = -32

[State 838, 3]
type = PlaySnd
trigger1 = Time = 0
value = F5, 4

[State 838, 5]
type = Explod
trigger1 = Time = 0
anim = F2
pos = 37,-15

[State 838, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1, 0

[State 838, 7]
type = TargetVelSet
trigger1 = Time = 0
y = -9.5

[State 838, 8]
type = PlaySnd
trigger1 = Time = 0
value = F7, 0

[State 838, 9]
type = Explod
trigger1 = Time = 0
anim = F60
pos = 0, 0
under = 1

[State 838, 10]
type = ChangeState
trigger1 = AnimTime = 1
value = 52

;---------------------------------------------------------------------------
;
[Statedef 840]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0

[State 840, 0]
type = VelSet
trigger1 = AnimElem = 3 
x = -2
y = -5

[State 840, 1]
type = VelAdd
trigger1 = Pos Y < 0 
y = .35 

[State 840, 2]
type = Changeanim2
trigger1 = Time = 0
value = 840

[State 840, 3]
type = ChangeState
trigger1 = Vel Y > 0 
trigger1 = Pos Y >= 0 
value = 841

;---------------------------------------------------------------------------
;
[Statedef 841]
type = L
movetype = H
physics = N

[State 841, 0]
type = Changeanim2
trigger1 = Time = 0
value = 841

[State 841, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 841, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 841, 3]
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 841, 4]
type = Explod
trigger1 = Time = 1
anim = F60
pos = 0, 0
under = 1

[State 841, 5]
type = PlaySnd
trigger1 = Time = 1
value = F7, 0

[State 841, 6]
type = Changeanim2
trigger1 = Time = 3
value = 842

[State 841, 7]
type = PosSet
trigger1 = Time = 3
y = 20

[State 841, 8]
type = VelAdd
trigger1 = Time >= 3
y = .4

[State 841, 9]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
value = 843

;---------------------------------------------------------------------------
;
[Statedef 843]
type = L
movetype= H
physics = N

[State 843, 0]
type = ChangeAnim2
trigger1 = Time = 0
value = 843

[State 843, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 843, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 843, 3]
type = VelMul
trigger1 = Time >= 0
x = 0.85

[State 843, 4]
type = PlaySnd
trigger1 = Time = 0
value = F7, 0

[State 843, 5]
type = Explod
trigger1 = Time = 0
anim = F60
pos = 0, 0
under = 1

[State 843, 6]
type = ChangeState
trigger1 = Vel Y < 0
value = 844

;---------------------------------------------------------------------------
;
[Statedef 844]
type = L
movetype= H
physics = N

[State 844, 0]
type = ChangeAnim2
trigger1 = Time = 0
value = 841

[State 844, 1]
type = Veladd
trigger1 = Time >= 0
y = .4

[State 844, 2]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

[State 844, 4]
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
trigger1 = Time = 0
var(10) = 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 9, 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 12, 14
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

[State 901, Constellation]
type = Explod
trigger1 = animelem = 1
anim = 6000
ID = 6000
pos = 0,0
postype = p1
bindtime = -1
sprpriority = -4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
scale = 0.18,0.18

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
pos = 0,1
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
trigger1 = Time = 0
var(10) = 0

[State 902]
type = RemoveExplod
triggerall = numexplod(6000) >= 1
trigger1 = Time = 0
ID = 6000

[State 902]
type = RemoveExplod
triggerall = numexplod(7031) >= 1
trigger1 = Time = 0
ID = 7031

[State 902]
type = RemoveExplod
triggerall = numexplod(7030) >= 1
trigger1 = Time = 0
ID = 7030

[State 902]
type = RemoveExplod
triggerall = numexplod(7020) >= 1
trigger1 = Time = 0
ID = 7020

[State 902]
type = RemoveExplod
triggerall = numexplod(7010) >= 1
trigger1 = Time = 0
ID = 7010

[State 902]
type = RemoveExplod
triggerall = numexplod(903) >= 1
trigger1 = Time = 0
ID = 903

[State 902]
type = PalFX
triggerall = power >= 3000
trigger1 = Time = 1
time = 15
add = 0,0,0
sinadd = 20,200,20,3

[State 902]
type = EnvShake
triggerall = power >= 3000
trigger1 = Time = 0
time = 64

[State 902]
type = PlaySnd
triggerall = power >= 3000
trigger1 = Time = 1
value = 9, 3

[State 902]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; 7th Sense
;[Statedef 999]
;type = S
;movetype = I
;physics = S
;anim = 999
;poweradd = 0
;velset = 0,0
;ctrl = 0
;
;[State 999]
;type = NotHitBy
;trigger1 = 1
;value = SCA
;
;[State 999]
;type = AssertSpecial
;trigger1 = time = 10
;flag = nomusic
;persistent = 1
;
;[State 999]
;type = SuperPause
;trigger1 = time = 10
;time = 20
;anim = s70091
;pos = 4,-48
;darken = 1
;
;[State 999]
;type = VarSet
;trigger1 = time = 1
;var(8) = 1
;
;[State 999]
;type = PalFX
;trigger1 = time = 10
;time = 900
;add = 5,5,5
;sinadd = 40,40,40,3
;
;[State 999]
;type = RemoveExplod
;trigger1 = 1
;ID = 2
;
;[State 999]
;type = RemoveExplod
;trigger1 = 1
;ID = 3
;
;[State 999]
;type = Explod
;triggerall = numexplod(7030) = 0
;trigger1 = animelem = 1
;anim = 7030
;ID = 7030
;pos = 0,5
;bindtime = -1
;removetime = 50
;scale = 0.6,0.6
;sprpriority = -5
;ownpal = 1
;removeongethit = 1
;ignorehitpause = 1
;persistent = 1
;
;[State 999]
;type = Explod
;triggerall = numexplod(7031) = 0
;trigger1 = animelem = 1
;anim = 7031
;ID = 7031
;pos = 0,6
;vfacing = -1
;bindtime = -1
;removetime = 50
;scale = 0.6,0.6
;sprpriority = -5
;ownpal = 1
;removeongethit = 1
;ignorehitpause = 1
;persistent = 1
;
;[State 999]
;type = Explod
;trigger1 = animelem = 8
;pos = -5,12
;anim = 7088
;sprpriority = 5
;ownpal = 1
;removeongethit = 1
;ignorehitpause = 1
;persistent = 0
;
;[State 999]
;type = Explod
;trigger1 = animelem = 8
;pos = 5,12
;anim = 70881
;sprpriority = 5
;ownpal = 1
;removeongethit = 1
;ignorehitpause = 1
;persistent = 0
;
;[State 999]
;type = EnvShake
;trigger1 = time = 5
;time = 50
;
;[State 999]
;type = PlaySnd
;trigger1 = time = 0
;value = 12, 0
;channel = 0
;
;[State 999]
;type = PlaySnd
;trigger1 = time = 15
;value = 5, 2
;
;[State 999]
;type = PlaySnd
;trigger1 = time = 15
;value = 9, 4
;
;[State 999]
;type = LifeAdd
;trigger1 = animtime = 15
;value = 100
;
;[State 999]
;type = ChangeState
;trigger1 = animtime = 0
;value = 0
;ctrl = 1

;---------------------------------------------------------------------------
; Super Punch
[Statedef 1000]
type    = A
movetype= I
physics = N
anim = 1000
velset = -10,-3
ctrl = 0
poweradd= 100

[State 1000, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 1000, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 1000, 1]
type = Veladd
trigger1 = Time >= 5
Y = .25

;[State 1000, 5]
;type = AfterImage
;trigger1 = Time = 5
;time = 5
;FrameGap = 2
;length = 12
;PalBright   =   0,  0,  0
;PalContrast = 128,128,128
;PalAdd      =   0,  0,  0
;PalMul      =  1,1,1
;Trans = Add1

[State 1000, RUN_BACK]
type = Explod
trigger1 = Time = 5
pos = -10,20
postype = p1
anim = 70841
sprpriority = 5
supermove = 1
removeongethit = 1
scale = 0.7, 0.7
ownpal = 1

[State 1000, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0, 2

[State 1000, 1]
type = VelSet
trigger1 = Time = 18
y = 0
x = 0

[State 1000, 1]
type = PosSet
trigger1 = Time = 18
y = 0

[State 1000, 1]
type = ChangeState
trigger1 = Time = 18
value = 1001
ctrl = 0

;---------------------------------------------------------------------------
;hit
[Statedef 1001]
type    = S
movetype= A
physics = S
anim = 1001
ctrl = 0

[State 1001, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 1001, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 1001, 1]
type = ChangeState
triggerall = command = "x"
trigger1 = Time = [0,8]
value = 0
ctrl = 1

[State 1001, Super B]
type = AfterImage
trigger1 = Time = 5
time=10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1001, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8011
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

[State 1001, polvere]
type = Explod
trigger1 = Time = 5
anim = 7088
pos = -10,2
postype = p1
removetime = 16
sprpriority = 2
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1,.33

[State 1001, 1]
type = VelSet
trigger1 = AnimElem = 3
x = 35

[State 1001, 1]
type = PlaySnd
trigger1 = Time = 0
value = 2, 2

[State 1001, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12, 0

[State 1001, lightG]
type = Explod
trigger1 = AnimElem = 5
pos = 0,0
postype = p1
anim = 8004
scale = 0.8, 0.8
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1001, 3.3]
type = Explod
trigger1 = AnimElem = 5
anim = 780
ID = 3200
pos = 0,0
scale= 1, 1
postype = p1
sprpriority = 3
removetime = 15
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 1001, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
damage = 75,10
animtype = up
getpower = 30,15
givepower = 15,8
guardflag = A
hitflag = MAF
priority = 3, Hit
pausetime = 10,15
numhits = 1
sparkno = -1
hitsound = S1, 8
guardsound = S6, 0
ground.type = High
ground.slidetime = 21
ground.hittime  = 30
guard.pausetime = 6,8
guard.slidetime = 20
guard.hittime  = 17
ground.velocity = -12
air.velocity = -1.0,-11.5
airguard.velocity = -2.7,-5.5
guard.velocity = -8.0
fall = 1
air.fall = 1
fall.recover = 0
yaccel = .5
getpower = 0
givepower = 0

[State 1001, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
ignorehitpause = 1

[State 1001, EnvShake]
type = EnvShake
trigger1 = MoveContact
time = 15
ampl = -5
freq = 120
phase = 120
ignorehitpause = 1
persistent = 0

[State 1001, 3]
type = Explod
trigger1 = movehit = 1
anim = 7001
persistent = 0
ignorehitpause = 1
sprpriority = 2
postype = p2
pos = -10,-85
shadow = 90,90,90
bindtime = 1

[State 1001, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------
; Lionet Kick
[Statedef 1100]
type = S
movetype = A
physics = S
anim = 1100
poweradd= 100
velset = 0,0
ctrl = 0

[State 1100, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 1100, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = S12, 4

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = S0, 5

[State 1100, Velocity]
type = VelSet
trigger1 = Time = 0
x = 17

[State 1100, VelAdd]
type = VelAdd
trigger1 = Time = 0
x = 0.9

[State 1100, Velocity]
type = VelSet
trigger1 = Movehit
x = 0

[State 1100, Shadows] 
type = AfterImage 
Trigger1 = AnimElem = 2
time = 5
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1100, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8011
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

[State 1100, polvere]
type = Explod
trigger1 = Time = 0
anim = 7088
pos = -10,2
postype = p1
removetime = 16
sprpriority = 2
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
scale = 1,.33

[State 1100]
type = HitDef
trigger1 = Time = 0
attr = S, SP
animtype  = hard
damage = 55,5
priority  = 4, Hit
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = s7002
guard.sparkno = 8
sparkxy = -10,-80
hitsound = S1, 5
guardsound = S130, 3
ground.type = high
air.type = high
fall.animtype = Hard
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7.5,0
guard.velocity = -7.8
air.velocity = -5.8,-4.4
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
Palfx.time      = 30
Palfx.add       = 40,-70,-200
Palfx.sinadd   = 40,30,0,10
Palfx.color     = 0
Palfx.invertall = 3
getpower = 0;ifelse(p2movetype=H,40,140), 10
givepower = 0;35,35

[State 1100, EnvShake]
type = EnvShake
trigger1 = MoveContact
time = 15
ampl = -5
freq = 120
phase = 120
ignorehitpause = 1
persistent = 0

[State 1100, endcorsa]
type = ChangeState
trigger1 = animtime = 0
value = 51
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

;------------------
;player 2 on air
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

;------------------
;player 2 hit on wall
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

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;------------------
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

;----------------------------------
; Lionet Fire
[Statedef 1200]
type = S
movetype = A
physics = S
anim = 1200
poweradd= 60
velset = 0,0
ctrl = 0

[State 1200, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 1200, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

;[State 1200, explod]
;type = Explod
;trigger1 = Time = 0
;anim = 3562
;sprpriority = -9
;postype = p1
;pos = 0,0
;bindtime = 1
;supermove = 1
;ownpal = 1
;removetime = 35
;removeongethit = 1
;scale = 0.6,0.6

[State 1200, explod]
type = Explod
trigger1 = Time = 0
anim = 140100
sprpriority = 0
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1
removeongethit = 1

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 8

[State 1200, cosmo]
type = Explod
trigger1 = AnimElem = 1
anim = 1205
pos = 0,0
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0

[State 1200, cosmo]
type = Explod
trigger1 = AnimElem = 4
anim = 121000
pos = 70,-45
postype = p1
sprpriority = 4
ownpal = 1
ignorehitpause = 0

[State 1200, wind]
type = Projectile
trigger1 = animelem = 1
projanim = 8008
projpriority = 5
projheightbound = -240, 100
projedgebound = 100
offset = 75,-75
velocity = 8,0
attr = A, HP
damage   = 65
animtype = medium
hitflag = MAF
guardflag = M
pausetime = 0,10
hitsound = S5, 1
guardsound = S6, 0
sparkno = S8016
guard.sparkno = S7006
sparkxy = 55,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4.5
airguard.velocity = -4.4,-.8
air.type = High
air.velocity = -4.4,-4
air.hittime = 12
yaccel = .5
palfx.time = 10
palfx.mul= 120,120,120
palfx.sinadd = 150,50,50,15
palfx.add = 150,20,20
air.fall = 1
fall.recover = 0
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
envshake.time = 12
envshake.freq = 100
envshake.ampl = 4

[State 1200, endcorsa]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Flying Kick
[Statedef 1300]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 100
ctrl = 0
anim = 1300
sprpriority = 2
velset = 0,-5

[State 1300, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 1300, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 1300, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1300, Velset]
type = VelSet
trigger1 = AnimElem >= 2
x = 14
y = 10

[State 1300, Velocity]
type = VelSet
trigger1 = Movehit
x = 0

[State 1300]
type = PlaySnd
trigger1 = Time = 4
value = 12, 4

[State 1300]
type = PlaySnd
trigger1 = Time = 5
value = 0, 5

[State 1300,remanescence]
type = AfterImage
trigger1 = Time = 0
time = 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1300, lightG]
type = Explod
trigger1 = AnimElem = 2
pos = 20,-100
postype = p1
scale = 0.7,0.7
anim = 8007
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1300]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 80
priority = 6
animtype = hard
hitflag = MA
guardflag = MA
pausetime = 10,10
sparkno = s7002
sparkxy = -25,-35
hitsound = S1, 9
guardsound = S6, 0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -2,-3
fall = 1
fall.recover = 0
fall.damage = 40
envshake.time =  25
envshake.freq = 20
envshake.ampl = 6
envshake.phase = 5
getpower = 0
givepower = 0

[State 1300, polvere]
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

[State 1300]
type = ChangeState
trigger1 = Time = 80
trigger2 = Pos Y >= 0
value = 51
ctrl = 1

;------------------------------------------------------------------
; Counter
[Statedef 1400]
type = S
physics = S
anim = 1400
juggle = 5
velset = 0,0
poweradd = 100
ctrl = 0

[State 1400]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[State 1400, 1]
type = AfterImage
trigger1 = AnimElem = 2
length = 20
PalBright = 0, 0,0
PalContrast = 98,98,98
PalAdd = 0,0,0
PalMul =  1,1,1
timeGap = 1
FrameGap = 2
Trans = Add1
time = 5

[State 1400 , 3]
type = ReversalDef
trigger1 = Time = 0
reversal.attr = SCA, NA, SA
p1stateno = 1401
hitsound = S1, 10
sparkno = s8017
sparkxy = 63,0
pausetime = 20,20

[State 1400]
type = ChangeState
trigger1 = Time = 25
value = 1404
ctrl = 0

; attack
[Statedef 1401]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1401
sprpriority = 1

[State 1401, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 1401, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 1401, 1]
type = PlaySnd
trigger1 = Time = 2
value = 12, 5

[State 1401,Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8011
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

[State 1401, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Hard
damage = 70
guardflag = MA
hitflag = MAF
pausetime = 0, 35
sparkno = S8010
sparkxy = -10,0
guard.sparkno = S7006
hitsound = S1, 7
guardsound = S6, 0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 6
ground.velocity = 0
air.velocity = -2.5,-4
fall = 1
air.fall= 1
fall.recover=0
getpower = 0
givepower = 0

[State 1401, 8]
type = Explod
trigger1 = movehit
anim = 8005
sprpriority = 1
postype = p2
pos = -10,-74
scale = 0.6,0.6
removetime = 20
ignorehitpause = 1
supermove = 1
bindtime = -1

[State 1401, Explod]
type = Null
trigger1 = Time = 0
anim = 3004
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 70

[State 1401, Explod]
type = Null
trigger1 = Time = 0
anim = 8025
postype = back
pos = 0, 0
sprpriority = -2
ownpal = 1
scale = 0.6,0.6
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 70

[State 1401, 3]
Type = Velset
trigger1 = AnimElem = 2
x = 15

[State 1401, 4]
Type = VelMul
trigger1 = AnimElem = 3
x = 1.2

[State 1401, 5]
Type = VelMul
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
x = 1.5

[State 1401, 6]
Type = VelMul
trigger1 = AnimElem = 6
x = 1.7

[State 1401, 7]
type = PlaySnd
trigger1 = AnimElem = 2,1
value = 0, 11

[State 1401, 8]
Type = VelMul
trigger1 = AnimElem = 7
x = 2

[State 1401, 9]
Type = VelMul
trigger1 = AnimElem = 8
x = 1.1

[State 1401, afterimage]
type = AfterImage
trigger1 = AnimElem = 2
time = 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1401, 10]
type = ChangeState
trigger1 = MoveHit
value = 1402
ctrl = 1

[State 1401, 11]
type = ChangeState
trigger1 = MoveGuarded
value = 0
ctrl = 1

[State 1401, 12]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;going through
[Statedef 1402]
type = S
movetype = I
physics = S
anim = 1402
ctrl = 0
poweradd= 0

[State 1402, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 5

[State 1402, Super B]
type = AfterImage
trigger1 = Time = 0
time = 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1402, 1]
type = posadd
trigger1 = animtime = 0
x = 100

[State 1402, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1403
ctrl = 1

;going through (end)
[Statedef 1403]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1402
sprpriority = 8

[State 1403, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 8011
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

[State 1403, afterimage]
type = AfterImage
trigger1 = AnimElem = 1
time = 15
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1403, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 1403, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 1403, Explod]
type = Explod
trigger1 = Time = 1
anim = F12
postype = p2
pos = 0, -80

[State 1403, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 1403, 5]
type = ChangeState
trigger1 = Time = 70
value = 0
ctrl = 1

[State 1403, 6.1]
Type = Velset
trigger1 = AnimElem = 1
x = 8

[State 1403, nothittableanything]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1403, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 1404]
type = S
physics = S
anim = 1404
juggle = 5
velset = 0,0
ctrl = 0

[State 1404]
type = PlaySnd
trigger1 = Time = 0
value = 3, 1

[State 1404]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;;
;[Statedef 1405]
;type = S
;movetype = I
;physics = S
;anim = 1405
;poweradd = 0
;juggle = 5
;velset = 0,0
;ctrl = 0
;
;[State 1405, 2]
;type = PlaySnd
;trigger1 = Time = 0
;value = 9, 2
;
;[State 1405, remanescence]
;type = AfterImage
;trigger1 = AnimElem = 1
;time = 9
;length = 15
;PalContrast =  230,0,0
;PalBright = 5,5,5
;trans = Add1
;
;[State 1405, light]
;type = Explod
;trigger1 = MoveContact = 1
;ID = 8015
;anim = 8017
;pos = 63,-60
;postype = p1
;sprpriority = 5
;supermove = 1
;removetime = 40
;ignorehitpause = 1
;bindtime = -1
;persistent = 0
;
;[State 1405, 1]
;type = Explod
;trigger1 = Time = 0
;pos = -15,3
;anim = F120
;
;[State 1405, 2]
;type = VelAdd
;trigger1 = Time = 0
;trigger2 = Time = 10
;x = -3
;
;[State 1405, 7]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 0
;ctrl = 1

;------------------------------------------------------------------
; Combo
[Statedef 1500]
type = s
movetype = i
physics = s
anim = 3000
velset = 0, 0
sprpriority = 1
ctrl = 0

[State 1500, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 1500, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 1500, afterimage]
type = AfterImage
trigger1 = Time = 0
time= 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1500, Explod]
type = Explod
trigger1 = AnimElem =2
anim = 8011
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

[State 1500, Run Forward]
type = Explod
trigger1 = AnimElem = 2
pos = 0,0
postype = p1
anim = 7085
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 1500, 1]
type = VelAdd
trigger1 =1
x =2

[State 1500, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 3, 0

[State 1500, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 3, 1

[State 1500,6]
type = PlaySnd
trigger1 = animelem = 2
value = 0, 5

[State 1500, 3]
type = ChangeState
trigger1 = p2bodydist x <30
value = 1501

[Statedef 1501]
type    = S
movetype= A
physics = N
anim = 1500
juggle  = 10
velset = 0,0
ctrl = 0
poweradd= 100
sprpriority = 2

[State 1501, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
damage = 15
animtype = light
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 5, 15
sparkno = s7000
guard.sparkno=s85
sparkxy = -10, -80
hitsound = S1, 4
guardsound = S6, 0
ground.type = low
ground.slidetime = 20
ground.hittime  = 25
ground.velocity = -5
airguard.velocity = -4,-4.3
air.type = High
air.velocity = -4.4,-4.4
air.hittime = 25
getpower = 0;65,35
givepower = 0

[State 1501, 1]
type = HitDef
trigger1 = AnimElem =3
attr = S, SA
damage = 20
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 8, 25
sparkno = s7000
guard.sparkno=s85
sparkxy = -10, -60
hitsound = S1, 5
guardsound = S6, 0
ground.type = low
ground.slidetime = 20
ground.hittime  = 25
ground.velocity = -5
airguard.velocity = -5,-4.3
air.type = High
air.velocity = -5.4,-4.4
air.hittime = 25
getpower = 0;65,35
givepower = 0

[State 1501, 1]
type = HitDef
trigger1 = AnimElem =7
attr = S, SA
damage = 30
animtype = heavy
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 15, 15
sparkno = s7001
guard.sparkno=s85
sparkxy = -10, -70
hitsound = S1, 7
guardsound = S6, 0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5,-4
airguard.velocity = -5,-4.3
air.type = High
air.velocity = -5.4,-4.4
air.hittime = 25
fall=1
fall.recover=0
getpower = 0;65,35
givepower = 0

[State 1501, 2]
type = PlaySnd
trigger1 = animelem=4
value = 0, 2

[State 1501, 3]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl=1

;---------------------------------------------------------------------------
; 100 Scratches
[Statedef 1600]
type = S
movetype = A
physics = S
anim = 1600
poweradd= 100
velset = 0,0
ctrl = 0

[State 1600, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 1600, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 1600, 2]
type = PosSet
trigger1 = Pos Y !=0
trigger1 = Time = 0
y = 0

[State 1600, Turn]
type = Turn
trigger1 = p2dist x < -10

[State 1600,PosSet]
type = PosAdd
trigger1 = Time = 0
x = 15

[State 1600,4]
type = VarSet
trigger1 = P2MoveType != H
v = 14
value = 0

[State 1600,4]
type = MoveHitReset
trigger1 = P2MoveType != H

[State 1600,4]
type = VarSet
triggerall = MoveHit
triggerall = Var(14)=0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
v = 14
value = 1

[State 1600, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 12
value = 12, 4

;[State 1600, cosmo]
;type = Explod
;trigger1 = Time = 0
;anim = 1603
;ID = 1603
;scale= 1, 1
;pos = 0,0
;postype = p1
;sprpriority = -2
;ownpal = 1
;ignorehitpause = 0
;removeongethit = 1

[State 1600, wind]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = S, SA
animtype  = Light
damage = 3
guardflag = MA
pausetime = 0,8
sparkno = S7000
sparkxy = -20,-90
guard.sparkno = S7006
hitsound = S1, 1
guardsound = S6, 0
ground.type = high
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -0.10
air.velocity = -0.30,-1.5
fall = 0
envshake.time = 6
envshake.ampl = -5
getpower = 0
givepower = 0

[State 1600, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 12
trigger6 = AnimElem = 13
value = 0, 1

[State 1600, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 14
value = 0, 2

[State 1600, wind]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 12
trigger4 = AnimElem = 13
attr = S, SA
animtype  = Light
damage = 4
guardflag = MA
pausetime = 0,8
sparkno = S7000
sparkxy = -20,-95
guard.sparkno = S7006
hitsound = S1, 1
guardsound = S6, 0
ground.type = high
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -0.10
air.velocity = -0.30,-1.5
envshake.time = 6
envshake.ampl = -5
getpower = 0
givepower = 0

[State 1600, wind]
type = HitDef
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 11
trigger4 = AnimElem = 14
attr = S, SA
animtype  = Hard
damage = 5
guardflag = MA
pausetime = 0,8
sparkno = S7000
sparkxy = -20,-85
guard.sparkno = S7006
hitsound = S1, 1
guardsound = S6, 0
ground.type = high
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -0.10
air.velocity = -0.30,-1.5
envshake.time = 6
envshake.ampl = -5
getpower = 0
givepower = 0

[State 1600, endcorsa]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 1000 Scratches
[Statedef 3000]
type = S
movetype = I
physics = S
anim = 3000
velset = 0, 0
poweradd= 0
sprpriority = 1
ctrl = 0

[State 3000, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 3000, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 3000, afterimage]
type = AfterImage
trigger1 = Time = 0
time= 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 3000, 1]
type = VelAdd
trigger1 =1
x =2

[State 3000, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 3, 0

[State 3000, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 3, 1

[State 3000,6]
type = PlaySnd
trigger1 = animelem = 2
value = 0, 5

[State 3000, 3]
type = ChangeState
trigger1 = p2bodydist x < 20
value = 3001

[Statedef 3001]
type = S
movetype = A
physics = S
anim = 3001
poweradd= -1000
velset = 0,0
ctrl = 0

[State 3001, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 3001, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 3001, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,77]
flag = nobardisplay   
flag2 = noFG
ignorehitpause = 1

[State 3001, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 7 

[State 3001, Voice]
type = PlaySnd
trigger1 = AnimElem = 18
value = 12, 11

[State 3001, cosmo]
type = Explod
trigger1 = Time = 0
anim = 3003
ID = 3003
pos = 0,0
scale= 1, 1
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0
removeongethit = 1

[State 3001, wind]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 10
trigger4 = AnimElem = 11
attr = S, SA
animtype  = Light
damage =  10,1
guardflag = MA
hitflag = MAF
pausetime = 4,10
sparkno = S7000
sparkxy = -20,-101
guard.sparkno = S7006
hitsound = S1, 1
guardsound = S6, 0
ground.type = high
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -0.10,-1
air.velocity = -0.30,-1.5
fall = 0
getpower = 0
givepower = 0

[State 3001, wind]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 14
trigger4 = AnimElem = 15
attr = S, SA
animtype  = Light
damage = 10,1
guardflag = MA
pausetime = 4,10
sparkno = S7000
sparkxy = -20,-80
guard.sparkno = S7006
hitsound = S1, 2
guardsound = S6, 0
ground.type = high
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -0.10,-1
air.velocity = -0.30,-1.5
fall = 0
getpower = 0
givepower = 0

[State 3001, wind]
type = HitDef
trigger1 = AnimElem = 9
attr = S, SA
animtype  = Light
damage = 10,1
guardflag = MA
hitflag = MAF
pausetime = 5,8
sparkno = S7000
sparkxy = -20,-80
guard.sparkno = S7006
hitsound = S1, 4
guardsound = S6, 0
ground.type = low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -0.10,-1
air.velocity = -0.30,-1.5
fall = 0
getpower = 0
givepower = 0

[State 3001, wind]
type = HitDef
trigger1 = AnimElem = 18
attr = S, SA
animtype  = medium
damage = 40,4
guardflag = MA
hitflag = MAF
pausetime = 8,12
sparkno = S7000
sparkxy = -20,-80
guard.sparkno = S7006
hitsound = S1, 5
guardsound = S6, 0
ground.type = high
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -5,-3
air.velocity = -0.30,-1.5
fall = 0
getpower = 0
givepower = 0

[State 3001, wind]
type = HitDef
trigger1 = AnimElem = 19
attr = S, HA
animtype = DiagUp
damage = 40,4
guardflag = MA
hitflag = MAF
pausetime = 10,10
sparkno = S8010
sparkxy = -20, -10
guard.sparkno = S7006
hitsound = S270, 1
guardsound = S6, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 10
guard.pausetime = 10,8
guard.slidetime = 15
guard.hittime  = 5
ground.velocity = -3.0,-9.5
air.velocity = -3.0,-9.5
airguard.velocity = -2.7,-4.5
guard.velocity = -7.5
fall = 1
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
envshake.ampl=8
envshake.time=15
palfx.time = 60
palfx.add = 80,-40,-140
palfx.mul = 256,256,256
palfx.sinadd = 100,100,100,15
palfx.invertall = 1
palfx.color = 0
getpower = 0
givepower = 0

[State 3001 , 8]
type = Explod
trigger1 = AnimElem = 19
anim = 8006
sprpriority = 3
postype = p2
pos = 0,0
scale = 0.43, 0.43
removetime = 16
ignorehitpause = 1
supermove = 1

[State 3001, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 18
value = 0, 4

;[State 3001, Explod]
;type = Explod
;trigger1 = Time = 0
;anim = 3004
;postype = back
;pos = 0, 0
;sprpriority = -3
;ownpal = 1
;scale = 1
;ignorehitpause = 1
;bindtime = -1
;persistent = 0
;removeongethit = 1

[State 3001, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 8001
ID = 82
postype = right
pos = -320,0
sprpriority = -3
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime =110

[State 3001, Explod]
type = Explod
trigger1 = Time = 0
anim = 8000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime =110

[State 3001, endcorsa]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Lionet Bomber 1
[Statedef 3100]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3100
juggle = 4
poweradd= -1000

[State 3100, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 3100, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 3100, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 13, 4

[State 3100, snd]
type = PlaySnd
trigger1 = Time = 5
value = 2, 1

[State 3100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101

[Statedef 3101]
type = A
movetype = A
physics = N
anim = 3101
velset = 2.5,-7.2

[State 3101, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,45]
flag = nobardisplay   
flag2 = noFG
ignorehitpause = 1

[State 3101, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 82
anim = 8012
postype = right
pos = -320,0
sprpriority = -5
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime =40

[State 3101, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 82
anim = 6002
postype = right
pos = -320,0
sprpriority = -1
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime =50
scale = 0.5, 0.5

[State 3101, 5]
type = AfterImage
trigger1 = Time = 10
time = 10
FrameGap = 2
length = 12
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 3101, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 8011
pos = -30,-70
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.6,0.6
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3101, vel]
type = VelAdd
trigger1 = Time >= 0
y = .45;.6

[State 3101, vel]
type = VelAdd
trigger1 = Vel Y >= 0
x = .12

[State 3101, 1]
type = VelSet
trigger1 = AnimElem = 4
x = 8

[State 3101, Velocity]
type = VelSet
trigger1 = Movehit
x = 0

[State 3101, hit]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype = hard
damage = 200, 20
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 15,15
sparkno = S2300
sparkxy = -10,-33
guard.sparkno = S7006
hitsound = S5, 4
guardsound = S6, 0
ground.type = high
air.type = high
fall.animtype = Hard
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7.5,0
guard.velocity = -7.8
air.velocity = -5.8,-4.4
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
Palfx.time      = 30
Palfx.add       = 40,-70,-200
Palfx.sinadd   = 40,30,0,10
Palfx.color     = 0
Palfx.invertall = 3
getpower= 0;ifelse(p2movetype=H,40,140), 10
givepower = 0;35,35

[State 3101, lightG]
type = Explod
trigger1 = AnimElem = 5
pos = 20,-100
postype = p1
anim = 8003
scale = 0.8,0.8
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3101, 3]
type = Explod
trigger1 = movehit = 1
anim = 8014
persistent = 0
ignorehitpause = 1
sprpriority = 2
postype = p2
pos = 5,-75
shadow = 90,90,90
bindtime = 1

;[State 3101, 3]
;type = Explod
;trigger1 = movehit = 1
;anim = 8003
;persistent = 0
;ignorehitpause = 1
;sprpriority = 2
;postype = p2
;pos = 0,-75
;shadow = 90,90,90
;bindtime = 1

[State 3101, end]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 3102

[Statedef 3102]
type = S
movetype = A
physics = S
anim = 3102
velset = 0, 0

[State 3102, pos]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3102, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 12
ctrl = 1

;------------------------------------------------------------------
; Lionet Bomber 2
[Statedef 3200]
type = S
movetype = A
physics = S
anim = 3200
poweradd= -2000
velset = 0,0
ctrl = 0

[State 3200, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 3200, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 3200, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,61]
flag = nobardisplay   
flag2 = noFG
ignorehitpause = 1

[State 3200, vel]
type = Velset
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger9 = AnimElem = 9
x = 15

[State 3200, vel]
type = Velset
trigger1 = AnimElem = 10
x = 10

[State 2500, vel]
type = Velset
trigger1 = AnimElem = 11
x = 5

[State 3200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 8011
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

[State 3200, SOUND]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 13, 4

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 100, 1

;[State 3200, 1]
;type = superpause
;trigger1 = AnimElem = 1
;value = 0, 0, 0
;time = 40
;anim = S2570
;pos = -10, -73
;under = 1
;supermove = 40

[State 3200, sfondo1]
type = Explod
trigger1 = AnimElem = 1
pos = -320,0
anim = 8002
ID = 82
postype = right
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 69
removeongethit = 1

[State 3200, polvere]
type = Explod
trigger1 = AnimElem = 2
anim = 7088
pos = 0,0
postype = p1
removetime = 62
sprpriority = 1
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 1
removeongethit = 1
scale = 1,.33

[State 3200, cosmo]
type = Explod
trigger1 = AnimElem = 7
anim = 3203
ID = 3203
pos = 0,0
scale= 1, 1
postype = p1
removetime = 33
sprpriority = 3
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 1
removeongethit = 1

[State 3200, re]
type = RemoveExplod
trigger1 = Time = 0
ID = 3200

;[State 3200, sfondo str]
;type = Explod
;trigger1 = Time = 0
;anim = 10010
;pos = -320,0
;postype = right
;removetime = 56
;sprpriority = -2
;supermove = 0
;ignorehitpause = 1
;ownpal = 1
;bindtime = 170
;persistent = 1
;removeongethit = 1

[State 3200, sfondo str]
type = Explod
trigger1 = AnimElem = 1
anim = 8000
pos = -320,0
postype = right
removetime = 70
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 1
removeongethit = 1

;[State 3200, Explod]
;type = Explod
;trigger1 = Time = 0
;anim = 3004
;sprpriority = 0
;postype = back
;pos = 0, 0
;ownpal = -1
;scale = 1
;removetime = 20
;removeongethit = 1

;[State 3200, Explod]
;type = Explod
;trigger1 = Time = 0
;anim = 80251
;sprpriority = 0
;scale = 0.6,0.6
;postype = back
;pos = 0, 0
;ownpal = -1
;scale = 1
;removetime = 30
;removeongethit = 1

[State 3200, colpo finale]
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
attr = S, SA
animtype  =  Hard
damage = 30,3
guardflag = MA
hitflag = MAF
priority = 5,Hit
pausetime = 0,10
sparkno = S7000
sparkxy = -20,-78
guard.sparkno = S7006
hitsound = S1, 5
guardsound = S6, 0
ground.type = High
ground.slidetime = 20
ground.hittime  = 16
guard.pausetime = 8,9
guard.slidetime = 18
guard.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.2,-4.5
airguard.velocity = -2.7,-3.5
guard.velocity = -6.5
fall = 0
air.fall = 1
fall.recover = 0
;snap = 55
p2facing = 1
envshake.time=6
getpower = 0
givepower = 0

[State 3200, colpo finale]
type = HitDef
trigger1 = AnimElem = 12
attr = S, HA
animtype  = Diagup
damage = 100,10
guardflag = MA
hitflag = MAF
priority = 6,Hit
pausetime = 15,15
sparkno = S8018
sparkxy = -40,-95
guard.sparkno = S7006
hitsound = S5, 6
guardsound = S6, 0
ground.hittime = 20
ground.slidetime = 15
ground.velocity = -25,-5
ground.type = High
air.velocity = -7,-5
fall = 1
fall.recover= 0
Palfx.time      = 30
Palfx.add       = 40,-70,-200
Palfx.sinadd   = 40,30,0,10
Palfx.color     = 0
Palfx.invertall = 3
getpower = 0
givepower = 0

[State 3200, st]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Lionet Bomber 3
[Statedef 3300]
type    = A
movetype= A
physics = N
poweradd= -3000
juggle = 8
ctrl = 0
anim = 3300
velset = 0, 0

[State 3300, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 0
ID = 2

[State 3300, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 3300, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,50]
flag = nobardisplay   
flag2 = noFG
ignorehitpause = 1

[State 3300, 2]
type = Playsnd
trigger1 = Animelem = 1
value = 5, 3

[State 3300, SOUND]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 13, 4

[State 3300, 0]
type = SuperPause
trigger1 = AnimElem = 1
time = 45
anim = s91
pos = 5,-70
movetime = 0
darken = 1

[State 3300, 0]
type = Explod
trigger1 = Time = 0
anim = 8021
sprpriority = 0
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1
removetime = 40
ignorehitpause = 1

[State 3300, 1]
type = Explod
trigger1 = Time = 0
anim = 903
sprpriority = 0
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1
removetime = 40
ignorehitpause = 1

[State 3300, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8011
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3300, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 8001
ID = 82
postype = right
pos = -320,0
sprpriority = -3
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime =20

[State 3300, 2]
type = Explod
trigger1 = Time = 0
anim = 8000
postype = back
pos = 0, 0
sprpriority = -3
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removetime = 110
removeongethit = 1
supermove = 1

[State 3300, 0]
type = VelSet
trigger1 = AnimElem = 2
y = -1

[State 3300, 1]
type = VelAdd
trigger1 = Time >= 8
x = .2

[State 3300, 1]
type = VelAdd
trigger1 = Time >= 17
x = .3

[State 3300, 2] ;Gravity
type = VelAdd
trigger1 = Time >= 25
y = .2

[State 3300, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Diagup
damage = 600,180
priority = 4,Hit
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = s8025
sparkxy = -10,-70
guard.sparkno = S7006
hitsound = S5, 4
guardsound = S6, 0
ground.type = low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4,-6
air.velocity = -4,-6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
Palfx.time      = 60
Palfx.add       = 40,-70,-200
Palfx.sinadd   = 40,30,0,10
Palfx.color     = 0
Palfx.invertall = 3
envshake.time = 15
envshake.ampl = 15
envshake.freq = 160
envshake.phase = 120
getpower= 0;ifelse(p2movetype=H,40,140), 10
givepower = 0;35,35

[State 3300]
type = envshake
trigger1 = moveguarded
time = 4
ampl = 6
freq = 176
ignorehitpause = 1

[State 3300, 8]
type = Explod
trigger1 = movehit = 1
anim = 8009
sprpriority = 1
postype = p2
pos = -75,-10
removetime = 14
ignorehitpause = 1
supermove = 1

[State 3300, 6] ;Hit ground
type = ChangeState
trigger1 = animtime = 0
value = 3301

; (end)
[Statedef 3301]
type    = A
movetype= A
physics = N
anim = 3301
velset = 0,0

[State 3301]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13, 3

[State 3301, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3301, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

[Statedef -2]

[State -2, Get P2 Distance]
type = VarSet
trigger1 = p2dist x != 0
var(11) = floor(p2dist x)

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

[State -2, AI]
type = VarSet
v = 59
value = 2
triggerall = var(59) = 1
trigger1 = roundstate > 2

;---------------------------------------------------------------------------

[State -2, throw 1]
type = ChangeState
value = 800
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = S)
trigger1 = (p2bodydist X <= 40) && (P2MoveType !=A) && (random = [180,250])

[State -2, throw 2]
type = ChangeState
value = 830
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = S)
trigger1 = (p2bodydist X <= 30) && (P2MoveType !=A) && (random = [180,250])

[State -2, cosmo charge]
type = ChangeState
value = 900
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0,150])
trigger1 = (P2bodydist X >= 100) &&  (power <= 2999) && (prevstateno != 5120) && (p2movetype != H)

[State -2, 1000 scratches]
type = ChangeState
value = 3000
Triggerall = roundstate = 2
triggerall = statetype = S && power >= 1000
triggerall = (var(59) != 0)  && (ctrl) && (random = [400, 420])
trigger1 =  (P2bodydist X <= 150) && (P2bodydist X >= 70)

[State -2, lionet bomber 1]
type = ChangeState
value = 3100
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X > 80) && (p2bodydist X <= 180) && (power >= 1500) && (random = [400,510])

[State -2, lionet bomber 2]
type = ChangeState
value = 3200
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 =  (p2bodydist X > 65) &&(p2bodydist X <= 200) && (power >= 2000) && (random = [450,650])

[State -2, lionet bomber 3]
type = ChangeState
value = 3300
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X >= 60)&&(p2bodydist X <= 230) &&(power >= 3000) && (random = [550,950])

[State -2, super punch]
type = ChangeState
value = 1000
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [170, 250])
trigger1 = (P2bodydist X <= 100) && (P2bodydist X >= 40) && (prevstateno != 5120) && (p2movetype != H)
value = 1000

[State -2, lionet kick]
type = ChangeState
value = 1100
Triggerall = roundstate = 2
triggerall = (statetype = S) && (ctrl) && (random = [180, 260])
triggerall = (var(59) != 0)
trigger1 = (P2bodydist X <= 160) && (P2bodydist X >= 90) && (prevstateno != 5120) && (P2StateType != L)

[State -2, lionet fire]
type = ChangeState
value = 1200
Triggerall = roundstate = 2
triggerall =  (statetype = S) && (ctrl) && (random = [180, 210])
triggerall = (var(59) != 0)
trigger1 = (P2bodydist X >= 200) && (prevstateno != 5120) && (p2movetype != H)

[State -2, flying kick]
type = ChangeState
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = A) && (ctrl) && (random = [100, 150])
trigger1 = (p2bodydist X > 60) && (P2bodydist X <= 100) && (prevstateno != 5120) && (p2statetype = S)
value = 1300

[State -2, counter]
type = ChangeState
value = 1400
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [50, 100])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) && (p2movetype = A)
value = 1400

[State -2, combo]
type = ChangeState
value = 1500
Triggerall = roundstate = 2
triggerall =  (statetype = S) && (ctrl) && (random = [180, 250])
triggerall = (var(59) != 0)
trigger1 = (P2bodydist X > 80) && (P2bodydist X <= 160) && (prevstateno != 5120) && (p2movetype != H)

[State -2, 100 scratches]
type = ChangeState
value = 1600
Triggerall = roundstate = 2
triggerall = statetype = S
triggerall = (var(59) != 0)  && (ctrl) && (random = [180, 250])
trigger1 =  (P2bodydist X <= 40) && (prevstateno != 5120) && (p2statetype = S)

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

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = anim = 1603
ID = 1603

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = anim = 3003
ID = 3003

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(998) = 1
trigger1 = stateno != 999
ID = 998

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = anim = 3203
ID = 3203

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = anim = 6000
ID = 6000

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = anim = 7010
ID = 7010

;---------------------------------------

[State -3, Walk Forward]
type = PlaySnd
triggerall = anim = 20
trigger1 = AnimElem = 3
value = 3, 0

[State -3, Walk Forward]
type = PlaySnd
triggerall = anim = 20
trigger1 = AnimElem = 3
value = F3, 0

[State -3, Walk Forward]
type = PlaySnd
triggerall = anim = 20
trigger1 = AnimElem = 6
value = 3, 1

[State -3, Walk Forward]
type = PlaySnd
triggerall = anim = 20
trigger1 = AnimElem = 6
value = F3, 1

[State -3, Walk Back]
type = PlaySnd
triggerall = anim = 21
trigger1 = AnimElem = 3
value = 3, 0

[State -3, Walk Back]
type = PlaySnd
triggerall = anim = 21
trigger1 = AnimElem = 3
value = F3, 0

[State -3, Walk Back]
type = PlaySnd
triggerall = anim = 21
trigger1 = AnimElem = 4
value = 3, 1

[State -3, Walck Back]
type = PlaySnd
triggerall = anim = 21
trigger1 = AnimElem = 4
value = F3, 1

;---------------------------------------

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = Time = 1
value = 2, 0

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = Time = 1
value = F2, 0

[State -3, Air Jump]
type = AfterImage
triggerall = stateno = 45
trigger1 = Time = 1
time = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = add1

[State -3, Air Jump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = Time = 1
value = 2, 1

[State -3, Air Jump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = Time = 1
value = F2, 1

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = Time = 1
value = 2, 2

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = Time = 1
value = F2, 3

;---------------------------------------

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = Time = 1
time = 25
palbright = 10,10,10
palcontrast = 98,98,98
trans = add1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = Time = 1
pos = 0,0
anim = 7084
sprpriority = 5
ownpal = 1
removeongethit = 1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = AnimElem = 2
pos = 0,0
postype = p1
anim = 7085
sprpriority = 5
removeongethit = 1
ownpal = 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 2
value = 3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 2
value = F3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 5
value = 3, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 5
value = F3, 1

;[State -3 , Run Forward]
;type = PlaySnd
;triggerall = stateno = 100
;trigger1 = Time = 8
;trigger2 = Time = 38
;trigger3 = Time = 68
;trigger4 = Time = 98
;trigger5 = Time = 128
;trigger6 = Time = 158
;trigger7 = Time = 188
;trigger8 = Time = 218
;trigger9 = Time = 248
;trigger10 = Time = 278
;trigger11 = Time = 308
;trigger12 = Time = 338
;trigger13 = Time = 368
;trigger14 = Time = 398
;trigger15 = Time = 428
;trigger16 = Time = 458
;trigger17 = Time = 488
;trigger18 = Time = 518
;trigger19 = Time = 548
;trigger20 = Time = 578
;trigger21 = Time = 608
;trigger22 = Time = 638
;trigger23 = Time = 668
;trigger24 = Time = 698
;trigger25 = Time = 728
;trigger26 = Time = 758
;trigger27 = Time = 788
;trigger28 = Time = 818
;trigger29 = Time = 848
;trigger30 = Time = 878
;trigger31 = Time = 908
;trigger32 = Time = 938
;trigger33 = Time = 968
;trigger34 = Time = 998
;trigger35 = Time = 1028
;trigger36 = Time = 1058
;trigger37 = Time = 1088
;trigger38 = Time = 1118
;trigger39 = Time = 1148
;trigger40 = Time = 1178
;trigger41 = Time = 1208
;trigger42 = Time = 1238
;trigger43 = Time = 1268
;trigger44 = Time = 1298
;trigger45 = Time = 1328
;trigger46 = Time = 1358
;trigger47 = Time = 1388
;trigger48 = Time = 1418
;trigger49 = Time = 1448
;trigger50 = Time = 1478
;value = 3, 2

;---------------------------------------

[State -3, Run Back]
type = AfterImage
triggerall = stateno = 105
trigger1 = Time = 1
time = 15
palbright = 10,10,10
palcontrast = 98,98,98
trans = add1

[State -3, Run Back]
type = Explod
triggerall = stateno = 105
trigger1 = Time = 5
pos = -10,20
postype = p1
anim = 70841
sprpriority = 5
removeongethit = 1
scale = 0.7, 0.7
ownpal = 1

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = Time = 1
value = 2, 0

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = Time = 1
value = F2, 0

[State -3, Run Back Land]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 106
value = 2, 2

[State -3, Run Back Land]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 106
value = F2, 3

;---------------------------------------

;[State -3, Cloth Pieces]
;type = Explod
;triggerall = life <= 0
;triggerall = anim = ifelse(selfanimexist(5148),5148,5150)
;triggerall = numexplod(5151) = 0
;trigger1 = Time = 1
;anim = 5151
;ID = 5151
;pos = -15,-15
;sprpriority = 5
;ownpal = 1

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = ifelse(selfanimexist(5148),5148,5150)
trigger1 = Time = 1
trigger2 = Time = 10
trigger3 = Time = 20
value = 11, 1

;---------------------------------------

[State -3, 1]
type = PlaySnd
triggerall = ((Time = 1) && (var(8) < 500) && (random < 600))
trigger1 = (stateno = 5001) && (random < 500)
value = 10, 0
channel = 5

[State -3, 2]
type = PlaySnd
triggerall = ((Time = 1) && (var(8) < 500) && (random < 600))
trigger1 = (stateno = 5040) && (random < 400)
value = 10, 1
channel = 5

[State -3, 3]
type = PlaySnd
triggerall = ((Time = 1) && (var(8) < 500) && (random < 600))
trigger1 = (stateno = 5050)&& (random < 400)
value = 10, 2
channel = 5

[State -3, 5]
type = PlaySnd
triggerall = stateno = 5001
triggerall = (anim >= 5000) && (anim <= 5009)
trigger1 = Time = 1
value = 10, 2

[State -3, 5]
type = PlaySnd
triggerall = stateno = 5001
triggerall = (anim >= 5010) && (anim <= 5019)
trigger1 = Time = 1
value = 10, 1

[State -3, 5]
type = PlaySnd
triggerall = stateno = 5001
triggerall = anim >= 5020
trigger1 = Time = 1
value = 10, 0

[State -3, 6]
type = PlaySnd
triggerall = stateno = 5010
trigger1 = Time = 1
value = 10, 0

[State -3, 7]
type = PlaySnd
triggerall = stateno = 5020
trigger1 = Time = 1
value = 10, 0

[State -3, 7]
type = PlaySnd
triggerall = stateno = 5030
trigger1 = Time = 1
value = 10, 3

[State -3, 7]
type = PlaySnd
triggerall = stateno = 5070
trigger1 = Time = 1
value = 10, 3

[State -3, 7]
type = PlaySnd
triggerall = stateno = 1025
trigger1 = Time = 1
value = 10, 2

[State -3, 7]
type = PlaySnd
triggerall = stateno = 5100
trigger1 = Time = 3
value = 10, 4

[State -3, 7]
type = PlaySnd
triggerall = stateno = 5100
trigger1 = Time = 1
value = 7, 2

[State -3, 7]
type = PlaySnd
triggerall = stateno = 5120
trigger1 = Time = 1
value = 10, 6

[State -3, 7]
type = PlaySnd
triggerall = stateno = 5000
trigger1 = Time = 1
trigger1 = Life < 1
value = 11, 0

[State -3, 7]
type = PlaySnd
triggerall = stateno = 5050
trigger1 = Time = 1
trigger1 = Life < 1
value = 11, 0

[State -3, 7]
type = PlaySnd
triggerall = stateno = 5070
trigger1 = Time = 1
trigger1 = Life < 1
value = 11, 0

[State -3, 7]
type = PlaySnd
triggerall = stateno = 1025
trigger1 = Time = 1
trigger1 = Life < 1
value = 11, 0

[State -3, 7]
type = PlaySnd
triggerall = stateno = 5120
trigger1 = Time = 23
value = 2, 2

[State -3, 7]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52
trigger2 = stateno = 54
value = 2, 2

;---------------------------------------

[State -3]
type = StopSnd
triggerall = var(4) = 1
trigger1 = stateno != 100
channel = 4

[State -3]
type = VarSet
triggerall = var(4) = 1
trigger1 = stateno != 100
v = 4
value = 0