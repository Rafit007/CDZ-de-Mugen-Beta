;-------------------------------------
; Shaina St File by TonyADV
;-------------------------------------

; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, Assert]
type = AssertSpecial
trigger1 = Time = [0,200]
flag= roundnotover

[State 182]
type = PlaySnd
trigger1 = AnimElem = 8
value = 10,30
channel = 0

[State 182]
type = PlaySnd
trigger1 = AnimElem = 14
value = 10,31
channel = 0

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;WIN state decider
[Statedef 180]
type = S

[State 180]
type = ChangeState
triggerall = MatchOver = 1
triggerall = Var(15) = 0
trigger1 = life <= 250
value = 183

[State 180]
type = ChangeState
trigger1 = Var(15) = 1
value = 184

[State 180]
type = VarRandom
triggerall = life > 250 || MatchOver = 0 || Var(15) = 0
trigger1 = Time = 0
v = 2
range = 0,99

[State 180]
type = ChangeState
trigger1 = Var(2) = [0,65] 
value = 181

[State 180]
type = ChangeState
trigger1 = Var(2) = [66,99] 
value = 182

;---------------------------------------------
;WIN 1
[Statedef 181]
type = S
ctrl = 0
anim = 1969 ;181
velset = 0,0

[State 181]
type = AssertSpecial
trigger1 = Time = [0,140]
flag = RoundNotOver

[State 181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10,5
channel = 0

;---------------------------------------------
;WIN 2
[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181]
type = Explod
triggerall = NumExplod(1950) = 0
trigger1 = Animelem = 3
anim = 1950
ID = 1950
pos = 0,0
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0
removetime = -1

[State 182]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10,1
channel = 0

[State 182]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = RoundNotOver

;---------------------------------------------
;WIN 3
[Statedef 183]
type = S
ctrl = 0
anim = 1958
velset = 0,0

[State 182]
type = AssertSpecial
trigger1 = Time = [0,400]
flag = RoundNotOver

[State 182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181]
type = Explod
trigger1 = Animelem = 6
anim = 1959
pos = 0,0
postype = p1
sprpriority = 3
ownpal = 1
ignorehitpause = 0
removetime = -1

[State 182]
type = PlaySnd
trigger1 = AnimElem = 8
value = 10,32
channel = 0

[State 182]
type = PlaySnd
trigger1 = time = 105
value = 6,1

[State 182]
type = PlaySnd
trigger1 = time = 176
value = 2,3

[State 182]
type = PlaySnd
trigger1 = AnimElem = 14
value = 0,1

;---------------------------------------------
;WIN 4
[Statedef 184]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 184]
type = AssertSpecial
trigger1 = Time = [0,240]
flag = RoundNotOver

[State 184]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 184]
type = PlaySnd
trigger1 = Time = 0
value = 194,2
channel = 0

[State 184]
type = PlaySnd
trigger1 = Time = 0
value = 9,0

[State 184]
type = Explod
trigger1 = Time = 0
anim = 8000
pos = 0,0
postype = p1
sprpriority = -1
ownpal = 1
ignorehitpause = 0
removetime = -1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Intro state decider
[Statedef 191]
type = S
ctrl = 0
velset = 0,0

[State 191, vs Pegasus]
type = changestate
trigger1 = p2name = "Seiya" || p4name = "Seiya"
value = 194

[State 191]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 191]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 193

[State 191]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 192

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Intro1
[Statedef 192]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 192]
type = AssertSpecial
trigger1 = Time = [0,325]
flag = Intro

[State 192]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5

[State 192]
type = PlaySnd
trigger1 = AnimElem = 3
value = 10, 0
channel = 0

[State 192]
type = PlaySnd
trigger1 = AnimElem = 13
value = 2, 2

[State 192]
type = Explod
trigger1 = Animelem = 14
anim = 7089
pos = 2,2
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0
scale = .7,.7

[State 192]
type = Explod
trigger1 = Animelem = 13
anim = 7081
pos = 2,0
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0
scale = .8,.8

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

[State 192]
type = NotHitBy
trigger1 = 1
value = SCA

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Intro2 - cloth
[Statedef 193]
type = S
ctrl = 0
anim = 1963
velset = 0,0

[State 193]
type = AssertSpecial
trigger1 = Time = [0,380]
flag = Intro

[State 193]
type = NotHitBy
trigger1 = 1
value = SCA

[State 193]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,0

[State 193]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10,22
channel = 0

[State 193,scrignoAVN]
type = Explod
trigger1 = Animelem = 1
anim = 1966
pos = 60,2
postype = p1
sprpriority = 3
ownpal = 1
ignorehitpause = 0

[State 193,scrignoIND]
type = Explod
trigger1 = Animelem = 1
anim = 19661
pos = 60,2
postype = p1
sprpriority = -6
ownpal = 1
ignorehitpause = 0

[State 193]
type = PlaySnd
trigger1 = time = 100
value = 2,1

[State 193]
type = PlaySnd
trigger1 = time = 100
value = 5,1

[State 193,luce scrigno]
type = Explod
trigger1 = time = 60
anim = 1968
pos = 60,2
postype = p1
sprpriority = 4
ownpal = 1
ignorehitpause = 0

[State 193,luce armor]
type = Explod
trigger1 = time = 100
anim = 1967
ID = 1967
pos = 64,-2
postype = p1
sprpriority = -3
ownpal = 1
ignorehitpause = 0
removetime = 80

[State 193,cloth1]
type = Explod
trigger1 = time = 100
anim = 1964
ID = 1964
pos = 59,3
postype = p1
sprpriority = -4
ownpal = 1
ignorehitpause = 0

[State 193, removeEX]
type = RemoveExplod
triggerall = NumExplod(1964) >= 1
trigger1 = Animelem = 2
ID = 1964

[State 193,cloth2]
type = Explod
trigger1 = Animelem = 2
anim = 1965
ID = 1965
pos = 59,-63
postype = p1
sprpriority = -4
ownpal = 1
ignorehitpause = 0

[State 193]
type = PlaySnd
trigger1 = Animelem = 2
value = 5,2

[State 193,polvere]
type = Explod
trigger1 = Animelem = 5
anim = 7010
pos = 0,-1
postype = p1
sprpriority = -7
ownpal = 1
ignorehitpause = 0

[State 193,cosmo]
type = Explod
trigger1 = Animelem = 23
anim = 1950
ID = 1950
pos = 0,0
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0
removetime = 50

[State 193, removeEX]
type = RemoveExplod
triggerall = NumExplod(1950) >= 1
trigger1 = time = 375
ID = 1950

[State 193]
type = PlaySnd
trigger1 = Animelem = 20
value = 0,1

[State 193]
type = PlaySnd
trigger1 = Animelem = 5
value = 4,1

[State 193]
type = PlaySnd
trigger1 = Animelem = 9
value = 4,3

[State 193]
type = PlaySnd
trigger1 = Animelem = 12
value = 4,2

[State 193]
type = PlaySnd
trigger1 = Animelem = 17
value = 4,5

[State 193]
type = PlaySnd
trigger1 = Animelem = 22
value = 4,4

[State 193,spause]
type = Explod
trigger1 = Animelem = 4
anim = 7009
pos = 0,-70
postype = p1
sprpriority = -7
ownpal = 1
ignorehitpause = 0

[State 193, Darken]
type = BGPalfx
triggerAll = time <= 300
trigger1 = 1 ;time = 0
ignorehitpause = 1
time = 5
mul = 160,150,160
add = 5,5,5
invertall = 0

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

[State 193, Brilla]
type = PalFX
trigger1 = AnimElem = 23
time = 15
add = 0,0,0
sinadd = 255,250,255,3

;-----------------------------
;Intro vs Pegasus
[Statedef 194]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 194]
type = AssertSpecial
trigger1 = Time = [0,325]
flag = Intro

[State 194]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5

[State 194]
type = PlaySnd
trigger1 = AnimElem = 18
value = 194, 0

[State 194]
type = PlaySnd
trigger1 = AnimElem = 13
value = 2, 2

[State 194]
type = Explod
trigger1 = Animelem = 14
anim = 7089
pos = 2,2
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0
scale = .8,.8

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
type = NotHitBy
trigger1 = 1
value = SCA

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Provocazione
[Statedef 195]
type = S
movetype = I
physics = S
anim = 195
velset = 0, 0
ctrl = 0

[State 195]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 195]
type = PlaySnd
triggerall = var(2) = [0,49]
trigger1 = Time = 5
value = 10,2
channel = 0

[State 1000,PlaySnd]
type = PlaySnd
triggerall = var(2) = [50,99]
trigger1 = Time = 5
value = 10,3
channel = 0

[State 195]
type = PlaySnd
trigger1 = Time = 1
trigger2 = AnimTime = 0
value = 3,1

[State 195]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;attaki base
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Pugno debole
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 200
poweradd = 50

[State 200]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 200]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype = Light
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 6,12
sparkno = S7000
sparkxy = -10,-75
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = -3.5,-6
yaccel = .5

[State 200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------

;Pugno debole ravvicinato
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 205
poweradd = 50

[State 200]
type = PlaySnd
trigger1 = Time= 2
value = 0,0

[State 200]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = Light
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = S7000
sparkxy = -10,-88
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = -3.5,-6
yaccel = .5

[State 200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;Pugno medio
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 210

[State 210]
type = PlaySnd
trigger1 = Time= 2
value = 0,1

[State 210]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 10,10
sparkno = S7001
sparkxy = -15,-75
hitsound = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -7
air.velocity = -3.5,-6
yaccel = .5

[State 210]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;Pugno forte
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 220

[State 220]
type = PlaySnd
trigger1 = Time= 2
value = 0,2

[State 220]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 12,8
sparkno = S7002
sparkxy = 0,-90
hitsound = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -8
air.velocity = -3.5,-6
yaccel = .5

[State 220]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;Calcio Debole
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 230

[State 230]
type = PlaySnd
trigger1 = Time= 2
value = 0,0

[State 230]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Light
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 10,10
sparkno = S7000
sparkxy = -10,-30
hitsound = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
air.velocity = -3.5,-6
yaccel = .5

[State 230]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;calcio medio
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 250

[State 240]
type = PlaySnd
trigger1 = Time= 2
value = 0,1

[State 240]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = S7001
sparkxy = 0,-70
hitsound = S1,1
guardsound = S6,0
ground.type = low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -5
air.velocity = -3.5,-6
yaccel = .5

[State 240]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;calcio Forte
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 243

[State 250]
type = PlaySnd
trigger1 = Time= 5
value = 0,2

[State 250, POLVERE]
type = Explod
trigger1 = AnimElem = 2
anim = 7089
pos = -8,0
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = .5, .5

[State 250]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 12,10
sparkno = S7002
sparkxy = -10,-50
hitsound = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -8
air.velocity = -3.5,-6
yaccel = .5

[State 250]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;Pugno Basso debole
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 50
ctrl = 0
anim = 400
velset = 0,0

[State 400]
type = PlaySnd
trigger1 = Time= 2
value = 0,0

[State 400]
type = HitDef
trigger1 = Time = 0
attr = C, NA
animtype  = Light
damage    = 20
getpower = 0
givepower = 0
hitflag = MA
guardflag = L
pausetime = 12,12
sparkno = S7000
sparkxy = 0,-40
hitsound = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = -3.5,-6
yaccel = .5

[State 400,End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------
;Pugno Basso medio
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 50
ctrl = 0
anim = 402
velset = 0,0

[State 410]
type = PlaySnd
trigger1 = Time= 3
value = 0,1

[State 410]
type = HitDef
trigger1 = Time = 0
attr = C, NA
animtype  = medium
damage    = 30
getpower = 0
givepower = 0
hitflag = MA
guardflag = L
pausetime = 12,12
sparkno = S7001
sparkxy = 0,-55
hitsound = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6
air.velocity = -3.5,-6
yaccel = .5

[State 410,End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------
;Pugno Basso forte
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 50
ctrl = 0
anim = 410
velset = 0,0

[State 420]
type = PlaySnd
trigger1 = Time= 2
value = 0,2

[State 420]
type = HitDef
trigger1 = Time = 0
attr = C, NA
animtype  = Hard
damage    = 40
getpower = 0
givepower = 0
hitflag = MA
guardflag = L
pausetime = 12,12
sparkno = S7002
sparkxy = 0,-50
hitsound = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
guard.velocity = -9.5
ground.velocity = -1.5, -11
ground.cornerpush.veloff = 0
air.velocity = -2.0,-6
yaccel = .5
air.fall = 1
fall = 1
fall.recover = 0
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 420]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------
;Calcio Basso debole
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 50
ctrl = 0
anim = 430
velset = 0,0

[State 430]
type = PlaySnd
trigger1 = Time= 2
value = 0,0

[State 430]
type = HitDef
trigger1 = Time = 0
attr = C, NA
animtype = Light
damage    = 20
getpower = 0
givepower = 0
hitflag = MA
guardflag = L
pausetime = 10,8
sparkno = S7000
sparkxy = -10,-5
hitsound = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = -3.5,-6
yaccel = .5

[State 430]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------
;Calcio Basso medio
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 50
ctrl = 0
anim = 441
velset = 0,0

[State 440]
type = PlaySnd
trigger1 = Time= 2
value = 0,1

[State 440]
type = HitDef
trigger1 = Time = 0
attr = C, NA
animtype = medium
damage    = 30
getpower = 0
givepower = 0
hitflag = MA
guardflag = L
pausetime = 10,8
sparkno = S7001
sparkxy = -10,-5
hitsound = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -6
air.velocity = -3.5,-6
yaccel = .5

[State 440]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------
;Calcio Basso forte - scivolata
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 50
ctrl = 0
anim = 440

[State 450]
type = PlaySnd
trigger1 = Time= 5
value = 2,0

[State 450]
type = VelSet
trigger1 = AnimElem = 3
x = 7

[State 450, scia]
type = Explod
trigger1 = Animelem = 2
anim = 7085
pos = 60,0
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 450]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
getpower = 0
givepower = 0
animtype = Hard
hitflag = MA
guardflag = L
pausetime = 12,12
sparkno = S2020
sparkxy = 20,0
hitsound = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -3,-5
air.velocity = -3,-6.5
guard.velocity = -5
down.velocity = -3.5,-2
fall = 1
yaccel = .55

[State 450]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------
;Pugno in salto debole
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 611

[State 600]
type = PlaySnd
trigger1 = Time= 1
value = 0,0

[State 600]
type = HitDef
trigger1 = Time = 0
attr = A, NA
animtype = Light
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
priority = 3
pausetime = 12,10
sparkno = S7000
sparkxy = 0,-70
hitsound = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5.0
ground.cornerpush.veloff = -8.0
air.velocity = -3.5,-6
yaccel = .5

;---------------------------------------------
;Pugno in salto medio
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 600

[State 610]
type = PlaySnd
trigger1 = Time= 1
value = 0,1

[State 610]
type = HitDef
trigger1 = Time = 0
attr = A, NA
animtype = medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
priority = 3
pausetime = 12,10
sparkno = S7001
sparkxy = 0,-60
hitsound = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5.0
ground.cornerpush.veloff = -8.0
air.velocity = -3.5,-6
yaccel = .5

;---------------------------------------------
;Pugno in salto Forte
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 610

[State 620]
type = PlaySnd
trigger1 = Time= 1
value = 0,2

[State 620]
type = HitDef
trigger1 = Time = 0
attr = A, NA
animtype = hard
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
priority = 3
pausetime = 12,10
sparkno = S7002
sparkxy = 0,-70
hitsound = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.cornerpush.veloff = -8.0
air.velocity = -3.5,-6
yaccel = .5

;---------------------------------------------
;Calcio in salto debole
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 630

[State 630]
type = PlaySnd
trigger1 = Time= 1
value = 0,0

[State 630]
type = HitDef
trigger1 = Time = 0
attr = A, NA
animtype = Light
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
priority = 3
pausetime = 12,10
sparkno = S7000
sparkxy = 0,-40
hitsound = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
ground.cornerpush.veloff = -8.0
air.velocity = -3.5,-6
yaccel = .5

;---------------------------------------------
;Calcio in salto medio
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 640

[State 640]
type = PlaySnd
trigger1 = Time= 1
value = 0,1

[State 640]
type = HitDef
trigger1 = Time = 0
attr = A, NA
animtype = medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
priority = 3
pausetime = 12,10
sparkno = S7001
sparkxy = 0,-10
hitsound = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -4
ground.cornerpush.veloff = -8.0
air.velocity = -3.5,-6
yaccel = .5

;---------------------------------------------
;Calcio in salto forte
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 8
anim = 510
poweradd = 50
ctrl = 0

[State 650]
type = PlaySnd
trigger1 = Time= 1
value = 0,2

[State 650]
type = HitDef
trigger1 = Time = 0
attr = A, NA
animtype = hard
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
priority = 3
pausetime = 12,10
sparkno = S7002
sparkxy = -10,-50
hitsound = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -4
ground.cornerpush.veloff = -8.0
air.velocity = -3.5,-6
yaccel = .5

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;prese
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------

;Presa 1
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
anim = 800
velset = 0, 0
juggle  = 7

[State 800]
type = Hitdef
trigger1 = Time = 0
trigger1 = P2MoveType != H
trigger1 = P2StateNo != [150,155]
attr = S, NT
priority = 3,Miss
getpower = 0
givepower = 0
hitflag = M-
numhits = 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 810
p2stateno = 820
p2getp1state = 1
hitsound = -1
fall = 1
fall.recover = 0

[State 800]
type = ChangeState
trigger1 = AnimTime = 0
value = 220

;
[Statedef 810]
type = S
movetype = A
physics = S
anim = 810
velset = 0, 0
poweradd = 50
sprpriority = -1

[State 810]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,5

[State 810]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,11

[State 810]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
trigger3 = AnimElem = 26
value = 1,5

[State 810]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10, 5
channel = 0

[State 810]
type = Explod
trigger1 = AnimElem = 4
anim = 7000
pos = 35,-70
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 810]
type = Explod
trigger1 = AnimElem = 8
trigger2 = AnimElem = 14
anim = 2020
pos = 50,-80
postype = p1
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 810]
type = Explod
trigger1 = AnimElem = 8
trigger2 = AnimElem = 14
anim = 7003
pos = 50,-80
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 810]
type = Explod
trigger1 = AnimElem = 26
anim = 2020
pos = 55,-95
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 810]
type = Explod
trigger1 = AnimElem = 26
anim = 7003
pos = 55,-95
postype = p1
sprpriority = 3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 810,SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
value = 2

[State 810,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810,PosFreeze]
type = PosFreeze
trigger1 = 1

[State 810,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 810,TargetBind]
type = TargetBind
trigger1 = AnimElem >= 1
pos = enemynear,const(Size.ground.back)+20, 0

[State 810,TargetBind]
type = TargetBind
trigger1 = AnimElem = 27
pos = enemynear,const(Size.ground.back)+20, -10

[State 810,TargetBind]
type = TargetState
trigger1 = AnimElem = 27 ,= 9
value = 830

[State 810,Width]
type = Width
trigger1 = AnimElem = 1 && FrontEdgeDist < 45
edge = 45,20

[State 810,TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 14
trigger3 = AnimElem = 27
value = -24

[state 810, fatality]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 810,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 820]
type = A
movetype = H
physics = N
ctrl = 0

[State 820,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 820,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 820,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

; 
[Statedef 830]
type = A
movetype = H
physics = N
anim = 5030
velset = -4,-6
ctrl = 0

[State 830,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 830,ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5035)
trigger1 = Anim = 5030 && AnimTime = 0
value = 5035

[State 830,ChangeAnim]
type = ChangeAnim
triggerall = AnimTime = 0
trigger1 = anim = 5030 && !SelfAnimExist(5035)
trigger2 = anim = 5035
value = 5050

[State 830,veladd]
type = veladd
trigger1 = 1
y = .45

[State 830,SelfState]
type = SelfState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 5100


;---------------------------------------------
;---------------------------------------------
;---------------------------------------------

;Presa 2
[Statedef 850]
type = S
movetype = A
physics = S
ctrl = 0
anim = 850
velset = 0, 0

[State 850]
type = Hitdef
trigger1 = Time = 0
trigger1 = P2MoveType != H
trigger1 = P2StateNo != [150,155]
attr = S, NT
priority = 3,Miss
getpower = 0
givepower = 0
hitflag = M-
numhits = 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 860
p2stateno = 870
p2getp1state = 1
hitsound = -1
fall = 1
fall.recover = 0

[State 850]
type = ChangeState
trigger1 = AnimTime = 0
value = 220

;
[Statedef 860]
type = S
movetype = A
physics = S
anim = 860
velset = 0, 0
poweradd = 50
sprpriority = 2

[State 860]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 10

[State 860,SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
value = -1

[State 860,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 860,PosFreeze]
type = Posadd
trigger1 = AnimElem = 4
x = enemynear,const(Size.ground.back)+enemynear,const(Size.ground.front)+40

[State 860,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 860,TargetBind]
type = TargetBind
trigger1 = AnimTime = 0
pos = enemynear,const(Size.ground.back)+20, 0

[State 860,TargetBind]
type = TargetState
trigger1 = AnimTime = 0
value = 820

[State 860,Width]
type = Width
trigger1 = AnimElem = 1 && FrontEdgeDist < 45
edge = 45,20

[State 860,Turn]
type = Turn
trigger1 = AnimTime = 0

[State 860,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 810
ctrl = 0

;
[Statedef 870]
type = A
movetype = H
physics = N
ctrl = 0

[State 870,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 870,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 870,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 870,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 870

[State 870,Turn]
type = Turn
trigger1 = AnimTime = 0

;--------------------------------------------
;--------------------------------------------
; Cosmo Charge 
[Statedef 900]
type = S
movetype = I
physics = S
anim = 900
velset = 0,0
ctrl = 0

[state 900]
type = VarSet
triggerall = var(59) = 1
trigger1 = Time = 0
v = 10
value = 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 9, 1

[State 900]
type = PlaySnd
trigger1 = Time = 0
value = 13,0
channel = 0

[State 900, shake]
type = EnvShake
trigger1 = AnimTime = 0
time = 40

[State 900]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

; Cosmo Charge - charging
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901

[State 901]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

;[State 901, Brilla]
;type = PalFX
;trigger1 = AnimElem = 2
;time = 15
;add = 0,0,0
;sinadd = 200,50,200,3

[State 901,serpe]
type = Explod
trigger1 = AnimElem = 1
anim = 1004
pos = 30, -50
postype = P1
sprpriority = -7
ID = 1957
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 901,serpe]
type = Explod
trigger1 = AnimElem = 1
anim = 1955
pos = -64, -145
postype = P1
sprpriority = -6
ID = 1957
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 901, Cosmo]
type = Explod
triggerall = NumExplod(1957) = 0
trigger1 = 1
pos = -3,11
anim = 1957
ID = 1957
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 901, POLVERE]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = 1
pos = 28,0
anim = 7010
ID = 7010
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 901, POLVERE AEREA]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = 1
pos = 28,0
anim = 7020
ID = 7020
sprpriority = 3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .8, .8

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
type = ChangeState
triggerall = Var(59) = 0
trigger1 = command != "charge"
trigger2 = command != "charge 1"
value = 902

[state 901, End]
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

; Cosmo Charge - end
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

[State 902, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 0

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
triggerall = NumExplod(1957) >= 1
trigger1 = time = 0
ID = 1957

[State 902, shine]
type = PalFX
triggerAll = Power >= 3000
trigger1 = Time = 1
time = 15
add = 0,0,0
sinadd = 20,200,20,3

[State 902, shake]
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
trigger1 = AnimTime= 0
value =0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;scivolate & scatti
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------

;Scivolata - avanti
[Statedef 4050]
type = S
movetype = I
physics = N
ctrl = 0
anim = 4000
velset = 0, 0

[State 4050]
type = Explod
trigger1 = AnimElem = 2
anim = 7084
pos = 0,0
postype = p1
sprpriority = 4
ownpal = 1

[State 4050]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4050]
type = PlayerPush
trigger1 = 1
value = 0

[State 4050]
type = VelSet
trigger1 = AnimElem = 2
x = 5.50

[State 4050]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 4050]
type = PlaySnd
trigger1 = Time = 1
value = 1, 5

[State 4050]
type = AfterImage
trigger1 = Time = 0
time = 14
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 4050]
type = Turn
trigger1 = AnimTime = 0 && P2BodyDist X < -5

[State 4050]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;Scivolata - indietro
[Statedef 4150]
type = S
movetype = I
physics = N
ctrl = 0
anim = 4100
velset = 0, 0

[State 4150]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4150]
type = PlayerPush
trigger1 = 1
value = 0

[State 4150]
type = Explod
trigger1 = AnimElem = 2
anim = 70841
pos = -10,0
postype = p1
sprpriority = 4
ownpal = 1

[State 4150]
type = VelSet
trigger1 = AnimElem = 3
x = -5.00

[State 4150]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 4150]
type = PlaySnd
trigger1 = Time = 1
value = 1, 3

[State 4150]
type = AfterImage
trigger1 = Time = 0
time = 14
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 4150]
type = ChangeState
trigger1 = AnimTime = 0
value = 10
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;scatto
[Statedef 1060]
type     = S
movetype = A
physics  = S
velset   = 0,0
ctrl = 0
anim = 1200
juggle = 5

[State 1060]
type = PlaySnd
trigger1 = TimeMod = 70, 0
value = 3, 2

[State 1060]
type = PlaySnd
trigger1 = TimeMod = 70, 21
value = 3, 3

[State 1060]
type = PlaySnd
trigger1 = TimeMod = 70, 47
value = 3, 4

[State 1060]
type = AfterImage
trigger1 = time = 1
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1060]
type = Explod
trigger1 = AnimElem = 2
pos = 25,0
anim = 7085
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 1060, VelSet]
type = VelSet
trigger1 = AnimElem = 2, >= 0
x = 8

[State 1060,ChangeState]
type = ChangeState
trigger1 = AnimElem = 2, >= 0 && P2BodyDist X <= 10
value = 1061

[State 1060, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1201
ctrl = 0

;------------------------
[Statedef 1201]
type     = S
movetype = I
physics  = S
velset   = 0,0
ctrl = 0
anim = 1201

[State 1201,End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------
[Statedef 1061]
type     = S
movetype = A
physics  = S
velset   = 0,0
ctrl = 0
anim = 1202

[State 1061,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 10

[State 1061,PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = enemynear,const(Size.ground.back)+enemynear,const(Size.ground.front)+60

[State 1061,VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 3

[State 1061,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1061,turn]
type = turn
trigger1 = (enemy,facing = 1 && facing = 1) || (enemy,facing = -1 && facing = -1)
trigger1 = AnimTime = 0

[State 1061]
type = Explod
trigger1 = AnimElem = 7
pos = 25,0
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1
scale = .8, .8

[State 1061,End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;special moves
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------

;Cobra Punch1
[Statedef 225]
type = S
movetype = A
physics = S
juggle = 8
poweradd= 100
anim = 500
ctrl = 0
velset = 0,0

[State 1220]
type = PlaySnd
trigger1 = AnimElem = 3
value = 10, 22
channel = 0

[State 225]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 4500, Brilla]
type = PalFX
trigger1 = AnimElem = 1
time = 5
add = 0,0,0
sinadd = 250,55,250,3

[State 225]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = Hard
damage    = 80,8
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 14,12
sparkno = S2020
sparkxy = -10,-85
hitsound = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -4.5,-7
air.velocity = -4,-7
yaccel = .45
fall = 1
fall.recover = 0
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15


[State 225]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------

;Cobra Punch2
[Statedef 4500]
type = S
movetype = A
physics = S
ctrl = 0
anim = 500
velset = 0, 0
poweradd = 100

[State 4500]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[State 4500]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 23
channel = 0

[State 4500]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 5

[State 4500, Brilla]
type = PalFX
trigger1 = AnimElem = 1
time = 10
add = 0,0,0
sinadd = 250,55,250,3

[State 4500, scia]
type = Explod
trigger1 = Animelem = 2
anim = 2600
pos = 8,0
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0

[State 4500,polvere]
type = Explod
trigger1 = AnimElem = 2
anim = 7010
pos = 8,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 4500]
type = AfterImage
trigger1 = Time = 0
time = 29
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 4500]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
damage    = 65,8
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 14,12
sparkno = S70041
sparkxy = -10,-85
hitsound = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,-5
air.velocity = -10,-4
yaccel = .45
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5
fall = 1
fall.damage = 25   
fall.recover = 0
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
p2stateno = 1025

[State 4500]
type = PosAdd
trigger1 = AnimElem = 5 || AnimElem = 6
x = 12

[State 4500]
type = PosAdd
trigger1 = AnimElem = 9 || AnimElem = 10
x = -12

[State 4500]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------

;Cobra Punch3
[Statedef 1220]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 1220
poweradd = 100

[State 1220]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[State 1220]
type = PlaySnd
trigger1 = AnimElem = 5
value = 10, 21
channel = 0

[State 1220]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5

[State 1220, Brilla]
type = PalFX
trigger1 = AnimElem = 2
time = 25
add = 0,0,0
sinadd = 250,55,250,3

[State 1220, scia]
type = Explod
trigger1 = Animelem = 5
trigger2 = Animelem = 7
trigger3 = Animelem = 9
anim = 7089
pos = 15,0
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0
scale = .7, .7

[State 1220]
type = AfterImage
trigger1 = Time = 0
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1220, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1220]
type = VelSet
trigger1 = AnimElem = 5
x = 10

[State 1220,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = DiagUp
damage    = 80,8
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 44,46
sparkno = S6008
sparkxy = -10,-85
hitsound = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -7,-9
air.velocity = -7,-9
yaccel = .45
air.fall = 1
fall = 1
fall.recover = 0
fall.damage = 0 
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 55
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 1220,thunder]
type = Explod
triggerall = NumExplod(6007) = 0
trigger1 = AnimElem = 7
anim = 6007
id = 6007
pos = 70,-85
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100

[State 1220, removeEX]
type = RemoveExplod
triggerall = NumExplod(6007) = 1
trigger1 = AnimElem = 12
ID = 6007

[State 1220,EnvShake]
type = EnvShake
trigger1 = movehit
time = 20
ignorehitpause = 1
persistent = 0

[State 1220, Envcolor]
type = Envcolor
trigger1 = movehit
value = 255, 255, 255
persistent = 0
ignorehitpause = 1
time = 2

[State 1220,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Snake Punch1
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 1020
poweradd = 100
juggle = 5

[State 1020, Brilla]
type = PalFX
trigger1 = AnimElem = 1
trigger2 = AnimElem = 8
time = 5
add = 0,0,0
sinadd = 250,55,250,3

[State 1020,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 1020,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 1020,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10,22
channel = 0

[State 1020,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,12

[State 1020,Explod]
type = Explod
trigger1 = AnimElem = 8
anim = 7010
pos = 2,0
sprpriority = -2
bindtime = 1
ownpal = 1
ignorehitpause = 1

[State 1020,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
damage    = 80,8
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 10,10
sparkno = S2020
sparkxy = 0,-75
hitsound = S1,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
guard.velocity = -10
ground.velocity = -4.5,-6
air.velocity = -4,-6
yaccel = .45
air.fall = 1
fall = 1
fall.recover = 0
fall.damage = 0
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1020,EnvShake]
type = EnvShake
trigger1 = AnimElem = 8
time = 9

[State 1020,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;Snake Punch2
[Statedef 1021]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 1020
poweradd = 100
juggle = 5

[State 1021, Brilla]
type = PalFX
trigger1 = AnimElem = 1
trigger2 = AnimElem = 8
time = 5
add = 0,0,0
sinadd = 250,55,250,3

[State 1021,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 1021,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 1021,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10,22
channel = 0

[State 1021,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,12

[State 1021,Explod]
type = Explod
trigger1 = AnimElem = 8
anim = 7010
pos = 2,0
sprpriority = -2
bindtime = 1
ownpal = 1
ignorehitpause = 1

[State 1021,Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 6004
pos = 25,-64
sprpriority = 5
bindtime = 1
ownpal = 1

[State 1021,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
damage    = 70,8
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 10,10
sparkno = S6008
sparkxy = 0,-70
hitsound = S1,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
guard.velocity = -10
ground.velocity = -4.5,-6
air.velocity = -4,-6
yaccel = .45
air.fall = 1
fall = 1
fall.recover = 0
fall.damage = 15
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 35
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 1021,EnvShake]
type = EnvShake
trigger1 = AnimElem = 8
time = 9

[State 1021,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Snake Punch3
[Statedef 1030]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 1030
poweradd = 100
juggle = 5

[State 1030, Brilla]
type = PalFX
trigger1 = AnimElem = 1
time = 5
add = 0,0,0
sinadd = 250,55,250,3

[State 1030,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10,22
channel = 0

[State 1030,VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 60

[State 1030,AfterImage]
type = AfterImage
trigger1 = AnimElem = 3
time = 35
length = 10
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1030,PlayerPush]
type = PlayerPush
trigger1 = Time = [12,17]
value = 0

[State 1030,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

[State 1030,HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype = Hard
damage    = 80,8
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = S8001
sparkxy = -10,-40
hitsound = S1,8
guardsound = S6,0
guard.slidetime = 0
guard.hittime  = 0
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 2
air.velocity = -3,-6
yaccel = .5
air.fall = 1
fall = 1
fall.recover = 0
Palfx.time          = 25
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 1030,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Uppercut1 - Discesa
[Statedef 1210]
type    = A
movetype= I
physics = A
velset = 0,0
ctrl = 0
anim = 1209
poweradd = 100

[State 1210,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 22
channel = 0

[State 1210,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1

[State 1210,AfterImage]
type = AfterImage
trigger1 = AnimElem = 3
time = 15
trans = add
length = 10
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1

[State 1210,VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 22
y = 10

[State 1210,PlaySnd]
type = PlaySnd
trigger1 = Pos Y >= -20
value = 2,3

[State 1210,ChangeState]
type = ChangeState
trigger1 = Pos Y >= -20
value = 1213
ctrl = 0

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Uppercut2 - Discesa
[Statedef 1211]
type    = A
movetype= I
physics = A
velset = 0,0
ctrl = 0
anim = 1209
poweradd = 100

[State 1211,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 23
channel = 0

[State 1211,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1

[State 1211,AfterImage]
type = AfterImage
trigger1 = AnimElem = 3
time = 15
trans = add
length = 10
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1

[State 1211,VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 22
y = 10

[State 1211,PlaySnd]
type = PlaySnd
trigger1 = Pos Y >= -20
value = 2,3

[State 1211,ChangeState]
type = ChangeState
trigger1 = Pos Y >= -20
value = 1214
ctrl = 0

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Uppercut3 - Discesa
[Statedef 1212]
type    = A
movetype= I
physics = A
velset = 0,0
ctrl = 0
anim = 1209
poweradd = 100

[State 1212,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 20
channel = 0

[State 1212,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1

[State 1212,AfterImage]
type = AfterImage
trigger1 = AnimElem = 3
time = 15
trans = add
length = 10
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1

[State 1212,VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 22
y = 10

[State 1212,PlaySnd]
type = PlaySnd
trigger1 = Pos Y >= -20
value = 2,3

[State 1212,ChangeState]
type = ChangeState
trigger1 = Pos Y >= -20
value = 1215
ctrl = 0

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Uppercut1
[Statedef 1213]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 1210
poweradd = 100

[State 1213,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 1213, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1213, Posadd]
type = Posadd
trigger1 = AnimElem = 3
x = 2

[State 1213, Posadd]
type = Posadd
trigger1 = AnimElem = 4
x = 8

[State 1213, Posadd]
type = Posadd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
trigger3 = AnimElem = 9
trigger4 = AnimElem = 10
x = 5

[State 1213]
type = AfterImage
trigger1 = Time = 0
time = 35
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1213,Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7089
pos = 2,0
sprpriority = 5
ownpal = 1
ignorehitpause = 1
scale = .6, .6

[State 1213,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
damage    = 80,8
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 27,29
sparkno = S7002
sparkxy = -5,-65
;sparkno = S2020
;sparkxy = -5,-95
hitsound = S1,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1.5,-10
air.velocity = -2,-9.5
guard.velocity = -9.0
envshake.time = 18
envshake.freq = 60
envshake.ampl = -4
yaccel = .5
air.fall = 1
fall = 1
fall.recover = 0
fall.damage = 0
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1213,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Uppercut2
[Statedef 1214]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 1210
poweradd = 100

[State 1214,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 1214, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1214, Posadd]
type = Posadd
trigger1 = AnimElem = 3
x = 2

[State 1214, Posadd]
type = Posadd
trigger1 = AnimElem = 4
x = 8

[State 1214, Posadd]
type = Posadd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
trigger3 = AnimElem = 9
trigger4 = AnimElem = 10
x = 12

[State 1214]
type = AfterImage
trigger1 = Time = 0
time = 35
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1214,Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7089
pos = 2,0
sprpriority = 5
ownpal = 1
ignorehitpause = 1
scale = .6, .6

[State 1214, Brilla]
type = PalFX
trigger1 = AnimElem = 2
time = 10
add = 0,0,0
sinadd = 250,55,250,3

[State 1214,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
damage    = 80,8
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 27,29
sparkno = S7002
sparkxy = -5,-65
hitsound = S1,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -2,-12
air.velocity = -2,-9.5
guard.velocity = -9.0
envshake.time = 18
envshake.freq = 60
envshake.ampl = -4
yaccel = .5
air.fall = 1
fall = 1
fall.recover = 0
fall.damage = 10
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 10
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 1214,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Uppercut3
[Statedef 1215]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 1210
poweradd = 100

[State 1215,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 1215, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1215, Posadd]
type = Posadd
trigger1 = AnimElem = 3
x = 2

[State 1215, Posadd]
type = Posadd
trigger1 = AnimElem = 4
x = 12

[State 1215, Posadd]
type = Posadd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
trigger3 = AnimElem = 9
trigger4 = AnimElem = 10
x = 15

[State 1215]
type = AfterImage
trigger1 = Time = 0
time = 35
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1215,Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7089
pos = 2,0
sprpriority = 5
ownpal = 1
ignorehitpause = 1
scale = .6, .6

[State 1015, Brilla]
type = PalFX
trigger1 = AnimElem = 2
time = 15
add = 0,0,0
sinadd = 250,55,250,3

[State 1215,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
damage    = 80,8
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 27,29
sparkno = s2020
sparkxy = -5,-65
hitsound = S1,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -2,-15
air.velocity = -2,-9.5
guard.velocity = -9.0
envshake.time = 18
envshake.freq = 60
envshake.ampl = -4
yaccel = .5
air.fall = 1
fall = 1
fall.recover = 0
fall.damage = 10
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 95
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 1215]
type = Explod
trigger1 = AnimElem = 1
anim = 411
pos = 0,0
postype = p1
sprpriority = 4
ignorehitpause = 0
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 0

[State 1215, Lampi]
type = Explod
trigger1 = movehit = 1
anim = 6010
pos = 10,-54
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 40

[State 1215, Lampi]
type = Explod
triggerall = NumExplod(6008) = 0
trigger1 = movehit = 1
anim = 6008
Id = 6008
pos = 0,-60
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 0
removetime = 90

[State 1215, Brilla]
type = PalFX
trigger1 = movehit = 1
time = 15
add = 0,0,0
sinadd = 250,55,250,3

[State 1215,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Combo Calci1
[Statedef 255]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 240

[State 255]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 255]
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
x = 4

[State 255, POLVERE]
type = Explod
trigger1 = AnimElem = 2
anim = 7084
pos = 0,0
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 255]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 80,8
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 12,10
sparkno = S2020
sparkxy = 5,-30
hitsound = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -3
air.velocity = -3.5,-6
yaccel = .5
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5
fall = 1
fall.recover = 0             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 255]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;combo calci 2
[Statedef 1110]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 1110
poweradd = 100

[State 1110]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1110]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1110]
type = ChangeState
trigger1 = AnimTime = 0
value = 1111

;------------------------ 
[Statedef 1111]
type    = A
movetype= A
physics = N
velset = 3.3,-8
ctrl = 0
anim = 1111

[State 1111, POLVERE]
type = Explod
trigger1 = time = 0
anim = 7089
pos = 10,10
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1

[State 1111,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 10,23
channel = 0

[State 1111,PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 5,3

[State 1111]
type = NotHitBy
trigger1 = 1 
value = SCA

[State 1111]
type = AfterImage
trigger1 = Time = 0
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1111,VelAdd]
type = VelAdd
trigger1 = 1
y = .55

[State 1111,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
damage    = 90,9
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 8,12
sparkno = S7003
sparkxy = -10,-45
hitsound = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -9
air.velocity = -3.5,-6
yaccel = .45
envshake.time = 20
envshake.freq = 60
envshake.ampl = -8

[State 1112,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1112
ctrl = 1

;------------------------
[Statedef 1112]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 1112

[State 1112,PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1112, POLVERE]
type = Explod
trigger1 = time = 0
anim = 7084
pos = 12,1
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
scale = .8, .6

[State 1112,PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 2,3

[State 1112,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;combo calci 3
[Statedef 1150]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 1110
poweradd = 100

[State 1150, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1150,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1150,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1151

;------------------------ 
[Statedef 1151]
type    = A
movetype= A
physics = N
velset = 5.6,-4.2
ctrl = 0
anim = 1151
poweradd = 0

[State 1750,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 10,22
channel = 0

[State 1111, POLVERE]
type = Explod
trigger1 = time = 0
anim = 7089
pos = 10,10
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1

[State 1111,PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 5,3

[State 1111]
type = NotHitBy
trigger1 = 1 
value = SCA

[State 1151]
type = AfterImage
trigger1 = Time = 0
time = 30
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1151, VelAdd]
type = VelAdd
trigger1 = 1
y = .55

[State 1151,ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1152
ctrl = 0

;------------------------
[Statedef 1152]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1152

[State 1152, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1152,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
damage    = 40,8
getpower = 0
givepower = 0
hitflag = MAFD
guardflag = MA
pausetime = 0,50
sparkno = S7001
sparkxy = 10,-40
hitsound = S1,3
guardsound = S6,0
ground.type = Low
yaccel = .45
ground.slidetime = 16
ground.hittime  = 18
ground.velocity = 0,0
air.velocity = -3.5,-6
down.velocity = 0, 0
guard.velocity = 0
air.fall = 1
fall.recover = 0
forcestand = 1
envshake.time = 15
envshake.freq = 30
envshake.ampl = -8

[State 1152,ChangeState]
type = ChangeState
triggerall = movehit >= 1
trigger1 = AnimElem = 5
value = 1153
ctrl = 1

[State 1152,ChangeState]
type = ChangeState
trigger1 = AnimElem = 5
value = 1112
ctrl = 1

;-------------------------
;combo calci 3b
[Statedef 1153]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 1110
poweradd = 100

[State 1153]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1153]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1153]
type = ChangeState
trigger1 = AnimTime = 0
value = 1154

;------------------------ 
[Statedef 1154]
type    = A
movetype= A
physics = N
velset = 3.3,-8
ctrl = 0
anim = 1111

[State 1154, POLVERE]
type = Explod
trigger1 = time = 0
anim = 7089
pos = 10,10
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1

[State 1154,PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 5,3

[State 1154]
type = NotHitBy
trigger1 = 1 
value = SCA

[State 1154]
type = AfterImage
trigger1 = Time = 0
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1154,VelAdd]
type = VelAdd
trigger1 = 1
y = .55

[State 1154,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
damage    = 50,5
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 8,12
sparkno = S7002
sparkxy = -10,-45
hitsound = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -3
air.velocity = -3.5,-6
yaccel = .5
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5
fall = 1
fall.recover = 0             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1154,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1112
ctrl = 1


;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Special presa1
[Statedef 1000]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1000
velset = 0, 0
poweradd = 100
juggle = 5

[State 1750,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 10,22
channel = 0

[State 1000, scia]
type = Explod
trigger1 = Animelem = 2
anim = 7084
pos = 45,2
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 1000,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,10

[State 1000, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1000,PlayerPush]
type = PlayerPush
trigger1 = AnimElem = 4 ,>0
value = 0

[State 1000,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, ST
guardflag = MA
hitflag = MAF
pausetime = 1,0
sparkno = S2030
sparkxy = 0,-60
hitsound =  S1,11
guardsound = -1
p1stateno = 1003
p2stateno = 1005
ground.type = Low
guard.slidetime = 12
guard.hittime  = 16
guard.ctrltime = 18
guard.velocity = -13.0
air.velocity = -3.5,-6
air.cornerpush.veloff = 0
yaccel = .5
getpower = 0
givepower = 0

[State 1000,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0 || moveguarded
value = IfElse(moveguarded = 1,1002,1001)
ctrl = 0

;------------------------
[Statedef 1001]
type     = S
movetype = I
physics  = S
velset   = 0,0
ctrl = 0
anim = 1001

[State 1001,VelSet]
type = VelSet
trigger1 = time = 1
x = 7

[State 1001,PosAdd]
type = PosAdd
trigger1 = time = 0
x = 174

[State 1001,polvere]
type = Explod
trigger1 = time = 0
anim = 7085
pos = 50, 2
postype = p1
sprpriority = 2
bindtime = 1
ownpal = 1

[State 1001,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------
[Statedef 1002]
type     = S
movetype = I
physics  = S
velset   = 0,0
ctrl = 0
anim = 1001

[State 1002,VelSet]
type = VelSet
trigger1 = time = 1
x = 7

[State 1002,PosAdd]
type = PosAdd
trigger1 = time = 0
x = p2bodydist X - 10

[State 1002,polvere]
type = Explod
trigger1 = time = 0
anim = 7085
pos = 50, 2
postype = p1
sprpriority = 2
bindtime = 1
ownpal = 1

[State 1002,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------
;
[Statedef 1003]
type = S
movetype = A
physics = S
anim = 1003
velset = 0, 0
poweradd = 50
sprpriority = 2

[State 1003,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1,5

[State 1003,polvere]
type = Explod
trigger1 = AnimElem = 2
anim = 7085
pos = -25, 2
postype = p1
sprpriority = 2
bindtime = 1
ownpal = 1

[State 1003,hit]
type = Explod
trigger1 = AnimElem = 6
anim = 2020
pos = 20,-65
postype = P1
sprpriority = 6
bindtime = 1
ownpal = 1

[State 1003,hit]
type = Explod
trigger1 = AnimElem = 6
anim = 7003
pos = 20,-65
postype = P1
sprpriority = 5
bindtime = 1
ownpal = 1

[State 1003,hit]
type = Explod
trigger1 = AnimElem = 1
anim = 7000
pos = 30,-40
postype = P1
sprpriority = 5
bindtime = 1
ownpal = 1

[State 1003,PosAdd]
type = PosAdd
trigger1 = time = 0
x = p2bodydist X + 10

[State 1003,SprPriority]
type = SprPriority
trigger1 = AnimElem = 3
value = -1

[State 1003,SprPriority]
type = SprPriority
trigger1 = AnimElem = 6
value = 2

[State 1003,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1003, Darken]
type = BGPalfx
trigger1 = AnimElem = 3
ignorehitpause = 1
time = 35
mul = 120,90,120
add = 5,5,5
invertall = 0

[State 1003,serpe]
type = Explod
trigger1 = AnimElem = 3
anim = 1004
pos = 0, 0
postype = P1
sprpriority = -3
bindtime = -1
ownpal = 1

[State 1003,serpe]
type = Explod
trigger1 = AnimElem = 3
anim = 1955
pos = -94, -95
postype = P1
sprpriority = -2
bindtime = -1
removetime = 33
ownpal = 1

[State 1003,PosFreeze]
type = PosFreeze
trigger1 = 1

[State 1003,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1003,TargetBind]
type = TargetBind
trigger1 = AnimElem >= 1
pos = 12, 0

[State 1003,TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 20, -12

[State 1003,TargetBind]
type = TargetState
trigger1 = AnimElem = 6 ,=1
value = 1006

[State 1003,Width]
type = Width
trigger1 = AnimElem = 1 && FrontEdgeDist < 45
edge = 45,20

[State 1003,TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -95

[state 1003, fatality]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 1003,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------
[Statedef 1005]
type = A
movetype = H
physics = N
ctrl = 0

[State 1005,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1005,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1005

;------------------------ 
[Statedef 1006]
type = A
movetype = H
physics = N
anim = IfElse(SelfAnimExist(5052),5052,5030)
velset = -3.5,-6
ctrl = 0

[State 1006,ChangeAnim]
type = ChangeAnim
triggerall = Time >= 15
trigger1 = anim != 5050
value = 5050

[State 1006,veladd]
type = veladd
trigger1 = 1
y = .45

[State 1006,SelfState]
type = SelfState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 5100

;-----------------------------
[Statedef 1015]
type = A
movetype = H
physics = N
ctrl = 0

[State 1015,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1015,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1015

;------------------------ 
[Statedef 1016]
type = A
movetype = H
physics = N
anim = ifelse(SelfAnimExist(5062),5062,5050)
velset = -1,-9.5
ctrl = 0

[State 1016,veladd]
type = veladd
trigger1 = 1
y = .45

[State 1016,SelfState]
type = SelfState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 5100


;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Special presa2
[Statedef 1202]
type     = S
movetype = A
physics  = S
velset   = 0,0
ctrl = 0
anim = 1202
poweradd = 100

[State 1000, scia]
type = Explod
trigger1 = Animelem = 2
anim = 7084
pos = 45,2
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State 1002,polvere]
type = Explod
trigger1 = Animelem = 7
anim = 7085
pos = 25, 2
postype = p1
sprpriority = 2
bindtime = 1
ownpal = 1

[State 1000,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 10,21
channel = 0

[State 1000,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,10

[State 1202,pos]
type = posset
trigger1 = time = 0
y = 0

[State 1202,PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = enemynear,const(Size.ground.back)+enemynear,const(Size.ground.front)+60

[State 1202,VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 3

[State 1202,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1202,HitDef]
type = HitDef
trigger1 = Time = 0
;trigger1 = P2StateType != A
;trigger1 = P2StateNo != [150,155]
attr = S, ST
getpower = 0
givepower = 0
hitflag = MA
guardflag = MA
guard.dist = 0
priority = 2, Miss
sparkno = -1
p2facing = 1
p1stateno = 1203
p2stateno = 1205
p1facing =-1

[State 1202, turn]
type = turn
trigger1 = (enemy,facing = 1 && facing = 1) || (enemy,facing = -1 && facing = -1)  
trigger1 = AnimTime = 0

[State 1202,End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------
[Statedef 1203]
type     = S
movetype = I
physics  = N
velset   = 0,0
ctrl = 0
anim = 1203

[State 1203,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1203,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5

[State 1203,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 10, 5
channel = 0

[State 1203]
type = AfterImage
trigger1 = Time = 0
time = 30
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1203, scia]
type = Explod
trigger1 = Animelem = 1
anim = 7089
pos = -15,2
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State 1203,sangue]
type = Explod
trigger1 = AnimElem = 5
anim = 2400
pos = 5,-96
postype = P1
sprpriority = 4
bindtime = 1
ownpal = 1
facing = -1

[State 1203,sangue]
type = Explod
trigger1 = AnimElem = 5
anim = 7003
pos = 5,-96
postype = P1
sprpriority = 2
bindtime = 1
ownpal = 1
facing = -1

[State 1203,sangue]
type = Explod
trigger1 = AnimElem = 5
anim = 2020
pos = 5,-96
postype = P1
sprpriority = 3
bindtime = 1
ownpal = 1
facing = -1

[State 1203, Darken]
type = BGPalfx
trigger1 = AnimElem = 4
ignorehitpause = 1
time = 35
mul = 120,90,120
add = 5,5,5
invertall = 0

[State 1203,serpe]
type = Explod
trigger1 = AnimElem = 4
anim = 1004
pos = 4, -30
postype = P1
sprpriority = -3
bindtime = -1
ownpal = 1

[State 1003,serpe]
type = Explod
trigger1 = AnimElem = 4
anim = 1955
pos = -90, -125
postype = P1
sprpriority = -2
bindtime = -1
removetime = 33
ownpal = 1

[State 1203,PosFreeze]
type = PosFreeze
trigger1 = 1

[State 1203,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1203,BindtoTarget]
type = BindtoTarget
trigger1 = AnimElem = 1
time = 1
pos = 0,0,Mid

[State 1203,PosAdd]
type = PosAdd
trigger1 = Time = 1
x = 15

[State 1203,SprPriority]
type = SprPriority
trigger1 = AnimElem = 3
value = -1

[State 1203,PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = 8

[State 1203,TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -95

[state 1203, fatality]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 1203, 0]
type = turn
trigger1 = AnimTime = 0

[State 1203, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------
[Statedef 1205]
type     = S
movetype = H
physics  = N
ctrl = 0
sprpriority = 1

[State 1205, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 1205

[State 1205, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 1206

;---------------------------
; 
[Statedef 1206]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1206,ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 1206,ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 1206,ChangeState]
type = SelfState
trigger1 = HitShakeOver
value = 5050;1207

;------------------------ 
[Statedef 1207]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1207, Envshake]
type = envshake
Trigger1 = time = 0
time = 9
ampl = -3
freq = 110

[State 1207, posadd]
type = posadd
trigger1 = Time = 0
x = -20

[State 1207,muteki]
type = nothitby
trigger1 = Time >= 0
value = SCA
time = 1

[State 1207, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 1207, Var]
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 1207,ChangeAnim]
type = ChangeAnim
triggerall = time = 0
trigger1 = SelfAnimExist(5102)
value = 5102

[State 1207,ChangeAnim]
type = ChangeAnim
triggerall = time = 0
trigger1 = SelfAnimExist(5101)
trigger1 = !SelfAnimExist(5102)
value = 5101

[State 1207,ChangeAnim]
type = ChangeAnim
triggerall = time = 0
trigger1 = !SelfAnimExist(5101)
trigger1 = !SelfAnimExist(5102)
value = 5100

[State 1207,PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1207,VelMul]
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 1207,GameMakeAnim]
type = Explod
trigger1 = Time = 1
anim = 6061
pos = 0, 0

[State 1207,HitFallDamage]
type = HitFallDamage
trigger1 = Time = 3

[State 1207,PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = 7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 1207,selfState]
type = selfState
trigger1 = AnimTime = 0
value = 5101

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Special presa3
[Statedef 1750]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1000
velset = 0, 0
poweradd = 100
juggle = 5

[State 1111,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 10,4
channel = 0

[State 1750, scia]
type = Explod
trigger1 = Animelem = 2
anim = 7084
pos = 45,2
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 1750,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,10

[State 1750, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1750,PlayerPush]
type = PlayerPush
trigger1 = AnimElem = 4 ,>0
value = 0

[State 1750,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, ST
guardflag = MA
hitflag = MAF
pausetime = 1,0
sparkno = S2030
sparkxy = 0,-60
hitsound =  S1,11
guardsound = -1
p1stateno = 1751
p2stateno = 820
ground.type = Low
guard.slidetime = 12
guard.hittime  = 16
guard.ctrltime = 18
guard.velocity = -13.0
air.velocity = -3.5,-6
air.cornerpush.veloff = 0
yaccel = .5
getpower = 0
givepower = 0

[State 1750,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0 || moveguarded
value = IfElse(moveguarded = 1,1002,1001)
ctrl = 0

;------------------------------------------
[Statedef 1751]
type = S
movetype = A
physics = S
anim = 810
velset = 0, 0
poweradd = 50
sprpriority = -1

[State 1750, scia]
type = Explod
trigger1 = time = 0
anim = 7089
pos = -15,2
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 1003,PosAdd]
type = PosAdd
trigger1 = time = 0
x = p2bodydist X + 10

[State 1751, Darken]
type = BGPalfx
trigger1 = AnimElem = 4
ignorehitpause = 1
time = 55
mul = 120,90,120
add = 5,5,5
invertall = 0

[State 1751,serpe]
type = Explod
trigger1 = AnimElem = 4
anim = 1004
pos = 19, -30
postype = P1
sprpriority = -3
bindtime = -1
ownpal = 1
removetime = 50

[State 1751,serpe]
type = Explod
trigger1 = AnimElem = 4
anim = 1955
pos = -75, -125
postype = P1
sprpriority = -2
bindtime = -1
ownpal = 1
removetime = 50

[State 1751]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,5

[State 1751]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,11

[State 1751]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
trigger3 = AnimElem = 26
value = 1,5

[State 1751]
type = Explod
trigger1 = AnimElem = 4
anim = 7000
pos = 35,-70
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1751]
type = Explod
trigger1 = AnimElem = 8
trigger2 = AnimElem = 14
anim = 2020
pos = 50,-80
postype = p1
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1751]
type = Explod
trigger1 = AnimElem = 8
trigger2 = AnimElem = 14
anim = 7003
pos = 50,-80
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1751]
type = Explod
trigger1 = AnimElem = 26
anim = 2020
pos = 55,-95
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1751]
type = Explod
trigger1 = AnimElem = 26
anim = 7003
pos = 55,-95
postype = p1
sprpriority = 3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1751,SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
value = 2

[State 1751,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1751,PosFreeze]
type = PosFreeze
trigger1 = 1

[State 1751,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 1751,TargetBind]
type = TargetBind
trigger1 = AnimElem >= 1
pos = enemynear,const(Size.ground.back)+20, 0

[State 1751,TargetBind]
type = TargetBind
trigger1 = AnimElem = 27
pos = enemynear,const(Size.ground.back)+20, -10

[State 1751,TargetBind]
type = TargetState
trigger1 = AnimElem = 27 ,= 9
value = 830

[State 1751,Width]
type = Width
trigger1 = AnimElem = 1 && FrontEdgeDist < 45
edge = 45,20

[State 1751,TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 14
trigger3 = AnimElem = 27
value = -32

[state 1751, fatality]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 1751,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;axe kick1
[Statedef 1710]
type    = A
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 241
poweradd = 100

[State 1710,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2, 1

[State 1710, Velset]
type = VelSet
trigger1 = AnimElem = 4
x = 4
y = -4

[State 1710, VelAdd]
type = VelAdd
trigger1 = AnimElem = 9
y = 10.5
x = 2

[State 1710, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1710,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,3

[State 1710,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10, 22
channel = 0

[State 1710, sxia]
type = Explod
trigger1 = AnimElem = 5
anim = 6014
pos = 5,10
postype = p1
sprpriority = 5
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1710, sxia]
type = Explod
trigger1 = AnimElem = 4
anim = 70891
pos = 35,5
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 1

[State 1710,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = Hard
damage    = 80,9
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 27,29
sparkno = S7003
sparkxy = -5,-65
hitsound = S1,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -2,-12
air.velocity = -2,-9.5
guard.velocity = -9.0
envshake.time = 18
envshake.freq = 60
envshake.ampl = -4
yaccel = .5
air.fall = 1
fall = 1
fall.recover = 0
fall.damage = 10
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 10
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 1710,ChangeState]
type = ChangeState
triggerAll = time >= 10
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1711
ctrl = 0

[Statedef 1711]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 242

[State 1711, Velset]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1711, VelAdd]
type = VelAdd
trigger1 = Time = 0
y = 0
x = 0

[State 1711,polvere]
type = Explod
trigger1 = Time = 0
anim = 7084
pos = -20,2
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 1711]
type = AfterImage
trigger1 = Time = 0
time = 1
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1711, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1711,PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 2, 2

[State 1711,ChangeState]
type = ChangeState
trigger1 = Animtime= 0
value = 0
ctrl = 1

;--------------------------------------------
;--------------------------------------------
;--------------------------------------------

;axe kick2
[Statedef 1712]
type    = A
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 241
poweradd = 100

[State 1712,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2, 1

[State 1712, Velset]
type = VelSet
trigger1 = AnimElem = 4
x = 4.5
y = -5

[State 1712, VelAdd]
type = VelAdd
trigger1 = AnimElem = 9
y = 11.5
x = 2.5

[State 1712, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1712,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,3

[State 1712,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10, 22
channel = 0

[State 1712, sxia]
type = Explod
trigger1 = AnimElem = 5
anim = 6014
pos = 5,10
postype = p1
sprpriority = 5
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1712, sxia]
type = Explod
trigger1 = AnimElem = 4
anim = 70891
pos = 35,5
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 1

[State 1712, Brilla]
type = PalFX
trigger1 = AnimElem = 5
time = 15
add = 0,0,0
sinadd = 250,55,250,3

[State 1712,HitDef]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
attr = S, SA
animtype = Hard
damage    = 80,9
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 27,29
sparkno = S7002
sparkxy = -5,-25
hitsound = S1,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -2,-12
air.velocity = -2,-9.5
guard.velocity = -9.0
envshake.time = 18
envshake.freq = 60
envshake.ampl = -4
yaccel = .5
air.fall = 1
fall = 1
fall.recover = 0
fall.damage = 10
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 15
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 1712,ChangeState]
type = ChangeState
triggerAll = time >= 10
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1711
ctrl = 0

;--------------------------------------------
;--------------------------------------------
;--------------------------------------------
;axe kick3
[Statedef 1714]
type    = A
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 241
poweradd = 100

[State 1714,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2, 1

[State 1712, Velset]
type = VelSet
trigger1 = AnimElem = 4
x = 5
y = -6

[State 1712, VelAdd]
type = VelAdd
trigger1 = AnimElem = 9
y = 12.5
x = 3

[State 1714, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1714,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,3

[State 1714,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10, 22
channel = 0

[State 1714]
type = AfterImage
trigger1 = Time = 0
time = 60
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1714, sxia]
type = Explod
trigger1 = AnimElem = 5
anim = 6014
pos = 5,10
postype = p1
sprpriority = 5
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1714, sxia]
type = Explod
trigger1 = AnimElem = 6
anim = 6010
ID = 6010
pos = 50,-90
postype = p1
sprpriority = 6
ignorehitpause = 1
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100

[State 1714, removeEX]
type = RemoveExplod
triggerall = NumExplod(6010) >= 1
trigger1 = AnimElem = 8
ID = 6010

[State 1714, sxia]
type = Explod
trigger1 = AnimElem = 4
anim = 70891
pos = 35,5
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 1

[State 1714, Brilla]
type = PalFX
trigger1 = AnimElem = 5
time = 15
add = 0,0,0
sinadd = 250,55,250,3

[State 1714,HitDef]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
attr = S, SA
animtype = Hard
damage    = 80,9
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 27,29
sparkno = s6008
sparkxy = -10,-25
hitsound = S1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -2,-12
air.velocity = -2,-12
guard.velocity = -9.0
envshake.time = 18
envshake.freq = 60
envshake.ampl = -4
yaccel = .5
air.fall = 1
fall = 1
fall.recover = 0
fall.damage = 10
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 45
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 1714,ChangeState]
type = ChangeState
triggerAll = time >= 10
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1711
ctrl = 0

;--------------------------------------------
;--------------------------------------------
;--------------------------------------------
;--------------------------------------------
;--------------------------------------------
;--------------------------------------------
;--------------------------------------------
;--------------------------------------------
;--------------------------------------------
;--------------------------------------------
;--------------------------------------------
;--------------------------------------------
;--------------------------------------------
;--------------------------------------------

;---------------------------------------------
;---------------------------------------------
;Super Moves
;---------------------------------------------
;---------------------------------------------

;---------------------------------------
;Super 1 - artigli del cobra 1
;---------------------------------------

[Statedef 3000]
type = S
movetype = A
physics = S
anim = 3001
velset = 0, 0
ctrl = 0
juggle = 5
poweradd= -1000

[State 3000, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3000,SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
time = 30
movetime = 30
anim = S7009
pos = 8, -75
sound = S5,2
darken = 0

[State 3000, Darken]
type = BGPalfx
trigger1 = AnimElem = 2
ignorehitpause = 1
time = 400
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3000,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 11
channel = 0

[State 3000,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 7

[State 3000, cosmo]
type = Explod
triggerall = NumExplod(1951) = 0
trigger1 = AnimElem = 2
pos = 0,2
anim = 1951
ID = 1951
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 35

[State 3000, luce]
type = Explod
triggerall = NumExplod(2250) = 0
trigger1 = AnimElem = 2
pos = 10,0
anim = 2250
ID = 2250
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 35


[State 3000, polvere]
type = Explod
trigger1 = AnimElem = 2
pos = 8,0
anim = 7010
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 35

[State 3000, cobra]
type = Explod
triggerall = NumExplod(6022) = 0
trigger1 = AnimElem = 2
pos = -350,0
anim = 6022
ID = 6022
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100

[State 3000,EnvColor]
type = EnvColor
trigger1 = Time = 5
value = 248,248,248
time = 15
under = 1

[State 3000,EnvColor]
type = EnvColor
trigger1 = AnimElem = 2
value = 0, 0, 0
time = 30
under = 1

[State 3000,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 3010

;------------------------
[Statedef 3010]
type = S
movetype = A
physics = N
anim = 3010
velset = 0, 0

[State 3010, scia]
type = Explod
trigger1 = Animelem = 3
anim = 7085
pos = 40,1
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State 3010, sfondo1]
type = Explod
triggerall = NumExplod(65) = 0
trigger1 = AnimElem = 1
pos = -320,150
anim = 6065
ID = 6065
postype = right
sprpriority = -6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3010,VelSet]
type = VelSet
trigger1 = 1
x = 9

[State 3010,PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = 1, 8

[State 3010,PlaySnd]
type = PlaySnd
trigger1 = TimeMod = 70, 0
value = 3, 2

[State 3010,PlaySnd]
type = PlaySnd
trigger1 = TimeMod = 70, 21
value = 3, 3

[State 3010,PlaySnd]
type = PlaySnd
trigger1 = TimeMod = 70, 47
value = 3, 4

[State 3010]
type = AfterImage
trigger1 = Time = 0
time = 100
length = 20
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 3010,HitDef]
type = Hitdef
trigger1 = Time = 0
attr = S, HA
animtype = Hard
hitflag = MA
guardflag = MA
priority = 8,Miss
damage = 0 ,20
getpower = 0
givepower = 0
sparkno = S7002
sparkxy = 0,-55
hitsound   = S1,5
guardsound = S6,0
pausetime = 12,12
ground.slidetime = 15
ground.type = High
ground.velocity = 0
guard.velocity = -5.0
air.velocity = -3.5,-6
yaccel = .5
fall = 1 
fall.recover = 0
p2facing = 1
p1stateno = 3030
p2stateno = 3040
p2getp1state = 1

[State 3010,ChangeState]
type = ChangeState
trigger1 = Time = 18 || moveguarded
value = 3020

[State 3010, sfondo]
type = Explod
triggerall = NumExplod(644) = 0
trigger1 = AnimElem = 1
pos = 0,-220
anim = 644
ID = 644
postype = p1
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1


;------------------------
[Statedef 3020]
type = S
movetype = I
physics = S
anim = 3020

[State 3020]
type = RemoveExplod
triggerall = NumExplod(6022) >= 1
trigger1 = Time = 0
ID = 6022

[State 3020,AfterImageTime]
type = AfterImageTime
trigger1 = Time = 0
time = 0

[State 3020, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 0
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3021]
type = Explod
trigger1 = AnimElem = 1
pos = 25,2
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 3020,End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------
[Statedef 3030]
type = S
movetype = A
physics = S
anim = 3030
velset = 0, 0
poweradd = 0
sprpriority = 1

[State 3010, sfondo]
type = Explod
triggerall = NumExplod(64) = 0
trigger1 = Time = 0
pos = 0,-220
anim = 6064
ID = 6064
postype = p1
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

[State 3030]
type = RemoveExplod
triggerall = NumExplod(6022) >= 1
trigger1 = Time = 0
ID = 6022

[State 3030]
type = RemoveExplod
triggerall = NumExplod(644) >= 1
trigger1 = Time = 0
ID = 644

[State 3030]
type = RemoveExplod
triggerall = NumExplod(64) >= 1
trigger1 = AnimElem = 64
ID = 6064

[State 3030, cobra]
type = Explod
triggerall = NumExplod(60233) = 0
trigger1 = AnimElem = 1
pos = -320,0
anim = 60233
ID = 60233
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150

[State 3030, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 150
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3030,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3030,AfterImageTime]
type = AfterImageTime
trigger1 = Time = 0
time = 0

[State 3030,Width]
type = Width
trigger1 = Time = 0 && FrontEdgeDist < 50
edge = 60,20

[State 3030,TargetBind]
type = TargetBind
trigger1 = AnimElem >= 1
pos = 50, 0

[State 3030,HitAdd]
type = HitAdd
trigger1 = AnimElem = 3  || AnimElem = 10 || AnimElem = 17
trigger2 = AnimElem = 28 || AnimElem = 37 || AnimElem = 47
trigger3 = AnimElem = 58 || AnimElem = 64 || AnimElem = 67
value = 1

[State 3030,TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3 
trigger2 = AnimElem = 10  
trigger3 = AnimElem = 17  
trigger4 = AnimElem = 19 
trigger5 = AnimElem = 32 
trigger6 = AnimElem = 40 
trigger7 = AnimElem = 42 
trigger8 = AnimElem = 51 
trigger9 = AnimElem = 56
value = -10
kill = 0

[State 3030,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 
trigger2 = AnimElem = 10  
trigger3 = AnimElem = 17  
trigger4 = AnimElem = 19 
trigger5 = AnimElem = 32 
trigger6 = AnimElem = 40 
trigger7 = AnimElem = 42 
trigger8 = AnimElem = 51 
trigger9 = AnimElem = 56
value = 1, 5

[State 3030,Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 2020
pos = 30,-65
postype = P1
sprpriority = 4
bindtime = 1
ownpal = 1

[State 3030,Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7003
pos = 30,-65
postype = P1
sprpriority = 3
bindtime = 1
ownpal = 1

[State 3030,Explod]
type = Explod
trigger1 = AnimElem = 10  
trigger2 = AnimElem = 17  
trigger3 = AnimElem = 19 
trigger4 = AnimElem = 32 
trigger5 = AnimElem = 40 
trigger6 = AnimElem = 42 
trigger7 = AnimElem = 51 
anim = 2020
pos = 65,-65
postype = P1
sprpriority = 4
bindtime = 1
ownpal = 1

[State 3030,Explod]
type = Explod
trigger1 = AnimElem = 10  
trigger2 = AnimElem = 17  
trigger3 = AnimElem = 19 
trigger4 = AnimElem = 32 
trigger5 = AnimElem = 40 
trigger6 = AnimElem = 42 
trigger7 = AnimElem = 51 
anim = 7003
pos = 65,-65
postype = P1
sprpriority = 3
bindtime = 1
ownpal = 1

[State 3030,Explod]
type = Explod
trigger1 = AnimElem = 56
anim = 7001
pos = 65,-60
postype = P1
sprpriority = 4
bindtime = 1
ownpal = 1

[State 3030,Explod]
type = Explod
trigger1 = AnimElem = 56
anim = 7003
pos = 65,-60
postype = P1
sprpriority = 3
bindtime = 1
ownpal = 1

[State 3030,Explod]
type = Explod
trigger1 = AnimElem = 65
anim = 7003
pos = 0,-90
postype = P2
sprpriority = 5
bindtime = 1
ownpal = 1
facing = -1

[State 3030,Explod]
type = Explod
trigger1 = AnimElem = 65
anim = 2020
pos = 0,-90
postype = P2
sprpriority = 5
bindtime = 1
ownpal = 1
facing = -1

[State 3030,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 63
value = 1, 5

[State 3030,HitDef]
type = HitDef
trigger1 = AnimElem = 65
attr = S, HA
animtype = DiagUp
damage    = 118
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 29,29
hitsound   = S1,3
guardsound = S6, 0
sparkno = s6161
sparkxy = -30,-90
ground.type = High
ground.slidetime = 7
ground.hittime  = 18
ground.velocity = -10,-8.5
guard.velocity = -5.0
air.velocity = -10,-8.5
yaccel = .45
fall = 1
fall.recover = 0
envshake.time = 20
envshake.freq = 60
envshake.ampl = -8
fall.damage =10
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 45
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 3030, hit]
type = Explod
trigger1 = AnimElem = 65
persistent = 0
anim = 6066
pos = -320,0
postype = right
sprpriority = -5
bindtime = 12
ignorehitpause = 1
ownpal = 1

[state 3030, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3030, Posadd]
type = Posadd
trigger1 = AnimElem = 67
x = 2

[State 3030, Posadd]
type = Posadd
trigger1 = AnimElem = 68
x = 8

[State 3030, Posadd]
type = Posadd
trigger1 = AnimElem = 69
trigger2 = AnimElem = 72
trigger3 = AnimElem = 73
trigger4 = AnimElem = 74
x = 12

[State 3030,TargetBind]
type = TargetState
trigger1 = AnimElem = 61
value = 3050

[State 3030,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------
[Statedef 3040]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 3040, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3040,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3040,PosAdd]
type = PosAdd
trigger1 = AnimElem = 3, = 1 || AnimElem = 10, = 1 || AnimElem = 17 ,=1
trigger2 = AnimElem = 19, = 1 || AnimElem = 32, = 1 || AnimElem = 42 ,=1
trigger3 = AnimElem = 43, = 1 || AnimElem = 51, = 1 || AnimElem = 60 ,=1
x = IfElse(Time % 2 = 0,2,-2)

[State 3040,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3040

;------------------------ 
[Statedef 3050]
type = S
movetype = H
physics = S
velset = 0, 0
ctrl = 0

[State 3050,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3050,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3050

[State 3050,PlayerPush]
type = PlayerPush
trigger1 = Time = [0,16]
value = 0

[State 3050,PosFreeze]
type = PosFreeze
trigger1 = Time = [0,16]

[State 3050,SelfState]
type = SelfState
trigger1 = Time = 20
value = 0
ctrl = 1

;-----------------------------------------------------
;-----------------------------------------------------
;-----------------------------------------------------
;-----------------------------------------------------
;-----------------------------------------------------
;-----------------------------------------------------
;-----------------------------------------------------
;cobra inkantatore
;-----------------------------------------------------
[Statedef 6000]
type = A
movetype = A
physics = S
anim = 550
velset = 0, 0
ctrl = 0
poweradd= -2000

[State 6000,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 5

[State 6000] 
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 6000]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 6000]
type = SuperPause
trigger1 = AnimElem = 8
time = 120
movetime = 120
anim = S70091
pos = 30,-120
sound = S5,2
darken = 0

[State 6000, cosmo]
type = Explod
trigger1 = time = 70
pos = -15,-90
anim = 6063
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 6000,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 10, 10
channel = 0

[State 6000, Darken]
type = BGPalfx
trigger1 = AnimElem = 5
ignorehitpause = 1
time = 200
mul = 0,0,0
add = 5,5,5
invertall = 0

[State 6000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
y = -22
X = 5

[State 6000, cosmo]
type = Explod
triggerall = NumExplod(1952) = 0
trigger1 = AnimElem = 8
pos = 0,0
anim = 1952
ID = 1952
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

[State 6000, scia]
type = Explod
trigger1 = Animelem = 4
anim = 7089
pos = 10,2
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 1
supermove = 1

[State 6000, cobra]
type = Explod
triggerall = NumExplod(6010) = 0
trigger1 = AnimElem = 5
pos = -160,-150
anim = 6022
ID = 6022
postype = p1
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 300

[State 6000, cobra]
type = Explod
trigger1 = AnimElem = 5
pos = -130,-20
anim = 6013
ID = 6013
postype = p1
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150

[State 6000, cobra]
type = Explod
trigger1 = AnimElem = 6
pos = -50,0
anim = 6013
ID = 6013
postype = p1
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150

[State 6000,ChangeState]
type = ChangeState
trigger1 = Time = 150
value = 6001
ctrl = 1

;---------------------------------
;zompo
[Statedef 6001]
type = A
movetype = A
physics = S
anim = 551
velset = 0, 0
ctrl = 0
poweradd= 0

[State 6001, scippo]
type = Explod
trigger1 = AnimElem = 2
pos = 80,10
anim = 60202
ID = 60202
sprpriority = 4
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .8,.8

[State 6001, scippo]
type = Explod
triggerall = NumExplod(6010) = 0
trigger1 = AnimElem = 2
pos = 50,-50
anim = 6010
ID = 6010
sprpriority = 4
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 15

[State 6000, cobra]
type = Explod
trigger1 = AnimElem = 3
triggerall = NumExplod(60223) = 0
pos = 0,-80
anim = 60233
ID = 60233
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150
Facing = -1

[State 6001, Darken]
type = BGPalfx
trigger1 = AnimElem = 2
ignorehitpause = 1
time = 200
mul = 50,50,50
add = 5,5,5
invertall = 0

[State 6001,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 8

[State 6001, removeEX]
type = RemoveExplod
triggerall = NumExplod(1952) >= 1
trigger1 = time = 0
ID = 1952

[State 6001, removeEX]
type = RemoveExplod
triggerall = NumExplod(6022) >= 1
trigger1 = movehit >= 1
trigger2 = AnimElem = 3
ID = 6022

[State 6001, cosmo]
type = Explod
triggerall = NumExplod(1953) = 0
trigger1 = time = 0
pos = 0,0
anim = 1953
ID = 1953
sprpriority = -2
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 6001, PosAdd]
type = PosAdd
trigger1 = time = 15
trigger2 = time = 18
trigger3 = time = 21
trigger4 = time = 24
y = 25
X = 20

[State 6001, PosSet]
type = PosSet
trigger1 = AnimElem = 6
y = 0

[State 6001] 
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 6001, Hit]
type = Explod
trigger1 = movehit >= 1
pos = -10,-80
anim = 7003
postype = p2
sprpriority = 4
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 6001, Hit]
type = Explod
trigger1 = movehit >= 1
pos = 5,-100
anim = 7003
postype = p2
sprpriority = 4
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 6001, Hit]
type = Explod
trigger1 = movehit >= 1
pos = 5,-100
anim = 2020
postype = p2
sprpriority = 5
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 6001, Hit]
type = Explod
trigger1 = movehit >= 1
pos = 20,-120
anim = 7003
postype = p2
sprpriority = 4
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 6001, Hit]
type = Explod
triggerall = NumExplod(6021) = 0
trigger1 = movehit >= 1
pos = -10,-50
anim = 6021
ID = 6021
postype = p2
sprpriority = 2
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150

[State 6001, Hit]
type = Explod
triggerall = NumExplod(60101) = 0
trigger1 = movehit >= 1
pos = -10,-80
anim = 60101
ID = 60101
postype = p2
sprpriority = 4
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150

[State 6001,HitDef]
type = Hitdef
trigger1 = AnimElem = 2
attr = S, HA
animtype = Hard
hitflag = MA
guardflag = MA
priority = 8,Miss
damage = 200,180
getpower = 0
givepower = 0
sparkno = -1
sparkxy = -30,0
hitsound   = S1,5
guardsound = S6,0
pausetime = 12,12
ground.slidetime = 15
ground.type = High
ground.velocity = 0
guard.velocity = 0.0
air.velocity = 0,0
yaccel = .5
fall = 0 
fall.recover = 0
p2facing = 1
p2stateno = 6003
Palfx.time          = 15
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[state 6001, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 6001,ChangeState]
type = ChangeState
triggerall = power >= 999
triggerall = movehit >= 1
trigger1 = AnimTime = 0
value = 6004
ctrl = 1

[State 6001,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 6002
ctrl = 1

;-------------------------
;end
[Statedef 6002]
type = A
movetype = A
physics = S
anim = 1112
velset = 0, 0
ctrl = 0
poweradd= 0

[State 6002, removeEX]
type = RemoveExplod
triggerall = NumExplod(60233) >= 1
trigger1 = time = 0
ID = 60233

[State 6002, removeEX]
type = RemoveExplod
triggerall = NumExplod(6022) >= 1
trigger1 = time = 0
ID = 6022

[State 6002, removeEX]
type = RemoveExplod
triggerall = NumExplod(6023) >= 1
trigger1 = time = 0
ID = 6023

[State 6002, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 6002,polvere]
type = Explod
trigger1 = Time = 0
anim = 7084
pos = 0,2
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6002, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 1
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 6002]
type = AfterImage
trigger1 = Time = 0
time = 1
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 6002,PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 2, 2

[State 6002,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------
;-------------------------
;-------------------------
;pl2 state
[Statedef 6003]
type = S
movetype = H
physics = S
velset = -15, 0
ctrl = 0

[State 6003,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3140

[State 6003, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 6003,LifeAdd]
type = LifeAdd
trigger1 = time >= 5 
value = -1
kill = 0

[State 6003, Brilla]
type = PalFX
trigger1 = AnimElem = 2
time = 30
add = 250,50,250
sinadd = -112,-122,-112,3

[State 6003, flash]
type = EnvColor
trigger1 = AnimElem = 2
value = 255,255,255
under = 0
time = 2

[State 6003, Darken]
type = BGPalfx
triggerAll = time <= 165
trigger1 = 1 
ignorehitpause = 1
time = 5
mul = 100,90,100
add = 5,5,5
invertall = 0

[State 6003,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 3

[State 6003,SelfState]
type = SelfState
trigger1 = Time = 165
value = 5100
ctrl = 1

;-------------------------
;-------------------------
;-------------------------
;eletrick shok cobra thunder spaccimoso punch
[Statedef 6004]
type = S
movetype = A
physics = S
anim = 552
velset = 0, 0
ctrl = 0
poweradd= -1000

[State 6004, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 6004]
type = AfterImage
trigger1 = time = 0
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 6004, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 300
mul = 50,50,50
add = 5,5,5
invertall = 0

[State 6004, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 6004, Velset]
type = VelSet
trigger1 = AnimElem = 2
x = 15
y = 0

[State 6004, Velset]
type = VelSet
trigger1 = AnimElem = 4
x = 0
y = 0

[State 6004,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 8

[State 6004,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 10, 20
channel = 0

[State 6004, cosmo]
type = Explod
triggerall = NumExplod(1954) = 0
trigger1 = AnimElem = 5
pos = 0,0
anim = 1954
ID = 1954
sprpriority = -2
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500

[State 6004, cosmo]
type = Explod
trigger1 = AnimElem = 2
pos = 51,-48
anim = 6001
sprpriority = -2
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 6004,polvere]
type = Explod
trigger1 = AnimElem = 2
anim = 7085
pos = 40,2
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 99, lampi]
type = BGPalfx
trigger1 = AnimElem = 555
ignorehitpause = 1
time = 100
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 6004, raio]
type = Projectile
trigger1 = AnimElem = 5
projanim = 554
projid = 554
projhits = 1000
projmisstime = 3
projpriority = 4
projremovetime = 100
projsprpriority = 3
offset = 55,-43
attr = S, HP
damage   = 10
getpower = 0
givepower = 0
animtype = heavy
guardflag = MA
hitflag = MAF
pausetime = 0,3
hitsound   = S1,6
sparkno = -1
sparkxy = 0,0
guardsound = S1,3
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8   
air.animtype = Back
air.velocity = -8,-1
air.juggle = 1
down.velocity = -10,0
down.hittime = 30
down.bounce = 0
envshake.time = 18
envshake.freq = 60
envshake.ampl = -4
yaccel = .5
air.fall = 1
fall = 1
fall.recover = 0
fall.damage = 32
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 45
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 6004, removeEX]
type = RemoveExplod
triggerall = NumExplod(6010) >= 1
trigger1 = projcontact554 = 1
ID = 6010

[State 6004, removeEX]
type = RemoveExplod
triggerall = NumExplod(6021) >= 1
trigger1 = projcontact554 = 1
ID = 6021

[State 6004, Hit]
type = Explod
triggerall = NumExplod(555) = 0
triggerall = projcontact554 = 1
trigger1 = 1
pos = -10,-20
anim = 555
ID = 555
postype = p2
sprpriority = 5
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 6004, Hit]
type = Explod
triggerall = NumExplod(6008) = 0
triggerall = projcontact554 = 1
trigger1 = 1
pos = 15,-65
anim = 6008
ID = 6008
postype = p2
sprpriority = 5
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 6004, Hit]
type = Explod
triggerall = NumExplod(2020) = 0
triggerall = projcontact554 = 1
trigger1 = 1
pos = -10,-55
anim = 2020
ID = 2020
postype = p2
sprpriority = 5
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[state 6004, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 6004,ChangeState]
type = ChangeState
trigger1 = Time = 120
value = 6005
ctrl = 1

[Statedef 6005]
type = S
movetype = A
physics = S
anim = 553
velset = 0, 0
ctrl = 0
poweradd= 0

[State 6005, removeEX]
type = RemoveExplod
triggerall = NumExplod(1954) >= 1
trigger1 = AnimElem = 3
ID = 1954

[State 6005, removeEX]
type = RemoveExplod
triggerall = NumExplod(6023) >= 1
trigger1 = AnimElem = 4
ID = 6023

[State 6005, removeEX]
type = RemoveExplod
triggerall = NumExplod(60233) >= 1
trigger1 = AnimElem = 3
ID = 60233

[State 6005, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 6005, Velset]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 6005, Darken]
type = BGPalfx
trigger1 = AnimElem = 1
ignorehitpause = 1
time = 30
mul = 80,80,80
add = 5,5,5
invertall = 0

[State 6005,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------
;-----------------------------------------------------
;-----------------------------------------------------
;-----------------------------------------------------
;-----------------------------------------------------
;-----------------------------------------------------
;-----------------------------------------------------
;Cobra Strangolante by Tux
;-----------------------------------------------------
[Statedef 6100]
type = A
movetype = A
physics = S
anim = 550
velset = 0, 0
ctrl = 0
poweradd = -3000

[State 6100,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 5

[State 6100] 
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 6100]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 6100]
type = SuperPause
trigger1 = AnimElem = 8
time = 120
movetime = 120
anim = S70091
pos = 30,-120
sound = S5,2
darken = 0

[State 6100, cosmo]
type = Explod
trigger1 = time = 70
pos = -15,-90
anim = 6063
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 6100,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 194,1
channel = 0

[State 6100, Darken]
type = BGPalfx
trigger1 = AnimElem = 5
ignorehitpause = 1
time = 150
mul = 0,0,0
add = 5,5,5
invertall = 0

[State 6100, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
y = -22
X = 5

[State 6100, cosmo]
type = Explod
triggerall = NumExplod(1952) = 0
trigger1 = AnimElem = 8
pos = 0,0
anim = 1952
ID = 1952
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

[State 6100, scia]
type = Explod
trigger1 = Animelem = 4
anim = 7089
pos = 10,2
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 1
supermove = 1

[State 6100, cobra]
type = Explod
triggerall = NumExplod(6010) = 0
trigger1 = AnimElem = 5
pos = -160,-150
anim = 6022
ID = 6022
postype = p1
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 300

[State 6100, cobra]
type = Explod
trigger1 = AnimElem = 5
pos = -130,-20
anim = 6013
ID = 6013
postype = p1
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150

[State 6100, cobra]
type = Explod
trigger1 = AnimElem = 6
pos = -50,0
anim = 6013
ID = 6013
postype = p1
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150

[State 6100,ChangeState]
type = ChangeState
trigger1 = Time = 150
value = 6101
ctrl = 1

[Statedef 6101]
type    = A
movetype= A
physics = S
velset = 0,0
ctrl = 0
juggle = 1
anim = 6100

[State 6101] 
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 6101]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay

[State 6101, removeEX]
type = RemoveExplod
triggerall = NumExplod(1952) >= 1
trigger1 = time = 0
ID = 1952

[State 6101, removeEX]
type = RemoveExplod
triggerall = NumExplod(6013) >= 1
trigger1 = time = 0
ID = 6013

[State 6101, removeEX]
type = RemoveExplod
triggerall = NumExplod(6022) >= 1
trigger1 = time = 0
ID = 6022

[State 6101, BG]
type = Explod
trigger1 = AnimElem = 1
triggerall = NumExplod(60223) = 0
pos = 0,-80
anim = 60233
ID = 60233
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 150
Facing = -1

[State 6101, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,1

[State 6101, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 10
trans = add
length = 10
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1

[State 6101, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 30
y = 15

[State 6101, HitDef]
type = HitDef
trigger1 = AnimElem = 1
priority = 6
attr = A, SA
damage = 100,180
getpower = 0
givepower = 0
animtype = medium
sparkno = s7003
sparkxy = -50,-50
hitsound = s1,1
pausetime = 7,7
ground.hittime = 7
ground.type = high
ground.slidetime = 7
ground.velocity = -1
air.velocity = -2,-3
envshake.time = 7           
envshake.ampl = 7
envshake.freq = 176
p2facing = 1
p2stateno = 6104
kill = 0
fall = 0

[State 6101, Cobra Low]
type = Explod
triggerall = NumExplod(6101) = 0
triggerall = Pos Y >= 0
trigger1 = P2StateNo = 6104
pos = -20,-10
anim = 6101
ID = 6101
postype = p2
sprpriority = 5
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
removetime = 112

[State 6101, Cobra High]
type = Explod
triggerall = NumExplod(6102) = 0
triggerall = Pos Y >= 0
trigger1 = P2StateNo = 6104
pos = -20,-10
anim = 6102
ID = 6102
postype = p2
sprpriority = -1
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1
removetime = 112

[State 6101]
type = ChangeState
triggerall = Pos Y >= 0
trigger1 = P2StateNo = 6104
value = 6102
ctrl = 0

[State 6101, removeEX]
type = RemoveExplod
triggerall = NumExplod(60233) >= 1
triggerall = Pos Y >= 0
trigger1 = P2StateNo != 6104
ID = 60233

[State 6101]
type = ChangeState
triggerall = Pos Y >= 0
trigger1 = P2StateNo != 6104
value = 0
ctrl = 1

[Statedef 6102]
type = S
movetype = A
physics = S
anim = 552
velset = 0, 0
ctrl = 0

[State 6102, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 6102]
type = AfterImage
trigger1 = time = 0
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 6102, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 300
mul = 50,50,50
add = 5,5,5
invertall = 0

[State 6102, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 6102, Velset]
type = VelSet
trigger1 = AnimElem = 2
x = 15
y = 0

[State 6102, Velset]
type = VelSet
trigger1 = AnimElem = 4
x = 0
y = 0

[State 6102,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 8

[State 6102, cosmo]
type = Explod
triggerall = NumExplod(1954) = 0
trigger1 = AnimElem = 5
pos = 0,0
anim = 1954
ID = 1954
sprpriority = -2
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500

[State 6102, cosmo]
type = Explod
trigger1 = AnimElem = 2
pos = 51,-48
anim = 6001
sprpriority = -2
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 6102,polvere]
type = Explod
trigger1 = AnimElem = 2
anim = 7085
pos = 40,2
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 6102, raio]
type = Projectile
trigger1 = AnimElem = 5
projanim = 554
projid = 554
projhits = 1000
projmisstime = 3
projpriority = 4
projremovetime = 100
projsprpriority = 3
offset = 55,-43
attr = S, HP
damage   = 100
getpower = 0
givepower = 0
animtype = heavy
guardflag = MA
hitflag = MAFP
pausetime = 0,3
hitsound   = S1,6
sparkno = -1
sparkxy = 0,0
guardsound = S1,3
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8   
air.animtype = Back
air.velocity = -8,-1
air.juggle = 1
down.velocity = -10,0
down.hittime = 30
down.bounce = 0
envshake.time = 18
envshake.freq = 60
envshake.ampl = -4
yaccel = .5
air.fall = 1
fall = 1
fall.recover = 0
fall.damage = 32
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 45
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 6102, removeEX]
type = RemoveExplod
triggerall = NumExplod(6010) >= 1
trigger1 = projcontact554 = 1
ID = 6010

[State 6102, removeEX]
type = RemoveExplod
triggerall = NumExplod(6021) >= 1
trigger1 = projcontact554 = 1
ID = 6021

[State 6102, Hit]
type = Explod
triggerall = NumExplod(555) = 0
triggerall = projcontact554 = 1
trigger1 = 1
pos = -10,-20
anim = 555
ID = 555
postype = p2
sprpriority = 5
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 6102, Hit]
type = Explod
triggerall = NumExplod(6008) = 0
triggerall = projcontact554 = 1
trigger1 = 1
pos = 15,-65
anim = 6008
ID = 6008
postype = p2
sprpriority = 5
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 6102, Hit]
type = Explod
triggerall = NumExplod(2020) = 0
triggerall = projcontact554 = 1
trigger1 = 1
pos = -10,-55
anim = 2020
ID = 2020
postype = p2
sprpriority = 5
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermove = 1

[State 6102,ChangeState]
type = ChangeState
trigger1 = Time = 120
value = 6103
ctrl = 1

[Statedef 6103]
type = S
movetype = A
physics = S
anim = 553
velset = 0, 0
ctrl = 0
poweradd= 0

[State 6103, removeEX]
type = RemoveExplod
triggerall = NumExplod(1954) >= 1
trigger1 = AnimElem = 3
ID = 1954

[State 6103, removeEX]
type = RemoveExplod
triggerall = NumExplod(6023) >= 1
trigger1 = AnimElem = 4
ID = 6023

[State 6103, removeEX]
type = RemoveExplod
triggerall = NumExplod(60233) >= 1
trigger1 = AnimElem = 3
ID = 60233

[State 6103, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 6103, Velset]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 6103, Darken]
type = BGPalfx
trigger1 = AnimElem = 1
ignorehitpause = 1
time = 30
mul = 80,80,80
add = 5,5,5
invertall = 0

[State 6103]
type = VarSet
trigger1 = P2Life <= 0
v = 15
value = 1

[State 6103,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------
;pl2 state
[Statedef 6104]
type = S
movetype = H
physics = S
velset = -15, 0
ctrl = 0

[State 6104,ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 3140

[State 6104, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 6104, Brilla]
type = PalFX
trigger1 = AnimElem = 2
time = 30
add = 250,50,250
sinadd = -112,-122,-112,3

[State 6104, flash]
type = EnvColor
trigger1 = AnimElem = 2
value = 255,255,255
under = 0
time = 2

[State 6104,SelfState]
type = SelfState
trigger1 = Time = 165
value = 5100
ctrl = 1

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;Super 2 - artigli del cobra 2
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

[Statedef 3200]
type = S
movetype = A
physics = S
anim = 3000
velset = 0, 0
ctrl = 0
juggle = 5
poweradd= -2000

[State 3200,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 10, 11
channel = 0

[State 3200,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 7

[State 3200, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3200,EnvColor]
type = EnvColor
trigger1 = Time = 10
value = 248,248,248
time = 15
under = 1

[State 3200,EnvColor]
type = EnvColor
trigger1 = AnimElem = 3
value = 0, 0, 0
time = 30
under = 1

[State 3200,SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
time = 42
movetime = 42
anim = S70091
pos = 28, -75
sound = S5,2
darken = 0

[State 3200, Darken]
type = BGPalfx
trigger1 = AnimElem = 3
ignorehitpause = 1
time = 400
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3200, cosmo]
type = Explod
triggerall = NumExplod(1951) = 0
trigger1 = AnimElem = 3
pos = 15,3
anim = 1951
ID = 1951
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 35

[State 3200, luce]
type = Explod
triggerall = NumExplod(2250) = 0
trigger1 = AnimElem = 3
pos = 15,0
anim = 2250
ID = 2250
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 35

[State 3200, polvere]
type = Explod
trigger1 = AnimElem = 3
pos = 15,0
anim = 7010
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 35

[State 3200, cobra]
type = Explod
triggerall = NumExplod(6022) = 0
trigger1 = AnimElem = 3
pos = -350,0
anim = 6022
ID = 6022
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100

[State 3200,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 32011
ctrl = 1

;----------------------------
;x1
[Statedef 32011]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1055
velset = 0, 0
poweradd = 0

[State 32011, cobra]
type = Explod
trigger1 = AnimElem = 3
triggerall = NumExplod(60233) = 0
pos = 0,-80
anim = 60233
ID = 60233
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 250
Facing = -1

[State 32011,PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = 1,8

[State 32011, removeEX]
type = RemoveExplod
triggerall = NumExplod(6022) >= 1
trigger1 = Time = 0
ID = 6022

[State 32011, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 100
mul = 0,0,0
add = 5,5,5
invertall = 0

[State 32011]
type = AfterImage
trigger1 = time = 0
time = 100
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 32011, scia]
type = Explod
trigger1 = Animelem = 3
anim = 127
pos = 55,8
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
supermove = 1

[State 32011,VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 25

[State 32011,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Hard
damage    = 100,80
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 0,80
hitsound = S1,5
guardsound = S6,0
sparkno = S2020
sparkxy = -25,-45
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = 0
guard.velocity = -2
air.velocity = 0,-6
yaccel = .5
kill = 0
envshake.time = 30
envshake.freq = 60
envshake.ampl = -8
Palfx.time          = 25
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 32011, Hit]
type = Explod
trigger1 = movehit >= 1
pos = -10,-45
anim = 7003
postype = p2
sprpriority = 3
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 32011, Hit]
type = Explod
trigger1 = movehit >= 1
pos = -10,-45
anim = 6008
postype = p2
sprpriority = 3
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 32011, luce]
type = Explod
triggerall = NumExplod(6001) = 0
trigger1 = AnimElem = 3
pos = 14,-41
anim = 6001
ID = 6001
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 32011,VelSet]
type = VelSet
trigger1 = movehit = 1
x = 30

[State 32011]
type = PlayerPush
trigger1 = movehit = 1
value = 0

[State 32011, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 32011, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 32011,ChangeState]
type = ChangeState
triggerall = movehit >= 1
trigger1 = AnimTime = 0
value = 32012
ctrl = 1

[State 32011,ChangeState]
type = ChangeState
triggerall = movehit = 0
trigger1 = AnimElem = 9
value = 32019
ctrl = 1

;----------------------------
;x2
[Statedef 32012]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1055
velset = 0, 0
poweradd = 0

[State 32012,PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = 1,8

[State 32012, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 100
mul = 0,0,0
add = 5,5,5
invertall = 0

[State 32012]
type = AfterImage
trigger1 = time = 0
time = 100
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 32012, scia]
type = Explod
trigger1 = Animelem = 3
anim = 127
pos = 55,8
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
supermove = 1

[State 32012,VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 25

[State 32012,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Hard
damage    = 100
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 0,80
hitsound = S1,5
guardsound = S6,0
sparkno = S2020
sparkxy = -25,-45
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = 0
guard.velocity = -2
air.velocity = 0,-6
yaccel = .5
kill = 0
envshake.time = 30
envshake.freq = 60
envshake.ampl = -8
Palfx.time          = 25
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 32012, Hit]
type = Explod
trigger1 = movehit >= 1
pos = -10,-45
anim = 7003
postype = p2
sprpriority = 3
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 32012, Hit]
type = Explod
trigger1 = movehit >= 1
pos = -10,-45
anim = 6008
postype = p2
sprpriority = 3
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 32012, luce]
type = Explod
triggerall = NumExplod(6002) = 0
trigger1 = AnimElem = 3
pos = 14,-41
anim = 6002
ID = 6002
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 32012,VelSet]
type = VelSet
trigger1 = movehit = 1
x = 30

[State 32012]
type = PlayerPush
trigger1 = movehit = 1
value = 0

[State 32012, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 32012, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 32012,ChangeState]
type = ChangeState
triggerall = movehit >= 1
trigger1 = AnimTime = 0
value = 32013
ctrl = 1

[State 32012,ChangeState]
type = ChangeState
triggerall = movehit = 0
trigger1 = AnimElem = 9
value = 32019
ctrl = 1

;----------------------------
;x3
[Statedef 32013]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1055
velset = 0, 0
poweradd = 0

[State 32013,PlaySnd]
type = PlaySnd
trigger1 = time = 4
value = 1,8

[State 32013, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 100
mul = 0,0,0
add = 5,5,5
invertall = 0

[State 32013]
type = AfterImage
trigger1 = time = 0
time = 100
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 32013, scia]
type = Explod
trigger1 = Animelem = 3
anim = 127
pos = 55,8
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
supermove = 1

[State 32013,VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 25

[State 32013,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Hard
damage    = 100
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 0,80
hitsound = S1,5
guardsound = S6,0
sparkno = S2020
sparkxy = -25,-45
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = 0
guard.velocity = -2
air.velocity = 0,-6
yaccel = .5
kill = 0
envshake.time = 30
envshake.freq = 60
envshake.ampl = -8
Palfx.time          = 25
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[State 32013, Hit]
type = Explod
trigger1 = movehit >= 1
pos = -10,-45
anim = 7003
postype = p2
sprpriority = 3
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 32013, Hit]
type = Explod
trigger1 = movehit >= 1
pos = -10,-45
anim = 6008
postype = p2
sprpriority = 3
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 32013, luce]
type = Explod
triggerall = NumExplod(6002) = 0
trigger1 = AnimElem = 3
pos = 14,-41
anim = 6002
ID = 6002
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 32013, luce]
type = Explod
triggerall = NumExplod(6001) = 0
trigger1 = AnimElem = 3
pos = 14,-41
anim = 6001
ID = 6001
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 32013,VelSet]
type = VelSet
trigger1 = movehit = 1
x = 30

[State 32013]
type = PlayerPush
trigger1 = movehit = 1
value = 0

[State 32013, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 32013, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 32013,ChangeState]
type = ChangeState
triggerall = movehit >= 1
trigger1 = AnimTime = 0
value = 32014
ctrl = 1

[State 32013,ChangeState]
type = ChangeState
triggerall = movehit = 0
trigger1 = AnimElem = 9
value = 32019
ctrl = 1

;----------------------------------
;FINAL
[Statedef 32014]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1960
velset = 0, 0
poweradd = 0

[State 32014,PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = 1,10

[State 32014,PlaySnd]
type = PlaySnd
trigger1 = Animelem = 2
value = 10,23
channel = 0

[State 32014,VelSet]
type = VelSet
trigger1 = Time = 0
Y = 0
X = 0

[State 32014, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 32014, Position]
type = PosAdd
trigger1 = AnimElem = 2
x = (P2BodyDist X - 5)
y = -120

[State 32014,VelSet]
type = VelSet
trigger1 = AnimElem = 5
Y = 10
X = 0

[State 32014]
type = PlayerPush
trigger1 = movehit = 1
value = 0

[State 32014, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 100
mul = 0,0,0
add = 5,5,5
invertall = 0

[State 32014]
type = AfterImage
trigger1 = time = 0
time = 100
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 32014,HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Hard
damage    = 75
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 20,20
hitsound = S1,3
guardsound = S6,0
sparkno = S2020
sparkxy = -15,-45
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = 0
guard.velocity = 0
air.velocity = 0,0
yaccel = .5
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
p2facing = 1                 
fall = 1
fall.recover = 0             
fall.damage = 25             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 35
Palfx.add           = 250,50,250
Palfx.sinadd        = -112,-122,-112,3

[state 32014, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 32014, Hit]
type = Explod
trigger1 = movehit >= 1
pos = 0,-45
anim = 7003
postype = p2
sprpriority = 3
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 32014, Hit]
type = Explod
trigger1 = movehit >= 1
pos = 0,-45
anim = 555; 6008
postype = p2
sprpriority = 3
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 32014, luce]
type = Explod
triggerall = NumExplod(6003) = 0
trigger1 = AnimElem = 4
pos = 0,2
anim = 6003
ID = 6003
postype = p2
sprpriority = -4
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 32014, luce]
type = Explod
trigger1 = AnimElem = 4
anim = 7010
pos = 0,2
postype = p2
sprpriority = -5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 36

[State 32014,ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 32015
ctrl = 0

;----------------------------------
;END
[Statedef 32015]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1961
velset = 0, 0
poweradd = 0

[State 32015, polvere]
type = Explod
trigger1 = Time = 0
postype = p1
pos = 40,5
anim = 128
sprpriority = 2
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 32015, polvere]
type = Explod
trigger1 = Time = 0
postype = p1
pos = -5,5
anim = 127
sprpriority = 2
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 32015, polvere]
type = Explod
trigger1 = Time = 0
postype = p1
pos = 0,0
anim = 4220
sprpriority = 3
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 32015, removeEX]
type = RemoveExplod
triggerall = NumExplod(60233) >= 1
trigger1 = Time = 5
ID = 60233

[State 32015,PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 1,12

[State 32015, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 10
mul = 80,80,80
add = 5,5,5
invertall = 0

[State 32015, lampi]
type = BGPalfx
trigger1 = Time = 5
ignorehitpause = 1
time = 20
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 32015]
type = AfterImage
trigger1 = time = 0
time = 1
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 32015, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 32015,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------ 
;end non acchiappa
[Statedef 32019]
type = S
movetype = A
physics = S
anim = 1962
velset = 6, 0
ctrl = 0
juggle = 5
poweradd = 0

[State 32019, removeEX]
type = RemoveExplod
triggerall = NumExplod(60233) >= 1
trigger1 = Time = 0
ID = 60233

[State 32019, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 32019,PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 5,5

[State 32019, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 5
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 32019]
type = AfterImage
trigger1 = time = 0
time = 20
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 32019, scia]
type = Explod
trigger1 = Animelem = 4
anim = 7084
pos = 25,1
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
supermove = 1

[State 32019,ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------

;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;Graffi al Volto by Tux
[Statedef 1400]
type = S
movetype= A
physics = S
anim = 1970
poweradd = 100
juggle = 5
velset = 0,0
ctrl = 0
sprpriority = 2

[State 1400]
type = PlaySnD
trigger1 = AnimElem = 1
value = 0,2

[State 1400]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10,22

[State 1400]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = hard
damage    = 90,9
getpower = 0
givepower = 0
guardflag = MA
pausetime = 6,12
sparkno = S2400
guard.sparkno = 40
sparkxy = -35,-90
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = 0,0
air.velocity = -2,-4

[State 1400]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Cobra Air Kick 1 by Tux
[Statedef 1500]
type    = A
movetype= A
physics = A
velset = 0,0
ctrl = 0
juggle = 1
anim = 51010
poweradd = 100

[State 1500,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 22
channel = 0

[State 1500,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1

[State 1500,AfterImage]
type = AfterImage
trigger1 = AnimElem = 3
time = 10
trans = add
length = 10
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1

[State 1500,VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 20
y = 15

[State 1500,HitDef]
type = HitDef
trigger1 = AnimElem = 4
priority = 6
attr = A, SA
damage = 80,8
getpower = 0
givepower = 0
animtype = medium
guardflag = HA
sparkno = s7001
sparkxy = -10,-40
hitsound = s1,1
guardsound = S6,0
pausetime = 7,7
ground.hittime = 7
ground.type = high
ground.slidetime = 7
ground.velocity = -10
air.velocity = -3,-3
envshake.time = 7           
envshake.ampl = 7
envshake.freq = 176
fall = 0

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Cobra Air Kick 2 by Tux
[Statedef 1510]
type    = A
movetype= A
physics = A
velset = 0,0
ctrl = 0
juggle = 1
anim = 51010
poweradd = 100

[State 1510,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 23
channel = 0

[State 1510,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1

[State 1510,AfterImage]
type = AfterImage
trigger1 = AnimElem = 3
time = 10
trans = add
length = 10
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1

[State 1510,VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 20
y = 15

[State 1510,HitDef]
type = HitDef
trigger1 = AnimElem = 4
priority = 6
attr = A, SA
damage = 75,8
getpower = 0
givepower = 0
animtype = hard
guardflag = HA
sparkno = s7002
sparkxy = -10,-40
hitsound = s1,2
guardsound = S6,0
pausetime = 12,12
ground.hittime = 13
ground.type = high
ground.slidetime = 9
ground.velocity = -10
air.velocity = -3,-3
envshake.time = 15           
envshake.ampl = 7
envshake.freq = 176
fall = 1   
fall.damage = 5            
fall.envshake.ampl = 6       
fall.envshake.freq = 125
fall.envshake.time = 15

;---------------------------------------------
;---------------------------------------------
;---------------------------------------------
;Cobra Air Kick 3 by Tux
[Statedef 1520]
type    = A
movetype= A
physics = A
velset = 0,0
ctrl = 0
juggle = 1
anim = 1520
poweradd = 100

[State 1520,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 22
channel = 0

[State 1520,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1

[State 1520,AfterImage]
type = AfterImage
trigger1 = AnimElem = 3
time = 10
trans = add
length = 10
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1

[State 1520,VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 20
y = 15

[State 1520,HitDef]
type = HitDef
trigger1 = AnimElem = 4
priority = 6
attr = A, SA
damage = 20,8
getpower = 0
givepower = 0
animtype = light
guardflag = HA
sparkno = s7001
sparkxy = -10,-40
hitsound = s1,1
guardsound = S6,0
pausetime = 0,7
ground.hittime = 7
ground.type = high
ground.slidetime = 7
ground.velocity = -5
air.velocity = -1,-3
envshake.time = 7           
envshake.ampl = 7
envshake.freq = 176
fall = 0

[State 1520,ChangeState]
type = ChangeState
triggerall = MoveHit
trigger1 = P2StateType = S
trigger1 = Pos Y >= -20
value = 1521
ctrl = 0

;---------------------------------------------
;Cobra Air Kick 3 by Tux - Final Hit
[Statedef 1521]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
juggle = 1
anim = 47
poweradd = 0

[State 1521,PosSet]
type = PosSet
trigger1 = Time = 0
Y = 0

[State 1521,ChangeAnim]
type = ChangeAnim
triggerall = Anim = 47
trigger1 = AnimTime = 0
value = 243

[State 1521,PlaySnd]
type = PlaySnd
triggerall = Anim = 243
trigger1 = AnimElem = 4
value = 10, 20
channel = 0

[State 1521,HitDef]
type = HitDef
triggerall = Anim = 243
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Hard
damage    = 60,9
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 10,10
sparkno = S70041
sparkxy = -10,-50
hitsound = S1,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -15,-4
air.velocity = -8.5,-6
fall.damage = 10
fall = 0
fall.recover = 0
air.velocity = -20,-4
envshake.time =8
envshake.freq = 60
envshake.ampl = -5
envshake.phase = 90
p2stateno = 1025

[State 1521,ChangeState]
type = ChangeState
triggerall = Anim = 243
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
; player 2 state
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------

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

;----------------------------------
;player2 on air
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

;------------------------------------------
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
value = 240,0

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

;-----------------------------------------------------
; explosion spin
[Statedef 70002]
type    = A
movetype= H 
physics = N

[State 7002]
type = ChangeAnim2
trigger1 = 1
value = 11001

[State 7002]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 7002]
type = VelAdd
Trigger1 = Time >= 0
y = .3

[State 7002]
type = Offset
Trigger1 = Time >= 1
y = -50

[State 7002]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 7002]
type = AngleAdd
trigger1 = Time >= 1
value = 22.5

[State 7002]
type = AngleDraw
trigger1 = Time >= 1
trigger1 = Pos Y <= 10

[State 7002 ouch] 
type = SelfState
Trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = time = 150
value = 5100

;---------------------------------------------------------------------------
; Presa Rotante - Inizio
[Statedef 1270]
type    = U
movetype= A
physics = N
juggle  = 3
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1270
sprpriority = 0

[State 1270]
type = VarSet
trigger1 = Time = 0
var(1) = 0

[State 1270]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0

[State 1270]
type = HitDef
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = MA          ;Affect only ground people who are not being hit
priority = 3, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
p1sprpriority = 1     ;Draw p1's sprite in front of p2
                      ;p2's sprite priority is set to 0 by default
p1facing = 1
p2facing = 1          ;Force p2 to face p`
p1stateno = 21270+(StateType = A)
p2stateno = 21280+(StateType = A)
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
hitsound = s1,11
id = 800
guardflag = MA
guardsound = -1
sparkxy = -10,-60

[State 1270]
type = ChangeState
trigger1 = AnimTime = 0 && StateType != A
value = 1271
ctrl = 1

[State 1270]
type = ChangeState
trigger1 = AnimTime = 0 && StateType = A
value = 1272
ctrl = 0

;---------------------------------------------------------------------------
; Presa Rotante - Fine
[Statedef 1271]
type    = S
movetype= I
physics = N
juggle  = 3
;poweradd= 60
ctrl = 0
velset = 0,0
anim = 0
sprpriority = 0
;facep2 = 1

[State 1271]
type = ChangeState
trigger1 = time = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Presa Rotante - Fine (in aria)
[Statedef 1272]
type    = A
movetype= I
physics = A
juggle  = 3
;poweradd= 60
ctrl = 0
velset = 0,0
anim = 5040
sprpriority = 0
;facep2 = 1

[State 1272]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
; Presa Rotante - Stato p1 (1)
[Statedef 21270]
type    = U
movetype= A
physics = N
anim = 1271
poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21270]
type = NotHitBy
trigger1 = 1
value = SCA

[State 21270]
type = Helper
trigger1 = Time = 4
stateno = 21276
ownpal = 1
size.xscale = 1.5
size.yscale = 1.5

[State 21270]
type = Helper
trigger1 = Time = 4
stateno = 21277
ownpal = 1
size.xscale = 1.5
size.yscale = 1.5

[State 21270]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 21270]
type = TargetBind
trigger1 = AnimElemNo(0) = 1 || AnimTime = 0
pos = -62-(abs(EnemyNear, const(size.mid.pos.y))),-49

[State 21270]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 62+(abs(EnemyNear, const(size.mid.pos.y))),-49

[State 21270]
type = PlaySnd
trigger1 = Time = 0
value = 10,20

[State 21270]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,5

[State 21270]
type = VarSet
trigger1 = Time = 0
var(1) = 0

[State 21270]
type = VarAdd
trigger1 = AnimElem = 2
var(1) = 1

[State 21270]
type = PowerAdd
trigger1 = AnimElem = 12
value = 10

[State 21270]
type = TargetState
trigger1 = var(1) > 3
value = 21281

[State 21270]
type = ChangeState
trigger1 = var(1) > 3
value = 21271
ctrl = 0

[State 21270]
type = ChangeState
trigger1 = !NumTarget(800)
value = 0+635*(StateType = A)
ctrl = 1

;---------------------------------------------------------------------------
; Presa Rotante - Stato p1 (2)
[Statedef 21271]
type    = U
movetype= A
physics = N
anim = 1272
;poweradd = 60
juggle  = 0
velset = 0,-3-4*(var(1) > 2)
ctrl = 0
sprpriority = 0

[State 21271]
type = NotHitBy
trigger1 = 1
value = SCA

[State 21271]
type = Helper
trigger1 = Time = 0
stateno = 21278
ownpal = 1
size.xscale = 1.5
size.yscale = 1.5

[State 21271]
type = Helper
trigger1 = Time = 0
stateno = 21279
ownpal = 1
size.xscale = 1.5
size.yscale = 1.5

[State 21271]
type = VelMul
trigger1 = Pos Y < -120
y = 0.2

[State 21271]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 21271]
type = TargetBind
trigger1 = AnimElemNo(0) = 1 || AnimTime = 0
pos = -50,-115

[State 21271]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 70+(abs(EnemyNear, const(size.mid.pos.y))),-42

[State 21271]
type = PlaySnd
trigger1 = Time = 0
value = 10,20

[State 21271]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,3

[State 21271]
type = VarSet
trigger1 = Time = 0
var(2) = 0

[State 21271]
type = VarAdd
trigger1 = AnimElem = 2
var(2) = 1

[State 21271]
type = PowerAdd
trigger1 = AnimElem = 12
value = 50

[State 21271]
type = TargetState
trigger1 = AnimElem = 2 && var(1) > 3 && var(2) > 1
trigger2 = var(2) > 4
value = 21282

[State 21271]
type = ChangeState
trigger1 = AnimElem = 2 && var(1) > 3  && var(2) > 1
trigger2 = var(2) > 4
value = 21272
ctrl = 0

[State 21271]
type = ChangeState
trigger1 = !NumTarget(800)
value = 0+635*(StateType = A)
ctrl = 1

;---------------------------------------------------------------------------
; Presa Rotante - Stato p1 (3)
[Statedef 21272]
type    = U
movetype= A
physics = N
anim = 1273
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21272, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 1
value = -60

[State 21272]
type = NotHitBy
trigger1 = 1
value = SCA

[State 21272]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 21272]
type = TargetBind
trigger1 = AnimElemNo(0) = 1
pos = 42,-118

[State 21272]
type = TargetBind
trigger1 = AnimElemNo(0) = 2
pos = 78+(abs(EnemyNear, const(size.mid.pos.y))),-59

[State 21272]
type = TargetBind
trigger1 = AnimElemNo(0) = 3
pos = 96+(abs(EnemyNear, const(size.mid.pos.y))),-78

[State 21272]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,5

[State 21272]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,3

[State 21272]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1

[State 21272]
type = PlaySnd
trigger1 = AnimTime = 0
value = 1,3

[State 21272]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -6

[State 21272]
type = PowerAdd
trigger1 = AnimElem = 3
value = 20

[State 21272]
type = TargetState
trigger1 = AnimElem = 3, = 1
value = 21285

[State 21272]
type = ChangeState
trigger1 = AnimElem = 3, = 1
value = 21275
ctrl = 0

[State 21272]
type = ChangeState
trigger1 = !NumTarget(800)
value = 0+635*(StateType = A)
ctrl = 1

;---------------------------------------------------------------------------
; Presa Rotante - Stato p1 (finale)
[Statedef 21275]
type    = A
movetype= I
physics = A
;anim = 1273
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 0

[State 21275]
type = ChangeAnim
trigger1 = AnimTime = 0
value = ifelse (facing = -1, 10041, 41)
elem = 3
persistent = 0

[State 21275]
type = ChangeState
trigger1 = Pos Y = 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
; Presa Rotante - Onda 1a
[Statedef 21276]
type    = S
movetype= I
physics = N
anim = 21270
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2

[State 21276]
type = DestroySelf
trigger1 = Parent,Stateno != 21270

[State 21276]
type = BindToParent
trigger1 = 1
pos = 0,-85

;---------------------------------------------------------------------------
; Presa Rotante - Onda 2a
[Statedef 21277]
type    = S
movetype= I
physics = N
anim = 21271
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = -2

[State 21277]
type = DestroySelf
trigger1 = Parent,Stateno != 21270

[State 21277]
type = BindToParent
trigger1 = 1
pos = 0,-85

;---------------------------------------------------------------------------
; Presa Rotante - Onda 1b
[Statedef 21278]
type    = S
movetype= I
physics = N
anim = 21270
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2

[State 21278]
type = AngleDraw
trigger1 = 1
value = -15

[State 21278]
type = DestroySelf
trigger1 = Parent,Stateno != 21271

[State 21278]
type = BindToParent
trigger1 = 1
pos = 0,-85

;---------------------------------------------------------------------------
; Presa Rotante - Onda 2b
[Statedef 21279]
type    = S
movetype= I
physics = N
anim = 21271
;poweradd = 60
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = -2

[State 21279]
type = AngleDraw
trigger1 = 1
value = -15

[State 21279]
type = DestroySelf
trigger1 = Parent,Stateno != 21271

[State 21279]
type = BindToParent
trigger1 = 1
pos = 0,-85

;---------------------------------------------------------------------------
; Presa Rotante - Stato p2 (1)
[Statedef 21280]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -1

[State 21280]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 21280]
type = ChangeAnim2
trigger1 = Time = 0
value = 1275

[State 21280]
type = Turn
trigger1 = enemynear,facing = facing

[State 21280]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[State 21280]
type = DestroySelf
trigger1 = ishelper

;---------------------------------------------------------------------------
; Presa Rotante - Stato p2 (2)
[Statedef 21281]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -1

[State 21281]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 21281]
type = ChangeAnim2
trigger1 = Time = 0
value = 1276

[State 21281]
type = Turn
trigger1 = enemynear,facing = facing

[State 21281]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[State 21281]
type = DestroySelf
trigger1 = ishelper

;---------------------------------------------------------------------------
; Presa Rotante - Stato p2 (3)
[Statedef 21282]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -1

[State 21282]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 21282]
type = ChangeAnim2
trigger1 = Time = 0
value = 1277

[State 21282]
type = Turn
trigger1 = enemynear,facing = facing

[State 21282]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[State 21282]
type = DestroySelf
trigger1 = ishelper

;---------------------------------------------------------------------------
; Presa Rotante - Stato p2 (4)
[Statedef 21285]
type    = A
movetype= H
physics = N
;velset = -9,-3
poweradd = 60

[State 21285]
type = ChangeAnim2
trigger1 = Time = 0
value = 1280

[State 21285]
type = null;Turn
trigger1 = Time = 0

[State 21285]
type = VelSet
trigger1 = Time = 0
x = -29
y = -13

[State 21285] ;Gravity
type = VelAdd
trigger1 = 1
y = .4

[State 21285]
type = AfterImage
trigger1 = Time = 0
length = 5
timegap = 1
framegap = 1
PalBright   = 0,0,0
PalContrast = 100,100,100
PalMul      = 1,1,1
trans = Add1
time = 30

[State 21285]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10
trigger2 = FrontEdgeBodyDist <= 10
value = 1027

[State 21285] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; AI variabili (statedef -2)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
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


;---------- Hit ------------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 10,30

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 10,31

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10,32

[State -2]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10,32

[State -2]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 10,32

;---------- Colpi -----------

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 210
trigger1 = time = 1
value = 10,22

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 220
trigger1 = time = 1
value = 10,23

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 420
trigger1 = time = 1
value = 10,22

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 620
trigger1 = time = 1
value = 10,22

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 250
trigger1 = time = 1
value = 10,22

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 450
trigger1 = time = 1
value = 10,23

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 650
trigger1 = time = 1
value = 10,22

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Combo 
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------



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
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240) 
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 240) && (movecontact) 
value = 250

;combo calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240) 
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 240) && (movecontact) 
value = 1712

;combo calci 
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
value = 1714

;combo calci 
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
value = 1714

;calci combo
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
value = 255

;calci combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240) 
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 240) && (movecontact) 
value = 1110

;calci combo
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
value = 1150

;calci combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 250) 
trigger1 = (movecontact)
value = 1150

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;3 pugni abbasato
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

;3 calci abbasato
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

;combo abbasato 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400) 
trigger1 = (movecontact)
value = 440
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 440) && (prevstateno = 400) && (movecontact) 
value = 420

;combo abbasato 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 410
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 430) && (movecontact) 
value = 450

;combo calci abbasato 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 450
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 450) && (prevstateno = 430) && (movecontact) 
value = 440

;combo calci abbasato 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 440) 
trigger1 = (movecontact)
value = 450
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 450) && (prevstateno = 440) && (movecontact) 
value = 430
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;3 pugni in salto
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

;3 pugni in salto
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

;3 pugni in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 610
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 600) && (movecontact) 
value = 600

;3 CALCI in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 640
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 640) && (prevstateno = 630) && (movecontact) 
value = 650

;3 CALCI in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 650
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 650) && (prevstateno = 640) && (movecontact) 
value = 630

;3 CALCI in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 650) 
trigger1 = (movecontact)
value = 630
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 630) && (prevstateno = 650) && (movecontact) 
value = 640

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Special Moves
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;carica cosmo
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 49])
trigger1 = (P2bodydist X >= 150) && (power <= 2999) && (prevstateno != 5120) 
value = 7500

;Graffi al Collo
[State -2]
type = ChangeState
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [50, 74])
trigger1 = (P2bodydist X <= 40) && (prevstateno != 5120) 
value = 1400

;Presa Pugni
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [75, 99])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) 
value = 800

;Presa calci
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [100, 124])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 850

;scatto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [125, 149])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120)
value = 1060

;Cobra Air Kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [150, 174])
trigger1 = (P2bodydist X >= 100) && (P2bodydist X <= 200) && (prevstateno != 5120)
value = 1500

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [175, 199])
trigger1 = (P2bodydist X >= 110) && (P2bodydist X <= 200) && (prevstateno != 5120) 
value = 1510

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [200, 224])
trigger1 = (P2bodydist X >= 120) && (P2bodydist X <= 200) && (prevstateno != 5120)
value = 1520

;scivolata
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [225, 249])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120) 
value = 4050

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [250, 274])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 4150

;Cobra Uppercut
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [275, 299])
trigger1 = (P2bodydist X >= 100) && (P2bodydist X <= 200) && (prevstateno != 5120)
value = 1210

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [300, 324])
trigger1 = (P2bodydist X >= 110) && (P2bodydist X <= 200) && (prevstateno != 5120) 
value = 1211

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [325, 349])
trigger1 = (P2bodydist X >= 120) && (P2bodydist X <= 200) && (prevstateno != 5120)
value = 1212

;Cobra Punch
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [350, 374])
trigger1 = (P2bodydist X <= 70) && (prevstateno != 5120) 
value = 225

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [375, 399])
trigger1 = (P2bodydist X <= 90) && (prevstateno != 5120) 
value = 4500

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [400, 424])
trigger1 = (P2bodydist X <= 110) && (prevstateno != 5120)
value = 1220

;snake Punch
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [425, 449])
trigger1 = (P2bodydist X <= 60) && (prevstateno != 5120) 
value = 1020

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [450, 474])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 1021

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [475, 499])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120) 
value = 1030

;Cobra Combo Kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [500, 524])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120) 
value = 255

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [525, 549])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120)
value = 1110

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [550, 574])
trigger1 = (P2bodydist X <= 125) && (prevstateno != 5120) 
value = 1150

;Cobra Combo Kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [575, 599])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 1710

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [600, 624])
trigger1 = (P2bodydist X <= 130) && (prevstateno != 5120) 
value = 1712

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [625, 649])
trigger1 = (P2bodydist X <= 160) && (prevstateno != 5120) 
value = 1714

;Cobra Axe Kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [650, 674])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120) && (p2statetype = A) 
value = 1710

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [675, 699])
trigger1 = (P2bodydist X <= 120) && (prevstateno != 5120) && (p2statetype = A) 
value = 1712

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [700, 724])
trigger1 = (P2bodydist X <= 140) && (prevstateno != 5120) && (p2statetype= A) 
value = 1714

;Special Presa
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [725, 749])
trigger1 = (P2bodydist X >= 80) && (prevstateno != 5120) 
value = 1000

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [750, 774])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120)
value = 1202

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [775, 799])
trigger1 = (P2bodydist X >= 120) && (prevstateno != 5120)
value = 1750

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [800,824])
value = 195

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Super Moves
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;level 1
;Artigli del Cobra1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 150) && (power >= 1000) && (power < 2000) && (random = [825,849])
value = 3000

;level 2
;Artigli del Cobra2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 200) && (power >= 2000) && (random = [850,874])
value = 3200

;Cobra Incantatore
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 100) && (p2bodydist X <= 180) && (power >= 3000) && (random = [875,899])
value = 6000

;Cobra Strangolante
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (P2Life <= 250)
trigger1 = (p2bodydist X >= 100) && (p2bodydist X <= 180) && (power >= 3000) && (random = [900,924])
value = 6100

;---------------------------------------------------------------------------

[Statedef -3]

[State -3, AI Activate]
type = VarSet
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
var(59) = 1

;-------------------------------------

[State -3, remove cosmo]
type = RemoveExplod
triggerall = numexplod(2) >= 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life <= 250
ID = 2

[State -3, remove cosmo]
type = RemoveExplod
triggerall = numexplod(3) >= 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life > 250
ID = 3

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(60101) >= 1
trigger1 = p2stateno != 6003
ID = 60101

[State -3, remove cosmo2]
type = RemoveExplod
triggerall = NumExplod(6021) >= 1
trigger1 = p2stateno != 6003
ID = 6021

;---------------------------------------

[State -3, Cosmo 1]
type = Explod
triggerall = stateno = 0
triggerall = power >= 3000
triggerall = numexplod(2) >= 0
trigger1 = time = 1
anim = 2
ID = 2
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State -3, Cosmo 1]
type = RemoveExplod
triggerall = numexplod(2) >= 1
trigger1 = stateno != 0
ID = 2

[State -3, Cosmo 1]
type = RemoveExplod
triggerall = numexplod(2) >= 1
trigger1 = anim = 5
ID = 2

[State -3, Cosmo 2]
type = Explod
triggerall = life <= 250
triggerall = power >= 3000
triggerall = numexplod(3) = 0
triggerall = stateno = 0
trigger1 = time = 0
anim = 3
ID = 3
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State -3, Cosmo 2]
type = RemoveExplod
triggerall = numexplod(3) >= 1
trigger1 = stateno != 0
ID = 3

[State -3, Cosmo 2]
type = RemoveExplod
triggerall = numexplod(3) >= 1
trigger1 = anim = 5
ID = 3

;---------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 3
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 3
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 6
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 6
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

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = 2, 1

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = F2, 1

[State -3, AirJump]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = time = 1
value = 2, 2

;---------------------------------------

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = time = 1
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

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
trigger1 = AnimElem = 4
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
trigger1 = TimeMod = 70, 0
value = 3, 2

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = TimeMod = 70, 21
value = 3, 3

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = TimeMod = 70, 47
value = 3, 4

;---------------------------------------

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = time = 1
value = 2, 0

[State -3, Run Back]
type = AfterImage
triggerall = stateno = 105
trigger1 = time = 1
time = 20
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State -3, Run Back]
type = Explod
triggerall = stateno = 105
trigger1 = time = 5
pos = -8,15
anim = 70841
sprpriority = 5
supermove = 1
removeongethit = 1
;scale = .8, .8
ownpal = 1

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 106
trigger1 = time = 1
value = 2, 2

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 106
trigger1 = time = 1
value = F2, 3

;---------------------------------------

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = 5148
trigger1 = time = 1
trigger2 = time = 10
trigger3 = time = 20
value = 11, 1

;---------------------------------------

[State -3, Stopsnd]
Type = Stopsnd 
Trigger1 = Power < 3000
Trigger2 = Stateno != 0
Channel = 9