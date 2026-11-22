;------------------------------------------------------------------------------------
; ASTERION AIR FILE by TonyADV & Tux
;------------------------------------------------------------------------------------

; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, Assert]
type = AssertSpecial
trigger1 = Time = [0,150]
flag = roundnotover

[State 170, Voce]
type = PlaySnd
trigger1 = time = 0
value = 13,13
channel = 0

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 180]
type = ChangeState
triggerall = Time < 60
trigger1 = command = "holdup"
trigger2 = command = "holddown"
trigger3 = command = "holdfwd"
trigger4 = command = "holdback"
value = 184

[State 180]
type = ChangeState
trigger1 = (NumHelper(3220) > 0) || (NumHelper(3221) > 0) || (NumHelper(3222) > 0) || (NumHelper(3223) > 0) || (NumHelper(3224) > 0) || (NumHelper(3225) > 0)
value = 183

[State 180]
type = ChangeState
trigger1 = Var(2) = [0,49] 
value = 181

[State 180]
type = ChangeState
trigger1 = Var(2) = [50,99] 
value = 182

;-----------------------------------------
;-----------------------------------------
; Win 1 
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, Assert]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = roundnotover

[State 181, Voce]
type = PlaySnd
trigger1 = time = 10
value = 13,11
channel = 0

[State 181, Mouth]
type = Explod
trigger1 = Time = 70
anim = 180
ID = 180
pos = 0,0
postype = p1
bindtime = 170
sprpriority = 10
removetime = 180
removeongethit = 1

[State 181, cosmo]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 1810+(1*var(22)/100)
sprpriority = -1
ownpal = 1
supermove = 1
removetime = -1

[State 181]
type = PlaySnd
trigger1 = Animelem = 9
value = 0, 0

[State 181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-----------------------------------------
;-----------------------------------------
; Win 2 
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, Assert]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = roundnotover

[State 182, Voce]
type = PlaySnd
trigger1 = time = 15
value = 13,12
channel = 0

[State 182, Mouth]
type = Explod
trigger1 = Time = 15
anim = 180
ID = 180
pos = 0,0
postype = p1
bindtime = 200
sprpriority = 10
removetime = 140
removeongethit = 1

[State 182, cosmo]
type = Explod
trigger1 = AnimElem = 1
pos = 0, 0
anim = 1820+(1*var(22)/100)
sprpriority = -1
ownpal = 1
supermove = 1
removetime = -1

[State 182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-----------------------------------------
;-----------------------------------------
; Win 3 (clones) by Tux
[Statedef 183]
type = S
ctrl = 0
anim = 0
velset = 0,0

[State 183, Assert]
type = AssertSpecial
trigger1 = Time = [0,10]
flag = RoundNotOver

[State 183, Assert]
type = AssertSpecial
trigger1 = Time = [0,10]
flag = Invisible

[State 183, Flash]
type = EnvColor
triggerall = var(22) = 0
trigger1 = Time = 10
value = 50,200,255
under = 0
time = 20

[State 183, Flash]
type = EnvColor
triggerall = var(22) = 1
trigger1 = Time = 10
value = 230,90,230
under = 0
time = 20

[State 183, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-----------------------------------------
;-----------------------------------------
; Win 4 (funny) by Tux
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 184, Assert]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = RoundNotOver

[State 184, Guitar]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,5

; Dedicata a Tony o'guappo esibizionista :)
[State 184, Ico TonyADV]
type = Explod
trigger1 = AnimElem = 1
anim = 9999
pos = -310, 210
postype = right
sprpriority = 4
supermove = 2
removetime = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 184, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Intro state decider
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

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Intro 1 (cloth)
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191]
type = AssertSpecial
trigger1 = Time = [0,500]
flag = Intro

[State 191]
type = ChangeState
triggerall = time = 0
trigger1 = palno = 5 || palno = 11
value = 193

[State 191, Voce]
type = PlaySnd
trigger1 = AnimElem = 4
value = 13,8
channel = 0

[State 191, Brilla]
type = PalFX
trigger1 = AnimElem = 37
time = 5
add = 150,150,250
sinadd = 200,200,200,3

[State 191, box]
type = Explod
trigger1 = time = 0
pos = 65,0
anim = 1910
sprpriority = -2
ownpal = 1
supermove = 1

[State 191, box light 1]
type = Explod
trigger1 = time = 73
pos = 65,4
anim = 7040
sprpriority = -1
ownpal = 1
supermove = 1

[State 191, cloth]
type = Explod
trigger1 = time = 150
pos = 65,4
anim = 1911
sprpriority = 2
ownpal = 1
supermove = 1

[State 191, box light 2]
type = Explod
trigger1 = time = 110
pos = 67,4
anim = 7050
sprpriority = -3
ownpal = 1
supermove = 1

[State 191, 0]
type = PlaySnd
trigger1 = AnimElem = 40
trigger2 = AnimElem = 44
trigger3 = AnimElem = 50
trigger4 = AnimElem = 53
trigger5 = AnimElem = 62
value = 4,1

[State 191, 0]
type = PlaySnd
trigger1 = AnimElem = 47
trigger2 = AnimElem = 44
trigger3 = AnimElem = 56
trigger4 = AnimElem = 59
trigger5 = AnimElem = 65
value = 4,0

[State 191, 0]
type = PlaySnd
trigger1 = time = 80
value = 4,0

[State 191, 0]
type = PlaySnd
trigger1 = time = 105
value = 2,1

[State 191, 0]
type = PlaySnd
trigger1 = time = 220
value = 5,2

[State 191, 0]
type = PlaySnd
trigger1 = time = 110
value = 9,0

[State 191, 0]
type = PlaySnd
trigger1 = AnimElem = 70
value = 9,0

[State 191, background]
type = Explod
trigger1 = time = 100
pos = -90,-210
anim = 8000+var(22)
sprpriority = -9
ownpal = 1
bindtime = -1
removeongethit = 1
supermove = 1

[State 191, cosmo 1]
type = Explod
trigger1 = time = 85
pos = 0,0
anim = 1912+(2*var(22)/100)
ID = 1912
sprpriority = -1
ownpal = 1
supermove = 1
bindtime = -1
removetime = 273

[State 191, cosmo 2]
type = Explod
trigger1 = AnimElem = 68
pos = 0,0
anim = 1913+(2*var(22)/100)
ID = 1912
sprpriority = -1
ownpal = 1
supermove = 1
removetime = 999
bindtime = -1

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
;---------------------------------------------------------------------------
; Intro 2 by Tux
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = Intro

[State 192]
type = PlaySnd
trigger1 = AnimElem = 3
value = 13,9
channel = 0

[State 192]
type = Explod
trigger1 = Time = 1
pos = -5,4
anim = 7050+var(22)
sprpriority = -3
ownpal = 1
supermove = 1

[State 192]
type = Explod
trigger1 = Time = 1
pos = -5,2
anim = 7010+var(22)
ID = 7010
sprpriority = -2
supermove = 1
removeongethit = 1
removetime = 95

[State 192]
type = Explod
trigger1 = Time = 1
pos = -5,2
anim = 7011+var(22)
ID = 7010
sprpriority = -3
supermove = 1
removeongethit = 1
removetime = 95

[State 192]
type = BGPalfx
trigger1 = Time = 1
ignorehitpause = 1
time = 95
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 192]
type = BGPalfx
trigger1 = Time = 96
ignorehitpause = 1
time = 5
add = 50,50,255
invertall = 0

[State 192, cosmo]
type = Explod
trigger1 = Time = 1
pos = 0,0
anim = 1920+(1*var(22)/100)
ID = 1920
sprpriority = -1
ownpal = 1
supermove = 1
bindtime = -1
removetime = 174

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
;---------------------------------------------------------------------------
; Intro 3 (Hades)
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193]
type = AssertSpecial
trigger1 = Time = [0,360]
flag = Intro

[State 193, Voce]
type = PlaySnd
trigger1 = time = 0
value = 13,9
channel = 0

[State 193, Voce]
type = PlaySnd
trigger1 = time = 140
value = 13,10
channel = 0

[State 193]
type = PlaySnd
trigger1 = AnimElem = 28
value = 0,0

[State 193]
type = PlaySnd
trigger1 = AnimElem = 32
value = 0,1

[State 193, mantle]
type = Explod
trigger1 = AnimElem = 33
pos = 0,0
anim = 1930
ID = 1930
sprpriority = -5
ownpal = 1
supermove = 1

[State 193, cosmo]
type = Explod
trigger1 = time = 1
pos = 0,0
anim = 1931+(1*var(22)/100)
ID = 1930
sprpriority = -1
ownpal = 1
supermove = 1
removetime = 999
bindtime = -1

[State 193, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(1930) >= 1
trigger1 = AnimElem = 28
ID = 1930

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
;---------------------------------------------------------------------------
; Provoking state decIDer
[Statedef 199]
type = S
ctrl = 0
velset = 0,0

[State 199]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 199]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 198

[State 199]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 197

;---------------------------------------------------------------------------
; Provoking 1
[Statedef 197]
type = S
ctrl = 0
anim = 197
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 197, Voce]
type = PlaySnd
trigger1 = time = 10
value = 13,7
channel = 0

[State 197, Mouth]
type = Explod
trigger1 = Time = 10
anim = 180
ID = 180
pos = 0,0
postype = p1
bindtime = 150
sprpriority = 10
removetime = 160
removeongethit = 1

[State 197, cosmo]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 1970+(1*var(22)/100)
ID = 1970
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 197]
type = ChangeState
trigger1 = animtime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Provoking 2
[Statedef 198]
type = S
ctrl = 0
anim = 198
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 198, Voce]
type = PlaySnd
trigger1 = time = 20
value = 13,6
channel = 0

[State 198, Mouth]
type = Explod
trigger1 = Time = 20
anim = 180
ID = 180
pos = 0,0
postype = p1
bindtime = 110
sprpriority = 10
removetime = 120
removeongethit = 1

[State 198, cosmo]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 1980+(1*var(22)/100)
ID = 1980
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 198]
type = PlaySnd
trigger1 = AnimElem = 9
value = 0, 0

[State 198]
type = ChangeState
trigger1 = animtime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Standing LP
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

[State 200]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 200]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 20
getpower = 0
givepower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2,9
sparkno = s7000+var(22)
sparkxy = -10, -95
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-2
airguard.velocity = -1.9,-.8
air.type = High
air.hittime = 12

[State 200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Standing MP
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 210
poweradd = 50
sprpriority = 2

[State 210, Anim]
type = ChangeAnim
triggerall = P2BodyDist X < 20
trigger1 = Time = 0
value = 205

[State 210]
type = PlaySnd
triggerall = Anim = 205
trigger1 = Time = 5
value = 0, 0

[State 210]
type = PlaySnd
triggerall = Anim = 210
trigger1 = Time = 5
value = 0, 1

[State 210]
type = HitDef
triggerall = Anim = 205
trigger1 = time = 0
attr = S, NA
damage = 30
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 2,9
sparkno = s7001+var(22)
sparkxy = -10, -95
hitsound = S1,1
guardsound = S6,0             
ground.type = High               
ground.slidetime = 5             
ground.hittime  = 12             
ground.velocity = -3             
air.velocity = -3,-2
airguard.velocity = -1.9,-.8     
air.type = High                  
air.hittime = 12  

[State 210]
type = HitDef
triggerall = Anim = 210
trigger1 = Time = 0
attr = S, NA
animtype  = hard
damage = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 2,9
sparkno = s7001+var(22)
sparkxy = -10,-95
hitsound = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -5
air.velocity = -5,-2
envshake.time = 15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5

[State 210]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Standing HP
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 220
poweradd = 50
sprpriority = 2

[State 220, Anim]
type = ChangeAnim
triggerall = P2BodyDist X <= 50
trigger1 = Time = 0
value = 215

[State 220]
type = PlaySnd
triggerall = Anim = 215
trigger1 = Time = 12
value = 0, 1

[State 220, Velset]
type = VelSet
triggerall = Anim = 220
trigger1 = AnimElem = 2
x = 7

[State 220]
type = PlaySnd
triggerall = Anim = 220
trigger1 = Time = 10
value = 0, 2

[State 220]
type = Explod
triggerall = Anim = 220
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
pos = 10,2
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1

[State 220]
type = HitDef
triggerall = Anim = 215
trigger1 = AnimElem = 5
attr = S, NA
animtype  = hard
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 2,9
sparkno = s7002+var(22)
sparkxy = -20,-110
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5

[State 220]
type = HitDef
triggerall = Anim = 220
trigger1 = AnimElem = 4
attr = S, NA
animtype  = hard
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,9
sparkno = s7002+var(22)
sparkxy = -10,-85
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -10
air.velocity = -10,-2
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

[State 220]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Standing LK
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 230
poweradd = 50
sprpriority = 2

[State 230]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 230]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = light
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,8
sparkno = s7000+var(22)
sparkxy = -15,-30
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,0
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 230]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Standing MK (close)
[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 235
poweradd = 50
sprpriority = 2

[State 235]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 235]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,8
sparkno = s7001+var(22)
sparkxy = -20,-65
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,0
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 235]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Standing MK
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 240
poweradd = 50
sprpriority = 2

[State 240]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 240]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,8
sparkno = s7001+var(22)
sparkxy = -10,-95
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -4
air.velocity = -4,-2
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

[State 240]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Standing HK
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 250
poweradd = 50
sprpriority = 2

[State 250]
type = PlaySnd
trigger1 = Time = 5
value = 0, 2

[State 250]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = hard
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,8
sparkno = s7002+var(22)
sparkxy = 0,-85
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5

[State 250]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Crouching LP
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
ctrl = 0
anim = 400
poweradd = 50
sprpriority = 2

[State 400]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 400]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
getpower = 0
givepower = 0
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = s7000+var(22)
sparkxy = 0,-40
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-1

[State 400]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Crouching MP
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
ctrl = 0
anim = 410
poweradd = 50
sprpriority = 2

[State 410]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 410]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
getpower = 0
givepower = 0
animtype  = medium
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7001+var(22)
sparkxy = 0,-48
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -4
air.velocity = -4,-2
down.velocity = -5,0
down.hittime = 20

[State 410]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Crouching HP
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
ctrl = 0
anim = 420
poweradd = 50
sprpriority = 2

[State 420, Anim]
type = ChangeAnim
triggerall = P2BodyDist X <= 40
trigger1 = Time = 0
value = 415

[State 420]
type = PlaySnd
triggerall = Anim = 420
trigger1 = Time = 5
value = 0, 2

[State 420]
type = PlaySnd
triggerall = Anim = 415
trigger1 = Time = 12
value = 0, 2

[State 420]
type = HitDef
triggerall = Anim = 420
trigger1 = AnimElem = 4
attr = C, NA
damage    = 40
getpower = 0
givepower = 0
animtype  = hard
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002+var(22)
sparkxy = 0,-42
hitsound   = S1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -5,-3
down.velocity = -5,0
down.hittime = 20
envshake.time =  10 
envshake.freq = 10    
envshake.ampl = 5  
envshake.phase = 5

[State 420]
type = HitDef
triggerall = Anim = 415
trigger1 = AnimElem = 5
attr = S, NA
animtype  = hard
damage    = 40
getpower = 0
givepower = 0
hitflag = MAFD
guardflag = L
pausetime = 2,9
sparkno = s7004+var(22)
sparkxy = -20,-110
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5

[State 420]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Crouching LK
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
ctrl = 0
anim = 430
poweradd = 50
sprpriority = 2

[State 430]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 430]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7000+var(22)
sparkxy = -10,-5
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-1
down.velocity = -5,0
down.hittime = 20

[State 430]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Crouching MK
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 5
ctrl = 0
anim = 440
poweradd = 50
sprpriority = 2

[State 440]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 440]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7001+var(22)
sparkxy = -10,-20
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -4
air.velocity = -4,-1
down.velocity = -5,0
down.hittime = 20
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 440]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Crouching HK
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
velset = 0,0
ctrl = 0
anim = 450
poweradd = 50
sprpriority = 2

[State 450]
type = PlaySnd
trigger1 = Time = 5
value = 0, 2

[State 450]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002+var(22)
sparkxy = -10,-30
hitsound   = S1,2
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 450]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Jumping LP
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 600
poweradd = 50
sprpriority = 2

[State 600]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 600]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s7000+var(22)
sparkxy = -10,-80
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -3
air.velocity = -1.3,-3

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Jumping MP
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 610
poweradd = 50
sprpriority = 2

[State 610]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 610]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 30
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s7001+var(22)
sparkxy = -10,-55
hitsound   = S1,1
guardsound = S6,0
ground.type = low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
envshake.time =  5
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Jumping HP
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 620
poweradd = 50
sprpriority = 2

[State 620]
type = PlaySnd
trigger1 = Time = 5
value = 0, 2

[State 620]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 40
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s7002+var(22)
sparkxy = -10,-80
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -5
air.velocity = -1.3,-3
envshake.time =  10
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Jumping LK
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 630
poweradd = 50
sprpriority = 2

[State 630]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 630]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7000+var(22)
sparkxy = -10,-50
hitsound   = S1,0
guardsound = S2,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Jumping MK
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 3
ctrl = 0
anim = 640
poweradd = 50
sprpriority = 2

[State 640]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 640]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7001+var(22)
sparkxy = -10,-50
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Jumping HK
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 650
poweradd = 50
sprpriority = 2

[State 650]
type = PlaySnd
trigger1 = Time = 5
value = 0, 2

[State 650]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002+var(22)
sparkxy = -10,-65
hitsound   = S1,3
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
envshake.time =  10
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------
; Throw
[Statedef 800]
type    = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2
poweradd = 50

[State 800, 1]
type = HitDef
trigger1 = time = 0
attr = S, NT
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
getpower = 0
givepower = 0

[State 800, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------
; Throw (p1 state)
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810

[State 810, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, 2]
type = Width
trigger1 = animelemtime(1) >= 0
edge = 0,60

[State 810, 3]
type = Explod
trigger1 = animelem = 2
anim = 6010
pos = 36,-80
sprpriority = 2
bindtime = 1
ownpal = 1

;------------------------------------------------------

[State 810, 1 Holding fwd?]
type = VarSet
trigger1 = time = 0
var(2) = command = "holdfwd"

[State 810, Holding back]
type = Turn
trigger1 = time = 20
trigger1 = command = "holdback"

[State 810, 3 Grab Sound]
type = PlaySnd
trigger1 = animelem = 2
value = 8, 0

[State 810, 3 Throw Sound]
type = PlaySnd
trigger1 = animelem = 5
value = 2, 2

[State 810, 3 Throw Sound]
type = PlaySnd
trigger1 = animelem = 6
value = 2, 1

[State 810, 3 Ground Sound]
type = PlaySnd
trigger1 = animelem = 11
value = 3, 0

[State 810, 4 Bind]
type = TargetBind
trigger1 = animelemtime(2) < 0
pos = 28, 0

[State 810, 5 Bind]
type = TargetBind
trigger1 = animelemtime(2) >= 0 && animelemtime(5) < 0
pos = 30, 0

[State 810, 6 Bind]
type = TargetBind
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 30, -80

[State 810, holdfwd - 6 Turn] ;If was holding fwd before, turn now
type = Turn
trigger1 = var(2)
trigger1 = animelem = 4

[State 810, holdfwd - 6 Pos] ;If was holding fwd before, move a little
type = PosAdd
trigger1 = var(2)
trigger1 = animelem = 4
x = -37

[State 810, holdfwd - 6 Turn Target] ;If was holding fwd before, turn target too
type = TargetFacing
trigger1 = var(2)
trigger1 = animelem = 4
value = -1

[State 810, 7 Bind]
type = TargetBind
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = -40, -60

[State 810, 8 Hurt]
type = TargetLifeAdd
trigger1 = animelem = 7
value = -60

[State 810, 9 Throw]
type = TargetState
trigger1 = animelem = 7
value = 821

[State 810, 9]
type = PlaySnd
trigger1 = animelem = 6
value = 12, 0

[State 810, 10]
type = Turn
trigger1 = animtime = 0

[State 810, 11]
type = PosAdd
trigger1 = animelem = 15
x = -10

[State 810, 12 State End]
type = ChangeState
trigger1 = animtime = 0
value = 12
ctrl = 1

;------------------------------------------------------
; Throw (p2 state)
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 820

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

;---------------------------------------------------------------------------
; Scratching Hold by Tux
[Statedef 830]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 830
poweradd = 50
sprpriority = 2

[State 830]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 830]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NT
animtype  = hard
damage = 10
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7070
guard.sparkno = 40
sparkxy = -25,-100
hitsound   = S8,1
guardsound = S6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 12
ground.velocity = 0,0
air.velocity = -8,-4
p1stateno = 831
p2stateno = 832

[State 830]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 
[Statedef 831]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 2,0
ctrl = 0
anim = 831
poweradd = 0
sprpriority = 2

[State 831]
type = PlaySnd
trigger1 = Time = 5
value = 0,1

[State 831]
type = PlaySnd
trigger1 = Time = 5
value = 12,0

[State 831, dust]
type = Explod
trigger1 = AnimElem = 1
pos = 0,2
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1
scale = .8, .8

[State 831]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Up
damage    = 45
getpower = 0
givepower = 0
priority  = 5
pausetime = 20,30
sparkno = s7002+var(22)
sparkxy = -10,-94
hitsound   = S1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -1.3,-20
air.velocity = -1.3,-20
guard.velocity = -11
airguard.velocity = -4.5,-5
envshake.time = 25
envshake.ampl = 7
envshake.freq = 176
p2facing = 1
fall = 1
fall.recover = 0
fall.damage = 5
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100
maxdist = 100,-10
yaccel = .8

[State 831]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 
[Statedef 832]
type = S
movetype= H
physics = N
velset = 0,0

[State 832, Freeze anim]
type = Changeanim
trigger1 = time != 0
value = 5000

[State 832, PosSet]
type = PosSet
trigger1 = time = 0
Y = 0

[State 832, Velset]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 802, CS]
type = SelfState
trigger1 = time = 50
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 832, CZ]
type = ChangeState
trigger1 = time = 50
trigger1 = Pos Y < 0
value = 52; 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Cosmo charge (start)
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
v = 10
value = 1

[State 900, removeEX]
type = RemoveExplod
triggerall = NumExplod(903) >= 1
trigger1 = Time = 0
ID = 903

[State 900]
type = PlaySnd
trigger1 = AnimElem = 1
value = 9, 1

[State 900, voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 4
channel = 0

[State 900, shake]
type = EnvShake
trigger1 = AnimElem = 1
time = 40

[State 900]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

; Cosmo charge (charging)
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901

[State 901]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

[State 901, cosmo]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 903+var(22)
sprpriority = -1
supermove = 1
removeongethit = 1
ID = 903

[State 901, ground charge]
type = Explod
trigger1 = AnimElem = 1
pos = 10,2
anim = 7010+var(22)
sprpriority = -2
supermove = 1
removeongethit = 1
ID = 7010
scale = .9,.9

[State 901, Hound]
type = Explod
triggerall = numexplod(6000) < 1
trigger1 = Time = 0
pos = -15,-50
anim = 6000
sprpriority = -2
supermove = 1
removeongethit = 1
ID = 6000
; scale = .9,.9

[State 901, air charge]
type = Explod
trigger1 = AnimElem = 1
pos = 8,2
anim = 7020+var(22)
sprpriority = 2
supermove = 1
removeongethit = 1
ID = 7020
scale = 1,.8

[State 901]
type = Explod
triggerall = numexplod(7030) = 0
trigger1 = AnimElem = 1
anim = 7030+var(22)
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
trigger1 = AnimElem = 1
trigger1 = 1
anim = 7031+var(22)
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

; Cosmo charge (end)
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

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(903) >= 1
trigger1 = time = 1
ID = 903

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = time = 1
ID = 7010

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7020) >= 1
trigger1 = time = 1
ID = 7020

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7030) >= 1
trigger1 = time = 1
ID = 7030

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7031) >= 1
trigger1 = time = 1
ID = 7031

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(6000) >= 1
trigger1 = time = 1
ID = 6000

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
trigger1 = AnimTime= 0
value =0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Illusory Punches 1
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 100
sprpriority = -1

[State 1000, Velset]
type = VelSet
trigger1 = AnimElem = 2
x = 10

[State 1000]
type = PlaySnd
trigger1 = Time = 10
value = 0, 1

[State 1000, afterimage]
type = AfterImage
triggerall = var(22) = 0
trigger1 = Time = 0
time = 20
PalBright = 10,10,10
PalContrast = 128,200,200
trans = Add1

[State 1000, afterimage]
type = AfterImage
triggerall = var(22) = 1
trigger1 = Time = 0
time = 20
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State 1000, dust]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
pos = 10,2
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1

[State 1000]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = hard
damage    = 80,9
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7004+var(22)
sparkxy = -10,-80
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -10,-5
air.velocity = -10,-4
envshake.time =  50 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5
Fall = 1
fall.damage = 10             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
p2stateno = 1025

[State 1000]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Illusory Punches 2
[Statedef 1010]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1020
poweradd = 100
sprpriority = -1

[State 1010, voce]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
value = 12,3

[State 1010, Velset]
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
x = 3

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 0

[State 1010]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0, 1

[State 1010, dust]
type = Explod
trigger1 = AnimElem = 2
pos = 10,2
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1

[State 1010, afterimage]
type = AfterImage
triggerall = var(22) = 0
trigger1 = time = 0
time = 45
FrameGap = 5
length = 35
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1010, afterimage]
type = AfterImage
triggerall = var(22) = 1
trigger1 = time = 0
time = 45
FrameGap = 5
length = 35
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State 1010]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = hard
damage    = 12,1
getpower = 0
givepower = 0
guardflag = MA
pausetime = 2,9
sparkno = s7004+var(22)
sparkxy = -20,-90
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  5
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 1010]
type = HitDef
trigger1 = AnimElem = 11
attr = S, SA
animtype  = hard
damage    = 8,1
getpower = 0
givepower = 0
guardflag = MA
pausetime = 2,9
sparkno = s7004+var(22)
sparkxy = -10,-80
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 1010]
type = ChangeState
trigger1 = Time = 45
value = 1011
ctrl = 1

[Statedef 1011]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 220
poweradd = 0
sprpriority = -1

[State 1011, voce]
type = PlaySnd
trigger1 = time = 5
value = 12,0

[State 1011, Velset]
type = VelSet
trigger1 = AnimElem = 2
x = 8

[State 1011]
type = PlaySnd
trigger1 = Time = 10
value = 0, 1

[State 1011, dust]
type = Explod
trigger1 = AnimElem = 2
pos = 10,2
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1

[State 1011]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = hard
damage    = 15,2
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7004+var(22)
sparkxy = -25,-90
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -10,-5
air.velocity = -10,-4
envshake.time =  50 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5
p2stateno = 1025
Fall = 1
fall.damage = 10             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1011]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Illusory Punches 3
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1020
poweradd = 100
sprpriority = -1

[State 1020]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 1020]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2, 2

[State 1020, Teleport]
type = PosAdd
trigger1 = AnimElem = 7
x = p2bodydist x + 130
y = 0

[State 1020, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1020, Velset]
type = VelSet
trigger1 = AnimElem = 2
x = 8

[State 1020, dust]
type = Explod
trigger1 = AnimElem = 2
pos = 10,2
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1

[State 1020]
type = AfterImage
triggerall = var(22) = 0
trigger1 = time = 0
time = 40
FrameGap = 5
length = 35
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1020]
type = AfterImage
triggerall = var(22) = 1
trigger1 = time = 0
time = 40
FrameGap = 5
length = 35
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State 1020]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = Medium
damage    = 50,5
getpower = 0
givepower = 0
guardflag = MA
pausetime = 2,25
sparkno = s7004+var(22)
sparkxy = -20,-90
sparkxy = -10,-80
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  5
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 1020]
type = ChangeState
trigger1 = AnimTime = 0
value = 1021
ctrl = 1

[Statedef 1021]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1021
poweradd = 0
sprpriority = -1

[State 1021]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 1021, Velset]
type = VelSet
trigger1 = AnimElem = 2
x = 8

[State 1021, dust]
type = Explod
trigger1 = AnimElem = 2
pos = 10,2
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1

[State 1021, 2]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = Medium
damage    = 40,4
getpower = 0
givepower = 0
guardflag = MA
pausetime = 2,9
sparkno = s7004+var(22)
sparkxy = -10,-80
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  10
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

[State 1021, 5]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Shaking for the hit
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
; Flying through the air
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

;------------------------------------------
; Hit wall
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
; Bounce off wall
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

[State 1028, Anim 5050] ; Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ; Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ; Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ; Coming down - diagup type
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
; Illusory Kicks
[Statedef 1030]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1030
poweradd = 100
sprpriority = -1

[State 1030]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0

[State 1030]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2, 2

[State 1030, Teleport]
type = PosAdd
trigger1 = AnimElem = 7
x = 20
y = 0

[State 1030, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1030, Velset]
type = VelSet
trigger1 = AnimElem = 5
x = 2

[State 1030, dust]
type = Explod
trigger1 = AnimElem = 5
pos = 22,2
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1

[State 1030]
type = AfterImage
triggerall = var(22) = 0
trigger1 = time = 0
time = 50
FrameGap = 5
length = 30
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1030]
type = AfterImage
triggerall = var(22) = 1
trigger1 = time = 0
time = 50
FrameGap = 5
length = 30
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State 1030]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = hard
damage    = 30,3
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,25
sparkno = s7001+var(22)
sparkxy = 0,-85
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-2
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 1030]
type = ChangeState
trigger1 = AnimTime = 0
value = 1031
ctrl = 1

[Statedef 1031]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1031
poweradd = 0
sprpriority = -1

[State 1031, voce]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,4

[State 1031]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1

[State 1031, Velset]
type = VelSet
trigger1 = AnimElem = 3
x = 2

[State 1031, dust]
type = Explod
trigger1 = AnimElem = 3
pos = 0,2
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1

[State 1031] 
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Up               
damage    = 50,5
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 20,30
sparkno = s7002+var(22)
sparkxy = -10,-94
hitsound   = S1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -1.3,-20
air.velocity = -1.3,-20
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
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100            
maxdist = 100,-10           
yaccel = .8 

[State 1031]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Illusory Kicks (low)
[Statedef 1040]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1040
poweradd = 100
sprpriority = -1

[State 1040]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 0

[State 1040]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2, 2

[State 1040, Teleport]
type = PosAdd
trigger1 = AnimElem = 7
x = 110
y = 0

[State 1040, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1040, Velset]
type = VelSet
trigger1 = AnimElem = 4
x = 10

[State 1040, dust]
type = Explod
trigger1 = AnimElem = 4
pos = 20,2
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1

[State 1040]
type = AfterImage
triggerall = var(22) = 0
trigger1 = time = 0
time = 50
FrameGap = 5
length = 30
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1040]
type = AfterImage
triggerall = var(22) = 1
trigger1 = time = 0
time = 50
FrameGap = 5
length = 30
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State 1040]
type = HitDef
trigger1 = Time = 0
attr = C, SA
damage    = 40,4
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7001+var(22)
sparkxy = 0,-20
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 1040]
type = ChangeState
triggerAll = movecontact >= 1
triggerAll = Time > 24
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
value = 1042
ctrl = 1

[State 1040]
type = ChangeState
trigger1 = AnimTime = 0
value = 1041
ctrl = 1

[Statedef 1041]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1041
poweradd = 0
sprpriority = -1

[State 1041]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1

[State 1041, Velset]
type = VelSet
trigger1 = AnimElem = 1
x = 10

[State 1041, dust]
type = Explod
trigger1 = AnimElem = 1
pos = 10,2
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1

[State 1041]
type = HitDef
trigger1 = Time = 0
attr = C, SA
damage    = 40,5
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002+var(22)
sparkxy = 0,-20
hitsound   = S1,1
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
envshake.time =  25 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5
fall.damage = 10             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1041]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 1042]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1042
poweradd = 100
sprpriority = -1

[State 1042]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1

[State 1042, Velset]
type = VelSet
trigger1 = AnimElem = 1
x = 2

[State 1042, dust]
type = Explod
trigger1 = AnimElem = 1
pos = 10,2
anim = 7084
sprpriority = 5
supermove = 1
removeongethit = 1

[State 1042]
type = AfterImage
triggerall = var(22) = 0
trigger1 = time = 0
time = 40
FrameGap = 5
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1042]
type = AfterImage
triggerall = var(22) = 1
trigger1 = time = 0
time = 70
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State 1042, voce]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
value = 12,1

[State 1042]
type = HitDef
trigger1 = AnimElem = 4
attr = C, SA
damage    = 2,9
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 5,7
sparkno = s7001+var(22)
sparkxy = 0,-40
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = 1
air.velocity = 1,0
down.velocity = -5,0
down.hittime = 20
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5
fall.damage = 20             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1042]
type = HitDef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
attr = C, SA
damage    = 2
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 5,7
sparkno = s7001+var(22)
sparkxy = 0,-30
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -1
air.velocity = -1,0
down.velocity = -5,0
down.hittime = 20
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5
fall.damage = 20             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1042]
type = HitDef
trigger1 = AnimElem = 10
attr = C, SA
damage    = 2
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 5,7
sparkno = s7001+var(22)
sparkxy = 0,-20
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -1
air.velocity = -1,0
down.velocity = -5,0
down.hittime = 20
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5
fall.damage = 20             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1042]
type = HitDef
trigger1 = time = 45
attr = C, SA
damage    = 2
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 5,7
sparkno = s7001+var(22)
sparkxy = 0,-20
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = 0
air.velocity = 0,0
down.velocity = -5,0
down.hittime = 20
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5
fall = 1
fall.recover = 0             
fall.damage = 10             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1042]
type = ChangeState
trigger1 = Time = 48
value = 440
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Illusory Kicks (air)
[Statedef 1050]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 1050
poweradd = 100
sprpriority = 2

[State 1050, Velset]
type = VelSet
trigger1 = time  = 0
x = 8
y = 10

[State 1050]
type = PlaySnd
trigger1 = Time = 0
value = 2, 0

[State 1050]
type = AfterImage
triggerall = var(22) = 0
trigger1 = time = 0
time = 40
FrameGap = 5
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1050]
type = AfterImage
triggerall = var(22) = 1
trigger1 = time = 0
time = 40
FrameGap = 5
length = 20
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State 1050]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage    = 50,5
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7001+var(22)
sparkxy = -10,-65
hitsound   = S1,0
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 1050, NoHit]
type = NotHitBy
trigger1 = Time = 0
time = 50
value = SCA

[State 1050]
type = ChangeState
trigger1 = movecontact >= 1
value = 1051
ctrl = 1

[Statedef 1051]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 1051
poweradd = 0
sprpriority = 2

[State 1051, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1051]
type = PlaySnd
trigger1 = Time = 0
value = 0, 1

[State 1051, PosAdd]
type = PosAdd
trigger1 = time  = 0
x = 10

[State 1051, Velset]
type = VelSet
trigger1 = time  = 0
y = -3

[State 1051]
type = VelSet
trigger1 = movecontact >= 1
x = 0

[State 1051]
type = PlaySnd
trigger1 = time  = 0
value = 2, 2

[State 1051]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage    = 40,4
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002+var(22)
sparkxy = -10,-65
hitsound   = S1,1
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------------------------------------------
; Illusory Fireball by Tux
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1100
poweradd = 100
sprpriority = -1

[State 1100, Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,30

[State 1100, NoHit]
type = NotHitBy
trigger1 = Time = 0
time = 20
value = SCA

[State 1100, TelePort]
type = PosSet
trigger1 = AnimElem = 3
x = (enemyNear,Pos X) -200
y = -100

[State 1100, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1101

[Statedef 1101]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1101
sprpriority = 5

[State 1101, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1101, Vel]
type = VelSet
trigger1 = AnimElem <= 26
y = 0
x = 0

[State 1101, NoHit]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 1101, Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,30

[State 1101, Snd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 5,40

[State 1101, Proj]
type = Projectile
trigger1 = AnimElem = 6
projanim = 8010+var(22)
projhits = 1
projhitanim = 8012+var(22)
projscale = .5,.5
projsprpriority = 5
offset = 20,-80
sparkno = -1
sparkxy = 15,10
velocity = 11,7
attr = S, HP
damage = 30,3
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,5
hitsound   = S5,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 0,0
air.velocity = -1,0
air.animtype = Back
air.juggle = 3

[State 1101, Snd]
type = PlaySnd
trigger1 = AnimElem = 10
value = 5,30

[State 1101, TelePort]
type = PosSet
trigger1 = AnimElem = 12
x = (enemyNear,Pos X) + (ifelse(Random <= 499,75, -75))
y = -50

[State 1101, Snd]
type = PlaySnd
trigger1 = AnimElem = 13
value = 5,30

[State 1101, Snd]
type = PlaySnd
trigger1 = AnimElem = 17
value = 5,40

[State 1101, Proj]
type = Projectile
trigger1 = AnimElem = 17
projanim = 8010+var(22)
projhits = 1
projhitanim = 8012+var(22)
projscale = .5,.5
projsprpriority = 5
offset = 20,-80
sparkno = -1
sparkxy = 15,10
velocity = 11,10
attr = S, HP
damage = 30,3
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,5
hitsound   = S5,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = Back
air.juggle = 3

[State 1101, Snd]
type = PlaySnd
trigger1 = AnimElem = 21
value = 5,30

[State 1101, TelePort]
type = PosSet
trigger1 = AnimElem = 23
x = (enemyNear,Pos X) - 125
y = -75

[State 1101, Snd]
type = PlaySnd
trigger1 = AnimElem = 24
value = 5,30

[State 1101, Snd]
type = PlaySnd
trigger1 = AnimElem = 28
value = 5,40

[State 1101, Proj]
type = Projectile
trigger1 = AnimElem = 28
projanim = 8010+var(22)
projhits = 1
projhitanim = 8012+var(22)
projsprpriority = 5
projscale = 0.7,0.7
offset = 20,-80
sparkno = -1
sparkxy = 15,10
velocity = 11,10
attr = S, HP
damage = 30,3
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,5
hitsound   = S5,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -3,0
air.velocity = -3,0
air.animtype = Back
air.juggle = 3
fall = 1

[State 1101, Vel]
type = VelSet
trigger1 = AnimElem = 27
x = 0
y = 5

[State 1101, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Illusion (stand)
[Statedef 1200]
type = S
physics = S
sprpriority = 0
ctrl = 0
anim = 1200

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 2

[State 1200, NoHit]
type = NotHitBy
trigger1 = Time = 0
time = 20
value = SCA

[State 1200, Teleport]
type = PosAdd
trigger1 = AnimElem = 3
x = 200
y = 0

[State 1200, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1200, afterimage]
type = AfterImage
triggerall = var(22) = 0
trigger1 = time = 0
time = 20
FrameGap = 5
length = 35
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1200, afterimage]
type = AfterImage
triggerall = var(22) = 1
trigger1 = time = 0
time = 20
FrameGap = 5
length = 35
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State 1200, Helper]
type = Helper
trigger1 = time = 0
stateno = 8020
ID = 8020
postype = p1
pos = 0, -70
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 1200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1201
ctrl = 1

[Statedef 1201]
type = S
physics = S
sprpriority = 0
ctrl = 0
anim = 1201

[State 1201]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Illusion (crouch)
[Statedef 1202]
type    = C
physics = C
ctrl = 0
anim = 1202
sprpriority = 0

[State 1202]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 2

[State 1202, NoHit]
type = NotHitBy
trigger1 = Time = 0
time = 20
value = SCA

[State 1202, Teleport]
type = PosAdd
trigger1 = AnimElem = 3
x = 200
y = 0

[State 1202, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1202, afterimage]
type = AfterImage
triggerall = var(22) = 0
trigger1 = time = 0
time = 20
FrameGap = 5
length = 35
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1202, afterimage]
type = AfterImage
triggerall = var(22) = 1
trigger1 = time = 0
time = 20
FrameGap = 5
length = 35
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State 1202, Helper]
type = Helper
trigger1 = time = 0
stateno = 8020
ID = 8020
postype = p1
pos = 0, -40
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 1202]
type = ChangeState
trigger1 = AnimTime = 0
value = 1203
ctrl = 1

[Statedef 1203]
type    = C
physics = C
ctrl = 0
anim = 1203
sprpriority = 0

[State 1203]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Illusion (jump)
[Statedef 1204]
type    = A
physics = A
ctrl = 0
anim = 1204

[State 1204]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 2

[State 1204, NoHit]
type = NotHitBy
trigger1 = Time = 0
time = 20
value = SCA

[State 1204, Teleport]
type = PosAdd
trigger1 = AnimElem = 3
x = 200
y = 0

[State 1204, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1204, afterimage]
type = AfterImage
triggerall = var(22) = 0
trigger1 = time = 0
time = 20
FrameGap = 5
length = 35
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1204, afterimage]
type = AfterImage
triggerall = var(22) = 1
trigger1 = time = 0
time = 20
FrameGap = 5
length = 35
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State 1204, Helper]
type = Helper
trigger1 = time = 0
stateno = 8020
ID = 8020
postype = p1
pos = 0, -70
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 1204]
type = ChangeState
trigger1 = AnimTime = 0
value = 305
ctrl = 1

[Statedef 1205]
type    = A
physics = A
ctrl = 0
anim = 1205

[State 1205]
type = Null
trigger1 = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Million Ghost Attack (Anime) 
[Statedef 3010]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 3000
poweradd = -2000
sprpriority = 2

[State 3010]
type = PlaySnd
trigger1 = Time = 0
value = 2,1

[State 3010, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3010, Darken]
type = BGPalfx
trigger1 = AnimElem = 3
ignorehitpause = 1
time = 50
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3010, Velset]
type = VelSet
trigger1 = time  > 1
trigger1 = time  < 20
x = 1
y = -3

[State 3010]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

[Statedef 3000]
type    = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3001
poweradd = -2000
sprpriority = 2

[State 3000]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 3000, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3000, Darken]
type = BGPalfx
trigger1 = AnimElem = 3
ignorehitpause = 1
time = 50
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3000, Velset]
type = VelSet
trigger1 = time  > 1
trigger1 = time  < 20
x = 2.5
y = -6

[State 3000]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 1

[Statedef 3001]
type    = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3002
poweradd = 0
sprpriority = 2

[State 3000, Voce]
type = PlaySnd
trigger1 = time = 0
value = 13,0
channel = 0

[State 3001, noMusic] 
type = AssertSpecial
trigger1 = 1
flag = noBG

[State 3001, Velset]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3001, Darken]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 200
mul = 90,90,90
add = 5,5,5
invertall = 0

;[State 3001, camera]
;type = Helper
;trigger1 = time = 0
;postype = Left
;pos = 0, -150
;stateno = 8050
;keyctrl = 0
;ownpal = 1

[State 3001, spause]
type = SuperPause
trigger1 = AnimElem = 1
time = 190
movetime = 190
anim = -1
darken = 0
sound = s5,6

[State 3001, spause]
type = Explod
trigger1 = AnimElem = 7
pos = 0,-90
anim = 7008+var(22)
sprpriority = -2
removeongethit = 1
supermove = 1

[State 3001]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,1

[State 3001, background]
type = Explod
trigger1 = AnimElem = 1
pos = -320,0
anim = 8001+var(22)
ID = 8001
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3001, background]
type = Explod
trigger1 = AnimElem = 1
pos = -320,0
anim = 8002+var(22)
ID = 8002
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3001, flash]
type = EnvColor
triggerall = var(22) = 0
trigger1 = time = 85
value = 255,255,0
under = 0
time = 20

[State 3001, flash]
type = EnvColor
triggerall = var(22) = 1
trigger1 = time = 85
value = 230,90,230
under = 0
time = 20

;---------------------------------

[State 3001, Snd]
type = PlaySnd
trigger1 = time = 110
value = 5,30

[State 3001, illusion]
type = Explod
trigger1 = time = 150
pos = -150,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 30

[State 3001, illusion]
type = Explod
trigger1 = time = 140
pos = -120,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 40

[State 3001, illusion]
type = Explod
trigger1 = time = 130
pos = -90,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 50

[State 3001, illusion]
type = Explod
trigger1 = time = 120
pos = -60,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 60

[State 3001, illusion]
type = Explod
trigger1 = time = 110
pos = -30,0
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 70

[State 3001, illusion]
type = Explod
trigger1 = time = 100
pos = 0,0
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 80

[State 3001, illusion]
type = Explod
trigger1 = time = 110
pos = 30,0
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 70

[State 3001, illusion]
type = Explod
trigger1 = time = 120
pos = 60,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 60

[State 3001, illusion]
type = Explod
trigger1 = time = 130
pos = 90,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 50

[State 3001, illusion]
type = Explod
trigger1 = time = 140
pos = 120,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 40

[State 3001, illusion]
type = Explod
trigger1 = time = 150
pos = 150,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 30

;---------------------------------

[State 3001, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3001]
type = ChangeState
trigger1 = Time = 180
value = 3002
ctrl = 1

[Statedef 3002]
type    = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3003
poweradd = 0

[State 3002, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 3002, Snd]
type = PlaySnd
trigger1 = time = 0
value = 5,1

[State 3002, Snd]
type = PlaySnd
trigger1 = time = 5
value = 13,2
channel = 0

[State 3002, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3002, Helper]
type = Helper
trigger1 = time = 10
ID = 3005
stateno = 3005
sprpriority = -1
pos = 145,50
postype = p1
keyctrl = 0          
ownpal = 1

[State 3002, Helper]
type = Helper
trigger1 = time = 5
ID = 3005
stateno = 3005
sprpriority = -1
pos = 80,-40
postype = p1
keyctrl = 0          
ownpal = 1

[State 3002, Helper]
type = Helper
trigger1 = time = 5
ID = 3005
stateno = 3005
sprpriority = -1
pos = -50,-100
postype = p1
keyctrl = 0          
ownpal = 1

[State 3002, Helper]
type = Helper
trigger1 = time = 10
ID = 3006
stateno = 3005
sprpriority = -1
pos = -80,50
postype = p1
keyctrl = 0          
ownpal = 1

[State 3002, Helper]
type = Helper
trigger1 = time = 5
ID = 3005
stateno = 3005
sprpriority = -1
pos = -145,-40
postype = p1
keyctrl = 0          
ownpal = 1

[State 3002, flash]
type = EnvColor
triggerall = var(22) = 0
trigger1 = time = 0
value = 255,255,0
under = 0
time = 5

[State 3002, flash]
type = EnvColor
triggerall = var(22) = 1
trigger1 = time = 0
value = 230,90,230
under = 0
time = 5

[State 3002, Darken]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 374
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3002, flash]
type = EnvColor
triggerall = var(22) = 0
trigger1 = AnimElem = 8
value = 255,255,0
under = 0
time = 1

[State 3002, flash]
type = EnvColor
triggerall = var(22) = 1
trigger1 = AnimElem = 8
value = 230,90,230
under = 0
time = 1

[State 3002, fx]
type = Explod
trigger1 = AnimElem = 8
pos = 40,-80
anim = 7007+var(22)
sprpriority = 5
removeongethit = 1
supermove = 1

[State 3002, Snd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 5,40

[State 3002, Fireball]
type = Projectile
trigger1 = AnimElem = 8
projanim = 8011+var(22)
projhits = 1
projhitanim = 8012+var(22)
offset = 20,-60
sparkno = -1
Hitflag = MAF
sparkxy = 15,10
velocity = 11,5
attr = S, HP
damage    = 10,2
getpower = 0
givepower = 0
animtype = Heavy
guardflag = MA
pausetime = 0,9
hitsound   = S5,0
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = Back
air.juggle = 0
envshake.time =  15 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(8001) = 1
trigger1 = Time = 374
ID = 8001

[State 3002, removeEX]
type = RemoveExplod
triggerall = NumExplod(8002) = 1
trigger1 = Time = 374
ID = 8002

[State 3002]
type = ChangeState
trigger1 = Time = 374
value = 50
ctrl = 1

; Million Ghost Attack - Helper
[Statedef 3005]
type    = A
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3004
poweradd = 5
sprpriority = -1

[State 3005, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 3005, fx]
type = Explod
trigger1 = AnimElem = 8
pos = 40,-80
anim = 7007+var(22)
sprpriority = 5
removeongethit = 1
supermove = 1

[State 3005, Fireball]
type = Projectile
trigger1 = AnimElem = 8
projanim = 8011+parent,var(22)
projhits = 1
projhitanim = 8012+parent,var(22)
offset = 20,-60
sparkno = -1
sparkxy = 15,10
velocity = 11,5
Hitflag = MAF
attr = S, HP
damage    = 5,1
getpower = 0
givepower = 0
animtype = Heavy
guardflag = MA
pausetime = 0,9
hitsound   = S5,0
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2,0
air.velocity = -2,0
air.animtype = Back
air.juggle = 0
envshake.time =  15 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5
fall = ifelse((IsHelper(3006) && (Time > 365)),1,0)

[State 3005]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP, SP, HP, NP, NA
slot = 0
stateno = 3006

[State 3005, byebye]
type = DestroySelf
trigger1 = Time = 374

[Statedef 3006]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 3005
poweradd = 0
sprpriority = -1

[State 3006, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 4,0

[State 3006, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3006, byebye]
type = DestroySelf
trigger1 = animTime = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Million Ghost Attack (Manga) by Tux
[Statedef 3110]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 3000
poweradd = -1000

[State 3110]
type = PlaySnd
trigger1 = Time = 0
value = 2,1

[State 3110, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3110, Darken]
type = BGPalfx
trigger1 = AnimElem = 3
ignorehitpause = 1
time = 50
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3110, Velset]
type = VelSet
trigger1 = time  > 1
trigger1 = time  < 20
x = 1
y = -3

[State 3110]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101
ctrl = 1

[Statedef 3100]
type    = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3001
poweradd = -1000

[State 3100]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 3100, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3100, Darken]
type = BGPalfx
trigger1 = AnimElem = 3
ignorehitpause = 1
time = 50
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3100, Velset]
type = VelSet
trigger1 = time  > 1
trigger1 = time  < 20
x = 2.5
y = -6

[State 3100]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101
ctrl = 1

[Statedef 3101]
type    = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3002
poweradd = 0

[State 3101, Voce]
type = PlaySnd
trigger1 = time = 0
value = 13,0
channel = 0

[State 3101, noMusic] 
type = AssertSpecial
trigger1 = 1
flag = noBG

[State 3101, Velset]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3101, Darken]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 200
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3101, camera]
type = Helper
trigger1 = time = 0
postype = Left
pos = 0, -150
stateno = 8051
keyctrl = 0
ownpal = 1

[State 3101, spause]
type = SuperPause
trigger1 = AnimElem = 1
time = 180
movetime = 180
anim = -1
darken = 0
sound = s5,6

[State 3101, spause]
type = Explod
trigger1 = AnimElem = 7
pos = 0,-90
anim = 7008+var(22)
sprpriority = -2
removeongethit = 1
supermove = 1

[State 3101]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,1

[State 3101, background]
type = Explod
trigger1 = AnimElem = 1
pos = -320,0
anim = 8001+var(22)
ID = 8001
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3101, background]
type = Explod
trigger1 = AnimElem = 1
pos = -320,0
anim = 8002+var(22)
ID = 8002
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 3101, flash]
type = EnvColor
triggerall = var(22) = 0
trigger1 = time = 85
value = 255,255,0
under = 0
time = 20

[State 3101, flash]
type = EnvColor
triggerall = var(22) = 1
trigger1 = time = 85
value = 230,90,230
under = 0
time = 20

[State 3101, Snd]
type = PlaySnd
trigger1 = time = 110
value = 5,30

[State 3101, illusion]
type = Explod
trigger1 = time = 150
pos = -150,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 30

[State 3101, illusion]
type = Explod
trigger1 = time = 140
pos = -120,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 40

[State 3101, illusion]
type = Explod
trigger1 = time = 130
pos = -90,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 50

[State 3101, illusion]
type = Explod
trigger1 = time = 120
pos = -60,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 60

[State 3101, illusion]
type = Explod
trigger1 = time = 110
pos = -30,0
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 70

[State 3101, illusion]
type = Explod
trigger1 = time = 100
pos = 0,0
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 80

[State 3101, illusion]
type = Explod
trigger1 = time = 110
pos = 30,0
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 70

[State 3101, illusion]
type = Explod
trigger1 = time = 120
pos = 60,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 60

[State 3101, illusion]
type = Explod
trigger1 = time = 130
pos = 90,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 50

[State 3101, illusion]
type = Explod
trigger1 = time = 140
pos = 120,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 40

[State 3101, illusion]
type = Explod
trigger1 = time = 150
pos = 150,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 30

[State 3101, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3101]
type = ChangeState
trigger1 = Time = 180
value = 3102
ctrl = 1

[Statedef 3102]
type    = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3006
poweradd = 0
sprpriority = -4

[State 3102, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 3102, Snd]
type = PlaySnd
trigger1 = time = 0
value = 5,1

[State 3102, Snd]
type = PlaySnd
trigger1 = time = 5
value = 12,4

[State 3102, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3102, flash]
type = EnvColor
triggerall = var(22) = 0
trigger1 = time = 0
value = 255,255,0
under = 0
time = 5

[State 3102, flash]
type = EnvColor
triggerall = var(22) = 1
trigger1 = time = 0
value = 230,90,230
under = 0
time = 5

[State 3102, Darken]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 37
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3102, Illusion]
type = Explod
trigger1 = time = 5
pos = 0,0
postype = p2
anim = 4600
ID = 4600
sprpriority = -3
removeongethit = 1
supermove = 1
removetime = 24

[State 3102, Illusion]
type = Explod
trigger1 = time = 5
pos = 0,0
postype = p2
anim = 4601
ID = 4601
sprpriority = -2
removeongethit = 1
supermove = 1
removetime = 24

[State 3102, Illusion]
type = Explod
trigger1 = time = 5
pos = 0,0
postype = p2
anim = 4602
ID = 4602
sprpriority = -1
removeongethit = 1
supermove = 1
removetime = 24

[State 3102, Illusion]
type = Explod
trigger1 = time = 5
pos = 0,0
postype = p2
anim = 4603
ID = 4603
sprpriority = 0
removeongethit = 1
supermove = 1
removetime = 24

[State 3102, Illusion]
type = Explod
trigger1 = time = 5
pos = 0,0
postype = p2
anim = 4604
ID = 4604
sprpriority = 1
removeongethit = 1
supermove = 1
removetime = 24

[State 3102, Illusion]
type = Explod
trigger1 = time = 5
pos = 0,0
postype = p2
anim = 4605
ID = 4605
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 24

[State 3102, Illusion]
type = Explod
trigger1 = time = 5
pos = 0,0
postype = p2
anim = 4606
ID = 4606
sprpriority = 3
removeongethit = 1
supermove = 1
removetime = 24

[State 3102, Illusion]
type = Explod
trigger1 = time = 5
pos = 0,0
postype = p2
anim = 4607
ID = 4607
sprpriority = 4
removeongethit = 1
supermove = 1
removetime = 24

[State 3102, Hit]
type = HitDef
trigger1 = AnimElem = 2
attr = A, HA
damage = 150,20
getpower = 0
givepower = 0
guardflag = MA
priority = 4
pausetime = 12,12
sparkno = -1
hitsound = S1,4
guardsound = S6,0
animtype = Hard
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = 0
air.velocity = -3,-4
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5
fall = 1
fall.damage = 50

[State 3102, Spark]
type = Explod
triggerall = MoveContact = 1
trigger1 = AnimElem = 3
scale = 2,2
pos = 0,-60
postype = p2
anim = 7002+var(22)
ID = 7002
sprpriority = 5
removeongethit = 1
supermove = 1
removetime = 15

[State 3102, Flash]
type = EnvColor
triggerall = var(22) = 0
trigger1 = AnimElem = 2
value = 50,50,255
under = 0
time = 5

[State 3102, Flash]
type = EnvColor
triggerall = var(22) = 1
trigger1 = AnimElem = 2
value = 230,90,230
under = 0
time = 5

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(8001) = 1
trigger1 = Time = 29
ID = 8001

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(8002) = 1
trigger1 = Time = 29
ID = 8002

[State 3102]
type = ChangeState
trigger1 = Time = 29
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Million Ghost Attack (Clones) by Tux
[Statedef 3210]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
anim = 3000
poweradd = -3000

[State 3210]
type = PlaySnd
trigger1 = Time = 0
value = 2,1

[State 3210, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3210, Darken]
type = BGPalfx
trigger1 = AnimElem = 3
ignorehitpause = 1
time = 50
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3210, Velset]
type = VelSet
trigger1 = time  > 1
trigger1 = time  < 20
x = 1
y = -3

[State 3210]
type = ChangeState
trigger1 = AnimTime = 0
value = 3201
ctrl = 1

[Statedef 3200]
type    = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3001
poweradd = -3000

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 3200, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3200, Darken]
type = BGPalfx
trigger1 = AnimElem = 3
ignorehitpause = 1
time = 50
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3000, Velset]
type = VelSet
trigger1 = time  > 1
trigger1 = time  < 20
x = 2.5
y = -6

[State 3000]
type = ChangeState
trigger1 = AnimTime = 0
value = 3201
ctrl = 1

[Statedef 3201]
type    = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3002
poweradd = 0

[State 3201, Voce]
type = PlaySnd
trigger1 = time = 30
value = 13,0
channel = 0

[State 3201, noMusic] 
type = AssertSpecial
trigger1 = 1
flag = noBG

[State 3201, Velset]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3201, Darken]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 200
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3201, camera]
type = Helper
trigger1 = time = 0
postype = Left
pos = 0, -150
stateno = 8050
keyctrl = 0
ownpal = 1

[State 3201, spause]
type = SuperPause
trigger1 = AnimElem = 1
time = 180
movetime = 180
anim = -1
darken = 0
sound = s5,6

[State 3201, spause]
type = Explod
trigger1 = AnimElem = 7
pos = 0,-90
anim = 7008+var(22)
sprpriority = -2
removeongethit = 1
supermove = 1

[State 3201, Snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,1

[State 3201, background]
type = Explod
trigger1 = AnimElem = 1
pos = -320,0
anim = 8001+var(22)
ID = 8001
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 180

[State 3201, background]
type = Explod
trigger1 = AnimElem = 1
pos = -320,0
anim = 8002+var(22)
ID = 8002
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 180

[State 3201, flash]
type = EnvColor
triggerall = var(22) = 0
trigger1 = time = 85
value = 255,255,0
under = 0
time = 20

[State 3201, flash]
type = EnvColor
triggerall = var(22) = 1
trigger1 = time = 85
value = 230,90,230
under = 0
time = 20

[State 3201, Snd]
type = PlaySnd
trigger1 = time = 110
value = 5,30

[State 3201, illusion]
type = Explod
trigger1 = time = 150
pos = -150,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 30

[State 3201, illusion]
type = Explod
trigger1 = time = 140
pos = -120,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 40

[State 3201, illusion]
type = Explod
trigger1 = time = 130
pos = -90,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 50

[State 3201, illusion]
type = Explod
trigger1 = time = 120
pos = -60,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 60

[State 3201, illusion]
type = Explod
trigger1 = time = 110
pos = -30,0
anim = 3010
ID = 3010
sprpriority = 2
supermove = 1
removeongethit = 1
removetime = 70

[State 3201, illusion]
type = Explod
trigger1 = time = 100
pos = 0,0
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 80

[State 3201, illusion]
type = Explod
trigger1 = time = 110
pos = 30,0
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 70

[State 3201, illusion]
type = Explod
trigger1 = time = 120
pos = 60,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 60

[State 3201, illusion]
type = Explod
trigger1 = time = 130
pos = 90,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 50

[State 3201, illusion]
type = Explod
trigger1 = time = 140
pos = 120,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 40

[State 3201, illusion]
type = Explod
trigger1 = time = 150
pos = 150,2
anim = 3010
ID = 3010
sprpriority = 2
removeongethit = 1
supermove = 1
removetime = 30

[State 3201, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3201, End]
type = ChangeState
trigger1 = Time = 180
value = 3202
ctrl = 1

[Statedef 3202]
type    = S
movetype= I
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3202
poweradd = 0

[State 3202, Pos]
type = PosSet
trigger1 = Time >= 0
x = 0
y = -50

[State 3202, Vel]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0

[State 3202, Assert]
type = AssertSpecial
trigger1 = Time >= 0
flag = invisible

[State 3202, Push]
type = PlayerPush
trigger1 = Time = 0
trigger2 = (Time > 0) && ((NumHelper(3220) > 0) || (NumHelper(3221) > 0) || (NumHelper(3222) > 0) || (NumHelper(3223) > 0) || (NumHelper(3224) > 0) || (NumHelper(3225) > 0))
value = 0

[State 3202, Push]
type = PlayerPush
trigger1 = (Time > 0) && ((NumHelper(3220) = 0) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0))
value = 1

[State 3202, NoHit]
type = NotHitBy
trigger1 = Time = 0
trigger2 = (Time > 0) && ((NumHelper(3220) > 0) || (NumHelper(3221) > 0) || (NumHelper(3222) > 0) || (NumHelper(3223) > 0) || (NumHelper(3224) > 0) || (NumHelper(3225) > 0))
value = SCA

[State 3052, Var]
type = VarSet
trigger1 = (Time > 0) && ((NumHelper(3220) > 0) || (NumHelper(3221) > 0) || (NumHelper(3222) > 0) || (NumHelper(3223) > 0) || (NumHelper(3224) > 0) || (NumHelper(3225) > 0))
v = 40
value = 1

[State 3202, flash]
type = EnvColor
triggerall = var(22) = 0
trigger1 = Time = 0
value = 50,200,255
under = 0
time = 5

[State 3202, flash]
type = EnvColor
triggerall = var(22) = 1
trigger1 = Time = 0
value = 230,90,230
under = 0
time = 5

[State 3202, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 1,5

[State 3050, Helper]
type = Helper
trigger1 = Time = 0
ID = 3220
stateno = 3220
sprpriority = 5
pos = -50,-100
postype = p2
supermovetime = 1000
keyctrl = 1        
ownpal = 1

[State 3050, Helper]
type = Helper
trigger1 = Time = 0
ID = 3221
stateno = 3221
sprpriority = 5
pos = 50,-100
postype = p2
supermovetime = 1000
keyctrl = 1      
ownpal = 1

[State 3050, Helper]
type = Helper
trigger1 = Time = 0
ID = 3222
stateno = 3220
sprpriority = 5
pos = -100,-100
postype = p2
supermovetime = 1000
keyctrl = 1       
ownpal = 1

[State 3050, Helper]
type = Helper
trigger1 = Time = 0
ID = 3223
stateno = 3221
sprpriority = 5
pos = 100,-100
postype = p2
supermovetime = 1000
keyctrl = 1       
ownpal = 1

[State 3050, Helper]
type = Helper
trigger1 = Time = 0
ID = 3224
stateno = 3220
sprpriority = 5
pos = -150,-100
postype = p2
supermovetime = 1000
keyctrl = 1         
ownpal = 1

[State 3050, Helper]
type = Helper
trigger1 = Time = 0
ID = 3225
stateno = 3221
sprpriority = 5
pos = 150,-100
postype = p2
supermovetime = 1000
keyctrl = 1        
ownpal = 1

[State 3052, Var]
type = VarSet
triggerall = 1
trigger1 = P2Life <= 0
trigger2 = LoseTime = 1
trigger3 = WinTime = 1
v = 40
value = 0

[State 3202, End]
type = ChangeState
triggerall = 1
trigger1 = P2Life <= 0
trigger2 = LoseTime = 1
trigger3 = WinTime = 1
value = 0
ctrl = 1

[State 3052, Var]
type = VarSet
triggerall = P2Life > 0
triggerall = P2StateType = S
triggerall = P2MoveType != H
trigger1 = (Time > 0) && ((NumHelper(3220) = 0) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0))
v = 40
value = 0

[State 3202, End]
type = ChangeState
triggerall = P2Life > 0
triggerall = P2StateType = S
triggerall = P2MoveType != H
trigger1 = (Time > 0) && ((NumHelper(3220) = 0) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0))
value = 3204

[Statedef 3204]
type    = A
movetype= A
physics = A
juggle = 7
velset = 0,0
ctrl = 0
anim = 3203
poweradd = 0
sprpriority = -5

[State 3204, Pos]
type = PosSet
trigger1 = Time >= 0
x = 0
y = -50

[State 3204, Assert]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 3204, Pause]
type = SuperPause
trigger1 = Time = 0
time = 120
anim = -1
sound = S13,4
darken = 1

[State 3204, End]
type = ChangeState
trigger1 = Time = 1
value = 3205

[Statedef 3205]
type    = A
movetype= A
physics = A
juggle = 7
velset = 0,0
ctrl = 0
anim = 3203
poweradd = 0
sprpriority = -5

[State 3204, Pos]
type = PosSet
trigger1 = Time < 14
x = 0
y = -50

[State 3205, Assert]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 3205, Proj]
type = Projectile
triggerall = P2Dist X >= 0
trigger1 = Time = 0
projanim = 3203
projhits = 1
projsprpriority = -5
postype = p2
offset = -150,-150
sparkno = S7002+var(22)
sparkxy = 30,-30
velocity = 6,5.5
attr = S, HP
damage = 300,90
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
pausetime = 0,5
hitsound = S1,4
ground.type = High
ground.slidetime = 15
ground.hittime = 5
ground.velocity = -8,0
air.velocity = -8,2
air.animtype = Back
afterimage.time = 15
afterimage.length = 20
afterimage.palcontrast = 98,98,98
afterimage.paladd = 0,0,0
afterimage.trans = Add
envshake.time =  25
envshake.freq = 10    
envshake.ampl = 5  
envshake.phase = 5
fall = 1
fall.damage = 0

[State 3205, Proj]
type = Projectile
triggerall = P2Dist X < 0
trigger1 = Time = 0
projanim = 3203
projhits = 1
projsprpriority = -5
postype = p2
offset = 150,-150
sparkno = S7002+var(22)
sparkxy = 30,-30
velocity = -6,5.5
attr = S, HP
damage = 300,90
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
pausetime = 0,5
hitsound = S1,4
ground.type = High
ground.slidetime = 15
ground.hittime = 5
ground.velocity = -8,0
air.velocity = -8,2
air.animtype = Back
afterimage.time = 15
afterimage.length = 20
afterimage.palcontrast = 98,98,98
afterimage.paladd = 0,0,0
afterimage.trans = Add
envshake.time =  25
envshake.freq = 10    
envshake.ampl = 5  
envshake.phase = 5
fall = 1
fall.damage = 0

[State 3205, flash]
type = EnvColor
triggerall = var(22) = 0
trigger1 = Time = 14
value = 50,200,255
under = 0
time = 10

[State 3205, flash]
type = EnvColor
triggerall = var(22) = 1
trigger1 = Time = 14
value = 230,90,230
under = 0
time = 10

[State 3205, Pos]
type = PosSet
trigger1 = Time = 14
y = 0

[State 3205, End]
type = ChangeState
trigger1 = Time = 15
value = 0
ctrl = 1

;---------------------------------------------------------------------------

; Clone Intro Left
[Statedef 3220]
type = S
movetype = I
physics = S
velset = 0,6
ctrl = 0
anim = 3220
poweradd = 0
sprpriority = 5

[State 3220, afterimage]
type = AfterImage
trigger1 = Time = 0
time = 9999
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add

[State 3220, End]
type = ChangeState
trigger1 = Pos Y >= 0
value = 3222

; Clone Intro Right
[Statedef 3221]
type = S
movetype = I
physics = S
velset = 0,6
ctrl = 0
anim = 3221
poweradd = 0
sprpriority = 5

[State 3221, afterimage]
type = AfterImage
trigger1 = Time = 0
time = 9999
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add

[State 3221, Lose]
type = ChangeState
trigger1 = root, LoseTime
trigger2 = root, WinTime
value = 3238

[State 3221, End]
type = ChangeState
trigger1 = Pos Y >= 0
value = 3222

; Clone Land
[Statedef 3222]
type    = S
physics = S
anim = 47
ctrl = 0

[State 3222, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3222, afterimage]
type = AfterImage
trigger1 = Time = 0
time = 9999
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add

[State 3222, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 3222, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3222, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3222, 3]
type = PlaySnd
trigger1 = Time = 0
value = 3,3

[State 3222, Lose]
type = ChangeState
trigger1 = root, LoseTime
trigger2 = root, WinTime
value = 3238

[State 3222, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3223
ctrl = 1

; Clone Stand
[Statedef 3223]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 0
poweradd = 0
sprpriority = 4

[State 3223, afterimage]
type = AfterImage
trigger1 = Time = 0
time = 9999
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = Add

[State 3223, Arrow]
type = Explod
triggerall = NumExplod(8040) = 0
triggerall = Time >= 0
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
anim = 8040
ID = 8040
pos = 0,-120
postype = p1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
removeongethit = 1

[State 3052, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3224

[State 3052]
type = Velset
trigger1 = time = 0
x = 0
Y = 0

[State 3052, PosSet]
type = PosSet
trigger1 = time = 0
Y = 0

[State 3052, Special]
type = ChangeState
triggerall = (command = "a") || (command = "b") || (command = "c")
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
value = 3236
ctrl = 1

[State 3052, Special]
type = ChangeState
triggerall = (command = "x") || (command = "y") || (command = "z")
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
value = 3237
ctrl = 1

[State 3052, Death]
type = ChangeState
trigger1 = root, life <= 0
value = 3224

[State 3052, Win]
type = ChangeState
trigger1 = root, Win
value = 3225

[State 3052, Lose]
type = ChangeState
trigger1 = root, LoseTime
trigger2 = root, WinTime
value = 3238

[State 3052]
type = ChangeState
triggerall = P2Dist X <= 150
triggerall = Facing != enemy,Facing
trigger1 = P2Movetype = A 
value = 3227
ctrl = 1

[State 3052]
type = ChangeState
trigger1 = P2Dist X > 35
value = 3226
ctrl = 1

[State 3052]
type = ChangeState
trigger1 = P2Dist X < 0
value = 3235
ctrl = 1

; Clone Hit/Death
[Statedef 3224]
type = S
movetype = I
physics = S
juggle  = 6
ctrl = 0
anim = 3224
sprpriority = 0

[State 3065, RemExp]
type = RemoveExplod
triggerall = NumExplod(8040) > 0
trigger1 = Time = 0
ID = 8040

[State 3065, NoHit]
type = NotHitBy
trigger1 = Time = 0
time = 100
value = SCA

[State 3065]
type = PlaySnd
trigger1 = AnimElem = 1
value = 10,1

[State 3065]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3,3

[State 3065]
type = VelSet
trigger1 = AnimElem = 1
x = -4

[State 3065]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 3065]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,1

[State 3065, removeEX]
type = DestroySelf
trigger1 = AnimTime = 0

; Clone WinPose
[Statedef 3225]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 3302
sprpriority = 4

[State 3066, RemExp]
type = RemoveExplod
triggerall = NumExplod(8040) > 0
trigger1 = Time = 0
ID = 8040

[State 3066]
type = PlaySnd
trigger1 = time = 0
value = 13,9
channel = 0

[State 3066]
type = Velset
trigger1 = time = 0
x = 0
Y = 0

[State 3066, NoHit]
type = NotHitBy
trigger1 = Time = 0
time = -1
value = SCA

[State 3066, removeEX]
type = DestroySelf
trigger1 = Time = -1

; Clone Walk
[Statedef 3226]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 20
sprpriority = 4

[State 3053, Arrow]
type = Explod
triggerall = NumExplod(8040) = 0
triggerall = Time >= 0
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
anim = 8040
ID = 8040
pos = 0,-120
postype = p1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
removeongethit = 1

[State 3053, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 3053]
type = Velset
trigger1 = time >= 0
x = 2

[State 3053, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3224

[State 3052, Special]
type = ChangeState
triggerall = (command = "a") || (command = "b") || (command = "c")
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
value = 3236
ctrl = 1

[State 3052, Special]
type = ChangeState
triggerall = (command = "x") || (command = "y") || (command = "z")
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
value = 3237
ctrl = 1

[State 3053, Win]
type = ChangeState
trigger1 = root, Win
value = 3225

[State 3053, Death]
type = ChangeState
trigger1 = root, life <= 0
value = 3224

[State 3053, Lose]
type = ChangeState
trigger1 = root, LoseTime
trigger2 = root, WinTime
value = 3238

[State 3053]
type = ChangeState
triggerAll = P2Dist X <= 150
triggerall = Facing != enemy,Facing
trigger1 = P2Movetype = A
value = 3227
ctrl = 1

[State 3053]
type = ChangeState
trigger1 = P2Dist X <= 35
value = 3228
ctrl = 1

[State 3053]
type = ChangeState
trigger1 = P2Dist X < 0
value = 3235
ctrl = 1

; Clone Dodge
[Statedef 3227]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 105
sprpriority = 4

[State 3054, Arrow]
type = Explod
triggerall = NumExplod(8040) = 0
triggerall = Time >= 0
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
anim = 8040
ID = 8040
pos = 0,-120
postype = p1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
removeongethit = 1

[State 3054, Dust]
type = Explod
trigger1 = time = 0
pos = -25,5
anim = 7084
ID = 7084
sprpriority = 5
supermove = 1
removeongethit = 1
scale = .5,.5

[State 3054]
type = Velset
trigger1 = time = 0
x = -9

[State 3054, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3224

[State 3054]
type = ChangeState
trigger1 = time = 23
value = 3223
ctrl = 1

; Clone Attacks
[Statedef 3228]
type = S
velset = 0,0
ctrl = 0

[State 3055]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 3055]
type = ChangeState
trigger1 = Var(2) = [0,15]
value = 3229

[State 3055]
type = ChangeState
trigger1 = Var(2) = [16,33]
value = 3230

[State 3055]
type = ChangeState
trigger1 = Var(2) = [34,49]
value = 3231

[State 3055]
type = ChangeState
trigger1 = Var(2) = [50,66]
value = 3232

[State 3055]
type = ChangeState
trigger1 = Var(2) = [67,83]
value = 3233

[State 3055]
type = ChangeState
trigger1 = Var(2) = [84,99]
value = 3234

; Clone Punch N° 1
[Statedef 3229]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 200
poweradd = 25
sprpriority = 4

[State 3056, Arrow]
type = Explod
triggerall = NumExplod(8040) = 0
triggerall = Time >= 0
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
anim = 8040
ID = 8040
pos = 0,-120
postype = p1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
removeongethit = 1

[State 3056]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 1
value = 12,0

[State 3056]
type = PlaySnd
trigger1 = time = 2
value = 0,0

[State 3056]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype = Light 
damage    = 20,2
getpower  = 0
givepower = 0
hitflag = MAF  
guardflag = MA
priority = 3
pausetime = 7,9
sparkno = s7001+parent,var(22)                 
sparkxy = -10, -95 
hitsound   = S1,0
guardsound = S6,0 
ground.type = High               
ground.slidetime = 5             
ground.hittime  = 12             
ground.velocity = -3   
air.velocity = -3,-2
airguard.velocity = -1.9,-.8     
air.type = High                  
air.hittime = 12                 

[State 3056, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3224

[State 3056]
type = ChangeState
trigger1 = animTime = 0
value = 3227
ctrl = 1

; Clone Kick N° 1
[Statedef 3230]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 235
poweradd = 25
sprpriority = 4

[State 3057, Arrow]
type = Explod
triggerall = NumExplod(8040) = 0
triggerall = Time >= 0
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
anim = 8040
ID = 8040
pos = 0,-120
postype = p1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
removeongethit = 1

[State 3057]
type = PlaySnd
trigger1 = time = 2
value = 0,0

[State 3057]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 1
value = 12,0

[State 3057]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype  = Medium
damage    = 20,2
getpower  = 0
givepower = 0
hitflag = MAF   
guardflag = MA
priority = 3
pausetime = 6,8
sparkno = s7001+parent,var(22)
sparkxy = -20,-65
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,0

[State 3057, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3224

[State 3057]
type = ChangeState
trigger1 = animTime = 0
value = 3227
ctrl = 1

; Clone Punch N° 2
[Statedef 3231]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 205
poweradd = 25
sprpriority = 4

[State 3058, Arrow]
type = Explod
triggerall = NumExplod(8040) = 0
triggerall = Time >= 0
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
anim = 8040
ID = 8040
pos = 0,-120
postype = p1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
removeongethit = 1

[State 3058]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 1
value = 12,0

[State 3058]
type = PlaySnd
trigger1 = time = 2
value = 0,0

[State 3058]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype = Medium
damage    = 25,2
getpower  = 0
givepower = 0
hitflag = MAF   
guardflag = MA
priority = 3
pausetime = 7,9
sparkno = s7001+parent,var(22)
sparkxy = -10, -95 
hitsound   = s1,1
guardsound = s6,0
ground.type = High               
ground.slidetime = 5             
ground.hittime  = 12             
ground.velocity = -3    
air.velocity = -3,-2
airguard.velocity = -1.9,-.8     
air.type = High                  
air.hittime = 12               

[State 3058, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3224

[State 3058]
type = ChangeState
trigger1 = animTime = 0
value = 3227
ctrl = 1

; Clone Kick N° 2
[Statedef 3232]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 230
poweradd = 25
sprpriority = 4

[State 3059, Arrow]
type = Explod
triggerall = NumExplod(8040) = 0
triggerall = Time >= 0
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
anim = 8040
ID = 8040
pos = 0,-120
postype = p1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
removeongethit = 1

[State 3059]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 1
value = 12,0

[State 3059]
type = PlaySnd
trigger1 = time = 2
value = 0,0

[State 3059]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype  = light
damage    = 25,2
getpower  = 0
givepower = 0
hitflag = MAF
guardflag = MA
priority = 3
pausetime = 6,8
sparkno = s7001+parent,var(22)
sparkxy = -15,-30
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,0

[State 3059, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3224

[State 3059]
type = ChangeState
trigger1 = animTime = 0
value = 3227
ctrl = 1

; Clone Punch N° 3
[Statedef 3233]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 210
poweradd = 25
sprpriority = 4

[State 3058, Arrow]
type = Explod
triggerall = NumExplod(8040) = 0
triggerall = Time >= 0
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
anim = 8040
ID = 8040
pos = 0,-120
postype = p1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
removeongethit = 1

[State 3058]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 1
value = 12,4

[State 3058]
type = PlaySnd
trigger1 = time = 2
value = 0,1

[State 3058]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
animtype  = hard
damage    = 30,3
getpower  = 0
givepower = 0
hitflag = MAF
guardflag = MA
priority = 3
pausetime = 7,9
sparkno = s7002+parent,var(22)
sparkxy = -10,-95
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2

[State 3058, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3224

[State 3058]
type = ChangeState
trigger1 = animTime = 0
value = 3227
ctrl = 1

; Clone Kick N° 3
[Statedef 3234]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 240
poweradd = 25
sprpriority = 4

[State 3059, Arrow]
type = Explod
triggerall = NumExplod(8040) = 0
triggerall = Time >= 0
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
anim = 8040
ID = 8040
pos = 0,-120
postype = p1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
removeongethit = 1

[State 3059]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 1
value = 12,4

[State 3059]
type = PlaySnd
trigger1 = time = 2
value = 0,1

[State 3059]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype  = Medium
damage    = 30,3
getpower  = 0
givepower = 0
hitflag = MAF
guardflag = MA
priority = 3
pausetime = 6,8
sparkno = s7002+parent,var(22)
sparkxy = -10,-95
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -4
air.velocity = -4,-2

[State 3059, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3224

[State 3059]
type = ChangeState
trigger1 = animTime = 0
value = 3227
ctrl = 1

; Clone Turn
[Statedef 3235]
type = S
movetype = I
physics = S
juggle = 6
ctrl = 0
anim = 5
sprpriority = 0

[State 3225, Arrow]
type = Explod
triggerall = NumExplod(8040) = 0
triggerall = Time >= 0
trigger1 = IsHelper(3225)
trigger2 = IsHelper(3224) && (NumHelper(3225) = 0)
trigger3 = IsHelper(3223) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger4 = IsHelper(3222) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger5 = IsHelper(3221) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
trigger6 = IsHelper(3220) && (NumHelper(3221) = 0) && (NumHelper(3222) = 0) && (NumHelper(3223) = 0) && (NumHelper(3224) = 0) && (NumHelper(3225) = 0)
anim = 8040
ID = 8040
pos = 0,-120
postype = p1
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
removeongethit = 1

[State 3235, Turn]
type = Turn
trigger1 = Time = 0

[State 3235, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3223
ctrl = 1

; Clone Fireball
[Statedef 3236]
type = S
movetype = I
physics = S
juggle  = 6
ctrl = 0
anim = 3236
poweradd = -100
sprpriority = 4

[State 3236, RemExp]
type = RemoveExplod
triggerall = NumExplod(8040) > 0
trigger1 = Time = 0
ID = 8040

[State 3236, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 3236, Vel]
type = VelAdd
trigger1 = Time = 0
y = -10
x = .5

[State 3236, Vel]
type = VelSet
trigger1 = Time = 8
y = 0
x = 0

[State 3236, Snd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 5,40

[State 3236, Proj]
type = Projectile
trigger1 = AnimElem = 8
projanim = 8010+parent,var(22)
projhits = 1
projhitanim = 8012+parent,var(22)
projscale = .5,.5
projsprpriority = 5
offset = 20,-80
sparkno = -1
sparkxy = 15,10
velocity = 11,8
attr = S, HP
damage = 50,5
getpower = 0
givepower = 0
animtype = Hard
pausetime = 0,9
hitsound   = S5,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = Back
air.juggle = 3

[State 3236, Snd]
type = PlaySnd
trigger1 = AnimElem = 14
value = 5,1

[State 3236, End]
type = DestroySelf
trigger1 = AnimTime = 0

; Clone Flying Kick
[Statedef 3237]
type = S
movetype = I
physics = S
juggle  = 6
ctrl = 0
anim = 3237
poweradd = -100
sprpriority = 5

[State 3237, RemExp]
type = RemoveExplod
triggerall = NumExplod(8040) > 0
trigger1 = Time = 0
ID = 8040

[State 3237, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 12,3

[State 3237, Vel]
type = VelAdd
trigger1 = Time = 0
y = -5
x = 5

[State 3237, Vel]
type = VelAdd
trigger1 = Time = 6
y = -3
x = 1

[State 3237, Vel]
type = VelSet
trigger1 = AnimElem = 5
y = 3
x = 10

[State 3237, Proj]
type = Projectile
trigger1 = AnimElem = 7
attr = S, HP
projanim = 3238
projhits = 1
projsprpriority = 4
projremovetime = 12
postype = p1
offset = 0,0
velocity = 10,3
damage = 50,5
getpower = 0
givepower = 0
pausetime = 0,9
sparkno = S7002+parent,var(22)
sparkxy = 0,-60
hitsound = S1,4
guardsound = S6,0
animtype = hard
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -4,0
air.velocity = -5,-4
air.juggle = 3
air.animtype = Back
fall = 1
fall.damage = 0

[State 3236, Snd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 5,1

[State 3237, End]
type = DestroySelf
trigger1 = AnimTime = 0

; Clone Lose
[Statedef 3238]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 3225
sprpriority = 0

[State 3238, Pos]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3238, RemExp]
type = RemoveExplod
triggerall = NumExplod(8040) > 0
trigger1 = Time = 0
ID = 8040

[State 3238, NoHit]
type = NotHitBy
trigger1 = Time = 0
time = 100
value = SCA

[State 3238, Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,1

[State 3238, Destr]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hound Bite by Tux
[Statedef 3310]
type = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 3310, Pause]
type = SuperPause
trigger1 = Time = 1
time = 15
movetime = 15
anim = -1
darken = 1

[State 3310, Vel]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 3310, AftImg]
type = AfterImage
trigger1 = AnimElem = 2
time = 35
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State 3310, Snd]
type = PlaySnd
trigger1 = Time = 14
value = 3,3

[State 3310, ChSt]
type = ChangeState
trigger1 = Time = ifelse (P2BodyDist X < 120,15,0)
value = 3300

[Statedef 3300]
type = S
movetype= A
physics = S
juggle = 4
ctrl = 0
anim = 3300
poweradd = -1000
sprpriority = 2

[State 3300, Vel]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3300, Vel]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3300, Pause]
type = SuperPause
trigger1 = AnimElem = 1
time = 80
movetime = 80
anim = s7008+var(22)
pos = -30, -75
darken = 1
sound = S4,1

[State 3300, Snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,3
channel = 0

[State 3300, AftImg]
type = AfterImage
trigger1 = AnimElem = 3
time = 35
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State 3300, Vel]
type = VelSet
trigger1 = time = [68,89]
x = 11

[State 3300, Hound]
type = Explod
trigger1 = AnimElem = 4
postype = p1
pos = 0,0
anim = 8030
ID = 8030
sprpriority = 12
removetime = 20
removeongethit = 1
bindtime = -1
supermove = 1

[State 3300, Snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 5,7

[State 3300, background]
type = Explod
triggerall = var(22) = 0
trigger1 = AnimElem = 3
postype = back
anim = 8003+var(22)
ID = 8003
sprpriority = -5
removetime = 34
removeongethit = 1
bindtime = -1
supermove = 1

[State 3300, End]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = time > 50
trigger2 = p2bodydist X <= 10
value = 3301
ctrl = 1

[Statedef 3301]
type    = A
movetype= A
physics = S
ctrl = 0
anim = 3301

[State 3301, Ghost]
type = Helper
trigger1 = Time = 0
postype = p1
pos = 0,0
stateno = 3304
ID = 3304
name = "Ghost"
sprpriority = -1
facing = 1
supermovetime = 200

[State 3301, TelePort]
type = PosAdd
trigger1 = time = 1
x = p2bodydist X + 10; (enemyNear,Pos X) + 5
y = -150

[State 3301, Pause]
type = SuperPause
trigger1 = AnimElem = 1
time = 13
movetime = 13
anim = -1
darken = 1
sound = S5,30

[State 3301, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 0
y = 7

[State 3301, Hit]
type = HitDef
trigger1 = AnimElem = 5
attr = A, HA
damage = 190,20
getpower = 0
givepower = 0
guardflag = MA
priority = 4
pausetime = 3,12
sparkno = S7071
sparkxy = 25,-20
hitsound = S7,0
guardsound = S6,0
animtype = Hard
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = -3,0
air.velocity = -4,-5
fall = 1
fall.damage = 10

[State 3301, Hound]
type = Helper
trigger1 = AnimElem = 5
postype = p1
pos = 0,0
stateno = 3305
ID = 3305
name = "Hound"
sprpriority = -1
facing = 1
pausemovetime = 1

[State 3301, VelSet]
type = VelSet
trigger1 = animtime = 0
trigger2 = pos X >= 1 && animelem = 5
x = 0
y = 0

[State 3301, VelSet]
type = PosSet
trigger1 = animtime = 0
trigger2 = pos X >= 1 && animelem = 5
y = 0

[State 3301, End]
type = ChangeState
trigger1 = MoveHit
trigger1 = AnimTime = 0
value = 3302
ctrl = 0

[State 3301, End]
type = ChangeState
trigger1 = !MoveHit
trigger1 = AnimTime = 0
value = 3303
ctrl = 0

[Statedef 3302]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 3302

[State 0, Turn]
type = Turn
triggerall = p2bodydist X < 0
trigger1 = Time = 0

[State 3302, RemExp]
type = RemoveExplod
triggerall = NumExplod(3302) = 1
trigger1 = Time = 0
ID = 3302

[State 3302, Flash]
type = EnvColor
triggerall = var(22) = 0
trigger1 = Time = 0
value = 50,200,255
under = 0
time = 10

[State 3302, Flash]
type = EnvColor
triggerall = var(22) = 1
trigger1 = Time = 0
value = 230,90,230
under = 0
time = 10

[State 3302, Snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,9
channel = 0

[State 3302, End]
type = ChangeState
trigger1 = Time = 50
value = 0
ctrl = 1

[Statedef 3303]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 3303

[State 3305, RemExp]
type = RemoveExplod
triggerall = NumExplod(8003) = 1
trigger1 = Time = 0
ID = 8003

; [State 3305, Flash]
; type = EnvColor
; triggerall = var(22) = 0
; trigger1 = Time = 0
; value = 50,200,255
; under = 0
; time = 10

; [State 3305, Flash]
; type = EnvColor
; triggerall = var(22) = 1
; trigger1 = Time = 0
; value = 230,90,230
; under = 0
; time = 10

[State 3303, End]
type = ChangeState
trigger1 = Time = 5
value = 0
ctrl = 1

[Statedef 3304]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 3304

[State 3304, VelSet]
type = VelSet
trigger1 = Time >= 0
x = 15
y = 0

[State 3304, AftImg]
type = AfterImage
trigger1 = AnimElem = 1
time = 60
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State 3304, End]
type = DestroySelf
trigger1 = Time = 60

[Statedef 3305]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 8031+var(22)

[State 3305, Bind]
type = BindToParent
trigger1 = Time = 0
time = 20
pos = 0,0
facing = 1

[State 3305, AftImg]
type = AfterImage
trigger1 = Time = 0
time = 20
FrameGap = 8
length = 10
PalAdd = 230,240,20
Trans = Add1

[State 3305, End]
type = DestroySelf
trigger1 = Time = 20
trigger2 = parent,MoveType = H

;------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------
;----------------------------------
;----------------------------------
; Asterione Helper states
;----------------------------------
;----------------------------------
;---------------------------------
;---------------------------------
; guard Stand
;---------------------------------
;---------------------------------


;---------------------------------
;---------------------------------
; Wood - intro
[Statedef 8020]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 8021
poweradd = 0
sprpriority = 4 

[State 8020, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 4,0

[State 8020, smoke]
type = Explod
trigger1 = time = 0
anim = 8020
ID = 8020
pos = 0,0
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermove = 1
scale = 1,1.2

[State 8020, Velset]
type = VelSet
trigger1 = AnimElem = 4
y = 3

[State 8020, Velset]
type = VelSet
trigger1 = pos y >= 0
y = 0

;-----------------------------
[State 8020, Var]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,2

[State 8020]
type = HitOverride
trigger1 = time = 0
trigger1 = Var(6) = 1
time = -1
attr = SCA, AA, AT, AP, SP, HP, NP, NA
slot = 0
stateno = 8021

[State 8020]
type = HitOverride
trigger1 = time = 0
trigger1 = Var(6) = 2
time = -1
attr = SCA, AA, AT, AP, SP, HP, NP, NA
slot = 0
stateno = 8023
;-----------------------------

[State 8020]
type = ChangeState
trigger1 = time = 500
value = 8024
ctrl = 1

; Wood - attack
[Statedef 8021]
type    = A
movetype= A
physics = N
juggle  = 4
ctrl = 0
anim = 8022
poweradd = 0
sprpriority = 4

[State 8021, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 8021]
type = Velset
trigger1 = time = 0
x = 1
y = -10

[State 8021]
type = Veladd
trigger1 = time >= 40 
y = 1

[State 8021]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 8021]
type = AngleAdd
trigger1 = Time >= 1
value = -12

[State 8021]
type = AngleDraw
trigger1 = Time >= 1 && Pos Y <= 10

[State 8021]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
attr = A, SP                     
damage = 40 
getpower = 0
givepower = 0
animtype = Light                 
guardflag = MA
hitflag = MAFP                    
priority = 99, Hit                
pausetime = 0, 5                 
sparkno = s7001+var(22)
sparkxy = 0,0
hitsound   = S1,3
guardsound = S2,0
ground.type = low 
ground.slidetime = 5             
ground.hittime  = 12               
airguard.velocity = -1.9,-.8     
air.type = High                  
ground.velocity = -2,0 
air.velocity = -2,0           
air.hittime = 12
getpower = 0,0 
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5
Fall = 1

;-----------------------------
[State 8021]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP, SP, HP, NP, NA
slot = 0
stateno = 8023
;-----------------------------

[State 8021, Velset]
type = VelSet
triggerall = time > 5
trigger1 = pos y >= 0
y = 0

[State 8021]
type = ChangeState
triggerall = time > 5
trigger1 = pos y >= 0
value = 8022
ctrl = 1


; Wood - stand
[Statedef 8022]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 8022
poweradd = 0
sprpriority = 4 

[State 8022, Velset]
type = VelSet
trigger1 = pos y >= 0
y = 0

[State 8022, PosAdd]
type = Posset
trigger1 = Time = 0
y = 0

[State 8022, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 3,3

;-----------------------------
[State 8022, Var]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,2

[State 8022]
type = HitOverride
trigger1 = time = 0
trigger1 = Var(6) = 1
time = -1
attr = SCA, AA, AT, AP, SP, HP, NP, NA
slot = 0
stateno = 8021

[State 8022]
type = HitOverride
trigger1 = time = 0
trigger1 = Var(6) = 2
time = -1
attr = SCA, AA, AT, AP, SP, HP, NP, NA
slot = 0
stateno = 8023
;-----------------------------

[State 8022]
type = ChangeState
trigger1 = time = 500
value = 8024
ctrl = 1


; Wood - land
[Statedef 8023]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 8023
poweradd = 0
sprpriority = 4 

[State 8023, Snd]
type = PlaySnd
trigger1 = Time = 4
value = 0,1

[State 8023]
type = Velset
trigger1 = time >= 4
x = -20
y = -3.5

[State 8023]
type = DestroySelf
trigger1 = animtime = 0


; Wood - disappear
[Statedef 8024]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 8024
poweradd = 0
sprpriority = 4 

[State 8024]
type = DestroySelf
trigger1 = animtime = 0

;----------------------------------
; Camera
[Statedef 8050]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 8050

[State 8050]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8050]
type = DestroySelf
trigger1 = Time = 374

;----------------------------------
; Camera (short)
[Statedef 8051]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 8050

[State 8051]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8051]
type = DestroySelf
trigger1 = Time = 15

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

[State -2, ScreenBound]
type = ScreenBound
trigger1 = Stateno = [3300,3305]
value = 1
movecamera = 0,1

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

[State -2, Silver Version]
type = VarSet
triggerall = roundno >= 1
trigger1 = palno != 5 || palno = 11 
var(22) = 0

[State -2, Specter Version]
type = VarSet
triggerall = roundno >= 1
trigger1 = palno = 5 || palno = 11
var(22) = 100

;---------------------------------------------------
; ===================================================
; Combo Standing
; ===================================================
;---------------------------------------------------

; 3 Punches 
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
value = 230

; 3 Punches 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 250
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 210) && (movecontact) 
value = 210

; 3 Punches 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 210) && (movecontact) 
value = 260

; 3 Punches 
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

; 3 Punches 
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
value = 250

; 3 Kicks 
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
value = 260

; 3 Kicks 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 250) 
trigger1 = (movecontact)
value = 260
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 260) && (prevstateno = 250) && (movecontact) 
value = 260

;---------------------------------------------------
; ===================================================
; Combo Crouching
; ===================================================
;---------------------------------------------------

; Crouch Punches
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

; Crouch Punches
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

; Crouch Kicks
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

; Crouch Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 440

; Crouch Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 450

;---------------------------------------------------
; ===================================================
; Combo Air
; ===================================================
;---------------------------------------------------

; Jumping Punches & Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 610

; Jumping Punches & Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 620

; Jumping Punches & Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 610

; Jumping Punches & Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 640

; Jumping Punches & Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 650

; Jumping Punches & Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 650) 
trigger1 = (movecontact)
value = 610

; Jumping Punches & Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 600

; Jumping Punches & Kicks
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

; Jumping Punches & Kicks
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

; Jumping Punches & Kicks
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

; Jumping Punches & Kicks
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

; Jumping Punches & Kicks
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

; Jumping Punches & Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 640

;---------------------------------------------------------------------------
; Illusion Guard
;---------------------------------------------------------------------------

; stand guard
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 151) 
trigger1 = (HitShakeOver) && (random <= 10)
value = 1200

; crounch guard
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 152) 
trigger1 = (HitShakeOver) && (random <= 10)
value = 1202
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 153) 
trigger1 = (HitShakeOver) && (random <= 10)
value = 1202

; jump guard
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 154) 
trigger1 = (HitShakeOver) && (random <= 10)
value = 1204
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 155) 
trigger1 = (HitShakeOver) && (random <= 10)
value = 1204

;---------------------------------------------------------------------------
; Combo Guard
;---------------------------------------------------------------------------

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(10) = 0) && (var(59) != 0) && (stateno = 301) 
trigger1 = (stateno = 301) && (prevstateno = 300)
value = 1010

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 301) 
trigger1 = (stateno = 301) && (prevstateno = 300)
value = 1020

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 301) 
trigger1 = (stateno = 301) && (prevstateno = 300)
value = 1030

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 303) 
trigger1 = (stateno = 303) && (prevstateno = 302)
value = 1040

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 305) 
trigger1 = (stateno = 305) && (prevstateno = 304)
value = 1050

;---------------------------------------------------------------------------
; 2\3 Button Combination
;---------------------------------------------------------------------------

; Cosmo charge
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 109])
trigger1 = (P2bodydist X >= 150) && (power < 3000) && (prevstateno != 5120)
value = 900

; Throw
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (stateno != 100) && (random = [110, 164])
trigger1 = (p2bodydist x < 40) && (prevstateno != 5120) && (p2movetype != H)
value = 800

; Scratching Hold
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && ((random = [165, 219])) 
trigger1 = (P2bodydist X <= 30) && (prevstateno != 5120)
value = 830

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [220,274])
value = 199

;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------

; Illusory Punches 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [275, 329])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120)
value = 1000

; Illusory Punches 2 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [330, 384])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120) 
value = 1010

; Illusory Punches 3
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [385, 439])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120)
value = 1020

; Illusiory Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [440, 494])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120)
value = 1030

; Illusiory Kicks (low)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [495, 549])
trigger1 = (P2bodydist X <= 120) && (prevstateno != 5120)
value = 1040
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = C) && (ctrl) && (random = [550, 604])
trigger1 = (P2bodydist X <= 120) && (prevstateno != 5120)
value = 1040

; Illusiory Kicks (air)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [605, 659])
trigger1 = (P2bodydist X <= 200) && (prevstateno != 5120) 
value = 1050

; Illusory Fireballs
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [660, 714])
trigger1 = (p2bodydist X <= 320) && (prevstateno != 5120)
value = 1100

;---------------------------------------------------------------------------
; Super Moves
;---------------------------------------------------------------------------

; Hound Bite
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 80) && (power >= 1000) && (power < 2000) && (random = [715, 769])
value = 3300

; Million Ghost Attack (Anime)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 320) && (power >= 2000) && (random = [770, 824])
value = 3000
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl)
trigger1 = (p2bodydist X <= 320) && (power >= 2000) && (random = [770, 824])
value = 3010

; Million Ghost Attack (Manga)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 320) && (power >= 1000) && (power < 2000) && (random = [825, 879])
value = 3100
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl)
trigger1 = (p2bodydist X <= 320) && (power >= 1000) && (power < 2000) && (random = [825, 879])
value = 3110

; Million Ghost Attack (Clones)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 320) && (power >= 3000) && (random = [880, 934])
value = 3200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl)
trigger1 = (p2bodydist X <= 320) && (power >= 3000) && (random = [880, 934])
value = 3210

;------------------------------------------
;------------------------------------------
;------------------------------------------
;------------------------------------------

;----------- SND ------------
;---------- Run Fwd & Back -----------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 100
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 105
trigger1 = time = 5
value = 12,2

;---------- Jumps -----------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 40
trigger1 = time = 5
value = 12,3

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 45
trigger1 = time = 1
value = 12,1

;---------- Punches -----------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 200
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 205
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 210
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 220
trigger1 = time = 5
value = 12,3

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1000
trigger1 = time = 5
value = 12,0


;---------- Kicks -----------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 230
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 250
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 255
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 260
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 270
trigger1 = time = 5
value = 12,4

;------ Crouch Punches --------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 400
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 410
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 420
trigger1 = time = 5
value = 12,0

;------ Crouch Kicks --------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 430
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 440
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 450
trigger1 = time = 5
value = 12,1

;------ Jump Punches --------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 600
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 610
trigger1 = time = 5
value = 12,2

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 620
trigger1 = time = 5
value = 12,0

;------ Jump Kicks --------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 630
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 640
trigger1 = time = 5
value = 12,2

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 650
trigger1 = time = 5
value = 12,2

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
value = 10,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 10,2

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10,3

[State -2]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10,0

[State -2]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 10,2

;---------- Specials -----------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1020
trigger1 = time = 5
value = 12,3

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1021
trigger1 = time = 5
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1030
trigger1 = time = 5
value = 12,3

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1040
trigger1 = time = 5
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1041
trigger1 = time = 5
value = 12,3

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1050
trigger1 = time = 1
value = 12,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1051
trigger1 = time = 1
value = 12,3


;---------- illusion -----------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1200
trigger1 = time = 1
value = 13,5

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1202
trigger1 = time = 1
value = 13,5

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 1204
trigger1 = time = 1
value = 13,5

;---------- super -----------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 3000
trigger1 = time = 1
value = 12,3

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 3010
trigger1 = time = 1
value = 12,3

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef -3]

[State -3, AI Activate]
type = VarSet
trigger1 = IsHomeTeam
trigger1 = TeamSIDe = 2
var(59) = 1

;-----------------------------------------------------------
;-----------------------------------------------------------
;-----------------------------------------------------------
;-----------------------------------------------------------

;--------------
; Helper remove
;--------------
[State -3, Helper]
type = destroyself
triggerall = stateno != 1006
triggerall = stateno != 3306
triggerall = stateno != [3005,3006]
triggerall = stateno != [3220,3238]
trigger1 = ishelper

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
triggerall = NumExplod(180) >= 1
trigger1 = numhelper(8150) > 0
ID = 180

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(1912) >= 1
trigger1 = stateno != 191
ID = 1912

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(1920) >= 1
trigger1 = stateno != 192
ID = 1920

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(1930) >= 1
trigger1 = stateno != 193
ID = 1930

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(1970) >= 1
trigger1 = stateno != 197
trigger2 = numhelper(8150) > 0
ID = 1970

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(1980) >= 1
trigger1 = stateno != 198
trigger2 = numhelper(8150) > 0
ID = 1980

;-------------------------------------
;-------------------------------------
;-------------------------------------
;-------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 2
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 5
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 2
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 5
value = F3, 1

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

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = time = 1
value = F2, 1

[State -3, AirJump]
type = AfterImage
triggerall = stateno = 45
triggerall = var(22) = 0
trigger1 = Time = 1
time = 20
PalBright = 10,10,10
PalContrast = 128,200,200
trans = Add1

[State -3, AirJump]
type = AfterImage
triggerall = stateno = 45
triggerall = var(22) = 1
trigger1 = Time = 1
time = 20
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = time = 1
value = 2, 3

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = time = 1
value = F2, 3

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
triggerall = var(22) = 0
trigger1 = AnimElem = 2
time = 35
PalBright = 10,10,10
PalContrast = 128,200,200
trans = Add1

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
triggerall = var(22) = 1
trigger1 = AnimElem = 2
time = 35
PalBright = 10,10,10
PalContrast = 150,90,200
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
trigger1 = Animelem = 2
value = 3, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 2
value = F3, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 5
value = 3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 5
value = F3, 0

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

[State -3, Run Back]
type = AfterImage
triggerall = stateno = 105
triggerall = var(22) = 0
trigger1 = AnimElem = 2
time = 35
PalBright = 10,10,10
PalContrast = 128,200,200
trans = Add1

[State -3, Run Back]
type = AfterImage
triggerall = stateno = 105
triggerall = var(22) = 1
trigger1 = AnimElem = 2
time = 35
PalBright = 10,10,10
PalContrast = 150,90,200
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

[State -3, Run Back Land]
type = PlaySnd
triggerall = stateno = 106
trigger1 = time = 1
value = 2, 3

[State -3, Run Back Land]
type = PlaySnd
triggerall = stateno = 106
trigger1 = time = 1
value = F2, 3

;---------------------------------------
;---------------------------------------

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = 5150
trigger1 = time = 1
trigger2 = time = 15
value = 6, 1

;---------------------------------------
;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9

[State -3, stopcosmosnd]
Type = Stopsnd
Trigger1 = Stateno != 3304
Channel = 8

;-------------------------------------
;-------------------------------------

[State -3, STANDGUARD]
type = ChangeState
triggerall = stateno = 150
triggerAll = command = "wood"
trigger1 = HitShakeOver 
value = 1200

[State -3, STANDGUARD]
type = ChangeState
triggerall = stateno = 151
triggerAll = command = "wood"
trigger1 = HitShakeOver 
value = 1200

[State -3, CROUNCGUARD]
type = ChangeState
triggerall = stateno = 152
triggerAll = command = "wood"
trigger1 = HitShakeOver 
value = 1202

[State -3, CROUNCGUARD]
type = ChangeState
triggerall = stateno = 153
triggerAll = command = "wood"
trigger1 = HitShakeOver 
value = 1202

[State -3, AIRGUARD]
type = ChangeState
triggerall = stateno = 154
triggerAll = command = "wood"
trigger1 = HitShakeOver 
value = 1204

[State -3, AIRGUARD]
type = ChangeState
triggerall = stateno = 155
triggerAll = command = "wood"
trigger1 = HitShakeOver 
value = 1204