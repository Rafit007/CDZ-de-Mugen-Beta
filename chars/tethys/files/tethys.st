;--------------------------------------------------
; Tethys St File by TonyADV
;--------------------------------------------------

;lose
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, Assert]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = roundnotover

[State 170]
type = PlaySnd
trigger1 = time = 0
value = 11, 0

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;win
[Statedef 180]
type = S

[State 180]
type = ChangeState
trigger1 = MatchOver = 0
value = 182

[State 180]
type = ChangeState
trigger1 = MatchOver = 1
value = 183

;-------------------------------------
;win1 - parla
[Statedef 182]
type = S
anim = 182
velset = 0,0
ctrl = 0

[State 182]
type = AssertSpecial
trigger1 = Time = [0,160]
flag = RoundNotOver

[State 182, Mouth]
type = Explod
trigger1 = Time = 10
anim = 186
ID = 186
pos = 1,3
postype = p1
bindtime = 110
sprpriority = 10
removetime = 120
removeongethit = 1

[State 182]
type = PlaySnd
trigger1 = Time = 10
value = 181, 0
channel = 0

[State 182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-------------------------------------
;win2 - si impunta
[Statedef 183]
type = S
anim = 183
velset = 0,0
ctrl = 0

[State 183]
type = AssertSpecial
trigger1 = Time = [0,190]
flag = RoundNotOver

[State 183, Mouth]
type = Explod
trigger1 = AnimElem = 6
anim = 186
ID = 186
pos = 0,0
postype = p1
bindtime = 130
sprpriority = 10
removetime = 140
removeongethit = 1

[State 183]
type = PlaySnd
trigger1 = AnimElem = 6
value = 183, 0
channel = 0

[State 183]
type = PlaySnd
trigger1 = AnimElem = 1
value = 191, 2

[State 183]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------

;intro
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

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

;-------------------------------------
;-------------------------------------
;-------------------------------------
;Intro1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191]
type = AssertSpecial
trigger1 = Time = [0,550]
flag = Intro

[State 191, cosmo]
type = Explod
triggerall = NumExplod(3074) = 0
trigger1 = time = 0
pos = -2,10
anim = 3074
ID = 3074
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 240

[State 191, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 2
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
removetime = 160

[State 191, light]
type = Explod
triggerall = NumExplod(8002) = 0
trigger1 = AnimElem = 14
pos = 0,-25
anim = 8002
ID = 8002
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 191, Mouth]
type = Explod
trigger1 = Time = 415
anim = 186
ID = 186
pos = 0,0
postype = p1
bindtime = 110
sprpriority = 10
removetime = 120
removeongethit = 1

[State 191]
type = PlaySnd
trigger1 = AnimElem = 1
value = 191, 0
channel = 0

[State 191]
type = PlaySnd
trigger1 = time = 415
value = 191, 1
channel = 0

[State 191]
type = PlaySnd
trigger1 = AnimElem = 1
value = 9, 0

[State 191]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 1

[State 191]
type = PlaySnd
trigger1 = AnimElem = 16
value = 4, 2

[State 191]
type = PlaySnd
trigger1 = AnimElem = 17
value = 191, 2

[State 191]
type = PlaySnd
trigger1 = AnimElem = 20
value = 4, 1

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

[State 191]
type = NotHitBy
trigger1 = 1
value = SCA

;-------------------------------------
;Intro no voice
[Statedef 192]
type = S
anim = 181
velset = 0,0
ctrl = 0

[State 192]
type = PlaySnd
trigger1 = AnimElem = 1
value = 182, 0
channel = 0

[State 192]
type = PlaySnd
trigger1 = AnimElem = 10
value = 0, 0

[State 192]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

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
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------
; Provocazione state decider
[Statedef 195]
type = S
velset = 0,0
ctrl = 0

[State 195]
type = VarRandom
trigger1 = time = 0
v = 2
range = 0,99

[State 195]
type = ChangeState
trigger1 = var(2) = [0,49]
value = 196

[State 195]
type = ChangeState
trigger1 = var(2) = [50,99]
value = 197

;--------------------------------------------------
;provocazione 1
[Statedef 196]
type = S
movetype = I
physics = S
anim = 196
velset = 0,0
ctrl = 0

[State 196, Mouth]
type = Explod
trigger1 = AnimElem = 2
anim = 186
ID = 186
pos = 6,0
postype = p1
bindtime = 300
sprpriority = 10
removetime = 300
removeongethit = 1

[State 196]
type = PlaySnd
trigger1 = AnimElem = 2
value = 196, 0
channel = 0

[State 196]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 0

[State 196]
type = PlaySnd
trigger1 = AnimTime = 0
value = 3, 0

[State 196]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;--------------------------------------------------
;provocazione 2
[Statedef 197]
type = S
movetype = I
physics = S
anim = 197
velset = 0,0
ctrl = 0

[State 197, Mouth]
type = Explod
trigger1 = AnimElem = 4
anim = 186
ID = 186
pos = 0,0
postype = p1
bindtime = 40
sprpriority = 10
removetime = 50
removeongethit = 1

[State 197, Mouth]
type = Explod
trigger1 = AnimElem = 16
anim = 186
ID = 186
pos = 0,0
postype = p1
bindtime = 40
sprpriority = 10
removetime = 50
removeongethit = 1

[State 197]
type = PlaySnd
trigger1 = AnimElem = 4
value = 197, 0
channel = 0

[State 197]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 0

[State 197]
type = PlaySnd
trigger1 = AnimElem = 20
value = 3, 0

[State 197]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;Pugno Debole
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 2
juggle = 2
velset = 0,0
ctrl = 0
anim = 200
PowerAdd = 50

[State 200]
type = PlaySnd
trigger1 = time = 5
value = 0,0

[State 200]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 20 
animtype = Light
guardflag = MA
hitflag = MAf
priority = 3, Hit
pausetime = 7,8
numhits = 1
sparkno = s7000
sparkxy = -10,-65
hitsound = S1,0
guardsound = S6,0 
ground.type = High
ground.slidetime = 5 
ground.hittime  = 11
ground.velocity = -5 
airguard.velocity = -1.9,-.8 
air.velocity = -2,-3
getpower = 0
givepower = 0

[State 200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;--------------------------------------------------
;Pugno Debole - vicino
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 201
PowerAdd = 50

[State 205]
type = PlaySnd
trigger1 = time = 5
value = 0,0

[State 205]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Light
damage    = 20
guardflag = MA
hitflag = MAF
pausetime = 7,8
sparkno = s7000
sparkxy = -20,-75
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 205]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;Pugno medio
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0
anim = 220
PowerAdd = 50

[State 210]
type = PlaySnd
trigger1 = time = 5
value = 0,1

[State 210]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
hitflag = MAF
pausetime = 7,8
sparkno = s7001
sparkxy = -10,-60
hitsound = S1,1
guardsound = S6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 210]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;pugno medio vicino
[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0
anim = 213
PowerAdd = 50

[State 215]
type = PlaySnd
trigger1 = time = 5
value = 0,1

[State 215]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
hitflag = MAF
pausetime = 7,8
sparkno = s7001
sparkxy = -15,-80
hitsound = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 215]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;--------------------------------------------------
;pugno forte (spallata)
[Statedef 220]
type    = S
movetype= A
physics = S
anim = 297
ctrl = 0
velset = 0,0
poweradd = 50

[State 220]
type = PlaySnd
trigger1 = time = 5
value = 0,2

[State 220]
type = PosAdd
trigger1 = Time = [1, 5]
x = 4

[State 220]
type = VelSet
trigger1 = AnimElem = 2
x = 2

[State 220]    
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 220]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 40
priority  = 5
animtype = Hard
guardflag = M
pausetime = 20,20
sparkno = s7004
sparkxy = -10,-67
hitsound = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 15
ground.velocity = -4.5,-4.5
air.velocity = -3.5,-5
fall = 1
envshake.time = 10           
envshake.ampl = 7
envshake.freq = 176
fall.recover = 0             
fall.damage = 5             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 220, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = 45,1
anim = 7085
sprpriority = 2
supermove = 1
ownpal = 1

[State 220]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;--------------------------------------------------
;Pugno forte vicino
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0
anim = 221
PowerAdd = 50

[State 225]
type = PlaySnd
trigger1 = time = 5
value = 0,2

[State 225]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
hitflag = MAF
pausetime = 7,8
sparkno = s7002
sparkxy = -15,-60
hitsound = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 225]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------

;Calcio Debole 
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0
anim = 210
PowerAdd = 50

[State 230]
type = PlaySnd
trigger1 = time = 5
value = 0,0

[State 230]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Light
damage    = 20
guardflag = MA
hitflag = MAF
pausetime = 7,8
sparkno = s7000
sparkxy = -10,-85
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 230]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;--------------------------------------------------
;calcio debole  vicino
[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0
anim = 225
PowerAdd = 50

[State 235]
type = PlaySnd
trigger1 = time = 5
value = 0,0

[State 235]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = light
damage    = 20
guardflag = MA
hitflag = MAF
pausetime = 7,8
sparkno = s7000
sparkxy = -20,-60
hitsound = S1,0
guardsound = S6,0
ground.type = low
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 235]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;--------------------------------------------------

;Calcio medio
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0
anim = 215
PowerAdd = 50

[State 240]
type = PlaySnd
trigger1 = time = 5
value = 0,1

[State 240]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = medium
damage    = 30
guardflag = MA
hitflag = MAF
pausetime = 7,8
sparkno = s7001
sparkxy = -15,-80
hitsound = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 240]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;--------------------------------------------------
;calcio medio vicino
[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0
anim = 231
PowerAdd = 50

[State 245]
type = PlaySnd
trigger1 = time = 5
value = 0,1

[State 245]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
hitflag = MAF
pausetime = 7,8
sparkno = s7001
sparkxy = -40,-95
hitsound = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 245]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------

;calcio forte
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0
anim = 230
PowerAdd = 50

[State 250]
type = PlaySnd
trigger1 = time = 5
value = 0,2

[State 250]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
hitflag = MAF
pausetime = 7,8
sparkno = s7002
sparkxy = -10,-84
hitsound = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 250]
type = PosAdd
trigger1 = Time = [4, 31]
x = 0.4

[State 220, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = 0,0
anim = 7084
sprpriority = 2
supermove = 1
ownpal = 1

[State 250]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;Calcione vicino
[Statedef 255]
type = S
movetype = A
physics = S
anim = 222
poweradd = 50
velset = 0,0
ctrl = 0

[State 255]    
type = VelSet
trigger1 = AnimElem = 4
x = 8

[State 220, POLVERE]
type = Explod
trigger1 = AnimElem = 3
pos = 10,0
anim = 7084
sprpriority = 2
supermove = 1
ownpal = 1

[State 255]
type = PlaySnd
trigger1 = time = 2
value = 0,2

[State 255]
type = ChangeState
trigger1 = AnimTime = 0
value = 256

;
[Statedef 256]
type = A
movetype = A
physics = N
anim = 223
PowerAdd = 0

[State 256]    
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 256]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1

[State 256]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype = DiagUp
damage    = 30
guardflag = MA
hitflag = MAf
pausetime = 15,15
sparkno = s7002
sparkxy = -10,-105
hitsound = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 7
ground.hittime  = 18
ground.velocity = -2,-10
air.velocity = -2,-9
guard.velocity = -5.0
yaccel = .45
fall = 1
fall.recover = 0
envshake.time = 20
envshake.freq = 60
envshake.ampl = -8
fall.damage = 10
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 256]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;Pugno basso debole
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 400
PowerAdd = 50

[State 400]
type = PlaySnd
trigger1 = time = 2
value = 0,0

[State 400]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 10,12
sparkno = s7000
sparkxy = -10,-42
hitsound = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -6
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20
getpower = 0
givepower = 0

[State 400]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 11

;--------------------------------------------------
;--------------------------------------------------
;Pugno basso medio
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 452
PowerAdd = 50

[State 410]
type = PlaySnd
trigger1 = time = 2
value = 0,1

[State 410]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 30
animtype  = medium
hitflag = MAF
guardflag = LA
pausetime = 10,12
sparkno = s7001
sparkxy = -10,-25
hitsound = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20
getpower = 0
givepower = 0

[State 410]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 11

;--------------------------------------------------
;--------------------------------------------------
;Pugno Basso forte
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 8
ctrl = 0
anim = 420
PowerAdd = 50

[State 420]
type = PlaySnd
trigger1 = time = 2
value = 0,2

[State 420]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 40
animtype  = hard
hitflag = MAF
guardflag = LA
pausetime = 10,12
sparkno = s7002
sparkxy = -10,-36
hitsound = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20
getpower = 0
givepower = 0

[State 420]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 11

;--------------------------------------------------
;--------------------------------------------------
;Calcio basso debole
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 4
ctrl = 0
anim = 410
PowerAdd = 50

[State 430]
type = PlaySnd
trigger1 = time = 2
value = 0,0

[State 430]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 10,12
sparkno = s7000
sparkxy = -10,-10
hitsound = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20
getpower = 0
givepower = 0

[State 430]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 11

;--------------------------------------------------
;--------------------------------------------------
;Calcio Basso medio
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 8
ctrl = 0
anim = 430
PowerAdd = 50

[State 440]
type = PlaySnd
trigger1 = time = 2
value = 0,1

[State 440]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 30
animtype  = Medium
hitflag = MAF
guardflag = LA
pausetime = 10,12
sparkno = s7001
sparkxy = -10,-42
hitsound = S1,1
guardsound = S6,0
ground.type = Trip
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -3.5,-3
air.velocity = -3.5,-3
fall = 1
envshake.time = 10           
envshake.ampl = 7
envshake.freq = 176
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 10
getpower = 0
givepower = 0

[State 440]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 11

;--------------------------------------------------
;--------------------------------------------------
;calcio basso Forte
[Statedef 450]
type    = C
movetype= A
physics = S
anim = 440
velset = 8, 0
facep2 = 1
PowerAdd = 50
ctrl = 0

[State 450]
type = RemoveExplod
triggerall = NumExplod(3073) >= 1
trigger1 = Time = 0
ID = 3073

[State 450]
type = PlaySnd
trigger1 = time = 1
value = 0,2

[State 450]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1

[State 450]
type = HitDef
trigger1 = time = 0
attr = C, NA
animtype = Hard
damage = 40
guardflag = LA
hitflag = MAF
pausetime = 3, 3
sparkno = s7002
sparkxy = -20, -65
hitsound = S1,3
guardsound = S6,0
ground.type = Low
guard.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5, -4
air.velocity = -5.5, -4
fall = 1
fall.recover = 0
envshake.time = 10           
envshake.ampl = 7
envshake.freq = 176
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 10
getpower = 0
givepower = 0

[State 450]
type = PosSet
trigger1 = Time = 0
y = 0

[State 450]
type = VelAdd
trigger1 = Vel X > 0.2
x = -.1

[State 450]
type = VelSet
trigger1 = Vel X <= 0.2
x = 0

[State 450, POLVERE]
type = Explod
trigger1 = AnimElem = 4
pos = 10,0
anim = 7084
sprpriority = 2
supermove = 1
ownpal = 1

[State 450]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;pugno in salto debole
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 600
PowerAdd = 50

[State 600]
type = PlaySnd
trigger1 = time = 2
value = 0,0

[State 600]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 20
animtype  = Light
guardflag = HA
priority = 3
pausetime = 7,15
sparkno = s7000
sparkxy = -10,-58
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 450]
type = ChangeState
trigger1 = Animelem = 5
value = 50
ctrl = 0

;--------------------------------------------------
;--------------------------------------------------
;pugno in salto medio
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 6
ctrl = 0
anim = 646
PowerAdd = 50

[State 610]
type = PlaySnd
trigger1 = time = 2
value = 0,1

[State 610]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 30
animtype  = Medium
guardflag = HA
priority = 3
pausetime = 7,15
sparkno = s7001
sparkxy = -10,-74
hitsound = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 450]
type = ChangeState
trigger1 = Animelem = 5
value = 50
ctrl = 0

;--------------------------------------------------
;--------------------------------------------------
;Pugno in salto forte
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 6
ctrl = 0
anim = 620
PowerAdd = 50

[State 620]
type = PlaySnd
trigger1 = time = 2
value = 0,2

[State 620]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 40
animtype  = hard
guardflag = HA
priority = 3
pausetime = 7,15
sparkno = s7002
sparkxy = -10,-58
hitsound = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 450]
type = ChangeState
trigger1 = Animelem = 5
value = 50
ctrl = 0

;--------------------------------------------------
;--------------------------------------------------
;gomitata in salto debole
[Statedef 605]
type    = A
movetype= A
physics = A
juggle  = 6
ctrl = 0
anim = 644
PowerAdd = 50

[State 605]
type = PlaySnd
trigger1 = time = 1
value = 0,0

[State 605]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 20
animtype  = light
guardflag = HA
priority = 3
pausetime = 7,15
sparkno = s7000
sparkxy = -10,-58
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
envshake.time = 10        
envshake.ampl = 7
envshake.freq = 176
getpower = 0
givepower = 0

[State 450]
type = ChangeState
trigger1 = Animelem = 5
value = 50
ctrl = 0

;--------------------------------------------------
;--------------------------------------------------
;gomitata in salto media
[Statedef 615]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 50
ctrl = 0
anim = 679

[State 615]
type = PlaySnd
trigger1 = time = 1
value = 0,1

[State 615]
type = HitDef
trigger1 = time = 0
attr = A, NA
animtype  = Medium
damage    = 30
guardflag = HA 
pausetime = 10,5
sparkno = s7001
sparkxy = -10,-58
hitsound = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.type = Low
air.velocity = -3.7,-4.5
guard.velocity = -8
envshake.time = 15           
envshake.ampl = 7
envshake.freq = 176
getpower = 0
givepower = 0

[State 615]
type = velset
triggerall = movecontact = 1
trigger1 = time = 5
trigger2 = time = 6
trigger3 = time = 7
trigger4 = time = 8
trigger5 = time = 9
trigger6 = time = 10
trigger7 = time = 11
trigger8 = time = 12
trigger9 = time = 13
trigger10 = time = 14
trigger11 = time = 15
trigger12 = time = 16
trigger13 = time = 17
trigger14 = time = 18
trigger15 = time = 19
x = -2.7
y = -4.6

[State 450]
type = ChangeState
trigger1 = Animelem = 5
value = 50
ctrl = 0

;--------------------------------------------------
;--------------------------------------------------
;gomitata in salto forte
[Statedef 625]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 50
ctrl = 0
anim = 679

[State 625]
type = PlaySnd
trigger1 = time = 1
value = 0,2

[State 625]
type = HitDef
trigger1 = time = 0
attr = A, NA
animtype  = hard
damage    = 30
guardflag = HA 
pausetime = 10,5
sparkno = s7002
sparkxy = -10,-58
hitsound = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1
air.type = Low
air.velocity = -1,0
guard.velocity = -8
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
fall = 1
fall.recover = 0             
fall.damage = 10             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 625]
type = velset
triggerall = movecontact = 1
trigger1 = time = 5
trigger2 = time = 6
trigger3 = time = 7
trigger4 = time = 8
trigger5 = time = 9
trigger6 = time = 10
trigger7 = time = 11
trigger8 = time = 12
trigger9 = time = 13
trigger10 = time = 14
trigger11 = time = 15
trigger12 = time = 16
trigger13 = time = 17
trigger14 = time = 18
trigger15 = time = 19
x = -2.7
y = -4.6

[State 450]
type = ChangeState
trigger1 = Animelem = 5
value = 50
ctrl = 0

;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;calcio in salto debole
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 6
ctrl = 0
anim = 645
PowerAdd = 50

[State 630]
type = PlaySnd
trigger1 = time = 2
value = 0,0

[State 630]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 20
animtype  = light
guardflag = HA
priority = 3
pausetime = 7,15
sparkno = s7000
sparkxy = -10,-58
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 450]
type = ChangeState
trigger1 = Animelem = 5
value = 50
ctrl = 0

;--------------------------------------------------
;--------------------------------------------------
;Calcio in salto medio
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 610
PowerAdd = 50

[State 640]
type = PlaySnd
trigger1 = time = 2
value = 0,1

[State 640]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 30
animtype  = medium
guardflag = HA
priority = 3
pausetime = 7,15
sparkno = s7001
sparkxy = -10,-35
hitsound = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 450]
type = ChangeState
trigger1 = Animelem = 5
value = 50
ctrl = 0

;--------------------------------------------------
;--------------------------------------------------
;Calcio in salto forte
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 630
PowerAdd = 50

[State 650]
type = PlaySnd
trigger1 = time = 2
value = 0,2

[State 650]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 40
animtype  = hard
guardflag = HA
hitflag = MAF
priority = 3
pausetime = 12,10
sparkno = s7002
sparkxy = -10,-40
hitsound = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -14,10
air.fall = 1
getpower = 0
givepower = 0

[State 650]
type = ChangeState
trigger1 = Animelem = 5
value = 50
ctrl = 0

;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;Calcio in salto verticale
[Statedef 635]
type    = A
movetype= A
physics = A
juggle  = 6
ctrl = 0
anim = 643
PowerAdd = 50

[State 635]
type = PlaySnd
trigger1 = time = 1
value = 0,0

[State 635]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 20
animtype  = Medium
guardflag = HA
priority = 3
pausetime = 7,15
sparkno = s7000
sparkxy = -10,-78
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 635]
type = ChangeState
trigger1 = Animelem = 5
value = 50
ctrl = 0

;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;--------------------------------------------------
;Ricarica - inizio
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
v = 10
value = 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 9, 1

[State 900]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000, 0

[State 900, shake]
type = EnvShake
trigger1 = AnimElem = 2
time = 40

[State 900, removeEX]
type = RemoveExplod
triggerall = NumExplod(3072) >= 1
trigger1 = time = 0
ID = 3072

[State 900, Cosmo]
type = Explod
triggerall = NumExplod(3070) = 0
trigger1 = AnimElem = 4
pos = 1,9
anim = 3070
ID = 3070
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1

[State 900]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

;Ricarica - durante
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901

[State 901, removeEX]
type = RemoveExplod
triggerall = NumExplod(3070) >= 1
trigger1 = 1
ID = 3070

[State 901, removeEX]
type = RemoveExplod
triggerall = NumExplod(3072) >= 1
trigger1 = 1
ID = 3072

[State 901]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

[State 901, Brilla]
type = PalFX
trigger1 = AnimElem = 2
time = 15
add = 0,0,0
sinadd = 250,100,200,3

[State 901]
type = Explod
trigger1 = NumExplod(8000) = 0
anim = 8000
ID = 8000
postype = p1
pos = 0,-60
sprpriority = -5
bindtime = -1
removeongethit = 1
ownpal = 1
scale = 0.7,0.7

[State 901, Cosmo]
type = Explod
triggerall = NumExplod(3071) = 0
trigger1 = 1
pos = 1,9
anim = 3071
ID = 3071
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1

[State 901, POLVERE]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = 1
pos = 0,0
anim = 7010
ID = 7010
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
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
type = ChangeState
triggerall = Var(59) = 0
trigger1 = command != "charge 1"
trigger2 = command != "charge 2"
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

;Ricarica - fine
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

[State 902, Cosmo]
type = Explod
triggerall = NumExplod(3072) = 0
trigger1 = AnimElem = 1
pos = 1,9
anim = 3072
ID = 3072
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 902]
type = RemoveExplod
triggerall = numexplod(7020) >= 1
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
triggerall = NumExplod(8000) >= 1
trigger1 = time = 0
ID = 8000

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(3071) >= 1
trigger1 = time = 0
ID = 3071

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(3070) >= 1
trigger1 = time = 0
ID = 3070

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

;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;Super parata
[Statedef 950]
type = S
physics = S
anim = 8520
juggle = 5
velset = 0,0
ctrl = 0

[State 950, voce]
type = PlaySnD
trigger1 = AnimElem = 2
value = 1100,2

[State 950]
type = PlaySnD
trigger1 = AnimElem = 1
value = 0,2

[State 950]
type = ReversalDef
trigger1 = time = 0
reversal.attr = SCA, NA, SA, HA
p1stateno = 951
hitsound = S2,6
sparkno = -1
sparkxy = 0, 0
pausetime = 40,50

[State 950]
type = ChangeState
trigger1 = Time = 40
value = 952
ctrl = 1

[Statedef 951]
type = S
movetype = A
physics = S
anim = 8521
poweradd = 100
juggle = 5
velset = 0,0
ctrl = 0

[State 951]
type = PlaySnd
trigger1 = time = 0
value = 12,0

[State 951]
type = PlaySnd
trigger1 = time = 5
value = 5,0

[State 951]
type = AfterImage
trigger1 = time = 0
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
trans = add1

[State 951]
type = Explod
trigger1 = MoveContact = 1
anim = 7004
pos = 65,-72
postype = p1
sprpriority = 4
supermove = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
ownpal = 1
removeongethit = 1

[State 951]
type = Explod
trigger1 = MoveContact = 1
anim = 70091
pos = 65,-72
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
ownpal = 1
removeongethit = 1

[State 951, polvere]
type = Explod
trigger1 = AnimElem = 1
anim = 7084
pos = -15,5
postype = p1
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 951]
type = VelAdd
trigger1 = time = 0
x = -7

[State 951]
type = VelMul
trigger1 = AnimElem = 1
x = 2.5

[State 951]
type = Explod
trigger1 = time = 1
anim = 7004
pos = 65,-72
postype = p1
sprpriority = 4
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
ctrl = 1

[Statedef 952]
type = S
physics = S
anim = 8522
juggle = 5
velset = 0,0
ctrl = 0

[State 952, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 952,VelSet]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 952]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 952]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;fireball A
[Statedef 1000]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 1400
juggle = 1
PowerAdd = 60

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000, 0

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1400, 1

[State 1000]
type = Explod
triggerall = NumExplod(1205) = 0
trigger1 = Animelem = 4
anim = 1205
ID = 1205
pos = 5,-62
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removetime = 20
removeongethit = 1

[State 1000, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = Animelem = 3
anim = 7010
ID = 7010
pos = -7,0
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removetime = 50
removeongethit = 1

[State 1000, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = AnimElem = 11
ID = 7010

[State 1000, Brilla]
type = PalFX
trigger1 = AnimElem = 6
time = 15
add = 0,0,0
sinadd = 200,150,150,3

[State 1000]
type = Projectile
trigger1 = AnimElem = 7
projanim = 1001
projhitanim = 1002
offset = 5, -65
velocity = 5,0
attr = S, SP
animtype  = light
damage    = 60,6
guardflag = MA
hitflag = MAF
pausetime = 5,6
sparkno = s8006
sparkxy = 0,0
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = -5,-2
afterimage.time = 200
afterimage.length = 20
afterimage.PalContrast =  60,60,255
afterimage.PalBright = 50,50,50
afterimage.trans = Add
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
getpower = 0
givepower = 0

[State 1000]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;fireball 2
[Statedef 1010]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 1410
juggle = 1
PowerAdd = 600
juggle = 1 

[State 1010] 
type = AfterImage
trigger1 = time = 0
time = 50
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
trans = add1	

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100, 0

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1400, 1

[State 1010, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = Animelem = 8
anim = 7010
ID = 7010
pos = -131,0
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removetime = 50
removeongethit = 1

[State 1010, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = AnimElem = 12
ID = 7010

[State 1010, Brilla]
type = PalFX
trigger1 = AnimElem = 9
time = 15
add = 0,0,0
sinadd = 200,150,150,3

[State 1010, povere]
type = Explod
trigger1 = Animelem = 1
anim = 7084
pos = -15,-1
postype = p1
sprpriority = 3
ownpal = 1
ignorehitpause = 0

[State 1010]
type = Explod
triggerall = NumExplod(1205) = 0
trigger1 = Animelem = 8
anim = 1205
ID = 1205
pos = -118,-62
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removetime = 50
removeongethit = 1

[State 1010, removeEX]
type = RemoveExplod
triggerall = NumExplod(1205) >= 1
trigger1 = AnimElem = 12
ID = 1205

[State 1010, Helper]
type = Helper
trigger1 = AnimElem = 11
stateno = 1011
ID = 1011
helpertype = Normal
postype = p1
pos = -118, -65
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 1010, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1010]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------
[Statedef 1011]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 8534
ctrl = 0
sprpriority = 0

[State 1011]
type = Velset
trigger1 = time >= 1
x = 10

[State 1011]
type = HitDef
trigger1 = time = 0
attr = A, SP                     
damage = 60,6 
animtype = medium                
guardflag = MA
hitflag = MAF
pausetime = 10,25
sparkno = s1002
sparkxy = 0,0
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
getpower = 0
givepower = 0

[State 1011]
type = Explod
trigger1 = movehit = 1
anim = 8006
pos = 0,0
sprpriority = 2
ownpal = 1
ignorehitpause = 0
bindtime = -1

[State 1011, afterimage]
type = AfterImage
trigger1 = time = 1
time = 100
length = 20
PalContrast =  60,60,255
PalBright = 50,50,50
trans = Add

[State 1011]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP, SP, HP, NP, NA
slot = 0
stateno = 1012

[State 1011]
type = DestroySelf
trigger1 = movecontact = 1

[State 1011]
type = DestroySelf
trigger1 = movehit = 1

[State 1011]
type = ChangeState
trigger1 = time = 60
value = 1012
ctrl = 1

[Statedef 1012]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 1002
ctrl = 0
sprpriority = 0

[State 1012]
type = Velset
trigger1 = 1
x = 0
y = 0

[State 1012, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1012]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Fireball 3
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 1000
PowerAdd = 60

[State 45, 0]
type = AfterImage
trigger1 = time = 0
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
trans = add1

[State 1015, polvere]
type = Explod
trigger1 = Animelem = 3
anim = 7010
pos = -8,-2
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removeongethit = 1

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 0

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1400, 1

[State 1010, Brilla]
type = PalFX
trigger1 = AnimElem = 6
time = 15
add = 0,0,0
sinadd = 200,150,150,3

[State 1000]
type = Projectile
trigger1 = AnimElem = 7
projanim = 1001
projhitanim = 1002
offset = 33, -80
velocity = 8,0
attr = S, SP
animtype  = hard
damage    = 30,3
guardflag = MA
hitflag = MAF
pausetime = 25,25
sparkno = s8006
sparkxy = 0,0
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = -5,-2
afterimage.time = 200
afterimage.length = 20
afterimage.PalContrast =  60,60,255
afterimage.PalBright = 50,50,50
afterimage.trans = Add
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
fall = 1
fall.recover = 0             
fall.damage = 0            
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 1000]
type = Projectile
trigger1 = AnimElem = 7
projanim = 8535
projhitanim = 1002
offset = 28, -70
velocity = 7,0
attr = S, SP
animtype  = hard
damage    = 30,3
guardflag = MA
hitflag = MAF
pausetime = 25,25
sparkno = s8006
sparkxy = 0,0
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = -5,-2
afterimage.time = 200
afterimage.length = 20
afterimage.PalContrast =  60,60,255
afterimage.PalBright = 50,50,50
afterimage.trans = Add
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
fall = 1
fall.recover = 0             
fall.damage = 0            
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 1000, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------

;=================================================================
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
; player 2 state
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;-----------------------------------------------------------------
;=================================================================

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

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;uppercut1
[Statedef 1100]
type    = A
movetype= A
physics = N
juggle  = 8
ctrl = 0
velset = 0, 0
anim = 1100
PowerAdd = 100

[State 1100]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100, 0

[State 1100]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200, 1

[State 1100]
type = AfterImage
trigger1 = time = 1
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
framegap = 2
trans = add1

[State 1100, Lampi]
type = Explod
trigger1 = AnimElem = 2
anim = 8523
pos = 40,-33
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1100]
type = HitDef
trigger1 = time = 0
attr = A, SA
animtype = Hard
damage = 70,8
guardflag = MA
hitflag = MAF
pausetime = 3, 3
sparkno = s8006
sparkxy = -12, -90
hitsound   = S1,5
guardsound = S6,0
ground.type = High
guard.slidetime = 6
ground.hittime  = 15
ground.velocity = -2.3, -8
air.velocity = -2.3, -8
fall = 1
fall.recover = 0
fall.damage = 10
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 1100]
type = PosAdd
trigger1 = Time = [6, 15]
x = 2

[State 1100]
type = VelSet
trigger1 = Time = 6
y = -5.5

[State 1100]
type = VelAdd
trigger1 = Time >= 6
trigger1 = Pos Y < -3
y = .32

[State 1100]
type = ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > 0
value = 1101

;-------------------------------
[Statedef 1101]
type    = A
movetype= A
physics = N
juggle  = 0
ctrl = 0
velset = 0,0
anim = 1101

[State 1101]
type = VelAdd
trigger1 = Pos Y < -5
y = .3

[State 1101]
type = VelSet
trigger1 = Pos Y >= -5
y = 0
x = 0

[State 1101]
type = PosSet
trigger1 = Pos Y >= -5
y = 0

[State 1101]
type = ChangeState
trigger1 = Pos Y = 0
value = 52
ctrl = 1

;---------------------------------------------------------------------------
;uppercut2
[Statedef 1110]
type    = A
movetype= A
physics = N
juggle  = 8
ctrl = 0
velset = 0, 0
anim = 1100
PowerAdd = 100

[State 1110]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100, 0

[State 1110]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200, 1

[State 1110, Brilla]
type = PalFX
trigger1 = AnimElem = 2
time = 15
add = 0,0,0
sinadd = 200,150,150,3

[State 1110]
type = AfterImage
trigger1 = time = 1
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
framegap = 2
trans = add1

[State 1110, Lampi]
type = Explod
trigger1 = AnimElem = 2
anim = 8523
pos = 40,-33
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1110]
type = HitDef
trigger1 = AnimElem = 5
attr = A, SA
animtype = Medium
damage = 50,5
guardflag = MA
hitflag = MAF
pausetime = 3, 3
sparkno = s8006
sparkxy = -16, -75
hitsound   = S1,5
guardsound = S6,0
ground.type = High
guard.slidetime = 6
ground.hittime  = 15
ground.velocity = 0, -7
air.velocity = 0, -7
fall = 1
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
getpower = 0
givepower = 0

[State 1110]
type = HitDef
trigger1 = AnimElem = 6
attr = A, SA
animtype = Hard
damage = 10,3
guardflag = MA
hitflag = MAF
pausetime = 3, 3
sparkno = s8006
sparkxy = -12, -90
hitsound   = S1,5
guardsound = S6,0
ground.type = High
guard.slidetime = 6
ground.hittime  = 15
ground.velocity = -2.3, -8
air.velocity = -2.3, -8
fall = 1
fall.recover = 0
fall.damage = 20
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 1110]
type = PosAdd
trigger1 = Time = [6, 18]
x = 2

[State 1110]
type = VelSet
trigger1 = Time = 6
y = -5.5

[State 1110]
type = VelAdd
trigger1 = Time >= 11
trigger1 = Pos Y < -3
y = .32

[State 1110]
type = ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > 0
value = 1101

;---------------------------------------------------------------------------
;uppercut 3
[Statedef 1120]
type    = A
movetype= A
physics = N
juggle  = 8
ctrl = 0
velset = 0, 0
anim = 1100
PowerAdd = 100

[State 1120]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100, 0

[State 1120]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200, 1

[State 1120, Brilla]
type = PalFX
trigger1 = AnimElem = 2
time = 15
add = 0,0,0
sinadd = 200,150,150,3

[State 1120]
type = AfterImage
trigger1 = time = 1
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
framegap = 2
trans = add1

[State 1120, Lampi]
type = Explod
trigger1 = AnimElem = 2
anim = 8523
pos = 40,-33
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1120]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
animtype = Light
damage = 20,3
guardflag = MA
hitflag = MAF
pausetime = 3, 3
sparkno = s8006
sparkxy = -20, -50
hitsound   = S1,5
guardsound = S6,0
ground.type = High
guard.slidetime = 6
ground.hittime  = 15
ground.velocity = 0, -6
air.velocity = 0, -6
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
getpower = 0
givepower = 0

[State 1120]
type = HitDef
trigger1 = AnimElem = 5
attr = A, SA
animtype = Medium
damage = 20,3
guardflag = MA
hitflag = MAF
pausetime = 3, 3
sparkno = s8006
sparkxy = -16, -75
hitsound   = S1,5
guardsound = S6,0
ground.type = High
guard.slidetime = 6
ground.hittime  = 15
ground.velocity = 0, -7
air.velocity = 0, -7
fall = 1
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
getpower = 0
givepower = 0

[State 1120]
type = HitDef
trigger1 = AnimElem = 6
attr = A, SA
animtype = Hard
damage = 10,2
guardflag = MA
hitflag = MAF
pausetime = 3, 3
sparkno = s8006
sparkxy = -12, -90
hitsound   = S1,5
guardsound = S6,0
ground.type = High
guard.slidetime = 6
ground.hittime  = 15
ground.velocity = -2.3, -8
air.velocity = -2.3, -8
fall = 1
fall.recover = 0
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
fall.damage = 30
getpower = 0
givepower = 0

[State 1120]
type = PosAdd
trigger1 = Time = [6, 21]
x = 2

[State 1120]
type = PosAdd
trigger1 = Time = [22, 31]
x = 0.3

[State 1120]
type = VelSet
trigger1 = Time = 6
y = -5.5

[State 1120]
type = VelAdd
trigger1 = Time >= 18
trigger1 = Pos Y < -3
y = .32

[State 1120]
type = ChangeState
trigger1 = Time > 10
trigger1 = Vel Y > 0
value = 1101

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;rotolamento aereo1
[Statedef 1200]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 1200
velset = 0, 0
PowerAdd = 100

[State 1200]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 1200]
type = ChangeState
trigger1 = AnimTime = 0
value = 1201
ctrl = 1

;
[Statedef 1201]
type    = A
movetype= A
physics = N
juggle  = 8
anim = 1201
velset = 0, 0
ctrl = 0

[State 1201]
type = AfterImage
trigger1 = time = 0
time = 35
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
framegap = 3
trans = add1

[State 1201]
type = PlaySnd
trigger1 = Time = 0
value = 1100,2

[State 1201]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 1

[State 1201]
type = HitDef
trigger1 = time = 0
attr = A, SA
animtype = Light
damage = 80,8
guardflag = MA
hitflag = MAF
getpower  = 0
givepower = 0
pausetime = 3, 3
sparkno = s7002
sparkxy = -20, -20
hitsound   = S1,5
guardsound = S6,0
ground.type = High
guard.slidetime = 3
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,0
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
fall = 1
fall.recover = 0
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
fall.damage = 0
getpower = 0
givepower = 0

[State 1201]
type = Explod
trigger1 = Time = 0
anim = 3073
ID = 3073
pos = 1, -55
postype = p1
facing = 1
bindtime = -1
vel = 0, 0
removetime = -1
sprpriority = 0
ontop = 0
removeongethit = 1

[State 1201]
type = RemoveExplod
trigger1 = Pos Y > 30
ID = 3073

[State 1201]
type = PosAdd
trigger1 = Time > 0
x = 3

[State 1201]
type = PosAdd
trigger1 = Time > 0
y = 7

[State 1201]
type = ChangeState
trigger1 = Pos Y > 30 
value = 1202
ctrl = 1

;
[Statedef 1202]
type    = C
movetype= A
physics = S
anim = 1202
velset = 8, 0
ctrl = 0

[State 1202]
type = PlaySnd
trigger1 = Time = 0
value = 2, 2

[State 1202]
type = RemoveExplod
triggerall = NumExplod(3073) >= 1
trigger1 = Time = 0
ID = 3073

[State 1202, polvere]
type = Explod
trigger1 = Time = 0
anim = 7089
pos = 20,0
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0
scale = .8, .8

[State 1202]
type = AfterImage
trigger1 = time = 0
time = 1
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
framegap = 3
trans = add1

[State 1202]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1202]
type = VelAdd
trigger1 = Vel X > 0.2
x = -.25

[State 1202]
type = VelSet
trigger1 = Vel X <= 0.2
x = 0

[State 1202, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;rotolamento aereo2
[Statedef 1210]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 1200
velset = 0, 0
PowerAdd = 100

[State 1210]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 1210]
type = ChangeState
trigger1 = AnimTime = 0
value = 1211
ctrl = 1

;
[Statedef 1211]
type    = A
movetype= A
physics = N
juggle  = 8
anim = 1201
velset = 0, 0
ctrl = 0

[State 1211]
type = AfterImage
trigger1 = time = 0
time = 35
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
framegap = 3
trans = add1

[State 1211]
type = PlaySnd
trigger1 = Time = 0
value = 1100,2

[State 1211]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 1

[State 1211]
type = HitDef
trigger1 = AnimElem= 2
trigger3 = AnimElem= 4
trigger2 = AnimElem= 6
trigger4 = AnimElem= 8
attr = A, SA
animtype = Light
damage = 18,2
guardflag = MA
hitflag = MAF
getpower  = 0
givepower = 0
pausetime = 3, 3
sparkno = s7001
sparkxy = -20, -20
hitsound   = S1,5
guardsound = S6,0
ground.type = High
guard.slidetime = 3
ground.hittime  = 15
ground.velocity = -5
air.velocity = -4,0
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
getpower = 0
givepower = 0

[State 1211]
type = Explod
trigger1 = Time = 0
anim = 3073
ID = 3073
pos = 1, -55
postype = p1
facing = 1
bindtime = -1
vel = 0, 0
removetime = -1
sprpriority = 0
ontop = 0
removeongethit = 1

[State 1211]
type = RemoveExplod
trigger1 = Pos Y > 30
ID = 3073

[State 1211]
type = PosAdd
trigger1 = Time > 0
x = 3

[State 1211]
type = PosAdd
trigger1 = Time > 0
y = 7

[State 1211]
type = ChangeState
trigger1 = Pos Y > 30 
value = 1202
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;rotolamento aereo 3
[Statedef 1220]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 1210
velset = 0, 0
PowerAdd = 100

[State 1220]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 1220]
type = ChangeState
trigger1 = AnimTime = 0
value = 1221
ctrl = 1

;
[Statedef 1221]
type    = A
movetype= A
physics = N
juggle  = 8
anim = 1201
velset = 0, 0
ctrl = 0

[State 1221]
type = AfterImage
trigger1 = time = 0
time = 35
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
framegap = 3
trans = add1

[State 1221]
type = PlaySnd
trigger1 = Time = 0
value = 1100,2

[State 1221]
type = PlaySnd
trigger1 = Time = 0
value = 1200, 1

[State 1221]
type = HitDef
trigger1 = AnimElem= 2
trigger3 = AnimElem= 4
trigger2 = AnimElem= 6
trigger4 = AnimElem= 8
attr = A, SA
animtype = Light
damage = 10,1
guardflag = MA
hitflag = MAF
getpower  = 0
givepower = 0
pausetime = 3, 3
sparkno = s7001
sparkxy = -20, -20
hitsound   = S1,5
guardsound = S6,0
ground.type = High
guard.slidetime = 3
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,0
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
getpower = 0
givepower = 0

[State 1221]
type = Explod
trigger1 = Time = 0
anim = 3073
ID = 3073
pos = 1, -55
postype = p1
facing = 1
bindtime = -1
vel = 0, 0
removetime = -1
sprpriority = 0
ontop = 0
removeongethit = 1

[State 1221]
type = RemoveExplod
trigger1 = Pos Y > 30
ID = 3073

[State 1221]
type = PosAdd
trigger1 = Time > 0
x = 3

[State 1221]
type = PosAdd
trigger1 = Time > 0
y = 7

[State 1221]
type = ChangeState
trigger1 = Pos Y > 30 
value = 450
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;teleport a
[Statedef 1300]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 1300
PowerAdd = 100

[State 1300]
type = PlaySnd
trigger1 = Time = 5
value = 1300, 0
channel = 0

[State 1300]
type = ChangeState
triggerAll = AnimTime = 0
trigger1 = P2Dist X >= 150
value = 1305
ctrl = 1

[State 1300]
type = ChangeState
triggerAll = AnimTime = 0
trigger1 = P2Dist X <= 149
value = 1302
ctrl = 1

;--------------------------
[Statedef 1302]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 1303
sprpriority = -2

[State 1302]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1302]
type = Explod
trigger1 = Time = 0
anim = 1301
ID = 1301
pos = 0, 0
postype = p1
facing = 1
vel = 0, 0
;removetime = -2
sprpriority = 0
ontop = 0
removeongethit = 1

[State 1302]
type = Explod
trigger1 = Time = 5
anim = 1306
ID = 1306
pos = 0, 0
postype = p1
facing = 1
vel = 0, 0
;removetime = -3
sprpriority = 0
ontop = 0
removeongethit = 1

[State 1302]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
anim = 1306
ID = 1306
pos = -27, 0
postype = p1
facing = 1
vel = 0, 0
;removetime = -3
sprpriority = 0
ontop = 0
removeongethit = 1

[State 1302]
type = PlaySnd
trigger1 = Time = 0
value = 1300, 1

[State 1302]
type = AfterImage
trigger1 = Time = 2
length = 11
PalBright   =  50, 50, 50
PalContrast = 240,240,240
PalAdd      =   0,  0,  0
PalMul      = .45,.45,.45
Time = 10

[State 1302]
type = PosAdd
trigger1 = Time = [2, 12]
x = 12

[State 1302]
type = ChangeAnim
trigger1 = Time = 12
value = 1304

[State 1302]
type = ChangeState
trigger1 = Anim = 1304
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------
[Statedef 1305]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 1303

[State 1312]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1312]
type = Explod
trigger1 = Time = 0
anim = 1301
ID = 1311
pos = 0, 0
postype = p1
facing = 1
vel = 0, 0
;removetime = -1
sprpriority = 0
ontop = 0
removeongethit = 1

[State 1312]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
anim = 1306
ID = 1306
pos = -27, 0
postype = p1
facing = 1
vel = 0, 0
;removetime = -1
sprpriority = 0
ontop = 0
removeongethit = 1

[State 1312]
type = PlaySnd
trigger1 = Time = 0
value = 1300, 1

[State 1302]
type = AfterImage
trigger1 = Time = 2
length = 11
PalBright   =  50, 50, 50
PalContrast = 240,240,240
PalAdd      =   0,  0,  0
PalMul      = .45,.45,.45
Time = 10

[State 1312]
type = PosAdd
trigger1 = Time = [2, 22]
x = 12

[State 1312]
type = ChangeAnim
trigger1 = Time = 22
value = 1304

[State 1312]
type = ChangeState
trigger1 = Anim = 1304
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Presa
[Statedef 1500]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 1500
PowerAdd = 50

[State 1500]
type = PlaySnd
trigger1 = time = 2
value = 0,1

[State 1500]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100,2

[State 1050]
type = HitDef
trigger1 = time = 0
attr = S, NT
animtype = Light
damage = 0
hitflag = M-
pausetime = 6,6
sparkno = s7000
sparkxy = -40,-75
ground.type = High
guard.slidetime = 12
ground.hittime  = 15
ground.velocity = 0,0
p1stateno = 1501
p2stateno = 1510
Palfx.time          = 100
Palfx.add           = 50,50,50
Palfx.mul           = 250,100,170
Palfx.sinadd        = -112,-122,-112,3
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 1500]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 1501]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0
anim = 1501

[State 1501]
type = PlaySnd
trigger1 = time = 30
value = 1100,1

[State 1501, scia]
type = Explod
triggerall = time >= 10
triggerall = NumExplod(1506) <= 20
trigger1 = 1
ID = 1506
anim = 1506
pos = 10,-60
postype = p2
sprpriority = 4
ownpal = 0
ignorehitpause = 0
persistent = 1

[State 1501]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1500, 0

[State 1501]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------
;PL2 state
[Statedef 1510]
type = A
movetype = H
physics = N
velset = 0,0
facep2 = 1

[State 1510]
type = ChangeAnim2
trigger1 = Time = 0
value = 1510

[State 1510]
type = PosAdd
trigger1 = Time = 0
x = -20

[State 1510]
type = PosAdd
trigger1 = Time = [14, 17]
x = 5
y = -10

[State 1510]
type = PosAdd
trigger1 = Time = [18,21]
x = 8
y = -6

[State 1510]
type = VelSet
trigger1 = Time = 22
x = 5
y = -6

[State 1510]
type = LifeAdd
trigger1 = Time = 34
value = -66

[State 1510]
type = VelAdd
trigger1 = Time > 22
y = .3

[State 1510]
type = PosSet
trigger1 = Time > 22
trigger1 = Pos Y > -3
y = 0

[State 1510]
type = ChangeState
trigger1 = Time > 22
trigger1 = Pos Y = 0
value = 1511

;
[Statedef 1511]
type = A
movetype = H
physics = N
facep2 = -1

[State 1511]
type = SelfState
trigger1 = Time >= 0
value = 5100

;---------------------------------------------------
;---------------------------------------------------
;---------------------------------------------------
;skiva attacco avversario
[Statedef 1800]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1800
PowerAdd = 100
sprpriority = -2

[State 1800]
type = PlaySnd
trigger1 = Time = 1
value = 1200,1

[State 1800]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100, 0
channel = 0

[State 1800, Brilla]
type = PalFX
trigger1 = AnimElem = 3
time = 25
add = 0,0,0
sinadd = 200,100,150,3

[State 1800]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
trans = add1

[State 1800]
type = NotHitBy
trigger1 = Time >= 5
value = SCA
time = 30

[State 1800]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------
;---------------------------------------------------
;---------------------------------------------------
;---------------------------------------------------
;rotola Avanti
[Statedef 1900]
type = S
movetype = I
physics = S
anim = 1900
velset = 0,0
ctrl = 0
PowerAdd = 100

[State 1900]
type = PlaySnd
trigger1 = Animelem = 1
value = 1100,0

[State 1900, scia]
type = Explod
trigger1 = Animelem = 1
anim = 7085
pos = 35,2
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State 1900]
type = AfterImage
trigger1 = time = 1
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
trans = add1

[State 1900]
type = SprPriority
trigger1 = Time = 8
value = -2

[State 1900]
type = VelSet
trigger1 = Time = [3,12]
x = 8

[State 1900]
type = PlayerPush
trigger1 = Time = [9,24]
value = 0

[State 1900]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 1900]
type = NotHitBy
trigger1 = Time >= 10
value = SCA
time = 1

[State 1900]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------
;---------------------------------------------------
;---------------------------------------------------
;rotola indietro
[Statedef 1950]
type = S
movetype = A
physics = S
anim = 1950
velset = 0,0
ctrl = 0
PowerAdd = 100

[State 1950]
type = PlaySnd
trigger1 = Animelem = 1
value = 1100,0

[State 1950, scia]
type = Explod
trigger1 = Animelem = 1
anim = 70851
pos = -50,2
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0

[State 1950]
type = AfterImage
trigger1 = time = 1
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
trans = add1

[State 1950]
type = SprPriority
trigger1 = Time = 8
value = -2

[State 1950]
type = VelSet
trigger1 = Time = [3,12]
x = -9

[State 1950]
type = PlayerPush
trigger1 = Time = [9,24]
value = 0

[State 1950]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 1950]
type = NotHitBy
trigger1 = Time >= 10
value = SCA
time = 1

[State 1950]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;fireball A2
[Statedef 2000]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 1400
juggle = 1
PowerAdd = 60

[State 2000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000, 0

[State 2000]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1400, 1

[State 2000]
type = Explod
triggerall = NumExplod(8533) = 0
trigger1 = Animelem = 4
anim = 8533
ID = 8533
pos = 5,-62
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removeongethit = 1

[State 2000, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = Animelem = 3
anim = 7010
ID = 7010
pos = -7,0
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removetime = 50
removeongethit = 1

[State 2000, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = AnimElem = 11
ID = 7010

[State 2000, Brilla]
type = PalFX
trigger1 = AnimElem = 6
time = 15
add = 0,0,0
sinadd = 200,150,150,3

[State 2000, Helper]
type = Helper
trigger1 = AnimElem = 7
stateno = 2001
ID = 2001
helpertype = Normal
postype = p1
pos = 80, -62
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 2000]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------
;----------------------------
;----------------------------
[Statedef 2001]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 8530
ctrl = 0
sprpriority = 0

[State 2001]
type = Velset
trigger1 = time >= 4
x = 10

[State 2001]
type = HitDef
triggerall = parent, stateno = 2010
trigger1 = time = 0
attr = S, SP                     
damage = 20,2 
animtype = medium                
guardflag = MA
hitflag = MAF
pausetime = 10,25
sparkno = s70041
sparkxy = -30,0
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
Palfx.time          = 10
Palfx.add           = 240,50,100
Palfx.sinadd        = -112,-122,-112,3
getpower = 0
givepower = 0

[State 2001]
type = HitDef
triggerall = parent, stateno != 2010
trigger1 = time = 0
attr = S, SP                     
damage = 60,6 
animtype = medium                
guardflag = MA
hitflag = MAF
pausetime = 10,25
sparkno = s70041
sparkxy = -30,0
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
Palfx.time          = 10
Palfx.add           = 240,50,100
Palfx.sinadd        = -112,-122,-112,3
getpower = 0
givepower = 0

[State 2001]
type = Explod
trigger1 = movehit = 1
anim = 8006
pos = -10,0
sprpriority = 2
ownpal = 1
ignorehitpause = 0
bindtime = -1

[State 2001, afterimage]
type = AfterImage
trigger1 = time = 1
time = 100
length = 20
PalContrast =  60,60,255
PalBright = 50,50,50
trans = Add

[State 2001]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP, SP, HP, NP, NA
slot = 0
stateno = 2002

[State 2001]
type = DestroySelf
trigger1 = movecontact = 1

[State 2001]
type = DestroySelf
trigger1 = movehit = 1

[State 2001]
type = ChangeState
trigger1 = time = 60
value = 2002
ctrl = 1

[Statedef 2002]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 7004
ctrl = 0
sprpriority = 0

[State 2002]
type = Velset
trigger1 = 1
x = 0
y = 0

[State 2002, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2002]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------
;----------------------------
;----------------------------
[Statedef 2004]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 8531
ctrl = 0
sprpriority = 0

[State 2004]
type = Velset
trigger1 = time >= 4
x = 10
Y = -2

[State 2004]
type = HitDef
trigger1 = time = 0
attr = S, SP                     
damage = 20,2
animtype = medium                
guardflag = MA
hitflag = MAF
pausetime = 10,25
sparkno = s7000
sparkxy = -30,0
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
Palfx.time          = 10
Palfx.add           = 240,50,100
Palfx.sinadd        = -112,-122,-112,3
getpower = 0
givepower = 0

[State 2004]
type = Explod
trigger1 = movehit = 1
anim = 8006
pos = -10,0
sprpriority = 2
ownpal = 1
ignorehitpause = 0
bindtime = -1

[State 2004, afterimage]
type = AfterImage
trigger1 = time = 1
time = 100
length = 20
PalContrast =  60,60,255
PalBright = 50,50,50
trans = Add

[State 2004]
type = DestroySelf
trigger1 = movecontact = 1

[State 2004]
type = DestroySelf
trigger1 = movehit = 1

[State 2004]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP, SP, HP, NP, NA
slot = 0
stateno = 2005

[State 2004]
type = ChangeState
trigger1 = time = 60
value = 2005
ctrl = 1

[Statedef 2005]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 7000
ctrl = 0
sprpriority = 0

[State 2005]
type = Velset
trigger1 = 1
x = 0
y = 0

[State 2005, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2005]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------
;----------------------------
;----------------------------
[Statedef 2006]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 8532
ctrl = 0
sprpriority = 0

[State 2006]
type = Velset
trigger1 = time >= 4
x = 10
Y = 2

[State 2006]
type = HitDef
trigger1 = time = 0
attr = S, SP                     
damage = 20,2
animtype = medium                
guardflag = MA
hitflag = MAF
pausetime = 10,25
sparkno = s7000
sparkxy = -30,0
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
Palfx.time          = 10
Palfx.add           = 240,50,100
Palfx.sinadd        = -112,-122,-112,3
getpower = 0
givepower = 0

[State 2006]
type = Explod
trigger1 = movehit = 1
anim = 8006
pos = -10,0
sprpriority = 2
ownpal = 1
ignorehitpause = 0
bindtime = -1

[State 2006, afterimage]
type = AfterImage
trigger1 = time = 1
time = 100
length = 20
PalContrast =  60,60,255
PalBright = 50,50,50
trans = Add

[State 2006]
type = DestroySelf
trigger1 = movecontact = 1

[State 2006]
type = DestroySelf
trigger1 = movehit = 1

[State 2006]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP, SP, HP, NP, NA
slot = 0
stateno = 2005

[State 2006]
type = ChangeState
trigger1 = time = 60
value = 2005
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;fireball B2
[Statedef 2010]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 1400
juggle = 1
PowerAdd = 60

[State 2010]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000, 0

[State 2010]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1400, 1

[State 2010]
type = Explod
triggerall = NumExplod(8533) = 0
trigger1 = Animelem = 4
anim = 8533
ID = 8533
pos = 5,-62
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removeongethit = 1

[State 2010, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = Animelem = 3
anim = 7010
ID = 7010
pos = -7,0
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removetime = 50
removeongethit = 1

[State 2010, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = AnimElem = 11
ID = 7010

[State 2010, Brilla]
type = PalFX
trigger1 = AnimElem = 6
time = 15
add = 0,0,0
sinadd = 200,150,150,3

[State 2010, Helper]
type = Helper
trigger1 = AnimElem = 7
stateno = 2004
ID = 2004
helpertype = Normal
postype = p1
pos = 80, -70
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 2010, Helper]
type = Helper
trigger1 = AnimElem = 7
stateno = 2001
ID = 2001
helpertype = Normal
postype = p1
pos = 80, -62
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 2010, Helper]
type = Helper
trigger1 = AnimElem = 7
stateno = 2006
ID = 2006
helpertype = Normal
postype = p1
pos = 80, -53
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 2010]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;fireball 3B
[Statedef 2020]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 1410
juggle = 1
PowerAdd = 60
juggle = 1 

[State 2020] 
type = AfterImage
trigger1 = time = 0
time = 50
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
trans = add1	

[State 2020]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100, 0

[State 2020]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1400, 1

[State 2020, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = Animelem = 8
anim = 7010
ID = 7010
pos = -131,0
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removetime = 50
removeongethit = 1

[State 2020, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = AnimElem = 12
ID = 7010

[State 2020, Brilla]
type = PalFX
trigger1 = AnimElem = 9
time = 15
add = 0,0,0
sinadd = 200,150,150,3

[State 2020, povere]
type = Explod
trigger1 = Animelem = 1
anim = 7084
pos = -15,-1
postype = p1
sprpriority = 3
ownpal = 1
ignorehitpause = 0

[State 2020]
type = Explod
triggerall = NumExplod(8533) = 0
trigger1 = Animelem = 8
anim = 8533
ID = 8533
pos = -118,-62
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removetime = 50
removeongethit = 1

[State 2020, removeEX]
type = RemoveExplod
triggerall = NumExplod(8533) >= 1
trigger1 = AnimElem = 13
ID = 8533

[State 2020, Helper]
type = Helper
trigger1 = AnimElem = 111
stateno = 2004
ID = 2004
helpertype = Normal
postype = p1
pos = -50, -70
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 2020, Helper]
type = Helper
trigger1 = AnimElem = 11
stateno = 2001
ID = 2001
helpertype = Normal
postype = p1
pos = -50, -62
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 2020, Helper]
type = Helper
trigger1 = AnimElem = 111
stateno = 2006
ID = 2006
helpertype = Normal
postype = p1
pos = -50, -52
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 2020, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2020]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;trama corallina
[Statedef 3000]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 3000
poweradd = -1000
juggle = 5
sprpriority = 0

[State 3000]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = time = 0
ID = 2

[State 3000]
type = RemoveExplod
triggerall = NumExplod(8400) = 1
trigger1 = time = 1
ID = 8400

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12, 0

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1500, 0

[State 3000]
type = SuperPause
trigger1 = AnimElem = 2
time = 20
movetime = 20
anim = S70091
pos = 5, -65
darken = 0

[State 3000, Darken]
type = BGPalfx
trigger1 = AnimElem = 2
ignorehitpause = 1
time = 60
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 1

[State 3000, luce]
type = Explod
triggerall = NumExplod(8002) = 0
trigger1 = AnimElem = 2
pos = -10,0
anim = 8002
ID = 8002
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 45

[State 3000, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = Animelem = 2
anim = 7010
ID = 7010
pos = -7,0
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removeongethit = 1
supermove = 1
removetime = 45

[State 3000, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 12
pos = 0,0
anim = 7010
ID = 7010
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3000, luce]
type = Explod
triggerall = NumExplod(8002) = 0
trigger1 = AnimElem = 12
pos = 0,0
anim = 8002
ID = 8002
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3000, cosmo]
type = Explod
triggerall = NumExplod(3070) = 0
trigger1 = AnimElem = 13
pos = 1,9
anim = 3070
ID = 3070
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3000, arcobaleno]
type = Explod
triggerall = NumExplod(8022) = 0
trigger1 = AnimElem = 8
anim = 8022
ID = 8022
pos = -320,-280
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1
scale = 2, 1.8

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3000, 0
channel = 0

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3000, 1

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1100, 1

[State 3000]
type = Explod
triggerall = NumExplod(8400) = 0
trigger1 = movehit = 1
;trigger1 = projcontact1402 = 1
anim = 8400
ID = 8400
pos = 0, 0
postype = p2
bindtime = -1
supermove = 1
sprpriority = 2
persistent = 0
removetime = -1

[State 3000, luce]
type = Explod
trigger1 = AnimElem = 2
pos = 0,-66
anim = 1506
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 45

[State 3000, Brilla]
type = PalFX
trigger1 = AnimElem = 3
time = 40
add = 0,0,0
sinadd = 200,150,150,3

[State 3000]
type = Projectile
trigger1 = AnimElem = 8
attr = S, HP
ignorehitpause = 1
projanim = 1402
projhitanim = 1506
projID = 1402
offset = 0,-66
velocity = 10,0
damage = 17,20
animtype = light
guardflag = HA
pausetime = 12,0
sparkno = s1402
sparkxy = 30,0
hitsound   = S1,5
guardsound = S6,0
ground.type = low
ground.slidetime = 0
ground.hittime  = 400
ground.velocity = 0
air.velocity = 0,0
p2stateno = 3004
afterimage.time = 200
afterimage.length = 20
afterimage.PalContrast =  60,60,255
afterimage.PalBright = 50,50,50
afterimage.trans = Add
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 3000]
type = NotHitBy
trigger1 = AnimElem = 8
value = SCA
Time = 100

[State 3000]
type = ChangeState
triggerAll = AnimTime = 0
trigger1 = p2stateno = 3004
;trigger1 = projcontact1402 = 1
value = 3001
ctrl = 1

[State 3000]
type = ChangeState
triggerAll = AnimElem = 11
trigger1 = p2stateno != 3004
;trigger1 = projcontact1402 = 0
value = 3003
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 3001]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 3001

;lampi skermo
[State 99, lampi]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 100
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 3001, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 80
value = 3011

[State 3001, flash]
type = EnvColor
trigger1 = Time = 80
trigger2 = Time = 90
value = 255,255,255
under = 0
time = 2

[State 3100]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3001]
type = Helper
trigger1 = Time = 0
ID = 3100
pos = 5, -70
postype = p1
stateno = 3100
helpertype = normal
keyctrl = 0
ownpal = 0

[State 3001]
type = Helper
trigger1 = Time = 6
ID = 3200
pos = 5, -70
postype = p1
stateno = 3200
helpertype = normal
keyctrl = 0
ownpal = 0

[State 3001, arcobaleno]
type = Explod
triggerall = NumExplod(4000) = 0
trigger1 = Time = 0
anim = 4000
ID = 4000
pos = -320,0
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3001, arcobaleno]
type = Explod
triggerall = NumExplod(4010) = 0
trigger1 = Time = 80
anim = 4010
ID = 4010
pos = -320,0
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3001] 
type = AssertSpecial
trigger1 = Time = [80,200]
flag = noFG

[State 3001]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 86
trigger3 = Time = 160
value = 3000, 2

[State 3001]
type = Explod
trigger1 = Time = 180
anim = 3006
ID = 3006
pos = 5, -65
postype = p1
facing = 1
vel = 0, 0
sprpriority = 1
ontop = 0

;[State 3001, Helper]
;type = Helper
;triggerAll = Time = [60, 180]
;triggerall = Numhelper(4000) = 0
;triggerall = Numhelper(4010) = 0
;triggerall = Numhelper(4040) = 0
;triggerall = Numhelper(4050) = 0
;triggerall = Numhelper(4051) = 0
;triggerall = Numhelper(4052) = 0
;triggerall = Numhelper(4053) = 0
;triggerall = Numhelper(4060) = 0
;triggerall = power >= 1000
;trigger1 = command = "Kanon"
;sprpriority = 1
;pos = 1,0
;postype = Back
;stateno = 4000
;Id = 4000
;helpertype = normal
;keyctrl = 0          
;ownpal = 0

[State 3001, removeEX]
type = RemoveExplod
triggerall = NumExplod(4010) >= 1
trigger1 = Numhelper(4000) >= 1
trigger2 = Numhelper(4010) >= 1
trigger3 = Numhelper(4040) >= 1
trigger4 = Numhelper(4050) >= 1
trigger5 = Numhelper(4051) >= 1
trigger6 = Numhelper(4052) >= 1
trigger7 = Numhelper(4053) >= 1
trigger8 = Numhelper(4060) >= 1
ID = 4010

[State 3001]
type = ChangeState
trigger1 = Time = 200
value = 3002
ctrl = 1

;---------------------------------------------------------------------------
;Fine
[Statedef 3002]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 3002

[State 3002]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(4000) >= 1
trigger1 = AnimElem = 3
ID = 4000

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = AnimElem = 4
ID = 7010

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(8002) >= 1
trigger1 = AnimElem = 3
ID = 8002

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(3070) >= 1
trigger1 = AnimElem = 3
ID = 3070

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(8022) >= 1
trigger1 = AnimElem = 2
ID = 8022

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(4010) >= 1
trigger1 = AnimElem = 2
ID = 4010

[State 3002, cosmo]
type = Explod
triggerall = NumExplod(3072) = 0
trigger1 = AnimElem = 3
pos = 1,9
anim = 3072
ID = 3072
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3002]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Fine
[Statedef 3003]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 3003

[State 3003]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3003, removeEX]
type = RemoveExplod
triggerall = NumExplod(4000) >= 1
trigger1 = time = 0
ID = 4000

[State 3003, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 3003, removeEX]
type = RemoveExplod
triggerall = NumExplod(8002) >= 1
trigger1 = time = 0
ID = 8002

[State 3003, removeEX]
type = RemoveExplod
triggerall = NumExplod(3070) >= 1
trigger1 = time = 0
ID = 3070

[State 3003, removeEX]
type = RemoveExplod
triggerall = NumExplod(8022) >= 1
trigger1 = time = 0
ID = 8022

[State 3003, removeEX]
type = RemoveExplod
triggerall = NumExplod(4010) >= 1
trigger1 = time = 0
ID = 4010

[State 3003]
type = ChangeState
trigger1 = Animtime= 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; paralisi state
[Statedef 3004]
type = S
movetype= H
physics = N
velset = -5,0

[State 3004, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3004

[State 3004,NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 50

[State 3004]
type = Playsnd
trigger1 = movehit = 1
value = 11,0
persistent = 0

[State 3004, VELSET]
type = velset
trigger1 = time = 5
X = 0
Y = 0

[State 3004, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3004,LifeAdd]
type = LifeAdd
trigger1 = time = 20
trigger2 = time = 40
trigger3 = time = 60
trigger4 = time = 80
trigger5 = time = 90
trigger6 = time = 100
trigger7 = time = 120
trigger8 = time = 140
trigger9 = time = 160
trigger10 = time = 180
trigger11 = time = 190
trigger12 = time = 200
trigger13 = time = 219
value = -14
kill = 0

[State 3004, Brilla]
type = PalFX
trigger1 = time = 0
time = 290
add = 240,50,100
sinadd = 255,10,20,3

[State 3004]
type = ChangeState
trigger1 = time = 220
value = 3005
ctrl = 1

;-----------------------
[Statedef 3005]
type = S
movetype = H
physics = S
velset = 0, 0
ctrl = 0

[State 3005, anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3004

[State 3005, posset]
type = PosSet
trigger1 = time = 0
y = 0

[State 3005, velset]
type = velset
trigger1 = time = 5
X = 0
Y = 0

[State 3005, lifeadd]
type = LifeAdd
trigger1 = time = 29
value = -15

[State 3005, playsnd]
type = PlaySnd
trigger1 = time = 29
value = s4, 0

[State 3005, flash]
type = EnvColor
trigger1 = Time = 29
value = 255,255,255
under = 0
time = 3

[State 3005, white fadeout]
type = BGPalFx
trigger1 = life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3005, selfstate]
type = SelfState
trigger1 = Time = 30
value = 5100
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;trama corallina Con Kanon
[Statedef 3050]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 3000
poweradd = -1000
juggle = 5
sprpriority = 0

[State 3000]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = time = 0
ID = 2

[State 3000]
type = RemoveExplod
triggerall = NumExplod(8400) = 1
trigger1 = time = 1
ID = 8400

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12, 0

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1500, 0

[State 3000]
type = SuperPause
trigger1 = AnimElem = 2
time = 20
movetime = 20
anim = S70091
pos = 5, -65
darken = 0

[State 3000, Darken]
type = BGPalfx
trigger1 = AnimElem = 2
ignorehitpause = 1
time = 60
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 1

[State 3000, luce]
type = Explod
triggerall = NumExplod(8002) = 0
trigger1 = AnimElem = 2
pos = -10,0
anim = 8002
ID = 8002
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 45

[State 3000, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = Animelem = 2
anim = 7010
ID = 7010
pos = -7,0
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removeongethit = 1
supermove = 1
removetime = 45

[State 3000, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 12
pos = 0,0
anim = 7010
ID = 7010
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3000, luce]
type = Explod
triggerall = NumExplod(8002) = 0
trigger1 = AnimElem = 12
pos = 0,0
anim = 8002
ID = 8002
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3000, cosmo]
type = Explod
triggerall = NumExplod(3070) = 0
trigger1 = AnimElem = 13
pos = 1,9
anim = 3070
ID = 3070
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3000, arcobaleno]
type = Explod
triggerall = NumExplod(8022) = 0
trigger1 = AnimElem = 8
anim = 8022
ID = 8022
pos = -320,-280
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1
scale = 2, 1.8

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3000, 0
channel = 0

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 12
value = 3000, 1

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1100, 1

[State 3000]
type = Explod
triggerall = NumExplod(8400) = 0
trigger1 = movehit = 1
;trigger1 = projcontact1402 = 1
anim = 8400
ID = 8400
pos = 0, 0
postype = p2
bindtime = -1
supermove = 1
sprpriority = 2
persistent = 0
removetime = -1

[State 3000, luce]
type = Explod
trigger1 = AnimElem = 2
pos = 0,-66
anim = 1506
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 45

[State 3000, Brilla]
type = PalFX
trigger1 = AnimElem = 3
time = 40
add = 0,0,0
sinadd = 200,150,150,3

[State 3000]
type = Projectile
trigger1 = AnimElem = 8
attr = S, HP
ignorehitpause = 1
projanim = 1402
projhitanim = 1506
projID = 1402
offset = 0,-66
velocity = 10,0
damage = 8,80
animtype = light
guardflag = HA
pausetime = 12,0
sparkno = s1402
sparkxy = 30,0
hitsound   = S1,5
guardsound = S6,0
ground.type = low
ground.slidetime = 0
ground.hittime  = 400
ground.velocity = 0
air.velocity = 0,0
p2stateno = 3054
afterimage.time = 200
afterimage.length = 20
afterimage.PalContrast =  60,60,255
afterimage.PalBright = 50,50,50
afterimage.trans = Add
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 3000]
type = NotHitBy
trigger1 = AnimElem = 8
value = SCA
Time = 100

[State 3000]
type = ChangeState
triggerAll = AnimTime = 0
trigger1 = p2stateno = 3054
;trigger1 = projcontact1402 = 1
value = 3051
ctrl = 1

[State 3000]
type = ChangeState
triggerAll = AnimElem = 11
trigger1 = p2stateno != 3054
;trigger1 = projcontact1402 = 0
value = 3053
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 3051]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 3001

;lampi skermo
[State 99, lampi]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 100
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 3001, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 80
value = 3011

[State 3001, flash]
type = EnvColor
trigger1 = Time = 80
trigger2 = Time = 90
value = 255,255,255
under = 0
time = 2

[State 3100]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3001]
type = Helper
trigger1 = Time = 0
ID = 3100
pos = 5, -70
postype = p1
stateno = 3100
helpertype = normal
keyctrl = 0
ownpal = 0

[State 3001]
type = Helper
trigger1 = Time = 6
ID = 3200
pos = 5, -70
postype = p1
stateno = 3200
helpertype = normal
keyctrl = 0
ownpal = 0

[State 3001, arcobaleno]
type = Explod
triggerall = NumExplod(4000) = 0
trigger1 = Time = 0
anim = 4000
ID = 4000
pos = -320,0
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3001, arcobaleno]
type = Explod
triggerall = NumExplod(4010) = 0
trigger1 = Time = 80
anim = 4010
ID = 4010
pos = -320,0
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3001] 
type = AssertSpecial
trigger1 = Time = [80,200]
flag = noFG

[State 3001]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 86
trigger3 = Time = 160
value = 3000, 2

[State 3001]
type = Explod
trigger1 = Time = 180
anim = 3006
ID = 3006
pos = 5, -65
postype = p1
facing = 1
vel = 0, 0
sprpriority = 1
ontop = 0

[State 3001, Helper]
type = Helper
triggerall = Numhelper(4000) = 0
triggerall = Numhelper(4010) = 0
triggerall = Numhelper(4040) = 0
triggerall = Numhelper(4050) = 0
triggerall = Numhelper(4051) = 0
triggerall = Numhelper(4052) = 0
triggerall = Numhelper(4053) = 0
triggerall = Numhelper(4060) = 0
triggerall = power >= 1000
trigger1 = time = 80
sprpriority = 1
pos = 1,0
postype = Back
stateno = 4000
Id = 4000
helpertype = normal
keyctrl = 0          
ownpal = 0

[State 3001, removeEX]
type = RemoveExplod
triggerall = NumExplod(4010) >= 1
trigger1 = Numhelper(4000) >= 1
trigger2 = Numhelper(4010) >= 1
trigger3 = Numhelper(4040) >= 1
trigger4 = Numhelper(4050) >= 1
trigger5 = Numhelper(4051) >= 1
trigger6 = Numhelper(4052) >= 1
trigger7 = Numhelper(4053) >= 1
trigger8 = Numhelper(4060) >= 1
ID = 4010

[State 3001]
type = ChangeState
trigger1 = Time = 200
value = 3052
ctrl = 1

;---------------------------------------------------------------------------
;Fine
[Statedef 3052]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 3002

[State 3002]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(4000) >= 1
trigger1 = AnimElem = 3
ID = 4000

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = AnimElem = 4
ID = 7010

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(8002) >= 1
trigger1 = AnimElem = 3
ID = 8002

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(3070) >= 1
trigger1 = AnimElem = 3
ID = 3070

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(8022) >= 1
trigger1 = AnimElem = 2
ID = 8022

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(4010) >= 1
trigger1 = AnimElem = 2
ID = 4010

[State 3002, cosmo]
type = Explod
triggerall = NumExplod(3072) = 0
trigger1 = AnimElem = 3
pos = 1,9
anim = 3072
ID = 3072
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3002]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Fine
[Statedef 3053]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 3003

[State 3003]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3003, removeEX]
type = RemoveExplod
triggerall = NumExplod(4000) >= 1
trigger1 = time = 0
ID = 4000

[State 3003, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 3003, removeEX]
type = RemoveExplod
triggerall = NumExplod(8002) >= 1
trigger1 = time = 0
ID = 8002

[State 3003, removeEX]
type = RemoveExplod
triggerall = NumExplod(3070) >= 1
trigger1 = time = 0
ID = 3070

[State 3003, removeEX]
type = RemoveExplod
triggerall = NumExplod(8022) >= 1
trigger1 = time = 0
ID = 8022

[State 3003, removeEX]
type = RemoveExplod
triggerall = NumExplod(4010) >= 1
trigger1 = time = 0
ID = 4010

[State 3003]
type = ChangeState
trigger1 = Animtime= 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; paralisi state
[Statedef 3054]
type = S
movetype= H
physics = N
velset = -5,0

[State 3004, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3004

[State 3004,NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 50

[State 3004]
type = Playsnd
trigger1 = movehit = 1
value = 11,0
persistent = 0

[State 3004, VELSET]
type = velset
trigger1 = time = 5
X = 0
Y = 0

[State 3004, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3004,LifeAdd]
type = LifeAdd
trigger1 = time = 20
trigger2 = time = 40
trigger3 = time = 60
trigger4 = time = 80
trigger5 = time = 90
trigger6 = time = 100
trigger7 = time = 120
trigger8 = time = 140
trigger9 = time = 160
trigger10 = time = 180
trigger11 = time = 190
trigger12 = time = 200
trigger13 = time = 219
value = -14
kill = 0

[State 3004, Brilla]
type = PalFX
trigger1 = time = 0
time = 290
add = 240,50,100
sinadd = 255,10,20,3

[State 3004]
type = ChangeState
trigger1 = time = 220
value = 3055
ctrl = 1

;-----------------------
[Statedef 3055]
type = S
movetype = H
physics = S
velset = 0, 0
ctrl = 0

[State 3055, anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3004

[State 3055, posset]
type = PosSet
trigger1 = time = 0
y = 0

[State 3055, velset]
type = velset
trigger1 = time = 5
X = 0
Y = 0

[State 3055, lifeadd]
type = LifeAdd
trigger1 = time = 29
value = -15

[State 3055, playsnd]
type = PlaySnd
trigger1 = time = 29
value = s4, 0

[State 3055, flash]
type = EnvColor
trigger1 = Time = 29
value = 255,255,255
under = 0
time = 3

[State 3055, white fadeout]
type = BGPalFx
trigger1 = life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3055, selfstate]
type = SelfState
trigger1 = Time = 30
value = 5100
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------
;---------------------------------------
;---------------------------------------
;---------------------------------------------------------------------------
;Fireball
[Statedef 3100]
type = A
movetype = A
physics = N
velset = 0, 0
anim = 3005

[State 3100]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3100] 
type = Afterimage
trigger1 = Time = 0  
time = 400
Trans = Add1
PalMul      =     3,  3,  3  
PalAdd      =    36,  0,  0  
PalBright   =     0,  0,  0  
PalContrast =   255,255,255  
length      =    45	     
FrameGap    =    20	     

[State 3100, 1]
type = sprpriority
trigger1 = Time = 0
value = 1

[State 3100, 2]
type = VelAdd
trigger1 = Time = [1, 7]
x = -.5
y = .6

[State 3100, 3]
type = sprpriority
trigger1 = Time = 8
value = -1

[State 3100, 4]
type = VelAdd
trigger1 = Time = [8, 25]
x = .5
y = -.6

[State 3100, 5]
type = sprpriority
trigger1 = Time = 26
value = 1

[State 3100, 6]
type = VelAdd
trigger1 = Time = [26, 49]
x = -.5
y = .6

[State 3100, 7]
type = sprpriority
trigger1 = Time = 50
value = -1

[State 3100, 8]
type = VelAdd
trigger1 = Time = [50, 76]
x = .5
y = -.6

[State 3100, 9]
type = sprpriority
trigger1 = Time = 77
value = 1

[State 3100, 10]
type = VelAdd
trigger1 = Time = [77, 105]
x = -.5
y = .6

[State 3100, 11]
type = sprpriority
trigger1 = Time = 106
value = -1

[State 3100, 12]
type = VelAdd
trigger1 = Time = [106, 135]
x = .5
y = -.6

[State 3100, 13]
type = sprpriority
trigger1 = Time = 136
value = 1

[State 3100, 14]
type = VelAdd
trigger1 = Time = [136, 163]
x = -.5
y = .6

[State 3100, 15]
type = sprpriority
trigger1 = Time = 164
value = -1

[State 3100, 16]
type = VelAdd
trigger1 = Time = [164, 186]
x = .5
y = -.6

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 15
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 10

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 15
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 10

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 10
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 10

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 13
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 8

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 13
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 8

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 8
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 8

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 11
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 6

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 11
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 6

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 6
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 6

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 9
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 4

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 9
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 4

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 4
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 4

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 8
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 3

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 8
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 3

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 3
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 3

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 7
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 2

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 7
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 2

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 2
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 2

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 6
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 1

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 6
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 1

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X > 1
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 1

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -15
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -10

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -15
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -10

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -10
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -10

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -13
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -8

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -13
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -8

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -8
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -8

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -11
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 6

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -11
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 6

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -6
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -6

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -9
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -4

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -9
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -4

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -4
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -4

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -8
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -3

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -8
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -3

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -3
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -3

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -7
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -2

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -7
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -2

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -2
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -2

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -6
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -1

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -6
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -1

[State 3100, 17]
type = PosAdd
triggerall = ParentDist X < -1
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -1

[State 3100, 18]
type = DestroySelf
trigger1 = Time = 180
trigger2 = parent, stateno != 3001
trigger2 = parent, stateno != 3301
trigger2 = parent, stateno != 3051

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 3200]
type = A
movetype = A
physics = N
velset = 0, 0
anim = 3005

[State 3200]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3200] 
type = Afterimage
trigger1 = Time = 0  
time = 400
Trans = Add1
PalMul      =     3,  3,  3  
PalAdd      =    36,  0,  0  
PalBright   =     0,  0,  0  
PalContrast =   255,255,255  
length      =    45	     
FrameGap    =    15	     

[State 1200, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3200, 1]
type = sprpriority
trigger1 = Time = 0
value = 1

[State 3200, 2]
type = VelAdd
trigger1 = Time = [1, 7]
x = .5
y = .6

[State 3200, 3]
type = sprpriority
trigger1 = Time = 8
value = 1

[State 3200, 4]
type = VelAdd
trigger1 = Time = [8, 25]
x = -.5
y = -.6

[State 3200, 5]
type = sprpriority
trigger1 = Time = 26
value = -1

[State 3200, 6]
type = VelAdd
trigger1 = Time = [26, 49]
x = .5
y = .6

[State 3200, 7]
type = sprpriority
trigger1 = Time = 50
value = 1

[State 3200, 8]
type = VelAdd
trigger1 = Time = [50, 76]
x = -.5
y = -.6

[State 3200, 9]
type = sprpriority
trigger1 = Time = 77
value = -1

[State 3200, 10]
type = VelAdd
trigger1 = Time = [77, 105]
x = .5
y = .6

[State 3200, 11]
type = sprpriority
trigger1 = Time = 106
value = 1

[State 3200, 12]
type = VelAdd
trigger1 = Time = [106, 135]
x = -.5
y = -.6

[State 3200, 13]
type = sprpriority
trigger1 = Time = 136
value = -1

[State 3200, 14]
type = VelAdd
trigger1 = Time = [136, 163]
x = .5
y = .6

[State 3200, 15]
type = sprpriority
trigger1 = Time = 164
value = 1

[State 3200, 16]
type = VelAdd
trigger1 = Time = [164, 186]
x = -.5
y = -.6

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 15
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 10

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 15
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 10

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 10
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 10

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 13
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 8

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 13
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 8

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 8
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 8

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 11
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 6

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 11
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 6

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 6
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 6

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 9
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 4

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 9
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 4

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 4
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 4

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 8
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 3

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 8
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 3

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 3
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 3

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 7
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 2

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 7
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 2

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 2
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 2

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 6
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 1

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 6
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 1

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X > 1
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 1

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -15
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -10

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -15
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -10

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -10
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -10

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -13
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -8

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -13
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -8

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -8
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -8

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -11
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 6

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -11
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = 6

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -6
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -6

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -9
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -4

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -9
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -4

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -4
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -4

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -8
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -3

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -8
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -3

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -3
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -3

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -7
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -2

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -7
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -2

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -2
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -2

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -6
triggerall = Parent, stateno = 3001
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -1

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -6
triggerall = Parent, stateno = 3051
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -1

[State 3200, 17]
type = PosAdd
triggerall = ParentDist X < -1
triggerall = Parent, stateno = 3301
trigger1 = Time = 25
trigger2 = Time = 49
trigger3 = Time = 76
trigger4 = Time = 105
trigger5 = Time = 135
trigger6 = Time = 164
x = -1

[State 3100, 18]
type = DestroySelf
trigger1 = Time = 180
trigger2 = parent, stateno != 3001
trigger2 = parent, stateno != 3301
trigger2 = parent, stateno != 3051

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Trama corallina in salto
[Statedef 3300]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 3300
poweradd = -1000
sprpriority = 0

[State 3300]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 0

[State 3300]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1500, 0

[State 3300]
type = SuperPause
trigger1 = time = 10
time = 15
movetime = 15
anim = S70091
pos = 0, -80
darken = 0

[State 3300, Darken]
type = BGPalfx
trigger1 = time = 10
ignorehitpause = 1
time = 85
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3300]
type = PlaySnd
trigger1 = time = 10
value = 5, 1

[State 3300, luce]
type = Explod
trigger1 = time = 11
pos = 0,-80
anim = 1506
ID = 1506
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 50

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(1506) >= 1
trigger1 = AnimElem = 8
ID = 1506

[State 3300, Brilla]
type = PalFX
trigger1 = time = 11
time = 50
add = 0,0,0
sinadd = 200,150,150,3

[State 3300, arcobaleno]
type = Explod
triggerall = NumExplod(8022) = 0
trigger1 = time = 20
anim = 8022
ID = 8022
pos = -320,-450
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1
scale = 2, 3

[State 3300]
type = PlaySnd
trigger1 = time = 25
value = 1100, 1

[State 3300]
type = Explod
triggerall = NumExplod(8400) = 0
trigger1 = movehit = 1
;trigger1 = projcontact1402 = 1
anim = 8400
ID = 8400
pos = 0, 0
postype = p2
bindtime = -1
supermove = 1
sprpriority = 2
persistent = 0
removetime = -1

[State 3300]
type = Projectile
trigger1 = time = 28
attr = A, HP
ignorehitpause = 1
projanim = 1402
projhitanim = 1506
projID = 1402
offset = -10,-90
velocity = 10,10
damage = 17,20
animtype = light
guardflag = HA
pausetime = 12,0
sparkno = s1402
sparkxy = 30,0
hitsound   = S1,5
guardsound = S6,0
ground.type = low
ground.slidetime = 0
ground.hittime  = 400
ground.velocity = 0
air.velocity = 0,0
p2stateno = 3004
afterimage.time = 200
afterimage.length = 20
afterimage.PalContrast =  60,60,255
afterimage.PalBright = 50,50,50
afterimage.trans = Add
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 3300]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3300]
type = ChangeState
triggerAll = Time = 65
trigger1 = p2stateno = 3004
;trigger1 = projcontact1402 = 1
value = 3301
ctrl = 1

[State 3300]
type = ChangeState
triggerAll = Time = 65
trigger1 = p2stateno != 3004
;trigger1 = projcontact1402 = 0
value = 3302
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 3301]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 3302

[State 3301]
type = PlaySnd
trigger1 = Time = 0
value = 3000, 0
channel = 0

[State 3301]
type = PlaySnd
trigger1 = Time = 0
value = 3000, 1

[State 3301]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3301, lampi]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 100
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 3301, flash]
type = EnvColor
trigger1 = Time = 70
value = 255,255,255
under = 0
time = 2

[State 3301]
type = Helper
trigger1 = Time = 25
ID = 3100
pos = 5, -70
postype = p1
stateno = 3100
helpertype = normal
keyctrl = 0
ownpal = 0

[State 3301]
type = Helper
trigger1 = Time = 31
ID = 3200
pos = 5, -70
postype = p1
stateno = 3200
helpertype = normal
keyctrl = 0
ownpal = 0

[State 3301]
type = Explod
trigger1 = Time = 180
anim = 3006
ID = 3006
pos = 5, -65
postype = p1
facing = 1
vel = 0, 0
sprpriority = 1
ontop = 0

[State 3301, cosmo]
type = Explod
triggerall = NumExplod(3070) = 0
trigger1 = AnimElem = 3
pos = -1,14
anim = 3070
ID = 3070
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3301, arcobaleno]
type = Explod
triggerall = NumExplod(4000) = 0
trigger1 = Time = 0
anim = 4000
ID = 4000
pos = -320,0
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3301, arcobaleno]
type = Explod
triggerall = NumExplod(4010) = 0
trigger1 = Time = 70
anim = 4010
ID = 4010
pos = -320,0
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3301] 
type = AssertSpecial
trigger1 = Time = [70,210]
flag = noFG

[State 3301]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 86
trigger3 = Time = 160
value = 3000, 2

;[State 3301, Helper]
;type = Helper
;triggerAll = Time = [60, 180]
;triggerall = Numhelper(4000) = 0
;triggerall = Numhelper(4010) = 0
;triggerall = Numhelper(4040) = 0
;triggerall = Numhelper(4050) = 0
;triggerall = Numhelper(4051) = 0
;triggerall = Numhelper(4052) = 0
;triggerall = Numhelper(4053) = 0
;triggerall = Numhelper(4060) = 0
;triggerall = power >= 1000
;trigger1 = command = "Kanon"
;sprpriority = 1
;pos = 1,0
;postype = Back
;stateno = 4000
;Id = 4000
;helpertype = normal
;keyctrl = 0          
;ownpal = 0

[State 3301, removeEX]
type = RemoveExplod
triggerall = NumExplod(4010) >= 1
trigger1 = Numhelper(4000) >= 1
trigger2 = Numhelper(4010) >= 1
trigger3 = Numhelper(4040) >= 1
trigger4 = Numhelper(4050) >= 1
trigger5 = Numhelper(4051) >= 1
trigger6 = Numhelper(4052) >= 1
trigger7 = Numhelper(4053) >= 1
trigger8 = Numhelper(4060) >= 1
ID = 4010

[State 3301]
type = ChangeState
trigger1 = Time = 210
value = 3303
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Fine - HIT
[Statedef 3303]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 3303

[State 3002]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(4000) >= 1
trigger1 = AnimElem = 2
ID = 4000

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(8022) >= 1
trigger1 = AnimElem = 2
ID = 8022

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(4010) >= 1
trigger1 = AnimElem = 2
ID = 4010

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(3070) >= 1
trigger1 = AnimElem = 2
ID = 3070

[State 3002, cosmo]
type = Explod
triggerall = NumExplod(3072) = 0
trigger1 = AnimElem = 2
pos = -1,14
anim = 3072
ID = 3072
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3302]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3302]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Fine - No HIT
[Statedef 3302]
type    = A
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 3301

[State 3302, removeEX]
type = RemoveExplod
triggerall = NumExplod(8022) >= 1
trigger1 = time = 0
ID = 8022

[State 3302]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3302]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Sottile Trama Corallina - Furia - By Squall---------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Caricamento
[Statedef 3400]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0, 0
anim = 3400
juggle = 1

[State 3300]
type = SuperPause
trigger1 = animelem = 1
time = 174
movetime = 174
anim = -1
pos = 0, -80
darken = 1

[State 2010, Brilla]
type = PalFX
trigger1 = AnimElem = 1
time = 174
add = 0,0,0
sinadd = 200,150,150,3

[State 2010]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000, 3

[State 2010]
type = Explod
trigger1 = time = 0; (time%29) = 0
anim = 70091
pos = 8,-56
postype = p1
sprpriority = 2
ownpal = 1
ignorehitpause = 0
bindtime = -1
removeongethit = 1
supermovetime = 174
removetime = 174

[State 2010]
type = PlaySnd
triggerall = time <= 160
trigger1 = time%29 = 0
value = 1100, 1

[State 2010]
type = ChangeState
trigger1 = Time = 182
value = 3401
ctrl = 0

;---------------------------------------------------------
;Fireballs

[Statedef 3401]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 3400
juggle = 1
poweradd = -2000

[State 2010]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 30
trigger3 = Time = 50
trigger4 = Time = 80
trigger5 = Time = 90
trigger6 = Time = 110
trigger7 = Time = 130
value = 1200, 0
persistent = 1

[State 2010, Brilla]
type = PalFX
trigger1 = AnimElem = 1
time = 154
add = 0,0,0
sinadd = 200,150,150,3

[State 2010, Helper]
type = Helper
trigger1 = Time = 0
trigger2 = Time = 30
trigger3 = Time = 50
trigger4 = Time = 80
trigger5 = Time = 90
trigger6 = Time = 110
trigger7 = Time = 130
trigger8 = Time = 160
stateno = 2004
ID = 2004
helpertype = Normal
postype = p1
pos = 80, -70
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 2010, Helper]
type = Helper
trigger1 = Time = 10
trigger2 = Time = 20
trigger3 = Time = 40
trigger4 = Time = 60
trigger5 = Time = 100
trigger6 = Time = 120
trigger7 = Time = 140
trigger8 = Time = 164
stateno = 3403
ID = 2001
helpertype = Normal
postype = p1
pos = 80, -62
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 2010, Helper]
type = Helper
trigger1 = Time = 0
trigger2 = Time = 20
trigger3 = Time = 50
trigger4 = Time = 70
trigger5 = Time = 90
trigger6 = Time = 110
trigger7 = Time = 150
trigger8 = Time = 160
stateno = 2006
ID = 2006
helpertype = Normal
postype = p1
pos = 80, -53
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 2010]
type = ChangeState
trigger1 = Time = 165
value = 3402
ctrl = 1
;---------------------------------------------------------------------------
;Teleport
[Statedef 3402]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 3402
juggle = 1

[State 2010]
type = PlaySnd
trigger1 = AnimElem = 11
trigger2 = Animelem = 26
value = 1300, 1

[State 2010]
type = PosAdd
trigger1 = animelem = 22
X = p2bodydist X - 30
Y = p2bodydist Y - 80

[State 2010]
type = ChangeState
trigger1 = AnimTime = 0
value = 3300
ctrl = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Helper fireball Furia
[Statedef 3403]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 8530
ctrl = 0
sprpriority = 0

[State 2001]
type = Velset
trigger1 = time >= 4
x = 10

[State 2001]
type = HitDef
trigger1 = time = 0
attr = A, HP                     
damage = 10,4
animtype = medium                
guardflag = MA
hitflag = MAF
pausetime = 10,85
sparkno = s70041
sparkxy = -30,0
hitsound   = S1,5
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
Palfx.time          = 10
Palfx.add           = 240,50,100
Palfx.sinadd        = -112,-122,-112,3
getpower = 0
givepower = 0

[State 2001]
type = Explod
trigger1 = movehit = 1
anim = 8006
pos = -10,0
sprpriority = 2
ownpal = 1
ignorehitpause = 0
bindtime = -1

[State 2001, afterimage]
type = AfterImage
trigger1 = time = 1
time = 100
length = 20
PalContrast =  60,60,255
PalBright = 50,50,50
trans = Add

[State 2001]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP, SP, HP, NP, NA
slot = 0
stateno = 2002

[State 2001]
type = DestroySelf
trigger1 = movecontact = 1

[State 2001]
type = DestroySelf
trigger1 = movehit = 1

[State 2001]
type = ChangeState
trigger1 = time = 60
value = 3403
ctrl = 1

[Statedef 3403]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 7004
ctrl = 0
sprpriority = 0

[State 2002]
type = Velset
trigger1 = 1
x = 0
y = 0

[State 2002, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2002]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Kanon RUN
[Statedef 4000]
type    = S
physics = S
anim = 8501
sprpriority = 1

[State 4000]
type = VelSet
trigger1 = 1
x = 7

[State 4050]
type = NotHitBy
trigger1 = 1
value = ,NT,ST,HT 

[State 4050]
type = HitOverride
trigger1 = 1
slot = 0
stateno = 4050
attr = SCA, AA, AP, AT
ignorehitpause = 1
time = 1

[State 4000]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3,0

[State 4000]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3,1

[State 4000, POLVERE]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
pos = 50,0
anim = 7085
sprpriority = 3
supermove = 1

[State 4000]
type = ChangeState
trigger1 = P2Dist X <= 210
value = 4010

[State 4000]
type = DestroySelf
trigger1 = FrontEdgeDist <= 0
trigger2 = time = 150

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;fireball A
[Statedef 4010]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0, 0
anim = 8507
juggle = 1
PowerAdd = -1000

[State 4010, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4010, Spause]
type = Superpause
trigger1 = AnimElem = 2
anim = 7109
pos = 20,-64
Time = 26
movetime = 0
darken = 1

[State 4010]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12, 0

[State 4010, sfondo]
type = Explod
trigger1 = AnimElem = 3
triggerall = NumExplod(8514) = 0
anim = 8514
ID = 8514
pos = -320,0
postype = right
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 100

[State 4010, removeEX]
type = RemoveExplod
triggerall = NumExplod(8514) = 1
trigger1 = AnimElem = 11
ID = 8514

[State 4010]
type = AfterImage
trigger1 = AnimElem = 2
time = 150
length = 15
palbright = 40,40,40
palcontrast = 250,250,200
palpostbright = -80,-80,-80
timegap = 1
trans = add

[State 4010]
type = PlaySnd
trigger1 = time = 0
value = 13, 0

[State 4010]
type = Explod
triggerall = NumExplod(8516) = 0
trigger1 = Animelem = 1
anim = 8516
ID = 8516
pos = 16,16
sprpriority = -2
ownpal = 0
ignorehitpause = 0
bindtime = -1
removeongethit = 1

[State 4010]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
value = 0, 2

[State 4010, Brilla]
type = PalFX
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
time = 15
add = 0,0,0
sinadd = 200,200,100,3

[State 4010]
type = Projectile
trigger1 = AnimElem = 4
projID = 8513
projanim = 8513
projhitanim = 8513
offset = 75, -75
velocity = 6,0
attr = S, HP
animtype  = hard
damage    = 50
guardflag = MA
hitflag = MAF
pausetime = 0,25
sparkno = S7103
sparkxy = 80,0
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -4
air.velocity = -4,-2
afterimage.time = 200
afterimage.length = 20
afterimage.PalContrast =  255,255,100
afterimage.PalBright = 50,50,50
afterimage.trans = Add
envshake.time = 15           
envshake.ampl = 7
envshake.freq = 176
fall = 1
fall.recover = 0             
fall.damage = 0             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 15
Palfx.add           = 220,220,0
Palfx.sinadd        = -112,-122,-112,3
p2stateno = 3005
getpower = 0
givepower = 0

[State 4010]
type = Projectile
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
projID = 8513
projanim = 8513
projhitanim = 8513
offset = 75, -75
velocity = 6,0
attr = S, HP
animtype  = hard
damage    = 100
guardflag = MA
hitflag = MAF
pausetime = 0,25
sparkno = S7103
sparkxy = 80,0
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -4
air.velocity = -4,-2
afterimage.time = 200
afterimage.length = 20
afterimage.PalContrast =  255,255,100
afterimage.PalBright = 50,50,50
afterimage.trans = Add
envshake.time = 15           
envshake.ampl = 7
envshake.freq = 176
fall = 1
fall.recover = 0             
fall.damage = 25             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 15
Palfx.add           = 220,220,0
Palfx.sinadd        = -112,-122,-112,3
getpower = 0
givepower = 0

[State 4010]
type = Explod
trigger1 = Animelem = 2
anim = 7110
pos = 25,1
sprpriority = -3
ownpal = 0
ignorehitpause = 0
bindtime = -1
removetime = 65
removeongethit = 1

[State 4010]
type = ChangeState
trigger1 = AnimTime = 0
value = 4040
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;ride
[Statedef 4040]
type    = S
physics = S
anim = 8504
sprpriority = 1

[State 4040, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4040]
type = PlaySnd
trigger1 = time = 0
value = 0, 1

[State 4040]
type = PlaySnd
trigger1 = time = 0
value = 13, 1

[State 4040]
type = AfterImage
trigger1 = time = 0
time = 1
length = 15
palbright = 40,40,40
palcontrast = 250,250,200
palpostbright = -80,-80,-80
timegap = 1
trans = add

[State 4040]
type = Explod
triggerall = NumExplod(8515) = 0
trigger1 = Animelem = 1
anim = 8515
ID = 8515
pos = 0,16
sprpriority = -2
ownpal = 0
ignorehitpause = 0
bindtime = -1
removeongethit = 1
removetime = 50

[State 4040]
type = Explod
trigger1 = Animelem = 1
anim = 7110
pos = 0,1
sprpriority = -3
ownpal = 0
ignorehitpause = 0
bindtime = -1
removeongethit = 1
removetime = 50

[State 4040]
type = ChangeState
trigger1 = Time = 50
value = 4060
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Hit
[Statedef 4050]
type = A
movetype = H
physics = N
sprpriority = -2
anim = 8510
ctrl = 0

[State 4050, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4050]
type = PalFX
trigger1 = Time = 0
time = 2
add = 80,80,100

[State 4050, PosAdd]
type = PosAdd
trigger1 = TimeMod = 1,0
y = -4
x = -2

[State 4050, PosAdd]
type = PosAdd
trigger1 = TimeMod = 2,0
y = 8
x = 1

[State 4050, PosFreeze]
type = PosFreeze
trigger1 = !HitShakeOver
x = 2
y = 1

[State 4050]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 4050]
type = ChangeState
trigger1 = AnimTime = 0
value = 4051
ctrl = 1

;---------------------------------------------------------------------------
;Hit Air
[Statedef 4051]
type = A
movetype = H
physics = N
sprpriority = -2
ctrl = 0
anim = 8511

[State 4051, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4051, VelSet]
type = VelSet
trigger1 = 1
X = -1

[State 4051, VelSet]
type = VelSet
trigger1 = Time = 0
y = Vel Y - .5

[State 4051, VelAdd]
type = VelAdd
trigger1 = Time = 15
y = .8

[State 4051, PosSet]
type = PosSet
trigger1 = Time > 0
trigger1 = Pos Y >= 0
y = 0

[State 4051]
type = ChangeState
trigger1 = Pos Y >= 0
value = 4052

;---------------------------------------------------------------------------
;Hit Bounce
[Statedef 4052]
type = A
movetype = H
physics = N
sprpriority = -2
ctrl = 0
anim = 8512

[State 4053, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4052, POLVERE]
type = Explod
trigger1 = Time = 0
pos = 0,0
anim = f60
sprpriority = -3

[State 4052, EnvShake]
type = EnvShake
trigger1 = Time = 0
time = 20
freq = 100
ampl = -5
phase = 10

[State 4052, Snd]
type = PlaySnd
trigger1 = Time = 1
value = 7,1

[State 4052, VelSet]
type = VelSet
trigger1 = Time = 0
y = -5

[State 4052, VelAdd]
type = VelAdd
trigger1 = Pos Y < 0
y = .4

[State 4052, VelSet]
type = VelSet
trigger1 = Time > 0
trigger1 = Pos Y >= 0
y = 0

[State 4052, PosSet]
type = PosSet
trigger1 = Time > 0
trigger1 = Pos Y >= 0
trigger2 = Time = 0
y = 0

[State 4052]
type = ChangeState
trigger1 = Time >= 10
trigger1 = Pos Y >= 0
value = 4053

;---------------------------------------------------------------------------
;Hit End
[Statedef 4053]
type = S
movetype = H
physics = S
ctrl = 0
anim = 8519
ctrl = 0
sprpriority = -2

[State 4053, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4053]
type = VelSet
trigger1 = Time <= 0
x = 0
y = 0

[State 4053]
type = PosSet
trigger1 = 1
y = 0

[State 4053]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Kanon End
[Statedef 4060]
type    = S
physics = S
anim = 8501
sprpriority = -2

[State 4060]
type = VelSet
trigger1 = 1
x = 7

[State 4060, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4060]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3,0

[State 4060]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3,1

[State 4060, POLVERE]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
pos = 50,0
anim = 7085
sprpriority = 3
supermove = 1

[State 4060]
type = DestroySelf
trigger1 = FrontEdgeDist <= 0
trigger2 = time = 150

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; AI variabili (statedef -2)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================

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

;===========================================================================

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = Time = 1
trigger1 = anim = 225
trigger2 = anim = 220
trigger3 = anim = 255
trigger4 = anim = 250
trigger5 = anim = 420
trigger6 = anim = 450
trigger7 = anim = 605
trigger8 = anim = 615
trigger9 = anim = 625
trigger10 = anim = 620
trigger11 = anim = 635
trigger12 = anim = 640
trigger13 = anim = 650
value = 1100,2

[State -2, HitAttack]
type = PlaySnd
triggerall = Random < 300
triggerall = Time = 1
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
trigger5 = anim = 5020
trigger6 = anim = 5021
value = 5000, 0

[State -2, HitAttack]
type = PlaySnd
triggerall = Random < 300
triggerall = Time = 1
trigger1 = anim = 5002
trigger2 = anim = 5012
trigger3 = anim = 5022
value = 5000, 1

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
;Combo 
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------



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
value = 1000

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 205
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 205) && (prevstateno = 210) && (movecontact) 
value = 1000

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 215
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 215) && (prevstateno = 210) && (movecontact) 
value = 1010

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
value = 1010


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;3 calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 255) 
trigger1 = (movecontact)
value = 1120

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
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 255) 
trigger1 = (movecontact)
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 255) && (movecontact) 
value = 250

;3 calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235) 
trigger1 = (movecontact)
value = 245
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 245) && (prevstateno = 235) && (movecontact) 
value = 255

;3 calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235) 
trigger1 = (movecontact)
value = 245
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 245) && (prevstateno = 235) && (movecontact) 
value = 250

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 1100

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 1110

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 1120

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 1200

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 1210

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 650) 
trigger1 = (movecontact)
value = 1220

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 635) 
trigger1 = (movecontact)
value = 1110

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
Triggerall = roundstate = 2
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
value = 605
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 605) && (prevstateno = 610) && (movecontact) 
value = 620

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 605
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 605) && (prevstateno = 600) && (movecontact) 
value = 620

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 615

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 625

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 625

;combo in salto
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

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 635
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 635) && (prevstateno = 630) && (movecontact) 
value = 640

;combo in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 650

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Special Moves
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Charge
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 89])
trigger1 = (P2bodydist X >= 150) && (power >= 2999) && (prevstateno != 5120)
value = 900

;presa
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [90, 134])
trigger1 = (P2bodydist X <= 40) && (prevstateno != 5120)
value = 1500

;teleport
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [135, 179])
trigger1 = (P2bodydist X <= 250) && (prevstateno != 5120)
value = 1300

;roll aVanti
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [180, 224])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120)
value = 1900

;roll indietro
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [225, 269])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 1900

;Fireball 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [270, 314])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120) 
value = 1000
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [270, 314])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120) 
value = 2010

;fireball 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [315, 359])
trigger1 = (P2bodydist X < 150) && (prevstateno != 5120) 
value = 1010
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [315, 359])
trigger1 = (P2bodydist X < 150) && (prevstateno != 5120) 
value = 2000

;uppercut A
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [360, 404])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) 
value = 1100
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (p2statetype = A) && (ctrl) && (random = [360, 404])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) 
value = 1100

;uppercut B
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [405, 449])
trigger1 = (P2bodydist X <= 60) && (prevstateno != 5120) 
value = 1110
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (p2statetype = A) && (ctrl) && (random = [405, 449])
trigger1 = (P2bodydist X <= 60) && (prevstateno != 5120) 
value = 1110

;uppercut C
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [450, 494])
trigger1 = (P2bodydist X <= 70) && (prevstateno != 5120)
value = 1120
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (p2statetype = A) && (ctrl) && (random = [450, 494])
trigger1 = (P2bodydist X <= 70) && (prevstateno != 5120) 
value = 1120

;rotolamento aereo A
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [495, 539])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120) 
value = 1200

;rotolamento aereo B
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [540, 584])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120) 
value = 1210

;rotolamento aereo C
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [585, 629])
trigger1 = (P2bodydist X <= 200) && (prevstateno != 5120)
value = 1220

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [630,674])
value = 195

;---------------------------------------------------------------------------
;Super Moves
;---------------------------------------------------------------------------

;Sottile Trama Corallina (Air)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl)
trigger1 = (p2bodydist X <= 250) && (power >= 1000) && (random = [675,719])
value = 3300

;Sottile Trama Corallina
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 100) && (power >= 1000) && (random = [720,764])
value = 3000

;Sottile Trama Corallina - Kanon
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 100) && (power >= 2000) && (random = [765,809])
value = 3050

;Sottile Trama Corallina - Furia
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 100) && (power >= 3000) && (random = [810,854])
value = 3400

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

[State -3, remove mouth]
type = RemoveExplod
triggerall = NumExplod(186) >= 1
trigger1 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
ID = 186

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(3073) >= 1
trigger1 = stateno != 1201
trigger2 = stateno != 1211
trigger3 = stateno != 1221
ID = 3073

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(8400) >= 1
trigger1 = p2stateno != 3004
trigger1 = p2stateno != 3054
ID = 8400

[State -3, corallo]
type = Explod
triggerall = NumExplod(8401) = 0
trigger1 = p2stateno = 3005
trigger2 = p2stateno = 3055
anim = 8401
ID = 8401
pos = 0, 0
postype = p2
bindtime = -1
supermove = 1
sprpriority = 2
persistent = 0

;-------------------------------------

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

;--------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 2
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 2
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 5
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 5
value = F3, 1

;--------------------------------------

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = time = 1
value = 2, 0

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = 2, 1

[State -3, RUN_FWD]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
trans = add1

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = time = 1
value = 2, 2

;--------------------------------------

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = time = 1
time = 25
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
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
trigger1 = AnimElem = 3
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
trigger1 = AnimElem = 3
value = 3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 3
value = F3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 6
value = 3, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 6
value = F3, 1

;--------------------------------------

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = time = 1
value = 2,0

[State -3, Run Back]
type = AfterImage
triggerall = stateno = 105
trigger1 = time = 1
time = 20
length = 15
palbright = 40,40,40
palcontrast = 250,200,200
palpostbright = -80,-80,-80
timegap = 1
trans = add1

[State -3, Run Back]
type = Explod
triggerall = stateno = 105
trigger1 = time = 5
pos = -10,15
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
triggerall = anim = 5150
trigger1 = time = 3
trigger2 = time = 7
value = 6, 1

;--------------------------------------

[State -3, StopSnd]
Type = Stopsnd
Trigger1 = Power < 3000
Trigger2 = Stateno != 0
channel = 9