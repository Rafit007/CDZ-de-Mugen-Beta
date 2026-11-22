; Cassios St File by Tux
;---------------------------------------------------------------------------

; Lose State Decider
[Statedef 170]
type = s

[State 170, 1]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 170, X]
type = ChangeState
trigger1 = (P2Name = "shaina") || (P3Name = "shaina") || (P4Name = "shaina")
value = 171

[State 170, 2]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 171

[State 170, 2]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 172

;---------------------------------------------------------------------------

; Time Over Lose speaking
[Statedef 171]
type = s
ctrl = 0
anim = 171
velset = 0,0

[State 171, 1]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = RoundNotOver

[State 171, 2]
type = PlaySnd
trigger1 = Time = 0
value = 171,0
channel = 0

;--------------------------------------------------------------------------

; Time Over Lose crying
[Statedef 172]
type = s
ctrl = 0
anim = 170
velset = 0,0

[State 172, 1]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver

[State 172, 2]
type = Explod
trigger1 = Time = 0
postype = p1
pos = 50,0
bindtime = -1
removetime = -1
sprpriority = 3
anim = 8000
id = 8000

[State 172, 3]
type = PlaySnd
trigger1 = Time = 0
value = 0,8

[State 172, 4]
type = PlaySnd
trigger1 = Time = 30
value = 170,0
channel = 0

[State 172, 5]
type = SprPriority
trigger1 = AnimElem = 12
value = 4

;---------------------------------------------------------------------------

; WinPose State Decider
[Statedef 180]
type = s

[State 180, 4]
type = ChangeState
trigger1 = var(9) = 1
value = 182

[State 180, 2]
type = changestate
trigger1 = Var(7) = 1
value = 184

[State 180, 3]
type = ChangeState
triggerall = (P2Name != "shaina") && (P3Name != "shaina") && (P4Name != "shaina")
trigger1 = Matchover = 0
value = 179

[State 180, 4]
type = ChangeState
trigger1 = (P2Name = "shaina") || (P3Name = "shaina") || (P4Name = "shaina")
value = 182

[State 180, 5]
type = ChangeState
triggerall = (P2Name != "shaina") && (P3Name != "shaina") && (P4Name != "shaina")
trigger1 = Matchover = 1
value = 181

;---------------------------------------------------------------------------

; WinPose with Shaina's voice
[Statedef 179]
type = s
ctrl = 0
anim = 180
velset = 0,0

[State 179, 1]
type = AssertSpecial
trigger1 = Time = [0,320]
flag = RoundNotOver

[State 179, 2]
type = PlaySnd
trigger1 = Time = 0
value = 180,0
channel = 0

;---------------------------------------------------------------------------

; WinPose final
[Statedef 181]
type = s
ctrl = 0
anim = 181
velset = 0,0

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0,225]
flag = RoundNotOver

[State 181, 2]
type = PlaySnd
trigger1 = Time = 0
value = 180,1
channel = 0

[State 180, 4]
type = ChangeState
trigger1 = (P2Name = "shaina") || (P3Name = "shaina") || (P4Name = "shaina")
value = 182

;---------------------------------------------------------------------------
; Over Lose crying Shaina
[Statedef 182]
type = s
ctrl = 0
anim = 172
velset = 0,0

[State 172, 1]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver

[State 172, 4]
type = PlaySnd
trigger1 = Time = 30
value = 170,0
channel = 0

[State 172, 5]
type = SprPriority
trigger1 = AnimElem = 12
value = 4

;---------------------------------------------------------------------------

; Winpose After Fatality
[Statedef 184]
type = s
ctrl = 0
anim = 3403
velset = 0,0

[State 179, 1]
type = AssertSpecial
trigger1 = Time = [0,320]
flag = RoundNotOver

[State 179, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 52,0

[State 179, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 5000,2

[State 179, Shaina]
type = Explod
trigger1 = AnimElem = 6
anim = 3405
scale = 1.1, 1.1
sprpriority = -1
postype = back
pos = -20,0
supermove = 1
bindtime = 1
ownpal = 1

[State 179, 3]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3400,2
channel = 0

;---------------------------------------------------------------------------

; Intro State Decider
[Statedef 190]
type = s
ctrl = 0
velset = 0,0

[State 190, 2]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 190, 3]
type = ChangeState
trigger1 = p2name = "seiyaT" || p4name = "seiyaT"
value = 192

[State 190, 3]
type = ChangeState
triggerall = p2name != "seiyaT" && p4name != "seiyaT"
trigger1 = Var(2) = [0,49]
value = 189

[State 190, 4]
type = ChangeState
triggerall = p2name != "seiyaT" && p4name != "seiyaT"
trigger1 = Var(2) = [50,99]
value = 191

;------------------------------------------

; Intro laughing
[Statedef 189]
type = s
ctrl = 0
anim = 190
velset = 0,0

[State 189, 1]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = Intro

[State 189, 2]
type = playsnd
trigger1 = animelem = 1
value = 190,1
channel = 0

[State 189, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 189, 3]
type = changestate
trigger1 = animtime = 0
value = 0

;------------------------------------------

; Intro speaking
[Statedef 191]
type = s
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = Intro

[State 191, 2]
type = playsnd
trigger1 = animelem = 3
value = 190,0
channel = 0

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
type = changestate
trigger1 = animtime = 0
value = 0

;------------------------------------------

; Intro Vs Seiya Training
[Statedef 192]
type = s
ctrl = 0
anim = 192
velset = 0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,1300]
flag = Intro

[State 191, 1]
type = palfx
trigger1 = Time = 915
add = 255, 255, 255
time = 60

[State 191, 1]
type = BGpalfx
trigger1 = Time = 915
add = 255, 255, 255
time = 60

[State 200, 1]
type = hitdef
trigger1 = animelem = 7
attr = s, na
damage = 0,0
getpower = 0
givepower = 0
animtype = light
guarDFlag = ma
hitflag = maf
priority = 3
pausetime = 3,6
sparkno = S7000
sparkxy = -10,-76
guard.sparkno = S7006
hitsound = S1, 0
guardsound = S6, 0
ground.type = high
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = high
air.velocity = -1.4,-3
air.hittime = 12
p1stateno = 193
p2stateno = 194

[State 191, 2]
type = playsnd
trigger1 = animelem = 2
value = 3100,2
channel = 0

[State 191, 2]
type = playsnd
trigger1 = animelem = 11
value = 3000,1

[State 191, 2]
type = playsnd
trigger1 = time = 875
value = 3000,0
channel = 0

[State 191, 2]
type = playsnd
trigger1 = animelem = 16
value = 171,0
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

[State 191, 3]
type = changestate
trigger1 = animtime = 0
value = 0

;------------------------------------------

; Intro Vs Seiya Training (p1)
[Statedef 193]
type = s
ctrl = 0
anim = 192
velset = 0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,400]
flag = Intro

[State 191, 2]
type = changeanim
trigger1 = time = 0
value = 192
elem = 8

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

[State 191, 3]
type = changestate
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------

; Taunt State Decider 
[Statedef 199]
type = S

[State 199, 1]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 199, 2]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 197

[State 199, 2]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 198

;---------------------------------------------------------------------------

; Taunt 1
[Statedef 197]
type = S
ctrl = 0
anim = 198
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 197, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 195,0
channel = 0

[State 197, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Taunt 2
[Statedef 198]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 198, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 195,1
channel = 0

[State 198, 1]
type = PlaySnd
trigger1 = AnimElem = 14
value = 195,2
channel = 0

[State 198, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Stand light punch
[Statedef 200]
type    = s
movetype= a
physics = s
juggle  = 1                      
velset = 0,0
ctrl = 0
anim = 200
poweradd = 50
sprpriority = 2

[State 200, 1]
type = hitdef
trigger1 = animelem = 2
attr = s, na
damage = 20
getpower = 0
givepower = 0
animtype = light
guarDFlag = ma
hitflag = maf
priority = 3
pausetime = 3,6
sparkno = S7000
sparkxy = -10,-76
guard.sparkno = S7006
hitsound = S1, 0
guardsound = S6, 0
ground.type = high
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = high
air.velocity = -1.4,-3
air.hittime = 12

[State 200, 1]
type = playsnd
trigger1 = time = 0
value =0,0

[State 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 200,0

[State 200, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Stand light punch from close distance
[Statedef 201]
type    = s
movetype= a
physics = s
juggle  = 1
velset = 0,0
ctrl = 0
anim = 201
poweradd = 50
sprpriority = 2

[State 201, 1]
type = hitdef
trigger1 = animelem = 2
attr = s, na
damage = 20
getpower = 0
givepower = 0
animtype = light
guarDFlag = ma
hitflag = maf
priority = 3
pausetime = 7,10
sparkno = S7000
sparkxy = -10,-110
guard.sparkno = S7006
hitsound = S1, 0
guardsound = S6, 0
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = high
air.velocity = -1.4,-3
air.hittime = 12

[State 201, 2]
type = playsnd
trigger1 = time = 0
value =0,0

[State 201, 4]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Stand medium punch 
[Statedef 210]
type    = s
movetype= a
physics = s
juggle  = 4
ctrl = 0
velset = 0,0
anim = 210
poweradd = 50
sprpriority = 2

[State 210, 1]
type = playsnd
trigger1 = time = 0
value =0,1

[State 210, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 210,0

[State 210, 2]
type = hitdef
trigger1 = animelem = 5
attr = s, na
animtype  = medium
damage    = 30
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 8,12
sparkno = S7010
sparkxy = -10,-105
guard.sparkno = S7006
hitsound = S1, 1
guardsound = S6, 0
ground.type = high
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 210, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Stand medium punch from close distance
[Statedef 211]
type    = s
movetype= a
physics = s
juggle  = 4
ctrl = 0
velset = 0,0
anim = 211
poweradd = 50
sprpriority = 2

[State 211, 1]
type = playsnd
trigger1 = time = 0
value =0,1

[State 211, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 200,0

[State 211, 2]
type = hitdef
trigger1 = animelem = 3
attr = s, na
animtype  = medium
damage    = 30
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 5,10
sparkno = S7010
sparkxy = -10,-110
guard.sparkno = S7006
hitsound = S1,1
guardsound = S6, 0
ground.type = high
ground.slidetime = 9
ground.hittime  = 10
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 211, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Stand strong punch 
[Statedef 220]
type    = s
movetype= a
physics = s
juggle  = 8
ctrl = 0
velset = 0,0
anim = 220
poweradd = 50
sprpriority = -1

[State 220, width]
type = width
trigger1 = (animelemtime (2) >= 0) && (animelemtime (7) < 0)
value = 15,0

[State 220, 1]
type = playsnd
trigger1 = time = 2
value =0,2

[State 220, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 210,0

[State 220, 2]
type = hitdef
trigger1 = animelem = 4
attr = s, na
animtype  = hard
damage    = 40
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 3,6
sparkno = S7002
sparkxy = -10,-70
guard.sparkno = S7006
hitsound = S1,2
guardsound = S6, 0
ground.type = high
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4
fall = 1

[State 220, 3]
type = sprpriority
trigger1 = animelem = 5
value = 2

[State 220, 4]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Stand strong punch from close distance
[Statedef 221]
type    = S
movetype= A
physics = S
juggle  = 8
velset = 0,0
anim = 221
ctrl = 0
poweradd = 50
sprpriority = 2

[State 221, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(16) < 0
value = 5,0

[State 221, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value =0,2

[State 211, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 220,0

[State 221, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Up
damage    = 40
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 15,15
sparkno = S7004
sparkxy = 0,-110
guard.sparkno = S7006
hitsound   = S1, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -1.3,-25
guard.velocity = -11
air.velocity = -1.3,-25
airguard.velocity = -4.5,-5
envshake.time = 25
envshake.ampl = 7
envshake.freq = 176
p2facing = 1
fall = 1
fall.recover = 0
fall.damage = 20
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100
maxdist = 100,-10
yaccel = .8

[State 221, 4]
type = ChangeState
trigger1 = MoveHit
value = 222

[State 221, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 222]
type    = S
movetype= A
physics = S
anim = 222

[State 222, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Stand light kick
[Statedef 230]
type    = s
movetype= a
physics = s
juggle  = 1
ctrl = 0
velset = 0,0
anim = 230
poweradd = 50
sprpriority = 2

[State 230, 1]
type = playsnd
trigger1 = time = 0
value =0,0

[State 230, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 200,0

[State 230, 2]
type = hitdef
trigger1 = AnimElem = 3
attr = s, na
animtype = light
damage  = 20
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 8,15
sparkno = S7000
sparkxy = -10,-60
guard.sparkno = S7006
hitsound   = S1,0
guardsound = S6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2

[State 230, 3]
type = posadd
trigger1 = animelem = 6
x = 12

[State 230, 4]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Stand light kick from close distance
[Statedef 231]
type    = s
movetype= a
physics = s
juggle  = 1
ctrl = 0
velset = 0,0
anim = 231
poweradd = 50
sprpriority = 2

[State 231, 1]
type = playsnd
trigger1 = time = 0
value =0,0

[State 231, 2]
type = hitdef
trigger1 = AnimElem = 3
attr = s, na
animtype = light
damage  = 20
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 5,10
sparkno = S7000
sparkxy = -10,-110
guard.sparkno = S7006
hitsound   = S1, 0
guardsound = S6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = -2.2,-3.2

[State 231, 3]
type = posadd
trigger1 = animelem = 6
x = -12

[State 231, 4]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1 

;---------------------------------------------------------------------------

; Stand medium kick
[Statedef 240]
type    = s
movetype= a
physics = s
juggle  = 4
ctrl = 0
velset = 0,0
anim = 240
poweradd = 50
sprpriority = 2

[State 240, 1]
type = playsnd
trigger1 = time = 0
value =0,1

[State 240, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 210,0

[State 240, 2]
type = hitdef
trigger1 = AnimElem = 4
attr = s, na
animtype  = medium
damage = 30
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 8,12
sparkno = S7010
sparkxy = -10,-57
guard.sparkno = S7006
hitsound = S1,1
guardsound = S6,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2.5,-3.5

[State 240, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Stand medium kick from close distance
[Statedef 241]
type    = s
movetype= a
physics = s
juggle  = 4
ctrl = 0
velset = 0,0
anim = 241
poweradd = 50
sprpriority = 2

[State 241, 1]
type = playsnd
trigger1 = AnimElem = 1
value =0,1

[State 241, 2]
type = hitdef
trigger1 = AnimElem = 3
attr = s, na
animtype = light
damage  = 15
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 5,10
sparkno = S7010
sparkxy = -10,-60
guard.sparkno = S7006
hitsound   = S1,1
guardsound = S6,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = -1.2,-2.2

[State 241, 3]
type = playsnd
trigger1 = AnimElem = 4
value =0,1

[State 241, 4]
type = hitdef
trigger1 = AnimElem = 5
attr = s, na
animtype = medium
damage  = 15
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 5,10
sparkno = S7010
sparkxy = -10,-110
guard.sparkno = S7006
hitsound   = S1,2
guardsound = S6,1
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = -2.2,-3.2

[State 241, 5]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Stand strong kick
[Statedef 250]
type    = s
movetype= a
physics = s
juggle  = 8
ctrl = 0
velset = 0,0
anim = 250
poweradd = 50
sprpriority = 2
facep2 = 1

[State 250, 1]
type = playsnd
trigger1 = time = 0
value =0,2

[State 250, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 210,0

[State 250, 2]
type = hitdef
trigger1 = AnimElem = 4
attr = s, na
animtype = hard
damage = 40
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 7,12
sparkno = S7002
sparkxy = -10,-130
guard.sparkno = S7006
hitsound = S1,2
guardsound = S6,1
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8
air.velocity = -2.2,-3.2
envshake.time = 7
envshake.ampl = 4
fall = 1
 
[State 250, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Stand strong kick from close distance
[Statedef 251]
type    = s
movetype= a
physics = s
juggle  = 8
ctrl = 0
velset = 0,0
anim = 251
poweradd = 50
sprpriority = 2
facep2 = 1

[State 250, 1]
type = playsnd
trigger1 = time = 0
value =0,2

[State 250, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 220,0

[State 250, 2]
type = hitdef
trigger1 = AnimElem = 3
attr = s, na
animtype  = Up
damage = 40
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 2,12
sparkno = S7004
sparkxy = -10,-60
guard.sparkno = S7006
hitsound = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2,-12
air.velocity = -1,-11
envshake.time = 7
envshake.ampl = 4
fall = 1
 
[State 250, 3]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Crouching light punch
[Statedef 400]
type    = c
movetype= a
physics = c
juggle  = 1
ctrl = 0
anim = 400
poweradd = 50
sprpriority = 2

[State 400, 1]
type = playsnd
trigger1 = time = 0
value =0,0

[State 400, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 200,0

[State 400, 2]
type = hitdef
trigger1 = AnimElem = 2
attr = c, na
damage = 20
getpower = 0
givepower = 0
priority  = 3
animtype  = light
hitflag = maf
guarDFlag = la
pausetime = 7,11
sparkno = S7000
sparkxy = -10,-62
guard.sparkno = S7006
hitsound = S1,0
guardsound = S6,0
ground.type = low
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, 3]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------

; Crouching medium punch
[Statedef 410]
type    = c
movetype= a
physics = c
juggle  = 4
ctrl = 0
anim = 410
poweradd = 50
sprpriority = 2

[State 410, 1]
type = playsnd
trigger1 = AnimElem = 1
value =0,1

[State 410, 2]
type = hitdef
trigger1 = animelem = 2
attr = c, na
damage  = 15
getpower = 0
givepower = 0
animtype  = light
hitflag = maf
guarDFlag = la
pausetime = 5,8
sparkno = S7010
sparkxy = -10,-55
guard.sparkno = S7006
hitsound = S1,1
guardsound = S6,0
ground.type = low
ground.slidetime = 7
ground.hittime  = 10
ground.velocity = -4,0
air.velocity = -3,-4

[State 410, 3]
type = playsnd
trigger1 = AnimElem = 2
value =0,1

[State 410, 3]
type = hitdef
trigger1 = animelem = 3
attr = c, na
damage    = 15
getpower = 0
givepower = 0
animtype  = medium
hitflag = maf
guarDFlag = ma
pausetime = 10,10
sparkno = S7010
sparkxy = -10,-55
guard.sparkno = S7006
hitsound   = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -3,-4

[State 410, 4]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------

; Crouching strong punch
[Statedef 420]
type    = c
movetype= a
physics = c
juggle  = 8
ctrl = 0
anim = 420
poweradd = 50
sprpriority = 2
facep2 = 1

[State 420, 1]
type = playsnd
trigger1 = time = 0
value =0,2

[State 420, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 210,0

[State 420, 2]
type = hitdef
trigger1 = animelem = 2
attr = c, na
damage = 40
getpower = 0
givepower = 0
animtype  = Up
hitflag = maf
guarDFlag = la
pausetime = 9,9
sparkno = S7004
sparkxy = -10,-70
guard.sparkno = S7006
hitsound = S1,3
guardsound = S6,0
ground.type = low
ground.slidetime = 9
ground.hittime  = 10
ground.velocity = -2,-12
air.velocity = -1,-11

[State 420, 5]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------

; Crouching light kick
[Statedef 430]
type    = c
movetype= a
physics = c
juggle  = 1
ctrl = 0
anim = 430
poweradd = 50
sprpriority = 2

[State 430, 1]
type = playsnd
trigger1 = time = 0
value =0,0

[State 430, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 200,0

[State 430, 2]
type = hitdef
trigger1 = AnimElem = 4
attr = c, na
damage = 20
getpower = 0
givepower = 0
animtype  = light
hitflag = mafd
guardFlag = la
pausetime = 6,10
sparkno = S7000
sparkxy = -10,-8
guard.sparkno = S7006
hitsound = S1,0
guardsound = S6,0
ground.type = low
ground.slidetime = 7
ground.hittime  = 10
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 10

[State 430, 3]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------

; Crouching medium kick
[Statedef 440]
type    = c
movetype= a
physics = c
juggle  = 8
ctrl = 0
anim = 440
poweradd = 50
sprpriority = 2

[State 440, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 210,0

[State 440, 2]
type = playsnd
trigger1 = time = 0
value =0,1

[State 440, 3]
type = hitdef
trigger1 = AnimElem = 3
animtype = medium
attr = c, na
damage = 30
getpower = 0
givepower = 0
hitflag = mafd
guarDFlag = la
pausetime = 6,12
sparkno = S7010
sparkxy = -5,-10
guard.sparkno = S7006
hitsound = S1,1
guardsound = S6,0
ground.type = trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 440, 4]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

;--------------------------------------------------

; Crouching strong kick
[Statedef 450]
type    = c
movetype= a
physics = c
juggle  = 8
ctrl = 0
anim = 450
poweradd = 50
sprpriority = 2

[State 450, polvere]
type = MakeDust
trigger1 = Time = 0
trigger2 = Time = 5
pos = 15,3
pos2 = 22,-3
spacing = 2

[State 450, 1]
type = playsnd
trigger1 = time = 0
value =0,2

[State 450, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1000,0

[State 450, 2]
type = VelAdd
trigger1 = AnimElem = 2
x = 20

[State 450, 3]
type = hitdef
trigger1 = AnimElem = 3
attr = c, na
damage = 40
getpower = 0
givepower = 0
hitflag = mafd
guarDFlag = la
pausetime = 6,12
sparkno = S7002
sparkxy = -5,-10
guard.sparkno = S7006
hitsound  = S1,2
guardsound = S6,0
ground.type = trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-4
air.velocity = -1.2,-6
guard.velocity = -6
fall = 1

[State 450, 4]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------

; Jump light punch
[Statedef 600]
type    = a
movetype= a
physics = a
juggle  = 1
ctrl = 0
anim = 600
poweradd = 50
sprpriority = 2

[State 600, 1]
type = playsnd
trigger1 = time = 0
value =0,0

[State 600, 2]
type = hitdef
trigger1 = AnimElem = 2
animtype = light
attr = a, na
damage = 20
getpower = 0
givepower = 0
guardFlag = ha
priority = 3
pausetime = 8,8
sparkno = S7000
sparkxy = -10,-58
guard.sparkno = S7006
hitsound = S1,0
guardsound = S6,0
ground.type = high
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4
air.velocity = -1.3,-3

[State 600, 3]
type = ctrlset
trigger1 = time = 12
value = 1

;---------------------------------------------------------------------------

; Jump medium punch
[Statedef 610]
type    = a
movetype= a
physics = a
juggle  = 4
ctrl = 0
anim = 610
poweradd = 50
sprpriority = 2

[State 610, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 200,0

[State 610, 2]
type = playsnd
trigger1 = time = 0
value =0,1

[State 610, 3]
type = hitdef
trigger1 = AnimElem = 2
animtype = medium
attr = a, na
damage = 30
getpower = 0
givepower = 0
guarDFlag = ha
priority = 4
pausetime = 6,12
sparkno = S7010
sparkxy = -10,-55
guard.sparkno = S7006
hitsound = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

[State 610, 4]
type = ctrlset
trigger1 = time = 10
value = 1

;----------------------------------------

; Jump strong punch
[Statedef 620]
type    = a
movetype= a
physics = a
juggle  = 8
ctrl = 0
anim = 620
poweradd = 50
sprpriority = 2

[State 620, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 210,0

[State 620, 2]
type = playsnd
trigger1 = time = 0
value =0,2

[State 620, 3]
type = hitdef
trigger1 = AnimElem = 2
animtype = hard
attr = a, na
damage = 40
getpower = 0
givepower = 0
guardFlag = ha
priority = 4
pausetime = 9,12
sparkno = S7002
sparkxy = -10,-55
guard.sparkno = S7006
hitsound = S1,2
guardsound = S6,0
ground.type = high
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
envshake.time = 7
envshake.ampl = 4
fall = 1

[State 620, 4]
type = ctrlset
trigger1 = time = 13
value = 1

;---------------------------------------------------------------------------

; Jump light kick
[Statedef 630]
type    = a
movetype= a
physics = a
juggle  = 1
ctrl = 0
anim = 630
poweradd = 50
sprpriority = 2

[State 630, 1]
type = playsnd
trigger1 = time = 0
value =0,0

[State 630, 2]
type = hitdef
trigger1 = AnimElem = 2
animtype = light
attr = a, na
damage = 20
getpower = 0
givepower = 0
guardFlag = ha
priority = 3
pausetime = 8,8
sparkno = S7000
sparkxy = -5,-35
guard.sparkno = S7006
hitsound = S1,0
guardsound = S6,0
ground.type = high
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4
air.velocity = -2,-3

[State 630, 3]
type = ctrlset
trigger1 = time = 11
value = 1

;---------------------------------------------------------------------------

; Jump medium kick
[Statedef 640]
type    = a
movetype= a
physics = a
juggle  = 4
ctrl = 0
anim = 640
poweradd = 50
sprpriority = 2

[State 640, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 200,0

[State 640, 2]
type = playsnd
trigger1 = time = 0
value =0,1

[State 640, 3]
type = hitdef
trigger1 = AnimElem = 2
animtype = medium
attr = a, na
damage = 30
getpower = 0
givepower = 0
guarDFlag = ha
priority = 4
pausetime = 8,12
sparkno = S7010
sparkxy = -10,-20
guard.sparkno = S7006
hitsound = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4

[State 640, 4]
type = ctrlset
trigger1 = time = 16
value = 1

;----------------------------------------

; Jump strong kick
[Statedef 650]
type = a
movetype= a
physics = a
juggle  = 8
ctrl = 0
anim = 650
poweradd = 50
sprpriority = 2

[State 650, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 210,0

[State 650, 2]
type = playsnd
trigger1 = time = 0
value =0,2

[State 650, 3]
type = hitdef
trigger1 = AnimElem = 2
animtype = Up
attr = a, na
damage = 40
getpower = 0
givepower = 0
hitflag = maf
guarDFlag = ha
priority = 4
pausetime = 10,10
sparkno = S7002
sparkxy = -10,-40
guard.sparkno = S7006
hitsound = S1,2
guardsound = S6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,-12
air.velocity = -3,-11

[State 640, 4]
type = ctrlset
trigger1 = time = 18
value = 1

;---------------------------------------------------------------------------

; Projection - Attempt
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 8
velset = 0,0
ctrl = 0
anim = 800

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
damage = 0,0
getpower = 0
givepower = 0
attr = S, NT
hitflag = M
hitsound = s8,0
priority = 1
sparkno = -1
p2facing = 1
p1stateno = 810
p2stateno = 820
fall = 1
fall.damage = 60

[State 800, 2]
type = velset
Trigger1 = Time >= 0
X = 0

[State 800, 2]
type = varset
Trigger1 = Time = 0
v = 26
value = pos X

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Projection - Throwing the opponent
[Statedef 810]
type    = S
movetype= A
physics = S
anim = 810
poweradd = 50
velset = 0,0

[State 800, 2]
type = velset
Trigger1 = Time >= 0
X = 0

[State 800, 2]
type = posset
triggerall = animelemtime(11) < 0
triggerall = p2name = "cassios"
Trigger1 = Time >= 0
X = var(26)

[State 810, Throw Sound]
type = PlaySnd
triggerall = random < 500
trigger1 = AnimElem = 2
value = 220,0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 48, 0

[State 810, Width 2-11]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
edge = 60,0

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
pos = 58, 0

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 47, 0

[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 41, -60

[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 25, -75

[State 810, Bind 8]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 15, -90

[State 810, Bind 9]
type = TargetBind
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = -5, -96

[State 810, Bind 10]
type = TargetBind
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = -14, -90

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 2,1

[State 810, Bind 11]
type = TargetBind
trigger1 = AnimElem = 11
pos = -50, -50

[State 810, Throw 11]
type = TargetState
trigger1 = AnimElem = 11
value = 821

[State 810, Turn 12]
type = Turn
trigger1 = AnimElem = 12

;[State 810, Pos 15]
;type = PosAdd
;trigger1 = AnimElem = 15
;x = -10

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; P2 Thrown by Projection
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

;---------------------------------------------------------------------------

; P2 Thrown into the air by Projection
[Statedef 821]
type = a
movetype = h
physics = n
velset = 6, -5

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

;----------------------------------------------------------

; Power Charge - Start
[Statedef 900]
type = s
physics = s
ctrl = 0
velset = 0,0
anim = 900

[State 900, 1]
type = VarSet
triggerall = var(59) = 1
trigger1 = Time = 0
v = 10
value = 1

[State 900, shake]
type = EnvShake
trigger1 = AnimElem = 1
time = 40

[State 901, 2]
type = playsnd
trigger1 = AnimElem = 1
value = 9,1

[State 901, 3]
type = playsnd
trigger1 = AnimElem = 1
value = 2500,0
Channel = 0

[State 900, 3]
type = changestate
trigger1 = AnimTime = 0
value = 901

;--------------------------------------

; Power Charge - charging
[Statedef 901]
type = s
physics = s
ctrl = 0
velset = 0,0
anim = 901

[State 901, 1]
type = playsnd
trigger1 = (GameTime % 30) = 0
value = 9,2

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
bindtime = -1
ownpal = 1
scale = .9, .9

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
bindtime = -1
ownpal = 1
scale = .9, .9

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

[State 901, 5]
type = PowerAdd
trigger1 = time > 0
value = 5

[State 901, 6]
type = changestate
triggerall = time >= 1
triggerall = Var(59) = 0
trigger1 = command != "holdc"
trigger2 = command != "holdz"
trigger3 = power >= 3000
value = 902
ctrl = 1

[State 901, 7]
type = ChangeState
triggerall = time >= 1
triggerall = Var(59) = 1
trigger1 = random <= 10
trigger2 = power >= 3000
value = 902
ctrl = 1

[State 901, 8]
type = ChangeState
trigger1 = animtime = 0
value = 901

;----------------------------------------------------------

; Power Charge - End
[Statedef 902]
type = s
physics = s
anim = 902

[State 902, Var]
type = VarSet
trigger1 = Time = 0
v = 10
value = 0

[State 901, 6]
type = stopsnd
trigger1 = Time = 0
channel = 1

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


[State 902, 1]
type = PlaySnd
triggerall = power >= 3000
trigger1 = time = 0
value = 1000,0

[State 902, 2]
type = ChangeAnim
triggerall = power >= 3000
trigger1 = time = 0
value = 2

[State 902]
type = PalFX
triggerAll = power >= 3000
trigger1 = time = 1
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

[State 902, 3]
type = changestate
trigger1 = animtime = 0
value = 0

;---------------------------------------------------------------------------

; Throw Ahead
[Statedef 950]
type    = S
movetype= A
physics = S
juggle  = 8
velset = 0,0
ctrl = 0
anim = 950
poweradd = 50

[State 950, 1]
type = HitDef
Trigger1 = Time = 0
damage = 0,0
getpower = 0
givepower = 0
attr = S, NT
hitflag = M
hitsound = s8,0
priority = 1
sparkno = -1
p2facing = 1
p1stateno = 951
p2stateno = 952
fall = 1
fall.damage = 60

[State 950, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 

; Throw Ahead - Successful
[Statedef 951]
type    = S
movetype= A
physics = N
anim = 951

[State 951, Throw Sound]
type = PlaySnd
triggerall = random < 500
trigger1 = AnimElem = 1
value = 1000,0

[State 951, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 28, -60

[State 951, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
pos = 21, -65

[State 951, Bind 3]
type = TargetBind
trigger1 = AnimElem = 5
pos = 90, 50

[State 951, Throw]
type = TargetState
trigger1 = AnimElem = 5
value = 952

[State 951, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2,1

[State 951, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Throw Ahead - P2 State 1
[Statedef 952]
type    = A
movetype= H
physics = N
velset = 0,0

[State 952, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 952

[State 952, 2]
type = ChangeState
trigger1 = 1
value = 953

;---------------------------------------------------------------------------

; Throw Ahead - P2 State 2
[Statedef 953]
type = a
movetype = h
physics = n
velset = 6, -5

[State 953, 1]
type = veladd
trigger1 = 1
y = .4

[State 953, 2]
type = turn
trigger1 = time = 0

[State 953, 3]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0 
value = 5100

;---------------------------------------------------------------------------

; Back Drop - Attempt
[Statedef 990]
type    = s
movetype= a
physics = s
juggle  = 8
velset = 0,0
ctrl = 0
anim = 989
sprpriority = 2
poweradd = 50

[State 990, 1]
type = hitdef
trigger1 = AnimElem = 1
attr = s, nt
hitflag = m
hitsound = s8,0
damage = 0,0
getpower = 0
givepower = 0
priority = 5
sparkno = -1
p1facing = 0
p2facing = 1
p1stateno = 991
p2stateno = 992
fall = 1
fall.damage = 60

[State 990, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------

; Back Drop - Successful
[Statedef 991]
type = a
anim = 990
movetype = h
physics = n
velset = 0,0

[State 991, 1]
type = playsnd
trigger1 = Time = 0
value = 220,0

[State 991, Throw Sound]
type = playsnd
trigger1 = AnimElem = 3
value = 2,1

[State 991, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------

; Back Drop - P2 State 1
[Statedef 992]
type = a
movetype = h
physics = n
velset = 0,0

[State 992, 1]
type = changeanim2
trigger1 = time = 0
value = 991

[State 992, 2]
type = veladd
trigger1 = animelem = 4
y = -2

[State 992, 3]
type = veladd
trigger1 = animelem = 5
y = -2
x = 1

[State 992, 4]
type = veladd
trigger1 = animelem = 7
y = 1
x = 1

[State 992, 5]
type = targetbind
trigger1 = animelem = 1
pos = 0,0

[State 992, 6]
type = targetbind
trigger1 = animelem = 2
pos = 1,1

[State 992, 7]
type = targetbind
trigger1 = animelem = 5
pos = 0,-7

[State 992, 8]
type = targetbind
trigger1 = animelem = 6
pos = 1,-3

[State 992 , 9]
type = targetbind
trigger1 = animelem = 7
pos = 1,-2

[State 992, 10]
type = targetbind
trigger1 = animelem = 8
time = 27
pos = 1,-1

[State 992, 11]
type = targetstate
trigger1 = animelem = 8
value = 993

[State 992, 12]
type = SelfState
trigger1 = animtime = 0
value = 5050
ctrl = 0

;--------------------------------------

; Back Drop - P2 State 2
[Statedef 993]
type = a
movetype = h
physics = n
velset = 6, -5

[State 993, 1]
type = veladd
trigger1 = 1
y = .4

[State 993, 2]
type = turn
trigger1 = time = 0

[State 993, 3]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100

;---------------------------------------------------------------------------

; Shoulder Block
[Statedef 1001]
type    = s
movetype= a
physics = s
juggle  = 8
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2
poweradd = -1000

[State 40, 2]
type = Explod
trigger1 = AnimElem = 1
postype = back
pos = 0,0
bindtime = -1
removetime = 53
sprpriority = -2
anim = 8002
id = 127123
scale = 1.5,1

[State 3001, 1]
type = Superpause
trigger1 = time = 13
anim = -1
time = 50
pausebg = 0

;-|ACCELERARE|-:D----------

[State 3200,Speed]
trigger1 = time = 25
type = varset
v = 3
value = 0

[State 3200,Speed]
trigger1 = time = 25
type = varset
v = 6
value = 0

[State 1000, 1]
type = playsnd
triggerall = random < 500
trigger1 = AnimElem = 2
value = 200,0

[State 1000, 1]
type = playsnd
trigger1 = AnimElem = 4
value = 0,2

[State 1000, 2]
type = posadd
trigger1 = AnimElem = 4
x = 40

[State 1000, 3]
type = posadd
trigger1 = animelem = 5
x = 20

[State 1000, 4]
type = posadd
trigger1 = animelem = 6
x = 10

[State 1000, 4]
type = velset
trigger1 = animelem = 6
x = 2

[State 1000, 5]
type = hitdef
trigger1 = animelem = 5
attr = s, ha
animtype  = Medium
damage    = 200,20
getpower = 0
givepower = 0
priority  = 5
guarDFlag = ma
pausetime = 0,1
sparkno = S7003
sparkxy = -10,-60
guard.sparkno = S7006
hitsound   = S1,4
guardsound = S6,0
ground.type = high
;p2stateno = 1002
ground.slidetime = 220
ground.hittime  = 1
ground.velocity = -160,-8
guard.velocity = -12
air.velocity = -160,-8
airguard.velocity = -3,-3
fall = 1

[State 1000, 5]
type = posadd
trigger1 = animelem = 8
x = -5

[State 1000, vel2]
type = velset
trigger1 = time >= 1
x = 0

[State 1000, var]
type = Varset
trigger1 =  Movehit
var(0) = 1

[State 1000, screen]
type = Screenbound
trigger1 = var(0) = 1
movecamera = 0,0

[State 1000, 6]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

; Shoulder Block
[Statedef 1000]
type    = s
movetype= a
physics = s
juggle  = 8
velset = 0,0
anim = 101
ctrl = 0
sprpriority = 2

[State 3200,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1000, 0
channel = 0

[State 1000, 6]
type = velset
trigger1 = time >= 1
x = 3.5

;--|RALLENTARE|------------

[State 3200,Speed]
trigger1 = p2bodydist X <= 81
type = varset
v = 3
value = 0

[State 3200,Speed]
trigger1 = p2bodydist X <= 81
type = varset
v = 6
value = 0

[State 3200,Speed]
trigger1 = time = 1
;trigger1 = var(9) = 1
type = varset
v = 3
value = 1

[State 40, 2]
type = Explod
trigger1 = AnimElem = 1
postype = Back
pos = 0,0
bindtime = -1
removetime = 53
sprpriority = -2
anim = 102
id = 127123
scale = 1.5,1

[State 3200,Speed]
trigger1 = time = 1
;trigger1 = var(9) = 1
type = varset
v = 6
value = 840

[State 1000, 6]
type = changestate
trigger1 = p2bodydist X <= 80
value = 1001
ctrl = 0

[State 1000, 6]
type = changestate
trigger1 = p2bodydist X <= -1
value = 0
ctrl = 1
;---------------------------------------------------------------------------

; Super Kick from close distance 
[Statedef 1050]
type    = S
movetype= A
physics = A
juggle  = 8
velset = 0,0
anim = 1050
ctrl = 0
sprpriority = 2
poweradd = 100

[State 1050, 1]
type = playsnd
trigger1 = AnimElem = 1
value = 0,0

[State 1050, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 200,0

[State 1050, 3]
type = VelSet
trigger1 = AnimElem = 1
x = 5
y = -5

[State 1050, 4]
type = VelSet
trigger1 = AnimElem = 3
x = 5
y = 0.65

[State 1050, 5]
type = hitdef
trigger1 = AnimElem = 3
attr = a, sa
animtype  = medium
damage = 80,8
getpower = 0
givepower = 0
priority  = 5
guarDFlag = ma
pausetime = 5,10
sparkno = S7004
sparkxy = -40,-80
guard.sparkno = S7006
hitsound = S1,3
guardsound = S6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4.5,-7
guard.velocity = -7
air.velocity = -4.5,-7
fall = 1

[State 1050, 8]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Super Medium Kick
[Statedef 1100]
type    = S
movetype= A
physics = A
juggle  = 8
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = 2
poweradd = 100

[State 1050, 1]
type = playsnd
trigger1 = AnimElem = 4
value = 0,2

[State 1050, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 220,0

[State 1050, 3]
type = VelSet
trigger1 = AnimElem = 1
x = 10
y = -5

[State 1050, 4]
type = VelSet
trigger1 = AnimElem = 3
x = 10
y = 0.65

[State 1050, 5]
type = hitdef
trigger1 = AnimElem = 5
attr = a, sa
animtype  = hard
damage = 80,8
getpower = 0
givepower = 0
priority  = 5
guarDFlag = ma
pausetime = 10,10
sparkno = S7004
sparkxy = -40,-80
guard.sparkno = S7006
hitsound = S1,3
guardsound = S6,0
ground.type = high
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -4.5,-7
guard.velocity = -7
air.velocity = -4.5,-7
fall = 1

[State 1050, 8]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Super Strong Kick
[Statedef 1150]
type    = S
movetype= A
physics = A
juggle  = 1
velset = 0,0
anim = 1150
ctrl = 0
poweradd = 100
sprpriority = 2

[State 1050, 1]
type = playsnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
value = 0,2

[State 1050, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1000,0

[State 1050, 3]
type = VelSet
trigger1 = AnimElem = 1
x = 10
y = -5

[State 1050, 4]
type = VelSet
trigger1 = AnimElem = 5
x = 1
y = 0.65

[State 1050, 5]
type = hitdef
trigger1 = AnimElem = 3
attr = a, sa
animtype  = medium
damage = 40,4
getpower = 0
givepower = 0
priority  = 5
guarDFlag = ma
pausetime = 5,10
sparkno = S7004
sparkxy = -40,-80
guard.sparkno = S7006
hitsound = S1,3
guardsound = S6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4.5,-7
guard.velocity = -7
air.velocity = -4.5,-7

[State 1050, 5]
type = hitdef
trigger1 = AnimElem = 6
attr = a, sa
animtype  = Up
damage = 40,4
getpower = 0
givepower = 0
priority  = 5
guarDFlag = ma
pausetime = 10,10
sparkno = S7004
sparkxy = -60,-110
guard.sparkno = S7006
hitsound = S1,4
guardsound = S6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,-12
guard.velocity = -7
air.velocity = -3,-11
fall = 1
fall.damage = 10

[State 1050, 8]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

;Muscle Barrier
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = 2

[State 1001,nohit ]
type = varset
trigger1 = time = 0
value = 1
v = 23

[State 1000 , 1]
type = PlaySnd
trigger1 = time = 0
value = 1000,0

[State 1000, rev]
type = ReversalDef
trigger1 = AnimElem = 2
reversal.attr = SCA,NA,SA,HA,SA,SP
pausetime = 0,0
p1stateno = 1201
hitsound = s1700,4

[State 1000, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1201]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1201
poweradd = 0
ctrl = 0

[State 1001,env ]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 3

[State 1001,nohit ]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA
time = 1

[State 1001,nohit ]
type = poweradd
trigger1 = time = 0
value = 100

[State 1001, 1]
type = HitDef
trigger1 = Time = 0
attr = S,SA
animtype  = Hard
hitflag = MA
guardflag = MA 
animtype = Hard
damage = 5,8
getpower = 0
givepower = 0
sparkno = S7009
guard.sparkno = -1
sparkxy = 50,-110
hitsound = S5,4
guardsound = S6,0
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 1
fall.recover = 0
fall.damage = 75

[State 1001, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 1202
ctrl = 0


[Statedef 1202]
type    = S
movetype= A
physics = S
velset = -12,0
anim = 1201
poweradd = 0
ctrl = 0

[State 1001,nohit ]
type = varset
trigger1 = time = 0
value = 0
v = 23

[State 1001, 6]
type = ChangeState
trigger1 = time = 2
value = 0
ctrl = 1

;---------------------------------------------------------------------

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
value = 40,0

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
triggerall = AnimElem = 1
trigger1 = P2MoveType = A
value = 250

[State 1800, 7]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Triple Shoulder Block
[Statedef 2000]
type    = s
movetype= a
physics = s
juggle  = 8
velset = 0,0
anim = 2000
poweradd = 100
ctrl = 0
sprpriority = 2

[State 2000, width]
type = width
trigger1 = animelem = 1, >= 0
value = 15,0

[State 2000, 1]
type = playsnd
triggerall = random < 500
trigger1 = AnimElem = 3
value = 200,0

[State 2000, 1]
type = playsnd
triggerall = random < 500
trigger1 = AnimElem = 11
value = 210,0

[State 2000, 1]
type = playsnd
triggerall = random < 500
trigger1 = AnimElem = 19
value = 1000,0

[State 2000, 1]
type = playsnd
trigger1 = animelem = 4
trigger2 = animelem = 12
trigger3 = animelem = 20
value = 0,2

[State 2000, 2]
type = posadd
trigger1 = animelem = 3
x = 20

[State 2000, 3]
type = posadd
trigger1 = animelem = 4
trigger2 = animelem = 12
trigger3 = animelem = 14
trigger4 = animelem = 20
trigger5 = animelem = 22
x = 10

[State 2000, 4]
type = velset
trigger1 = animelem = 5
trigger2 = animelem = 13
trigger3 = animelem = 21
x = 6

[State 2000, 5]
type = hitdef
trigger1 = animelem = 5
attr = s, ha
animtype  = light
damage    = 25,2
getpower = 0
givepower = 0
priority  = 6
guarDFlag = ma
pausetime = 5,8
sparkno = S7010
sparkxy = -10,-60
guard.sparkno = S7006
hitsound = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 8
ground.hittime  = 10
ground.velocity = -6
guard.velocity = -8
air.velocity = -3,-2.8
airguard.velocity = -1,-1
air.fall = 1

[State 2000, 6]
type = hitdef
trigger1 = animelem = 13
attr = s, ha
animtype  = hard
damage    = 25,2
getpower = 0
givepower = 0
priority  = 6
guarDFlag = ma
pausetime = 8,12
sparkno = S7010
sparkxy = -10,-60
guard.sparkno = S7006
hitsound   = S1,2
guardsound = S6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -8
guard.velocity = -10
air.velocity = -5,-3.8
airguard.velocity = -2,-2
air.fall = 1

[State 2000, 7]
type = hitdef
trigger1 = animelem = 21
attr = s, ha
animtype  = hard
damage    = 30,3
getpower = 0
givepower = 0
priority  = 5
guarDFlag = ma
pausetime = 10,15
sparkno = S7003
sparkxy = -10,-60
guard.sparkno = S7006
hitsound   = S1,4
guardsound = S6,0
ground.type = high
ground.slidetime = 13
ground.hittime  = 15
ground.velocity = -10,-4
guard.velocity = -12
air.velocity = -7,-4.8
airguard.velocity = -3,-3
fall = 1

[State 2000, 8]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------

; Cosmic Combo from close distance
[Statedef 3]
type    = s
movetype= a
physics = s
juggle  = 8
ctrl = 0
velset = 0,0
anim = 17
sprpriority = -1
poweradd = -3000

[State 220, width]
type = width
trigger1 = (animelemtime (2) >= 0) && (animelemtime (7) < 0)
value = 15,0

[State 220, 1]
type = playsnd
trigger1 = time = 2
value = 0,2

[State 220, 2]
type = hitdef
trigger1 = animelem = 4
attr = s, ha
animtype  = light
damage    = 100,30
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 3,10
sparkno = S7002
sparkxy = -10,-70
guard.sparkno = S7006
hitsound = S1,0
guardsound = S6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0, 0
air.velocity = -2.5,-4

[State 220, 3]
type = sprpriority
trigger1 = animelem = 5
value = 2

[State 231, 1]
type = playsnd
trigger1 = time = 32
value = 0,0

[State 231, 2]
type = hitdef
trigger1 = AnimElem = 12
attr = s, ha
animtype = light
damage  = 100,30
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 5,10
sparkno = S7000
sparkxy = -10,-110
guard.sparkno = S7006
hitsound   = S1,0
guardsound = S6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
air.velocity = -2.2,-3.2

[State 231, 3]
type = posadd
trigger1 = animelem = 6
x = -12

[State 440, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 56
value = 210,0

[State 440, 2]
type = playsnd
trigger1 = time = 56
value = 0,1

[State 3, 3]
type = hitdef
trigger1 = AnimElem = 19
animtype = light
attr = c, ha
damage = 100,30
getpower = 0
givepower = 0
hitflag = mafd
guarDFlag = l
pausetime = 6,10
sparkno = S7010
sparkxy = -5,-10
guard.sparkno = S7006
hitsound = S1,0
guardsound = S6,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0,0
air.velocity = 0,0
guard.velocity = 0

[State 200, 1]
type = hitdef
trigger1 = animelem = 24
attr = s, ha
damage = 100,30
getpower = 0
givepower = 0
animtype = light
guarDFlag = mafd
hitflag = mafd
priority = 3
pausetime = 3,10
sparkno = S7000
sparkxy = -10,-76
guard.sparkno = S7006
hitsound = S1,0
guardsound = S6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = high
air.velocity = -1.4,-3
air.hittime = 12

[State 200, 1]
type = playsnd
trigger1 = time = 83
value = 0,0

[State 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 83
value = 200,0

[State 1000, 1]
type = playsnd
triggerall = random < 500
trigger1 = AnimElem = 29
value = 200,0

[State 1000, 1]
type = playsnd
trigger1 = AnimElem = 31
value = 0,2

[State 1000, 2]
type = posadd
trigger1 = AnimElem = 31
x = 20

[State 1000, 3]
type = posadd
trigger1 = animelem = 32
x = 15

[State 1000, 4]
type = posadd
trigger1 = animelem = 33
x = 5

[State 1000, 5]
type = hitdef
trigger1 = animelem = 32
attr = s, ha
animtype  = medium
damage    = 100,30
getpower = 0
givepower = 0
priority  = 5
guarDFlag = mafd
pausetime = 5,10
sparkno = S7003
sparkxy = -10,-60
guard.sparkno = S7006
hitsound = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -10
air.velocity = -8,-3

[State 1000, 5]
type = posadd
trigger1 = animelem = 35
x = -5

[State 3, Life]
type = Lifeadd
trigger1 = AnimElem = 35
value = -200
kill = 0

[State 800, 1]
type = HitDef
Trigger1 = Time = 125
damage = 0,0
getpower = 0
givepower = 0
attr = S, NT
hitflag = M
priority = 1
sparkno = -1
p2facing = 1
p1stateno = 810
p2stateno = 820
fall = 0
fall.damage = 100

[State 1000, 2]
type = posadd
trigger1 = AnimElem = 36
x = 50

[State 220, 4]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------

; Cosmic Combo from medium distance
[Statedef 4]
type    = c
movetype= a
physics = c
juggle  = 8
ctrl = 0
anim = 18
sprpriority = 2
poweradd = -3000

[State 450, polvere]
type = MakeDust
trigger1 = Time = 0
trigger2 = Time = 5
pos = 15,3
pos2 = 22,-3
spacing = 2

[State 450, 1]
type = playsnd
trigger1 = time = 0
value = 0,5

[State 450, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1000,0

[State 450, 2]
type = VelAdd
trigger1 = AnimElem = 2
x = 20

[State 450, 3]
type = hitdef
trigger1 = AnimElem = 3
attr = c, ha
damage = 100,30
getpower = 0
givepower = 0
hitflag = mafd
guarDFlag = LA
pausetime = 6,10
sparkno = S7002
sparkxy = -5,-10
guard.sparkno = S7006
hitsound  = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0
air.velocity = -1.2,-6
guard.velocity = -6

[State 400, 1]
type = playsnd
trigger1 = time = 24
value = 0,0

[State 400, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 24
value = 200,0

[State 400, 2]
type = hitdef
trigger1 = AnimElem = 7
attr = c, ha
damage = 100,30
getpower = 0
givepower = 0
priority  = 3
animtype  = light
hitflag = maf
guarDFlag = MA
pausetime = 7,10
sparkno = S7000
sparkxy = -10,-62
guard.sparkno = S7006
hitsound = S1,0
guardsound = S6,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0
air.velocity = -1.5,-3

[State 410, 1]
type = playsnd
trigger1 = AnimElem = 9
value = 0,0

[State 410, 2]
type = hitdef
trigger1 = animelem = 10
attr = c, ha
damage = 100,30
getpower = 0
givepower = 0
animtype  = light
hitflag = maf
guarDFlag = ma
pausetime = 5,10
sparkno = S7000
sparkxy = -10,-55
guard.sparkno = S7006
hitsound = S1,0
guardsound = S6,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0
air.velocity = -3,-4

[State 410, 3]
type = playsnd
trigger1 = AnimElem = 10
value = 0,2

[State 410, 3]
type = hitdef
trigger1 = animelem = 11
attr = c, ha
damage = 100,30
getpower = 0
givepower = 0
animtype  = medium
hitflag = maf
guarDFlag = ma
pausetime = 8,10
sparkno = S7010
sparkxy = -10,-55
guard.sparkno = S7006
hitsound   = S1,1
guardsound = S6,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0
air.velocity = -3,-4

[State 430, 1]
type = playsnd
trigger1 = time = 69
value = 0,0

[State 430, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 69
value = 200,0

[State 430, 2]
type = hitdef
trigger1 = AnimElem = 17
attr = c, ha
damage = 100,30
getpower = 0
givepower = 0
animtype  = light
hitflag = mafd
guardFlag = LA
pausetime = 6,10
sparkno = S7004
sparkxy = -10,-8
guard.sparkno = S7006
hitsound = S1,3
guardsound = S6,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 10

[State 420, 1]
type = playsnd
trigger1 = time = 91
value = 0,2

[State 420, 1]
type = playsnd
triggerall = random < 250
trigger1 = time = 91
value = 210,0

[State 420, 2]
type = hitdef
trigger1 = animelem = 22
attr = c, ha
damage = 20,6
getpower = 0
givepower = 0
animtype  = Up
hitflag = maf
guarDFlag = LA
pausetime = 9,9
sparkno = S7004
sparkxy = -10,-70
guard.sparkno = S7006
hitsound = S1,4
guardsound = S6,0
ground.type = low
ground.slidetime = 9
ground.hittime  = 10
ground.velocity = -2,-12
air.velocity = -1,-11

[State 4, Life]
type = Lifeadd
trigger1 = AnimTime = 0
value = -200
kill = 0

[State 450, 4]
type = changestate
trigger1 = Animtime = 0
value = 1100
ctrl = 0

;------------------------------------------------------------------------------------

; Run for Combo from long distance
[Statedef 5]
type    = S
movetype = A
physics = S
anim = 100
sprpriority = 1
poweradd = -3000

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 2] 
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] 
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 40, 2]
type = Explod
trigger1 = AnimElem = 1
postype = p1
pos = 0,0
bindtime = -1
removetime = 32
sprpriority = 3
anim = 7100
id = 127

[State 5, 1]
type = ChangeState
trigger1 = p2bodydist x < 100
value = 22

;------------------------------------------------------------------------------------

; Cosmic Combo from long distance
[Statedef 22]
type    = s
movetype= a
physics = s
juggle  = 8
velset = 0,0
anim = 19
ctrl = 0
sprpriority = 2

[State 2000, width]
type = width
trigger1 = animelem = 1, >= 0
value = 15,0

[State 2000, 1]
type = playsnd
triggerall = random < 500
trigger1 = AnimElem = 3
value = 200,0

[State 2000, 1]
type = playsnd
triggerall = random < 500
trigger1 = AnimElem = 11
value = 210,0

[State 2000, 1]
type = playsnd
triggerall = random < 500
trigger1 = AnimElem = 19
value = 1000,0

[State 2000, 1]
type = playsnd
trigger1 = animelem = 4
trigger2 = animelem = 12
trigger3 = animelem = 20
value = 0,2

[State 2000, 2]
type = posadd
trigger1 = animelem = 3
x = 20

[State 2000, 3]
type = posadd
trigger1 = animelem = 4
trigger2 = animelem = 12
trigger3 = animelem = 14
trigger4 = animelem = 20
trigger5 = animelem = 22
x = 10

[State 2000, 4]
type = velset
trigger1 = animelem = 5
trigger2 = animelem = 13
trigger3 = animelem = 21
x = 6

[State 2000, 5]
type = hitdef
trigger1 = animelem = 5
attr = s, ha
animtype  = light
damage    = 120,36
getpower = 0
givepower = 0
priority  = 6
guarDFlag = ma
pausetime = 5,8
sparkno = S7010
sparkxy = -10,-60
guard.sparkno = S7006
hitsound = S1,1
guardsound = S6,0
ground.type = high
ground.slidetime = 8
ground.hittime  = 10
ground.velocity = 0
guard.velocity = -8
air.velocity = -3,-2.8
airguard.velocity = -1,-1
air.fall = 1

[State 2000, 6]
type = hitdef
trigger1 = animelem = 13
attr = s, ha
animtype  = hard
damage    = 120,36
getpower = 0
givepower = 0
priority  = 6
guarDFlag = ma
pausetime = 8,12
sparkno = S7002
sparkxy = -10,-60
guard.sparkno = S7006
hitsound   = S1,2
guardsound = S6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
guard.velocity = -10
air.velocity = -5,-3.8
airguard.velocity = -2,-2
air.fall = 1

[State 2000, 7]
type = hitdef
trigger1 = animelem = 21
attr = s, ha
animtype  = hard
damage    = 120,36
getpower = 0
givepower = 0
priority  = 5
guarDFlag = ma
pausetime = 10,15
sparkno = S7003
sparkxy = -10,-60
guard.sparkno = S7006
hitsound   = S1,3
guardsound = S6,0
ground.type = high
ground.slidetime = 13
ground.hittime  = 15
ground.velocity = 0
guard.velocity = -12
air.velocity = -7,-4.8
airguard.velocity = -3,-3

[State 241, 1]
type = playsnd
trigger1 = AnimElem = 31
value = 0,0

[State 241, 2]
type = hitdef
trigger1 = AnimElem = 33
attr = s, na
animtype = light
damage    = 120,36
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 5,10
sparkno = S7000
sparkxy = -10,-60
guard.sparkno = S7006
hitsound   = S1,0
guardsound = S6,0
ground.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0
air.velocity = -1.2,-2.2

[State 241, 3]
type = playsnd
trigger1 = AnimElem = 34
value = 0,1

[State 241, 4]
type = hitdef
trigger1 = AnimElem = 35
attr = s, na
animtype = medium
damage    = 60,18
getpower = 0
givepower = 0
guarDFlag = ma
pausetime = 5,10
sparkno = S7010
sparkxy = -10,-110
guard.sparkno = S7006
hitsound   = S1,2
guardsound = S6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0
air.velocity = -2.2,-3.2

[State 5, Life]
type = Lifeadd
trigger1 = AnimTime = 0
value = -200
kill = 0

[State 450, 4]
type = changestate
trigger1 = Animtime = 0
value = 900
ctrl = 0


;------------------------------------------------------------------------------------

; Ear-Cutting - Power 1000
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 8
velset = 0,0
ctrl = 0
anim = 3000
poweradd = -1000

[State 3000, 1]
type = Superpause
trigger1 = AnimElem = 1
darken = 1
sound = s3100,1
anim = 102
time = 80

[State 3000, 2]
type = HitDef
Trigger1 = Time = 0
damage = 0,0
getpower = 0
givepower = 0
attr = S, NT
hitflag = M
hitsound = s8,0
priority = 1
sparkno = -1
p2facing = 1
p1stateno = 3001
p2stateno = 3002

[State 3000, 3]
type = RemoveExplod
trigger1 = time = 0
ID = 701

[State 3000, 4]
type = RemoveExplod
trigger1 = time = 0
ID = 702

[State 3000, 5]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 

; Ear-Cutting - Successful
[Statedef 3001]
type    = S
movetype= A
physics = N
anim = 3001

[State 3001, Throw Voice]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3001, Throw Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100,2
channel = 0

[State 3001, 1]
type = varset
trigger1 = time = 0
v = 26
value = Var(26) + 1

[State 3001, Throw Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3000,0
channel = 0

[State 3001, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 70, -110

[State 3001, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(2) >= 0 && AnimElemTime(3) < 0
pos = 58, -182

[State 3001, 1]
type = Superpause
trigger1 = AnimElem = 3
darken = 1
anim = 102
time = 20

[State 3001, Bind 3]
type = TargetBind
trigger1 = AnimElemtime(3) >= 0 && AnimElemTime(5) < 0
pos = 60, -150;-80

[State 3001, 1]
type = HitDef
Trigger1 = Animelem = 4
damage = 300
animtype = Hard
getpower = 0
givepower = 0
attr = S, HA
hitflag = MA
priority = 1
sparkno = S3003
hitsound = S3000,1
sparkxy = 30,-150
p1sprpriority = -1
p2sprpriority = 0
p2facing = 1
fall = 1

[State 3001, Throw]
type = TargetState
trigger1 = AnimElem = 5
value = 3003

[State 3001, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Ear-Cutting - P2 State 1
[Statedef 3002]
type    = A
movetype= H
physics = N
velset = 0,0

[State 952, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3102

[State 952, 1]
type = ChangeAnim2
Trigger1 = Time = 429
value = 3104

[State 952, 2]
type = ChangeState
trigger1 = time = 430
value = 3003

;---------------------------------------------------------------------------

; Ear-Cutting - P2 State 2
[Statedef 3003]
type = a
movetype = h
physics = n
velset = 0, 0

[State 953, 1]
type = veladd
trigger1 = 1
y = .4

[State 953, 2]
type = turn
trigger1 = time = 0

[State 953, 3]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0 
value = 5100

;---------------------------------------------------------------------------

; Presa Sanguinaria / Bloody Hold
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 8
velset = 0,0
ctrl = 0
anim = 3100

[State 3100, 1]
type = HitDef
Trigger1 = Time = 1
damage = 0,0
getpower = 0
givepower = 0
attr = S, NT
hitflag = M
hitsound = s8,0
priority = 1
pausetime = 0, 120
sparkno = -1
p2facing = 1

[State 3100, 1]
type = HitDef
Trigger1 = Time = 1
damage = 0,0
getpower = 0
givepower = 0
attr = S, NT
hitflag = M
hitsound = s8,0
priority = 1
sparkno = -1
p2facing = 1
p1stateno = 3101
p2stateno = 3102

[State 3000, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 701

[State 3000, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 702

[State 950, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------

; Presa Sanguinaria / Bloody Hold
[Statedef 3101]
type    = S
movetype= A
physics = N
anim = 3101
poweradd = 50

;[State 172, 2 Sfondo]
;type = Explod
;trigger1 = AnimElem = 3
;postype = back
;pos = 0,0
;bindtime = -1
;removetime = -1
;sprpriority = -1
;anim = 3004
;id = 3004

[State 951, Throw Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100,1
channel = 0

[State 951, Throw Voice2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,0
channel = 0

[State 951, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 70, -110

[State 951, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(2) >= 0 && AnimElemTime(3) < 0
pos = 58, -182

[State 951, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(3) >= 0 && AnimElemTime(4) < 0
pos = 80, -150

[State 951, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(4) >= 0 && AnimElemTime(5) < 0
pos = 80, -150

[State 951, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(5) >= 0 && AnimElemTime(15) < 0
pos = 70, -75

[State 3101, 1]
type = playsnd
trigger1 = AnimElem = 5
value = F1, 3

[State 3101, 1]
type = playsnd
trigger1 = AnimElem = 11
value = F1, 3

[State 950, 1]
type = HitDef
Trigger1 = Animelem = 14
damage = 0
animtype = medium
getpower = 0
givepower = 0
attr = A, HA
hitflag = MA
priority = 1
sparkno = -1;S7000
hitsound = -1;1,3
sparkxy = -30,-160
p1sprpriority = -1
p2sprpriority = 0
p2stateno = 3104
p2facing = 1
ground.slidetime = 8
ground.hittime  = 10
ground.velocity = 0
guard.velocity = -8
air.velocity = 0, 0
airguard.velocity = -1,-1

[State 40, 2]
type = Explod
trigger1 = AnimElem = 5
postype = p2
pos = -30,0
bindtime = -1
removetime = 26
sprpriority = 3
anim =7000

[State 40, 2]
type = Explod
trigger1 = AnimElem = 7
postype = p2
pos = -30,0
bindtime = -1
removetime = 26
sprpriority = 3
anim =7000

[State 40, 2]
type = Explod
trigger1 = AnimElem = 9
postype = p2
pos = -30,0
bindtime = -1
removetime = 26
sprpriority = 3
anim =7000

[State 40, 2]
type = Explod
trigger1 = AnimElem = 11
postype = p2
pos = -30,0
bindtime = -1
removetime = 26
sprpriority = 3
anim =7000

[State 40, 2]
type = Explod
trigger1 = AnimElem = 13
postype = p2
pos = -30,0
bindtime = -1
removetime = 26
sprpriority = 3
anim =7000

[State 3120, lifeadd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
trigger3 = animelem = 9
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
value = -12

[State 3000, 1]
type = RemoveExplod
trigger1 = Animtime = 0
ID = 3004

[State 951, Throw]
type = TargetState
trigger1 = AnimElem = 14
value = 3103

;projection

[State 800, 2]
type = velset
Trigger1 = Time >= 0
X = 0

[State 810, Throw Sound]
type = PlaySnd
triggerall = random < 500
trigger1 = AnimElem = 16
value = 220,0

;[State 810, Bind 1]
;type = TargetBind
;trigger1 = AnimElemTime(16) < 0
;pos = 48, 0

;[State 810, Width 2-11]
;type = Width
;trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(26) < 0
;edge = 60,0

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
pos = 58, -55

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
pos = 47, -55

[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
pos = 41, -55

[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
pos = 25, -70

[State 810, Bind 8]
type = TargetBind
trigger1 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
pos = 15, -85

[State 810, Bind 9]
type = TargetBind
trigger1 = AnimElemTime(20) >= 0 && AnimElemTime(21) < 0
pos = -5, -91

[State 810, Bind 10]
type = TargetBind
trigger1 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
pos = -14, -85

[State 810, Bind 11]
type = TargetBind
trigger1 = AnimElem = 22
pos = -50, -115

[State 810, Throw 11]
type = TargetState
trigger1 = AnimElem = 22
value = 821

[State 810, Turn 12]
type = Turn
trigger1 = AnimElem = 23

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 23
value = 2,1

;[State 810, Pos 15]
;type = PosAdd
;trigger1 = AnimElem = 26
;x = -10

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Presa Sanguinaria / Bloody Hold - P2 State 1
[Statedef 3102]
type    = A
movetype= H
physics = N
velset = 0,0

[State 952, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3105

[State 820, 1]
type = ChangeAnim2
Trigger1 = time = 197
value = 821

;---------------------------------------------------------------------------

; Presa Sanguinaria / Bloody Hold - P2 State 2
[Statedef 3104]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = time = 0
value = 820

;---------------------------------------------------------------------------

; Presa Sanguinaria / Bloody Hold - P2 State 3
[Statedef 3103]
type = a
movetype = h
physics = n
velset = 0, 0
poweradd = 50

[State 953, 1]
type = veladd
trigger1 = 1
y = .4

[State 953, 3]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0 
value = 0;5100

;------------------------------------------------------------------------------------

; Eartquaking/Devastating  State Decider
[Statedef 3200]
type = S


[State 3200, 4 end]
type = ChangeState
triggerall = power >= 2000
trigger1 = time = 0
value = 3300
ctrl = 0

;------------------------------------------------------------------------------------

; Eartquaking Kick
[Statedef 3201]
Type = S
movetype = A
physics = S
Anim = 3200
velset = 0,0
poweradd = 100
ctrl = 0

[State 3000, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 702

[State 3000, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 701

[State 3200,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1000, 0
channel = 0

[State 3200,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1700, 4

[State 3200 1]
type = EnvShake
trigger1 = animElem = 2
time = 120
freq = 100
ampl = 5

[State 40, 2]
type = Explod
trigger1 = AnimElem = 2
postype = p1
pos = 70,0
bindtime = -1
removetime = 32
sprpriority = 3
anim = 7101

;[State 40, 2]
;type = Explod
;trigger1 = AnimElem = 2
;postype = p1
;pos = 70,0
;bindtime = -1
;removetime = -1
;sprpriority = 9
;anim =3301
;id = 3301

[State 3000, 1]
type = RemoveExplod
trigger1 = Animtime = 0
ID = 130

[State 950, 1]
type = HitDef
Trigger1 = time = 11
damage = 30
animtype = light
getpower = 0
givepower = 0
attr = S, NT
hitflag = HD
priority = 1
sparkno = -1
hitsound = S0,3
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

[State 950, 1]
type = HitDef
Trigger1 = Time = 21
damage = ifelse (p2bodydist x >= 120,5,ifelse (p2bodydist X >= 80 ,10, 20))
animtype = light
getpower = 0
givepower = 0
attr = A, HA
hitflag = HD
priority = 1
sparkno = -1
hitsound = S1,3
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

[State 950, 1]
type = HitDef
Trigger1 = Time = 31
damage = ifelse (p2bodydist x >= 120,5,ifelse (p2bodydist X >= 80 ,10, 20))
animtype = light
getpower = 0
givepower = 0
attr = A, HA
hitflag = HD
priority = 1
sparkno = -1
hitsound = S1,3
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

[State 950, 1]
type = HitDef
Trigger1 = Time = 39
damage = ifelse (p2bodydist x >= 120,5,ifelse (p2bodydist X >= 80 ,10, 20))
animtype = light
getpower = 0
givepower = 0
attr = A, HA
hitflag = HD
priority = 1
sparkno = -1
hitsound = S1,3
sparkxy = -30,-100
p1sprpriority = -1
p2sprpriority = 0
guardsound = S20,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity =0
air.velocity = 0,0
Fall = 1

[State 3001, 1]
type = Superpause
trigger1 = AnimElem = 1
darken = 1
anim = -1
time = 30

[State 3001, 1]
type = Superpause
trigger1 = AnimElem = 2
darken = 1
anim = -1
time = 5

[State 3001, 1]
type = Superpause
trigger1 = AnimElem = 3
darken = 1
anim = -1
time = 5

[State 3001, 1]
type = Superpause
trigger1 = AnimElem = 4
darken = 1
anim = -1
time = 5

[State 3001, 1]
type = Superpause
trigger1 = AnimElem = 5
darken = 1
anim = -1
time = 5

[State 3200, 4 end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1







;-----------------------------------------------------------------------------

;Devastating Kick - Power 3000
[Statedef 3202]
Type = S
movetype = A
physics = S
Anim = 3200
velset = 0,0
poweradd = -3000
ctrl = 0

[State 3000, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 702

[State 3000, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 701

[State 3200,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200, 0
Channel = 0

[State 3200,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1700, 4

[State 3200 1]
type = EnvShake
trigger1 = animElem = 2
time = 120
freq = 100
ampl = 5

[State 40, 2]
type = Explod
trigger1 = AnimElem = 2
postype = p1
pos = 70,0
bindtime = -1
removetime = 32
sprpriority = 3
anim = 7101

[State 950, 1]
type = HitDef
Trigger1 = AnimElem = 2
damage = 600,0
animtype = light
getpower = 0
givepower = 0
attr = A, HA
hitflag = HD
priority = 1
sparkno = -1
hitsound = S1,3
sparkxy = -30,-100
p1sprpriority = -1
p2sprpriority = 0
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8, -8
air.velocity = -25, -3 
Fall = 1

[State 3202, 2 buco]
type = Explod
trigger1 = AnimElem = 2
postype = p1
pos = 30,-12
bindtime = 1
removetime = -1
sprpriority = -1
anim = 3301
id = 3300

[State 3202, 2 ciottolo1]
type = Explod
trigger1 = AnimElem = 2
postype = p1
pos = 60,-20
bindtime = 1
vel = 5, -8
removetime = -1
scale = 0.5, 0.5
sprpriority = -1
anim = 3303
id = 3303

[State 3202, 2 ciottolo2]
type = Explod
trigger1 = AnimElem = 2
postype = p1
pos = 60,-20
bindtime = 1
vel = -5, -8
removetime = -1
scale = 0.5, 0.5
sprpriority = -1
anim = 3302
id = 3302

[State 3202, 2 ciottolo1]
type = Explod
trigger1 = AnimElem = 2
postype = p1
pos = 60,-20
bindtime = 1
vel = 1, -8
removetime = -1
scale = 0.5, 0.5
sprpriority = -1
anim = 3303
id = 3303

[State 3202, 2 ciottolo2]
type = Explod
trigger1 = AnimElem = 2
postype = p1
pos = 60,-16
bindtime = 1
vel = -3, -10
removetime = -1
scale = 0.5, 0.5
sprpriority = -1
anim = 3302
id = 3302

[State 3001, 1]
type = Superpause
trigger1 = AnimElem = 1
darken = 1
anim = -1
time = 30

[State 3200, 4 end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------------------

; Devastating Punch - Power 2000
[Statedef 3300]
Type = S
movetype = A
physics = S
Anim = 3300
velset = 0,0
poweradd = -2000
ctrl = 0

[State 3000, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 702

[State 3000, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 701

[State 3200,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3400, 0
channel = 0

[State 3200,PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1700, 4

[State 3200 1]
type = EnvShake
trigger1 = animElem = 3
time = 120
freq = 100
ampl = 5

[State 40, 2]
type = Explod
trigger1 = AnimElem = 3
postype = p1
pos = 0,0
bindtime = -1
removetime = 32
sprpriority = 3
anim = 7101

[State 40, 2]
type = Explod
trigger1 = AnimElem = 3
postype = p1
pos = 0,0
bindtime = -1
removetime = 32
sprpriority = 3
anim = 7100

[State 3011] 
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype  = Up               
damage    = 350,80
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 1,1
sparkno = s404
sparkxy = 0,-120
hitsound   = S1,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = 0,-10
air.velocity = 0,-10
guard.velocity = -11
airguard.velocity = -4.5,-5
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
p2facing = 1                 
fall = 1
fall.recover = 0             
fall.damage = 50             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100            
maxdist = 100,-10           
yaccel = .8 
p2stateno = 7002



[State 3202, 2 buco]
type = Explod
trigger1 = AnimElem = 3
postype = p1
pos = -30,0
bindtime = 1
removetime = -1
scale = 0.5, 0.5
sprpriority = -1
anim = 3301
id = 3301

[State 3202, 2 ciottolo1]
type = Explod
trigger1 = AnimElem = 3
postype = p1
pos = -60,-12
bindtime = 1
vel = 5, -8
removetime = -1
sprpriority = -1
anim = 3303
id = 3303

[State 3202, 2 ciottolo2]
type = Explod
trigger1 = AnimElem = 3
postype = p1
pos = -60,-12
bindtime = 1
vel = -5, -8
removetime = -1
sprpriority = -1
anim = 3302
id = 3302

[State 3202, 2 ciottolo1]
type = Explod
trigger1 = AnimElem = 3
postype = p1
pos = -60,-12
bindtime = 1
vel = 1, -8
removetime = -1
sprpriority = -1
anim = 3303
id = 3303

[State 3202, 2 ciottolo2]
type = Explod
trigger1 = AnimElem = 3
postype = p1
pos = -60,-12
bindtime = 1
vel = -3, -10
removetime = -1
sprpriority = -1
anim = 3302
id = 3302

[State 3001, 1]
type = Superpause
trigger1 = AnimElem = 1
darken = 1
anim = 102
time = 60

[State 3200, 4 end]
type = ChangeState
trigger1 = time = 100
value = 0
ctrl = 1

;------------------------------------------------------------------

; P2 - Explosion Spin
[Statedef 7002]
type    = A
movetype= H 
physics = N

[State 7002]
type = ChangeAnim2
trigger1 = 1
value = 3310

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

;------------------------------------------------------------------------------------

; Deadly Hug - (Fatality) Power 3000
[Statedef 3400]
type    = S
movetype= A
physics = S
juggle  = 8
velset = 0,0
ctrl = 0
anim = 3400
sprpriority = 9

[State 950, 1]
type = HitDef
Trigger1 = AnimElem = 3
damage = 0,0
getpower = 0
givepower = 0
attr = S, NT
hitflag = M
hitsound = s8,0
priority = 1
sparkno = -1
p2facing = 1
p1stateno = 3401
p2stateno = 3402

[State 3000, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 701

[State 3000, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 702

[State 950, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 

; Deadly Hug - Successful
[Statedef 3401]
type    = S
movetype= A
physics = N
anim = 3401
poweradd = -3000
sprpriority = 9

[State 3202, cosmo]
type = Explod
trigger1 = AnimElem = 2
postype = p1
pos = 0,0
bindtime = 1
removetime = -1
sprpriority = -1
anim = 3404
id = 3404

[State 3401, removexplod]
type = removeexplod
trigger1 = animelem = 11
ID = 3402

[State 40, 1]
type = VarSet
trigger1 = Time = 0
v = 7
value = 1

[State 951, Cosmo Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3400,3
channel = 4

[State 3401, remove csmo snd]
type = stopsnd
trigger1 = animelem = 11
channel = 4

[State 951, Throw Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3400,1
channel = 0

[State 951, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 30, -60

[State 951, Bind 2]
type = TargetBind
trigger1 = AnimElemtime(2) >= 0 && AnimElemTime(3) < 0
pos = 30, -60

[State 3001, 1]
type = Superpause
trigger1 = animelem = 9 
darken = 1
anim = 112
pos = 0, -50
time = 1

[State 951, Bind 3]
type = TargetBind
trigger1 = AnimElemtime(3) >= 0 && AnimElemTime(11) < 0
pos = 30, -60

[State 950, 1]
type = HitDef
Trigger1 = Animelem = 10
damage = 600,0
animtype = Hard
getpower = 0
givepower = 0
attr = S, HA
hitflag = MA
priority = 1
hitsound = S3000,1
sparkno = -1
p1sprpriority = 2
p2sprpriority = 0
p2facing = 1
fall = 1

[State 3000, 1] 
type = BGPalFx 
trigger1 = animelem = 10 
time = 10 
add = 255,255,255 

[State 3000, 2] 
type = PalFx 
trigger1 = animelem = 10
time = 10 
add = 255,255,255

[State 951, Throw Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1200,0
channel = 0

[State 951, Throw]
type = TargetState
trigger1 = AnimElem = 5
value = 3003

[State 951, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Deadly Hug - P2 State 1
[Statedef 3402]
type    = A
movetype= H
physics = N
velset = 0,0

[State 952, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3402

[State 952, 2]
type = ChangeState
trigger1 = 1
value = 3403

;---------------------------------------------------------------------------

; Deadly Hug - P2 State 2
[Statedef 3403]
type = a
movetype = h
physics = n
velset = 0, 0
poweradd = 50

[State 953, 1]
type = veladd
trigger1 = 1
y = .4

;[State 953, 2]
;type = turn
;trigger1 = time = 0

[State 953, 3]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0 
value = 5100

;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------

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
[Statedef 7002]
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

[State 7002] 
type = SelfState
Trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = time = 150
value = 5100

;-----------------------------------------------------
; reverse explosion spin
[Statedef 7003]
type    = A
movetype= H 
physics = N

[State 7003]
type = ChangeAnim2
trigger1 = 1
value = 11001

[State 7003]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 7003]
type = VelAdd
Trigger1 = Time >= 0
y = .3

[State 7003]
type = Offset
Trigger1 = Time >= 1
y = -50

[State 7003]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 7003]
type = AngleAdd
trigger1 = Time >= 1
value = -22.5

[State 7003]
type = AngleDraw
trigger1 = Time >= 1
trigger1 = Pos Y <= 10

[State 7003] 
type = SelfState
Trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = time = 150
value = 5100

;------------------------------------------------------------------------------------

[Statedef -2]

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
;AI Variabili
;===================================================
;---------------------------------------------------

[State -2,SpeedModeFX]
trigger1 = var(3) = 1
type = afterimage
paladd = 13,13,-13
trans = add

[State -2,SpeedModeFX]
trigger1 = var(3) = 1
type = varset
v = 3
value = 2

[State -2,SpeedModeFX]
trigger1 = var(3) = 2
trigger1 = timemod = 2,0
trigger1 = roundstate = 2
type = pause
time = 1
movetime = 1

[State -2,SpeedModeFiX]
trigger1 = var(3) = 2
type = assertspecial
flag = nojugglecheck

[State -2,SpeedModeFX]
trigger1 = var(3) = 2
type = afterimagetime
time = 13
ignorehitpause = 1

[State -2,SpeedModeFix]
trigger1 = var(3) = 2
type = targetvelset
x = 0.05

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
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 201) 
trigger1 = (movecontact)
value = 211
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 211) && (prevstateno = 201) && (movecontact) 
value = 221

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 201) 
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 201) && (movecontact) 
value = 220

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 211
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 211) && (prevstateno = 200) && (movecontact) 
value = 220

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 211
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 211) && (prevstateno = 200) && (movecontact) 
value = 210

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 201
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 201) && (prevstateno = 210) && (movecontact) 
value = 220

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 221) 
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 221) && (movecontact) 
value = 210

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 221
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 221) && (prevstateno = 200) && (movecontact) 
value = 211

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 221
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 221) && (prevstateno = 210) && (movecontact) 
value = 201

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 211) 
trigger1 = (movecontact)
value = 221
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 221) && (prevstateno = 211) && (movecontact) 
value = 211

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 211
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 211) && (prevstateno = 200) && (movecontact) 
value = 220


;3 calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 251) 
trigger1 = (movecontact)
value = 241

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
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 251) 
trigger1 = (movecontact)
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 251) && (movecontact) 
value = 250

;3 calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 231) 
trigger1 = (movecontact)
value = 241
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 241) && (prevstateno = 231) && (movecontact) 
value = 251

;3 calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 231) 
trigger1 = (movecontact)
value = 241
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 241) && (prevstateno = 231) && (movecontact) 
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
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A)
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
value = 900

;EartQuaking kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [110, 164])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120)
value = 3201

;Triple Shoulder Block
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [165, 219])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 2000

;Throw Ahead
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [220, 274])
trigger1 = (P2bodydist X <= 15) && (prevstateno != 5120)
value = 950

;Projection
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [275, 329])
trigger1 = (P2bodydist X <= 15) && (prevstateno != 5120)
value = 800

;Back Drop
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [330,384])
trigger1 = (P2bodydist X <= 15) && (prevstateno != 5120)
value = 990

;Super Medium Kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [385, 439])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120) 
value = 1100
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [385, 439])
trigger1 = (P2bodydist X < 100) && (prevstateno != 5120) 
value = 1050

;Super Hard Kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [440, 494])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120)
value = 1150
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [440, 494])
trigger1 = (P2bodydist X < 100) && (prevstateno != 5120)
value = 1050

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [495,549])
value = 199

;---------------------------------------------------
;===================================================
;Hypers
;===================================================
;---------------------------------------------------

;Ear-Cutting
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [550, 604]) && (var(26) != 2)
trigger1 = (P2bodydist X <= 15) && (prevstateno != 5120) && (power >= 1000)
value = 3000

;Strangolamento Sanguinario / Bloody Strangling	
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [605, 659])
trigger1 = (P2bodydist X <= 15) && (prevstateno != 5120) && (power >= 2000)
value = 3100

;Bloody Shoulder Block
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [660, 714])
trigger1 = (prevstateno != 5120) && (power >= 1000)
value = 1000

;Devastating Punch
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [715, 769])
trigger1 = (P2bodydist X < 100) && (prevstateno != 5120) && (power >= 2000)
value = 3200

;Devastating Kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [780, 824])
trigger1 = (P2bodydist X < 100) && (prevstateno != 5120) && (power >= 3000)
value = 3202

;Deadly Hug
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [825, 879])
trigger1 = (P2bodydist X < 15) && (prevstateno != 5120) && (power >= 3000) && (p2life <= 200)
value = 3400

;-----------------------------------------------------------------------------
;=============================================================================
;End of Cassios AI
;=============================================================================
;-----------------------------------------------------------------------------

;Blocking Cosmo in Training Mode
[State -2, BLOCK]
type = VarSet
triggerall = (RoundState = 1) && (power >= 3000) && (RoundNo = 1)
trigger1 = 1
v = 31
value = 1

;Cosmo Stand controllers
[State -2, 0]
type = varset
triggerall = Alive = 1
triggerall = Var(31) != 1
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

[State -2, EXP]
type = Explod
triggerall = life > 0
triggerall = var(30) = 1
triggerall = Teamside = 1
trigger1 = Time >= 0
postype = left
pos = 0,49
bindtime = -1
removetime = 660
sprpriority = 5
anim = 701
id = 701

[State -2, EXP]
type = Explod
triggerall = life > 0
triggerall = var(30) = 1
triggerall = teamside = 2
trigger1 = Time >= 0
postype = right
pos = 4,47
bindtime = -1
removetime = 660
sprpriority = 5
anim = 702
id = 702

[State -2, 3]
type = PlaySnd
triggerall = life > 0
triggerall = var(30) = 1
trigger1 = Time >= 0
value = 700,0
channel = 5

[State -2, 3B]
type = PlaySnd
triggerall = life > 0
triggerall = var(30) = 60
trigger1 = Time >= 0
value = 700,0
channel = 5

[State -2, 3C]
type = PlaySnd
triggerall = life > 0
triggerall = var(30) = 120
trigger1 = Time >= 0
value = 700,0
channel = 5

[State -2, 3]
type = PlaySnd
triggerall = life > 0
triggerall = var(30) = 180
trigger1 = Time >= 0
value = 700,0
channel = 5

[State -2, 3]
type = PlaySnd
triggerall = life > 0
triggerall = var(30) = 240
trigger1 = Time >= 0
value = 700,0
channel = 5

[State -2, 3]
type = PlaySnd
triggerall = life > 0
triggerall = var(30) = 300
trigger1 = Time >= 0
value = 700,0
channel = 5

[State -2, 3]
type = PlaySnd
triggerall = life > 0
triggerall = var(30) = 360
trigger1 = Time >= 0
value = 700,0
channel = 5

[State -2, 3]
type = PlaySnd
triggerall = life > 0
triggerall = var(30) = 420
trigger1 = Time >= 0
value = 700,1
channel = 5

[State -2, 3]
type = PlaySnd
triggerall = life > 0
triggerall = var(30) = 480
trigger1 = Time >= 0
value = 700,1
channel = 5

[State -2, 3]
type = PlaySnd
triggerall = life > 0
triggerall = var(30) = 540
trigger1 = Time >= 0
value = 700,1
channel = 5

[State -2, 3]
type = PlaySnd
triggerall = life > 0
triggerall = var(30) = 600
trigger1 = Time >= 0
value = 700,2
channel = 6

;------------------------------------------------------------------------------------

[State -2, 4]
type = StopSnd
triggerall = time >= 1
trigger1 = stateno = 710
trigger2 = command != "holda"
trigger3 = command != "holdb"
channel = 2

[State -2, 4A]
type = StopSnd
triggerall = time >= 1
trigger1 = stateno = 710
trigger2 = command != "holda"
trigger3 = command != "holdb"
channel = 3

[State -2, 3.1]
type = PlaySnd
triggerall = Random < 250
triggerall = stateno = 40
trigger1 = Time = 1
value = 1000,0

;---------- Hit ------------

[State -2, Hit]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
value = 5000,0

[State -2, Hit]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5010
value = 5000,1

[State -2, Hit]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5011
trigger2 = anim = 5012
value = 5000,2

[State -2, Hit]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 5000,0

[State -2, Hit]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5022
value = 5000,1

[State -2, Hit]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5100
trigger1 = Alive = 1
value = 5000,2

;------------------------------------------------------------------------------------

[Statedef -3]
 
[State -3, AI Activate]
type = VarSet
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
var(59) = 1

[State -3 , var]
type = VarSet
triggerall = 1
trigger1 = p2name = "shaina"  || p4name = "shaina"
var(9) = 1

[State -3, 4]
type = removeexplod
trigger1 = stateno != 901
id = 151

;------------------------------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = AnimElem = 6
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = AnimElem = 6
value = F3,0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = AnimElem = 3
value = 3,1

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = AnimElem = 3
value = F3,1

;------------------------------------------------------------

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = Time = 0
value = 2,0

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = Time = 0
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
value = F2,2

;------------------------------------------------------------

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
triggerall = stateno = 100
trigger1 = AnimElem = 2
value = 3,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 2
value = F3,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 4
value = 3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 4
value = F3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 6
value = 3,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 6
value = F3,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 8
value = 3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 8
value = F3,0

;------------------------------------------------------------

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
value = 2,3

[State -3, Run Back Land]
type = PlaySnd
triggerall = stateno = 106
trigger1 = time = 1
value = F2,3

;------------------------------------------------------------
