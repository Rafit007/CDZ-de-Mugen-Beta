;---------------------------------------------------------
; Pegasus ST File by MIM & TonyADV
;---------------------------------------------------------

;---------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 170]
type = AssertSpecial
triggerall = Var(2) = [0,49]
trigger1 = Time = [0,180]
flag = RoundNotOver

[State 170]
type = AssertSpecial
triggerall = Var(2) = [50,99]
trigger1 = Time = [0,140]
flag = RoundNotOver

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 170]
type = PlaySnd
trigger1 = time = 1
value = 2,2

[State 170, voice]
type = PlaySnd
triggerall = Var(2) = [0,49]
trigger1 = time = 5
value = 13,10
channel = 0

[State 170, voice]
type = PlaySnd
triggerall = Var(2) = [50,99]
trigger1 = time = 5
value = 13,11
channel = 0

;---------------------------------------
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

[State 180]
type = ChangeState
triggerall = var(0) = 1
trigger1 = time = 0
value = 183

[State 180]
type = ChangeState
triggerall = var(0) = 2
trigger1 = time = 0
value = 184

;---------------------------------------
; Win 1 (round win)
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181]
type = AssertSpecial
trigger1 = Time = [0,150]
flag = RoundNotOver

[State 181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, mouth]
type = Explod
trigger1 = time = 25
anim = 186
ID = 186
pos = 0,0
postype = p1
bindtime = 75
sprpriority = 10
removetime = 85
removeongethit = 1

[State 181, voice]
type = PlaySnd
trigger1 = time = 25
value = 13,6
channel = 0

[State 181]
type = PlaySnd
trigger1 = time = 5
value = 2,2

;---------------------------------------
; Win 2 (match win)
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = RoundNotOver

[State 182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 182, athena]
type = Explod
trigger1 = AnimElem = 2
pos = 70,-70
anim = 2021
sprpriority = -4
removetime = -1
ownpal = 1
facing = -1
persistent = 1

[State 182, cosmo]
type = Explod
trigger1 = AnimElem = 2
pos = 3,12
anim = 1823
sprpriority = -1
removetime = -1
ownpal = 1
persistent = 1

[State 182, sun light]
type = Explod
trigger1 = time = 50
anim = 8111
pos = 0,0
postype = Left
sprpriority = 4
removetime = -1
ownpal = 1
bindtime = -1

[State 182, voice]
type = PlaySnd
trigger1 = time = 40
value = 13,7
channel = 0

[State 182]
type = PlaySnd
trigger1 = time = 2
value = 2,2

[State 182, camera]
type = Helper
trigger1 = AnimElem = 2
postype = p1
pos = 140, -140
stateno = 9999
keyctrl = 0
ownpal = 1

;---------------------------------------
; Win 3 (fatality) by Tux
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 183 , 1]
type = AssertSpecial
trigger1 = Time = [0,1300]
flag = RoundNotOver

[State 183, 1] 
type = AssertSpecial
trigger1 = Time = [0,1300]
flag = NoMusic
flag2 = NoBarDisplay

[State 183, 1]
type = PlaySnd
triggerall = anim = 183
trigger1 = AnimElem = 3
value = 9,3

[State 183, cloth away]
type = Explod
triggerall = anim = 183
trigger1 = AnimElem = 3
anim = 3714
sprpriority = 4
postype = p1
pos = 0,0
supermove = 1
bindtime = 1
ownpal = 1

[State 183, cloth away]
type = Explod
triggerall = anim = 183
trigger1 = AnimElem = 3
anim = 7060
sprpriority = 4
removetime = 55
ontop = 1
postype = p1
pos = 15,8
supermove = 1
bindtime = 1
ownpal = 1

[State 183, cloth away]
type = Explod
triggerall = anim = 183
trigger1 = AnimElem = 4
anim = 7060
sprpriority = 4
ontop = 1
postype = p1
pos = 15,-20
supermove = 1
bindtime = 1
ownpal = 1

[State 183, Snd]
type = PlaySnd
trigger1 = Time = 159
value = 2,1

[State 183, flash]
type = EnvColor
trigger1 = AnimElem = 20
value = 255,255,255
under = 0
time = 10

[State 183, Snd]
type = PlaySnd
trigger1 = AnimElem = 20
value = 5,2

[State 183, sagittarius cloth]
type = Explod
trigger1 = AnimElem = 21
anim = 3717
sprpriority = -2
postype = p1
pos = 100,50
supermove = 1
bindtime = 1
ownpal = 1

[State 183, Snd]
type = PlaySnd
trigger1 = AnimElem = 24
value = 4,0

[State 183, Snd]
type = PlaySnd
trigger1 = AnimElem = 25
value = 4,1

[State 183, Snd]
type = PlaySnd
trigger1 = AnimElem = 26
value = 4,2

[State 183, Snd]
type = PlaySnd
trigger1 = AnimElem = 27
value = 4,3

[State 183, Snd]
type = PlaySnd
trigger1 = AnimElem = 28
value = 4,4

[State 183, Snd]
type = PlaySnd
trigger1 = AnimElem = 29
value = 4,5

[State 183, Snd]
type = PlaySnd
trigger1 = AnimElem = 30
value = 4,6

[State 183, aioros]
type = Explod
trigger1 = Time = 350
anim = 2011
sprpriority = -3
postype = p1
pos = 150,-10
supermove = 1
bindtime = 1
ownpal = 1

[State 183, Snd]
type = PlaySnd
trigger1 = Time = 380
value = 14,10

[State 183, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1000
value = 1830

[State 183, Snd]
type = PlaySnd
trigger1 = Time = 1012
value = 14,11

;---------------------------------------
; Win 4 (desperate) by Tux
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 184]
type = AssertSpecial
trigger1 = Time = [0,210]
flag = RoundNotOver

[State 184]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 184]
type = PlaySnd
triggerall = (P2Name != "marin") && (P3Name != "marin") && (P4Name != "marin")
trigger1 = Time = 30
value = 2,1

[State 184]
type = Explod
triggerall = (P2Name != "marin") && (P3Name != "marin") && (P4Name != "marin")
trigger1 = Time = 30
anim = 2000
pos = 100,0
postype = p1
sprpriority = -2
removetime = -1
ownpal = 1
bindtime = -1

[State 184]
type = PlaySnd
triggerall = (P2Name != "marin") && (P3Name != "marin") && (P4Name != "marin")
trigger1 = Time = 70
value = 13,9

;---------------------------------------
; Intro state decider
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190]
type = Changestate
trigger1 = p2name = "shaina" || p4name = "shaina"
value = 194

[State 190]
type = Changestate
trigger1 = p2name = "aldebaran" || p4name = "aldebaran"
value = 195

[State 190]
type = Changestate
trigger1 = p2name = "arles_gemini" || p4name = "arles_gemini"
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
trigger1 = Var(2) = [50,74]
value = 192

[State 190]
type = ChangeState
trigger1 = Var(2) = [75,99]
value = 193

;-------------------------------------------------
; Intro 1 (cloth 1)
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191]
type = AssertSpecial
trigger1 = Time = [0,800]
flag = Intro

[State 191] 
type = AssertSpecial
trigger1 = time = [0,550]
flag = nobardisplay

[State 191, Darken]
type = BGPalfx
triggerAll = time <= 645
trigger1 = 1
ignorehitpause = 1
time = 5
mul = 150,150,222
sinadd = 34,56,67,600
add = 5,5,5
invertall = 0

[State 191]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,1

[State 191]
type = PlaySnd
trigger1 = Time = 152
value = 5,2

[State 191]
type = PlaySnd
trigger1 = time = 200
value = 2,1

[State 191]
type = PlaySnd
trigger1 = time = 110
trigger2 = time = 120
trigger3 = time = 130
value = 2,2

[State 191]
type = PlaySnd
trigger1 = AnimElem = 82
value = 2,2

[State 191, coscie]
type = PlaySnd
trigger1 = AnimElem = 46
value = 4,3

[State 191, mutanda]
type = PlaySnd
trigger1 = AnimElem = 48
value = 4,1

[State 191, raccio]
type = PlaySnd
trigger1 = AnimElem = 50
value = 4,2

[State 191, raccio kill'at!]
type = PlaySnd
trigger1 = AnimElem = 55
value = 4,3

[State 191, pietto]
type = PlaySnd
trigger1 = AnimElem = 57
value = 4,5

[State 191, coprispallo]
type = PlaySnd
trigger1 = AnimElem = 59
value = 4,1

[State 191, nat coprispallo]
type = PlaySnd
trigger1 = AnimElem = 64
value = 4,4

[State 191, capocchia dò ciuccio]
type = PlaySnd
trigger1 = AnimElem = 66
value = 4,6

[State 191, powter scrigno]
type = Explod
trigger1 = time = 112
pos = -20,0
anim = 7080
sprpriority = 5

[State 191, powter scrigno]
type = Explod
trigger1 = time = 121
pos = -45,0
anim = 7080
sprpriority = 5

[State 191, powter scrigno]
type = Explod
trigger1 = time = 133
pos = -60,0
anim = 7080
sprpriority = 5

[State 191, powter scrigno]
type = Explod
trigger1 = time = 138
pos = -50,0
anim = 7080
sprpriority = 5

[State 191, scrigno1]
type = Explod
trigger1 = AnimElem = 1
pos = -12,0
anim = 1910
ID = 1910
sprpriority = -2

[State 191, scrigno2]
type = ModifyExplod
trigger1 = Time = 240
pos = -12,0
anim = 1910
ID = 1910
sprpriority = -6

[State 191]
type = Explod
trigger1 = AnimElem = 36
anim = 8100
id = 8100
pos = 0,0
postype = left
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 191]
type = RemoveExplod
triggerall = NumExplod(8100) = 1
trigger1 = animelem = 74
ID = 8100

[State 191, scrigno luce]
type = Explod
trigger1 = time = 172
pos = -54,0
anim = 7040
sprpriority = -1

[State 191, cloth light1]
type = Explod
trigger1 = time = 212
pos = -54,-4
anim = 7050
sprpriority = -3

[State 191, cloth light2]
type = Explod
trigger1 = time = 212
pos = -54,-4
anim = 7051
sprpriority = -5

[State 191, cloth1]
type = Explod
trigger1 = AnimElem = 1
pos = -54,0
anim = 1911
sprpriority = -4
removetime = 320

[State 191, cloth]
type = PlaySnd
trigger1 = time = 340
value = 5,2

[State 191, cloth2]
type = Explod
trigger1 = time = 320
pos = -54,-70
anim = 1912
sprpriority = -4

[State 191, cosmo]
type = Explod
trigger1 = AnimElem = 12
pos = 0,0
anim = 1913
sprpriority = -1
removetime = 110

[State 191, cosmo]
type = PlaySnd
trigger1 = Animelem = 12
value = 13,1
channel = 0

[State 191, big light]
type = Explod
trigger1 = Animelem = 14
anim = 7032
pos = 0,5
postype = p1
sprpriority = 4
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0
scale = .5,.5

[State 191, big light]
type = Explod
trigger1 = Animelem = 14
anim = 7032
pos = 0,6
postype = p1
sprpriority = 4
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0
scale = .5,.5
vfacing = -1

[State 191, pegasus zoom]
type = Explod
trigger1 = AnimElem = 16
anim = 6001
sprpriority = 5
pos = 7,0

[State 191, cosmo]
type = Explod
trigger1 = AnimElem = 90
anim = 905
sprpriority = -2
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1

[State 191, powter]
type = Explod
trigger1 = AnimElem = 90
pos = 5,0
anim = 7010
sprpriority = -2

[State 191]
type = EnvShake
trigger1 = AnimElem = 90
time = 60

[State 191, explosion]
type = PlaySnd
trigger1 = AnimElem = 90
value = 15,0

[State 191, voice]
type = PlaySnd
trigger1 = AnimElem = 90
value = 12,2
channel = 0

[State 191, explosions]
type = PlaySnd
trigger1 = AnimElem = 92
trigger2 = AnimElem = 94
value = 5,2

[State 191, envcolor]
type = EnvColor
trigger1 = AnimElem = 92
trigger2 = AnimElem = 94
value = 50,200,255
time = 10

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

;-------------------------------------------------
; Intro 2 (cloth 2)
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192]
type = AssertSpecial
trigger1 = Time = [0,220]
flag = Intro

[State 192] 
type = AssertSpecial
trigger1 = time = [0,150]
flag = nobardisplay

[State 192, cosmo]
type = PlaySnd
trigger1 = Animelem = 1
value = 9,0

[State 192, explosion]
type = PlaySnd
trigger1 = AnimElem = 29
value = 15,0

[State 192]
type = PlaySnd
trigger1 = time = 55
value = 5,2

[State 192, voice]
type = PlaySnd
trigger1 = AnimElem = 28
value = 12,2
channel = 0

[State 192]
type = PlaySnd
trigger1 = AnimElem = 18
value = 4,1

[State 192]
type = PlaySnd
trigger1 = AnimElem = 20
value = 4,5

[State 192]
type = PlaySnd
trigger1 = AnimElem = 22
value = 4,2

[State 192]
type = PlaySnd
trigger1 = AnimElem = 24
value = 4,6

[State 192, Darken]
type = BGPalfx
triggerAll = time <=200
trigger1 = 1
ignorehitpause = 1
time = 5
mul = 150,150,222
sinadd = 34,56,67,240
add = 5,5,5
invertall = 0

[State 192]
type = EnvShake
trigger1 = AnimElem = 29
time = 60

[State 192, cloth]
type = Explod
trigger1 = AnimElem = 1
anim = 1920
sprpriority = 1
postype = p1
pos = 5,0
bindtime = 1
supermove = 1
ownpal = 1

[State 192, cosmo cloth]
type = Explod
trigger1 = AnimElem = 1  
anim = 1921
sprpriority = -1
postype = p1
pos = 5,0
bindtime = 1
supermove = 1
ownpal = 1
scale = .8, 1
removetime = 62

[State 192, cosmo]
type = Explod
anim = 1923
ID = 1923
trigger1 = Time = 0 
sprpriority = -2
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1

[State 192]
type = RemoveExplod
trigger1 = AnimElem = 27
ID = 1923

[State 192, cosmo 2]
type = Explod
trigger1 = AnimElem = 29
anim = 905
sprpriority = -2
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1

[State 192, powter]
type = Explod
trigger1 = AnimElem = 29
pos = 5,0
anim = 7010
sprpriority = -2

[State 192, pegasus zoom]
type = Explod
trigger1 = AnimElem = 10
anim = 6001
sprpriority = 4
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1

[State 192, big light]
type = Explod
trigger1 = Animelem = 2
anim = 7032
pos = 0,5
postype = p1
sprpriority = -2
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0
scale = .5,.5

[State 192, big light]
type = Explod
trigger1 = Animelem = 2
anim = 7032
pos = 0,6
postype = p1
sprpriority = -2
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0
scale = .5,.5
vfacing = -1

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

;-------------------------------------------------
; Intro 3 
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 2]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = Intro

[State 193, PlaySnd]
type = PlaySnd
trigger1 = time = 8
value = 13,0

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

[State 192, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 0

;---------------------------------------
; Intro vs Shaina
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 194, 2]
type = AssertSpecial
trigger1 = Time = [0,610]
flag = Intro

[State 194, PlaySnd]
type = PlaySnd
trigger1 = time = 250
value = 13,2

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

[State 194, 3]
type = Changestate
trigger1 = Time = 610
value = 0

;---------------------------------------
; Intro vs Aldebaran
[Statedef 195]
type = S
ctrl = 0
anim = 195
sprpriority = 5
velset = 0,0

[State 195]
type = AssertSpecial
trigger1 = Time = [0,228]
flag = Intro

[State 195, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
value = 3,0

[State 195, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 100,1

[State 195, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 13
value = 4,4

[State 195, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 16
value = 2,3

[State 195, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 13
value = 10,2

[State 195, PlaySnd]
type = PlaySnd
trigger1 = Time = 200
value = 10,0

[State 195, Explod]
type = Explod
trigger1 = AnimElem = 13
anim = 7000
pos = 130,-95
postype = p1
bindtime = 1
removetime = 14
sprpriority = 6

[State 195]
type = Changestate
trigger1 = AnimTime = 0
value = 0

;---------------------------------------
; Intro vs Pope Ares
[Statedef 196]
type = S
ctrl = 0
anim = 189
velset = 0,0

[State 196, 1]
type = AssertSpecial
trigger1 = Time = [0,2320]
flag = Intro

[State 196, PlaySnd]
type = PlaySnd
trigger1 = time = 1680
value = 13,3

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

[State 196, 3]
type = Changestate
trigger1 = Time = 2320
value = 0
ctrl = 0

;---------------------------------------
; Provoking
[Statedef 197]
type = S
ctrl = 0
velset = 0,0

[State 197, 1]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,100

[State 197, 2]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 198

[State 197, 3]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 199

;---------------------------------------
; Provoking 1
[Statedef 198]
type = S
movetype = I
physics = S
anim = 198
velset = 0,0
sprpriority = 1
ctrl = 0

[State 198]
type = PlaySnd
trigger1 = time = 1
value = 0,2

[State 198, mouth]
type = Explod
trigger1 = AnimElem = 1
anim = 186
ID = 186
pos = 0,0
postype = p1
bindtime = 160
sprpriority = 10
removetime = 170
removeongethit = 1

[State 198]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,5
channel = 0

[State 198]
type = ChangeState
trigger1 = Time = 190
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 1981
ctrl = 1

;
[Statedef 1981]
type = S
ctrl = 0
anim = 1981
velset = 0,0
movetype = I
physics = S
sprpriority = 1
poweradd = 0

[State 1981]
type = PlaySnd
trigger1 = time = 1
value = 0,2

[State 1981]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------
; Provoking 2
[Statedef 199]
type = S
movetype = I
physics = S
anim = 199
velset = 0,0
sprpriority = 1
ctrl = 0

[State 199]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,4
channel = 0

[State 199]
type = ChangeState
trigger1 = Time = 220
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Standing LP
[Statedef 200]
type = S
movetype = A
physics = S
anim = 200
juggle = 1
velset = 0,0
ctrl = 0
poweradd = 50

[State 200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200]
type = HitDef
trigger1 = AnimElem = 2
priority = 3
attr = S, NA
damage = 20
animtype = light
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7000
sparkxy = -10,-85
hitsound = s1,0
guardsound = S6,0
pausetime = 4,4
ground.hittime = 13
ground.type = high
ground.slidetime = 9
ground.velocity = -5
air.velocity = -4,-3

[State 200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Standing LP (close)
[Statedef 205]
type = S
movetype = A
physics = S
anim = 205
juggle = 1
velset = 0,0
ctrl = 0
poweradd = 50

[State 205]
type = PlaySnd
trigger1 = Time = 5
value = 0,0

[State 205]
type = HitDef
trigger1 = Time = 0
priority = 3
attr = S, NA
damage = 20
animtype = light
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7000
sparkxy = -10,-85
hitsound = s1,2
guardsound = S6,0
pausetime = 4,4
ground.hittime = 13
ground.type = high
ground.slidetime = 9
ground.velocity = -5
air.velocity = -4,-3

[State 205]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Standing MP
[Statedef 210]
type = S
movetype = A
physics = S
anim = 210
juggle = 3
velset = 0,0
ctrl = 0
poweradd = 50

[State 210]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,1

[State 210]
type = HitDef
trigger1 = AnimElem = 7
priority = 4
attr = S, NA
damage = 30
animtype = medium
guardflag = MA
getpower = 0
givepower = 0
sparkxy = -10,-80
sparkno = S7001
hitsound = s1,1
guardsound = S6,0
pausetime = 12,12
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = -10
air.velocity = -4,-3

[State 210]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Standing HP
[Statedef 220]
type = S
movetype = A
physics = S
anim = 220
juggle = 3
velset = 0,0
ctrl = 0
poweradd = 50

[State 220, powter]
type = Explod
trigger1 = AnimElem = 3
pos = 5,0
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 220]
type = VelSet
trigger1 = AnimElem = 3
x = 15

[State 220]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

[State 220]
type = HitDef
trigger1 = AnimElem = 3
priority = 5
attr = S, NA
damage = 40
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkxy = -10,-93
sparkno = S7004
hitsound = s1,1
guardsound = S6,0
pausetime = 10,15
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = -10
air.velocity = -4,-3
envshake.time = 15 
envshake.freq = 45    
envshake.ampl = 6 
envshake.phase = 6

[State 220]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Standing HP (close)
[Statedef 225]
type = S
movetype = A
physics = S
anim = 225
velset = 0,0
ctrl = 0  
poweradd = 50

[State 225]
type = Explod
trigger1 = AnimElem = 4
anim = 8005
sprpriority = -1
postype = p1
pos = 0,0
bindtime = 1
supermove = 0
removeongethit = 1
ownpal = 1

[State 225]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 225]
type = HitDef
trigger1 = AnimElem = 5
priority = 5
attr = S, NA
damage = 40
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkxy = -15,-75
sparkno = S7002
hitsound = s1,3
guardsound = S6,0
pausetime = 12,12
ground.velocity = -5
air.velocity = -4,-3
ground.slidetime = 12
ground.hittime  = 15
ground.type = high
envshake.time = 10
envshake.freq = 15    
envshake.ampl = 6 
envshake.phase = 6

[State 225]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Standing LK
[Statedef 230]
type = S
movetype = A
physics = S
anim = 230
juggle = 1
velset = 0,0
ctrl = 0
poweradd = 50

[State 230]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0

[State 230]
type = HitDef
trigger1 = AnimElem = 3
priority = 4
attr = S, NA
damage = 20
animtype = light
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7000
sparkxy = -10,-90
hitsound = s1,0
guardsound = S6,0
pausetime = 12,12
ground.hittime = 13
ground.type = high
ground.slidetime = 9
ground.velocity = -5
air.velocity = -3,-3

[State 230]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Standing LK (close)
[Statedef 235]
type = S
movetype = A
physics = S
anim = 235
juggle = 1
velset = 0,0
ctrl = 0
poweradd = 50

[State 235]
type = VelSet
trigger1 = AnimElem = 3
x = 8

[State 235]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 235]
type = HitDef
trigger1 = AnimElem = 3
priority = 4
attr = S, NA
damage = 20
animtype = light
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7000
sparkxy = -10,-65
hitsound = s1,4
guardsound = S6,0
pausetime = 12,6
ground.hittime = 13
ground.type = low
ground.slidetime = 9
ground.velocity = -5
air.velocity = -3,-3

[State 235]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 1

;--------------------------------------------------------------
; Standing MK
[Statedef 240]
type = S
movetype = A
physics = S
anim = 240
juggle = 1
velset = 0,0
ctrl = 0
poweradd = 50

[State 240]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,1

[State 240]
type = HitDef
trigger1 = AnimElem = 4
priority = 5
attr = S, NA
damage = 30
animtype = medium
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7002
sparkxy = -10,-65
hitsound = s1,1
guardsound = S6,0
pausetime = 8,11
ground.hittime = 19
ground.type = low
ground.slidetime = 19
ground.velocity = -6
air.velocity = -4,-3

[State 240]
type = AfterImage
trigger1 = time = 4
time = 20
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 240]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Standing MK (close)
[Statedef 245]
type = S
movetype = A
physics = S
anim = 245
juggle = 2
velset = 0,0
ctrl = 0
poweradd = 50

[State 245]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,1

[State 245]
type = HitDef
trigger1 = AnimElem = 6
priority = 6
attr = S, NA
damage = 15
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkxy = -10,-80
sparkno = S7002
hitsound = s1,2
guardsound = S6,0
pausetime = 10,15
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = -16
air.velocity = -4,-3
envshake.time = 10
envshake.freq = 15
envshake.ampl = 10
envshake.phase = 10

[State 245]
type = HitDef
trigger1 = AnimElem = 9
priority = 3
attr = S, NA
damage = 15
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkxy = -10,-50
sparkno = S7001
hitsound = s1,2
guardsound = S6,0
pausetime = 3,4
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = -4,15
air.velocity = -4,-3
fall = 1
fall.damage = 15
envshake.time = 10
envshake.freq = 15
envshake.ampl = 10
envshake.phase = 10          
fall.envshake.ampl = 6       
fall.envshake.freq = 50
fall.envshake.time = 15

[State 245]
type = Turn
trigger1 = AnimTime = 0

[State 245]
type = PosAdd
trigger1 = AnimTime = 0
x = -55

[State 245]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Standing MK (far)
[Statedef 246]
type = A 
movetype = A  
physics = N
anim = 246
velset = 3.5,-2.2
poweradd = 50

[State 246]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 246]
type = VelAdd
trigger1 = Time > 0
y = .3

[State 246, powter]
type = Explod
trigger1 = Time = 1
anim = 7084
pos = 50,0
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State 246]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 30
animtype = medium
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7002
sparkxy = 0,-65
hitsound = s1,2
guardsound = S6,0
pausetime = 12,12
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = -10
air.velocity = -4,-3
envshake.time = 10
envshake.freq = 15
envshake.ampl = 10
envshake.phase = 10

[State 246]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 247

;
[Statedef 247]
type = S
movetype = I
physics = S
anim = 247
velset = 0,0

[State 247, powter]
type = Explod
trigger1 = Time = 4
anim = 7080
pos = 30,-2
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State 247, powter]
type = Explod
trigger1 = Time = 0
anim = 7080
pos = 15,-5
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State 247]
type = PosSet
trigger1 = Time = 0
y = 0

[State 247]
type = PlaySnd
trigger1 = Time = 0
value = 2,2

[State 247]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Standing HK
[Statedef 250]
type = S
movetype = A
physics = S
anim = 250
velset = 0,0
ctrl = 0 
poweradd = 50

[State 250]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 250]
type = HitDef
trigger1 = AnimElem = 4
priority = 6
attr = S, NA
damage = 40
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7002
sparkxy = -15,-84
hitsound = s1,3
guardsound = S6,0
guard.hittime = 20
guard.velocity = -20
pausetime = 12,12
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10,-0
air.velocity = -5,0
envshake.time = 10
envshake.freq = 15
envshake.ampl = 10
envshake.phase = 10

[State 250]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1   

;--------------------------------------------------------------
; Standing HK (close)
[Statedef 255]
type = S
movetype = A
physics = S
anim = 255
velset = 0,0
ctrl = 0 
poweradd = 50

[State 255]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 255]
type = HitDef
trigger1 = AnimElem = 4
priority = 6
attr = S, NA
damage = 40
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkxy = 10,-110
sparkno = S7003
hitsound = s1,3
guardsound = S6,0
pausetime = 9,12
ground.type = high
ground.velocity = 0,-15
air.velocity = 0,0
ground.hittime = 40
air.hittime = 40
fall = 1
fall.recover = 1
envshake.time = 10
envshake.freq = 15
envshake.ampl = 10
envshake.phase = 10
fall.damage = 10            
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 255]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Crouching LP
[Statedef 400]
type = C
movetype = A
physics = C
anim = 400
juggle = 1
velset = 0,0
ctrl = 0
poweradd = 50

[State 400]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 400]
type = HitDef
trigger1 = AnimElem = 2
priority = 3
attr = C, NA
damage = 20
animtype = light
guardflag = LA
getpower = 0
givepower = 0
sparkno = S7000
sparkxy = -10,-55
hitsound = s1,0
guardsound = S6,0
pausetime = 12,12
ground.hittime = 12
ground.type = low
ground.slidetime = 12
ground.velocity = -6
air.velocity = -4,-2

[State 400]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------
; Crouching MP
[Statedef 410]
type = C
movetype = A
physics = C
juggle = 5
ctrl = 0
anim = 410
sprpriority = 2
poweradd = 50

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
sparkno = S7001
sparkxy = -10,-55
hitsound   = s1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -6
air.velocity = -6,-1

[State 410]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------
; Crouching HP
[Statedef 420]
type = C
movetype = A
physics = C
juggle = 5
ctrl = 0
anim = 420
velset = 0,0
poweradd = 50

[State 420]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 420]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
damage    = 40
guardflag = MA
hitflag = MAF
getpower = 0
givepower = 0
pausetime = 10,25
sparkno = S7003
sparkxy = 20,-95
hitsound = s1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1.5,-12
air.velocity = -2,-9.5
guard.velocity = -9.0
envshake.time = 18
envshake.freq = 60
envshake.ampl = -4
yaccel = .5
air.fall = 1
fall = 1
fall.recover = 0
fall.damage = 5
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 420]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------
; Crouching LK
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
ctrl = 0
anim = 430
sprpriority = 2
poweradd = 50

[State 430]
type = PlaySnd
trigger1 = Time = 5
value = 0,0

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
sparkno = S7000
sparkxy = 0,-8
hitsound   = s1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -4
air.velocity = -3,-2
down.velocity = -1,0
down.hittime = 20

[State 430]
type = ChangeState
triggerAll = movehit >= 1
trigger1 = command = "x"
value = 431
ctrl = 1

[State 430]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------
; Crouching LK (combo)
[Statedef 431]
type    = C
movetype= A
physics = C
juggle  = 5
ctrl = 0
anim = 431
sprpriority = 2
poweradd = 50

[State 431]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
value = 0,0

[State 431]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 3
animtype  = Light
hitflag = MAFD
guardflag = LA
getpower = 0
givepower = 0
pausetime = 4,12
sparkno = S7000
sparkxy = 0,-8
hitsound   = s1,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-2
down.velocity = -1,0
down.hittime = 20
envshake.time = 5 
envshake.freq = 5    
envshake.ampl = 5  
envshake.phase = 5

[State 431]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
attr = C, NA
damage    = 3
animtype  = Light
hitflag = MAFD
guardflag = LA
getpower = 0
givepower = 0
pausetime = 4,12
sparkno = S7000
sparkxy = -20,-22
hitsound   = s1,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-2
down.velocity = -1,0
down.hittime = 20
envshake.time = 5 
envshake.freq = 5    
envshake.ampl = 5  
envshake.phase = 5

[State 431]
type = HitDef
trigger1 = AnimElem = 7
attr = C, NA
damage    = 3
animtype  = Light
hitflag = MAFD
guardflag = LA
getpower = 0
givepower = 0
pausetime = 4,12
sparkno = S7000
sparkxy = 0,-38
hitsound   = s1,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-2
down.velocity = -1,0
down.hittime = 20
envshake.time = 5 
envshake.freq = 5    
envshake.ampl = 5  
envshake.phase = 5

[State 431]
type = ChangeState
trigger1 = Time = 59
value = 432
ctrl = 1

[Statedef 432]
type    = C
movetype= I
physics = C
juggle  = 5
ctrl = 0
anim = 432
sprpriority = 2
poweradd = 50

[State 432]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------
; Crouching MK
[Statedef 440]
type = C
movetype = A
physics = C
anim = 440
juggle = 1
velset = 0,0
ctrl = 0
poweradd = 50

[State 440, powter]
type = Explod
trigger1 = Animelem = 1
anim = 7085
pos = 130,2
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 1

[State 440, powter]
type = Explod
trigger1 = Time = 0
trigger2 = Time = 5
trigger3 = Time = 10
trigger4 = Time = 15
anim = 7080
pos = 30,2
postype = p1
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 440]
type = VelAdd
trigger1 = AnimElem = 2
x = 20

[State 440]
type = PlaySnd
trigger1 = Time = 0
value = 9,2

[State 440]
type = HitDef
trigger1 = AnimElem = 2
priority = 5
attr = C, NA
damage = 40
animtype = hard
hitflag = MAFD
guardflag = LA
getpower = 0
givepower = 0
sparkno = S7000
sparkxy = 0,-10
hitsound = s1,1
guardsound = S6,0
pausetime = 12,12
ground.hittime = 19
ground.type = trip
ground.slidetime = 19
ground.velocity = -10
air.velocity = -4,-3
envshake.time = 10
envshake.freq = 15
envshake.ampl = 10
envshake.phase = 10
fall = 1

[State 440]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------
; Crouching HK
[Statedef 450]
type    = C
movetype= A
physics = C
velset = 0,0
juggle  = 7
ctrl = 0
anim = 450
sprpriority = 2
poweradd = 50

[State 450]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 450]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
hitflag = MAFD
guardflag = LA
getpower = 0
givepower = 0
pausetime = 12,12
sparkno = S7002
sparkxy = 10,-5
hitsound   = s1,2
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -2
air.velocity = -2,-1
guard.velocity = -5
envshake.time = 15
envshake.freq = 35
envshake.ampl = 6
envshake.phase = 6
fall.recover = 0
fall.damage = 0
fall.envshake.ampl = 6
fall.envshake.freq = 50
fall.envshake.time = 15
Fall = 1

[State 450]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------
; Crouching HP (far)
[Statedef 460]
type = C
movetype = A
physics = C
anim = 460
juggle = 2
velset = 0,0
ctrl = 0
poweradd = 50

[State 460]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,4

[State 460]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1

[State 460, light]
type = Explod
trigger1 = AnimElem = 3
anim = 7063
ID = 7063
pos = -25,30
postype = p1
sprpriority = 2
supermove = 1
removetime = 30
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 460, cosmo]
type = Explod
trigger1 = Time = 0
anim = 463
pos = 0,0
postype = p1
sprpriority = -4
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 460]
type = Projectile
trigger1 = AnimElem = 3
attr = C, NP
projanim = 8000
projhitanim = 70601
offset = -20,30
velocity = 7,0
damage = 10
animtype = light
guardflag = LA
getpower = 0
givepower = 0
pausetime = 0,0
sparkno = s8001
sparkxy = 100,-75
guard.sparkno = -1
hitsound   = s1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10

[State 460]
type = Projectile
trigger1 = AnimElem = 6
attr = C, NP
projanim = 8000
projhitanim = 70601
offset = -20,30
velocity = 10,0
damage = 10
animtype = light
guardflag = LA
getpower = 0
givepower = 0
pausetime = 0,0
sparkno = s8001
sparkxy = 100,-75
guard.sparkno = -1
hitsound   = s1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10

[State 460]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------
; Jumping LP
[Statedef 600]
type = A
movetype = A
physics = A
juggle = 4
ctrl = 0
anim = 600
sprpriority = 2
poweradd = 50

[State 600]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
getpower = 0
givepower = 0
priority = 4
pausetime = 12,12
sparkno = S7000
sparkxy = -10,-85
hitsound   = s1,0
guardsound = S6,0
animtype = light
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -3
air.velocity = -3,-4

;--------------------------------------------------------------
; Jumping MP
[Statedef 610]
type = A
movetype = A
physics = A
juggle = 4
ctrl = 0
anim = 610
sprpriority = 2
poweradd = 50

[State 610]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

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
sparkno = S7001
sparkxy = -10,-75
hitsound   = s1,2
guardsound = S6,0
animtype = Medium
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4
air.velocity = -3,-4

;--------------------------------------------------------------
; Jumping HP
[Statedef 620]
type = A
movetype = A
physics = A
juggle = 2
anim = 620
ctrl = 0
poweradd = 50

[State 620]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

[State 620]
type = HitDef
trigger1 = Time = 0
priority = 4
attr = A, NA
damage = 40
animtype = hard
guardflag = HA
getpower = 0
givepower = 0
sparkno = S7002
sparkxy = -10,-40
hitsound = s1,1
guardsound = S6,0
pausetime = 12,12
ground.hittime = 19
ground.type = high
ground.slidetime = 9
ground.velocity = -5
air.velocity = -3,-3
envshake.time = 15
envshake.freq = 15    
envshake.ampl = 5  
envshake.phase = 5

[State 620]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;--------------------------------------------------------------
; Jumping LK
[Statedef 630]
type = A
movetype = A
physics = A
juggle = 1
anim = 630
ctrl = 0
poweradd = 50

[State 630]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 630]
type = HitDef
trigger1 = Time = 0
priority = 4
attr = A, NA
damage = 30
animtype = light
guardflag = HA
getpower = 0
givepower = 0
sparkno = S7001
sparkxy = -10,-85
hitsound   = s1,2
guardsound = S6,0
pausetime = 12,12
ground.hittime = 13
ground.type = high
ground.slidetime = 9
ground.velocity = -5
air.velocity = -3,-3

[State 630, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;--------------------------------------------------------------
; Jumping MK 
[Statedef 640]
type = A
movetype = A
physics = A
juggle = 4
ctrl = 0
anim = 640
sprpriority = 2
poweradd = 50

[State 640]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 640]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
getpower = 0
givepower = 0
priority = 4
pausetime = 12,12
sparkno = S7000
sparkxy = -10,-35
hitsound = s1,4
guardsound = S6,0
animtype = medium
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4
air.velocity = -3,-4

;--------------------------------------------------------------
; Jumping HK
[Statedef 650]
type = A
movetype = A
physics = A
juggle = 2
anim = 650
ctrl = 0
poweradd = 50

[State 650]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 650]
type = HitDef
trigger1 = AnimElem = 3
priority = 6
attr = A, NA
damage = 40
animtype = hard
guardflag = HA
getpower = 0
givepower = 0
sparkno = S7002
sparkxy = -10,-110
hitsound = s1,1
guardsound = S6,0
pausetime = 12,12
ground.hittime = 19
ground.type = high
ground.slidetime = 9
ground.velocity = -4,-5
air.velocity = -6,-6
envshake.time = 10 
envshake.freq = 15    
envshake.ampl = 5  
envshake.phase = 5

[State 650]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;--------------------------------------------------------------
; Throw
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800

[State 800]
type = PlaySnd
trigger1 = time = 0
value = 0,1

[State 800]
type = HitDef
trigger1 = Time = 0
attr = S, NT
hitflag = M-
getpower = 0
givepower = 0
sparkno = -1
priority = 3, Miss  
pausetime = 25,25
p2facing = 1
p1stateno = 810
p2stateno = 820
hitsound = S8,0
fall.damage = 60 
fall.envshake.ampl = 6       
fall.envshake.freq = 25
fall.envshake.time = 55

[State 800]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
sprpriority = 2
poweradd = 50

[State 810]
type = PlaySnd
trigger1 = time = 0
value = 2,1

[State 810, voice]
type = PlaySnd
trigger1 = Time = 0
value = 12,0

[State 810]
type = PosAdd
trigger1 = animelem = 4
x = -10

[State 810]
type = Velset
trigger1 = animelem = 8
x = 4
y = -5

[State 810]
type = Velset
trigger1 = animelem = 11
x = 0
y = 0

[State 810]
type = Posset
trigger1 = animelem = 11
y = 0

[State 810]
type = TargetBind
trigger1 = AnimElem = 1, > 0
trigger1 = AnimElem = 3, < 0
pos = 25, -5

[State 810]
type = TargetBind
trigger1 = AnimElem = 4, > 0
trigger1 = AnimElem = 5, < 0
pos = -5, -7

[State 810]
type = TargetBind
trigger1 = AnimElem = 5
pos = -35, 0

[State 810]
type = TargetBind
trigger1 = AnimElem = 5, > 0
trigger1 = AnimElem = 6, < 0
pos = -20, 5

[State 810]
type = TargetBind
trigger1 = AnimElem = 6, > 0
trigger1 = AnimElem = 7, < 0
pos = 0, -2

[State 810]
type = TargetBind
trigger1 = AnimElem = 7, > 0
trigger1 = AnimElem = 8, < 0
pos = 20, -15

[State 810]
type = TargetState
trigger1 = AnimElem = 1; 1
value = 821

[State 810]
type = Sprpriority
trigger1 = Animelem = 8, >= 0
trigger1 = Animelem = 10, < 0
value = 1

[State 810]
type = EnvShake
trigger1 = AnimElem = 11
time = 20
ampl = 4

[State 810]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 820]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[State 810]
type = Veladd
trigger1 = AnimElem = 4
y = 14
x = 10

[State 820]
type = HitBy
trigger1 = 1
value = SCA
time = 1

[State 820]
type = Sprpriority
trigger1 = Animelem = 5
trigger1 = Animelem = 7
value = 2

;
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 821] ;Hit ground
type = SelfState
trigger1 = time = 0;5;Vel Y > 0
value = 5050;5100 ;Hit ground

;---------------------------------------
; Cosmo Charge (start)
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
var(10) = 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 9, 1

[State 900, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,2
channel = 0

[State 900, envshake]
type = EnvShake
trigger1 = AnimElem = 2
time = 40

[State 900]
type = ChangeState
trigger1 = AnimTime= 0
value = 901

;---------------------------------------
; Cosmo Charge (charging)
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901

[State 901, shine]
type = PalFX
trigger1 = AnimElem = 2
time = 15
add = 0,0,0
sinadd = 100,200,100,3

[State 901]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9,2

[State 901, pegasus]
type = Explod
triggerall = NumExplod(6001) = 0
trigger1 = NumExplod(6000) = 0
anim = 6000
ID = 6000
sprpriority = -5
postype = p1
pos = 0,0
bindtime = -1
removetime = -1
removeongethit = 1
supermove = 1
ownpal = 1

[State 901, powter]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = 1
pos = 1,0
anim = 7010
ID = 131
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1

[State 901, powter]
type = Explod
triggerall = NumExplod(170) = 0
trigger1 = 1
pos = 0,1
anim = 7020
ID = 170
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = .8, .8

[State 901, powter]
type = Explod
triggerall = NumExplod(7030) = 0
trigger1 = 1
pos = 0,5
anim = 7030
ID = 7030
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = -1
scale = .5,.5

[State 901, powter]
type = Explod
triggerall = NumExplod(7031) = 0
trigger1 = 1
pos = 0,6
anim = 7031
ID = 7031
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = -1
scale = .5,.5
vfacing = -1

[State 901]
type = PowerAdd
trigger1 = time > 0
value = 5

[State 901, cosmo]
type = Explod
triggerall = NumExplod(903) = 0
trigger1 = 1
pos = 2,0
anim = 903
ID = 903
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1

[State 901]
type = ChangeState
triggerall = Var(59) = 0
trigger1 = command != "charge1"
trigger2 = command != "charge2"
value = 902

[State 901]
type = ChangeState
triggerall = time >= 1
triggerall = Var(59) = 1
trigger1 = random <= 10
value = 902
ctrl = 1

[State 901]
type = ChangeState
trigger1 = power >= 3000
value = 902

[State 901]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

;--------------------------------------------------------
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

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(131) >= 1
trigger1 = time = 0
ID = 131

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(170) >= 1
trigger1 = time = 0
ID = 170

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(6001) >= 1
trigger1 = time = 0
ID = 6001

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(6000) >= 1
trigger1 = time = 0
ID = 6000

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(903) >= 1
trigger1 = time = 0
ID = 903

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7030) >= 1
trigger1 = time = 0
ID = 7030

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7031) >= 1
trigger1 = time = 0
ID = 7031

[State 902]
type = PalFX
triggerall = power >= 3000
trigger1 = time = 1
time = 15
add = 0,0,0
sinadd = 200,200,200,3

[State 902]
type = EnvShake
triggerall = power >= 3000
trigger1 = time = 0
time = 64

[State 902]
type = PlaySnd
triggerall = power >= 3000
trigger1 = time = 1
value = 9,3

[State 902]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Super Guard by Tux
[Statedef 950]
type = S
physics = S
anim = 950
juggle = 5
velset = 0,0
ctrl = 0

[State 950]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 950]
type = ReversalDef
trigger1 = time = 0
reversal.attr = S, NA
p1stateno = 951
hitsound = s1,2
sparkno = -1
sparkxy = 0,0
pausetime = 2,50

[State 950]
type = ChangeState
trigger1 = Time = 25
value = 953
ctrl = 1

;
[Statedef 951]
type = S
movetype = I
physics = S
anim = 951
poweradd = 100
juggle = 5
velset = 0,0
ctrl = 0

[State 951]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 15
trigger3 = Time = 30
value = 5,2

[State 951]
type = Explod
triggerall = NumExplod(954) = 0
trigger1 = Time = 40
anim = 954
ID = 954
pos = 0,0
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
ownpal = 1
removeongethit = 1

[State 951]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = MoveContact = 1
anim = 7011
ID = 131
pos = 30,-88
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
ownpal = 1
removeongethit = 1

[State 951]
type = Explod
triggerall = NumExplod(110) = 0
trigger1 = Time = 40
anim = 70091
ID = 110
pos = 0,-78
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
ownpal = 1
removeongethit = 1

[State 951]
type = ChangeState
trigger1 = Time = 40
value = 952
ctrl = 0

;
[Statedef 952]
type = S
movetype = A
physics = S
anim = 952
poweradd = 100
juggle = 5
velset = 0,0
ctrl = 0

[State 952]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,6
channel = 0

[State 952]
type = Explod
trigger1 = AnimElem = 2
anim = 905
sprpriority = -2
postype = p1
pos = 0,0
bindtime = -1
supermove = 1
ownpal = 1

[State 952]
type = PlaySnd
trigger1 = AnimElem = 3
value = 15,0

[State 952]
type = HitDef
trigger1 = AnimElem = 3
priority = 5
attr = S, NA
damage = 80
animtype  = Up
getpower = 0
givepower = 0
sparkno = -1
hitsound = -1
guardsound = -1
pausetime = 1,1
ground.hittime = 1
ground.type = High
ground.slidetime = 1
ground.velocity = -5,-12
air.velocity = -5,-12
envshake.time = 20
envshake.freq = 50    
envshake.ampl = 25
envshake.phase = 25
fall = 1
fall.recover = 0
fall.damage = 60
fall.envshake.ampl = 10       
fall.envshake.freq = 50
fall.envshake.time = 10          
yaccel = .8 
p2stateno = 1029

[State 952]
type = EnvColor
trigger1 = AnimElem = 3
value = 50,200,255
under = 0
time = 10

[State 952]
type = Explod
triggerall = NumExplod(903) = 0
trigger1 = AnimElem = 3
anim = 903
ID = 903
postype = p1
pos = 2,0
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 150

[State 952, powter]
type = Explod
trigger1 = AnimElem = 3
anim = 7010
postype = p1
pos = 5,0
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 48

[State 952]
type = RemoveExplod
triggerall = NumExplod(903) >= 1
trigger1 = Time = 150
ID = 903

[State 952]
type = ChangeState
trigger1 = Time = 150
value = 0
ctrl = 1

;
[Statedef 953]
type = S
physics = S
anim = 953
juggle = 5
velset = 0,0
ctrl = 0

[State 953]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 953]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
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
trigger1 = time = 10
flag = nomusic
persistent = 1

[State 999]
type = SuperPause
trigger1 = time = 10
time = 20
anim = s70091
pos = 4,-48
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

[State 999, cosmo]
type = Explod
triggerall = NumExplod(904) = 0
trigger1 = AnimElem = 8
pos = 0,0
anim = 904
ID = 904
sprpriority = -2
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 999, voice]
type = PlaySnd
trigger1 = Time = 0
value = 12,2
channel = 0

[State 999]
type = VarSet
trigger1 = command = "SuiSeiKen"
var(9) = 1

[State 999]
type = ChangeState
trigger1 = AnimTime = 0
value = 997
ctrl = 1

;---------------
[Statedef 997]
type    = S
movetype = I
physics = S
anim = 902
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 997, removeEX]
type = RemoveExplod
triggerall = NumExplod(131) >= 1
trigger1 = AnimElem = 1
ID = 131

[State 997, removeEX]
type = RemoveExplod
triggerall = NumExplod(7032) >= 1
trigger1 = AnimElem = 1
ID = 7032

[State 997]
type = ChangeState
triggerall = var(9) = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 997]
type = ChangeState
triggerall = var(9) = 1
trigger1 = AnimTime = 0
value = 3200
ctrl = 0

;--------------------------------------------------------------
; Special Moves
;--------------------------------------------------------------

; Pegasus Meteors 1
[Statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
juggle = 3
velset = 0,0
ctrl = 0
poweradd = 60

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 1000, kiai]
type = PlaySnd
trigger1 = AnimElem = 3
value = 12,3

[State 1000, light]
type = Explod
trigger1 = AnimElem = 3
anim = 7063
ID = 7063
pos = 8,-3
postype = p1
sprpriority = 2
supermove = 0
removetime = 10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 1000]
type = Projectile
trigger1 = AnimElem = 4
attr = S, SP
ignorehitpause = 1
projanim = 8000
projhitanim = 70601
offset = 0,-3
velocity = 15,0
damage = 10,1
animtype = Hard
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,0
sparkno = s8011
sparkxy = 80,-80
guard.sparkno = -1
hitsound   = s1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
projremove = 1
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10

[State 1000, cosmo]
type = Explod
trigger1 = AnimElem = 1
anim = 1003
ignorehitpause = 1
sprpriority = -2
postype = p1
pos = 0,0
bindtime = 1
supermove = 0
removeongethit = 1
ownpal = 1

[State 1000, kiai]
type = PlaySnd
trigger1 = AnimElem = 12
value = 12,3

[State 1000, light]
type = Explod
trigger1 = AnimElem = 11
anim = 7063
ID = 7063
pos = 0,-2
postype = p1
sprpriority = 2
supermove = 0
removetime = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1

[State 1000]
type = RemoveExplod
trigger1 = AnimElem = 26
ID = 7063

[State 1000]
type = Projectile
trigger1 = AnimElem = 12
trigger2 = AnimElem = 16
attr = S, SP
ignorehitpause = 1
projanim = 8000
projhitanim = 70601
offset = 0,-3
velocity = 10,0
damage = 10,1
animtype = Hard
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,0
sparkno = s8011
sparkxy = 80,-80
guard.sparkno = -1
hitsound   = s1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
projremove = 1
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10

[State 1000]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Pegasus Meteors 2
[Statedef 1010]
type = S
movetype = A
physics = S
anim = 1010
juggle = 5
poweradd = 60
velset = 0,0
ctrl = 0

[State 1010, 1]
type = PlaySnd
trigger1 = Time = 5
value = 5,4

[State 1010, 2]
type = PlaySnd
trigger1 = Time = 0
value = 12,1

[State 1010, light]
type = Explod
trigger1 = AnimElem = 6
anim = 7063
ID = 7063
pos = 24,10
postype = p1
sprpriority = 2
removetime = 10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 1010, 3]
type = Projectile
trigger1 = AnimElem = 7
attr = S, SP
projanim = 8004
projhitanim = 70602
offset = 100,-70
velocity = 7,0
damage = 70,7
animtype = Hard
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8011
sparkxy = 70,-20
guard.sparkno = -1
hitsound   = s1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
envshake.time = 15
envshake.freq = 18
envshake.ampl = 13
envshake.phase = 13

[State 1010, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Pegasus Meteors 3
[Statedef 1020]
type = S
movetype = A
physics = S
anim = 1020
juggle = 3
velset = 0,0
ctrl = 0
poweradd = 60

[State 1020]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 1020, kiai]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,3

[State 1020, kiai]
type = PlaySnd
trigger1 = AnimElem = 39
value = 12,4

[State 1020, cosmo]
type = Explod
trigger1 = time = 0
ignorehitpause = 1
anim = 1023
pos = 0,0
postype = p1
sprpriority = -2
supermove = 0
ownpal = 1
bindtime = -1
removeongethit = 1

[State 1020, light]
type = Explod
trigger1 = AnimElem = 11
trigger2 = AnimElem = 27
trigger3 = AnimElem = 45
ignorehitpause = 1
anim = 7063
ID = 7063
pos = 0,-2
postype = p1
sprpriority = 2
supermove = 0
ownpal = 1
bindtime = -1
removeongethit = 1

[State 1020, light]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 21
trigger3 = AnimElem = 39
ignorehitpause = 1
anim = 7063
ID = 7063
pos = 8,-4
postype = p1
sprpriority = 2
supermove = 0
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 3

[State 1020]
type = Projectile
trigger1 = AnimElem = 3
trigger2 = AnimElem = 21
trigger3 = AnimElem = 39
attr = S, SP
projanim = 8000
projhitanim = 70601
offset = 0,-3
velocity = 15,0
damage = 5,1
animtype = Hard
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,0
sparkno = s8011
sparkxy = 80,-80
guard.sparkno = -1
hitsound   = s1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10

[State 1020]
type = Projectile
trigger1 = AnimElem = 11
trigger2 = AnimElem = 29
trigger3 = AnimElem = 47
attr = S, SP
projanim = 8000
projhitanim = 70601
offset = 0,-3
velocity = 15,0
damage = 6,1
animtype = Hard
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,0
sparkno = s8011
sparkxy = 80,-80
guard.sparkno = -1
hitsound   = s1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10

[State 1020]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
;player2 hit
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

;------------------
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
value = 1,1

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

; explosion spin animation
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

[State 1029] 
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = time = 150
value = 5100

;--------------------------------------------------------------
; Elbow Dash
[Statedef 1100]
type = S
movetype = A
physics = S
anim = 1100
juggle = 5
velset = 0,0
ctrl = 0
poweradd = 100

[State 1100]
type = AfterImage
trigger1 = time = 0
time = 15
FrameGap = 1
length = 10
PalBright = 0,0,0
PalContrast = 128,128,200
PalAdd = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 1100, powter]
type = Explod
trigger1 = Animelem = 3
anim = 7084
pos = 30,0
postype = p1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 1100, voice]
type = PlaySnd
trigger1 = Time = 0
value = 12,1

[State 1100]
type = PlaySnd
trigger1 = Time = 0
value = 2,1

[State 1100]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 3

[State 1100]
type = VelAdd
trigger1 = AnimElem = 2
x = 1

[State 1100]
type = VelAdd
trigger1 = AnimElem = 3
x = 15

[State 1100]
type = HitDef
trigger1 = AnimElem = 4
priority = 4
attr = S, SA
damage = 80,8
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7001
sparkxy = -10,-100
hitsound = s1,3
guardsound = S6,0
pausetime = 13,15
ground.hittime = 19
ground.type = high
ground.slidetime = 9
ground.velocity = -7
air.velocity = -2,-8
envshake.time = 15           
envshake.ampl = 7
envshake.freq = 55

[State 1100]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Flying Uppercut
[Statedef 1200]
type = S
movetype = A
physics = S
anim = 1200
juggle = 5
velset = 0,0
ctrl = 0
poweradd = 100

[State 1200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A
movetype = A
physics = N

[State 1200]
type = Explod
trigger1 = AnimElem = 3
anim = 7060
pos = 20,-60
postype = p1
sprpriority = 3
bindtime = 21
removetime = 21
ownpal = 1
supermove = 1
removeongethit = 1

[State 1200, powter]
type = Explod
trigger1 = Animelem = 1
anim = 7089
pos = 30,5
postype = p1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 1200]
type = VelMul
trigger1 = AnimElem = 3
y = -8

[State 1200]
type = VelAdd
trigger1 = AnimElem = 3
y = -8

[State 1200]
type = VelAdd
trigger1 = AnimElem = 8
y = 0.45

[State 1200, voice]
type = PlaySnd
trigger1 = Time = 0
value = 12,4

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 9
value = 0,3

[State 1200]
type = HitDef
trigger1 = Time = 11
priority = 4
attr = A, SA
damage = 80,8
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7001
sparkxy = -10,-110
hitsound = s1,1
guardsound = S6,0
pausetime = 12,12
ground.hittime = 19
ground.type = high
ground.slidetime = 9
ground.velocity = 0,-20
air.velocity = 0,-20
fall = 1
envshake.time = 15
envshake.ampl = 7
envshake.freq = 76
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0

;--------------------------------------------------------------
; Flying Uppercut (air)
[Statedef 1201]
type = A
movetype = A
physics = A
anim = 1201
velset = 0,-9
poweradd = 100
ctrl = 0

[State 1201]
type = Explod
trigger1 = Time = 0
anim = 7060
pos = 20,-60
postype = p1
sprpriority = 3
bindtime = 15
removetime = 15
ownpal = 1
supermove = 1
removeongethit = 1

[State 1201]
type = HitDef
trigger1 = Time = 0
priority = 6
attr = A, SA
damage = 80,8
animtype = hard
guardflag = HA
getpower = 0
givepower = 0
sparkno = S7001
sparkxy = -10,-110
hitsound = s1,1
guardsound = S6,0
pausetime = 12,12
ground.hittime = 19
ground.type = high
ground.slidetime = 9
ground.velocity = 0,-15
air.velocity = 0,-15
envshake.time = 10
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
fall = 1
envshake.time = 15
envshake.ampl = 7
envshake.freq = 76
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1201, voice]
type = PlaySnd
trigger1 = Time = 0
value = 12,4

[State 1201]
type = PlaySnd
trigger1 = Time = 0
value = 0,3

[State 1201, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A
movetype = I
physics = A

;--------------------------------------------------------------
; Pegasus Kick 1
[Statedef 1300]
type = S
movetype = A
physics = S
anim = 1300
juggle = 2
velset = 0,0
ctrl = 0
poweradd = 100

[State 1300, voice]
type = PlaySnd
trigger1 = Time = 0
value = 12,0

[State 1300]
type = PosAdd
trigger1 = AnimElem = 2
x = 0

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

[State 1300]
type = HitDef
trigger1 = AnimElem = 4
priority = 6
attr = S, SA
damage = 80,8
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7001
sparkxy = 0,-100
hitsound = s1,1
guardsound = S6,0
pausetime = 25,10
ground.hittime = 16
ground.type = high
ground.slidetime = 5
ground.velocity = -6,-6;0
air.velocity = -7,0
p2stateno = 1025
envshake.time = 10
envshake.freq = 15
envshake.ampl = 10
envshake.phase = 10
fall.damage = 10
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1300]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Pegasus Kick 2
[Statedef 1301]
type = S
movetype = A
physics = S
anim = 1301
juggle = 2
velset = 0,0
ctrl = 0
poweradd = 100

[State 1301, voice]
type = PlaySnd
trigger1 = Time = 0
value = 12,1

[State 1301, powter]
type = Explod
trigger1 = Animelem = 1
anim = 70891
pos = 0,-1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0
bindtime = -1

[State 1301, powter]
type = Explod
trigger1 = Animelem = 5
anim = 7010
pos = 0,-2
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removeongethit = 1

[State 1301, Lampi]
type = Explod
trigger1 = AnimElem = 4
triggerall = NumExplod(7060) = 0
anim = 7060
ID = 7060
pos = 58,-20
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 100

[State 1301, removeEX]
type = RemoveExplod
triggerall = NumExplod(7060) = 1
trigger1 = AnimElem = 17
ID = 7060

[State 1301]
type = PosAdd
trigger1 = AnimElem = 2
x = 0

[State 1301]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

[State 1301]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
attr = S, SP
ignorehitpause = 1
projanim = 8002
projhitanim = 7062
offset = -20,-5
velocity = 15,-8
damage = 7,1
animtype = Hard
guardflag = MA
getpower = 0
givepower = 0
pausetime = 12,0
sparkno = s8001
sparkxy = 95,-95
guard.sparkno = -1
hitsound   = s1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
envshake.time = 10
envshake.freq = 15
envshake.ampl = 10
envshake.phase = 10

[State 1301]
type = Projectile
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
trigger3 = AnimElem = 9
trigger4 = AnimElem = 11
attr = S, SP
ignorehitpause = 1
projanim = 8002
projhitanim = 7062
offset = -20,5
velocity = 16,-7
damage = 7,1
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
pausetime = 12,3
sparkno = s8001
sparkxy = 95,-95
guard.sparkno = -1
hitsound   = s1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
fall = 1
fall.damage = 10 
envshake.time = 10
envshake.freq = 15
envshake.ampl = 10
envshake.phase = 10
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1301, lampi]
type = BGPalfx
trigger1 = time = 15
ignorehitpause = 1
time = 30
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 1301]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Pegasus Kick 3
[Statedef 1302]
type = S
movetype = A
physics = S
anim = 1300
juggle = 2
velset = 0,0
ctrl = 0
poweradd = 100

[State 1302, voice]
type = PlaySnd
trigger1 = Time = 0
value = 12,0

[State 1302]
type = PosAdd
trigger1 = AnimElem = 2
x = 0

[State 1302, shine]
type = PalFX
trigger1 = AnimElem = 2
time = 10
add = 0,0,0
sinadd = 100,100,200,3

[State 1302]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

[State 1302]
type = HitDef
trigger1 = AnimElem = 4
priority = 6
attr = S, SA
damage = 23,2
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7001
sparkxy = 0,-100
hitsound = s1,1
guardsound = S6,0
pausetime = 25,10
ground.hittime = 16
ground.type = high
ground.slidetime = 5
ground.velocity = -8,-6
air.velocity = -7,0
p2stateno = 1025
envshake.time = 10
envshake.freq = 15
envshake.ampl = 10
envshake.phase = 10
fall.damage = 10            
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1302]
type = ChangeState
trigger1 = movehit = 1
value = 1301
ctrl = 1

[State 1302]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Aerial Combo
[Statedef 1400]
type = S
movetype = A
physics = S
anim = 1400
juggle = 5
velset = 0,0
ctrl = 0
poweradd = 100

[State 1400]
type = VelAdd
trigger1 = Time = 4
y = -5
x = 4

[State 1400, voice]
type = PlaySnd
trigger1 = Time = 0
value = 12,3

[State 1400, powter]
type = Explod
trigger1 = Animelem = 3
anim = 7089
pos = 30,5
postype = p1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 1400, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A
movetype = A
physics = N

[State 1400]
type = HitDef
trigger1 = AnimElem = 4
priority = 4
attr = A, SA
damage = 35,3
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7001
sparkxy = -10,-95
hitsound = s1,3
guardsound = S6,0
pausetime = 12,12
ground.hittime = 19
ground.type = high
ground.slidetime = 9
ground.velocity = -4,-15
air.velocity = -3,-3
fall = 1
envshake.time = 15
envshake.ampl = 7
envshake.freq = 76
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1400]
type = ChangeState
trigger1 = AnimTime = 0
value = 1401

;----------------------------------
[Statedef 1401]
type = A
movetype = A
physics = N
anim = 1401
velset = 5,-13

[State 1401]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1401]
type = PlaySnd
trigger1 = Time = 0
value = 9,3

[State 1401]
type = HitDef
trigger1 = AnimElem = 3
priority = 5
attr = A, SA
damage = 25,2
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7000
sparkxy = -10,-75
hitsound = s1,3
guardsound = S6,0
pausetime = 12,12
ground.hittime = 19
ground.type = high
ground.slidetime = 9
ground.velocity = -3,-10
air.velocity = -3,-3
fall = 1
envshake.time = 15
envshake.ampl = 7
envshake.freq = 76
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1401, voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 12,4

[State 1401, 4]
type = HitDef
trigger1 = AnimElem = 8
priority = 6
attr = A, SA
damage = 30,3
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7002
sparkxy = -55,-30
hitsound = s1,3
guardsound = S6,0
pausetime = 12,10
ground.hittime = 19
ground.type = high
ground.slidetime = 9
ground.velocity = -3
air.velocity = -7,15
fall = 1
envshake.time = 15
envshake.ampl = 7
envshake.freq = 76
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1401]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 1401, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 9
statetype = A
movetype = I
physics = A

[State 1401]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52

;--------------------------------------------------------------
; Tackle
[Statedef 1500]
type = A
movetype = A
physics = N
anim = 1500
velset = 0,-3.2
poweradd = 100
ctrl = 0

[State 1500]
type = VelSet
trigger1 = Time > 0
x = 5.3

[State 1500]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1500, powter]
type = Explod
trigger1 = Time = 2
anim = 7084
pos = 25,6
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 1500]
type = HitDef
trigger1 = AnimElem = 2
priority = 5
attr = A, SA
damage = 25,2
animtype = light
guardflag = MA
getpower = 0
givepower = 0
sparkno = S7000
sparkxy = -10,-70
hitsound = s1,1
guardsound = S6,0
pausetime = 12,12
ground.hittime = 19
ground.type = low
ground.slidetime = 16
ground.velocity = -11
air.velocity = -7,-3
envshake.time = 15           
envshake.ampl = 7
envshake.freq = 76

[State 1500, voice]
type = PlaySnd
trigger1 = Time = 0
value = 12,0

[State 1500]
type = PlaySnd
trigger1 = Time = 2
value = 0,3

[State 1500]
type = ChangeState
trigger1 = Pos y > 0
trigger1 = Vel Y > 0
value = 1501
ctrl = 1

;---------------------
[Statedef 1501]
type = C
movetype = A
physics = N
anim = 1501
poweradd = 0
ctrl = 0

[State 440, powter]
type = Explod
trigger1 = Animelem = 2
anim = 7085
pos = 130,2
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 1

[State 440, powter]
type = Explod
trigger1 = Time = 3
trigger2 = Time = 8
trigger3 = Time = 13
trigger4 = Time = 18
anim = 7080
pos = 30,2
postype = p1
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 1501]
type = CtrlSet
trigger1 = Time = 0
value = 0

[State 1501]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1501]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1501]
type = HitDef
trigger1 = AnimElem = 3
priority = 6
attr = C, SA
damage = 55,5
animtype = hard
hitflag = MAFD
guardflag = LA
getpower = 0
givepower = 0
sparkno = S7001
sparkxy = -10,0
hitsound = s1,1
guardsound = S6,0
pausetime = 20,6
ground.hittime = 19
ground.type = trip
ground.slidetime = 16
ground.velocity = -5,-2
air.velocity = -3,-3
fall = 1
envshake.time = 15           
envshake.ampl = 7
envshake.freq = 76
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1501]
type = PlaySnd
trigger1 = Time = 0
value = 2,2

[State 1501]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------
; Pegasus Flying Kick
[Statedef 1600]
type = A
movetype = A
physics = A
anim = 1600
juggle = 2
ctrl = 0
poweradd = 100

[State 1600, afterimage]
type = AfterImage
trigger1 = time = 0
time = 40
FrameGap = 2
length = 10
PalBright = 10,10,10
PalContrast = 98,98,98
Trans = Add1

[State 1600]
type = PlaySnd
trigger1 = AnimElem = 3
value = 12,3

[State 1600]
type = VelSet
trigger1 = AnimElem = 4
x = 18
y = 13

[State 1600, wings]
type = Explod
trigger1 = AnimElem = 3
anim = 8081
ID = 8081
pos = 0,0
postype = p1
sprpriority = -2
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
persistent = 0
removetime = -1

[State 1600, cosmo]
type = Explod
trigger1 = AnimElem = 4
anim = 1603
ID = 1603
pos = 0,0
postype = p1
sprpriority = -2
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
persistent = 0
removetime = -1

[State 1600]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1

[State 1600, 3]
type = HitDef
trigger1 = AnimElem = 4
priority = 7
attr = A, SA
damage = 80,8
animtype = hard
guardflag = HA
getpower = 0
givepower = 0
sparkxy = -10,0
sparkno = S7002
hitsound = s1,2
guardsound = S6,0
pausetime = 18,18
ground.hittime = 19
ground.type = high
ground.slidetime = 9
ground.velocity = -8,2
air.velocity = -8,2
envshake.time = 20 
envshake.freq = 15    
envshake.ampl = 5  
envshake.phase = 5
fall = 1

[State 1600, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;--------------------------------------------------------------
; Missile Kick
[Statedef 1700]
type = A
movetype = A
physics = A
anim = 1700
ctrl = 0
poweradd = 100

[State 1700, afterimage]
type = AfterImage
trigger1 = time = 0
time = 25
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 107,107,222
PalAdd = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 1700, light]
type = Explod
trigger1 = AnimElem = 5
anim = 7034
ID = 7034
pos = 0,5
postype = p1
sprpriority = 3
supermove = 1
removetime = 20
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .5,.5

[State 1700, light]
type = Explod
trigger1 = AnimElem = 5
anim = 7034
ID = 7034
pos = 0,6
postype = p1
sprpriority = 3
supermove = 1
removetime = 20
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .5,.5
vfacing = -1

[State 1700]
type = SuperPause
trigger1 = Time = 0
time = 15
anim = -1
movetime = 15
darken = 0

[State 1700]
type = VelSet
trigger1 = AnimElem = 5
y = 14

[State 1700]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 1700]
type = PlaySnd
trigger1 = Time = 0
value = 12,4

[State 1700]
type = HitDef
trigger1 = AnimElem = 5
priority = 2
attr = A, SA
damage = 80,8
animtype = hard
guardflag = HA
getpower = 0
givepower = 0
sparkno = S7001
sparkxy = 0,-10
hitsound = s1,3
guardsound = S6,0
pausetime = 12,10
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0
envshake.time = 55           
envshake.ampl = 7
envshake.freq = 25
fall.damage = 10             
fall.envshake.ampl = 6       
fall.envshake.freq = 25
fall.envshake.time = 55

[State 1700]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;--------------------------------------------------------------
; Super Moves
;--------------------------------------------------------------

; Pegasus RyuSeiKen 1
[Statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
poweradd = -1000
juggle = 5
velset = 7,0
ctrl = 0

[State 3000, Spause]
type = Superpause
trigger1 = AnimElem = 3
anim = S70091
pos = 40,-80
Time = 30
movetime = 5
darken = 0

[State 3000, Darken]
type = BGPalfx
trigger1 = AnimElem = 3
ignorehitpause = 1
time = 400
mul = 97,97,200
add = -5,-5,-5
invertall = 1

[State 3000, powter]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
trigger3 = AnimElem = 14
anim = 7084
postype = p1
pos = 30,0
supermove = 1
ownpal = 1
sprpriority = 4

[State 3000, light]
type = Explod
trigger1 = AnimElem = 3
anim = 8050
postype = p1
pos = 20,30
bindtime = 1
supermove = 1
ownpal = 1

[State 3000, spause]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9,3

[State 3000, voice]
type = PlaySnd
trigger1 = Time = 0
value = 14,0
channel = 0

[State 3000, stars background]
type = Explod
trigger1 = AnimElem = 4
anim = 8101
ID = 8101
pos = 0,0
postype = back
sprpriority = -8
supermove = 1
removetime = 300
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3000]
type = VelSet
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 5
x = 4

[State 3000]
type = PosAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
x = 30

[State 3000]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
priority = 7   
attr = S, HP     
damage = 20,2
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkxy = -35,-55
sparkno = s8001
hitsound = s1,3
guardsound = S6,0
pausetime = 12,35
ground.hittime = 19
ground.type = low
ground.slidetime = 9
ground.velocity = -10
air.velocity = -3,-3
envshake.time = 10 
envshake.freq = 10  
envshake.ampl = 10 
envshake.phase = 10
numhits = 10

;Light flash punch
[State 3000, one]
type = Projectile
trigger1 = AnimElem = 4, = 1
trigger2 = AnimElem = 5, = 2
trigger3 = AnimElem = 6, = 3
trigger4 = AnimElem = 7, = 1
trigger5 = AnimElem = 8, = 2
trigger6 = AnimElem = 9, = 3
attr = S, HP
projanim = 8000          
projhitanim = 70601      
offset = 8,0
velocity = 16,0
damage = 7,1
animtype = Hard
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,15
sparkno = s8001
sparkxy = 80,-80
guard.sparkno = -1
hitsound   = s1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = 1,1
envshake.time = 5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5
numhits = 10
Palfx.time = 35
Palfx.add = -122,-30,82
Palfx.mul = 256,256,256
Palfx.sinadd = -112,-122,-112,3
Palfx.invertall = 1

;Light flash punch seconda scarica
[State 3000, two]
type = Projectile
trigger1 = AnimElem = 4, = 0
trigger2 = AnimElem = 5, = 3
trigger3 = AnimElem = 6, = 5
trigger4 = AnimElem = 7, = 6
trigger5 = AnimElem = 8, = 7
trigger6 = AnimElem = 9, = 8
attr = S, HP
projanim = 8003 
projhitanim = 70601       
offset = 18,15
velocity = 20,0
sparkno = s8001
sparkxy = 80,-80
guardflag = MA
getpower = 0
givepower = 0

;Light flash punch finale
[State 3000, three]
type = Projectile
trigger1 = AnimElem = 4, = 3
trigger2 = AnimElem = 5, = 0
trigger3 = AnimElem = 6, = 2
trigger4 = AnimElem = 7, = 4
trigger5 = AnimElem = 8, = 6
trigger6 = AnimElem = 9, = 5
attr = S, HP
projanim = 8003          
projhitanim = 70601       
offset = -10,25
velocity = 25,0
sparkno = s8001
sparkxy = 80,-80
guardflag = MA
getpower = 0
givepower = 0

[State 3000, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent = 0

[State 3000, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001

;-----------------------------------
[Statedef 3001]
type = S
movetype = A
physics = N
anim = 3001
velset = 7,0

;powter
[State 3001, powter]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
anim = 7084
postype = p1
pos = 30,0
supermove = 1
ownpal = 1
sprpriority = 4

[State 3001]
type = PlaySnd
trigger1 = Time = 0
value = 9,2

[State 3000, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 97,97,200
add = -5,-5,-5
invertall = 1

[State 3001]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
x = 20

[State 3001, afterimage]
type = AfterImage
trigger1 = time = 4
time = 40
FrameGap = 2
length = 10
PalBright  = 0,0,0
PalContrast = 107,107,222
PalAdd = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 3001]
type = VelSet
trigger1 = Time > 0
x = 5

[State 3001]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 11
priority = 7
attr = S, HA     
damage = 15,1
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkno = s8001
sparkxy = -55,-80
hitsound = s1,3
guardsound = S6,0
pausetime = 0,4
ground.hittime = 19
ground.type = low  
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176

[State 3001]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
priority = 7
attr = S, HA     
damage = 7,1
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkno = s8001
sparkxy = -35,-55
hitsound = s1,3
guardsound = S6,0
pausetime = 0,4
ground.hittime = 19
ground.type = low  
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176

[State 3001, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent = 0

[State 3001]
type = ChangeState
trigger1 = AnimTime = 0
value = 3002

;-----------------------------------
[Statedef 3002]
type = S
movetype = A
physics = N
anim = 3002
velset = 0,0  

[State 3002, Darken]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 60
mul = 97,97,200
add = -5,-5,-5
invertall = 1

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(8101) >= 1
trigger1 = time = 60
ID = 8101

[State 3002, powter]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
anim = 7084
postype = p1
pos = 30,0
supermove = 1
ownpal = 1
sprpriority = 4

[State 3002,kiai]
type = PlaySnd
trigger1 = Time = 0
trigger1 = AnimElem = 1
value = 12,3

[State 3002]
type = VelAdd
trigger1 = AnimElem = 5
x = 20

[State 3002]
type = PlayerPush
trigger1 = animelem = 8
value = 0

[State 3002]
type = HitDef
trigger1 = AnimElem = 7
priority = 7
attr = S, HA     
damage = 29,3
animtype = hard
hitflag = MAF
guardflag = MA
getpower = 0
givepower = 0
sparkno = S70041
sparkxy = -25,-80
hitsound = s1,1
guardsound = S6,0
pausetime = 0,12
p2stateno = 3020
ground.hittime = 19
ground.type = high
ground.slidetime = 9
ground.velocity = -10
air.velocity = -3,-3
envshake.time = 10 
envshake.freq = 10    
envshake.ampl = 10  
envshake.phase = 10
fall = 1
fall.recover = 0
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
fall.damage = 10             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 25
Palfx.time          = 38
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 3002, hit]
type = Explod
triggerall = NumExplod(8011) = 0
trigger1 = p2stateno = 3020
anim = 8011
ID = 8011
pos = -10,-20
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
persistent = 0
supermove = 1
facing = -1
bindtime = -1
removetime = 30

[State 3002, hit]
type = Explod
triggerall = NumExplod(3) = 0
trigger1 = p2stateno = 3020
anim = 7003
ID = 3
pos = -10,-20
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
persistent = 0
supermove = 1
facing = -1
bindtime = -1
removetime = 35

[State 3002, hit]
type = Explod
triggerall = NumExplod(8012) = 0
trigger1 = p2stateno = 3020
anim = 8012
ID = 8012
pos = 20,-55
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
persistent = 0
supermove = 1
facing = -1
bindtime = -1
removetime = 30

[State 3002, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent = 0

[State 3002, screenmove]
type = Screenbound
trigger1 = AnimElem = 6
value = 50
movecamera = 99,99

[State 3002]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 3020]
type = A
movetype = H
physics = N

[State 3020, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = -5

[State 3020, 2]
type = ChangeAnim2
trigger1 = Time >= 0
value = 3020

[State 3020, 3]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 3021

;
[Statedef 3021]
type = A
movetype = H
physics = N
velset = -1.7,-11

[State 3021, 1]
type = VelAdd
trigger1 = Time > 0
y = .4

[State 3021, 2]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;-------------------------------------------------------------------
; Pegasus RyuSeiKen 2
[Statedef 3100]
type = S
movetype = A
physics = S
anim = 3100
poweradd = -2000
velset = 0,0
ctrl = 0

[State 3100, mouth]
type = Explod
trigger1 = AnimElem = 2
anim = 187
sprpriority = 10
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
removeongethit = 1
ownpal = 1
removetime = 284

[State 3100]
type = PlaySnd
trigger1 = Time = 0
value = 15,4

[State 3100]
type = PlaySnd
trigger1 = Time = 0
value = 14,5
channel = 0

[State 3100]
type = SuperPause
trigger1 = Time = 0
time = 350
anim = S7009
pos = 15,-65
darken = 0
movetime = 350

[State 3100, big light]
type = Explod
trigger1 = Time = 10
anim = 7032
sprpriority = 4
postype = p1
pos = 20,5
bindtime = 1
supermove = 1
removeongethit = 1
scale = .5,.5
ownpal = 1

[State 3100, big light]
type = Explod
trigger1 = Time = 10
anim = 7032
sprpriority = 4
postype = p1
pos = 20,6
bindtime = 1
supermove = 1
removeongethit = 1
scale = .5,.5
vfacing = -1
ownpal = 1

[State 3100, pegasus zoom]
type = Explod
trigger1 = AnimElem = 14
anim = 6001
sprpriority = 4
postype = p1
pos = 25,0
bindtime = 1
supermove = 1
ownpal = 1
removeongethit = 1

[State 3100, stars background]
type = Explod
trigger1 = AnimElem = 1
anim = 8106
pos = 0,0
postype = back
sprpriority = -8
supermove = 1
removetime = 408
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3100, cosmo]
type = Explod
trigger1 = AnimElem = 1
anim = 3103
ID = 3103
pos = -0,0
postype = p1
sprpriority = -2
supermove = 1
removetime = 330
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3100, super]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 350
mul = 150,150,222
add = 0,0,0
invertall = 0
persistent = 1

[State 3100]
type = AfterImage
trigger1 = time = 0
time = 300
FrameGap = 1
length = 10
PalBright = 50,50,50
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 35
value = 14,1

[State 3100]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101

;-----------------------------------
[Statedef 3101]
type = S
movetype = A
physics = S
anim = 3101
velset = 0,0
ctrl = 0

[State 3101]
type = SuperPause
trigger1 = Time = 3
time = 30
anim = S7009
pos = -13,-71

[State 3101, removeEX]
type = RemoveExplod
triggerall = NumExplod(3103) >= 1
trigger1 = time = 0
ID = 3103

[State 3101, removeEX]
type = RemoveExplod
triggerall = NumExplod(8106) >= 1
trigger1 = time = 0
ID = 8106

[State 3101, light]
type = Explod
trigger1 = Time = 3
anim = 8050
sprpriority = 2
postype = p1
pos = -8,0
supermove = 1
bindtime = 1
ownpal = 1
removeongethit = 1

[State 3101]
type = PlaySnd
trigger1 = Time = 3
value = 5,2

[State 3101]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,3

[State 3101]
type = PlaySnd
trigger1 = AnimElem = 75
value = 12,2
channel = 0

[State 3101, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
mul = 25,25,25
add = 5,5,5
invertall = 0
time = 5

[State 3101, stars background]
type = Explod
trigger1 = AnimElem = 1
anim = 8104
ID = 8104
pos = 0,0
postype = back
sprpriority = -9
supermove = 1
removetime = 800
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3101, stars background]
type = Explod
trigger1 = AnimElem = 1
anim = 8102
ID = 8102
pos = 0,0
postype = back
sprpriority = -8
supermove = 1
removetime = 800
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3101, light]
type = Explod
triggerall = NumExplod(7063) = 0
trigger1 = AnimElem = 5
ignorehitpause = 1
anim = 7063
ID = 7063
pos = 0,-2
postype = p1
sprpriority = 2
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 800

[State 3101, powter]
type = Explod
trigger1 = AnimElem = 5
ignorehitpause = 1
anim = 7010
ID = 131
pos = 10,0
postype = p1
sprpriority = -3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 800

[State 3101, hit]
type = Explod
triggerall = NumExplod(8013) = 0
trigger1 = projhit8010 = 1
pos = 5,-76
anim = 8001
ID = 8001
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
scale = .8, .8

[State 3101, hit]
type = Explod
triggerall = NumExplod(8013) = 0
trigger1 = projhit8010 = 1
pos = -10,-40
anim = 8011
ID = 8011
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
scale = .8, .8

[State 3101, hit]
type = Explod
triggerall = NumExplod(8013) = 0
trigger1 = projhit8010 = 1
pos = -40,-100
anim = 8013
ID = 8013
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
scale = .8, .8

;projectile scarica1
[State 3101]
type = Projectile
trigger1 = AnimElem = 7
trigger2 = AnimElem = 10
trigger3 = AnimElem = 13
trigger4 = AnimElem = 16
trigger5 = AnimElem = 19
trigger6 = AnimElem = 22
trigger7 = AnimElem = 25
trigger8 = AnimElem = 28
trigger9 = AnimElem = 31
trigger10 = AnimElem = 34
trigger11 = AnimElem = 37
trigger12 = AnimElem = 40
trigger13 = AnimElem = 43
trigger14 = AnimElem = 46
trigger15 = AnimElem = 49
trigger16 = AnimElem = 52
trigger17 = AnimElem = 55
trigger18 = AnimElem = 58
trigger19 = AnimElem = 61
trigger20 = AnimElem = 64
trigger21 = AnimElem = 67
trigger22 = AnimElem = 70
trigger23 = AnimElem = 73
trigger24 = AnimElem = 76
attr = S, HP
projanim = 8010
offset = 50,-85
velocity = 25,0
animtype = Hard
guardflag = MA
getpower = 0
givepower = 0
pausetime = 3,4
sparkno = -1
sparkxy = 100,-68
hitsound = s1,3
guardsound = S6,0
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2
air.velocity = -3,1
projscale = .8, .8
damage = 2,1
forcestand = 1
priority = 7
projID = 8010
envshake.time = 15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
guard.sparkno = -1

;projectile scarica2
[State 3101]
type = Projectile
trigger1 = AnimElem = 8
trigger2 = AnimElem = 11
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
trigger7 = AnimElem = 26
trigger8 = AnimElem = 29
trigger9 = AnimElem = 32
trigger10 = AnimElem = 35
trigger11 = AnimElem = 38
trigger12 = AnimElem = 41
trigger13 = AnimElem = 44
trigger14 = AnimElem = 47
trigger15 = AnimElem = 50
trigger16 = AnimElem = 53
trigger17 = AnimElem = 56
trigger18 = AnimElem = 59
trigger19 = AnimElem = 62
trigger20 = AnimElem = 65
trigger21 = AnimElem = 68
trigger22 = AnimElem = 71
trigger23 = AnimElem = 74
trigger24 = AnimElem = 77
attr = S, HP
projanim = 8010
offset = 50,-85
velocity = 20,3
animtype = Hard
guardflag = MA
getpower = 0
givepower = 0
pausetime = 3,4
sparkno = -1
sparkxy = 100,-68
hitsound = s1,3
guardsound = S6,0
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0
air.velocity = -3,1
projscale = .8, .8
damage = 2,1
forcestand = 1
priority = 7
projID = 8010
envshake.time = 15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
guard.sparkno = -1

;projectile scarica3
[State 3101]
type = Projectile
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 12
trigger4 = AnimElem = 15
trigger5 = AnimElem = 18
trigger6 = AnimElem = 21
trigger7 = AnimElem = 24
trigger8 = AnimElem = 27
trigger9 = AnimElem = 30
trigger10 = AnimElem = 33
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 45
trigger15 = AnimElem = 48
trigger16 = AnimElem = 51
trigger17 = AnimElem = 54
trigger18 = AnimElem = 57
trigger19 = AnimElem = 60
trigger20 = AnimElem = 63
trigger21 = AnimElem = 66
trigger22 = AnimElem = 69
trigger23 = AnimElem = 72
trigger24 = AnimElem = 75
attr = S, HP
projanim = 8010
offset = 50,-85
velocity = 20,-3
animtype = Hard
guardflag = MA
getpower = 0
givepower = 0
pausetime = 3,4
sparkno = -1
sparkxy = 100,-68
hitsound = s1,3
guardsound = S6,0
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0
air.velocity = -3,1
projscale = .8, .8
damage = 2,1
forcestand = 1
priority = 7
projID = 8010
envshake.time = 15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
guard.sparkno = -1

[State 3101] ;black flash
type = EnvColor
trigger1 = Time = 0
value = 0,0,0
under = 1
time = 55

[State 3101, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent = 0

[State 3101, cosmo1]
type = Explod
triggerall = NumExplod(3203) = 0
trigger1 = AnimElem = 2
anim = 3203
ID = 3203
pos = 16,6
sprpriority = -2
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
persistent = 1
removetime = 25

[State 3101]
type = ChangeState
trigger1 = AnimTime = 0
value = 3102
ctrl = 1

;-----------------------------------
[Statedef 3102]
type = S
movetype = A
physics = S
anim = 3102
velset = 0,0
ctrl = 0

[State 3102, cosmo1]
type = Explod
triggerall = NumExplod(3203) = 0
trigger1 = AnimElem = 2
anim = 3203
ID = 3203
pos = 16,6
sprpriority = -2
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
persistent = 1
removetime = 400

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(3203) >= 1
trigger1 = AnimElem = 74
ID = 3203

[State 3102, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
mul = 25,25,25
add = 5,5,5
invertall = 0
time = 32

[State 3102, flash]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
under = 0
time = 3

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(8104) >= 1
trigger1 = AnimElem = 79
ID = 8104

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(8102) >= 1
trigger1 = AnimElem = 79
ID = 8102

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(7063) >= 1
trigger1 = AnimElem = 72
ID = 7063

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(131) >= 1
trigger1 = AnimElem = 73
ID = 131

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(8001) >= 1
trigger1 = time = 0
ID = 8001

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(8011) >= 1
trigger1 = time = 0
ID = 8011

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(8013) >= 1
trigger1 = time = 0
ID = 8013

[State 3102, hit]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = projhit8010 = 1
pos = 5,-76
anim = 8001
ID = 8001
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3102, hit]
type = Explod
triggerall = NumExplod(8011) = 0
trigger1 = projhit8010 = 1
pos = -10,-40
anim = 8011
ID = 8011
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3102, hit]
type = Explod
triggerall = NumExplod(8012) = 0
trigger1 = projhit8010 = 1
pos = -40,-100
anim = 8012
ID = 8012
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3102, hit]
type = Explod
triggerall = NumExplod(8013) = 0
trigger1 = projhit8010 = 1
pos = -50,-60
anim = 8013
ID = 8013
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

;projectile scarica1
[State 3102]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 10
trigger4 = AnimElem = 13
trigger5 = AnimElem = 16
trigger6 = AnimElem = 19
trigger7 = AnimElem = 22
trigger8 = AnimElem = 25
trigger9 = AnimElem = 28
trigger10 = AnimElem = 31
trigger11 = AnimElem = 34
trigger12 = AnimElem = 37
trigger13 = AnimElem = 40
trigger14 = AnimElem = 43
trigger15 = AnimElem = 46
trigger16 = AnimElem = 49
trigger17 = AnimElem = 52
trigger18 = AnimElem = 55
trigger19 = AnimElem = 58
trigger20 = AnimElem = 61
trigger21 = AnimElem = 64
trigger22 = AnimElem = 67
trigger23 = AnimElem = 70
attr = S, HP
projanim = 8010
offset = 50,-85
velocity = 25,0
animtype = Hard
guardflag = MA
getpower = 0
givepower = 0
pausetime = 1,44
sparkno = -1
sparkxy = 100,-68
hitsound = -1
guardsound = S6,0
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1
air.velocity = -3,0
projscale = .8, .8
damage = 3,1
forcestand = 1
priority = 7
projID = 8010
envshake.time = 15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
Palfx.time          = 5
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1
guard.sparkno = -1

;projectile scarica2
[State 3102]
type = Projectile
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
trigger4 = AnimElem = 14
trigger5 = AnimElem = 17
trigger6 = AnimElem = 20
trigger7 = AnimElem = 23
trigger8 = AnimElem = 26
trigger9 = AnimElem = 29
trigger10 = AnimElem = 32
trigger11 = AnimElem = 35
trigger12 = AnimElem = 38
trigger13 = AnimElem = 41
trigger14 = AnimElem = 44
trigger15 = AnimElem = 47
trigger16 = AnimElem = 50
trigger17 = AnimElem = 53
trigger18 = AnimElem = 56
trigger19 = AnimElem = 59
trigger20 = AnimElem = 62
trigger21 = AnimElem = 65
trigger22 = AnimElem = 68
trigger23 = AnimElem = 71
attr = S, HP
projanim = 8010
offset = 50,-85
velocity = 20,3
animtype = Hard
attr = S, HP
guardflag = MA
getpower = 0
givepower = 0
pausetime = 2,44
sparkno = -1
sparkxy = 100,-68
hitsound = s1,3
guardsound = -1
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1
air.velocity = -3,0
projscale = .8, .8
damage = 3,1
forcestand = 1
priority = 7
projID = 8010
envshake.time = 15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
guard.sparkno = -1

;projectile scarica3
[State 3102]
type = Projectile
trigger1 = AnimElem = 6
trigger2 = AnimElem = 9
trigger3 = AnimElem = 12
trigger4 = AnimElem = 15
trigger5 = AnimElem = 18
trigger6 = AnimElem = 21
trigger7 = AnimElem = 24
trigger8 = AnimElem = 27
trigger9 = AnimElem = 30
trigger10 = AnimElem = 33
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 45
trigger15 = AnimElem = 48
trigger16 = AnimElem = 51
trigger17 = AnimElem = 54
trigger18 = AnimElem = 57
trigger19 = AnimElem = 60
trigger20 = AnimElem = 63
trigger21 = AnimElem = 66
trigger22 = AnimElem = 69
attr = S, HP
projanim = 8010
offset = 50,-85
velocity = 20,-3
animtype = Hard
attr = S, HP
guardflag = MA
getpower = 0
givepower = 0
pausetime = 2,44
sparkno = -1
sparkxy = 100,-68
hitsound = -1
guardsound = -1
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1
air.velocity = -3,0
projscale = .8, .8
damage = 3,1
forcestand = 1
priority = 7
projID = 8010
envshake.time = 15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
guard.sparkno = -1

[State 3102, Velset]
type = VelSet
trigger1 = AnimElem >= 77
x = 80

[State 3102, Velset]
type = VelSet
trigger1 = AnimElem = 79
x = 0

[State 3102, pegasus helper]
type = Helper
trigger1 = AnimElem = 76
stateno = 3110
id = 3110
sprpriority = -1
pos = 0,0
postype = p1
keyctrl = 0
ownpal = 1

[State 3102]
type = HitDef
trigger1 = AnimElem = 77
priority = 7
attr = S, HA
damage = 30,2
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkno = S8032
sparkxy = -25,-80
hitsound = s1,3
guardsound = S6,0
pausetime = 22, 65 ;5,12
ground.hittime = 16
ground.type = low
ground.velocity = 3,-9
air.velocity = 3,-9
envshake.time = 25
envshake.ampl = 7
envshake.freq = 176
p2facing = 1
fall = 1
fall.recover = 0
fall.damage = 30
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 25
Palfx.time          = 70
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1
numhits = 7

[State 3101]
type = PlaySnd
trigger1 = movehit = 1
value = 5,2

[State 3101]
type = PlaySnd
trigger1 = movehit = 1
value = 12,1

[State 3101, light]
type = Superpause
trigger1 = movehit = 1
anim = s8050
pos = 190,15
Time = 30
movetime = 0
darken = 0

[State 3101]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
under = 1
time = 4

;-----------------------------
[State 3102, hit]
type = Explod
triggerall = NumExplod(8011) = 0
trigger1 = movehit = 1
pos = -10,-30
anim = 8011
ID = 8011
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 0
removetime = 50

[State 3102, hit]
type = Explod
triggerall = NumExplod(8012) = 0
trigger1 = movehit = 1
pos = -40,-100
anim = 8012
ID = 8012
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 0
removetime = 50

[State 3102, hit]
type = Explod
triggerall = NumExplod(8013) = 0
trigger1 = movehit = 1
pos = 20,-80
anim = 8013
ID = 8013
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 0
removetime = 50

[State 3102, hit]
type = Explod
triggerall = NumExplod(5) <= 4
trigger1 = movehit = 1
pos = -10,-30
anim = 70041
ID = 5
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 0
removetime = 60

[State 3102, hit]
type = Explod
triggerall = NumExplod(5) <= 4
trigger1 = movehit = 1
pos = -40,-100
anim = 70041
ID = 5
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 0
removetime = 60

[State 3102, hit]
type = Explod
triggerall = NumExplod(5) <= 4
trigger1 = movehit = 1
pos = 20,-80
anim = 70041
ID = 5
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 0
removetime = 60

[State 3102, powter]
type = Explod
trigger1 = AnimElem = 77
anim = 7088
postype = p1
pos = 30,0
supermove = 1
ownpal = 1
sprpriority = 4

[State 3102, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent = 0

[State 3102, Darken]
type = BGPalfx
trigger1 = AnimTime = 0
ignorehitpause = 1
mul = 155,155,155
add = 5,5,5
invertall = 0
time = 5

[State 3102]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Pegasus (helper)
[Statedef 3110]
type = S
movetype = I
physics = S
juggle  = 1
poweradd = 0
anim = 3110
ctrl = 0

[State 3110]
type = BindToRoot
trigger1 = 1
pos = 50,0

[State 3110, afterimage]
type = AfterImage
trigger1 = time = 0
time = 500
length = 20
PalBright = 10,10,10
PalContrast = 128,128,128
trans = Add1

[State 3110, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3110]
type = DestroySelf
trigger1 = root, AnimElem = 78
trigger2 = root, stateno != 3102

;---------------------------------------------------------------------------
; Pegasus SuiSeiken
[Statedef 3200]
type = S
movetype = A
physics = S
anim = 3200
poweradd = -3000
velset = 0,0
ctrl = 0

[State 3200]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3200]
type = SuperPause
trigger1 = Time = 0
time = 68
darken = 1
anim = -1
movetime = 68

[State 3200, pegasus zoom]
type = Explod
trigger1 = AnimElem = 1
anim = 6001
sprpriority = 4
postype = p1
pos = 10,0
bindtime = 1
supermove = 1
ownpal = 1
removeongethit = 1

[State 3200, stars background]
type = Explod
trigger1 = AnimElem = 1
anim = 8106
ID = 8106
pos = 0,0
postype = back
sprpriority = -8
supermove = 1
removetime = 300
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3200]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,6
channel = 0

[State 3200]
type = ChangeState
trigger1 = AnimTime = 0
value = 3201
ctrl = 1

;-----------------------------------
[Statedef 3201]
type = S
movetype = A
physics = S
anim = 3201
velset = 0,0
ctrl = 0

[State 3201]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3201, mouth]
type = Explod
trigger1 = AnimElem = 1
anim = 187
sprpriority = 10
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
removeongethit = 1
ownpal = 1
removetime = 80

[State 3201]
type = PlaySnd
trigger1 = Time = 1
value = 15,4
channel = 2

[State 3201, StopSnd]
type = StopSnd
trigger1 = AnimTime = 0
channel = 2

[State 3201, 1]
type = SuperPause
trigger1 = Time = 0
anim = S70091
pos = 15,-65
time = 200
movetime = 200

[State 3201, cosmo]
type = Explod
trigger1 = AnimElem = 1
anim = 3103
ID = 3103
pos = -0,0
postype = p1
sprpriority = -2
supermove = 1
removetime = 200
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3201, big light]
type = Explod
trigger1 = Time = 10
anim = 7032
sprpriority = 4
postype = p1
pos = 20,5
bindtime = 1
supermove = 1
removeongethit = 1
scale = .5,.5
ownpal = 1

[State 3201, big light]
type = Explod
trigger1 = Time = 10
anim = 7032
sprpriority = 4
postype = p1
pos = 20,6
bindtime = 1
supermove = 1
removeongethit = 1
scale = .5,.5
vfacing = -1
ownpal = 1

[State 3201, voice]
type = PlaySnd
trigger1 = AnimElem = 18
value = 14,4
channel = 0

[State 3201]
type = ChangeState
trigger1 = AnimTime = 0
value = 3202

;-----------------------------------
[Statedef 3202]
type = S
movetype = A
physics = S
anim = 3202
velset = 0,0
ctrl = 0

[State 3202]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3202]
type = PlaySnd
trigger1 = Time = 0
value = 5,2

[State 3202, flash]
type = EnvColor
trigger1 = Time = 3
value = 255,255,255
under = 0
time = 3

[State 3202, cosmo1]
type = Explod
triggerall = NumExplod(3203) = 0
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
anim = 3203
ID = 3203
pos = 16,6
sprpriority = -2
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
persistent = 1
removetime = 400

[State 3202, cosmo1]
type = Explod
triggerall = NumExplod(3204) = 0
trigger1 = AnimElem = 3
anim = 3204
ID = 3204
pos = 27,6
sprpriority = -2
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
persistent = 1
removetime = 200

[State 3202, removeEX]
type = RemoveExplod
triggerall = NumExplod(3204) >= 1
trigger1 = AnimElem = 5
ID = 3204

[State 3202, removeEX]
type = RemoveExplod
triggerall = NumExplod(3203) >= 1
trigger1 = AnimElem = 3
trigger2 = AnimElem = 12
ID = 3203

[State 3202, removeEX]
type = RemoveExplod
triggerall = NumExplod(3103) >= 1
trigger1 = time = 0
ID = 3103

[State 3202, removeEX]
type = RemoveExplod
triggerall = NumExplod(8106) >= 1
trigger1 = AnimElem = 2
ID = 8106

[State 3202, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
mul = 25,25,25
add = 5,5,5
invertall = 0
time = 30

[State 3202]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1

[State 3202]
type = SuperPause
trigger1 = AnimElem = 4
time = 20
anim = S7009
pos = 70,-92
darken = 0

[State 3202, light]
type = Explod
trigger1 = AnimElem = 4
anim = 8050
sprpriority = 2
postype = p1
pos = 60,13
supermove = 1
bindtime = 1
ownpal = 1
removeongethit = 1

[State 3202, stars background]
type = Explod
trigger1 = AnimElem = 2
anim = 8102
ID = 8102
pos = 0,0
postype = back
sprpriority = -7
supermove = 1
removetime = 60
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3202, powter]
type = Explod
trigger1 = AnimElem = 5
ignorehitpause = 1
anim = 7010
ID = 131
pos = 15,0
postype = p1
sprpriority = -3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1

[State 3202, hit]
type = Explod
triggerall = NumExplod(8032) = 0
trigger1 = projhit8030 = 1
pos = 0,-82
anim = 8032
ID = 8032
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3202, Fireball]
type = Projectile
trigger1 = AnimElem = 5
projanim = 8030
projHitanim = 8031
projhits = 1
projpriority = 7
ProjID = 8030
offset = 50, -82
sparkno = -1
sparkxy = 0,0
velocity = 10,0
attr = S, HP
damage = ifelse(var(9) = 0,600,1000),ifelse(var(9) = 0,180,200)
animtype = Hard
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,45
hitsound   = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -7
air.velocity = -2.5,-5
air.animtype = Back
air.juggle = 3
envshake.time = 55
envshake.ampl = 7
envshake.freq = 176
fall = 1
fall.recover = 0
fall.damage = 25
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 70
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 3202, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent = 0

[State 3201, VarSet]
type = VarSet
triggerall = var(8) = 1
trigger1 = AnimTime = 0
var(8) = 0

[State 3201, VarSet]
type = VarSet
triggerall = var(9) = 1
trigger1 = AnimTime = 0
var(9) = 0

[State 3202]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Pegasus RyuSeiKen 1 (air) by Tux
[Statedef 3300]
type = A
movetype = A
physics = A
juggle  = 5
ctrl = 0
anim = 3300
poweradd = -1000
velset = 0,-10

[State 3300, mouth]
type = Explod
trigger1 = Time = 0
anim = 186
sprpriority = 10
postype = p1
pos = 30,41
bindtime = 1
supermove = 1
removeongethit = 1
ownpal = 1
removetime = 84
scale = 0.5,1

[State 3300]
type = PlaySnd
trigger1 = Time = 0
value = 14,0
channel = 0

[State 3300]
type = Explod
trigger1 = Time = 0
anim = 3303
sprpriority = -2
postype = p1
pos = 7,4
removetime = 185
bindtime = -1
supermove = 1
removeongethit = 1
ownpal = 1

[State 3300]
type = SuperPause
trigger1 = Time = 10
time = 75
pos = 0,0
anim = -1

[State 3300, stars background]
type = Explod
trigger1 = Time = 10
anim = 8103
ID = 8103
pos = 0,0
postype = back
sprpriority = -3
supermove = 1
removetime = 185
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3300]
type = Explod
trigger1 = Time = 10
anim = 8102
ID = 8102
pos = 0,0
postype = back
sprpriority = -1
supermove = 1
removetime = 185
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3300]
type = Velset
trigger1 = Time = [0,110]
x = 0
y = 0

[State 3300]
type = PlaySnd
trigger1 = Time = 14
value = 15,2
channel = 13

[State 3300]
type = Projectile
trigger1 = Time = 14
trigger2 = Time = 20
trigger3 = Time = 30
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2,0
remvelocity = .7, 0
accel = 12, 9
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 15
trigger2 = Time = 25
trigger3 = Time = 35
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -1
remvelocity = .7, 0
accel = 14,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 20
trigger2 = Time = 30
trigger3 = Time = 40
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 1
remvelocity = .7, 0
accel = 12,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 25
trigger2 = Time = 35
trigger3 = Time = 45
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -0.7
remvelocity = .7, 0
accel = 10,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 30
trigger2 = Time = 40
trigger3 = Time = 50
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .7
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 35
trigger2 = Time = 45
trigger3 = Time = 55
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .9
remvelocity = .7, 0
accel = 5,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 40
trigger2 = Time = 50
trigger3 = Time = 60
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .9
remvelocity = .7, 0
accel = 4,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 45
trigger2 = Time = 55
trigger3 = Time = 65
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 0
remvelocity = .7, 0
accel = 3,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 50
trigger2 = Time = 60
trigger3 = Time = 70
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 16,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 55
trigger2 = Time = 65
trigger3 = Time = 75
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .8
remvelocity = .7, 0
accel = 14,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 60
trigger2 = Time = 70
trigger3 = Time = 80
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -1
remvelocity = .7, 0
accel = 12,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 65
trigger2 = Time = 75
trigger3 = Time = 85
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 1
remvelocity = .7, 0
accel = 10,7
attr = A, HP
damage    = 6,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 70
trigger2 = Time = 80
trigger3 = Time = 90
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 0
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 75
trigger2 = Time = 85
trigger3 = Time = 95
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -1
remvelocity = .7, 0
accel = 5,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 80
trigger2 = Time = 90
trigger3 = Time = 100
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 1
remvelocity = .7, 0
accel = 4,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 85
trigger2 = Time = 95
trigger3 = Time = 105
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 0
remvelocity = .7, 0
accel = 3,7
attr = A, HP
damage    = 4
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 90
trigger2 = Time = 100
trigger3 = Time = 13
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .7
remvelocity = .7, 0
accel = 16,7
attr = A, HP
damage    = 4
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 95
trigger2 = Time = 105
trigger3 = Time = 20
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .9
remvelocity = .7, 0
accel = 14,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 40
trigger2 = Time = 50
trigger3 = Time = 30
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .9
remvelocity = .7, 0
accel = 12,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 100
trigger2 = Time = 14
trigger3 = Time = 40
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 0
remvelocity = .7, 0
accel = 10,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 105
trigger2 = Time = 15
trigger3 = Time = 40
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.hittime = 16
ground.type = Low
ground.slidetime = 5
ground.velocity = -6,-6
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3300]
type = Projectile
trigger1 = Time = 109
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 16,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 110
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 14,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = Low
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 109
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 10,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 110
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = Low
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 109
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 5,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 110
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 4,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = Low
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 109
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 3,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300]
type = Projectile
trigger1 = Time = 110
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 12,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = Low
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3300, end]
type = ChangeState
trigger1 = Time = 110
value = 3301
ctrl = 0

;-----------------------------------
[Statedef 3301]
type = A
movetype = I
physics = A
anim = 3301
velset = -1, -5
juggle = 2
ctrl = 0

[State 3301, StopSnd]
type = StopSnd
trigger1 = Time = 1
channel = 13

[State 3301]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Pegasus RyuSeiKen 2 (air) by Tux
[Statedef 3400]
type = A
movetype = A
physics = A
juggle  = 5
ctrl = 0
anim = 3400
poweradd = -2000
velset = 0,-10

[State 3400]
type = Velset
trigger1 = Time = [0,300]
x = 0
y = 0

[State 3400]
type = SuperPause
trigger1 = Time = 0
time = 100
pos = 0,0
anim = -1
movetime = 100

[State 3400, stars background]
type = Explod
trigger1 = Time = 0
anim = 8103
ID = 8103
pos = 0,0
postype = back
sprpriority = -4
supermove = 1
removetime = 300
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3400]
type = Explod
trigger1 = Time = 0
anim = 8102
ID = 8102
pos = 0,0
postype = back
sprpriority = -2
supermove = 1
removetime = 300
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3400]
type = PlaySnd
trigger1 = AnimElem = 3
value = 15,7

[State 3400, flying pegasus background]
type = Explod
trigger1 = AnimElem = 4
anim = 8108
ID = 8108
pos = 160,220
postype = back
sprpriority = -3
supermove = 1
removetime = 75
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3400, wings]
type = Explod
trigger1 = Time = 37
anim = 8082
ID = 8082
pos = -2,24
postype = p1
sprpriority = -1
supermove = 1
removetime = 263
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3400]
type = PlaySnd
trigger1 = Time = 20
value = 14,1
channel = 0

[State 3400, big light]
type = Explod
trigger1 = Time = 37
anim = 7033
ID = 7033
pos = 0,5
postype = p1
sprpriority = -1
supermove = 1
removetime = 263
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3400, big light]
type = Explod
trigger1 = Time = 37
anim = 7033
ID = 7033
pos = 0,6
postype = p1
sprpriority = -1
supermove = 1
removetime = 263
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
vfacing = -1

[State 3400]
type = Explod
trigger1 = AnimElem = 5
anim = 3303
sprpriority = -1
postype = p1
pos = 7,4
removetime = 210
bindtime = -1
supermove = 1
removeongethit = 1
ownpal = 1

[State 3400]
type = VelAdd
trigger1 = Time = 110
trigger2 = Time = 140
trigger3 = Time = 150
trigger4 = Time = 180
trigger5 = Time = 190
trigger6 = Time = 220
trigger7 = Time = 230
trigger8 = Time = 260
trigger9 = Time = 270
trigger10 = Time = 300
y = -5

[State 3400]
type = VelAdd
trigger1 = Time = 120
trigger2 = Time = 130
trigger3 = Time = 160
trigger4 = Time = 170
trigger5 = Time = 200
trigger6 = Time = 210
trigger7 = Time = 240
trigger8 = Time = 250
trigger9 = Time = 280
trigger10 = Time = 290
y = 5

[State 3400]
type = PlaySnd
trigger1 = Time = 104
value = 15,2
channel = 13

[State 3400]
type = Projectile
trigger1 = Time = 104
trigger2 = Time = 110
trigger3 = Time = 120
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2,0
remvelocity = .7, 0
accel = 12, 9
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 105
trigger2 = Time = 115
trigger3 = Time = 125
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -1
remvelocity = .7, 0
accel = 14,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 110
trigger2 = Time = 120
trigger3 = Time = 130
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 1
remvelocity = .7, 0
accel = 12,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 115
trigger2 = Time = 125
trigger3 = Time = 135
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -0.7
remvelocity = .7, 0
accel = 10,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 120
trigger2 = Time = 130
trigger3 = Time = 140
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .7
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 125
trigger2 = Time = 135
trigger3 = Time = 145
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .9
remvelocity = .7, 0
accel = 5,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 130
trigger2 = Time = 140
trigger3 = Time = 150
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .9
remvelocity = .7, 0
accel = 4,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 135
trigger2 = Time = 145
trigger3 = Time = 155
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 0
remvelocity = .7, 0
accel = 3,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 140
trigger2 = Time = 150
trigger3 = Time = 160
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 16,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 145
trigger2 = Time = 155
trigger3 = Time = 165
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .8
remvelocity = .7, 0
accel = 14,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 150
trigger2 = Time = 160
trigger3 = Time = 170
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -1
remvelocity = .7, 0
accel = 12,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 155
trigger2 = Time = 165
trigger3 = Time = 175
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 1
remvelocity = .7, 0
accel = 10,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 160
trigger2 = Time = 170
trigger3 = Time = 180
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 0
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 165
trigger2 = Time = 175
trigger3 = Time = 185
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -1
remvelocity = .7, 0
accel = 5,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 170
trigger2 = Time = 180
trigger3 = Time = 190
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 1
remvelocity = .7, 0
accel = 4,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 175
trigger2 = Time = 185
trigger3 = Time = 195
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 0
remvelocity = .7, 0
accel = 3,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 180
trigger2 = Time = 190
trigger3 = Time = 200
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .7
remvelocity = .7, 0
accel = 16,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 185
trigger2 = Time = 195
trigger3 = Time = 205
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .9
remvelocity = .7, 0
accel = 14,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 190
trigger2 = Time = 200
trigger3 = Time = 210
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, .9
remvelocity = .7, 0
accel = 12,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 195
trigger2 = Time = 205
trigger3 = Time = 215
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, 0
remvelocity = .7, 0
accel = 10,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 200
trigger2 = Time = 210
trigger3 = Time = 220
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.hittime = 16
ground.type = Low
ground.slidetime = 5
ground.velocity = -6,-6
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 205
trigger2 = Time = 215
trigger3 = Time = 225
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.hittime = 16
ground.type = Low
ground.slidetime = 5
ground.velocity = -6,-6
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 210
trigger2 = Time = 220
trigger3 = Time = 230
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.hittime = 16
ground.type = Low
ground.slidetime = 5
ground.velocity = -6,-6
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 215
trigger2 = Time = 225
trigger3 = Time = 235
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.hittime = 16
ground.type = Low
ground.slidetime = 5
ground.velocity = -6,-6
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 220
trigger2 = Time = 230
trigger3 = Time = 240
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.hittime = 16
ground.type = Low
ground.slidetime = 5
ground.velocity = -6,-6
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 225
trigger2 = Time = 235
trigger3 = Time = 245
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.hittime = 16
ground.type = Low
ground.slidetime = 5
ground.velocity = -6,-6
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 230
trigger2 = Time = 240
trigger3 = Time = 250
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.hittime = 16
ground.type = Low
ground.slidetime = 5
ground.velocity = -6,-6
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 235
trigger2 = Time = 245
trigger3 = Time = 255
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.hittime = 16
ground.type = Low
ground.slidetime = 5
ground.velocity = -6,-6
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 240
trigger2 = Time = 250
trigger3 = Time = 260
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 4,1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.hittime = 16
ground.type = Low
ground.slidetime = 5
ground.velocity = -6,-6
airguard.velocity = -3.5,0
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 3400]
type = Projectile
trigger1 = Time = 245
trigger2 = Time = 255
trigger3 = Time = 265
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 16,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3400]
type = Projectile
trigger1 = Time = 250
trigger2 = Time = 260
trigger3 = Time = 270
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 14,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = Low
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3400]
type = Projectile
trigger1 = Time = 255
trigger2 = Time = 265
trigger3 = Time = 275
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 10,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3400]
type = Projectile
trigger1 = Time = 260
trigger2 = Time = 270
trigger3 = Time = 280
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 7,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = Low
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3400]
type = Projectile
trigger1 = Time = 265
trigger2 = Time = 275
trigger3 = Time = 285
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 5,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3400]
type = Projectile
trigger1 = Time = 270
trigger2 = Time = 280
trigger3 = Time = 290
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 4,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = Low
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3400]
type = Projectile
trigger1 = Time = 275
trigger2 = Time = 285
trigger3 = Time = 295
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 3,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = High
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0

[State 3400]
type = Projectile
trigger1 = Time = 280
trigger2 = Time = 290
trigger3 = Time = 300
ProjAnim = 8020
ProjHitAnim = 8021
ProjRemAnim = 8021
offset = 75,-10
velocity = 2, -.8
remvelocity = .7, 0
accel = 12,7
attr = A, HP
damage    = 1
animtype  = Medium
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s8021
sparkxy = 10, 5
guard.sparkno = s8021
hitsound = s1,3
guardsound = s6,0
ground.type = Low
ground.velocity = -4,15
air.velocity = -4,15
fall = 1
fall.recover = 0
fall.damage = 25

[State 3400]
type = EnvColor
trigger1 = Time = 300
value = 50,200,255
under = 0
time = 5

[State 3400]
type = ChangeState
trigger1 = Time = 300
value = 3301
ctrl = 0

;--------------------------------------------------------------
; Pegasus SuiSeiKen (air)
[Statedef 3500]
type = A
movetype = A
physics = N
anim = 3500
poweradd = -2000
juggle = 5
velset = 0,0
ctrl = 0

[State 3500]
type = VelSet
trigger1 = AnimElem = 7
x = 8
y = 8

[State 3500]
type = VelAdd
trigger1 = Time > 21
y = .5

[State 3500, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,3
channel = 0

[State 3500]
type = PlaySnd
trigger1 = Time = 22
value = 2,1

;Bg effect
[State 3500, super]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 200
mul = 150,150,222
sinadd = 34,56,67,240
add = 5,5,5

[State 3500]
type = SuperPause
trigger1 = Time = 0
time = 25
darken = 1
anim = S70091
pos = -30,-90
movetime = 0

[State 3500, light]
type = Explod
trigger1 = Time = 0
anim = 8050
pos = -30,0
postype = p1
sprpriority = 8
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3500, shooting light]
type = Explod
trigger1 = AnimElem = 2
anim = 81201
ID = 81201
pos = -55,20
postype = p1
sprpriority = -2
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3500]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3500, stars background]
type = Explod
trigger1 = Time = 2
anim = 8105
ID = 8105
pos = 0,0
postype = back
sprpriority = -3
supermove = 1
removetime = 100
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3500, cometa]
type = Explod
triggerall = NumExplod(8040) = 0
trigger1 = AnimElem = 7
anim = 8040
ID = 8040
pos = 38,-20
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = 0.5,0.5

[State 3500, cosmo]
type = Explod
triggerall = NumExplod(3503) = 0
trigger1 = AnimElem = 6
anim = 3503
ID = 3503
pos = 0,0
postype = p1
sprpriority = -2
supermove = 1
removetime = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3500]
type = HitDef
trigger1 = 1
priority = 7
attr = A, HA
damage = 30,6
priority = 7
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkxy = 0,0
sparkno = s8042
hitsound = s1,2
guardsound = S6,0
pausetime = 2,12
ground.hittime = 19
ground.type = high
ground.slidetime = 9
ground.velocity = -5,-5
air.velocity = -3,-3
fall = 1
envshake.time = 25
envshake.ampl = 7
envshake.freq = 176
fall.recover = 0
fall.damage = 25
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 55
Palfx.time          = 40
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 3500, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent = 0

[State 3500]
type = BGPalfx
trigger1 = Pos Y >= 0
ignorehitpause = 1
time = 1
mul = 150,150,222
sinadd = 34,56,67,240
add = 5,5,5

[State 3500, removeEX]
type = RemoveExplod
triggerall = NumExplod(8105) >= 1
trigger1 = Pos Y >= 0
ID = 8105

[State 3500]
type = ChangeState
triggerAll = movehit >= 1
trigger1 = Pos Y >= 0
value = 3501
ctrl = 0

[State 3500]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

;-------------------------------
[Statedef 3501]
type = A
movetype = I
physics = N
anim = 105
velset = -6,-10
ctrl = 0

[State 3501]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3501]
type = PlaySnd
trigger1 = Time = 0
value = 2,2

[State 3501]
type = VelAdd
trigger1 = Time > 0
y = .7

[State 3501, lampi]
type = BGPalfx
trigger1 = time = 1
ignorehitpause = 1
time = 20
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 3501, removeEX]
type = RemoveExplod
triggerall = NumExplod(8105) >= 1
trigger1 = Time = 0
ID = 8105

[State 3501]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 1

;--------------------------------------------------------------
; Pegasus Rolling Crash (close)
[Statedef 3600]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = -1000
velset = 0,0
ctrl = 0
anim = 3600

[State 3600]
type = AfterImage
trigger1 = time = 0
time = 17
FrameGap = 2
length = 10
PalBright = 10,10,10
PalContrast = 98,98,98
Trans = Add1

[State 3600]
type = HitDef
trigger1 = Time = 0
attr = S, HT
hitflag = M-
getpower = 0
givepower = 0
priority = 5, Miss
sparkno = -1
p1facing = 0
p2facing = 1
p1stateno = 3610
p2stateno = 3620
fall = 1
hitsound = S8,0
fall.damage = 200
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 55

[State 3600, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent = 0

[State 3600]
type = Changestate
trigger1 = animTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Pegasus Rolling Crash (far)
[Statedef 3601]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = -1000
velset = 0,0
ctrl = 0
anim = 3601
sprpriority = 2

[State 3601]
type = PlaySnd
trigger1 = Animelem = 1
value = 12,5

[State 3601]
type = SuperPause
trigger1 = Animelem = 1
time = 50
darken = 0
anim = s9012
pos = 0, -80
movetime = 50

[State 3601]
type = BGPalfx
trigger1 = Animelem = 1
ignorehitpause = 1
time = 50
mul = 152,152,205
add = 5,5,5
invertall = 0

[State 3601, big light]
type = Explod
trigger1 = AnimElem = 1
anim = 7033
ID = 7033
pos = 0,5
postype = p1
supermove = 1
sprpriority = 5
removetime = 50
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
scale = .5,.5

[State 3601, big light]
type = Explod
trigger1 = AnimElem = 1
anim = 7033
ID = 7033
pos = 0,6
postype = p1
supermove = 1
sprpriority = 5
removetime = 50
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
scale = .5,.5
vfacing = -1

[State 3601, powter]
type = Explod
trigger1 = AnimElem = 1
anim = 7011
id = 7011
pos = 0,0
postype = p1
supermove = 1
sprpriority = -3
removetime = 50
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1

[State 3601]
type = ChangeState
trigger1 = Time = 55
value = 3602
ctrl = 0

;
[Statedef 3602]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 0
velset = 0,0
anim = 3602
ctrl = 0

[State 3602]
type = AfterImage
trigger1 = Animelem = 3
time = 130
FrameGap = 5
length = 60
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 3602, scatto]
type = PlaySnd
trigger1 = Animelem = 3
value = 2,1

[State 3602, kiai]
type = PlaySnd
trigger1 = Animelem = 3
value = 12,3

[State 3602]
type = velset
trigger1 = Time >= 10
x = 7

[State 3602]
type = HitDef
trigger1 = Time = 0
attr = S, HT
hitflag = M-
getpower = 0
givepower = 0
priority = 5, Miss
sparkno = -1
p1facing = 0
p2facing = 1
p1stateno = 3610
p2stateno = 3620
fall = 1
hitsound = S8,0
fall.damage = 200
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 55

[State 3602, powter]
type = Explod
trigger1 = AnimElem = 3
pos = 35,0
anim = 7085
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
removeongethit = 1

[State 3602]
type = ChangeState
trigger1 = Time = 35
value = 52
ctrl = 1

;
[Statedef 3610]
type = S
movetype = A
physics = N
anim = 3610
poweradd = 0

[State 3610, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3610, pegasus zoom]
type = Explod
trigger1 = time = 20
anim = 6002
sprpriority = 4
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1

[State 3610, big light]
type = Explod
trigger1 = time = 0
anim = 7033
sprpriority = 2
postype = p1
pos = 0,5
bindtime = 1
supermove = 1
ownpal = 1
removetime = 45
scale = .5,.5

[State 3610, big light]
type = Explod
trigger1 = time = 0
anim = 7033
sprpriority = 2
postype = p1
pos = 0,6
bindtime = 1
supermove = 1
ownpal = 1
removetime = 45
scale = .5,.5
vfacing = -1

[State 3610]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3610, galaxy background]
type = Explod
trigger1 = Time = 35
anim = 8107
pos = -260,0
;postype = p1
sprpriority = -7
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 120
trans = add1

[State 3610, stars background]
type = Explod
trigger1 = Time = 45
anim = 8104
pos = 0,0
postype = back
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 110

[State 3610, shooting light]
type = Explod
trigger1 = Time = 75
anim = 8120
pos = -350,140
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3610]
type = AfterImage
trigger1 = time = 4
time = 130
FrameGap = 5
length = 60
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 3610, tornado]
type = Explod
trigger1  = AnimElem = 4
anim = 8090
ID = 8090
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 40
scale = 1,2
sprpriority = 10
ownpal = 1
supermove = 1

[State 3610, powter]
type = Explod
trigger1 = AnimElem = 4
anim = 7089
pos = -10,5
postype = p1
sprpriority = 5
ownpal = 1
supermove = 1

[State 3610, powter]
type = Explod
trigger1 = AnimElem = 4
anim = 70891
pos = 10,5
postype = p1
sprpriority = 5
ownpal = 1
supermove = 1

;Bg effect
[State 3610, super]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 25
persistent = 1
mul = 92,92,135
add = 5,5,5
invertall = 0
color = 192

[State 3610, camera]
type = Helper
trigger1 = AnimElem = 6
postype = Left
pos = -200, -950
stateno = 9999
keyctrl = 0
ownpal = 1

[State 3610]
type = VelAdd
trigger1 = AnimElem = 4
y = -2

[State 3610]
type = VelAdd
trigger1 = AnimElem = 4
y = -4
x = -1

[State 3610]
type = VelAdd
trigger1 = AnimElem = 5
y = -2
x = -1

[State 3610]
type = VelAdd
trigger1 = AnimElem = 6
y = -1
x = -1

[State 3610]
type = VelAdd
trigger1 = AnimElem = 7
y = 1
x = -1

[State 3610]
type = VelAdd
trigger1 = AnimElem = 8
y = 4
x = 0

[State 3610]
type = Screenbound
trigger1 = Time = 0
value = 0
movecamera = 0,0

[State 3610]
type = PlaySnd
trigger1 = time = 0
value = 15,3

[State 3610, voice]
type = PlaySnd
trigger1 = time = 1
value = 14,2
channel = 0

;------------------------
[State 3610]
type = TargetBind
trigger1 = animelem = 1
pos = 0,0

[State 3610]
type = TargetBind
trigger1 = AnimElem = 2
pos = -1,1

[State 3610]
type = TargetBind
trigger1 = AnimElem = 3
pos = 0,4

[State 3610]
type = TargetBind
trigger1 = AnimElem = 4
pos = -2, 15

[State 3610]
type = TargetBind
trigger1 = AnimElem = 5
pos = 0,0

[State 3610]
type = TargetBind
trigger1 = AnimElem = 6
pos = -1,-3

[State 3610]
type = TargetBind
trigger1 = AnimElem = 7
pos = -1,-2

[State 3610]
type = TargetBind
trigger1 = AnimElem = 8
time = 27
pos = -1,-1

;--------------------------------

[State 3610]
type = TargetState
trigger1 = AnimElem = 8
value = 3621

[State 3610, powter]
type = Explod
triggerall = P2StateNo = 3621
trigger1 = target,Pos Y = 0
anim = 7081
postype = p2
pos = -10,0
sprpriority = -4
ownpal = 1
supermove = 1

[State 3610, powter]
type = Explod
triggerall = P2StateNo = 3621
triggerall = NumExplod(128) = 0
trigger1 = target,Pos Y >= 0
anim = 70881
ID = 128
postype = p2
pos = 0,6
sprpriority = 4
ownpal = 1
supermove = 1

[State 3610, powter]
type = Explod
triggerall = P2StateNo = 3621
triggerall = NumExplod(127) = 0
trigger1 = target,Pos Y >= 0
anim = 7088
ID = 127
postype = p2
pos = 0,6
sprpriority = 4
ownpal = 1
supermove = 1

[State 3610]
type = VelAdd
trigger1 = AnimElem = 8
x = -2
y = 15

[State 3610]
type = ChangeState
trigger1 = AnimTime = 0
value = 3611
ctrl = 0

;
[Statedef 3611]
type = A
movetype = I
physics = N
anim = 105
velset = -10,-9

[State 3611]
type = VelAdd
trigger1 = Time > 0
y = .7

[State 3611]
type = AfterImage
trigger1 = time = 0
time = 5
FrameGap = 5
length = 10
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 3611, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time = 40
ignorehitpause = 1
persistent = 0

[State 3611]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52

;
[Statedef 3620]
type = A
movetype = H
physics = N
velset = 0,0

[State 3620]
type = AfterImage
trigger1 = time = 4
time = 110
FrameGap = 5
length = 60
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd  = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 3620]
type = ChangeAnim2
trigger1 = time = 0
value = 3620

;
[Statedef 3621]
type = A
movetype = H
physics = N
velset = 6, -5
poweradd = 0

[State 3621, AfterImageTime]
type = AfterImageTime
trigger1 = time = 1
time = 19

[State 3621]
type = VelAdd
trigger1 = 1
y = .4

[State 3621]
type = Turn
trigger1 = time = 0

[State 3621]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;--------------------------------------------------------------
; Sagittarius Arrow
[Statedef 3700]
type = S
movetype = A
physics = S
anim = 3700
poweradd = -3000
velset = 0,0
ctrl = 0

[State 3700, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3700, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,6
channel = 0

[State 3700, sagittarius background]
type = Explod
trigger1 = Time = 0
anim = 8109
ID = 8109
pos = 0,0
postype = back
sprpriority = -5
removetime = 175
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3700]
type = HitDef
trigger1 = Time = 0
priority = 7
attr = S, HA
damage = 0
animtype = hard
guardflag = MA
getpower = 0
givepower = 0
sparkno = -1
;sparkxy = -10,-70
hitsound = S15,0
pausetime = 0,12
ground.hittime = 16
ground.type = high
ground.slidetime = 0
ground.velocity = -120
air.velocity = -10, -1

[State 3700, snd]
type = PlaySnd
trigger1 = AnimElem = 14
value = 2,1

[State 3700, snd]
type = PlaySnd
trigger1 = AnimElem = 15
value = 4,0

[State 3700, snd]
type = PlaySnd
trigger1 = AnimElem = 16
value = 4,1

[State 3700, snd]
type = PlaySnd
trigger1 = AnimElem = 17
value = 4,2

[State 3700, snd]
type = PlaySnd
trigger1 = AnimElem = 18
value = 4,3

[State 3700, snd]
type = PlaySnd
trigger1 = AnimElem = 19
value = 4,4

[State 3700, snd]
type = PlaySnd
trigger1 = AnimElem = 20
value = 4,5

[State 3700, sun light]
type = Explod
trigger1 = Time = 0
anim = 8110
pos = 0,-0
postype = Left
sprpriority = -2
ontop = 1
supermovetime = 300
removetime = 230
bindtime = -1
ownpal = 1
supermove = 1

[State 3700, dleng]
type = PlaySnd
trigger1 = Time = 0
value = 15,5

;---------------gold cloth

[State 3700, cloth]
type = Helper
triggerall = enemy, Power < 3000
trigger1 = Time = 5
helpertype = player
postype = Left
pos = 160, -200
stateno = 9999
supermovetime = 335
keyctrl = 0
ownpal = 1

[State 3700, cloth]
type = Helper
triggerall = enemy, Power >= 3000
trigger1 = Time = 5
postype = Left
pos = 160, -200
stateno = 9999
supermovetime = 335
keyctrl = 0
ownpal = 1

[State 3700, cloth]
type = Explod
anim = 3710
trigger1 = Time = 5
pos = 60,-75
postype = p1
sprpriority = 4
supermove = 1
removetime = 192
ignorehitpause = 1
ownpal = 1
bindtime = -1

[State 3700, flash]
type = EnvColor
trigger1 = Time = 197
value = 250,235,5
time = 5

[State 3700, snd]
type = PlaySnd
trigger1 = Time = 197
value = 12,0

[State 3700, cloth on]
type = Explod
anim = 3711
trigger1 = time = 197
pos = 0,0
postype = p1
sprpriority = 4
supermove = 1
ignorehitpause = 1
removetime = 21
ownpal = 1
bindtime = -1

[State 3700, helmet on]
type = Explod
anim = 3712
trigger1 = time = 197
pos = 0,0
postype = p1
sprpriority = 4
supermove = 1
ignorehitpause = 1
removetime = 21
ownpal = 1
bindtime = -1

[State 3700, voice]
type = PlaySnd
trigger1 = AnimElem = 24, = 25
value = 14,7
channel = 0

[State 3700, gold light]
type = Explod
trigger1 = AnimElem = 43
anim = 8061
sprpriority = 4
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1

[State 3700, light]
type = Explod
trigger1 = AnimElem = 43
anim = 8051
postype = p1
pos = 20,30
bindtime = 1
supermove = 1
ownpal = 1

;[State 3700, aioros]
;type = Explod
;trigger1 = AnimElem = 43
;anim = 2010
;pos = 0,-25
;postype = p1
;sprpriority = -2
;supermove = 1
;;removetime = 80
;ignorehitpause = 1
;ownpal = 1
;bindtime = -1
;persistent = 0
;removeongethit = 1

[State 3700, cosmo]
type = Explod
trigger1 = AnimElem = 46
anim = 3703
ID = 3703
pos = 0,-3
postype = p1
sprpriority = -2
supermove = 1
removetime = 105
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3700 , 5]
type = PlaySnd
trigger1 = AnimElem = 43
value = 4,4

[State 3700, snd]
type = PlaySnd
trigger1 = AnimElem = 47, = 93
value = 14,8
channel = 0

[State 3700 , 1]
type = SprPriority
trigger1 = Time = 0
value = 2

[State 3700 , 2]
type = SuperPause
trigger1 = Time = 35
time = 310
darken = 0
anim = -1
movetime = 310

[State 3700, big light]
type = Explod
trigger1 = Time = 35
anim = 7032
sprpriority = 4
postype = p1
pos = 0,5
bindtime = 1
supermove = 1
ownpal = 1
removeongethit = 1
scale = .5,.5

[State 3700, big light]
type = Explod
trigger1 = Time = 35
anim = 7032
sprpriority = 4
postype = p1
pos = 0,6
bindtime = 1
supermove = 1
ownpal = 1
removeongethit = 1
scale = .5,.5
vfacing = -1

[State 3700, snd]
type = PlaySnd
trigger1 = time = 1
value = 5,2

[State 3700, dleng]
type = PlaySnd
trigger1 = Time = 0
value = 15,1

[State 3700, envcolor]
type = EnvColor
trigger1 = AnimElem = 6, = 2
trigger2 = AnimElem = 9, = 2
trigger3 = AnimElem = 12, = 2
trigger4 = AnimElem = 16, = 2
trigger5 = AnimElem = 20, = 1
value = 231,231,231
time = 1

[State 2100, light]
type = Explod
trigger1 = AnimElem = 47
anim = 7061
ID = 7061
removetime = 150
sprpriority = 4
supermovetime = 300
postype = p1
pos = 80,-32
bindtime = 1
supermove = 1
ownpal = 1
removeongethit = 1

[State 3700, removeEX]
type = RemoveExplod
triggerall = NumExplod(7061) >= 1
trigger1 = AnimElem = 48
ID = 7061

[State 3700, arrow]
type = Projectile
trigger1 = AnimElem = 48
forcestand = 1
attr = S, SP
projanim = 3720
projhitanim = 3722
projstagebound = 40
projshadow = 0,0,0
projremovetime = 200
supermovetime = 1000
offset = 0,-3
postype = p1    
velocity = 10,0
damage = 10000
getpower = 0
givepower = 0
animtype = Hard
pausetime = 20,20
sparkno = -1
guard.sparkno = -1
hitsound = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -15,-10
air.velocity = 8,6
fall = 1
p2stateno = 1025

[State 3700, arrow cosmo]
type = Projectile
trigger1 = AnimElem = 48
attr = S, SP
projanim = 3721
projhitanim = 3721
projremovetime = 200
supermovetime = 200
offset = 0,-3
postype = p1
velocity = 10,0

[State 3700, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent = 0

[State 3700, success]
type = ChangeState
triggerall = p2life <= 0
trigger1 = AnimTime = 0
value = 3701

[State 3700, miss]
type = ChangeState
triggerall = p2life > 0
trigger1 = AnimTime = 0
value = 3702

;
[Statedef 3701]
type = S
movetype = I
physics = S
anim = 3701
velset = 0,0

[State 3701, 1]
type = VarSet
trigger1 = Time = 0
var(0) = 1

[State 3701, 2]
type = ChangeState
trigger1 = Time = 50
value = 0
ctrl = 1

;
[Statedef 3702]
type = S
anim = 3702
sprpriority = 0
ctrl = 0

[State 3702]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3702]
type = SuperPause
trigger1 = AnimElem = 1
time = 187
anim = -1
pos = 20,-60
movetime = 181

[State 3702]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9,3

[State 3702, cloth away]
type = Explod
trigger1 = AnimElem = 3
anim = 3714
sprpriority = 4
postype = p1
pos = 0,0
supermove = 1
bindtime = 1
removetime = 90
ownpal = 1

[State 3702, helmet away]
type = Explod
trigger1 = AnimElem = 3
anim = 3715
sprpriority = 4
postype = p1
pos = 0,0
supermove = 1
bindtime = 1
removetime = 90
ownpal = 1

[State 3702, flash]
type = EnvColor
trigger1 = AnimElem = 8
value = 255,255,255
under = 0
time = 8

[State 3702, snd]
type = PlaySnd
trigger1 = AnimElem = 12
value = 4,0

[State 3702, snd]
type = PlaySnd
trigger1 = AnimElem = 13
value = 4,1

[State 3702, snd]
type = PlaySnd
trigger1 = AnimElem = 14
value = 4,2

[State 3702, snd]
type = PlaySnd
trigger1 = AnimElem = 15
value = 4,3

[State 3702, snd]
type = PlaySnd
trigger1 = AnimElem = 16
value = 4,4

[State 3702, snd]
type = PlaySnd
trigger1 = AnimElem = 17
value = 4,5

[State 3702, snd]
type = PlaySnd
trigger1 = AnimElem = 18
value = 4,6

[State 3702, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Athena Shield
[Statedef 3800]
type = S
movetype = A
physics = S
anim = 3800
poweradd = -3000
velset = 0,0
ctrl = 0

[State 3800, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3800, flash]
type = EnvColor
trigger1 = Time = 0
value = 255,255,255
under = 0
time = 3

[State 3800, flash]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 35
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 3800]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,2

[State 3800, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,9
channel = 0

[State 3800, voice]
type = PlaySnd
trigger1 = AnimElem = 19
value = 15,6

[State 3800]
type = PlaySnd
trigger1 = AnimElem = 9
value = 0,0

[State 3800]
type = PlaySnd
trigger1 = AnimElem = 15
value = 0,2

[State 3800]
type = PlaySnd
trigger1 = AnimElem = 17
value = 5,1

[State 3800]
type = SuperPause
trigger1 = Time = 0
time = 155
anim = S7109
pos = 50,-35
darken = 0
movetime = 155

[State 3800, light]
type = Explod
trigger1 = AnimElem = 1
ignorehitpause = 1
anim = 8051
ID = 8051
pos = 20,50
postype = p1
sprpriority = -3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1

[State 3800, powter]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 19
anim = 7010
ID = 131
pos = 12,-2
postype = p1
sprpriority = -2
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 400

[State 3800, gold light]
type = Explod
trigger1 = AnimElem = 17
anim = 8061
ID = 8061
pos = -60,-36
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 30

[State 3800, hit]
type = Explod
triggerall = NumExplod(3722) = 0
trigger1 = projhit8070 = 1
pos = -110,20
anim = 3722
ID = 3722
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3800, lampi]
type = BGPalfx
trigger1 = projhit8070 = 1
ignorehitpause = 1
time = 75
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 3800, athena]
type = Explod
trigger1 = time = 0
anim = 2020
pos = 30,0
sprpriority = -6
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
persistent = 1
facing = -1

[State 3800, cosmo1]
type = Explod
triggerall = NumExplod(3803) = 0
trigger1 = AnimElem = 18
anim = 3803
ID = 3803
pos = 12,4
sprpriority = -3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
persistent = 1
removetime = 400

[State 3800, cosmo2]
type = Explod
triggerall = NumExplod(3804) = 0
trigger1 = AnimElem = 18
anim = 3804
ID = 3804
pos = 13,4
sprpriority = -2
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
persistent = 1
removetime = 400

[State 3800, sun light]
type = Explod
trigger1 = time = 0
pos = -320,0
anim = 8111
ID = 8111
postype = right
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

[State 3800, removeEX]
type = RemoveExplod
triggerall = NumExplod(8111) = 1
trigger1 = AnimElem = 18
ID = 8111

[State 3801, rayo]
type = Projectile
trigger1 = AnimElem = 19
projanim = 8070
projid = 8070
projhits = 600
projmisstime = 4
projpriority = 4
projremovetime = 100
offset = -15, -173
sparkno = -1
sparkxy = 180,100
velocity = 0,0
attr = S, HP
damage = 23
animtype = hard
getpower = 0
givepower = 0
pausetime = 0,9
hitsound   = S1,6
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10,-5
air.velocity = -10,-5
air.animtype = Back
air.juggle = 3
fall = 1
fall.recover = 0
fall.damage = 33
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 55
Palfx.mul           = 255,245,0
Palfx.sinadd        = -52,-52,0,3
Palfx.invertall     = 1

[State 3800]
type = VarSet
triggerall = p2life < 1
trigger1 = 1
var(0) = 2

[State 3800]
type = ChangeState
trigger1 = Time = 270
value = 3801
ctrl = 1

;
[Statedef 3801]
type = S
movetype = A
physics = S
anim = 3801
velset = 0,0
ctrl = 0

[State 3801]
type = SuperPause
trigger1 = P2Life != 0
trigger1 = Time = 0
time = 160
anim = -1
pos = -1
darken = 1
movetime = 160

[State 3801, removeEX]
type = RemoveExplod
triggerall = NumExplod(131) >= 1
trigger1 = time = 0
ID = 131

[State 3801, removeEX]
type = RemoveExplod
triggerall = NumExplod(3803) >= 1
trigger1 = time = 0
ID = 3803

[State 3801, removeEX]
type = RemoveExplod
triggerall = NumExplod(3804) >= 1
trigger1 = time = 0
ID = 3804

[State 3801]
type = PlaySnd
trigger1 = time = 0
value = 4,0

[State 3801]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,2

[State 3801, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 10,3

[State 3801, Helper]
type = Helper
trigger1 = time = 0
stateno = 3810
ID = 3810
postype = p1
pos = 2, -123
ownpal = 1
pausemovetime = 160
supermovetime = 160

[State 3801, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3801]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Athena Shield (helper)
[Statedef 3810]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 3810
ctrl = 0
sprpriority = 4

[State 3810]
type = PlaySnd
trigger1 = time = 5
value = 2,0

[State 3810, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3810]
type = Velset
trigger1 = time = 0
x = 2
y = -10

[State 3810]
type = Veladd
trigger1 = time >= 0
y = .35

[State 3810]
type = ChangeState
trigger1 = pos y >= 0
value = 3811
ctrl = 1

;
[Statedef 3811]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 3811
ctrl = 0
sprpriority = 4

[State 3811, powter]
type = Explod
trigger1 = Time = 1
anim = 7080
pos = 0,0
postype = p1
sprpriority = 10
ownpal = 1
ignorehitpause = 1
supermovetime = 160

[State 3811, powter]
type = Explod
trigger1 = Time = 1
anim = 7080
pos = 40,-3
postype = p1
sprpriority = 10
ownpal = 1
ignorehitpause = 1
supermovetime = 160

[State 3811, powter]
type = Explod
trigger1 = Time = 15
anim = 7080
pos = 40,0
postype = p1
sprpriority = 10
ownpal = 1
ignorehitpause = 1
supermovetime = 160

[State 3811, powter]
type = Explod
trigger1 = Time = 15
anim = 7080
pos = 60,-3
postype = p1
sprpriority = 10
ownpal = 1
ignorehitpause = 1
supermovetime = 160

[State 3811, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3811]
type = Velset
trigger1 = 1
x = 0
y = 0

[State 3811, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3811]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
trigger4 = AnimElem = 11
value = 6,1

[State 3811]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
; Camera
[Statedef 9999]
type = S
movetype = A
physics = S
anim = 9999
juggle = 0
velset = 0,0
ctrl = 0

[State 9999]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 9999]
type = DestroySelf
trigger1 = Time = ifelse (root,stateno = 3610,30,100)

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------

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

[State -2, 7th Sense Right]
type = Explod
triggerall = var(51) = 1
trigger1 = stateno = 999
trigger1 = time = 15
anim = 7099
pos = 65,75
postype = left
sprpriority = -5
ownpal = 1
removeongethit = 0
persistent = 0

[State -2, 7th Sense Left]
type = Explod
triggerall = var(51) = 2
trigger1 = stateno = 999
trigger1 = time = 15
anim = 7099
pos = -65,75
postype = right
sprpriority = -5
ownpal = 1
removeongethit = 0
persistent = 0

[State -2, 7th Sense]
type = VarSet
triggerall = var(8) = 1
trigger1 = power = 0
var(8) = 0

[State -2, 7th Sense]
type = PowerAdd
trigger1 = var(8) = 1
value = -5

[State -2, 7th Sense]
type = PalFX
triggerall = var(8) = 1
triggerall = power >= 1
triggerall = life >= 1
trigger1 = anim != 6666666
trigger1 = animelem = 2
time = 200
add = 5,5,5
sinadd = 200,200,10,4

[State -2, 7th Sense]
type = AttackMulSet
triggerall = var(8) = 1
triggerall = power >= 1
triggerall = life >= 1
trigger1 = anim != 6666666
trigger1 = animelem = 2
value = 2

[State -2, 7th Sense]
type = AttackMulSet
triggerall = var(8) != 1
triggerall = var(8) = 0
triggerall = power < 1
triggerall = life >= 1
trigger1 = anim != 6666666
trigger1 = animelem = 2
value = 1

;---------------------------------------------------------------------------
; Random sounds
;---------------------------------------------------------------------------

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 10,1

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 10,0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10,2

[State -2, Random sound]
type = PlaySnd
trigger1 = random < 500
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10,2

[State -2, Random sound]
type = PlaySnd
trigger1 = random < 750
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 10,3

;---------------------------------------------------------------------------
; Combos
;---------------------------------------------------------------------------

; Mega Combo Mista
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 210
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact) 
value = 1100
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 1100) && (prevstateno = 210) && (movecontact) 
value = 240
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 1100) && (prevstateno = 240) && (movecontact) 
value = 220
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 240) && (movecontact) 
value = 235
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 220) && (movecontact) 
value = 255

; Mega Combo Mista
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 225
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 225) && (prevstateno = 200) && (movecontact) 
value = 220
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 225) && (movecontact) 
value = 250
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 220) && (movecontact) 
value = 230
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 250) && (movecontact) 
value = 240
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 230) && (movecontact) 
value = 1100
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 1100) && (prevstateno = 240) && (movecontact) 
value = 235
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 1100) && (movecontact) 
value = 420

; Combo ravvicinata
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 205) 
trigger1 = (movecontact)
value = 235
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 205) && (movecontact) 
value = 255

;-----------------------Mod Squall---------------

; Combo ravvicinata
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 210
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact) 
value = 220

; Combo ravvicinata
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 450) 
trigger1 = (movecontact)
value = 225
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 225) && (prevstateno = 450) && (movecontact) 
value = 1400

; Combo ravvicinata
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 220
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 230) && (movecontact) 
value = 210

;-----------------------End Mod Squall---------------

; Combo Standard (4 pugni)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 205) 
trigger1 = (movecontact)
value = 200
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 205) && (movecontact) 
value = 225
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 225) && (prevstateno = 200) && (movecontact) 
value = 220

; Combo Standard (4 pugni)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 225
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 225) && (prevstateno = 210) && (movecontact) 
value = 220
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 225) && (movecontact) 
value = 620

; Combo Standard (4 calci)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235) 
trigger1 = (movecontact)
value = 230
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 235) && (movecontact) 
value = 250
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 230) && (movecontact) 
value = 246

; Combo Standard (3 calci)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 246
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 247) && (prevstateno = 246) && (movecontact) 
value = 245
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X < 180) && (power >= 1000) && (power < 2000) && (random = [550,600])
trigger1 = (stateno = 245) && (prevstateno = 246) && (movecontact) 
value = 3000 

; Combo (pugno + gomitata + uppercut)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 1100
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 1100) && (prevstateno = 210) && (movecontact) 
value = 1200

; Calcio + scivolata
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 1500

; 2 Calci + Combo volante
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235) 
trigger1 = (movecontact)
value = 240
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X < 180) && (power >= 1000) && (power < 2000) && (random = [550,600])
trigger1 = (stateno = 240) && (prevstateno = 235) && (movecontact) 
value = 3000

; Calcio + pegasus kick
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 1302

; Calcio + pegasus kick + Combo volante
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235) 
trigger1 = (movecontact)
value = 1300
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 1300) && (prevstateno = 235) && (movecontact) 
value = 1400

; Uppercut basso + pegasus kick
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 420) 
trigger1 = (movecontact)
value = 1301

;---------------------------------------------------------------------------
; Combo abbasato (Mille calci)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 431

; Combo abbasato (Pugno + 2calci)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400) 
trigger1 = (movecontact)
value = 430
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 430) && (prevstateno = 400) && (movecontact) 
value = 450

; Combo abbasato (Pugno + 2calci)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 410) 
trigger1 = (movecontact)
value = 450
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 450) && (prevstateno = 410) && (movecontact) 
value = 430

; Combo abbasato (3 pugni)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400) 
trigger1 = (movecontact)
value = 410
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 400) && (movecontact) 
value = 420

; Combo abbasato (calci)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 440
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 440) && (prevstateno = 430) && (movecontact) 
value = 450

;---------------------------------------------------------------------------
; Combo in aria (2calci + calcio volante)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 640
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 640) && (prevstateno = 630) && (movecontact) 
value = 1600

; Combo in aria (2calci + calcio volante)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 630
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 630) && (prevstateno = 640) && (movecontact) 
value = 1600

; Combo in aria (Pugno + 3calci)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 630
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 630) && (prevstateno = 610) && (movecontact) 
value = 640
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 640) && (prevstateno = 630) && (movecontact) 
value = 650

; Combo in aria (Pugno + 2calci)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 630
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 630) && (prevstateno = 610) && (movecontact) 
value = 650


; Combo in aria (Pugni + uppercut)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 1201

; Combo in aria (Pugni + uppercut)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 1201

; Combo in aria (3 Pugni)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 610
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 600) && (movecontact) 
value = 620

; Combo in aria (3 Calci)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 640
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 640) && (prevstateno = 630) && (movecontact) 
value = 650

;---------------------------------------------------------------------------
; 2\3 Button Combination
;---------------------------------------------------------------------------

; Throw
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [150, 200])
trigger1 = (P2bodydist X <= 15) && (prevstateno != 5120) 
value = 800

; Cosmo Charge
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 150])
trigger1 = (P2bodydist X >= 150) && (power < 3000) && (prevstateno != 5120)
trigger1 = var(8) = 0
value = 900

; Super Guard
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [51, 100])
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (power >= 1000)
value = 950

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(8) = 0
triggerall = (var(10)=0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [900,990])
value = 198

[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(8) = 0
triggerall = (var(10)=0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [900,990])
value = 199

;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------

; Pegasus Meteors 1
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [300, 400])
trigger1 = (P2bodydist X >= 200) && (prevstateno != 5120)
value = 1000

; Pegasus Meteors 2
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [300, 400])
trigger1 = (P2bodydist X >= 200) && (prevstateno != 5120)
value = 1010

; Pegasus Meteors 3
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [300, 400])
trigger1 = (P2bodydist X >= 200) && (prevstateno != 5120) 
value = 1020

; Elbow Dash
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [600, 700])
trigger1 = (P2bodydist X < 140) && (prevstateno != 5120) 
value = 1100

; Flying Uppercut
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [200, 300])
trigger1 = (P2bodydist X < 50) && (prevstateno != 5120)
value = 1200

; Flying Uppercut (air)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = A) && (ctrl) && (random = [200, 300])
trigger1 = (P2bodydist X < 50) && (prevstateno != 5120)
value = 1201

; Pegasus Kick 1
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [700, 800])
trigger1 = (P2bodydist X < 110) && (prevstateno != 5120)
value = 1300

; Pegasus Kick 2
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [700, 800])
trigger1 = (P2bodydist X <= 200) && (P2bodydist Y <= -10) && (prevstateno != 5120)
value = 1301

; Pegasus Kick 3
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [700, 800])
trigger1 = (P2bodydist X < 110) && (prevstateno != 5120) 
value = 1302

; Aerial Combo 
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [400, 500])
trigger1 = (P2bodydist X <= 120) && (prevstateno != 5120)
value = 1400

; Slide
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [500, 600])
trigger1 = (P2bodydist X >= 120) && (prevstateno != 5120)
value = 1500

; Pegasus Flying Kick (air)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = A) && (ctrl) && (random = [800, 900])
trigger1 = (P2bodydist X <= 200) && (prevstateno != 5120) 
value = 1600

; Missile Kick(air)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = A) && (ctrl) && (random = [800, 900])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) 
value = 1700

;---------------------------------------------------------------------------
; Super Moves
;---------------------------------------------------------------------------

; Pegasus RyuSeiKen 1
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X < 150) && (p2bodydist X >= 30) && (power >= 1000) && (power < 3000) && (random = [0,100])
value = 3000

; Pegasus RyuSeiKen 1 (air)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = A) && (ctrl)
trigger1 = (p2bodydist X < 150) && (Pos Y <= -50) && (Pos Y > -320) && (power >= 1000) && (power < 2000) && (random = [0,100])
value = 3300

; Pegasus RyuSeiKen 2
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 50) && (power >= 2000) && (random = [100,200])
value = 3100

; Pegasus RyuSeiKen 2 (air)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = A) && (ctrl)
trigger1 = (p2bodydist X < 150) && (Pos Y <= -50) && (Pos Y > -320) && (power >= 2000) && (random = [100,200])
value = 3400

; Pegasus SuiSeiKen
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 150) && (power >= 3000) && (random = [200,300])
value = 3200

; Pegasus SuiSeiKen (air)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = A) && (ctrl)
trigger1 = (p2bodydist X <= 200) && (Pos Y <= -50) && (power >= 2000) && (random = [200,300])
value = 3500

; Pegasus Rolling Crash
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X < 50) && (power >= 1000) && (power < 2000) && (prevstateno != 5120) && (random = [300,400])
value = 3600

; Sagittarius Arrow
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 100) && (power >= 3000) && (p2life <= 250) && (random = [400,500])
value = 3700

; Athena Shield
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (life <= 250) && (ctrl)
trigger1 = (p2bodydist X >= 150) && (power >= 3000) && (random = [500,600])
value = 3800

; 7th Sense
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(8) = 0
triggerall = (var(59) != 0) && (statetype = S) && (life <= 250) && (ctrl)
trigger1 = (p2bodydist X >= 50) && (power >= 3000) && (random = [600,700])
value = 999

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

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(2) >= 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life <= 250
ID = 2

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3) >= 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life > 250
ID = 3

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(186) >= 1
trigger1 = stateno != 181
trigger1 = stateno != 198
trigger1 = stateno != 3100
trigger1 = stateno != 3200
trigger1 = stateno != 3300
trigger1 = stateno != 3700
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
ID = 186

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(186) >= 1
trigger1 = stateno != 181
trigger1 = stateno != 198
trigger1 = stateno != 3100
trigger1 = stateno != 3200
trigger1 = stateno != 3300
trigger1 = stateno != 3700
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
ID = 187

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(1603) >= 1
trigger1 = stateno != 1600
ID = 1603

[State -3, remove]
type = RemoveExplod
triggerall = NumExplod(3503) >= 1
trigger1 = stateno != 3500
ID = 3503

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(7034) >= 1
trigger1 = stateno != 1700
ID = 7034

[State -3, remove]
type = RemoveExplod
triggerall = NumExplod(8040) >= 1
trigger1 = stateno != 3500
ID = 8040

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(8081) >= 1
trigger1 = stateno != 1600
ID = 8081

[State -3, remove]
type = RemoveExplod
triggerall = NumExplod(81201) >= 1
trigger1 = stateno != 3500
ID = 81201

;-------------------------------------

[State -3, BugSpirale]
type = DestroySelf
triggerall = ishelper
trigger1 = stateno = [0,200]
trigger2 = stateno = [5000,5210]

;-------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = AnimElem = 4
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = AnimElem = 4
value = F3,0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = AnimElem = 2
value = 3,1

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = AnimElem = 2
value = F3,1

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 21
trigger1 = AnimElem = 4
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 21
trigger1 = AnimElem = 4
value = F3,0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 21
trigger1 = AnimElem = 2
value = 3,1

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 21
trigger1 = AnimElem = 2
value = F3,1

;-------------------------------------

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = Time = 1
value = 2,0

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = Time = 1
value = F2,0

[State -3, AirJump]
type = Explod
triggerall = stateno = 45
trigger1 = time = 1
anim = 8080
pos = 30,10
postype = p1
sprpriority = -3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

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

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = Time = 1
value = 2,1

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = Time = 1
value = F2,1

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = Time = 1
value = 2,2

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = Time = 1
value = F2,3

;-------------------------------------

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = time = 1
time = 25
FrameGap = 3
length = 15
PalBright = 10,10,10
PalContrast = 98,98,98
Trans = Add1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = Time = 1
pos = 35,0
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = AnimElem = 2
pos = 35,0
anim = 7085
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Time = 1
value = 2,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Time = 1
value = F2,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 4, -1
value = 3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 4, -1
value = F3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 6, = 3
value = 3,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 6, = 3
value = F3,1

;-------------------------------------

[State -3, Run Back]
type = AfterImage
triggerall = stateno = 105
trigger1 = time = 1
time = 18
FrameGap = 3
length = 15
PalBright = 10,10,10
PalContrast = 98,98,98
Trans = Add1

[State -3, Run Back]
type = Explod
triggerall = stateno = 105
trigger1 = time = 5
pos = -10,12
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

;-------------------------------------

[State -3, Cloth Pieces]
type = Explod
triggerall = life <= 0
triggerall = anim = ifelse(selfanimexist(5148),5148,5150)
triggerall = numexplod(5151) = 0
trigger1 = time = 1
anim = 5151
ID = 5151
pos = -20,-50
sprpriority = 5
ownpal = 1

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = Var(58) = 0
triggerall = Life <= 0
triggerall = anim = ifelse(selfanimexist(5148),5148,5150)
trigger1 = time = 3
trigger2 = time = 6
trigger3 = time = 9
value = 11,1

;-------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9