;---------------------------------------------------------------------------
; SHIRYU ST FILE by Cheitta, Mu, Aries.A, TonyADV, Tux, Squall, FobiaZ
;---------------------------------------------------------------------------

; Lose by Time over
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

;---------------------------------------------------------------------------
; Lose by Time over 1
[Statedef 171]
type = S
ctrl = 0
anim = 171
velset = 0,0

[State 171]
type = AssertSpecial
trigger1 = Time = [0,160]
flag = roundnotover

[State 171, 1]
type = PlaySnd
trigger1 = Animelem = 8
value = 10,2

[State 171, 2]
type = PlaySnd
trigger1 = Animelem = 14
trigger2 = Animelem = 21
trigger3 = Animelem = 31
value = 3,1

[State 171, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Lose by Time over 2
[Statedef 172]
type = S
ctrl = 0
anim = 172
velset = 0,0

[State 172, Voice]
type = PlaySnd
trigger1 = Animelem = 3
value = 700,7
channel = 0

[State 172]
type = PlaySnd
trigger1 = Animelem = 2
value = 5,2

[State 172]
type = PlaySnd
trigger1 = Animelem = 4
value = 10,1

[State 172]
type = AssertSpecial
trigger1 = Time = [0,270]
flag = RoundNotOver

[State 172]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, koryuha]
type = ChangeState
trigger1 = Var(11) = 1
value = 183

[State 180, libra sword]
type = ChangeState
trigger1 = Var(14) = 1
value = 184

[State 180, lowlife]
type = ChangeState
triggerall = life <= 250
trigger1 = Var(11) != 1 && Var(14) != 1
value = 187

[State 180, normal1]
type = ChangeState
triggerall = MatchOver = 0 && life >= 250
trigger1 = Var(11) != 1 && Var(14) != 1
value = 181

[State 180, normal2]
type = ChangeState
triggerall = MatchOver = 1 && life >= 250
trigger1 = Var(11) != 1 && Var(14) != 1
value = 182

;---------------------------------------------------------------------------
; Win 1 (round win)
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181]
type = AssertSpecial
trigger1 = Time = [0,560]
flag = RoundNotOver

[State 181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181]
type = PlaySnd
trigger1 = Animelem = 2
value = 0,1

[State 181]
type = PlaySnd
trigger1 = Animelem = 2
value = 12,1

[State 181]
type = PlaySnd
trigger1 = Animelem = 12
value = 4,3

[State 181]
type = PlaySnd
trigger1 = Animelem = 17
value = 2,1

[State 181]
type = PlaySnd
trigger1 = Animelem = 22
value = 200,6
channel = 0

[State 181, armor]
type = Explod
trigger1 = AnimElem = 17
pos = 0,0
anim = 3010
sprpriority = 5
supermove = 1
removetime = -1
ownpal = 1

[State 181, face]
type = Explod
trigger1 = AnimElem = 21
pos = 0,0
anim = 1810
sprpriority = 5
supermove = 1
removetime = -1
ownpal = 1

[State 181, Mouth]
type = Explod
trigger1 = AnimElem = 22
anim = 1962
ID = 1962
pos = 38,2
postype = p1
supermove = 1
bindtime = 390
sprpriority = 6
removetime = 390
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 181, cosmo]
type = Explod
trigger1 = AnimElem = 29
pos = 49,1
anim = 1813
sprpriority = -2
supermove = 1
removetime = -1
scale = .9, 1
ownpal = 1

;---------------------------------------------------------------------------
; Win 2 (match win)
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = RoundNotOver

[State 182, Mouth]
type = Explod
trigger1 = Time = 0
anim = 1961
ID = 1961
pos = 1,-1
postype = p1
bindtime = 300
sprpriority = 10
removetime = 80
removeongethit = 1

[State 182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 182]
type = PlaySnd
trigger1 = Time = 0
value = 13,2
channel = 0

;---------------------------------------------------------------------------
; Win 3 (koryuha)
[Statedef 183]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 183]
type = AssertSpecial
trigger1 = Time = [0,350]
flag = RoundNotOver

[State 183, shura]
type = Explod
trigger1 = time = 1
anim = 2031
pos = 150,-100
postype = p1
removetime = 620
sprpriority = 3
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 0
scale = 0.5,0.5

[State 183]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 183, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3,0

[State 183, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 500,0
channel = 0

;---------------------------------------------------------------------------
; Win 4 (libra sword)
[Statedef 184]
type = S
ctrl = 0
anim = 199
velset = 0,0

[State 184]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 184]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 184]
type = Explod
trigger1 = Time = 0
anim = 2010
ID = 2010
pos = 150,-100
postype = p1
sprpriority = 5
supermove = 1
removetime = 200
ownpal = 1

[State 184]
type = PlaySnd
trigger1 = Time = 0
value = 5,3

[State 184]
type = PlaySnd
trigger1 = Time = 10
value = 200,4
channel = 0

[State 184]
type = PlaySnd
trigger1 = Time = 167
value = 2,1

;---------------------------------------------------------------------------
; Win 7 (low life)
[Statedef 187]
type = S
ctrl = 0
anim = 171
velset = 0,0

[State 187]
type = AssertSpecial
trigger1 = Time = [0,400]
flag = RoundNotOver

[State 187]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 187, Voice]
type = PlaySnd
trigger1 = time = 20
value = 10,2

[State 187, Voice]
type = PlaySnd
trigger1 = time = 100
value = 13,6
channel = 0

[State 187, schizzo]
type = PlaySnd
trigger1 = Animelem = 1
trigger2 = Animelem = 9
trigger3 = Animelem = 34
value = 3,1

;---------------------------------------------------------------------------
; Intro state decider
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = VarSet
trigger1 = Time = 0
var(11) = 0

[State 190, 1]
type = ChangeState
trigger1 = p2name = "ankokuDragon" || p4name = "ankokuDragon"
value = 194

[State 190, 1]
type = ChangeState
triggerall = var(22) = 1
trigger1 = p2name = "algol" || p4name = "algol"
value = 195

[State 190, 2]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 190, 3]
type = ChangeState
trigger1 = Var(2) = [0,24]
value = 191

[State 190, 4]
type = ChangeState
trigger1 = Var(2) = [25,74]
value = 192

[State 190, 5]
type = ChangeState
trigger1 = Var(2) = [75,99]
value = 193

;---------------------------------------------------------------------------
; Intro 1 (cloth)
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191]
type = AssertSpecial
trigger1 = Time = [0,780]
flag = Intro

[State 191] 
type = AssertSpecial
trigger1 = time = [0,660]
flag = nobardisplay

[State 191]
type = BGPalfx
triggerAll = time >= 50
triggerAll = time <= 440
trigger1 = 1
ignorehitpause = 1
time = 5
mul = 192,255,192
add = 5,5,5
invertall = 0

[State 191, box1]
type = Explod
trigger1 = time = 0
anim = 1910
ID = 1910
pos = 55,2
postype = p1
sprpriority = 3
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 191, sound]
type = PlaySnd
trigger1 = Time = 60
value = 5,2

[State 191, sound]
type = PlaySnd
trigger1 = Time = 135
value = 4,0

[State 191, box2]
type = ModifyExplod
trigger1 = time = 90
anim = 1910
ID = 1910
pos = 55,2
postype = p1
sprpriority = -3
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 191, box light]
type = Explod
trigger1 = time = 90
anim = 7040
pos = 56,2
postype = p1
sprpriority = 5
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 191, cloth1]
type = Explod
trigger1 = time = 0
anim = 1911
pos = 55,1
postype = p1
sprpriority = -1
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 290

[State 191, cloth2]
type = Explod
trigger1 = time = 290
anim = 1912
pos = 55,1
postype = p1
sprpriority = -1
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 191]
type = PlaySnd
trigger1 = time = 295
value = 5,2

[State 191, flash]
type = EnvColor
trigger1 = time = 295
value = 255,255,255
under = 0
time = 3

[State 191, cloth light]
type = Explod
trigger1 = time = 145
anim = 7050
pos = 55,1
postype = p1
sprpriority = 1
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 191, cloth light]
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

[State 191]
type = PlaySnd
trigger1 = time = 145
value = 2,1

[State 191, dragon]
type = Explod
trigger1 = time = 250
ID = 6001
anim = 6001
pos = -2,18
postype = p1
sprpriority = 8
supermove = 0
removetime = 40
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0

[State 191, sound]
type = PlaySnd
trigger1 = Time = 250
value = 9,1

[State 191, costellazione]
type = Explod
trigger1 = AnimElem = 2
anim = 8100
postype = back
sprpriority = -5
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 360

[State 191, luce]
type = Explod
trigger1 = Animelem = 2
anim = 7030
pos = 0,5
postype = p1
sprpriority = -2
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0
scale = .5,.5

[State 191, luce]
type = Explod
trigger1 = Animelem = 2
anim = 7031
pos = 0,6
postype = p1
sprpriority = -2
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0
scale = .5,.5
vfacing = -1

[State 191, polvere]
type = Explod
trigger1 = Animelem = 4
anim = 7010
pos = 0,0
postype = p1
sprpriority = -3
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 191]
type = PlaySnd
trigger1 = Animelem = 2
value = 0,1

[State 191, Voice]
type = PlaySnd
trigger1 = Animelem = 3
value = 12,1
channel = 0

[State 191, cloth]
type = PlaySnd
trigger1 = Animelem = 25
value = 4,1

[State 191, cloth]
type = PlaySnd
trigger1 = Animelem = 28
value = 4,4

[State 191, cloth]
type = PlaySnd
trigger1 = Animelem = 31
value = 4,3

[State 191, cloth]
type = PlaySnd
trigger1 = Animelem = 37
value = 4,5

[State 191, cloth]
type = PlaySnd
trigger1 = Animelem = 40
value = 4,3

[State 191, cloth]
type = PlaySnd
trigger1 = Animelem = 43
value = 4,5

[State 191, cloth]
type = PlaySnd
trigger1 = Animelem = 49
value = 4,5

[State 191, cloth]
type = PlaySnd
trigger1 = Animelem = 52
value = 4,6

[State 191, Snd]
type = PlaySnd
trigger1 = AnimElem = 59
value = 2,2

[State 191, Stand]
type = ChangeState
trigger1 = Time = 780
value = 0
ctrl = 0

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

;---------------------------------------------------------------------------
; Intro 2 (name)
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192]
type = AssertSpecial
trigger1 = Time = [0,360]
flag = Intro

[State 192, cosmo]
type = Explod
trigger1 = time = 40
anim = 1920
pos = 1,0
postype = p1
removetime = 280
sprpriority = -2
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 192, luce]
type = Explod
trigger1 = time = 100
anim = 7030
pos = 5,5
postype = p1
sprpriority = -2
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0
scale = .5,.5

[State 192, luce]
type = Explod
trigger1 = time = 100
anim = 7031
pos = 5,6
postype = p1
sprpriority = -2
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0
scale = .5,.5
vfacing = -1

[State 192, dragon]
type = Explod
trigger1 = time = 110
ID = 6001
anim = 6001
pos = 10,15
postype = p1
sprpriority = 3
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 35

[State 192, sound]
type = PlaySnd
trigger1 = Time = 110
value = 9,1

[State 192, shunrei]
type = Explod
triggerall = p2name != "shunrei"
triggerall = p3name != "shunrei"
triggerall = p4name != "shunrei"
trigger1 = time = 0
anim = 2000
shadow = -1
pos = 30,0
postype = p1
sprpriority = 3
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1

[State 192]
type = PlaySnd
trigger1 = time = 40
value = 9,0

[State 192]
type = PlaySnd
triggerall = p2name != "shunrei"
triggerall = p3name != "shunrei"
triggerall = p4name != "shunrei"
trigger1 = time = 40
value = 200,5

[State 192]
type = PlaySnd
trigger1 = time = 38
value = 3,0

[State 192]
type = PlaySnd
triggerall = p2name != "shunrei"
triggerall = p3name != "shunrei"
triggerall = p4name != "shunrei"
trigger1 = time = 110
trigger2 = time = 140
trigger3 = time = 170
value = 3,0

[State 192]
type = PlaySnd
triggerall = p2name != "shunrei"
triggerall = p3name != "shunrei"
triggerall = p4name != "shunrei"
trigger1 = time = 125
trigger2 = time = 155
value = 3,1

[State 192]
type = PlaySnd
trigger1 = time = 150
value = 13,8
channel = 0

[State 192]
type = PlaySnd
trigger1 = time = 255
value = 13,5
channel = 0

[State 192, Mouth]
type = Explod
trigger1 = Time = 150
anim = 1961
ID = 1961
pos = 0,0
postype = p1
bindtime = 150
sprpriority = 10
removetime = 150
removeongethit = 1

[State 192, Stand]
type = ChangeState
trigger1 = Time = 360
value = 0
ctrl = 0

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

;---------------------------------------------------------------------------
; Intro 3 (comeback)
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193]
type = AssertSpecial
trigger1 = Time = [0,460]
flag = Intro

[State 193, cosmo]
type = Explod
trigger1 = Time = 20
anim = 1920
pos = 1,0
postype = p1
removetime = 60
sprpriority = -2
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 193, stelle]
type = Explod
trigger1 = AnimElem = 3
anim = 8111
postype = back
sprpriority = -5
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 240
bindtime = -1

[State 193, dragon]
type = Explod
trigger1 = AnimElem = 16
ID = 6000
anim = 6000
pos = -2,-17
postype = p1
sprpriority = -1
supermove = 0
removetime = 200
ignorehitpause = 1
ownpal = 1
persistent = 0
scale = .6,.6

[State 193, lightning]
type = Explod
trigger1 = AnimElem = 16
anim = 8040
ID = 8040
pos = 15,20
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 193, lightning]
type = Explod
trigger1 = AnimElem = 19
anim = 8040
ID = 8040
pos = 10,20
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 193, lightning]
type = Explod
trigger1 = AnimElem = 33
anim = 8040
ID = 8040
pos = -20,20
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 193, flash]
type = EnvColor
trigger1 = AnimElem = 15
trigger2 = AnimElem = 18
trigger3 = AnimElem = 32
value = 55,255,55
under = 0
time = 4

[State 193, Snd]
type = PlaySnd
trigger1 = Time = 15
value = 9,0

[State 193, Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,4

[State 193, Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,0

[State 193, Snd]
type = PlaySnd
trigger1 = AnimElem = 16
value = 0,1

;[State 193, Snd]
;type = PlaySnd
;trigger1 = AnimElem = 16
;value = 12,0

[State 193, Snd]
type = PlaySnd
trigger1 = AnimElem = 16
value = 14,6

[State 193, Snd]
type = PlaySnd
trigger1 = AnimElem = 18
value = 12,2

[State 193, Snd]
type = PlaySnd
trigger1 = AnimElem = 19
value = 0,2

[State 193, Snd]
type = PlaySnd
trigger1 = AnimElem = 27
value = 2,2

[State 193, Snd]
type = PlaySnd
trigger1 = AnimElem = 27
value = 12,3

[State 193, Snd]
type = PlaySnd
trigger1 = AnimElem = 31
value = 0,1

[State 193, Snd]
type = PlaySnd
trigger1 = AnimElem = 36
value = 3,0

[State 193, Snd]
type = PlaySnd
triggerall = var(22) = 0
trigger1 = AnimElem = 38
value = 13,0

[State 193, Mouth]
type = Explod
triggerall = var(22) = 0
trigger1 = AnimElem = 38
anim = 1961
ID = 1961
pos = 0,0
postype = p1
bindtime = 70
sprpriority = 10
removetime = 70
removeongethit = 1

[State 193, Stand]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

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

;---------------------------------------------------------------------------
; Intro vs Ankoku Dragon
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 194, 1]
type = AssertSpecial
trigger1 = Time = [0,570]
flag = Intro

[State 194, 2]
type = AssertSpecial
trigger1 = time = [0,540]
flag = nobardisplay

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
type = ChangeState
trigger1 = Time = 570
value = 0

;---------------------------------------------------------------------------
; Intro vs Algol
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 195]
type = AssertSpecial
trigger1 = Time = [0,650]
flag = Intro

[State 195]
type = AssertSpecial
trigger1 = Time = [30,350]
flag = noBG

[State 195, Snd]
type = PlaySnd
trigger1 = Time = 30
value = 900,0
channel = 0

[State 195, Mouth]
type = Explod
trigger1 = Time = 30
anim = 1961
ID = 1961
pos = 0,0
postype = p1
bindtime = 210
sprpriority = 10
removetime = 210
removeongethit = 1

[State 195, Explod]
type = Explod
trigger1 = AnimElem = 9
anim = 1950
ID = 1950
pos = 0,0
postype = p1
bindtime = 126
sprpriority = 10
removetime = 126
removeongethit = 1

[State 195, Snd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
value = 3,1

[State 195, Snd]
type = PlaySnd
trigger1 = Time = 350
value = 4,6

[State 195, flash]
type = EnvColor
trigger1 = Time = 350
value = 255,55,55
under = 0
time = 10

[State 195, cosmo]
type = Explod
trigger1 = time = 30
anim = 1920
pos = 1,0
postype = p1
bindtime = 1
removetime = 620
sprpriority = -2
supermove = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 195, Stand]
type = ChangeState
trigger1 = Time = 650
value = 0
ctrl = 0

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

;---------------------------------------------------------------------------
; Provoking
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
trigger1 = time = 1
value = 3,0

;-----------------------------
[State 199, Voice]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,2

[State 199, Voice]
type = PlaySnd
triggerall = var(22) = 0
trigger1 = AnimElem = 1
trigger1 = Var(6) = 1
value = 13,7
channel = 0

[State 199, Voice]
type = PlaySnd
triggerall = var(22) = 1
trigger1 = AnimElem = 1
trigger1 = Var(6) = 1
value = 900,1
channel = 0

[State 199, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
trigger1 = Var(6) = 2
value = 13,9
channel = 0
;-----------------------------

[State 199]
type = ChangeState
triggerall = Var(6) = 1
trigger1 = Time = ifelse (var(22) = 1, 170, 120)
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

[State 199, Mouth]
type = Explod
triggerall = Var(6) = 1
trigger1 = Time = 0
anim = 1961
ID = 1961
pos = 0,0
postype = p1
bindtime = ifelse (var(22) = 1, 170, 120)
sprpriority = 5
removetime = ifelse (var(22) = 1, 170, 120)
removeongethit = 1

[State 199, ChangeAnim]
type = ChangeAnim
trigger1 = Var(6) = 2
trigger1 = Time = 0
value = 198

[State 199]
type = ChangeState
triggerall = Var(6) = 2
trigger1 = Time = 110
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Standing LP
[Statedef 200]
type = S
movetype = A
physics = S
juggle = 4
anim = 200
velset = 0,0
ctrl = 0
poweradd = 50

[State 200]
type = PlaySnd
trigger1 = time = 5
value = 0,0

[State 200]
type = HitDef
trigger1 = AnimElem = 4
priority = 3
attr = S, NA
damage = 20
getpower = 0
givepower = 0
animtype = Light
guardflag = MA
sparkno = S7000
sparkxy = -10,-84
hitsound = s1,0
guardsound = s6,0
guard.hittime = 20
guard.velocity = -3
pausetime = 8,12
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5
air.velocity = -2.5,-4
airguard.velocity = -3,0

[State 200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Standing MP
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 210
velset = 0,0
poweradd = 50

[State 210]
type = PlaySnd
triggerall = Random < 500
trigger1 = Time = 0
value = 12,0

[State 210]
type = PlaySnd
trigger1 = time = 5
value = 0,1

[State 210]
type = HitDef
trigger1 = AnimElem = 4
priority = 4
attr = S, NA
damage   = 30
getpower = 0
givepower = 0
animtype = Medium
priority = 3
guardflag = MA
pausetime = 13,11
sparkno = S7001
sparkxy =  -5,-110
hitsound   = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4
airguard.velocity = -3,0

[State 210]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Standing HP
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 220
poweradd = 50

[State 230]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 220]
type = VelSet
trigger1 = AnimElem = 6
x = 13

[State 220]
type = VelSet
trigger1 = Time = 0
x = 0

[State 220]
type = HitDef
trigger1 = AnimElem = 6
priority = 5
attr = S, NA
damage   = 40
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 7,7
sparkno = S7004
sparkxy =  -10,-76
hitsound   = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 23
ground.velocity = -7.5
air.type = Low
air.velocity = -3.1,-3.3
airguard.velocity = -3.5,0
envshake.time =  25
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5

[State 220, scia]
type = Explod
trigger1 = Animelem = 5
anim = 7084
pos = 25,-2
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0
supermove = 1

[State 220]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Standing HP (close)
[Statedef 225]
type    = S
movetype= A
physics = S
anim = 225
juggle = 5
velset = 0,0
ctrl = 0
poweradd = 50

[State 225]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

[State 225]
type = PlaySnd
trigger1 = AnimElem = 5
value = 12,0

[State 225]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Hard
damage    = 30
getpower = 0
givepower = 0
priority  = 4
guardflag = MA
pausetime = 0,7
sparkxy = -10,-80
sparkno = -1
hitsound   = s1,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,-7
guard.velocity = -7
air.velocity = -8,-7
airguard.velocity = -5, -4
fall = 1
fall.damage = 10
p1stateno = 226
p2stateno = 1025    ;Make p2 go to state 1025 on hit
p2facing = 1        ;Force to face p1
envshake.time =  25
envshake.freq = 20
envshake.ampl = 5
envshake.phase = 5

[State 225]
type = ChangeState
trigger1 = AnimTime = 0
value = 227
ctrl = 1

[Statedef 226]
type = S
movetype = I
physics = S
anim = 226
juggle = 0
velset = 0,0
ctrl = 0

[State 226]
type = AfterImage
trigger1 = time = 0
time = 15
length = 20
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 226, polvere]
type = Explod
trigger1 = AnimElem = 1
anim = 70841
pos = -15,5
postype = p1
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 226, luce]
type = Explod
trigger1 = Time = 1
anim = 7004
pos = 70,-80
postype = p1
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 226]
type = VelAdd
trigger1 = time = 0
x = -5

[State 226]
type = VelMul
trigger1 = AnimElem = 1
x = 2.0

[State 226]
type = ChangeState
trigger1 = AnimTime = 0
value = 227
ctrl = 1

[Statedef 227]
type = S
physics = S
anim = 227
juggle = 0
velset = 0,0
ctrl = 0

[State 227, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 227,VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 227]
type = ChangeState
triggerall = PrevStateNo = 226
trigger1 = AnimTime = 0
value = 228
ctrl = 0

[State 227]
type = ChangeState
triggerall = PrevStateNo = 225
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 228]
type = S
physics = S
anim = 228
juggle = 0
velset = 0,0
ctrl = 0

[State 228]
type = PlaySnd
trigger1 = Time = 0
value = 14,7
channel = 0

[State 228]
type = ChangeState
trigger1 = Time = 80
value = 0
ctrl = 1

;--------------------------------------------------------
; Standing LK
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 230
poweradd = 50

[State 230]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 230]
type = HitDef
trigger1 = time = 0
priority = 4
attr = S, NA
damage    = 20
getpower = 0
givepower = 0
animtype = Light
guardflag = MA
pausetime = 7,12
sparkno = s7000
sparkxy =  -10,-105
hitsound   = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 13
ground.hittime  = 18
ground.velocity = -6.5
air.type = Low
air.velocity = -3.4,-3.5
airguard.velocity = -4,0

[State 230]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Standing LK (close)
[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 235
velset = 0,0
poweradd = 50

[State 235]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 235]
type = HitDef
trigger1 = time = 0
animtype = Light
attr = S, NA
damage   = 20
getpower = 0
givepower = 0
priority = 3
guardflag = MA
pausetime = 12,15
sparkno = S7000
sparkxy =  -25,-70
hitsound   = s1,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 8
ground.velocity = -7
air.velocity = -3,-3
airguard.velocity = -3,0

[State 235]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Standing MK
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 3,0
anim = 240

[State 240]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 240]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage   = 30
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
pausetime = 7,7
sparkno = S7001
sparkxy =  -5,-95
hitsound = S1,2
guardsound = s6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 23
ground.velocity = -7.5
air.type = Low
air.velocity = -3.1,-3.3
airguard.velocity = -3.5,0

[State 240, scia]
type = Explod
trigger1 = Animelem = 3
anim = 7080
pos = 18,-3
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0
supermove = 1

[State 240]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Standing MK (close) (start)
[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 245
ctrl = 0
sprpriority = 2

[State 245, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 245, 2]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Medium
damage    = 15,7
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = -10,-70
sparkno = s7000
hitsound   = s1,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3.5,-7
guard.velocity = -7
air.velocity = -3.5,-7
fall = 1
getpower = 0
givepower = 0

[State 245, 3]
type = Explod
trigger1 = AnimTime = 0
postype = p1
anim = 7089
ID = 7089
pos = 0,10
scale = 0.5,0.5
bindtime = 1
removetime = 26
sprpriority = 3

[State 245, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 246

;------------------
; Standing MK (close) (jump)
[Statedef 246]
type    = A
movetype= A
physics = N
velset = 2,-6
anim = 246
hitdefpersist = 1

[State 246, 1] ;Gravity
type = VelAdd
trigger1 = 1
y = .45

[State 246, 2]
type = ChangeState
trigger1 = Vel y < -4
value = 247

;------------------
; Standing MK (close) (kick)
[Statedef 247]
type    = A
movetype= A
physics = N
anim = 247

[State 247, 1]
type = PlaySnd
trigger1 = Time = 0
value = 12,0
channel = 0

[State 247, 2]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 247, 3]
type = PosAdd
trigger1 = Time = 0
x = 0
y = -10

[State 247, 4] ;Gravity
type = VelAdd
trigger1 = 1
y = .45

[State 247, 5]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Hard
damage    = 15,7
priority  = 4
guardflag = MA
pausetime = 12,12
sparkxy = 0,-90
sparkno = s7002
hitsound   = s1,2
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 16
ground.velocity = -6
guard.velocity = -8
guard.ctrltime = 12
air.velocity = -4,-5
airguard.velocity = -4,-4.5
air.fall = 1
getpower = 0
givepower = 0

[State 247, 6] ;Change state when is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -5
value = 248

;------------------
; Standing MK (close) (land)
[Statedef 248]
type    = S
movetype= I
physics = S
anim = 248
sprpriority = 1
velset = 0,0

[State 248, 1] ;Reset y-position to ground level
type = PosSet
trigger1 = Time = 0
y = 0

[State 248, 2] ;Play a sound for landing
type = PlaySnd
trigger1 = Time = 0
value = 2,2

[State 248, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Standing HK
[Statedef 250]
type = S
movetype = A
physics = S
anim = 250
juggle = 3
velset = 0,0
ctrl = 0
poweradd = 50

[State 250]
type = PlaySnd
trigger1 = time = 5
value = 0,2

[State 250]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0,1

[State 250]
type = HitDef
trigger1 = AnimElem = 5
priority = 5
attr = S, NA
damage = 20
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
sparkno = S7000
sparkxy =  -10,-90
hitsound = s1,3
guardsound = s6,0
pausetime = 12,12
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = -5
air.velocity = -.5,-3
envshake.time =  10
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5

[State 250]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
damage = 20
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
sparkno = S7002
sparkxy =  -10,-90
hitsound = s1,4
guardsound = s6,0
pausetime = 12,12
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = -5
air.velocity = -4,-3
envshake.time =  15
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5
fall = 1
fall.damage = 0
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 25

[State 250, scia]
type = Explod
trigger1 = Animelem = 3
trigger2 = Animelem = 9
anim = 7080
pos = 38,-4
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0
supermove = 1

[State 250]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Standing HK (close)
[Statedef 255]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 255
poweradd = 50

[State 255]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 255]
type = HitDef
trigger1 = AnimElem = 5
priority = 4
attr = S, NA
damage    = 40
getpower = 0
givepower = 0
animtype  = Hard
guardflag = MA
pausetime = 7,12
sparkno = s70021
sparkxy =  -10,-110
hitsound   = s1,4
guardsound = s6,0
ground.type = High
ground.slidetime = 13
ground.hittime  = 18
ground.velocity = -6,0
air.type = Low
air.velocity = -3.4,-3.5
airguard.velocity = -4,0
envshake.time =  20
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5

[State 255]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Crouching LP
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
ctrl = 0
anim = 400
velset = 0,0
poweradd = 50

[State 400]
type = PlaySnd
triggerall = Random < 500
trigger1 = Time = 0
value = 13,3

[State 400]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 400]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage   = 20
getpower = 0
givepower = 0
animtype = Light
guardflag = L
pausetime = 11,12
sparkno = s7000
sparkxy =  -10,-50
hitsound   = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 25
guard.hittime = 36
guard.ctrltime = 36
ground.velocity = -6  
guard.velocity = -4
air.animtype = Back
air.velocity = -2.4,-3.5
airguard.velocity = -3,0

[State 400]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------
; Crouching MP
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 5
ctrl = 0
anim = 410
velset = 0,0
poweradd = 50

[State 410]
type = PlaySnd
triggerall = Random < 500
trigger1 = Time = 0
value = 12,0

[State 410]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 410]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage   = 30
getpower = 0
givepower = 0
animtype = Medium
guardflag = L
pausetime = 11,12
sparkno = S7001
sparkxy =  -5,-60
hitsound   = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -3,-1
air.velocity = -3,-3
airguard.velocity = -3,0

[State 410]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------
; Crouching HP
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 5
ctrl = 0
anim = 420
velset = 0,0
poweradd = 50

[State 420]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 420]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage   = 40
getpower = 0
givepower = 0
animtype = Hard
guardflag = L
pausetime = 11,12
sparkno = S7002
sparkxy =  -10,-45
hitsound   = s1,3
guardsound = s6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -7
air.velocity = -4,-1
airguard.velocity = -3,0
envshake.time =  25 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5

[State 420]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------
; Crouching LK
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
ctrl = 0
anim = 430
velset = 0,0
poweradd = 50

[State 430]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 430]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage   = 20
getpower = 0
givepower = 0
animtype = Light
guardflag = L
pausetime = 11,12
sparkno = s7000
sparkxy =  0,-2
hitsound   = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 25
guard.hittime = 36
guard.ctrltime = 36
ground.velocity = -6
guard.velocity = -4
air.animtype = Back
air.velocity = -2.4,-3.5
airguard.velocity = -3,0

[State 430]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------
; Crouching MK
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 5
ctrl = 0
anim = 440
velset = 0,0
poweradd = 50

[State 440]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 440, polvere]
type = Explod
trigger1 = Time = 0
anim = 7089
sprpriority = 0
scale = 0.5,0.5
postype = p1
pos = -5,5
bindtime = 1
supermove = 1
ownpal = 1

[State 440, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 2,1

[State 440, 1]
type = VelSet
trigger1 = animelem = 1
x = 15

[State 440]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage   = 30
getpower = 0
givepower = 0
animtype = Medium
guardflag = L
pausetime = 12,12
sparkno = s7001
sparkxy =  0,-2
hitsound   = s1,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 25
guard.hittime = 36
guard.ctrltime = 36
ground.velocity = -7
guard.velocity = -4
air.animtype = Back
air.velocity = -2.4,-3.5
airguard.velocity = -3,0

[State 440, scia]
type = Explod
trigger1 = Animelem = 3
anim = 7080
pos = -10,-4
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0
supermove = 1

[State 400]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------
; Crouching HK
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 3
ctrl = 0
anim = 450
poweradd = 50

[State 450]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 450]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage   = 40
getpower = 0
givepower = 0
guardflag = L
pausetime = 11,12
sparkno = s7002
sparkxy =  -10,-2
hitsound   = s1,3
guardsound = s6,0
ground.type = Trip
ground.slidetime = 18
ground.hittime  = 25
guard.hittime = 36
guard.ctrltime = 36
ground.velocity = -2   
guard.velocity = -6
air.velocity = -2.4,-3.5
airguard.velocity = -3,0
envshake.time = 15           
envshake.ampl = 7
envshake.freq = 176
fall = 1   
fall.damage = 5            
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 450]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------
; Jumping LP
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 600
poweradd = 50

[State 600]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 600]
type = HitDef
trigger1 = time = 0
priority = 5
attr = A, NA
damage   = 20
getpower = 0
givepower = 0
animtype = Light
guardflag = HA
priority = 3
pausetime = 11,11
sparkno = s7000
sparkxy =  -10,-70
hitsound   = s1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -4
air.velocity = -2.5,-3.1
airguard.velocity = -3.3,0

;--------------------------------------------------------
; Jumping MP
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 610
poweradd = 50

[State 610]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 610]
type = HitDef
trigger1 = time = 0
priority = 5
attr = A, NA
damage   = 30
getpower = 0
givepower = 0
animtype = Medium
guardflag = HA
priority = 3
pausetime = 11,11
sparkno = s7001
sparkxy =  -5,-60
hitsound   = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2.5,-3.1
airguard.velocity = -3.3,0

;--------------------------------------------------------
; Jumping HP
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 620
poweradd = 50

[State 620]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 620]
type = HitDef
trigger1 = time = 0
priority = 5
attr = A, NA
damage   = 40
getpower = 0
givepower = 0
animtype = Hard
guardflag = HA
priority = 3
pausetime = 11,11
sparkno = s7002
sparkxy =  -10,-100
hitsound   = s1,3
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -6
air.velocity = -2.5,-3.1
airguard.velocity = -3.3,0
envshake.time = 20           
envshake.ampl = 7
envshake.freq = 176
fall = 1
fall.damage = 5            
fall.envshake.ampl = 6       
fall.envshake.freq = 125
fall.envshake.time = 15

;--------------------------------------------------------
; Jumping LK 
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 630
poweradd = 50

[State 630]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 630]
type = HitDef
trigger1 = time = 0
priority = 4
attr = A, NA
damage    = 20
getpower = 0
givepower = 0
animtype = Light
guardflag = HA
priority = 3
pausetime = 15,20
sparkno = s7000
sparkxy = -10,-58
hitsound   = s1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 20
ground.velocity = -6.5     
air.type = Low
air.velocity = -3.5,-3.5
guard.velocity = -3
airguard.velocity = -2.5,0

;--------------------------------------------------------
; Jumping MK
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 640
poweradd = 50

[State 640]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 640]
type = HitDef
trigger1 = Time = 0
priority = 5
attr = A, NA
damage    = 30
getpower = 0
givepower = 0
animtype = Medium
guardflag = HA
pausetime = 15,20
sparkno = s7001
sparkxy = -15,-50
hitsound   = s1,2
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -7
air.type = High
air.velocity = -3.5,-3.5
guard.velocity = -4

;--------------------------------------------------------
; Jumping HK
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 5
poweradd= 50
ctrl = 0
anim = 650

[State 650]
type = PlaySnd
triggerall = Random < 500
trigger1 = Time = 0
value = 13,3

[State 650]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 40
getpower = 0
givepower = 0
animtype = Hard
guardflag = HA
pausetime = 8,8
sparkno = s7002
sparkxy = -10,-52
hitsound   = s1,4
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -3
air.velocity = -4,0
air.type = High
fall = 1
fall.damage = 5
fall.xvelocity = 0
fall.yvelocity = 0
envshake.time = 15          
envshake.ampl = 7
envshake.freq = 176
fall.envshake.ampl = 6       
fall.envshake.freq = 125
fall.envshake.time = 25

;--------------------------------------------------------
; Dragon Launch
[Statedef 800]
type    = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NT
getpower = 0
givepower = 0
hitflag = M-
priority = 3, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 810
p2stateno = 820
guard.dist = 0
fall = 1

[State 800, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; p1 state
[Statedef 810]
type    = S
movetype= A
physics = N
poweradd = 50
anim = 810

[State 810, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, 2]
type = Width
trigger1 = AnimElemTime(1) >= 0
edge = 0,60

[State 810, 3]
type = Explod
trigger1 = Animelem = 2
anim = 6010
pos = 36,-80
sprpriority = 2
bindtime = 1
ownpal = 1

;------------------------------------------------------

[State 810, 1 Holding fwd?]
type = VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"

[State 810, Holding back]
type = Turn
trigger1 = Time = 20
trigger1 = command = "holdback"

[State 810, 3 Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = s8, 0

[State 810, 3 Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2, 2

[State 810, 3 Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2, 1

[State 810, 3 Ground Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3, 0

[State 810, 4 Bind]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 28, 0

[State 810, 5 Bind]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
pos = 30, 0

[State 810, 6 Bind]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 30, -80

[State 810, holdfwd - Turn 6] ;If was holding fwd before, turn now
type = Turn
trigger1 = var(2)
trigger1 = AnimElem = 4

[State 810, holdfwd - Pos 6] ;If was holding fwd before, move a little
type = PosAdd
trigger1 = var(2)
trigger1 = AnimElem = 4
x = -37

[State 810, holdfwd - Turn Target 6] ;If was holding fwd before, turn target too
type = TargetFacing
trigger1 = var(2)
trigger1 = AnimElem = 4
value = -1

[State 810, 7 Bind]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = -40, -60

[State 810, 8 Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 7
value = -60

[State 810, 9 Throw]
type = TargetState
trigger1 = AnimElem = 7
value = 821

[State 810, 10]
type = PlaySnd
trigger1 = Animelem = 6
value = s12,0

[State 810, Turn 12]
type = Turn
trigger1 = Animtime = 0

[State 810, 11 Pos]
type = PosAdd
trigger1 = AnimElem = 15
x = -10

[State 810, 12 State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 12
ctrl = 1

; p2 state
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

;------------------------------------------------------
; In case attacker loses binding on player for any
; reason, this controller guarantees that the player
; will never get stuck in this thrown state.
;------------------------------------------------------

[State 820, 2]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

;------------------------------------------------------

[Statedef 821]
type    = A
movetype= H
physics = N
velset = 5,-8

[State 821, 1] ;Gravity
type = VelAdd
trigger1 = 1
y = .54

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -25
value = 5100 ;Hit ground

;--------------------------------------------------------------
; Dragon Fury
[Statedef 850]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd = 50
velset = 0,0
anim = 850
ctrl = 0
sprpriority = 2

[State 850, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,6
channel = 0

[State 850, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Light
damage    = 5,1
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = S7000
sparkxy = -25,-88
hitsound   = S1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 0
air.velocity = -2.5,-5
kill = 0
guard.kill = 0
fall = 0
getpower = 0
givepower = 0

[State 850, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype  = Light
damage    = 5,1
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = S7001
sparkxy = -25,-78
hitsound   = S1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 1
air.velocity = -2.5,-5
kill = 0
guard.kill = 0
fall = 0
getpower = 0
givepower = 0

[State 850, 4]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = Light
damage    = 5,1
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = S7000
sparkxy = -25,-88
hitsound   = S1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 0
air.velocity = -2.5,-5
kill = 0
guard.kill = 0
fall = 0
getpower = 0
givepower = 0

[State 850, 5]
type = HitDef
trigger1 = AnimElem = 9
attr = S, SA
animtype  = Light
damage    = 5,1
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = S7001
sparkxy = -25,-78
hitsound   = S1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 1
air.velocity = -2.5,-5
kill = 0
guard.kill = 0
fall = 0
getpower = 0
givepower = 0

[State 850, 6]
type = HitDef
trigger1 = AnimElem = 11
attr = S, SA
animtype  = Light
damage    = 5,1
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = S7000
sparkxy = -25,-88
hitsound   = S1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 0
air.velocity = -2.5,-5
kill = 0
guard.kill = 0
fall = 0
getpower = 0
givepower = 0

[State 850, 7]
type = HitDef
trigger1 = AnimElem = 13
attr = S, SA
animtype  = Light
damage    = 5,1
priority  = 5
guardflag = MA
pausetime = 5,20
sparkno = S7001
sparkxy = -25,-78
hitsound   = S1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 2
air.velocity = -2.5,-5
kill = 0
guard.kill = 0
fall = 0
getpower = 0
givepower = 0

[State 850, posadd]
type = PosAdd
trigger1 = AnimElem = 15
x = 5

[State 850, posadd]
type = PosAdd
trigger1 = AnimElem = 16
trigger2 = AnimElem = 17
x = 7

[State 850, posadd]
type = PosAdd
trigger1 = AnimElem = 18
trigger2 = AnimElem = 19
x = -10

[State 850, snd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
value = 0,0

[State 850, snd]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
value = 0,1

[State 850, snd]
type = PlaySnd
trigger1 = AnimElem = 15
value = 0,2

[State 850, shine]
type = PalFX
trigger1 = AnimElem = 19
time = 15
add = 0,0,0
sinadd = 150,220,150,3

[State 850, polvere]
type = Explod
trigger1 = AnimElem = 19
pos = 12,2
anim = 8011
ID =  8011
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 22

[State 850, light]
type = Explod
trigger1 = AnimElem = 19
anim = 7010
ID = 7010
pos = 0,0
postype = p1
sprpriority = -4
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
ownpal = 1
removeongethit = 1
scale = .7, .7
removetime = 25

[State 850, 8]
type = HitDef
trigger1 = AnimElem = 19
priority = 4
attr = S, SA
damage    = 50,2
animtype  = up
guardflag = MA
pausetime = 7,12
sparkno = s8061
sparkxy =  -35,-130
hitsound   = s1,4
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1,-12
ground.velocity = -6,0
air.type = Low
air.velocity = -3,-9
airguard.velocity = -3,-6
fall = 1
fall.recover = 0
fall.damage = 10
envshake.time =  15
envshake.freq = 30
envshake.ampl = 10
envshake.phase = 10
p2facing = 1                 ;Force p2 to face p1 on hit
getpower = 0
givepower = 0

[State 850, 9]
type = PlaySnd
trigger1 = AnimElem = 19
value = 10,1

[State 850, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
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

[State 900, voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,0
channel = 0

[State 900, envshake]
type = EnvShake
trigger1 = AnimElem = 1
time = 40

[State 900, cosmo]
type = Explod
triggerall = NumExplod(903) = 0
trigger1 = time = 0
pos = 15,2
anim = 903
ID = 903
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = .9, 1

[State 900, dragon]
type = Explod
trigger1 = time = 0
anim = 6001
ID = 6001
sprpriority = -5
postype = p1
pos = 10,15
bindtime = 1
supermove = 1
ownpal = 1
removeongethit = 1
removetime = 21

[State 900]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

;--------------------------------------------------------
; Cosmo Charge (charging)
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901

[State 901, removeEX]
type = RemoveExplod
triggerall = NumExplod(903) >= 1
trigger1 = time = 0
ID = 903

[State 901, shine]
type = PalFX
trigger1 = AnimElem = 2
time = 15
add = 0,0,0
sinadd = 100,200,100,3

[State 901]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

[State 901, dragon]
type = Explod
triggerall = NumExplod(6001) = 0
trigger1 = NumExplod(6000) = 0
anim = 6000
ID = 6000
sprpriority = -5
postype = p1
pos = 10,-15
bindtime = -1
removetime = -1
removeongethit = 1
supermove = 1
ownpal = 1
scale = .6,.6

[State 901, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = 1
pos = 19,-1
anim = 7010
ID = 7010
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1

[State 901, polvere]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = 1
pos = 16,2
anim = 7020
ID = 7020
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = .9, .9

[State 901, polvere]
type = Explod
triggerall = NumExplod(7030) = 0
trigger1 = 1
pos = 18,5
anim = 7030
ID = 7030
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = -1
scale = .5,.5

[State 901, polvere]
type = Explod
triggerall = NumExplod(7031) = 0
trigger1 = 1
pos = 18,6
anim = 7031
ID = 7031
sprpriority = -4
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
triggerall = NumExplod(904) = 0
trigger1 = 1
pos = 38,2
anim = 904
ID = 904
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
trigger1 = Power >= 3000
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
triggerall = NumExplod(6000) >= 1
trigger1 = time = 0
ID = 6000

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(6001) >= 1
trigger1 = time = 0
ID = 6001

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7020) >= 1
trigger1 = time = 0
ID = 7020

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

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(903) >= 1
trigger1 = time = 0
ID = 903

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(904) >= 1
trigger1 = time = 0
ID = 904

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
value = 9,3

[State 902]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Dragon Shield (start)
[Statedef 950]
type = S
movetype = I
physics = S
velset = 0,0
anim = 950
ctrl = 0
sprpriority = 2

[State 950, Afterimage]
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
time = 25

[State 950, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3,0

[State 950, 3]
type = Explod
trigger1 = AnimElem = 1
anim = 6001
ID = 6001
sprpriority = -5
postype = p1
pos = 10,15
bindtime = 1
supermove = 1
ownpal = 1
removeongethit = 1
removetime = 21

[State 950, 4]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,1

[State 950, 5]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,2

[State 950, 6]
type = PlaySnd
trigger1 = AnimElem = 1
trigger1 = Var(6) = 1
value = 700,6

[State 950, 7]
type = PlaySnd
trigger1 = AnimElem = 1
trigger1 = Var(6) = 2
value = 12,0

[State 950, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 951
ctrl = 1

;--------------------------------------------------------
; Dragon Shield (guarding)
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

[State 951, shine]
type = PalFX
trigger1 = AnimElem = 2
time = 15
add = 0,0,0
sinadd = 100,200,100,3

[State 951, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = 1
pos = 8,-1
anim = 7010
ID = 7010
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1

[State 951, polvere]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = 1
pos = 16,2
anim = 7020
ID = 7020
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = .9, .9

[State 951, dragon]
type = Explod
triggerall = NumExplod(6001) = 0
trigger1 = NumExplod(6000) = 0
anim = 6000
ID = 6000
sprpriority = -5
postype = p1
pos = 10,-15
bindtime = -1
removetime = -1
removeongethit = 1
supermove = 1
ownpal = 1
scale = .6,.6

[State 951, 2]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,AA,AP
sparkno = s59
sparkxy = -10,-90
pausetime = 6,15
p1stateno = 952
hitsound = s5,2

[State 951, 3]
type = HitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 2

[State 951, 4]
type = HitOverride
trigger1 = 1
time = 2
attr = SCA,AA,AP
stateno = 952
ignorehitpause = 1

[State 951, 5]
type = ChangeState
trigger1 = command != "shield1"
trigger2 = command != "shield2"
value = 953

[State 951, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 951
ctrl = 1

[State 951, 7]
type = ChangeState
trigger1 = Power = 0
value = 953

;--------------------------------------------------------
; Dragon Shield (during attack)
[Statedef 952]
type    = S
movetype= A
physics = S
velset = -12,0
anim = 951
ctrl = 0

[State 952]
type = PowerAdd
trigger1 = time > 0
value = -5

[State 952, Tux]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,NA,SA,HA,ST,SP
sparkno = s59
sparkxy = -10,-90
pausetime = 6,15
p1stateno = 952
hitsound = s5,2

[State 952, Tux]
type = HitBy
trigger1 = 1
value = SCA, AP
time = 2

[State 952, Tux]
type = HitOverride
trigger1 = 1
time = 2
attr = SCA,AP
stateno = 952
ignorehitpause = 1

[State 952, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = 1
pos = 8,-1
anim = 7010
ID = 7010
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1

[State 952, polvere]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = 1
pos = 16,2
anim = 7020
ID = 7020
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = .9, .9

[State 952, dragon]
type = Explod
triggerall = NumExplod(6001) = 0
trigger1 = NumExplod(6000) = 0
anim = 6000
ID = 6000
sprpriority = -5
postype = p1
pos = 10,-15
bindtime = -1
removetime = -1
removeongethit = 1
supermove = 1
ownpal = 1
scale = .6,.6

[State 952, 1]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 3

[State 952, 2]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA
time = 1

[State 952, 3]
type = RemoveExplod
trigger1 = time = 0
ID = 6001

[State 952, 4]
type = HitDef
trigger1 = Time = 0
attr = S,SA
animtype  = Hard
hitflag = MA
damage = 0,0
getpower = 0
givepower = 0
;guard.sparkno = 0
guardflag = MA
sparkno = s7001
sparkxy = 30,-50
hitsound = s5,2
guardsound = s6,1
ground.type = High
air.type = High
ground.slidetime = 12
ground.hittime = 14
ground.velocity = -5,-3
air.velocity = -5,-3
fall = 0
fall.recover = 0
fall.damage = 0

[State 952, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 951
ctrl = 1

[State 952, 6]
type = ChangeState
trigger1 = Power = 0
value = 953

;--------------------------------------------------------
; Dragon Shield (end)
[Statedef 953]
type    = S
movetype= I
physics = S
juggle  = 2
velset = 0,0
anim = 952
ctrl = 0
sprpriority = 2

[State 953, powerset]
type = PowerSet
triggerall = (Power >= 2000)
trigger1 = AnimTime = 0
value = 2000

[State 953, powerset]
type = PowerSet
triggerall = (Power >= 1000) && (Power < 2000)
trigger1 = AnimTime = 0
value = 1000

[State 953, powerset]
type = PowerSet
triggerall = (Power > 0) && (Power < 1000)
trigger1 = AnimTime = 0
value = 0

[State 953, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 953, removeEX]
type = RemoveExplod
triggerall = NumExplod(7020) >= 1
trigger1 = time = 0
ID = 7020

[State 953, removeEX]
type = RemoveExplod
triggerall = NumExplod(904) >= 1
trigger1 = time = 0
ID = 904

[State 953, removeEX]
type = RemoveExplod
triggerall = NumExplod(7030) >= 1
trigger1 = time = 0
ID = 7030

[State 953, removeEX]
type = RemoveExplod
triggerall = NumExplod(7031) >= 1
trigger1 = time = 0
ID = 7031

[State 953, removeEX]
type = RemoveExplod
triggerall = NumExplod(903) >= 1
trigger1 = time = 0
ID = 1813

[State 953, removeEX]
type = RemoveExplod
triggerall = NumExplod(6001) >= 1
trigger1 = time = 0
ID = 6001

[State 953, removeEX]
type = RemoveExplod
triggerall = NumExplod(6000) >= 1
trigger1 = time = 0
ID = 6000

[State 953, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,1

[State 953, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3,0

[State 953, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
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
trigger1 = Time = 10
time = 20
movetime = 20
anim = S70091
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

[State 999, cosmo]
type = Explod
triggerall = NumExplod(998) = 0
trigger1 = AnimElem = 1
pos = 10,8
anim = 998
ID = 998
sprpriority = -2
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 0
scale = .9, 1

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

[State 999, voce]
type = PlaySnd
trigger1 = time = 0
value = 13,3
channel = 0

[State 999]
type = PlaySnd
trigger1 = time = 15
value = 5,2

[State 999]
type = PlaySnd
trigger1 = time = 15
value = 9,4

[State 999]
type = LifeAdd
trigger1 = animtime = 15
value = 100

[State 999]
type = VarSet
trigger1 = command = "shoryuha2"
var(9) = 1

[State 999]
type = ChangeState
trigger1 = Time = 50
value = 997
ctrl = 1

;---------------
[Statedef 997]
type    = S
movetype = I
physics = S
anim = 997
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 997, removeEX]
type = RemoveExplod
triggerall = NumExplod(7030) >= 1
trigger1 = AnimElem = 2
ID = 7030

[State 997, removeEX]
type = RemoveExplod
triggerall = NumExplod(7031) >= 1
trigger1 = AnimElem = 2
ID = 7031

[State 997, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 997]
type = ChangeState
triggerall = var(9) = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 997]
type = ChangeState
triggerall = var(9) = 1
triggerall = p2bodydist X <= 120
trigger1 = AnimTime = 0
value = 3200
ctrl = 0

[State 997]
type = ChangeState
triggerall = var(9) = 1
triggerall = p2bodydist X > 120
trigger1 = AnimTime = 0
value = 3300
ctrl = 0

;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Dragon Wave 1
[Statedef 1000]
type = S
movetype = A
physics = S
anim = 400
juggle = 5
ctrl = 0
velset = 0,0
poweradd = 60

[State 1000, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 13,3

[State 1000]
type = PlaySnd
trigger1 = Time = 5
value = 5,4

[State 1000, shine]
type = PalFX
trigger1 = AnimElem = 4
time = 5
add = 0,0,0
sinadd = 150,220,150,3

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,0

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,4

[State 1000, light]
type = Explod
trigger1 = AnimElem = 3
anim = 7063
ID = 7063
pos = 49,2
postype = p1
sprpriority = 2
supermove = 1
removetime = 12
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .5,.5

[State 1000, removeEX]
type = RemoveExplod
triggerall = NumExplod(7063) >= 1
trigger1 = AnimElem = 5
ID = 7063

[State 1000]
type = Projectile
trigger1 = AnimElem = 3
attr = C, SP
projanim = 8017
projhitanim = 7001
projscale = .2 , .2
offset = 100, -41
velocity = 7,0
damage = 40,4
getpower = 0
givepower = 0
animtype = Hard
guardflag = LA
pausetime = 0,12
sparkno = s7062
sparkxy =  60,60
hitsound   = s1,6
guardsound = s6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10
Palfx.time          = 15
Palfx.add           = 50,50,50
Palfx.mul           = 150,250,150
Palfx.sinadd        = -112,-122,-112,3

[State 1000]
type = ChangeState
trigger1 = AnimTime = 0
value = 12
ctrl = 1

;---------------------------------------------------------------------------
; Dragon Wave 2
[Statedef 1001]
type = S
movetype = A
physics = S
anim = 200
juggle = 5
ctrl = 0
velset = 0,0
poweradd = 60

[State 1001, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 13,3

[State 1001]
type = PlaySnd
trigger1 = Time = 5
value = 5,4

[State 1001, shine]
type = PalFX
trigger1 = AnimElem = 4
time = 5
add = 0,0,0
sinadd = 150,220,150,3

[State 1001, light]
type = Explod
trigger1 = AnimElem = 4
anim = 7063
ID = 7063
pos = 70,-35
postype = p1
sprpriority = 2
supermove = 1
removetime = 12
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .5,.5

[State 1001, removeEX]
type = RemoveExplod
triggerall = NumExplod(7063) >= 1
trigger1 = AnimElem = 7
ID = 7063

[State 1001]
type = Projectile
trigger1 = AnimElem = 4
attr = S, SP
projanim = 8017
projhitanim = 7001
projscale = .2 , .2
offset = 100, -78
velocity = 7,0
damage = 50,5
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,12
sparkno = s7062
sparkxy =  60,60
hitsound   = s1,6
guardsound = s6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10
Palfx.time          = 15
Palfx.add           = 50,50,50
Palfx.mul           = 150,250,150
Palfx.sinadd        = -112,-122,-112,3

[State 1001]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Dragon Wave 3
[Statedef 1002]
type = S
movetype = A
physics = S
anim = 220
juggle = 5
ctrl = 0
velset = 0,0
poweradd = 60

[State 1002, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 13,3

[State 1002]
type = PlaySnd
trigger1 = Time = 5
value = 5,4

[State 1002, shine]
type = PalFX
trigger1 = AnimElem = 4
time = 5
add = 0,0,0
sinadd = 150,220,150,3

[State 1002, light]
type = Explod
trigger1 = AnimElem = 6
anim = 7063
ID = 7063
pos = 110,-30
postype = p1
sprpriority = 2
supermove = 1
removetime = 12
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .5,.5

[State 1002, removeEX]
type = RemoveExplod
triggerall = NumExplod(7063) >= 1
trigger1 = AnimElem = 9
ID = 7063

[State 1002]
type = Projectile
trigger1 = AnimElem = 7
attr = S, SP
projanim = 8017
projhitanim = 7001
projscale = .2 , .2
offset = 100, -78
velocity = 7,0
damage = 60,6
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,12
sparkno = s7062
sparkxy =  60,60
hitsound   = s1,6
guardsound = s6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10
Palfx.time          = 15
Palfx.add           = 50,50,50
Palfx.mul           = 150,250,150
Palfx.sinadd        = -112,-122,-112,3

[State 1002]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
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

;
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

;
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

;
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

;
[Statedef 1029]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1029, Anim] 
type = ChangeAnim2
trigger1 = Time >= 0
value = 1025

[State 1029, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1030

;
[Statedef 1030]
type    = A
movetype= H
physics = N

[State 1030, Velocity]
type = VelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 1030, Gravity]
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 1030, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1030, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1031

[State 1030, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;
[Statedef 1031]
type    = A
movetype= H
physics = N

[State 1031, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1031, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1031, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1031, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1031, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3
ownpal = 1

[State 1031, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1027

[State 1031, Sound]
type = PlaySnd
trigger1 = Time = 1
value = 240,0

[State 1031, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1032

;
[Statedef 1032]
type    = A
movetype= H
physics = N

[State 1032, 1]
type = NotHitBy
trigger1 = Time >= 0
value = , NA, NP

[State 1032, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -6

[State 1032, Vel X]
type = VelSet
trigger1 = Time = 0
x = 5

[State 1032, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1032, Gravity]
type = VelAdd
trigger1 = Time >= 0
y = .35

[State 1032, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1032, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1032, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1032, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1032, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; Dragon Geyser
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1100
velset = 0,0
poweradd = 100

[State 1100, light]
type = Explod
trigger1 = AnimElem = 5
anim = 7030
ID = 7030
pos = 80,5
postype = p1
sprpriority = 4
supermove = 1
scale = 0.5,0.5
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
ownpal = 1
removeongethit = 1
scale = .5,.5

[State 1100, light]
type = Explod
trigger1 = AnimElem = 5
anim = 7031
ID = 7031
pos = 80,6
postype = p1
sprpriority = 4
supermove = 1
scale = 0.5,0.5
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
ownpal = 1
removeongethit = 1
scale = .5,.5
vfacing = -1

[State 1100, light]
type = Explod
trigger1 = AnimElem = 9
anim = 7010
ID = 7010
pos = 80,0
postype = p1
sprpriority = -4
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
ownpal = 1
removeongethit = 1

[State 1100, cosmo]
type = Explod
trigger1 = AnimElem = 5
anim = 1103
ID = 1103
pos = 47,5
postype = p1
sprpriority = -2
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
ownpal = 1
removeongethit = 1
removetime = 150

[State 1100, removeEX]
type = RemoveExplod
triggerall = NumExplod(1103) >= 1
trigger1 = AnimElem = 20
ID = 1103

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,0

[State 1100]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 1100]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,5

[State 1100, envshake]
type = EnvShake
trigger1 = AnimElem = 5
time = 50

[State 1100]
type = HitDef
trigger1 = AnimElem = 5
priority = 5
attr = S, SA
damage   = 80,8
getpower = 0
givepower = 0
animtype = Hard
priority = 3
guardflag = MA
pausetime = 0,17
sparkno = s7001
sparkxy =  -10,-40
hitsound   = s1,4
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1
air.velocity = -3,0
airguard.velocity = -3,0
fall = 1
fall.recover = 0
envshake.time = 15
envshake.freq = 50
envshake.ampl = 15
envshake.phase = 10
fall.damage = 10            
fall.envshake.ampl = 6       
fall.envshake.freq = 175
fall.envshake.time = 25

[State 1100]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; Dragon Geyser (air)
[Statedef 1101]
type = A
movetype = A
physics = A
anim = 1101
juggle = 1
ctrl = 0
poweradd = 100

[State 1101]
type = AfterImage
trigger1 = time = 2
time = 25
FrameGap = 2
length = 10
PalBright = 10,10,10
PalContrast = 98,98,98
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1101]
type = SuperPause
trigger1 = Time = 0
time = 13
anim = -1
movetime = 5
darken = 0

[State 1101, yaahaa]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,0
channel = 0

[State 1101]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 1101, vel]
type = VelSet
trigger1 = AnimElem = 3
y = 20

[State 1101]
type = HitDef
trigger1 = AnimElem = 3
priority = 5
attr = A, SA
damage   = 80,8
getpower = 0
givepower = 0
p1stateno = 1102
animtype = Hard
priority = 3
guardflag = MA
pausetime = 0,17
sparkno = s7001
sparkxy =  -10,-40
guardsound = s6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 20
ground.velocity = -10
air.velocity = -9,10
airguard.velocity = -3,0
fall = 1
fall.recover = 0
envshake.time = 15
envshake.freq = 50
envshake.ampl = 15
envshake.phase = 10
fall.damage = 10
fall.envshake.ampl = 6
fall.envshake.freq = 175
fall.envshake.time = 25

[State 1101, ChangeState]
type = ChangeState
triggerall = !MoveHit
trigger1 = AnimTime = 12
value = 1102
ctrl = 0

;---------------------------------------------------
; Dragon Geyser (air end)
[Statedef 1102]
type = S
movetype = A
physics = S
anim = 1102
juggle = 1

[State 1102, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1102, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1102, light]
type = Explod
trigger1 = AnimElem = 2
anim = 7030
ID = 7030
pos = 80,5
postype = p1
sprpriority = 4
supermove = 1
scale = 0.5,0.5
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
ownpal = 1
removeongethit = 1
scale = .5,.5

[State 1102, light]
type = Explod
trigger1 = AnimElem = 2
anim = 7031
ID = 7031
pos = 80,6
postype = p1
sprpriority = 4
supermove = 1
scale = 0.5,0.5
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
ownpal = 1
removeongethit = 1
scale = .5,.5
vfacing = -1

[State 1102, cosmo]
type = Explod
trigger1 = AnimElem = 1
anim = 1103
ID = 1103
pos = 47,5
postype = p1
sprpriority = -2
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
ownpal = 1
removeongethit = 1
removetime = 150

[State 1102, light]
type = Explod
trigger1 = AnimElem = 2
anim = 7010
ID = 7010
pos = 80,0
postype = p1
sprpriority = -4
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
ownpal = 1
removeongethit = 1

[State 1102, removeEX]
type = RemoveExplod
triggerall = NumExplod(1103) >= 1
trigger1 = AnimElem = 16
ID = 1103

[State 1102]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,5

[State 1102, envshake]
type = EnvShake
trigger1 = AnimElem = 1
time = 50

[State 1102]
type = ChangeState
trigger1 = AnimElem = 17
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Dragon Super Kick by Tux
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1200
velset = 0,0
poweradd = 100

[State 1200]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 3
value = 13,3

[State 1200]
type = VelAdd
trigger1 = AnimElem = 4
x = 10

[State 1200]
type = AfterImage
trigger1 = AnimElem = 4
time = 10
length = 20
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1200]
type = Explod
trigger1 = AnimElem = 4
anim = 7085
postype = p1
pos = 110,0
supermove = 1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
removeongethit = 1

[State 1200]
type = PlaySnd
trigger1 = Animelem = 8
value = 0,1

[State 1200]
type = HitDef
trigger1 = time = 0
animtype  = Hard
attr = S, SA
damage   = 80,8
getpower = 0
givepower = 0
priority = 3
guardflag = MA
pausetime = 8,9
sparkno = S70021
sparkxy = -30,-95
hitsound = s1,4
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -9,-6
air.velocity = -9,-6
envshake.time =  25
envshake.freq = 45
envshake.ampl = 15
envshake.phase = 6
p2stateno = 1025
fall.damage = 10
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1200, scia]
type = Explod
trigger1 = Animelem = 10
anim = 7080
pos = 40,0
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0
supermove = 1

[State 1200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Dragon Combo Kick
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1300
velset = 0,0
poweradd = 100

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,1

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 11
value = 0,2

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 18
trigger2 = AnimElem = 26
value = 2,2

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 19
value = 2,1

[State 1300]
type = HitDef
trigger1 = AnimElem = 3
priority = 5
attr = S, SA
damage   = 25,2
getpower = 0
givepower = 0
priority = 3
guardflag = MA
animtype = Hard
pausetime = 5,17
sparkno = s7000
sparkxy =  -10,-70
hitsound   = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -6
air.velocity = -2,-3
airguard.velocity = -3,0
envshake.time = 15           
envshake.ampl = 7
envshake.freq = 176

[State 1300]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
damage   = 30,3
getpower = 0
givepower = 0
priority = 3
animtype = hard
guardflag = MA
pausetime = 5,30
sparkno = s7001
sparkxy =  -10,-90
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4
air.velocity = -3,-3
airguard.velocity = -3,0
envshake.time = 15           
envshake.ampl = 7
envshake.freq = 176

[State 1300]
type = HitDef
trigger1 = AnimElem = 14
attr = A, SA
damage    = 35,3
getpower = 0
givepower = 0
guardflag = MA
priority = 3
pausetime = 15,18
sparkno = S7060
sparkxy =  -25,30
hitsound   = s1,6
guardsound = s6,0
guard.sparkno = -1
ground.type = Low
ground.slidetime = 18
ground.hittime  = 20
ground.velocity = -6.5     
air.type = High
air.velocity = -5,-3.5
guard.velocity = -5
airguard.velocity = -2.5,0
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
fall = 1   
fall.damage = 0
fall.envshake.ampl = 6       
fall.envshake.freq = 175
fall.envshake.time = 25

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 12,0

[State 1300, polvere]
type = Explod
trigger1 = Animelem = 5
anim = 7080
pos = 50,-5
sprpriority = 5
ownpal = 1
ignorehitpause = 1
supermove = 1

[State 1300, polvere]
type = Explod
trigger1 = Animelem = 9
anim = 7080
pos = 68,-5
sprpriority = 5
ownpal = 1
ignorehitpause = 1
supermove = 1
scale = .9, .9

[State 1300, polvere]
type = Explod
trigger1 = Animelem = 12
anim = 7084
pos = 90,3
sprpriority = 5
ownpal = 1
ignorehitpause = 1
supermove = 1

[State 1300, polvere]
type = Explod
trigger1 = Animelem = 19
anim = 70891
pos = 60,3
sprpriority = 5
ownpal = 1
ignorehitpause = 1
supermove = 1
scale = .8, .8

[State 1300]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
; Dragon Trap (Counterattack)
[Statedef 1400]
type = S
physics = S
anim = 1400
juggle = 5
velset = 0,0
ctrl = 0

[State 1400, Afterimage]
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
time = 5

[State 1400, shine]
type = PalFX
trigger1 = AnimElem = 4
time = 15
add = 0,0,0
sinadd = 100,200,100,3

[State 1400, pose]
type = PlaySnd
trigger1 = time = 1
value = 0,1

[State 1400, voice]
type = PlaySnd
trigger1 = time = 1
value = 12,0

[State 1400, step]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3,0

; Reversal Atk
[State 1400, 3]
type = ReversalDef
trigger1 = time = 0
reversal.attr = S, NA, SA
p1stateno = 1401
p2stateno = 1402
hitsound = s4,6
pausetime = 20,30
sparkno = s7071

[State 1400, ChangeAnim]
type = ChangeAnim
triggerall = movehit = 1
trigger1 = time = 0
value = 5012

[State 1400, 4]
type = HitBy
trigger1 = 1
value = SCA, AA, AP
time = 2

[State 1400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; p1 state 1
[Statedef 1401]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1401
sprpriority = 2

[State 1401, PosSet]
type = PosSet
trigger1 = Time > 0
y = 0

[State 1401, Velset]
type = VelSet
trigger1 = Time > 0
x = 0
y = 0

[State 1401, TargetVelSet]
type = TargetVelSet
trigger1 = Time > 0
y = 0

[State 1401, BindtoTarget]
type = BindtoTarget
trigger1 = Time = 0
pos = 15,0,Foot

[State 1401, LifeAdd]
type = LifeAdd
trigger1 = Time = 0
value = -50
kill = 0
absolute = 0

[State 1401, pain]
type = PlaySnd
trigger1 = AnimElem = 1
value = 10,0

[State 1401, superpause]
type = SuperPause
trigger1 = AnimElem = 4
anim = -1
time = 100
movetime = 1
darken = 1

[State 1401, arm]
type = Explod
trigger1 = Animelem = 4
postype = p1
pos = -10,-5
scale = 1,1
bindtime = 95
supermove = 1
supermovetime = 100
removetime = 100
sprpriority = -3
anim = 1403
ID = 1403

[State 1401, grab]
type = PlaySnd
trigger1 = AnimElem = 4
value = 8,0

[State 1401, voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 12,5

[State 1401, spark]
type = Explod
triggerall = NumExplod(70091) = 0
trigger1 = 1
anim = 70091
ID = 70091
pos = 0,-60
postype = p1
sprpriority = 2
supermove = 1
removetime = 40
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 1401, grab]
type = PlaySnd
trigger1 = Time = 15
trigger2 = Time = 45
trigger3 = Time = 75
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 165
value = 8,0

[State 1401, bam]
type = PlaySnd
trigger1 = Time = 190
value = 4,6

[State 1401, RemoveExplod]
type = RemoveExplod
trigger1 = time > 0
ID = 70091

[State 1401, sreact]
type = ChangeState
triggerall = anim = 1401 && Time > 20
trigger1 = command = "a"
trigger2 = command = "b"
value = 1404
ctrl = 0

[State 1401, sreact]
type = ChangeState
triggerall = anim = 1401 && Time > 20
trigger1 = command = "c"
value = 225
ctrl = 0

[State 1401, sreact]
type = ChangeState
triggerall = anim = 1401 && Time > 20
trigger1 = command = "x"
trigger2 = command = "y"
value = 235
ctrl = 0

[State 1401, sreact]
type = ChangeState
triggerall = anim = 1401 && Time > 20
trigger1 = command = "z"
value = 245
ctrl = 0

[State 1401, fall]
type = ChangeState
triggerall = anim = 1401
trigger1 = Time = 200
value = 1025
ctrl = 1

[State 1401, fall2]
type = ChangeState
triggerall = anim = 1401 && Time > 20
trigger1 = p2stateno != 1402
value = 1025
ctrl = 1

; p2 state 1
[Statedef 1402]
type = S
movetype= H
physics = N
velset = 0,0
SprPriority = -2

[State 1402, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1402, Velset]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1402, TargetVelSet]
type = TargetVelSet
trigger1 = Time = 0
y = 0

[State 1402, TargetFacing]
type = TargetFacing
trigger1 = Time = 0
value = 1
ID = 1

[State 1402, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1402

[State 1402, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger1 = AnimElem = 7
trigger1 = AnimElem = 11
x = 5

[State 1402, Velset]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 1402, LifeAdd]
type = LifeAdd
trigger1 = Time = 190
trigger1 = p2stateno != 1401
trigger1 = p2stateno != 235
trigger1 = p2stateno != 225
trigger1 = p2stateno != 245
trigger1 = p2stateno != 1404
value = -50
kill = 0

[State 1402, EnvColor]
type = EnvColor
triggerall = stateno = 1402
trigger1 = Time = 190
trigger1 = p2stateno != 1401
trigger1 = p2stateno != 235
trigger1 = p2stateno != 225
trigger1 = p2stateno != 245
trigger1 = p2stateno != 1404
value = 100,200,100
time = 10
under = 0
ignorehitpause = 1
persistent = 1

[State 1402, fall]
type = SelfState
triggerall = stateno = 1402
trigger1 = time = 195
trigger1 = Pos Y > -1
value = 1025
ctrl = 1

[State 1402, fall2]
type = ChangeState
triggerall = stateno = 1402
trigger1 = p2stateno != 1401
trigger1 = p2stateno != 235
trigger1 = p2stateno != 225
trigger1 = p2stateno != 245
trigger1 = p2stateno != 1404
trigger1 = time = 195
trigger1 = Pos Y < 0
value = 1025
ctrl = 1

; p1 state 2
[Statedef 1404]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 60
ctrl = 0
velset = 0,0
anim = 1404
sprpriority = 2

[State 1404, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1

[State 1404, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Up
damage    = 40
getpower = 0
givepower = 0
priority  = 5
pausetime = 12,12
sparkno = s8502
sparkxy = 0,-80
hitsound   = s4,6
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -15,-10.5
guard.velocity = -6
air.velocity = -1,-8.5
airguard.velocity = -4,-4.5
p2facing = 1
fall = 0
fall.recovertime = 50
p2stateno = 1405

[State 1404, EnvColor]
type = EnvColor
trigger1 = AnimElem = 4
value = 250,50,50
time = 10
under = 0
ignorehitpause = 1
persistent = 1

[State 1404, explod]
type = Explod
triggerall = numexplod(8530) = 0
trigger1 = movehit
anim = 7071
ID = 7071
removetime = 10
persistent = 0
pos = 0,-110
postype = p2
bindtime = -1
removeongethit = 1

[State 1404, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; p2 state 2
[Statedef 1405]
type = S
movetype= H
physics = N
velset = -3,0

[State 1405, Freeze anim]
type = Changeanim
trigger1 = time = 0
value = 5300

[State 1405, shine]
type = PalFX
trigger1 = time = 0
time = 150
add = 0,0,0
sinadd = 250,20,0,3

[State 1405, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 1405, Velset]
type = VelSet
trigger1 = time = 15
x = 0
y = 0

[State 1405, CS]
type = SelfState
trigger1 = time = 150
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1405, CZ]
type = ChangeState
trigger1 = time = 150
trigger1 = Pos Y < 0
value = 52;0

;---------------------------------------------------------------------------
; Dragon Kick
[Statedef 1500]
type    = S
movetype= A
physics = N
juggle  = 6
poweradd= 100
velset = 0,0
anim = 1500
ctrl = 0
sprpriority = 2

[State 1500, Width]
type = Width
trigger1 = Anim = 1501 && AnimElem = 2
trigger2 = Anim = 1501 && Time >=4
player = 3,0

[State 1500, Anim]
type = Changeanim
trigger1 = Anim = 1500 && !AnimTime
value = 1501

[State 1500, StateType]
type = StateTypeSet
trigger1 = Anim = 1500 || Anim = 1502
statetype = A
physics = A

[State 1500, StateType]
type = StateTypeSet
trigger1 = Anim = 1501
statetype = A
physics = N

[State 1500, VelSet]
type = VelSet
trigger1 = !Time
x = 7
y = -2

[State 1500, VelAdd]
type = VelAdd
trigger1 = Time >= 30
y = .4

[State 1500, VelAdd]
type = VelAdd
trigger1 = Time >= 0
trigger1 = FrontEdgeBodyDist = 0
y = .6

[State 1500, VelSet]
type = VelSet
trigger1= Anim = 1500 && AnimElem = 1
x = 6.5
y = -4

[State 1500, VelSet]
type = VelSet
trigger1= Anim = 1501
x = 11

[State 1500, VelAdd]
type = VelAdd
trigger1 = Anim = 1501
y = .4

[State 1500, Anim]
type = Changeanim
trigger1 = Anim = 1501 && AnimElemTime(1)>=15
value = 1502
persistent = 0

[State 1500, Anim]
type = Changeanim
trigger1 = Anim = 1501 && !AnimTime
value = 1502
persistent = 0

[State 1500, AfterImage]
type = AfterImage
trigger1 = Anim = 1501 && AnimElem = 1
time = 15
length = 10
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1500, shine]
type = PalFX
trigger1 = Anim = 1501 && AnimElem = 1
time = 5
add = 0,0,0
sinadd = 150,220,150,3

[State 1500, Snd]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 1500, Hit]
type = HitDef
trigger1 = Anim = 1501 && AnimElem = 1
attr = S, SA
animtype  = Hard
damage    = 80,8
getpower = 0
givepower = 0
priority  = 4
guardflag = MA
pausetime = 8,7
sparkxy = -10,-80
sparkno = s7004
hitsound   = s1,4
guardsound = s6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,-7
guard.velocity = -7
air.velocity = -8,-7
airguard.velocity = -5, -4
fall = 1
fall.damage = 10
p2stateno = 1025    ;Make p2 go to state 1025 on hit
p2facing = 1        ;Force to face p1

[State 1500, Exp]
type = Explod
trigger1 = Anim = 1501 && AnimElem = 1
pos = 75,-85
postype = p1
anim = 8043
sprpriority = -5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 0
bindtime = -1
removetime = 15
scale = 0.3,0.3

[State 1500, Snd]
type = PlaySnd
trigger1 = Anim = 1500 && AnimElem = 5
value = 13,3

[State 1500, polvere]
type = Explod
trigger1 = Anim = 1500 && AnimElem = 2
anim = 70891
pos = 40,6
facing = -1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
supermove = 1
scale = .8, .8

[State 1500, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 1502
ctrl = 0

; end
[Statedef 1502]
type = A
movetype = I
physics = A
anim = 43
ctrl = 0
sprpriority = 0
;velset = 0,0

[State 1502, Velset]
type = VelSet
trigger1 = 1
x = -3.5

[State 1502, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
y = -6

[State 1502]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim+3)
persistent = 0
value = Anim+3

;---------------------------------------------------------------------------
; Dragon Flying Kick
[Statedef 1600]
type = A
movetype = A
physics = A
anim = 1600
juggle = 1
ctrl = 0
poweradd = 100

[State 1600]
type = AfterImage
trigger1 = time = 2
time = 25
FrameGap = 2
length = 10
PalBright = 10,10,10
PalContrast = 98,98,98
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1600]
type = SuperPause
trigger1 = Time = 0
time = 13
anim = -1
movetime = 5
darken = 0

[State 1600, Lampi]
type = Explod
trigger1 = Time = 5
triggerall = NumExplod(7060) = 0
anim = 7060
ID = 7060
pos = 70,58
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1600, vel]
type = VelSet
trigger1 = AnimElem = 3
x = 20
y = 20

[State 1600]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

[State 1600]
type = HitDef
trigger1 = AnimElem = 3
priority = 6
attr = A, SA
damage = 80,8
getpower = 0
givepower = 0
animtype = hard
guardflag = HA
sparkno = s7002
sparkxy = -10,-40
hitsound = s1,2
guardsound = s6,0
pausetime = 12,12
ground.hittime = 13
ground.type = high
ground.slidetime = 9
ground.velocity = -10
air.velocity = -9,10
envshake.time = 15           
envshake.ampl = 7
envshake.freq = 176
fall = 1   
fall.damage = 10
fall.envshake.ampl = 6       
fall.envshake.freq = 125
fall.envshake.time = 15

[State 1600, yaahaa]
type = PlaySnd
trigger1 = AnimElem = 1 
value = 12,0
channel = 0

[State 1600]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Supers Moves
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Rozan ShoRyuHa (vertical)
[Statedef 3210]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = -1000
ctrl = 0
anim = 3210
velset = 0,0

[State 3210, Spause]
type = Superpause
trigger1 = AnimElem = 1
anim = s70091
pos = 20,-80
Time = 34
movetime = 34
darken = 1
sound = s5,2

[State 3210]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,0

[State 3210]
type = Explod
trigger1 = AnimElem = 1
ID = 6001
anim = 6001
pos = 0,0
postype = p1
sprpriority = -9
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 34
removeongethit = 1

[State 3210, super]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 20
mul = 192,255,192
add = 5,5,5
invertall = 0

[State 3210, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3210]
type = AfterImage
trigger1 = time = 34
time = 35
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 3210]
type = EnvColor
trigger1 = AnimElem = 18
value = 240,240,240
under = 1
time = 3

[State 3210, cosmo]
type = Explod
trigger1 = time = 30
ID = 3204
anim = 3204
pos = 0,0
postype = p1
sprpriority = -2
supermove = 30
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3210, removeEX]
type = RemoveExplod
triggerall = NumExplod(3204) >= 1
trigger1 = AnimElem = 33
ID = 3204

[State 3210, light]
type = Explod
trigger1 = AnimElem = 15
ID = 7030
anim = 7030
pos = 98,5
postype = p1
sprpriority = 2
supermove = 10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .5,.5

[State 3210, light]
type = Explod
trigger1 = AnimElem = 15
ID = 7031
anim = 7031
pos = 98,6
postype = p1
sprpriority = 2
supermove = 10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .5,.5
vfacing = -1

[State 3210, polvere]
type = Explod
trigger1 = AnimElem = 18
ID = 7010
anim = 7010
pos = 98,0
postype = p1
sprpriority = -4
supermove = 10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3210]
type = PlaySnd
trigger1 = Time = 0
value = 200,0
channel = 0

[State 3210]
type = PlaySnd
trigger1 = AnimElem = 13
value = 4,2

[State 3210]
type = helper
trigger1 = AnimElem = 18
stateno = 8020
ID = 8020
name = "dragon"
postype = p1
pos = 90,0
helpertype = normal
keyctrl = 0
ownpal = 1

[State 3210]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------
[State 3210, nuvole rosse]
type = Explod
triggerall = NumExplod(8161) = 0
trigger1 = Time = 0
pos = 0,0
anim = 8161
ID = 8161
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 31
scale = 1.5, 1.5

[State 3210, sfondo verticale]
type = Explod
triggerall = NumExplod(8120) = 0
trigger1 = Time = 32
pos = 0,320
anim = 8120
ID = 8120
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 400

[State 3210, striscie verticali]
type = Explod
triggerall = NumExplod(8121) = 0
trigger1 = Time = 32
pos = -10,0
anim = 8121
ID = 8121
postype = back
sprpriority = -6
ownpal = 1
bindtime = -1
supermove = 1
removetime = 400
scale = 1.2, 1.2

[State 3210, removeEX]
type = RemoveExplod
triggerall = NumExplod(8120) >= 1
trigger1 = AnimElem = 39
ID = 8120

[State 3210, removeEX]
type = RemoveExplod
triggerall = NumExplod(8121) >= 1
trigger1 = AnimElem = 39
ID = 8121

[State 3210]
type = AssertSpecial
trigger1 = 1
flag = noFG

; dragon v1 (helper)
[Statedef 8020]
type    = A
movetype= A
physics = S
juggle  = 1
poweradd = 50
ctrl = 0
anim = 8020
velset = 0,0

[State 8020]
type = PlaySnd
trigger1 = Time = 1
value = 700,1

[State 8020, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8020]
type = VelSet
trigger1 = AnimElem = 7
y = -10

[State 8020, cosmo]
type = Explod
trigger1 = time = 0
ID = 8023
anim = 8023
pos = 0,20
postype = p1
sprpriority = -4
supermove = 1
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
removetime = 129

[State 8020, removeEX]
type = RemoveExplod
triggerall = NumExplod(8023) >= 1
triggerall = Time = 111
trigger1 = moveguarded >= 1
trigger2 = movehit != 1
ID = 8023

[State 8020]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 7
priority = 7
attr = S, HA
damage   = ifelse(parent,var(9) = 0,40,80),ifelse(parent,var(9) = 0,4,8)
getpower = 0
givepower = 0
animtype = up
guardflag = MA
pausetime = 0,5
ground.type = high
ground.slidetime = 0
ground.hittime  = 4
ground.velocity = 0,-15
sparkno = S8061
sparkxy =  0,-90
hitsound   = s1,4
guardsound = s6,0
air.type = Low
air.velocity = 0,-20
airguard.velocity = -3.5,0
fall = 1
fall.recover = 0
envshake.time =  20
envshake.freq = 99
envshake.ampl = 10
envshake.phase = 99
fall.damage = 50
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 15
Palfx.add           = 50,50,50
Palfx.mul           = 150,250,150
Palfx.sinadd        = -112,-122,-112,3

[State 8020, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 8020]
type = DestroySelf
triggerall = moveguarded >= 1
trigger1 = Time = 111

[State 8020]
type = DestroySelf
triggerall = movehit != 1
trigger1 = Time = 111

[State 8020]
type = DestroySelf
triggerall = movehit >= 1
trigger1 = Time = 111

;---------------------------------------------------------------------------
; Rozan ShoRyuHa (horizontal)
[Statedef 3310]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = -2000
ctrl = 0
anim = 3310
velset = 0,0

[State 3310, super]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3310, Spause]
type = Superpause
trigger1 = Time = 0
anim = -1
pos = 0,-70
Time = 195
movetime = 195
darken = 0

[State 3310]
type = AfterImage
trigger1 = time = 0
time = 130
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 3310]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0

[State 3310]
type = PlaySnd
trigger1 = AnimElem = 10
value = 0,1

[State 3310]
type = PlaySnd
trigger1 = AnimElem = 16
value = 5,2

[State 3310, dragon zoom out]
type = Explod
trigger1 = AnimElem = 9
anim = 6001
ID = 6001
pos = 0,0
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 35

[State 3310, spause]
type = Explod
trigger1 = AnimElem = 16
anim = 70091
ID = 70091
pos = -5,-80
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3310, cosmo]
type = Explod
trigger1 = AnimElem = 16
anim = 3313
ID = 3313
pos = 4,3
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100
scale = .9, 1

[State 3310, polvere]
type = Explod
trigger1 = AnimElem = 1
trigger2 = AnimElem = 9
anim = 7010
ID = 7010
pos = 1,-1
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 3310, polvere]
type = Explod
trigger1 = AnimElem = 16
anim = 7010
ID = 7010
pos = 2,-1
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100

[State 3310, Lampo verde]
type = Explod
trigger1 = AnimElem = 1
trigger2 = AnimElem = 9
anim = 7030
ID = 7030
pos = 0,5
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1
removetime = 50
scale = .5,.5

[State 3310, Lampo verde]
type = Explod
trigger1 = AnimElem = 1
trigger2 = AnimElem = 9
anim = 7031
ID = 7031
pos = 0,6
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1
removetime = 50
scale = .5,.5
vfacing = -1

[State 3310, nuvole rosse]
type = Explod
triggerall = NumExplod(8161) = 0
trigger1 = Time = 0
pos = 0,0
anim = 8161
ID = 8161
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 168
scale = 1.5, 1.5

[State 3310, onde]
type = Explod
triggerall = NumExplod(8144) = 0
trigger1 = AnimElem = 7
pos = 0,0
ID = 8144
anim = 8144
postype = back
sprpriority = -5
ignorehitpause = 1
supermovetime = 126
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 126
scale = 1.1,1.1

[State 3310, onde]
type = Explod
triggerall = NumExplod(8145) = 0
trigger1 = AnimElem = 7
pos = 0,0
anim = 8145
ID = 8145
postype = back
sprpriority = -6
ignorehitpause = 1
ownpal = 1
supermovetime = 126
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 126
scale = 1.1,1.1

[State 3310, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,1
channel = 0

[State 3310, Voice]
type = PlaySnd
trigger1 = AnimElem = 16
value = 200,1
channel = 0

[State 3310]
type = ChangeState
trigger1 = animTime = 0
value = 3311
ctrl = 1

; attack
[Statedef 3311]
type = S
movetype = A
physics = S
anim = 3311
poweradd = 0
juggle = 5
ctrl = 0
velset = 0,0

[State 3311, removeEX]
type = RemoveExplod
triggerall = NumExplod(3313) = 1
trigger1 = AnimElem = 2
ID = 3313

[State 3311, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) = 1
trigger1 = AnimElem = 2
ID = 7010

[State 3311]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3311]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,2

[State 3311, cosmo]
type = Explod
trigger1 = time = 0
anim = 3314
ID = 3314
pos = 10,1
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200
scale = .9, 1

[State 3311, polvere]
type = Explod
trigger1 = AnimElem = 8
anim = 7010
ID = 7010
pos = 8,-1
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

[State 3311, lucella]
type = Explod
trigger1 = AnimElem = 8
anim = 7063
ID = 7063
pos = 26,12
postype = p1
sprpriority = 3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

[State 3311, Lampi]
type = Explod
trigger1 = AnimElem = 7
anim = 7030
ID = 7030
pos = 15,5
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .5,.5

[State 3311, Lampi]
type = Explod
trigger1 = AnimElem = 7
anim = 7031
ID = 7031
pos = 15,6
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .5,.5
vfacing = -1

[State 3311, sfondo orizzontale]
type = Explod
triggerall = NumExplod(8130) = 0
trigger1 = Time = 0
pos = 0,-50
anim = 8130
ID = 8130
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 400
scale = 1.5,1.5

[State 3311, striscie orizzontali]
type = Explod
triggerall = NumExplod(8131) = 0
trigger1 = Time = 0
pos = -10,0
anim = 8131
ID = 8131
postype = back
sprpriority = -6
ownpal = 1
bindtime = -1
supermove = 1
removetime = 400
scale = 1.2, 1.2

[State 3311]
type = helper
trigger1 = AnimElem = 8
stateno = 8030
ID = 8030
postype = p1
pos = 15,-10
helpertype = normal
keyctrl = 0
ownpal = 1
sprpriority = -2

[State 3311]
type = ChangeState
trigger1 = Time = 125
value = 3312
ctrl = 1

; end
[Statedef 3312]
type = S
movetype = A
physics = S
anim = 3312
poweradd = 0
juggle = 5
ctrl = 0
velset = 0,0

[State 3312]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 3312, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3312, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 3312, removeEX]
type = RemoveExplod
triggerall = NumExplod(7063) >= 1
trigger1 = time = 0
ID = 7063

[State 3312, removeEX]
type = RemoveExplod
triggerall = NumExplod(3314) >= 1
trigger1 = time = 0
ID = 3314

[State 3312, removeEX]
type = RemoveExplod
triggerall = NumExplod(8130) >= 1
trigger1 = time = 5
ID = 8130

[State 3312, removeEX]
type = RemoveExplod
triggerall = NumExplod(8131) >= 1
trigger1 = time = 5
ID = 8131

[State 3312, cosmo]
type = Explod
trigger1 = time = 0
anim = 3315
ID = 3315
pos = 10,1
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .9, 1

[State 3312]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 192,255,192
add = 5,5,5
invertall = 0

[State 3312]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; dragon h1 (helper)
[Statedef 8030]
type    = A
movetype= A
physics = S
juggle  = 1
poweradd = 0
ctrl = 0
anim = 8030
velset = 0,0
sprpriority = -2

[State 8030]
type = AfterImage
trigger1 = time = 4
time = 400
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 8030]
type = PlaySnd
trigger1 = Time = 1
value = 700,1

[State 8030, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8030]
type = VelSet
trigger1 = time >= 25
x = 11

[State 8030, cosmo]
type = Explod
trigger1 = time = 0
ID = 8033
anim = 8033
pos = 5,-80
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
removetime = 99

[State 8030]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
priority = 5
attr = S, HP
damage   = ifelse(parent,var(9) = 0,50,120),ifelse(parent,var(9) = 0,12,24)
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,5
sparkno = S8060
sparkxy =  -10,-80
hitsound   = s1,4
guardsound = s6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 23
ground.velocity = -15, -5
air.type = Low
air.velocity = -5,-5
fall = 1
fall.recover = 0
envshake.time =  20
envshake.freq = 99
envshake.ampl = 10
envshake.phase = 99
fall.damage = 50
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
p2stateno = 1025
Palfx.time          = 25
Palfx.add           = 50,50,50
Palfx.mul           = 150,250,150
Palfx.sinadd        = -112,-122,-112,3

[State 8030, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 8030]
type = DestroySelf
trigger1 = Time = 100

;---------------------------------------------------------------------------
; Rozan ShoRyuHa (vertical, w/o cloth)
[Statedef 3200]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
anim = 3100
ctrl = 0
poweradd = -3000

[State 3200]
type = PlaySnd
trigger1 = Animelem = 2
value = 5,2

[State 3200, cloth sound]
type = PlaySnd
trigger1 = Animelem = 12
value = 4,3

[State 3200, Voice]
type = PlaySnd
trigger1 = Animelem = 1
value = 12,1
channel = 0

[State 3200]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3200]
type = superpause
trigger1 = Animelem = 2
time = 91
darken = 0
anim = s7009
pos = 0, -80
movetime = 91

[State 3200]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3200, luce]
type = Explod
trigger1 = AnimElem = 3
anim = 7030
ID = 7030
pos = 0,5
postype = p1
supermove = 1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
scale = .5,.5

[State 3200, luce]
type = Explod
trigger1 = AnimElem = 3
anim = 7031
ID = 7031
pos = 0,6
postype = p1
supermove = 1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
scale = .5,.5
vfacing = -1

[State 3200, polvere]
type = Explod
trigger1 = AnimElem = 4
anim = 7010
ID = 7010
pos = 0,0
postype = p1
supermove = 1
sprpriority = -3
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1

[State 3200, cosmo]
type = Explod
trigger1 = AnimElem = 12
anim = 905
ID = 905
pos = 15,5
postype = p1
supermove = 1
sprpriority = -2
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3200, removeEX]
type = RemoveExplod
triggerall = NumExplod(3006) >= 1
trigger1 = AnimElem = 16
ID = 3006

[State 3200, armor]
type = Explod
trigger1 = AnimElem = 17
anim = 3110
ID = 3110
shadow = -1
pos = 0,0
postype = p1
supermove = 1
sprpriority = -5
supermove = 1
ignorehitpause = 1
bindtime = 1
ownpal = 1
removetime = -1
removeongethit = 1

[State 3200]
type = ChangeState
trigger1 = AnimTime = 0
value = 3201
ctrl = 0

; charge & attack
[Statedef 3201]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = -3000
ctrl = 0
anim = 3200
velset = 0,0

[State 3201]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3201]
type = PlaySnd
trigger1 = Time = 0
value = 14,2

[State 3201]
type = BGPalfx
triggerall = Anim = 3200
trigger1 = Time = 0
ignorehitpause = 1
time = 200
mul = 192,255,192
add = 5,5,5
invertall = 0

[State 3201]
type = PlaySnd
triggerall = Anim = 3200
trigger1 = AnimElem = 1
value = 13,10
channel = 0

[State 3201]
type = SuperPause
triggerall = Anim = 3200
trigger1 = Time = 2
time = 230
movetime = 230
darken = 1
anim = -1

[State 3201]
type = Explod
triggerall = Anim = 3200
trigger1 = AnimElem = 1
ID = 8042
anim = 8042
pos = -35,-150
postype = p1
sprpriority = 2
supermovetime = 500
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 150
removeongethit = 1
scale = 0.7,0.7

[State 3201]
type = Explod
triggerall = Anim = 3200
trigger1 = AnimElem = 1
ID = 8111
anim = 8111
pos = 0,-150
postype = back
sprpriority = -15
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 100
removeongethit = 1
scale = 1.5,1.5

[State 3201]
type = Explod
triggerall = Anim = 3200
triggerall = NumExplod(8160) = 0
trigger1 = AnimElem = 1
pos = 0,0
anim = 8160
ID = 8160
postype = back
sprpriority = -14
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 0
removetime = 100
scale = 1.1,1.1

[State 3201]
type = EnvShake
triggerall = Anim = 3200
trigger1 = Time = 75
time = 120

[State 3201]
type = ChangeAnim
triggerall = Anim = 3200
trigger1 = Time = 75
value = 3201

[State 3201]
type = PlaySnd
triggerall = Time < 140
triggerall = Anim = 3201
trigger1 = (Time % 70) = 0
value = 2,1

[State 3201, shine]
type = PalFX
triggerall = Time < 140
triggerall = Anim = 3201
trigger1 = (Time % 20) = 0
time = 15
add = 0,0,0
sinadd = 100,200,100,3

[State 3201]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 75
ID = 7010
anim = 7010
pos = 0,0
postype = p1
sprpriority = -2
supermovetime = 500
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 140
removeongethit = 1

[State 3201]
type = Explod
trigger1 = Anim = 3201
trigger1 = Time = 75
ID = 7020
anim = 7020
pos = 0,0
postype = p1
sprpriority = 5
supermovetime = 230
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 140
removeongethit = 1

[State 3201]
type = Explod
trigger1 = Anim = 3201
trigger1 = Time = 75
ID = 7030
anim = 7030
pos = 0,5
postype = p1
sprpriority = 5
supermovetime = 230
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 140
removeongethit = 1
scale = .5,.5

[State 3201]
type = Explod
trigger1 = Anim = 3201
trigger1 = Time = 75
ID = 7031
anim = 7031
pos = 0,6
postype = p1
sprpriority = 5
supermovetime = 230
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 140
removeongethit = 1
scale = .5,.5
vfacing = -1

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 150
ID = 8021
anim = 8021
pos = -250,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = -225,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 100
ID = 8021
anim = 8021
pos = -200,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = -175,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 150
ID = 8021
anim = 8021
pos = -150,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = -125,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 100
ID = 8021
anim = 8021
pos = -100,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = -75,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 150
ID = 8021
anim = 8021
pos = -50,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = -25,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 100
ID = 8021
anim = 8021
pos = 0,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = 25,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 150
ID = 8021
anim = 8021
pos = 50,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = 75,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 100
ID = 8021
anim = 8021
pos = 100,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = 125,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 150
ID = 8021
anim = 8021
pos = 150,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = 175,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 100
ID = 8021
anim = 8021
pos = 200,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = 225,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, draghetto]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 150
ID = 8021
anim = 8021
pos = 250,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3201, dragon zoom in]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 79
ID = 6002
anim = 6002
pos = -9,15
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 21
removeongethit = 1

[State 3201, dragon]
type = Explod
triggerall = Anim = 3201
trigger1 = Time = 100
anim = 6000
ID = 6000
sprpriority = -5
postype = p1
pos = -9,-15
bindtime = -1
removetime = 99
removeongethit = 1
supermove = 1
ownpal = 1
scale = .6,.6

[State 3201]
type = PlaySnd
triggerall = Anim = 3201
trigger1 = Time = 100
value = 14,4

[State 3201]
type = Explod
triggerall = Anim = 3201
trigger1 = AnimElem = 34
ID = 7030
anim = 7030
pos = 150,5
postype = p1
sprpriority = 2
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
scale = .5,.5

[State 3201]
type = Explod
triggerall = Anim = 3201
trigger1 = AnimElem = 34
ID = 7031
anim = 7031
pos = 150,6
postype = p1
sprpriority = 2
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
scale = .5,.5
vfacing = -1

[State 3201]
type = Explod
triggerall = Anim = 3201
trigger1 = AnimElem = 28
ID = 3203
anim = 3203
pos = 0,0
postype = p1
sprpriority = -2
supermove = 30
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3201, removeEX]
type = RemoveExplod
triggerall = NumExplod(3203) >= 1
trigger1 = AnimElem = 50
ID = 3203

[State 3201]
type = helper
triggerall = Anim = 3201
trigger1 = AnimElem = 36
trigger1 = NumHelper(8021) = 0
ID = 8021
name = "dragon"
postype = p1
pos = 130,0
stateno = 8021
helpertype = normal
keyctrl = 0
ownpal = 1

[State 3201]
type = PlaySnd
triggerall = Anim = 3201
trigger1 = AnimElem = 30
value = 200,2
channel = 0

[State 3201, VarSet]
type = VarSet
triggerall = var(8) = 1
trigger1 = Anim = 3201 && Animelem = 30
var(8) = 0

[State 3201, VarSet]
type = VarSet
triggerall = var(9) = 1
trigger1 = Anim = 3201 && Animelem = 57
var(9) = 0

[State 3201]
type = BGPalFx
trigger1 = P2Life = 0
add = 255,255,255
sinadd = 300,300,300,60
time = 40
ignorehitpause = 1
persistent= 0

[State 3201]
type = ChangeState
triggerall = Anim = 3201
trigger1 = AnimTime = 0
value = 3304
ctrl = 0

;----------------------------
[State 3201, sfondo verticale]
type = Explod
triggerall = NumExplod(8120) = 0
triggerall = Anim = 3201
trigger1 = AnimElem = 28
pos = 0,320
anim = 8120
ID = 8120
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 400

[State 3201, striscie verticali]
type = Explod
triggerall = NumExplod(8121) = 0
triggerall = Anim = 3201
trigger1 = AnimElem = 28
pos = -10,0
anim = 8121
ID = 8121
postype = back
sprpriority = -6
ownpal = 1
bindtime = -1
supermove = 1
removetime = 400
scale = 1.2, 1.2

[State 3201, removeEX]
type = RemoveExplod
triggerall = NumExplod(8120) >= 1
triggerall = Anim = 3201
trigger1 = AnimElem = 58
ID = 8120

[State 3201, removeEX]
type = RemoveExplod
triggerall = NumExplod(8121) >= 1
triggerall = Anim = 3201
trigger1 = AnimElem = 58
ID = 8121

[State 3201]
type = AssertSpecial
trigger1 = 1
flag = noFG

; dragon v2 (helper)
[Statedef 8021]
type    = A
movetype= A
physics = S
juggle  = 1
poweradd = 10
ctrl = 0
anim = 8020
velset = 0,0

[State 8021, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 8021]
type = Explod
triggerall = Anim = 8020
trigger1 = AnimElem = 1
anim = 8023
ID = 8023
pos = 10,40
postype = p1
sprpriority = -1
ownpal = 1
removeongethit = 1
removetime = 100
bindtime = -1

[State 8021]
type = VelSet
trigger1 = AnimElem = 7
y = -10

[State 8021]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
priority = 7
attr = S, HP
damage = ifelse(parent,var(9) = 0,120,240),ifelse(parent,var(9) = 0,36,72)
getpower = 0
givepower = 0
animtype = up
guardflag = MA
pausetime = 0,5
ground.type = high                
ground.slidetime = 0             
ground.hittime  = 4             
ground.velocity = 0,-30
sparkno = S8061
sparkxy =  -50,-90
hitsound = s1,5
guardsound = s6,0
air.type = Low
air.velocity = 0,-30
airguard.velocity = -3.5,0
fall = 1 
fall.recover = 0
envshake.time = 20
envshake.freq = 99   
envshake.ampl = 10  
envshake.phase = 99

[State 8021]
type = HitDef
trigger1 = AnimElem = 6
priority = 7
attr = S, HP
damage = ifelse(parent,var(9) = 0,180,360),ifelse(parent,var(9) = 0,36,72)
getpower = 0
givepower = 0
animtype = up
guardflag = MA
pausetime = 0,1
ground.type = high               
ground.slidetime = 0             
ground.hittime  = 4             
ground.velocity = 0,-30
sparkno = S8061
sparkxy = -50,-300
hitsound = s1,4
guardsound = s6,0
air.type = Low
air.velocity = -2,-30
airguard.velocity = -3.5,0
envshake.time = 40
envshake.freq = 99   
envshake.ampl = 20  
envshake.phase = 99
fall = 1 
fall.recover = 0
fall.damage = 60
fall.envshake.time = 30
fall.envshake.freq = 99   
fall.envshake.ampl = 30  
fall.envshake.phase = 99

[State 8021]
type = BGPalFx
trigger1 = P2Life = 0
add = 255,255,255
sinadd = 300,300,300,60
time = 40
ignorehitpause = 1
persistent = 0

[State 8021]
type = DestroySelf
trigger1 = Time = 130

;---------------------------------------------------------------------------
; Rozan ShoRyuHa (horizontal, w/o cloth)
[Statedef 3300]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
anim = 3100
ctrl = 0
poweradd = -3000

[State 3300]
type = PlaySnd
trigger1 = Animelem = 2
value = 5,2

[State 3300, cloth sound]
type = PlaySnd
trigger1 = Animelem = 12
value = 4,3

[State 3300, Voice]
type = PlaySnd
trigger1 = Animelem = 1
value = 12,1
channel = 0

[State 3300]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3300]
type = superpause
trigger1 = Animelem = 2
time = 91
darken = 0
anim = s7009
pos = 0, -80
movetime = 91

[State 3300]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3300, luce]
type = Explod
trigger1 = AnimElem = 3
anim = 7030
ID = 7030
pos = 0,5
postype = p1
supermove = 1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
scale = .5,.5

[State 3300, luce]
type = Explod
trigger1 = AnimElem = 3
anim = 7031
ID = 7031
pos = 0,6
postype = p1
supermove = 1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
scale = .5,.5
vfacing = -1

[State 3300, polvere]
type = Explod
trigger1 = AnimElem = 4
anim = 7010
ID = 7010
pos = 0,0
postype = p1
supermove = 1
sprpriority = -3
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1

[State 3300, cosmo]
type = Explod
trigger1 = AnimElem = 12
anim = 905
ID = 905
pos = 15,5
postype = p1
supermove = 1
sprpriority = -2
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3300, removeEX]
type = RemoveExplod
triggerall = NumExplod(3006) >= 1
trigger1 = AnimElem = 16
ID = 3006

[State 3300, armor]
type = Explod
trigger1 = AnimElem = 17
anim = 3110
ID = 3110
shadow = -1
pos = 0,0
postype = p1
supermove = 1
sprpriority = -5
supermove = 1
ignorehitpause = 1
bindtime = 1
ownpal = 1
removetime = -1
removeongethit = 1

[State 3300]
type = ChangeState
trigger1 = AnimTime = 0
value = 3303
ctrl = 0

; charge
[Statedef 3303]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
anim = 3300
ctrl = 0

[State 3303]
type = SuperPause
trigger1 = Time = 0
time = 240
darken = 1
anim = -1
movetime = 240

[State 3303]
type = PlaySnd
trigger1 = Time = 0
value = 14,2

[State 3303]
type = PlaySnd
triggerall = Anim = 3300
trigger1 = AnimElem = 1
value = 13,10
channel = 0

[State 3303]
type = Explod
triggerall = Anim = 3300
trigger1 = AnimElem = 1
anim = 8042
ID = 8042
pos = -45,-170
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 120

[State 3303]
type = Explod
triggerall = Anim = 3300
triggerall = NumExplod(8110) = 0
trigger1 = AnimElem = 1
pos = -320,0
anim = 8110
ID = 8110
postype = right
sprpriority = -15
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 0
removetime = 400

[State 3303]
type = Explod
triggerall = Anim = 3300
triggerall = NumExplod(8160) = 0
trigger1 = AnimElem = 1
pos = 0,0
anim = 8160
ID = 8160
postype = back
sprpriority = -14
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 0
removetime = 400
scale = 1.1,1.1

[State 3303]
type = ChangeAnim
triggerall = Anim = 3300
trigger1 = Time = 120
value = 3303

[State 3303]
type = EnvShake
triggerall = Anim = 3303
trigger1 = AnimElem = 1
time = 120

[State 3303, removeEX]
type = RemoveExplod
triggerall = NumExplod(903) >= 1
trigger1 = time = 141
ID = 903

[State 3303]
type = PlaySnd
triggerall = Anim = 3303
trigger1 = (Time % 70) = 0
value = 2,1

[State 3303, shine]
type = PalFX
triggerall = Anim = 3303
trigger1 = (Time % 20) = 0
time = 15
add = 0,0,0
sinadd = 100,200,100,3

[State 3303, polvere]
type = Explod
triggerall = Anim = 3303
trigger1 = AnimElem = 1
pos = 0,-1
anim = 7010
ID = 7010
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
removeongethit = 1
removetime = 120

[State 3303, polvere]
type = Explod
triggerall = Anim = 3303
trigger1 = AnimElem = 1
pos = -3,2
anim = 7020
ID = 7020
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
removeongethit = 1
removetime = 120
scale = .9, .9

[State 3303, polvere]
type = Explod
triggerall = Anim = 3303
trigger1 = AnimElem = 1
pos = -1,5
anim = 7030
ID = 7030
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
removeongethit = 1
removetime = 120
scale = .5,.5

[State 3303, polvere]
type = Explod
triggerall = Anim = 3303
trigger1 = AnimElem = 1
pos = -1,6
anim = 7031
ID = 7031
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
removeongethit = 1
removetime = 120
scale = .5,.5
vfacing = -1

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 150
ID = 8021
anim = 8021
pos = -250,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = -225,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 100
ID = 8021
anim = 8021
pos = -200,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = -175,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 150
ID = 8021
anim = 8021
pos = -150,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = -125,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 100
ID = 8021
anim = 8021
pos = -100,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = -75,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 150
ID = 8021
anim = 8021
pos = -50,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = -25,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 100
ID = 8021
anim = 8021
pos = 0,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = 25,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 150
ID = 8021
anim = 8021
pos = 50,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = 75,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 100
ID = 8021
anim = 8021
pos = 100,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = 125,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 150
ID = 8021
anim = 8021
pos = 150,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = 175,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 100
ID = 8021
anim = 8021
pos = 200,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 125
ID = 8021
anim = 8021
pos = 225,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, draghetto]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 150
ID = 8021
anim = 8021
pos = 250,50
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 130
removeongethit = 1
scale = .7,.7

[State 3303, dragon zoom in]
type = Explod
triggerall = Anim = 3303
trigger1 = AnimElem = 1
anim = 6002
ID = 6002
sprpriority = -5
postype = p1
pos = -9,15
bindtime = 1
supermove = 1
ownpal = 1
removeongethit = 1
removetime = 21

[State 3303, dragon]
type = Explod
triggerall = Anim = 3303
trigger1 = Time = 141
anim = 6000
ID = 6000
sprpriority = -5
postype = p1
pos = -9,-15
bindtime = -1
removetime = 99
removeongethit = 1
supermove = 1
ownpal = 1
scale = .6,.6

[State 3303, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3303]
type = PlaySnd
trigger1 = Time = 141
value = 14,4

[State 3303]
type = PlaySnd
trigger1 = Time = 220
value = 200,3
channel = 0

[State 3303]
type = ChangeState
trigger1 = Time = 240
value = 3301
ctrl = 0

; attack
[Statedef 3301]
type = S
movetype = A
physics = S
anim = 3301
poweradd = 0
juggle = 5
ctrl = 0
velset = 0,0

[State 3301, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3301, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = Time = 0
ID = 7010

[State 3301, removeEX]
type = RemoveExplod
triggerall = NumExplod(7020) >= 1
trigger1 = Time = 0
ID = 7020

[State 3301, removeEX]
type = RemoveExplod
triggerall = NumExplod(7030) >= 1
trigger1 = Time = 0
ID = 7030

[State 3301, removeEX]
type = RemoveExplod
triggerall = NumExplod(7030) >= 1
trigger1 = Time = 0
ID = 7031

[State 3301, removeEX]
type = RemoveExplod
triggerall = NumExplod(6000) >= 1
trigger1 = Time = 0
ID = 6000

[State 3301, removeEX]
type = RemoveExplod
triggerall = NumExplod(8145) >= 1
trigger1 = Time = 0
ID = 8145

[State 3301, removeEX]
type = RemoveExplod
triggerall = NumExplod(8160) >= 1
trigger1 = time = 5
ID = 8160

[State 3301, removeEX]
type = RemoveExplod
triggerall = NumExplod(905) >= 1
trigger1 = Time = 0
ID = 905

[State 3301]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3301, vortice]
type = Explod
trigger1 = Time = 0
ID = 8051
anim = 8051
pos = -20,-75
postype = p1
sprpriority = 5
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 19
removeongethit = 1

[State 3301, cosmo]
type = Explod
trigger1 = Time = 0
anim = 3316
ID = 3316
pos = 10,1
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .9, 1
removetime = 200

[State 3301]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,2

[State 3301, polvere]
type = Explod
trigger1 = AnimElem = 5
anim = 7010
ID = 7010
pos = 8,-1
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

[State 3301, lucella]
type = Explod
trigger1 = AnimElem = 5
anim = 7063
ID = 7063
pos = 26,12
postype = p1
sprpriority = 3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

[State 3301, Lampi]
type = Explod
trigger1 = AnimElem = 4
anim = 7030
ID = 7030
pos = 15,5
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .5,.5

[State 3301, Lampi]
type = Explod
trigger1 = AnimElem = 4
anim = 7031
ID = 7031
pos = 15,6
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .5,.5
vfacing = -1

[State 3301, sfondo orizzontale]
type = Explod
triggerall = NumExplod(8130) = 0
trigger1 = Time = 0
pos = 0,-50
anim = 8130
ID = 8130
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 400
scale = 1.5,1.5

[State 3301, striscie orizzontali]
type = Explod
triggerall = NumExplod(8131) = 0
trigger1 = Time = 0
pos = -10,0
anim = 8131
ID = 8131
postype = back
sprpriority = -6
ownpal = 1
bindtime = -1
supermove = 1
removetime = 400
scale = 1.2, 1.2

[State 3301]
type = helper
trigger1 = AnimElem = 5
stateno = 8031
ID = 8031
postype = p1
pos = 15,-10
helpertype = normal
keyctrl = 0
ownpal = 1
sprpriority = -2

[State 3301]
type = ChangeState
trigger1 = Time = 125
value = 3302
ctrl = 0

; end
[Statedef 3302]
type = S
movetype = A
physics = S
anim = 3302
poweradd = 0
juggle = 5
ctrl = 0
velset = 0,0

[State 3302, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3302]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 3302, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 3302, removeEX]
type = RemoveExplod
triggerall = NumExplod(7063) >= 1
trigger1 = time = 0
ID = 7063

[State 3302, removeEX]
type = RemoveExplod
triggerall = NumExplod(3316) >= 1
trigger1 = time = 0
ID = 3316

[State 3302, removeEX]
type = RemoveExplod
triggerall = NumExplod(8110) >= 1
trigger1 = time = 5
ID = 8110

[State 3302, removeEX]
type = RemoveExplod
triggerall = NumExplod(8130) >= 1
trigger1 = time = 5
ID = 8130

[State 3302, removeEX]
type = RemoveExplod
triggerall = NumExplod(8131) >= 1
trigger1 = time = 5
ID = 8131

[State 3302, cosmo]
type = Explod
trigger1 = time = 0
anim = 3315
ID = 3315
pos = 10,1
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .9, 1

[State 3302]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 192,255,192
add = 5,5,5
invertall = 0

[State 3302]
type = ChangeState
trigger1 = AnimTime = 0
value = 3304
ctrl = 0

; cloth on 1
[Statedef 3304]
type    = S
physics = S
ctrl = 0
anim = 3305

[State 3304, SuperPause]
type = SuperPause
triggerall = prevstateno != 3302
triggerall = Time = 0
trigger1 = Enemy,movetype != H
time = 92
Movetime = 92
darken = 1
Anim = -1

[State 3304, SuperPause]
type = SuperPause
triggerall = prevstateno = 3302
trigger1 = Time = 0
time = 92
Movetime = 92
darken = 1
Anim = -1

[State 3304]
type = BGPalfx
trigger1 = time = 0
trigger1 = 1
ignorehitpause = 1
time = 50
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3304, lampi]
type = BGPalfx
trigger1 = AnimElem = 4
ignorehitpause = 1
time = 25
sinadd = 90,150,90,8
add = 5,5,5
invertall = 0

[State 3304]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3304, removeEX]
type = RemoveExplod
triggerall = NumExplod(3110) >= 1
trigger1 = AnimElem = 4
ID = 3110

[State 3304, scia luminosa]
type = AfterImage
trigger1 = Animelem = 1
trigger1 = time = 0
time = 50
PalContrast =  128,128,128
PalBright = 5,5,5
trans = add

[State 3304, yaaha]
type = PlaySnd
trigger1 = Animelem = 1
value = 12,1
channel = 0

[State 3304, armor cloth]
type = PlaySnd
trigger1 = Animelem = 3
value = 4,5

[State -2, VarSet]
type = VarSet
trigger1 = var(8) = 1
var(8) = 0

[State -2, VarSet]
type = VarSet
trigger1 = var(9) = 1
var(9) = 0

[State 3304]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; dragon h2 (helper)
[Statedef 8031]
type    = A
movetype= A
physics = S
juggle  = 1
poweradd = 10
ctrl = 0
anim = 8030
velset = 0,0
sprpriority = -2

[State 8031]
type = AfterImage
trigger1 = time = 4
time = 400
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 8031]
type = PlaySnd
trigger1 = Time = 1
value = 700,1

[State 8031, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8031]
type = VelSet
trigger1 = time >= 25
x = 12

[State 8031, cosmo]
type = Explod
trigger1 = time = 0
ID = 8033
anim = 8033
pos = 5,-80
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
removetime = 99

[State 8031]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
priority = 5
attr = S, HA
damage   = ifelse(parent,var(9) = 0,90,180),ifelse(parent,var(9) = 0,27,54)
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,5
sparkno = S8060
sparkxy =  -10,-80
hitsound   = s1,4
guardsound = s6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 23
ground.velocity = -15, -8
air.type = Low
air.velocity = -15,-8
fall = 1 
fall.recover = 0
envshake.time =  30
envshake.freq = 99   
envshake.ampl = 25  
envshake.phase = 99
fall.damage = 60             
fall.envshake.ampl = 12      
fall.envshake.freq = 178
fall.envshake.time = 25
p2stateno = 1029
Palfx.time          = 25
Palfx.add           = 50,50,50
Palfx.mul           = 150,250,150
Palfx.sinadd        = -112,-122,-112,3

[State 8031, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 8031]
type = DestroySelf
trigger1 = Time = 100

;---------------------------------------------------------------------------
; Rozan RyuHiSho
[Statedef 3410]
type    = S
movetype= A
physics = S
anim = 3410
juggle  = 2
poweradd = -1000
ctrl = 0
velset = 0,0

[State 3410, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3410, SP]
type = SuperPause
trigger1 = Time = 0
anim = s70091
pos = 20,-80
Time = 110
movetime = 110
darken = 1
sound = s5,2

[State 3410, SND]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,0

[State 3410, dragon]
type = Explod
trigger1 = AnimElem = 1
ID = 6003
anim = 6003
pos = 0,-70
postype = p1
sprpriority = -5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 115
removeongethit = 1

[State 3410, big light]
type = Explod
trigger1 = Time = 22
pos = -1,5
anim = 7030
ID = 7030
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 1
supermove = 1
removeongethit = 1
removetime = 88
scale = .5,.5

[State 3410, big light]
type = Explod
trigger1 = Time = 22
pos = -1,6
anim = 7031
ID = 7031
sprpriority = -4
supermovetime = 88
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 1
supermove = 1
removeongethit = 1
removetime = 88
scale = .5,.5
vfacing = -1

[State 3410, flames]
type = Explod
trigger1 = Time = 22
ID = 8041
anim = 8041
pos = -35,-140
postype = p1
sprpriority = 2
supermovetime = 88
ignorehitpause = 1
supermove = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 88
removeongethit = 1
scale = 0.7,0.7

[State 3410, EnvCol]
type = EnvColor
trigger1 = Time = 22
value = 90,250,0
under = 0
time = 5

[State 3410, SND]
type = PlaySnd
trigger1 = Time = 22
value = 14,1

[State 3410, Hit]
type = HitDef
triggerall = prevstateno != 1401
trigger1 = Time = 22
attr = S, NA
damage = 25,5
getpower = 0
givepower = 0
priority = 7
animtype = Medium
sparkno = S8060
sparkxy =  -30,-60
hitsound = S4,2
guardsound = s6,0
pausetime = 0,10
ground.hittime = 10
ground.type = Low
ground.slidetime = 10
ground.velocity = -25,0
air.velocity = -25,-3
kill = 0

[State 3410, SP]
type = SuperPause
triggerall = MoveHit
trigger1 = (Time >= 23) && (Time < 50)
anim = -1
time = 0
movetime = 0
darken = 0

[State 3410, Darken]
type = AllPalFX
triggerall = MoveHit
trigger1 = Time = 22
time = 40
add = -25,-25,-25

[State 3410, SP]
type = SuperPause
triggerall = MoveHit
trigger1 = Time = 50
anim = -1
time = 40
movetime = 40
darken = 1

[State 3410, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 13,4
channel = 0

[State 3410, nuvole rosse]
type = Explod
triggerall = NumExplod(8161) = 0
trigger1 = Time = 0
pos = 0,0
anim = 8161
ID = 8161
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 110
scale = 1.5, 1.5

[State 3410, CS]
type = ChangeState
trigger1 = Time = 110
value = 3411
ctrl = 0

; attack
[Statedef 3411]
type    = S
movetype= A
physics = S
anim = 3411
ctrl = 0
velset = 0,0

[State 3411, Cosmo]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 3412
sprpriority = -5
ignorehitpause = 1
ownpal = 1
persistent = 0
bindtime = -1
removeongethit = 1
supermove = 1

[State 3411, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 13,3
channel = 0

[State 3411, Vel]
type = VelAdd
trigger1 = AnimElem = 6
x = 30

[State 3411, Exp]
type = Explod
trigger1 = AnimElem = 7
pos = 38,8
anim = 7088
sprpriority = 5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 3411, Exp]
type = Explod
trigger1 = AnimElem = 7
pos = 115,-70
anim = 8043
sprpriority = -5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1
bindtime = -1
removetime = 30
scale = 0.7,0.7

[State 3411, sfondo orizzontale]
type = Explod
triggerall = NumExplod(8130) = 0
trigger1 = Time = 0
pos = 0,-50
anim = 8130
ID = 8130
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 60
scale = 1.5,1.5

[State 3411, striscie orizzontali]
type = Explod
triggerall = NumExplod(8131) = 0
trigger1 = Time = 0
pos = -10,0
anim = 8131
ID = 8131
postype = back
sprpriority = -6
ownpal = 1
bindtime = -1
supermove = 1
removetime = 60
scale = 1.2, 1.2

[State 3411]
type = HitDef
trigger1 = AnimElem = 7
priority = 5
attr = S, HA
damage   = 150,20
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,1
sparkno = S8044
sparkxy =  -75,-70
hitsound   = S14,5
guardsound = s6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15, -7
air.type = Low
air.velocity = -15,7
fall = 1
fall.recover = 0
envshake.time =  20
envshake.freq = 99
envshake.ampl = 10
envshake.phase = 99
fall.damage = 50
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
p2stateno = 1029
Palfx.time = 25
Palfx.add = 50,150,50
Palfx.mul = 150,250,150
Palfx.sinadd = -112,-122,-112,3

[State 3411, Exp]
type = Explod
trigger1 = AnimElem = 7
pos = 28,8
anim = 7088
sprpriority = 5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 3411, NoHit]
type = NotHitBy
trigger1 = (AnimElem >= 7) && (AnimElem <= 13)
value = SCA

[State 3411, Dust]
type = Explod
trigger1 = animelem = 10
anim = F120
ontop = 0
sprpriority = -5
pos = 100,0
postype = p1
random = 0,0

[State 3411, Pos]
type = PosAdd
triggerall = !MoveHit
trigger1 = AnimElem = 13, = 20
x = 100

[State 3411, CS]
type = ChangeState
triggerall = !MoveHit
trigger1 = AnimElem = 13, = 20
value = 0
ctrl = 1

[State 3411, Pos]
type = PosAdd
trigger1 = AnimElem = 14
x = 100

[State 3411, SND]
type = PlaySnd
trigger1 = AnimElem = 18
value = 14,0

[State 3411, Turn]
type = Turn
trigger1 = AnimElem = 19

[State 3411, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rozan RyuHiSho (w/o cloth)
[Statedef 3400]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
anim = 3000
ctrl = 0
poweradd = -3000

[State 3400]
type = PlaySnd
trigger1 = Animelem = 2
value = 5,2

[State 3400, cloth sound]
type = PlaySnd
trigger1 = Animelem = 12
value = 4,3

[State 3400, Voice]
type = PlaySnd
trigger1 = Animelem = 1
value = 12,1
channel = 0

[State 3400]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3400]
type = superpause
trigger1 = Animelem = 2
time = 91
darken = 0
anim = s7009
pos = 0, -80
movetime = 91

[State 3400]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3400, luce]
type = Explod
trigger1 = AnimElem = 3
anim = 7030
ID = 7030
pos = 0,5
postype = p1
supermove = 1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
scale = .5,.5

[State 3400, luce]
type = Explod
trigger1 = AnimElem = 3
anim = 7031
ID = 7031
pos = 0,6
postype = p1
supermove = 1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
scale = .5,.5
vfacing = -1

[State 3400, polvere]
type = Explod
trigger1 = AnimElem = 4
anim = 7010
ID = 7010
pos = 0,0
postype = p1
supermove = 1
sprpriority = -3
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1

[State 3400, cosmo]
type = Explod
trigger1 = AnimElem = 12
anim = 905
ID = 905
pos = 15,5
postype = p1
supermove = 1
sprpriority = -2
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3400, removeEX]
type = RemoveExplod
triggerall = NumExplod(3006) >= 1
trigger1 = AnimElem = 16
ID = 3006

[State 3400, armor]
type = Explod
trigger1 = AnimElem = 17
anim = 3010
ID = 3010
shadow = -1
pos = 0,0
postype = p1
supermove = 1
sprpriority = -5
supermove = 1
ignorehitpause = 1
bindtime = 1
ownpal = 1
removetime = -1
removeongethit = 1

[State 3400]
type = ChangeState
trigger1 = AnimTime = 0
value = 3401
ctrl = 0

; charge
[Statedef 3401]
type    = S
movetype= A
physics = S
anim = 3400
juggle  = 2
ctrl = 0
velset = 0,0

[State 3401, NoHit]
type = NotHitBy
trigger1 = time >= 0
value = SCA

[State 3401, SP]
type = SuperPause
trigger1 = Time = 0
anim = -1
time = 462
movetime = 462
darken = 1

[State 3401, EnvCol]
type = EnvColor
trigger1 = Time = 10
trigger2 = Time = 45
trigger3 = Time = 90
trigger4 = Time = 150
trigger5 = Time = 244
value = 90,250,0
under = 0
time = 4

[State 3401, SND]
type = PlaySnd
trigger1 = Time = 10
trigger2 = Time = 45
trigger3 = Time = 90
trigger4 = Time = 150
trigger5 = Time = 244
value = 9,1

[State 3401, SND]
type = PlaySnd
trigger1 = Time = 10
trigger2 = Time = 45
trigger3 = Time = 90
trigger4 = Time = 150
trigger5 = Time = 244
value = 14,3

[State 3401, lightning]
type = Explod
trigger1 = Time = 11
anim = 8040
ID = 8040
pos = 30,20
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 3401, lightning]
type = Explod
trigger1 = Time = 46
anim = 8040
ID = 8040
pos = 15,20
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 3401, lightning]
type = Explod
trigger1 = Time = 91
anim = 8040
ID = 8040
pos = 0,20
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 3401, lightning]
type = Explod
trigger1 = Time = 151
anim = 8040
ID = 8040
pos = 30,20
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 3401, lightning]
type = Explod
trigger1 = Time = 245
anim = 8040
ID = 8040
pos = 15,20
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 3401, big light]
type = Explod
trigger1 = AnimElem = 1
pos = -1,5
anim = 7030
ID = 7030
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 1
supermove = 1
removeongethit = 1
removetime = 302
scale = .5,.5

[State 3401, big light]
type = Explod
trigger1 = AnimElem = 1
pos = -1,6
anim = 7031
ID = 7031
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 1
supermove = 1
removeongethit = 1
removetime = 302
scale = .5,.5
vfacing = -1

[State 3401, dragon]
type = Explod
trigger1 = Time = 51
anim = 6003
pos = 0,-70
ID = 6003
postype = p1
sprpriority = -5
supermove = 1
supermovetime = 411
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removetime = 411
removeongethit = 1
;scale = 0.5,0.5

[State 3401, flames]
type = Explod
trigger1 = AnimElem = 4
ID = 8041
anim = 8041
pos = -35,-140
postype = p1
sprpriority = 3
supermovetime = 411
ignorehitpause = 1
supermove = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 411
removeongethit = 1
scale = 0.7,0.7

[State 3401, Hit]
type = HitDef
triggerall = prevstateno != 1401
trigger1 = AnimElem = 10
attr = S, NA
damage = 25
getpower = 0
givepower = 0
priority = 7
animtype = Medium
sparkno = S8060
sparkxy =  -30,-60
hitsound = S4,2
guardsound = S6,0
pausetime = 0,20
ground.hittime = 10
ground.type = Low
ground.slidetime = 10
ground.velocity = -25,0
air.velocity = -25,-3
kill = 0

[State 3401]
type = EnvShake
trigger1 = AnimElem = 52
time = 245

[State 3401, polvere]
type = Explod
trigger1 = AnimElem = 52
ID = 7010
anim = 7010
pos = 0,0
postype = p1
sprpriority = -2
supermovetime = 160
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removetime = 160
removeongethit = 1

[State 3401, charge]
type = Explod
trigger1 = AnimElem = 52
pos = -3,2
anim = 7020
ID = 7020
sprpriority = 3
supermovetime = 160
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 1
supermove = 1
removeongethit = 1
removetime = 160
scale = .9, .9

[State 3401, Darken]
type = AllPalFX
triggerall = MoveHit
trigger1 = Time = 50
time = 40
add = -25,-25,-25

[State 3401, SP]
type = SuperPause
triggerall = MoveHit
trigger1 = (Time >= 51) && (Time < 90)
anim = -1
time = 0
movetime = 0
darken = 0

[State 3401, SP]
type = SuperPause
triggerall = MoveHit
trigger1 = Time = 90
anim = -1
time = 372
movetime = 372
darken = 1

[State 3401, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 14,3
channel = 0

[State 3401, Voice]
type = PlaySnd
trigger1 = Time = 45
value = 13,11
channel = 0

[State 3401, Mouth]
type = Explod
trigger1 = Time = 45
anim = 1962
ID = 1962
pos = -11,0
postype = p1
supermove = 1
bindtime = 422
sprpriority = 2
removetime = 422
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3401, Voice]
type = PlaySnd
trigger1 = Time = 300
value = 13,12
channel = 0

[State 3401]
type = Explod
triggerall = NumExplod(8110) = 0
trigger1 = Time = 0
pos = 0,0
anim = 8110
ID = 8110
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 0
removetime = 462

[State 3401]
type = Explod
triggerall = NumExplod(8160) = 0
trigger1 = Time = 0
pos = 0,0
anim = 8160
ID = 8160
postype = back
sprpriority = -6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 0
removetime = 462
scale = 1.1,1.1

[State 3401, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 3402
ctrl = 0

; attack
[Statedef 3402]
type    = S
movetype= A
physics = S
anim = 3401
ctrl = 0
velset = 0,0

[State 3402, removeEX]
type = RemoveExplod
triggerall = NumExplod(8110) >= 1
trigger1 = time = 5
ID = 8110

[State 3402, removeEX]
type = RemoveExplod
triggerall = NumExplod(8160) >= 1
trigger1 = time = 5
ID = 8160

[State 3402, Cosmo]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 3412
sprpriority = -5
ignorehitpause = 1
ownpal = 1
persistent = 0
bindtime = -1
removeongethit = 1
supermove = 1

[State 3402, Vel]
type = VelAdd
trigger1 = AnimElem = 6
x = 30

[State 3402, Exp]
type = Explod
trigger1 = AnimElem = 7
pos = 38,8
anim = 7088
sprpriority = 5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 3402, Exp]
type = Explod
trigger1 = AnimElem = 7
pos = 115,-70
anim = 8043
sprpriority = -5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1
bindtime = -1
removetime = 30

[State 3402, sfondo orizzontale]
type = Explod
triggerall = NumExplod(8130) = 0
trigger1 = Time = 0
pos = 0,-50
anim = 8130
ID = 8130
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 60
scale = 1.5,1.5

[State 3402, striscie orizzontali]
type = Explod
triggerall = NumExplod(8131) = 0
trigger1 = Time = 0
pos = -10,0
anim = 8131
ID = 8131
postype = back
sprpriority = -6
ownpal = 1
bindtime = -1
supermove = 1
removetime = 60
scale = 1.2, 1.2

[State 3402]
type = HitDef
trigger1 = AnimElem = 7
priority = 5
attr = S, HA
damage   = 550,180
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 5,50
sparkno = S8060
sparkxy =  -30,-75
hitsound   = S14,5
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 15
ground.velocity = -15, -3
air.type = High
air.velocity = 0,0
fall = 1
fall.recover = 0
envshake.time =  10
envshake.freq = 10
envshake.ampl = 10
envshake.phase = 10
fall.damage = 50
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 25
p1stateno = 3403
p2stateno = 3404

[State 3402, Exp]
type = Explod
trigger1 = AnimElem = 7
pos = 28,8
anim = 7088
sprpriority = 5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 3402, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3402, Dust]
type = Explod
trigger1 = animelem = 10
anim = F120
ontop = 0
sprpriority = -5
pos = 100,0
postype = p1
random = 0,0

[State 3402, CS]
type = ChangeState
triggerall = !MoveHit
trigger1 = AnimElem = 13, = 20
value = 3001
ctrl = 1

[State 3402, SND]
type = PlaySnd
trigger1 = AnimElem = 18
value = 14,0

[State 3402, Turn]
type = Turn
trigger1 = AnimElem = 19

[State 3402, ChangeAnim]
type = ChangeAnim
triggerall = movehit = 1
trigger1 = time = 0
value = 5012

[State 3402]
type = ChangeState
triggerall = Anim = 3401
triggerall = movehit != 1
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

; p1 state
[Statedef 3403]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 3402
sprpriority = 2

[State 3403, removeEX]
type = RemoveExplod
triggerall = NumExplod(8130) >= 1
trigger1 = time = 5
ID = 8130

[State 3403, removeEX]
type = RemoveExplod
triggerall = NumExplod(8131) >= 1
trigger1 = time = 5
ID = 8131

[State 3403, VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3403, BindtoTarget]
type = BindtoTarget
trigger1 = Time = 0
pos = 125,0,Foot

[State 3403, superpause]
type = SuperPause
trigger1 = AnimElem = 1
anim = -1
time = 100
movetime = 100
darken = 1

[State 3403, testa di drago]
type = Explod
triggerall = NumExplod(8170) = 0
trigger1 = Time = 0
pos = 50,50
anim = 8170
ID = 8170
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100
scale = 0.8,0.8

[State 3403, spark]
type = Explod
trigger1 = Time = 1
anim = 7060
ID = 7060
pos = 140,75
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 150
persistent = 0
removeongethit = 0
removetime = 150
scale = 1.5,1.5

[State 3403, lightning]
type = Explod
trigger1 = Time = 31
anim = 8040
ID = 8040
pos = 15,20
postype = p2
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 3403, lightning]
type = Explod
trigger1 = Time = 51
anim = 8040
ID = 8040
pos = 10,20
postype = p2
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 3403, lightning]
type = Explod
trigger1 = Time = 61
anim = 8040
ID = 8040
pos = -20,20
postype = p2
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 3403, flash]
type = EnvColor
trigger1 = Time = 30
trigger2 = Time = 50
trigger3 = Time = 60
value = 55,255,55
under = 0
time = 4

[State 3403, SND]
type = PlaySnd
trigger1 = Time = 30
trigger2 = Time = 50
trigger3 = Time = 64
value = 14,3

[State 3403]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

; p2 state
[Statedef 3404]
type = S
movetype= H
physics = N
velset = 0,0
SprPriority = -2

[State 3404, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3404, TargetFacing]
type = TargetFacing
trigger1 = Time = 0
value = 1
ID = 1

[State 3404, ChangeState]
type = ChangeState
trigger1 = Time = 0
value = 1025

;---------------------------------------------------------------------------
; Rozan RyuHiSho + Rozan ShoRyuHa
[Statedef 3420]
type    = S
movetype= A
physics = S
sprpriority = 8
anim = 3420
juggle  = 2
ctrl = 0
velset = 0,0
poweradd = -3000

[State 3420, VelAdd]
type = ChangeAnim
triggerall = var(22) = 0
trigger1 = Time = 0
value = 3420
elem = 30

[State 3420, VelAdd]
type = TargetVelAdd
trigger1 = Time < 7
x = -3

[State 3420, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3420, SP]
type = SuperPause
trigger1 = Time = 0
anim = -1
time = 395
movetime = 395
darken = 1

[State 3420, athena]
type = Explod
triggerall = var(22) = 1
trigger1 = time = 0
anim = 2020
pos = 20,0
postype = p1
supermove = 1
sprpriority = 7
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
removetime = 210

[State 3420, black]
type = Explod
triggerall = var(22) = 1
trigger1 = time = 0
anim = 8190
pos = 0,0
postype = p2
supermove = 1
sprpriority = 5
ignorehitpause = 1
bindtime = 1
ownpal = 1
removeongethit = 0
scale = 10,10
removetime = 210

[State 3420, nike]
type = Explod
triggerall = var(22) = 1
trigger1 = time = 155
anim = 2021
pos = -3,-60
postype = p2
supermove = 1
sprpriority = 10
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
scale = 1.8,2
removeongethit = 1

[State 3420, goldlamp]
type = Explod
triggerall = var(22) = 1
trigger1 = time = 150
anim = 7130
ID = 7130
pos = -3,-60
postype = p2
supermove = 1
sprpriority = 10
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
scale = .5,.5

[State 3420, goldlamp]
type = Explod
triggerall = var(22) = 1
trigger1 = time = 150
anim = 7131
ID = 7131
pos = -3,-61
postype = p2
supermove = 1
sprpriority = 10
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
scale = .5,.5
vfacing = -1

[State 3420, EnvCol2]
type = EnvColor
triggerall = var(22) = 1
trigger1 = Time = 210
value = 200,200,10
under = 0
time = 5

[State 3420]
type = EnvShake
trigger1 = AnimElem = 30
time = 245

[State 3420, charge]
type = Explod
trigger1 = AnimElem = 30
pos = -3,2
anim = 7020
ID = 7020
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 1
supermove = 1
removeongethit = 1
removetime = 150
scale = .9, .9

[State 3420, dragon]
type = Explod
trigger1 = AnimElem = 33
anim = 6003
pos = 0,-70
ID = 6003
postype = p1
sprpriority = -5
supermove = 1
supermovetime = 146
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removetime = 146
removeongethit = 1
;scale = 0.5,0.5

[State 3420, flames]
type = Explod
trigger1 = AnimElem = 9
ID = 8041
anim = 8041
pos = -35,-140
postype = p1
sprpriority = 9
supermovetime = 295
ignorehitpause = 1
supermove = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 145
removeongethit = 1
scale = 0.7,0.7

[State 3420, polvere]
type = Explod
trigger1 = AnimElem = 30
ID = 7010
anim = 7010
pos = 0,0
postype = p1
sprpriority = 7
supermovetime = 150
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removetime = 150
removeongethit = 1

[State 3420, Darken]
type = posadd
trigger1 = time = 246
X = -15

[State 3420, SP]
type = SuperPause
triggerall = MoveHit
trigger1 = (Time >= 51) && (Time < 90)
anim = -1
time = 0
movetime = 0
darken = 0

[State 3420, Darken]
type = AllPalFX
triggerall = MoveHit
trigger1 = Time = 50
time = 40
add = -25,-25,-25

[State 3420, SP]
type = SuperPause
triggerall = MoveHit
trigger1 = Time = 90
anim = -1
time = 160
movetime = 160
darken = 1

;[State 3420, Effect]
;type = PlaySnd
;trigger1 = Time = 395
;value = 14,6
;channel = 0

[State 3420, Voice]
type = PlaySnd
trigger1 = AnimElem = 33
value = 13,13
channel = 0

[State 3420, Voice]
type = PlaySnd
triggerall = var(22) = 1
trigger1 = AnimElem = 1
value = 900,2
channel = 0

[State 3420, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 3421
ctrl = 0

; attack
[Statedef 3421]
type    = S
movetype= A
physics = S
anim = 3421
ctrl = 0
velset = 0,0

[State 3421, Cosmo]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 3412
sprpriority = -5
ignorehitpause = 1
ownpal = 1
persistent = 0
bindtime = -1
removeongethit = 1
supermove = 1

[State 3421, Vel]
type = VelAdd
trigger1 = AnimElem = 6
x = 30

[State 3421, Exp]
type = Explod
trigger1 = AnimElem = 7
pos = 38,8
anim = 7088
sprpriority = 5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 3421, Exp]
type = Explod
trigger1 = AnimElem = 7
pos = 115,-70
anim = 8043
sprpriority = -5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1
bindtime = -1
removetime = 30

[State 3421, sfondo orizzontale dorato]
type = Explod
triggerall = NumExplod(8230) = 0
trigger1 = Time = 0
pos = 0,-50
anim = 8230
ID = 8230
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 60
scale = 1.5,1.5

[State 3421, striscie orizzontali]
type = Explod
triggerall = NumExplod(8131) = 0
trigger1 = Time = 0
pos = -10,0
anim = 8131
ID = 8131
postype = back
sprpriority = -6
ownpal = 1
bindtime = -1
supermove = 1
removetime = 60
scale = 1.2, 1.2

[State 3421]
type = HitDef
trigger1 = AnimElem = 7
priority = 5
attr = S, HA
damage   = 0
animtype = Hard
pausetime = 2,1
sparkno = S8044
sparkxy =  -75,-70
hitsound   = S14,5
guardsound = s6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -15, -7
air.type = Low
air.velocity = -15,7
fall = 1
fall.recover = 0
envshake.time =  20
envshake.freq = 99
envshake.ampl = 10
envshake.phase = 99
fall.damage = 50
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
p1stateno = 3422
p2stateno = 3424

[State 3421, Exp]
type = Explod
trigger1 = AnimElem = 7
pos = 28,8
anim = 7088
sprpriority = 5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 3421, NoHit]
type = NotHitBy
trigger1 = (AnimElem >= 7) && (AnimElem <= 13)
value = SCA

[State 3421, Dust]
type = Explod
trigger1 = animelem = 10
anim = F120
ontop = 0
sprpriority = -5
pos = 100,0
postype = p1
random = 0,0

[State 3421, Pos]
type = PosAdd
triggerall = !MoveHit
trigger1 = AnimElem = 13, = 20
x = 100

[State 3421, CS]
type = ChangeState
triggerall = !MoveHit
trigger1 = AnimElem = 13, = 20
value = 0
ctrl = 1

[State 3421, Pos]
type = PosAdd
trigger1 = AnimElem = 14
x = 100

[State 3421, SND]
type = PlaySnd
trigger1 = AnimElem = 18
value = 14,0

[State 3421, Turn]
type = Turn
trigger1 = AnimElem = 19

[State 3421, ChangeAnim]
type = ChangeAnim
triggerall = movehit = 1
trigger1 = time = 0
value = 5012

[State 3421]
type = ChangeState
triggerall = Anim = 3401
triggerall = movehit != 1
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; p1 state 1
[Statedef 3422]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 3422
sprpriority = 2

[State 3422, removeEX]
type = RemoveExplod
triggerall = NumExplod(8130) >= 1
trigger1 = time = 5
ID = 8130

[State 3422, removeEX]
type = RemoveExplod
triggerall = NumExplod(8131) >= 1
trigger1 = time = 5
ID = 8131

[State 3422, PosSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3422, BindtoTarget]
type = BindtoTarget
trigger1 = Time = 0
pos = 125,0,Foot

[State 3422, superpause]
type = SuperPause
trigger1 = AnimElem = 1
anim = -1
time = 100
movetime = 100
darken = 1

[State 3422, testa di drago]
type = Explod
triggerall = NumExplod(8170) = 0
trigger1 = Time = 0
pos = 50,50
anim = 8170
ID = 8170
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100
scale = 0.8,0.8

[State 3422, spark]
type = Explod
trigger1 = Time = 1
anim = 7060
ID = 7060
pos = 140,75
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 150
persistent = 0
removeongethit = 0
removetime = 150
scale = 1.5,1.5

[State 3422, lightning]
type = Explod
trigger1 = Time = 31
anim = 8040
ID = 8040
pos = 15,20
postype = p2
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 3422, lightning]
type = Explod
trigger1 = Time = 51
anim = 8040
ID = 8040
pos = 10,20
postype = p2
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 3422, lightning]
type = Explod
trigger1 = Time = 61
anim = 8040
ID = 8040
pos = -20,20
postype = p2
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0

[State 3422, flash]
type = EnvColor
trigger1 = Time = 30
trigger2 = Time = 50
trigger3 = Time = 60
value = 55,255,55
under = 0
time = 4

[State 3422, SND]
type = PlaySnd
trigger1 = Time = 30
trigger2 = Time = 50
trigger3 = Time = 64
value = 14,3

[State 3422, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,1

[State 3422, RemoveExplod]
type = RemoveExplod
trigger1 = time > 0
ID = 70091

[State 3422, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3423
ctrl = 1

; p1 state 2
[Statedef 3423]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 3423
velset = 0,0

[State 3423, super]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 20
mul = 192,255,192
add = 5,5,5
invertall = 0

[State 3423, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3423]
type = AfterImage
trigger1 = time = 4
time = 35
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 3423]
type = EnvColor
trigger1 = AnimElem = 5
value = 240,240,240
under = 1
time = 3

[State 3423, light]
type = Explod
trigger1 = AnimElem = 2
ID = 7030
anim = 7030
pos = 138,5
postype = p1
sprpriority = 2
supermove = 30
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .5,.5

[State 3423, light]
type = Explod
trigger1 = AnimElem = 2
ID = 7031
anim = 7031
pos = 138,6
postype = p1
sprpriority = 2
supermove = 30
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .5,.5
vfacing = -1

[State 3423, polvere]
type = Explod
trigger1 = AnimElem = 5
ID = 7010
anim = 7010
pos = 138,0
postype = p1
sprpriority = -4
supermove = 30
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3423]
type = PlaySnd
trigger1 = Time = 0
value = 12,3
channel = 0

[State 3423]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,2

[State 3423]
type = helper
trigger1 = AnimElem = 5
stateno = 8020
ID = 8020
name = "dragon"
postype = p1
pos = 130,0
helpertype = normal
keyctrl = 0
ownpal = 1

[State 3423, Var]
type = VarSet
trigger1 = P2Life < 1
var(18) = 1

[State 3423]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------
[State 3423, sfondo verticale dorato]
type = Explod
triggerall = NumExplod(8120) = 0
trigger1 = Time = 12
pos = 0,320
anim = 8220
ID = 8220
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 130

[State 3423, striscie verticali]
type = Explod
triggerall = NumExplod(8121) = 0
trigger1 = Time = 12
pos = -10,0
anim = 8121
ID = 8121
postype = back
sprpriority = -6
ownpal = 1
bindtime = -1
supermove = 1
removetime = 130
scale = 1.2, 1.2

[State 3423, removeEX]
type = RemoveExplod
triggerall = NumExplod(8220) >= 1
trigger1 = AnimElem = 8
ID = 8220

[State 3423, removeEX]
type = RemoveExplod
triggerall = NumExplod(8121) >= 1
trigger1 = AnimElem = 8
ID = 8121

[State 3423]
type = AssertSpecial
trigger1 = 1
flag = noFG

; p2 state
[Statedef 3424]
type = S
movetype= H
physics = N
velset = 0,0
SprPriority = -2

[State 3424, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

;[State 3425, PosAdd]
;type = PosAdd
;trigger1 = Time = 3
;x = -50
;y = 0

[State 3424, LifeAdd]
type = LifeAdd
trigger1 = Time = 0
value = -450
kill = 0

[State 3424, TargetFacing]
type = TargetFacing
trigger1 = Time = 0
value = 1
ID = 1

[State 3424, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1402

[State 3424, Velset]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

;---------------------------------------------------------------------------
; Waterfall Kick
[Statedef 3500]
type = S
movetype = A
physics = S
anim = 3500
poweradd = -2000
juggle = 3
velset = 0,0
ctrl = 0

[State 3500, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3500, yaahaa]
type = PlaySnd
trigger1 = AnimElem = 10
value = 12,1
channel = 0

[State 3500, super]
type = BGPalfx
trigger1 = Time = 5
ignorehitpause = 1
time = 150
mul = 102,155,102
add = 2,2,2
invertall = 0

[State 3500]
type = SuperPause
trigger1 = AnimElem = 23
time = 20
movetime = 0
anim = -1
darken = 0

[State 3500]
type = EnvShake
trigger1 = AnimElem = 23
time = 30

[State 3500, lampi]
type = BGPalfx
trigger1 = AnimElem = 23
ignorehitpause = 1
time = 45
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 3500]
type = EnvColor
trigger1 = AnimElem = 27
value = 240,240,240
under = 0
time = 10

[State 3500]
type = VelSet
trigger1 = AnimElem = 17
trigger2 = AnimElem = 18
trigger3 = AnimElem = 19
trigger4 = AnimElem = 20
trigger5 = AnimElem = 23
x = 3.5
y = -2.5

[State 3500]
type = VelSet
trigger1 = AnimElem = 21
trigger2 = AnimElem = 22
x = 12
y = -2.5

[State 3500]
type = VelMul
trigger1 = AnimElem = 24
trigger2 = AnimElem = 25
x = 3.5
y = 1

[State 3500]
type = VelMul
trigger1 = AnimElem >= 26
x = 4
y = -4

[State 3500]
type = HitDef
trigger1 = AnimElem = 23
attr = S, HA
damage = 350,70
getpower = 0
givepower = 0
priority = 7
animtype = hard
guardflag = MA
forcestand = 1
sparkno = S8060
sparkxy =  -10,-20
hitsound = s1,6
guardsound = s6,0
pausetime = 12,20
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = -18,-18
air.velocity = -.5,-3
fall = 1
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
fall.recover = 0             
fall.damage = 50             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 25
Palfx.add           = 50,50,50
Palfx.mul           = 150,250,150
Palfx.sinadd        = -112,-122,-112,3

[State 3500]
type = ChangeState
trigger1 = AnimTime = 0
value = 3501
ctrl = 1

[State 3500, Spause]
type = Explod
trigger1 = AnimElem = 2
anim = 7009
ID = 7009
pos = 0,-80
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1

[State 3500, Spause]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,2

[State 3500, polvere]
type = Explod
trigger1 = AnimElem = 3
anim = 7010
ID = 7010
pos = -3,0
postype = p1
sprpriority = -3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1

[State 3500, light foot]
type = Explod
trigger1 = AnimElem = 23
anim = 7060
ID = 7060
pos = 85,-27
postype = p1
removetime = 150
sprpriority = 2
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3500, removeEX]
type = RemoveExplod
triggerall = NumExplod(7060) >= 1
trigger1 = AnimElem = 24
ID = 7060

[State 3500, Cosmo]
type = Explod
trigger1 = AnimElem = 6
anim = 905
ID = 905
pos = 20,20
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3500, armor]
type = Explod
trigger1 = AnimElem = 15
anim = 3110
ID = 3110
pos = 0,0
postype = p1
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150

[State 3500, removeEX]
type = RemoveExplod
triggerall = NumExplod(3110) >= 1
trigger1 = AnimElem = 23
ID = 3110

[State 3500, Cosmo]
type = Explod
trigger1 = AnimElem = 21
anim = 3503
ID = 3503
pos = 20,15
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150

[State 3500, removeEX]
type = RemoveExplod
triggerall = NumExplod(3503) >= 1
trigger1 = AnimElem = 24
ID = 3503

[State 3500, dragon]
type = PlaySnd
trigger1 = AnimElem = 16
value = 700,1

[State 3500, dragon]
type = Explod
trigger1 = AnimElem = 19
anim = 8147
ID = 8147
pos = 50,60
postype = p1
removetime = 150
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1

[State 3500, removeEX]
type = RemoveExplod
triggerall = NumExplod(8147) >= 1
trigger1 = AnimElem = 25
ID = 8147

[State 3500, Cosmo drago]
type = Explod
trigger1 = AnimElem = 19
anim = 3504
ID = 3504
pos = -94,100
postype = p1
removetime = 200
sprpriority = 4
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1

[State 3500, removeEX]
type = RemoveExplod
triggerall = NumExplod(3504) >= 1
trigger1 = AnimElem = 25
ID = 3504

[State 3500, onde]
type = Explod
trigger1 = AnimElem = 14
pos = 0,35
anim = 8144
ID = 8144
postype = Back
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = 20
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200
scale = 1.1,1.1

[State 3500, onde]
type = Explod
trigger1 = AnimElem = 14
pos = 0,120
anim = 8145
ID = 8145
postype = Back
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200
scale = 1.1,1.1

[State 3500, removeEX]
type = RemoveExplod
triggerall = NumExplod(8144) >= 1
trigger1 = AnimElem = 25
ID = 8144

[State 3500, removeEX]
type = RemoveExplod
triggerall = NumExplod(8145) >= 1
trigger1 = AnimElem = 25
ID = 8145

[State 3500]
type = AssertSpecial
triggerAll = time >= 40
trigger1 = 1
flag = noFG

[State 3500, sfondo]
type = Explod
trigger1 = AnimElem = 18
pos = 0,0
anim = 8140
ID = 8140
postype = back
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

; end
[Statedef 3501]
type = S
movetype = A
physics = S
anim = 3501
poweradd = 0
juggle = 5
ctrl = 0
velset = 0,0

[State 3501, SuperPause]
type = SuperPause
triggerall = Time = 10
trigger1 = Enemy,movetype != H
time = 46
Movetime = 46
darken = 1
Anim = -1

[State 3501, removeEX]
type = RemoveExplod
triggerall = NumExplod(8140) >= 1
trigger1 = time = 0
ID = 8140

[State 3501, scia luminosa]
type = AfterImage
trigger1 = Animelem = 1
trigger1 = time = 0
time = 50
PalContrast =  128,128,128
PalBright = 5,5,5
trans = add

[State 3501, armor]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,5

[State 3501]
type = PlaySnd
trigger1 = time = 1
value = 2,2

[State 3501]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1

[State 3501, armor]
type = Explod
trigger1 = time = 0
anim = 3110
ID = 3110
pos = 0,0
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 15

[State 3501]
type = Velset
trigger1 = time = 0
y = 0
x = 0

[State 3501]
type = PosSet
trigger1 = time = 0
y = 0

[State 3501, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3501]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Libra Sword
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd = -3000
ctrl = 0
anim = 3001
velset = 0,0

[State 3000]
type = AssertSpecial
trigger1 = Time = 0
flag = unguardable
flag2 = nowalk

[State 3000, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3000]
type = SuperPause
trigger1 = time = 0
time = 310
darken = 0
anim = S7109
pos = -60,-30
movetime = 310

[State 3000]
type = PlaySnd
trigger1 = time = 0
value = 5,2

[State 3000]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 300
mul = 150,150,222
sinadd = 34,56,67,240
add = 5,5,5
invertall = 0

[State 3000, libraarmor]
type = PlaySnd
trigger1 = AnimElem = 1
value = 9,1

[State 3000, libraarmor2]
type = PlaySnd
trigger1 = Time = 70
value = 6,1

[State 3000, grab]
type = PlaySnd
trigger1 = Time = 97
value = 8,0

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,1
channel = 0

[State 3000, armor]
type = PlaySnd
trigger1 = AnimElem = 12
value = 4,3

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 20
value = 700,4
channel = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = Time = 240
value = 200,7
channel = 0

[State 3000, armor]
type = Explod
trigger1 = AnimElem = 16
anim = 3010
ID = 3010
shadow = -1
pos = 0,0
postype = p1
removetime = 350
supermove = 1
sprpriority = -6
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3000, librarmor]
type = Explod
trigger1 = time = 5
anim = 3002
ID = 3002
shadow = -1
pos = 0,0
postype = p1
removetime = 390
supermove = 1
sprpriority = -4
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3000, librarmorkosumo]
type = Explod
trigger1 = time = 5
anim = 3007
ID = 3007
pos = 0,0
postype = p1
removetime = 390
supermove = 1
sprpriority = -5
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3000, goldlamp]
type = Explod
trigger1 = time = 5
anim = 7130
ID = 7130
pos = -60,0
postype = p1
supermove = 1
sprpriority = -6
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
scale = .5,.5

[State 3000, goldlamp]
type = Explod
trigger1 = time = 5
anim = 7131
ID = 7131
pos = -60,-1
postype = p1
supermove = 1
sprpriority = -6
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
scale = .5,.5
vfacing = -1

[State 3000, sword]
type = Explod
triggerall = NumExplod(3003) = 0
trigger1 = AnimElem = 14
anim = 3003
ID = 3003
shadow = -1
pos = 0,0
postype = p1
supermove = 1
sprpriority = 3
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3000, sword2]
type = Explod
triggerall = NumExplod(3004) = 0
trigger1 = AnimElem = 15
anim = 3004
ID = 3004
shadow = -1
pos = 0,0
postype = p1
supermove = 1
sprpriority = -4
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3000, lightSword]
type = Explod
triggerall = NumExplod(7061) = 0
trigger1 = AnimElem = 20
anim = 7061
ID = 7061
pos = 0,0
postype = p1
supermove = 1
sprpriority = 4
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3000, lightSword2]
type = Explod
triggerall = NumExplod(7061) = 0
trigger1 = AnimElem = 28
anim = 7061
ID = 7061
pos = 47,172
postype = p1
supermove = 1
sprpriority = 4
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
removetime = 15

[State 3000, gold light]
type = Explod
trigger1 = AnimElem = 20
anim = 8070
ID = 8070
pos = -38,-167
postype = p1
supermove = 1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
removetime = 200
persistent = 0

[State 3000, Mouth]
type = Explod
trigger1 = AnimElem = 20
anim = 1962
ID = 1962
pos = -16,6
postype = p1
supermove = 1
bindtime = 200
sprpriority = 5
removetime = 120
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3000, BGPalFX2]
type = BGPalFX
trigger1 = AnimElem = 20
time = 200
add = -50,-50,-50
mul = 256,256,256
sinadd = 0,0,0,10
invertall = 0
ignorehitpause = 1
persistent = 1

[State 3000, polvere]
type = Explod
trigger1 = AnimElem = 26
anim = 70871
pos = 50,5
postype = p1
supermove = 1
sprpriority = 5
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3000]
type = HitDef
trigger1 = time = 0             
priority = 7
attr = S, HA                   
damage    = 9999
getpower = 0
givepower = 0            
priority = 7                    
pausetime = 5,50            
sparkno = S8080
sparkxy = -50,-120
animtype  = Hard               
hitsound = s1,6
guardsound = s6,0
numhits = 1  
ground.type = high
ground.slidetime = 5            
ground.hittime  = 4;15          
ground.velocity = -2, -15       
animtype = hard                 
guard.slidetime = 5    
guard.hittime  = 15    
guard.velocity = -4    
guard.ctrltime = 7             
airguard.velocity = -2.6,0
airguard.ctrltime = 7        
air.type = High                 
air.velocity = 0,0
fall = 1 
fall.recover = 0        
envshake.time =  10 
envshake.freq = 10   
envshake.ampl = 10  
envshake.phase = 10
fall.damage = 100
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 25
Palfx.time          = 55
Palfx.mul           = 255,245,0
Palfx.sinadd        = -52,-52,0,3
Palfx.invertall     = 1

;[State 3000, white fadeout]
;type = BGPalFx
;trigger1 = p2life = 0
;add = 255,255,255
;sinadd = 300,300,300,60
;time= 40
;ignorehitpause = 1
;persistent= 0

[State 3000, cosmo]
type = Explod
trigger1 = AnimElem = 11
anim = 3005
ID = 3005
pos = 0,0
postype = p1
supermove = 1
sprpriority = -2
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
removetime = 300

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(3005) >= 1
trigger1 = AnimElem = 17
ID = 3005

[State 3000, cosmo]
type = Explod
trigger1 = AnimElem = 17
anim = 3006
ID = 3006
pos = -5,5
postype = p1
supermove = 1
sprpriority = -2
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
removetime = 300

[State 3000]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

; cloth on 2
[Statedef 3001]
type = S
movetype = A
physics = S
anim = 3304
poweradd = 0
juggle = 5
ctrl = 0
velset = 0,0

[State 3001, Pos]
type = PosAdd
triggerall = prevstateno = 3401
trigger1 = Time = 0
x = 100

[State 3001, SuperPause]
type = SuperPause
triggerall = Time = 0
trigger1 = Enemy,movetype != H
time = 92
Movetime = 92
darken = 1
anim = -1

[State 3001, flash]
type = EnvColor
trigger1 = Time = 0
value = 255,255,255
under = 0
time = 10

[State 3001]
type = BGPalfx
trigger1 = time = 0
trigger1 = 1
ignorehitpause = 1
time = 50
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3001, lampi]
type = BGPalfx
trigger1 = AnimElem = 4
ignorehitpause = 1
time = 25
sinadd = 90,150,90,8
add = 5,5,5
invertall = 0

[State 3001]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3001, removeEX]
type = RemoveExplod
triggerall = NumExplod(3006) >= 1
trigger1 = time = 0
ID = 3006

[State 3001, removeEX]
type = RemoveExplod
triggerall = NumExplod(3007) >= 1
trigger1 = time = 0
ID = 3007

[State 3001, removeEX]
type = RemoveExplod
triggerall = NumExplod(7061) >= 1
trigger1 = time = 0
ID = 7061

[State 3001, removeEX]
type = RemoveExplod
triggerall = NumExplod(3010) >= 1
trigger1 = AnimElem = 4
ID = 3010

[State 3001, removeEX]
type = RemoveExplod
triggerall = NumExplod(3002) >= 1
trigger1 = time = 0
ID = 3002

[State 3001, scia luminosa]
type = AfterImage
trigger1 = Animelem = 1
trigger1 = time = 0
time = 50
PalContrast =  128,128,128
PalBright = 5,5,5
trans = add

[State 3001, yaaha]
type = PlaySnd
trigger1 = Animelem = 1
value = 12,1
channel = 0

[State 3001, armor cloth]
type = PlaySnd
trigger1 = Animelem = 3
value = 4,5

[State 3001]
type = Velset
trigger1 = time = 0
y = 0
x = 0

[State 3001]
type = PosSet
trigger1 = time = 0
y = 0

[State 3001]
type = VarSet
triggerall = prevstateno = 3000
triggerall = P2Life < 1
trigger1 = Time = 0
var(14) = 1

[State 3001]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rozan KoRyuHa - part 1 - cloth away
[Statedef 3100]
type    = S
movetype= I
physics = S
juggle  = 0
velset = 0,0
anim = 3100
ctrl = 0
poweradd = -3000

[State 3100]
type = PlaySnd
trigger1 = Animelem = 2
value = 5,2

[State 3100, cloth sound]
type = PlaySnd
trigger1 = Animelem = 12
value = 4,3

[State 3100, Voice]
type = PlaySnd
trigger1 = Animelem = 1
value = 12,1
channel = 0

[State 3100]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3100]
type = superpause
trigger1 = Animelem = 2
time = 100
darken = 0
anim = s7009
pos = 0, -80
movetime = 100

[State 3100]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3100, luce]
type = Explod
trigger1 = AnimElem = 3
anim = 7030
ID = 7030
pos = 0,5
postype = p1
supermove = 1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
scale = .5,.5

[State 3100, luce]
type = Explod
trigger1 = AnimElem = 3
anim = 7031
ID = 7031
pos = 0,6
postype = p1
supermove = 1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
scale = .5,.5
vfacing = -1

[State 3100, polvere]
type = Explod
trigger1 = AnimElem = 4
anim = 7010
ID = 7010
pos = 0,0
postype = p1
supermove = 1
sprpriority = -3
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1

[State 3100, cosmo]
type = Explod
trigger1 = AnimElem = 12
anim = 905
ID = 905
pos = 15,5
postype = p1
supermove = 1
sprpriority = -2
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3100, removeEX]
type = RemoveExplod
triggerall = NumExplod(3006) >= 1
trigger1 = AnimElem = 16
ID = 3006

[State 3100, armor]
type = Explod
trigger1 = AnimElem = 17
anim = 3110
ID = 3110
shadow = -1
pos = 0,0
postype = p1
supermove = 1
sprpriority = -5
supermove = 1
ignorehitpause = 1
bindtime = 1
ownpal = 1
removetime = 500
removeongethit = 1

[State 3100]
type = ChangeState
trigger1 = animTime = 0
value = 3101
ctrl = 1

; part 2 - run
[Statedef 3101]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
velset = 0,0
anim = 3101
ctrl = 0

[State 3101]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3101]
type = AfterImage
trigger1 = Animelem = 4
time = 100
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 3101]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3101, passi]
type = PlaySnd
trigger1 = Animelem = 1
value = 0,1

[State 3101, passi]
type = PlaySnd
trigger1 = Animelem = 4
value = 3,0

[State 3101, passi]
type = PlaySnd
trigger1 = Animelem = 7
value = 3,1

[State 3101]
type = VelSet
trigger1 = Time >= 10
x = 5

[State 3101]
type = HitDef
trigger1 = time = 0
attr = S, HT
getpower = 0
givepower = 0
hitflag = M
sparkno = -1
hitsound = -1
p1stateno = 3102
p2stateno = 3106

[State 3101, polvere]
type = Explod
trigger1 = AnimElem = 4
anim = 7085
pos = 0,0
supermove = 1
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
removeongethit = 1

[State 3101]
type = ChangeState
trigger1 = Time = 100
value = 3304
ctrl = 1

; part 3 - catch
[Statedef 3102]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 3102
ctrl = 0
SprPriority = -2

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(3110) >= 1
trigger1 = AnimElem = 9
ID = 3110

[State 3102]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3102, flash]
type = EnvColor
trigger1 = AnimElem = 7
value = 255,255,255
under = 0
time = 5

[State 3102]
type = AssertSpecial
trigger1 = Time = [20, 500]
flag = noFG
ignorehitpause = 1
persistent = 1

[State 3102, dragon]
type = PlaySnd
trigger1 = Animelem = 3
value = 700,1

[State 3102, pienezza]
type = PlaySnd
trigger1 = time = 40
value = 700,2

[State 3102, sirio voice]
type = PlaySnd
triggerall = p2name != "seiya" && p2name != "shun" && p2name != "hyoga"
triggerall = p4name != "seiya" && p4name != "shun" && p4name != "hyoga"
triggerall = p2name != "seiya2" && p2name != "shun2" && p2name != "hyoga2"
triggerall = p4name != "seiya2" && p4name != "shun2" && p4name != "hyoga2"
triggerall = p2name != "seiya3" && p2name != "shun3" && p2name != "hyoga3"
triggerall = p4name != "seiya3" && p4name != "shun3" && p4name != "hyoga3"
trigger1 = time = 1
value = 700,8
channel = 0

[State 3102, sirio voice]
type = PlaySnd
trigger1 = p2name = "seiya" || p2name = "shun" || p2name = "hyoga"
trigger2 = p4name = "seiya" || p4name = "shun" || p4name = "hyoga"
trigger3 = p2name = "seiya2" || p2name = "shun2" || p2name = "hyoga2"
trigger4 = p4name = "seiya2" || p4name = "shun2" || p4name = "hyoga2"
trigger5 = p2name = "seiya3" || p2name = "shun3" || p2name = "hyoga3"
trigger6 = p4name = "seiya3" || p4name = "shun3" || p4name = "hyoga3"
triggerall = time = 30
value = 700,3
channel = 0

[State 3102]
type = AfterImage
trigger1 = time = 0
time = 10
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 3102]
type = SuperPause
trigger1 = Animelem = 3
movetime = 0
time = 20
darken = 0
pos = 15, -70
anim = s70091

[State 3102]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3102]
type = ScreenBound
trigger1 = Time >= 0
value = 0

[State 3102, arms]
type = Explod
trigger1 = Animelem = 3
postype = p1
pos = 0,0
scale = 1,1
bindtime = -1
removetime = -1
sprpriority = 2
anim = 3107
ID = 3107

[State 3102, cosmo]
type = Explod
trigger1 = AnimElem = 1
anim = 3160
ID = 3160
pos = 3,10
postype = p1
supermove = 1
sprpriority = -3
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removetime = 150
removeongethit = 1

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(3160) >= 1
trigger1 = AnimElem = 4
ID = 3160

[State 3102, cosmo]
type = Explod
triggerall = NumExplod(3161) = 0
trigger1 = AnimElem = 7
anim = 3161
ID = 3161
pos = 0,0
postype = p1
supermove = 1
sprpriority = -3
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
removetime = 9999

[State 3102, dragon]
type = Explod
triggerall = NumExplod(8010) = 0
trigger1 = AnimElem = 4
anim = 8010
ID = 8010
pos = -5,-18
postype = p1
supermove = 1
sprpriority = 4
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
removetime = 9999
scale = 1.1, 1.1

[State 3102, rotante1]
type = Explod
trigger1 = AnimElem = 5
anim = 8001
ID = 8001
pos = 5,-40
postype = p1
supermove = 1
sprpriority = 5
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
removetime = 9999
scale = .5,.8

[State 3102, rotante2]
type = Explod
trigger1 = AnimElem = 5
anim = 8001
ID = 8001
pos = 5,-70
postype = p1
supermove = 1
sprpriority = 5
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
removetime = 9999
scale = .5,.8

[State 3102, rotante3]
type = Explod
trigger1 = AnimElem = 5
anim = 8001
ID = 8001
pos = 5,-100
postype = p1
supermove = 1
sprpriority = 5
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
removetime = 9999
scale = .5,.8

[State 3102, dragon0]
type = Explod
triggerall = NumExplod(8012) = 0
trigger1 = AnimElem = 3
anim = 8012
ID = 8012
pos = 0,0
postype = p1
supermove = 1
sprpriority = 4
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
scale = .9, .9

[State 3102, dragon0]
type = Explod
triggerall = NumExplod(8014) = 0
trigger1 = AnimElem = 3
anim = 8014
ID = 8014
pos = 0,0
postype = p1
supermove = 1
sprpriority = 2
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
scale = .9, .9
Facing = -1

[State 3102, dragon0]
type = Explod
triggerall = NumExplod(8013) = 0
trigger1 = AnimElem = 3
anim = 8013
ID = 8013
pos = 0,0
postype = p1
supermove = 1
sprpriority = -2
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
scale = .9, .9

[State 3102, polvere0]
type = Explod
trigger1 = AnimElem = 3
anim = 7010
ID = 7010
pos = 0,0
postype = p1
supermove = 1
sprpriority = -3
supermove = 1
ignorehitpause = 1
bindtime = -1
ownpal = 1

[State 3102, Sfondostriscie]
type = Explod
triggerall = NumExplod(8002) = 0
trigger1 = AnimElem = 9
anim = 8002
ID = 8002
pos = -315,0
postype = right
supermove = 1
sprpriority = 7
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
removetime = 9999

[State 3102, sfondo]
type = Explod
triggerall = NumExplod(8111) = 0
trigger1 = AnimElem = 5
anim = 8111
ID = 8111
;shadow = -1
pos = -320,0
postype = right
supermove = 1
sprpriority = -9
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1
removetime = 9999

[State 3102]
type = TargetBind
trigger1 = AnimElem = 1
pos = 30, 0

[State 3102]
type = TargetBind
trigger1 = AnimElem = 4
pos = 15, 0

[State 3102]
type = TargetBind
trigger1 = AnimElem = 5
pos = 15, -5

[State 3102]
type = TargetBind
trigger1 = AnimElem = 6
pos = 15, -10

[State 3102]
type = TargetBind
trigger1 = AnimElem = 7
pos = 15, -15

[State 3102]
type = ChangeState
triggerall = p2name != "seiya" && p2name != "shun" && p2name != "hyoga"
triggerall = p4name != "seiya" && p4name != "shun" && p4name != "hyoga"
triggerall = p2name != "seiya2" && p2name != "shun2" && p2name != "hyoga2"
triggerall = p4name != "seiya2" && p4name != "shun2" && p4name != "hyoga2"
triggerall = p2name != "seiya3" && p2name != "shun3" && p2name != "hyoga3"
triggerall = p4name != "seiya3" && p4name != "shun3" && p4name != "hyoga3"
trigger1 = Time = 430
value = 3103
ctrl = 1

[State 3102]
type = ChangeState
trigger1 = p2name = "seiya" || p2name = "shun" || p2name = "hyoga"
trigger2 = p4name = "seiya" || p4name = "shun" || p4name = "hyoga"
trigger3 = p2name = "seiya2" || p2name = "shun2" || p2name = "hyoga2"
trigger4 = p4name = "seiya2" || p4name = "shun2" || p4name = "hyoga2"
trigger5 = p2name = "seiya3" || p2name = "shun3" || p2name = "hyoga3"
trigger6 = p4name = "seiya3" || p4name = "shun3" || p4name = "hyoga3"
triggerall = Time = 370
value = 3103
ctrl = 1

; part 4 - explosion
[Statedef 3103]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
anim = 3103
SprPriority = -2
ctrl = 0

[State 3103]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3103]
type = ScreenBound
trigger1 = Time >= 0
value = 0

[State 3103]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3103]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3103, removeEX]
type = RemoveExplod
triggerall = NumExplod(3161) >= 1
trigger1 = AnimElem = 2
ID = 3161

[State 3103, removeEX]
type = RemoveExplod
triggerall = NumExplod(8010) >= 1
trigger1 = AnimElem = 2
ID = 8010

[State 3103, removeEX]
type = RemoveExplod
triggerall = NumExplod(8001) >= 1
trigger1 = AnimElem = 2
ID = 8001

[State 3103, flash]
type = Explod
triggerall = NumExplod(8000) = 0
trigger1 = AnimElem = 2
anim = 8000
ID = 8000
pos = 0,-100
postype = p1
supermove = 1
sprpriority = 8
supermove = 1
ignorehitpause = 1
bindtime = -1
removeongethit = 1
ownpal = 1

[State 3103, voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 700,5
channel = 0

[State 3103, voce]
type = PlaySnd
trigger1 = AnimElem = 2
value = 14,8

[State 3103]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype = Hard
damage    = 0
getpower = 0
givepower = 0
pausetime = 0,9
sparkno = -1
sparkxy = 0,-75
hitsound   = S2,9
guardsound = s6,0
ground.velocity = 0
air.velocity = 0,0
envshake.time =  50 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5
p2stateno = 3107
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176

[State 3103, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElem = 3
flag = Invisible

[State 3103]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 3103]
type = ChangeState
trigger1 = Time = 60
value = 3104
ctrl = 1

; part 5 - fall
[Statedef 3104]
type    = S
physics = S
ctrl = 0
anim = 3104
velset = 0, 0
SprPriority = 2

[State 3104, removeEX]
type = RemoveExplod
triggerall = NumExplod(8002) >= 1
trigger1 = time = 0
ID = 8002

[State 3104]
type = ChangeState
triggerall = (p2name = "shura" && p2life > 0) 
trigger1 = Time = 40
value = 3111
ctrl = 1

[State 3104, flash]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
under = 0
time = 26

[State 3104, lampi]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 75
sinadd = 90,150,90,8
add = 5,5,5
invertall = 0

[State 3104]
type = BGPalfx
trigger1 = time >= 75
trigger1 = 1
ignorehitpause = 1
time = 10
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3104, AssertSpecial]
type = AssertSpecial
trigger1 = time = 0
flag = Invisible

[State 3104, removeEX]
type = RemoveExplod
triggerall = NumExplod(3107) >= 1
trigger1 = time = 0
ID = 3107

[State 3104, removeEX]
type = RemoveExplod
triggerall = NumExplod(8111) >= 1
trigger1 = time = 0
ID = 8111

[State 3104, removeEX]
type = RemoveExplod
triggerall = NumExplod(8002) >= 1
trigger1 = time = 70
ID = 8002

[State 3104]
type = AssertSpecial
trigger1 = Time = [0,70]
flag = noFG

[State 3104]
type = ScreenBound
trigger1 = Time >= 0
value = 0

[State 3104]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3104]
type = VelSet
trigger1 = Time = 0
y = 0
x = 0

[State 3104]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3104]
type = AfterImage
trigger1 = Animelem = 1
trigger1 = time = 0
time = 200
PalContrast =  255,200,0
PalBright = 5,5,5
trans = add

[State 3104]
type = AfterImage
trigger1 = Animelem = 43
trigger1 = time = 0
time = 50
PalContrast =  128,128,128
PalBright = 5,5,5
trans = add

[State 3104, cosmo totore]
type = Explod
triggerall = NumExplod(3162) = 0
trigger1 = time = 0
anim = 3162
ID = 3162
pos = -7,4
postype = p1
supermove = 1
sprpriority = -2
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3104, capricorn voice]
type = PlaySnd
trigger1 = time = 50
value = 700,0

[State 3104]
type = PlaySnd
trigger1 = Animelem = 35
trigger2 = Animelem = 38
value = 2,3

[State 3104]
type = PlaySnd
trigger1 = Animelem = 35
value = 4,2

[State 3104]
type = PlaySnd
trigger1 = time = 150
value = 4,4

[State 3104]
type = PlaySnd
trigger1 = time = 410
value = 2,1

[State 3104, capricorn cloth]
type = Explod
triggerall = NumExplod(3108) = 0
trigger1 = AnimElem = 1
anim = 3108
ID = 3108
pos = 0,0
postype = p1
supermove = 1
sprpriority = 5
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3104, cosmo cloth]
type = Explod
triggerall = NumExplod(3163) = 0
trigger1 = AnimElem = 35
anim = 3163
ID = 3163
pos = 78,12
postype = p1
supermove = 1
sprpriority = 3
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3104, polvere]
type = Explod
trigger1 = AnimElem = 35
anim = 7082
pos = 0, 2
postype = p1
supermove = 1
sprpriority = -4
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3104, envshake]
type = EnvShake
trigger1 = AnimElem = 35
time = 35

[State 3104]
type = PlaySnd
trigger1 = Animelem = 44
value = 2,2

[State 3104, camera]
type = Helper
trigger1 = Time = 0
postype = p1
pos = 140, -140
stateno = 3108
supermovetime = 1
helpertype = player
keyctrl = 0
ownpal = 1

[State 3104]
type = VelSet
trigger1 = 1
y = 0
x = 0

[State 3104]
type = PosSet
trigger1 = 1
y = 0

[State 3104, armor]
type = Explod
trigger1 = AnimElem = 1
anim = 3110
ID = 3110
shadow = -1
pos = 0,0
postype = p1
supermove = 1
sprpriority = -5
supermove = 1
ignorehitpause = 1
bindtime = 1
ownpal = 1
removetime = 500
removeongethit = 1

[State 3104]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 3104, shurcazzo!]
type = Explod
triggerall = NumExplod(2030) = 0
trigger1 = time = 50
anim = 2030
ID = 2030
pos = -305,-15
postype = right
supermove = 1
sprpriority = -8
supermove = 0
ignorehitpause = 1
bindtime = 100
ownpal = 1
removeongethit = 1
removetime = 350

[State 3104, polverep2]
type = Explod
triggerall = p2life > 0
trigger1 = time = 140
anim = 70891
ID = 70891
pos = 120,10
postype = p1
supermove = 1
sprpriority = 5
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3104, polverep2]
type = Explod
triggerall = p2life > 0
trigger1 = time = 140
anim = 7089
ID = 70891
pos = 120,10
postype = p1
supermove = 1
sprpriority = 5
supermove = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3104, p2]
type = PlaySnd
triggerall = p2life > 0
trigger1 = time = 140
value = 2,3

[State 3104]
type = ChangeState
trigger1 = AnimTime = 0
value = 3105
ctrl = 1

; part 6 - cloth on
[Statedef 3105]
type    = S
physics = S
ctrl = 0
anim = 3305

[State 3105]
type = BGPalfx
trigger1 = time = 0
trigger1 = 1
ignorehitpause = 1
time = 50
mul = 152,205,152
add = 5,5,5
invertall = 0

[State 3105, lampi]
type = BGPalfx
trigger1 = AnimElem = 4
ignorehitpause = 1
time = 25
sinadd = 90,150,90,8
add = 5,5,5
invertall = 0

[State 3105]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3105, removeEX]
type = RemoveExplod
triggerall = NumExplod(3110) >= 1
trigger1 = AnimElem = 4
ID = 3110

[State 3105, scia luminosa]
type = AfterImage
trigger1 = Animelem = 1
trigger1 = time = 0
time = 50
PalContrast =  128,128,128
PalBright = 5,5,5
trans = add

[State 3105, yaaha]
type = PlaySnd
trigger1 = Animelem = 1
value = 12,1
channel = 0

[State 3105, armor cloth]
type = PlaySnd
trigger1 = Animelem = 3
value = 4,5

[State 3105]
type = VarSet
triggerall = (p2life < 1) && (PrevStateNo != 3200)
trigger1 = Time = 0
var(11) = 1

[State 3105]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; p2 state 1
[Statedef 3106]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
SprPriority = -1

[State 3106]
type = ChangeAnim2
trigger1 = time = 0
value = 3105

[State 3106]
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X <-5

[State 3106]
type = HitFallSet
trigger1 = time = 1
value = 1

[State 3106]
type = Posset
trigger1 = time = 0
y = 0

[State 3106]
type = SelfState
trigger1 = Time = 2000
value = 5035

; p2 state 2
[Statedef 3107]
type = A
movetype = H
physics = N
velset = 0,0
SprPriority = -1

[State 3107, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3107]
type = LifeAdd
trigger1 = time = 60
value = -800

[State 3107]
type = ChangeAnim2
trigger1 = time = 0
value = 3106

[State 3107]
type = VelSet
triggerall = life <= 0
trigger1 = time = 60
y = 10000
persistent = 1

[State 3107, AssertSpecial]
type = AssertSpecial
triggerall = life <= 0
trigger1 = time = 50
flag = Invisible

[State 3107, AssertSpecial]
type = AssertSpecial
triggerall = life > 0
trigger1 = time = 50
flag = Invisible

[State 3107, NoHit]
type = posset
triggerall = life > 0
trigger1 = time = 51
Y = -240

[State 3107, NoHit]
type = posadd
triggerall = life > 0
trigger1 = time = 51
X = -100

[State 3107]
type = ChangeState
triggerall = life > 0
trigger1 = time = 120
value = 3109
ctrl = 0

[State 3107]
type = SelfState
triggerall = life <= 0
trigger1 = time = 110
value = 5150
ctrl = 1

; Sky-cam (helper)
[Statedef 3108]
type = S
movetype = I
physics = S
anim = 7060
juggle = 0
velset = 0,0
ctrl = 0

[State 3108]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3108, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 3108]
type = DestroySelf
trigger1 = Time = 100

;
[Statedef 3109]
type    = A
movetype= H
physics = N

[State 3109, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 3109, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 3109, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)/2

[State 3109, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 3110 ;HIT_BOUNCE

;
[Statedef 3110]
type    = L
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = time = 0
Value = 5110

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 4]
type = Lifeadd
trigger1 = Time = 0
Value = -100

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3107]
type = SelfState
triggerall = life > 0
trigger1 = time = 350
value = 5120
ctrl = 1

[State 3107]
type = SelfState
triggerall = life <= 0
trigger1 = time = 1
value = 5150
ctrl = 1

; p2 state 3
[Statedef 3111]
type = A
movetype = H
physics = N
velset = 0,0

[State 3107, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3107]
type = LifeAdd
trigger1 = time = 2
value = -9999

[State 3107]
type = ChangeAnim
trigger1 = time = 0
value = 3106

[State 3107]
type = VelSet
trigger1 = time >= 0
y = 500

[State 3107, AssertSpecial]
type = AssertSpecial
trigger1 = time = 0
flag = Invisible

[State 3107]
type = SelfState
trigger1 = time = 110
value = 5150
ctrl = 1

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------

[State -2, Get P2 Distance]
type = VarSet
trigger1 = P2Dist X != 0
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

[State -2, Normal Version]
type = Varset
trigger1 = PalNo = 1 && RoundNo >= 1
trigger2 = PalNo = 3 && RoundNo >= 1
trigger3 = PalNo = 4 && RoundNo >= 1
trigger4 = PalNo = 5 && RoundNo >= 1
trigger5 = PalNo = 6 && RoundNo >= 1
trigger6 = PalNo = 7 && RoundNo >= 1
trigger7 = PalNo = 9 && RoundNo >= 1
trigger8 = PalNo = 10 && RoundNo >= 1
trigger9 = PalNo = 11 && RoundNo >= 1
trigger10 = PalNo = 12 && RoundNo >= 1
var(22) = 0

[State -2, Blind Version]
type = Varset
trigger1 = PalNo = 2 && RoundNo >= 1
trigger2 = PalNo = 8 && RoundNo >= 1
var(22) = 1

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
triggerAll = Var(51) = 1
trigger1 = StateNo = 999
trigger1 = Time = 15
anim = 7099
postype = left
pos = 65,175
sprpriority = -5
ownpal = 1
persistent = 0
removeongethit = 0
supermove = 1

[State -2, 7th Sense Left]
type = Explod
triggerAll = Var(51) = 2
trigger1 = StateNo = 999
trigger1 = Time = 15
anim = 7099
postype = right
pos = -65,175
sprpriority = -5
ownpal = 1
persistent = 0
removeongethit = 0
supermove = 1

[State -2, 7th Sense]
type = VarSet
triggerall = var(8) = 1
triggerall = var(9) != 1
triggerall = stateno != 3200
triggerall = stateno != [3300,3304]
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
trigger1  = anim != 6666666
trigger1 = AnimElem = 2
time = 200
add = 5,5,5
sinadd = 200,200,10,4

[State -2, 7th Sense]
type = AttackMulSet
triggerall = var(8) = 1
triggerall = power >= 1
triggerall = life >= 1
trigger1  = anim != 6666666
trigger1 = AnimElem = 2
value = 2

[State -2, 7th Sense]
type = AttackMulSet
triggerall = var(8) != 1
triggerall = var(8) = 0
triggerall = power < 1
triggerall = life >= 1
trigger1  = anim != 6666666
trigger1 = AnimElem = 2
value = 1

;------------------------------------------

[State -2, Random Sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 10,0

[State -2, Random Sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 10,2

[State -2, Random Sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10,0

[State -2, Random Sound]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10,2

[State -2, Random Sound]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 10,0

;------------------------------------------

;Mega Combo ALL
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
value = 255
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 255) && (prevstateno = 230) && (movecontact)
value = 220
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 255) && (movecontact)
value = 210
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 220) && (movecontact)
value = 240
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 210) && (movecontact)
value = 235
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 240) && (movecontact)
value = 250

;Combo Fireball
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220) 
trigger1 = (movecontact)
value = 235
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 220) && (movecontact)
value = 1000

;Combo Fireball
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235)
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 200) && (movecontact)
value = 1001

;Combo Fireball 2
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220)
trigger1 = (movecontact)
value = 235
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 220) && (movecontact)
value = 1002

;Combo Fireball 2
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235)
trigger1 = (movecontact)
value = 200
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 200) && (movecontact)
value = 1002

;Combo GYS
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220) 
trigger1 = (movecontact)
value = 235
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 220) && (movecontact)
value = 1100

;Combo GYS
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220) 
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 220) && (movecontact)
value = 1100

;Combo PG
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235)
trigger1 = (movecontact)
value = 220
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 235) && (movecontact)
value = 235

;Combo CC
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 255)
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 255) && (movecontact)
value = 240
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 230) && (movecontact)
value = 255
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 255) && (prevstateno = 240) && (movecontact)
value = 250

;Combo CC
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

;Combo CC
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 255)
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 255) && (movecontact)
value = 240
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 230) && (movecontact)
value = 255
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 255) && (prevstateno = 240) && (movecontact)
value = 250

;Combo CC
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200)
trigger1 = (movecontact)
value = 220
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 200) && (movecontact)
value = 210
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 240) && (movecontact)
value = 220
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 210) && (movecontact)
value = 1500

;Pugno + CK
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240)
trigger1 = (movecontact)
value = 1300

;Pugni + DP
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230)
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 230) && (movecontact)
value = 225

;Pugni + GYS
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
value = 200
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 210) && (movecontact)
value = 1100

;Calci + MR
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220)
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 220) && (movecontact)
value = 230
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 230) && (movecontact)
value = 245

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Combo abbasato
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

;Combo abbasato
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400)
trigger1 = (movecontact)
value = 420
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 420) && (prevstateno = 400) && (movecontact)
value = 450

;Combo abbasato
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

;Combo abbasato
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 440)
trigger1 = (movecontact)
value = 450
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 450) && (prevstateno = 440) && (movecontact)
value = 420

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Combo in aria (2 PG)
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 610

;Combo in aria (2 CC)
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630)
trigger1 = (movecontact)
value = 640

;Combo in aria (2 CC)
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630)
trigger1 = (movecontact)
value = 650

;Combo in aria
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 630
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 630) && (prevstateno = 600) && (movecontact)
value = 610

;Combo in aria
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630)
trigger1 = (movecontact)
value = 610
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 630) && (movecontact)
value = 640

;Combo in aria
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 1600

;Combo in aria
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630)
trigger1 = (movecontact)
value = 1600

;Combo in aria
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 630
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 630) && (prevstateno = 600) && (movecontact)
value = 1600

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Combo DN
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220)
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 220) && (movecontact)
trigger1 = power >= 1000
value = 3210

;Combo DN
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220)
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 220) && (movecontact)
trigger1 = power >= 3000
value = 3200

;Trap + DN
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 1401) && (movecontact)
trigger1 = power >= 1000
value = 3210

;Trap + DN
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 1401) && (movecontact)
trigger1 = power >= 3000
value = 3200

;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------

; Cosmo Charge
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 79])
trigger1 = (P2bodydist X >= 150) && (power < 3000) && (prevstateno != 5120) 
trigger1 = var(8) = 0
value = 900

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(8) = 0
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [80,119])
value = 199

; Dragon Launch
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype = S) && (ctrl) && (random = [120, 159])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 800

; Dragon Fury
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype = S) && (ctrl) && (random = [160, 199])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 850

; Dragon Shield
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [200, 239])
trigger1 = (P2bodydist X >= 50) && (power >= 1000) && (prevstateno != 5120)
value = 950

; Dragon Wave
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [240, 279])
trigger1 = (P2bodydist X  >= 150) && (prevstateno != 5120) 
value = 1000
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [240, 279])
trigger1 = (P2bodydist X  >= 150) && (prevstateno != 5120)
value = 1001
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [240, 279])
trigger1 = (P2bodydist X  >= 150) && (prevstateno != 5120)
value = 1002

; Dragon Geyser
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [280, 319])
trigger1 = (P2bodydist X < 100) && (prevstateno != 5120)
value = 1100

; Dragon Geyser (air)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [320, 359])
trigger1 = (P2bodydist X < 100) && (prevstateno != 5120)
value = 1101

; Dragon Combo Kick
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [360, 399])
trigger1 = (P2bodydist X <= 125) && (prevstateno != 5120) 
value = 1300

; Dragon Trap
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype = S) && (ctrl) && (random = [400, 439])
trigger1 = (P2bodydist X <= 70) && (prevstateno != 5120)
value = 1400

; Dragon Kick
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (ctrl) && (random = [440, 479])
trigger1 = (P2bodydist X <= 250) && (P2BodyDist X > 100) && (prevstateno != 5120)
value = 1500

; Dragon Flying Kick
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [480, 519])
trigger1 = (P2bodydist X <= 200) && (prevstateno != 5120) 
value = 1600

;---------------------------------------------------------------------------
; Super Moves
;---------------------------------------------------------------------------

; Rozan ShoRyuHa (vertical)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 120) && (power >= 1000) && (power < 3000)  && (random = [520,559])
value = 3210

; Rozan RyuHiSho
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X > 130) && (power >= 1000) && (random = [560,599])
value = 3410

; Rozan ShoRyuHa (horizontal)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X > 120) && (power >= 2000)&& (power < 3000) && (random = [600,639])
value = 3310

; Waterfall Kick
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X > 160) && (power >= 2000) && (random = [640,679])
value = 3500

; Rozan ShoRyuHa (vertical, w/o cloth)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (var(8) = 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 120) && (power >= 3000) && (random = [680,719])
value = 3200

; Rozan ShoRyuHa (horizontal, w/o cloth)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (var(8) = 0) &&(statetype = S) && (ctrl)
trigger1 = (p2bodydist X > 120) && (power >= 3000) && (random = [720,759])
value = 3300

; Rozan RyuHiSho (w/o cloth)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X > 130) && (power >= 3000) && (random = [760,799])
value = 3400

; Rozan RyuHiSho + Rozan ShoRyuHa
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (life <= 250) && (ctrl)
trigger1 = (p2bodydist X > 130) && (power >= 3000) && (random = [800,839])
value = 3420

; Libra Sword
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2life <= 250) && (ctrl)
trigger1 = (p2bodydist X <= 150) && (power >= 3000) && (random = [840,879])
value = 3000

; Rozan KoRyuHa
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (life <= 250) && (ctrl)
trigger1 = (p2bodydist X >= 80) && (power >= 3000) && (random = [880,919])
value = 3100

; 7th Sense
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(8) = 0
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (life <= 250) && (ctrl)
trigger1 = (p2bodydist X >= 100) && (power >= 3000) && (random = [919,959])
value = 999

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

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(1961) >= 1
trigger1 = stateno != 183
trigger1 = stateno != 185
trigger1 = stateno != 191
trigger1 = stateno != 192
trigger1 = stateno != 193
trigger1 = stateno != 199
ID = 1961

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(8041) >= 1
trigger1 = stateno != 1401
trigger1 = stateno != 3410
trigger1 = stateno != 3401
trigger1 = stateno != 3403
trigger1 = stateno != 3700
ID = 8041

;-------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = AnimElem = 2
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = AnimElem = 5
value = 3,1

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = Time = 1
value = 2,0

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = Time = 1
value = 2,1

[State -3, AirJump]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 20
FrameGap = 2
length = 10
PalBright = 10,10,10
PalContrast = 98,98,98
PalAdd = 0, 0, 0
PalMul = 1,1,1
Trans = Add1

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = Time = 1
value = 2,2

;---------------------------------------

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = time = 1
time = 30
FrameGap = 2
length = 10
PalBright = 10,10,10
PalContrast = 98,98,98
PalAdd = 0, 0, 0
PalMul = 1,1,1
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
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
pos = 25,0
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
trigger1 = AnimElem = 4
value = 3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 7
value = 3,1

;---------------------------------------

[State -3, Run Back]
type = AfterImage
triggerall = stateno = 105
trigger1 = time = 1
time = 15
PalBright = 10,10,10
PalContrast = 98,98,98
PalAdd = 0, 0, 0
PalMul = 1,1,1
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

[State -3, Shunrei]
type = Explod
triggerall = p2name != "shunrei"
triggerall = p3name != "shunrei"
triggerall = p4name != "shunrei"
triggerall = Var(58) = 0
triggerall = Life <= 0
triggerall = anim = 5150
trigger1 = time = 43
anim = 5151
facing = -1
shadow = -1
pos = -200,0
postype = p1
sprpriority = -3
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
removetime = -1
persistent = 1

[State -3, Shunrei]
type = PlaySnd
triggerall = p2name != "shunrei" || p3name != "shunrei" || p4name != "shunrei"
triggerall = prevstateno != 3107
triggerall = Var(58) = 0
triggerall = Life <= 0
triggerall = anim = 5150
trigger1 = time = 30
value = 200,5

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = Var(58) = 0
triggerall = Life <= 0
triggerall = anim = 5150
trigger1 = time = 1
trigger2 = time = 10
trigger3 = time = 20
value = 11, 1

;---------------------------------------

[State -3, stopcosmosnd]
type = StopSnd
trigger1 = stateno != 0
trigger2 = power < 3000
channel = 9