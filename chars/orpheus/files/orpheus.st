;----------------------------------------
;----------------------------------------
;Orpheus Common Base state file by TonyADV
;----------------------------------------
;----------------------------------------

; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, Assert]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = roundnotover

[State 170, POLVERE]
type = Explod
trigger1 = AnimElem = 8
pos = 5,8
anim = 8010
sprpriority = 1

[State 170]
type = PlaySnd
trigger1 = Animelem = 5
trigger2 = Animelem = 7
value = 2, 2

[State 170]
type = PlaySnd
trigger1 = Animelem = 10
value = 12, 10

[State 170]
type = PlaySnd
trigger1 = Animelem = 8
value = 6, 3

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
trigger1 = time = 0
trigger1 = matchover = 0
value = 181

[State 180, 2]
type = ChangeState
trigger1 = time = 0
trigger1 = matchover = 1
value = 182

;---------------------------------------------------------------------------
; Win pose 1 
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, Assert]
type = AssertSpecial
trigger1 = Time = [0,360]
flag = roundnotover

[State 181, no music]
type = AssertSpecial
trigger1 = Time = [0,9000]
flag = nomusic
persistent = 1

[State 181, POLVERE]
type = Explod
trigger1 = AnimElem = 6
pos = 4,-100
anim = 7061
sprpriority = 1

[State 181]
type = PlaySnd
trigger1 = Animelem = 2
value = 0, 2

[State 181, 0]
type = PlaySnd
trigger1 = AnimElem = 3
value = 12, 9

[State 181, music]
type = PlaySnd
trigger1 = AnimElem = 3
value = 13, 0

[State 181, Cosmo]
type = Explod
trigger1 = AnimElem = 4
pos = 18,3
anim = 182
sprpriority = -1
removetime = -1
ownpal = 1
bindtime = -1
supermove = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 2
[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 182, Assert]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = roundnotover

[State 182, no music]
type = AssertSpecial
trigger1 = Time = [0,9000]
flag = nomusic
persistent = 1

[State 182, POLVERE]
type = Explod
trigger1 = AnimElem = 6
pos = 4,-100
anim = 7061
sprpriority = 1

[State 182]
type = PlaySnd
trigger1 = Animelem = 2
value = 0, 2

[State 182, 0]
type = PlaySnd
trigger1 = AnimElem = 3
value = 12, 8

[State 182, music]
type = PlaySnd
trigger1 = AnimElem = 3
value = 13, 0

[State 182, Cosmo]
type = Explod
trigger1 = AnimElem = 4
pos = 18,3
anim = 182
sprpriority = -1
removetime = -1
ownpal = 1
bindtime = -1
supermove = 1

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Intro state decider
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 3
range = 0,99

[State 190, 2]
type = ChangeState
trigger1 = p2name = "ikki" || p4name = "ikki"
value = 194

[State 190, 3]
type = ChangeState
trigger1 = var(3) = [0,24]
value = 191

[State 190, 4]
type = ChangeState
trigger1 = var(3) = [25,49]
value = 192

[State 190, 5]
type = ChangeState
trigger1 = var(3) = [50,99]
value = 193

;---------------------------------------------------------------------------
; Intro 1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 0]
type = AssertSpecial
trigger1 = Time = [0,450]
flag = Intro
flag2 = nomusic
persistent = 1

[State 191, 0]
type = ChangeAnim
triggerall = p2name = "shun" || p4name = "shun"
trigger1 = time = 1
value = 1911

[State 191, luce]
type = Explod
trigger1 = AnimElem = 1
trigger2 = AnimElem = 10
trigger3 = AnimElem = 19
trigger4 = AnimElem = 28
trigger5 = AnimElem = 37
trigger6 = AnimElem = 46
pos = -16,-84
anim = 7061
sprpriority = 2
removetime = 24
postype = p1
scale = .4,.4

[State 191, luce]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 13
trigger3 = AnimElem = 22
trigger4 = AnimElem = 31
trigger5 = AnimElem = 40
trigger6 = AnimElem = 49
pos = -14,-84
anim = 7061
sprpriority = 2
removetime = 24
postype = p1
scale = .4,.4

[State 191, luce]
type = Explod
trigger1 = AnimElem = 7
trigger2 = AnimElem = 16
trigger3 = AnimElem = 25
trigger4 = AnimElem = 34
trigger5 = AnimElem = 43
trigger6 = AnimElem = 52
pos = -12,-84
anim = 7061
sprpriority = 2
removetime = 24
postype = p1
scale = .4,.4

[State 191, 0]
type = PlaySnd
triggerall = p2name = "shun"
trigger1 = AnimElem = 2
value = 12, 1
channel = 0

[State 191, music]
type = PlaySnd
triggerall = p2name = "shun"
trigger1 = AnimElem = 2
value = 13, 0

[State 191, 0]
type = PlaySnd
triggerall = p2name != "shun"
trigger1 = AnimElem = 2
value = 12, 2
channel = 0

[State 191, ruderi]
type = Explod
triggerall = NumExplod(8080) = 0
trigger1 = Time = 0
pos = 0,0
anim = 8080
ID = 8080
sprpriority = -1
removetime = -1
ownpal = 1
bindtime = -1
supermove = 1

[State 191, 0]
type = PlaySnd
trigger1 = AnimElem = 53
value = 3, 0

[State 191, 0]
type = PlaySnd
trigger1 = AnimElem = 54
value = 5, 4

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
time = 1

;---------------------------------------------------------------------------
; Intro 2
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, no music]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = nomusic
persistent = 1

[State 192, 0]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = Intro

[State 192, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = -4,-91
anim = 7061
sprpriority = 2
removetime = 80

[State 192, Cosmo]
type = Explod
triggerall = NumExplod(1920) = 0
trigger1 = AnimElem = 2
pos = -7,7
anim = 1920
ID = 1920
sprpriority = -1
removetime = 120
ownpal = 1
bindtime = -1
supermove = 1

[State 192, removeEX]
type = RemoveExplod
triggerall = NumExplod(1920) >= 1
trigger1 = AnimElem = 17
ID = 1920

[State 192, lira]
type = Explod
trigger1 = AnimElem = 2
pos = -20,-25
anim = 6000
sprpriority = -2

[State 192, lira]
type = Explod
trigger1 = AnimElem = 3
pos = -20,-20
anim = 6001
sprpriority = -2

[State 192, 0]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12, 0
channel = 0

[State 192, 1] ;Intro not yet over
type = VarSet
trigger1 = Time = 0
v = 9
value = 1

[State 192, 3] ;Intro over, set v9 to 0
type = VarSet
trigger1 = Time = 65
v = 9
value = 0

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

[State 192, 4]
type = null;ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------------------------------------------
;----------------------------------------------------------
; Intro 3
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193]
type = AssertSpecial
trigger1 = Time = [0,410]
flag = Intro

[State 193, bara2]
type = Explod
trigger1 = AnimElem = 9
anim = 1930
ID = 1930
pos = 0,0
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
supermove = 1

[State 193, box light 1]
type = Explod
trigger1 = AnimElem = 2
anim = 7040
ID = 7040
pos = 0,0
postype = p1
sprpriority = 7
ignorehitpause = 1
ownpal = 1
supermove = 1

[State 193, box light 2]
type = Explod
trigger1 = AnimElem = 5
anim = 7050
ID = 7050
pos = 0,0
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
supermove = 1

[State 193, cosmo]
type = Explod
trigger1 = AnimElem = 19
anim = 1931
ID = 1931
pos = -7,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
supermove = 1
removetime = -1

[State 193, removeEX]
type = RemoveExplod
triggerall = NumExplod(1931) >= 1
trigger1 = AnimElem = 21
ID = 1931

[State 193, cloth1]
type = Explod
trigger1 = time = 1
anim = 195
ID = 195
pos = 50,-35
postype = p1
sprpriority = 13
ignorehitpause = 1
ownpal = 1
supermove = 1
removetime = -1

[State 193, polvere]
type = Explod
trigger1 = AnimElem = 1
pos = 55,-25
anim = 7061
sprpriority = 20
removetime = 80

[State 193, Cosmo cloth1]
type = Explod
trigger1 = time = 1
anim = 196
ID = 196
pos = 50,-35
postype = p1
sprpriority = 13
ignorehitpause = 1
ownpal = 1
supermove = 1
removetime = -1

[State 193, removeEX]
type = RemoveExplod
triggerall = NumExplod(195) >= 1
trigger1 = AnimElem = 22
ID = 195

[State 193, removeEX]
type = RemoveExplod
triggerall = NumExplod(196) >= 1
trigger1 = AnimElem = 22
ID = 196

[State 193, cloth2]
type = Explod
trigger1 = AnimElem = 22
anim = 197
ID = 197
pos = 55,-20
postype = p1
sprpriority = 3
ignorehitpause = 1
ownpal = 1
supermove = 1
removetime = -1

[State 193, removeEX]
type = RemoveExplod
triggerall = NumExplod(197) >= 1
trigger1 = AnimElem = 24
ID = 197

[State 193, cloth3]
type = Explod
trigger1 = AnimElem = 24
anim = 198
ID = 198
pos = 55,-20
postype = p1
sprpriority = 3
ignorehitpause = 1
ownpal = 1
supermove = 1

[State 193, cosmo2]
type = Explod
trigger1 = AnimElem = 35
anim = 903
ID = 903
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
supermove = 1
removetime = 230

[State 193, luce]
type = Explod
trigger1 = AnimElem = 40
anim = 7008
ID = 7008
pos = 0,-110
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
supermove = 1

[State 193, salto]
type = PlaySnd
trigger1 = AnimElem = 22
value = 2, 0

[State 193, atterraggio]
type = PlaySnd
trigger1 = AnimElem = 46
value = 2, 2

[State 193, sottofondo]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 0

[State 193]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 4

[State 193]
type = PlaySnd
trigger1 = time = 150
value = 5, 1

[State 193, cloth]
type = PlaySnd
trigger1 = time = 200
value = 4, 0

[State 193, cloth]
type = PlaySnd
trigger1 = AnimElem = 25
trigger2 = AnimElem = 29
value = 4, 1

[State 193, cloth]
type = PlaySnd
trigger1 = AnimElem = 27
trigger2 = AnimElem = 31
value = 4, 2

[State 193, cloth]
type = PlaySnd
trigger1 = AnimElem = 34
value = 4, 0

[State 193, cloth]
type = PlaySnd
trigger1 = AnimElem = 41
value = 5, 2

[State 193, urlo]
type = PlaySnd
trigger1 = AnimElem = 41
value = 12, 10
channel = 0

[State 193, Darken]
type = BGPalfx
triggerAll = time <= 335
trigger1 = 1
ignorehitpause = 1
time = 5
mul = 180,180,180
add = 5,5,5
invertall = 0

[State 193, Darken]
type = BGPalfx
trigger1 = AnimElem = 41
ignorehitpause = 1
time = 40
mul = 90,90,150
add = 5,5,5
invertall = 0

[State 193, lira]
type = Explod
trigger1 = AnimElem = 41
pos = 0,-45
anim = 6000
sprpriority = -2
removetime = 40

[State 193, lira]
type = Explod
trigger1 = AnimElem = 41
pos = 0,-40
anim = 6001
sprpriority = -2
removetime = 40

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
; Intro vs Phoenix
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 194, no music]
type = AssertSpecial
trigger1 = Time = [0,500]
flag = nomusic
persistent = 1

[State 194, 0]
type = AssertSpecial
trigger1 = Time = [0,500]
flag = Intro

[State 194, luce]
type = Explod
trigger1 = AnimElem = 2
pos = -4,-91
anim = 7061
sprpriority = 2
removetime = 80

[State 194, 0]
type = PlaySnd
trigger1 = AnimElem = 5
value = 12, 11
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
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Taunt
[Statedef 199]
type = S
ctrl = 0
velset = 0,0
anim = 199

[State 199, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12, 7
channel = 0

[State 199, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Standing LP
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

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 20
getpower = 0
givepower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = s7000
sparkxy = -10, -90
hitsound   = s1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
air.velocity = -3,-1
airguard.velocity = -1.9,-.8
air.type = High
air.hittime = 12

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing MP
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 210
sprpriority = -1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 210, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-90
hitsound   = s1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-2

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing HP
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 220
sprpriority = -1

[State 220, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Hard
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-90
hitsound   = s1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2,-3
air.velocity = -4,-4
fall = 1

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing LK
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
trigger1 = Time = 2
value = 0, 0

[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Light
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7000
sparkxy = 25,-80
hitsound   = s1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -2
air.velocity = -2,-1

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing MK
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
anim = 240
sprpriority = 2
velset = 0,0

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-80
hitsound   = s1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3
air.velocity = -3,-2

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing HK
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
trigger1 = Time = 2
value = 0, 2

[State 250, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = 15,-60
hitsound   = s1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-1

[State 250, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching LK
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
value = 0, 0

[State 400, 2]
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
sparkno = s7000
sparkxy = -5,-43
hitsound   = s1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,0

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching MP
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 410, 3] 
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
getpower = 0
givepower = 0
animtype  = Medium
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7001
sparkxy = -5,-43
hitsound   = s1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,0

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching HP
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 420
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 410, 3] 
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 40
getpower = 0
givepower = 0
animtype  = Hard
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-48
hitsound   = s1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,0

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;Crouching LK
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
value = 0, 0

[State 430, 2]
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
sparkno = s7001
sparkxy = -5,5
hitsound   = s1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,0
down.velocity = -5,0
down.hittime = 20

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching MK
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

[State 440, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002
sparkxy = -5,-7
hitsound   = s1,1
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5
air.velocity = -1.5,0
guard.velocity = -5
fall = 0

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
;Crouching HK
[Statedef 450]
type    = C
movetype= A
physics = C
velset = 10,0
juggle  = 7
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

[State 450, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 450, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 4

[State 450, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = -10,3
anim = 7085
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 450, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002
sparkxy = -5,-7
hitsound   = s1,2
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5
air.velocity = -1.5,0
guard.velocity = -5
fall = 1

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Jumping LP
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
trigger1 = Time = 1
value = 0, 0

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
animtype = Light
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7002
sparkxy = -10,-58
hitsound   = s1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -2
air.velocity = -1,-3
air.cornerpush.veloff = -8
airguard.cornerpush.veloff = -8

;---------------------------------------------------------------------------
;Jumping MP
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-58
hitsound   = s1,1
guardsound = S6,0
animtype = Medium
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -3
air.velocity = -1,-3
air.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9

;---------------------------------------------------------------------------
;Jumping HP
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 620
sprpriority = 2

[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7001
sparkxy = 10,-60
hitsound   = s1,2
guardsound = S6,0
ground.type = High
animtype = Hard
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4
air.velocity = -1,-3
air.cornerpush.veloff = -10
airguard.cornerpush.veloff = -10

;---------------------------------------------------------------------------
;Jumping LK
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 630
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7001
sparkxy = -10,-60
hitsound   = s1,0
guardsound = S6,0
ground.type = High
animtype = Light
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -2
air.velocity = -1,-3
air.cornerpush.veloff = -8
airguard.cornerpush.veloff = -8

;---------------------------------------------------------------------------
;Jumping MK
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 640
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7001
sparkxy = -5,-45
hitsound   = s1,1
guardsound = S6,0
ground.type = High
animtype = Medium
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -3
air.velocity = -1,-3
air.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9

;---------------------------------------------------------------------------
;Jumping HK
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 650
sprpriority = 2

[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 40
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7001
sparkxy = -5,-35
hitsound   = s1,2
guardsound = S6,0
ground.type = High
animtype = Hard
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4
air.velocity = -1,-3
air.cornerpush.veloff = -10
airguard.cornerpush.veloff = -10

;---------------------------------------------------------------------------
;Throw
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 800
sprpriority = 2

[State 800, music]
type = PlaySnd
trigger1 = Time = 8
value = 13, 1

[State 800]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NT
animtype  = hard
damage    = 0
getpower = 0
givepower = 0
pausetime = 0,12
sparkno = s7060
guard.sparkno = 40
sparkxy = -25,-60
hitsound   = -1
guardsound = S6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 12
ground.velocity = 0,0
air.velocity = -8,-4
;p1stateno = 801
p2stateno = 802

[State 800, hit]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7072
ID = 7072
pos = 5,-120
postype = p2
sprpriority = 9
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 500

[State 800, hit]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8031
ID = 8031
pos = -30,-65
postype = p2
sprpriority = 4
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 500

[State 800, hit]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7060
ID = 7060
pos = -7,-60
postype = p2
sprpriority = 6
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 500

;[State 800]
;type = PlaySnd
;trigger1 = movehit = 1
;value = s1, 2

[State 800];miss
type = ChangeState
triggerall = movehit = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 800]
type = ChangeState
trigger1 = AnimTime = 0
value = 801

;---------------------------------------------------------------------------
;Throw (p1 state)
[Statedef 801]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 2,0
anim = 250
sprpriority = 2

[State 801]
type = PlaySnd
trigger1 = Time = 5
value = 0, 2

[State 801]
type = PlaySnd
trigger1 = Time = 5
value = 12, 10

[State 801]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Up
damage    = 55
getpower = 0
givepower = 0
priority  = 5
pausetime = 20,30
sparkno = s7001
sparkxy = -40,-60
hitsound   = s1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -3.3,-2
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

[State 801]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw (p2 state)
[Statedef 802]
type = S
movetype= H
physics = N
velset = 0,0

[State 802, Freeze anim]
type = Changeanim
trigger1 = time != 0
value = 5000

[State 802, PosSet]
type = PosSet
trigger1 = time = 0
Y = 0

[State 802, Velset]
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

[State 802, CZ]
type = ChangeState
trigger1 = time = 50
trigger1 = Pos Y < 0
value = 52;0

;---------------------------------------------------------------------------
;Cosmo Charge
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
value = 12, 10
channel = 0

[State 900]
type = EnvShake
trigger1 = animelem = 1
time = 40

[State 900]
type = ChangeState
trigger1 = animtime = 0
value = 901

;---------------------------------------------------------------------------
;Cosmo Charge - charging
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901

[State 901]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

[State 901, music]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 1

[State 901, Constellation]
type = Explod
trigger1 = animelem = 1
anim = 6000
ID = 6000
pos = 0,-50
postype = p1
bindtime = -1
sprpriority = -4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 901, Constellation Cosmo]
type = Explod
trigger1 = animelem = 1
anim = 6001
ID = 6001
pos = 0,-50
postype = p1
bindtime = -1
removetime = 32
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

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
type = Explod
triggerall = numexplod(7061) = 0
trigger1 = 1
anim = 7061
ID = 7061
pos = 0,-77
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
triggerall = numexplod(3014) = 0
trigger1 = 1
anim = 3014
ID = 3014
pos = 0,0
bindtime = 1
removetime = -1
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 901]
type = ChangeState
triggerall = var(59) = 0
trigger1 = command != "charge"
trigger2 = command != "charge 1"
value = 902

[State 901]
type = ChangeState
triggerall = time >= 1
triggerall = var(59) = 1
trigger1 = random <= 10
value = 902
ctrl = 1

[State 901, 2]
type = ChangeState
trigger1 = Power >= 3000
value = 902

[State 901, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

;---------------------------------------------------------------------------
;Cosmo Charge - end
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

[State 902, 1]
type = RemoveExplod
triggerall = NumExplod(6000) >= 1
trigger1 = Time = 0
ID = 6000

[State 902, 1]
type = RemoveExplod
triggerall = NumExplod(6001) >= 1
trigger1 = Time = 0
ID = 6001

[State 902, 1]
type = RemoveExplod
triggerall = NumExplod(7061) >= 1
trigger1 = Time = 0
ID = 7061

[State 902, 1]
type = RemoveExplod
triggerall = NumExplod(7031) >= 1
trigger1 = Time = 0
ID = 7031

[State 902, 1]
type = RemoveExplod
triggerall = NumExplod(7030) >= 1
trigger1 = Time = 0
ID = 7030

[State 902, 1]
type = RemoveExplod
triggerall = numexplod(7020) >= 1
trigger1 = time = 0
ID = 7020

[State 902, 1]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = Time = 0
ID = 7010

[State 902, 1]
type = RemoveExplod
triggerall = NumExplod(3014) >= 1
trigger1 = Time = 0
ID = 3014

[State 902]
type = PalFX
triggerAll = power >= 3000
trigger1 = time = 1
time = 15
add = 0,0,0
sinadd = 20,200,20,3

[State 902, 1]
type = EnvShake
triggerall = power >= 3000
trigger1 = time = 0
time = 64

[State 902, 1]
type = PlaySnd
triggerall = power >= 3000
trigger1 = time = 1
value = 9, 3

[State 902, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------
;Harp Attack
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = -1

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 10

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 4

[State 1000, fire]
type = Explod
trigger1 = AnimElem = 2
pos = 85,-76
anim = 8060
sprpriority = 9
removeongethit = 1
ownpal = 1

[State 1000, POLVERE]
type = Explod
trigger1 = AnimElem = 1
pos = 0,5
anim = 7084
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 1000,remanescence]
type = AfterImage
trigger1 = time = 0
time = 20
length = 20
PalContrast =  128,128,128
PalBright = 10,10,10
trans = Add1

[State 1000, 0]
type = VelSet
trigger1 = AnimElem = 2
x = 5

[State 1000, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Hard
damage    = 40,4
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-75
hitsound   = s1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3
air.velocity = -3,0
envshake.time =  25 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5

[State 1000, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Hard
damage    = 40,4
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7063
sparkxy = 0,-75
hitsound   = s1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -15,-5
air.velocity = -15,-5
fall = 1
p2stateno = 1025
envshake.time =  35 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5

[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------
;Flash Kick
[Statedef 1010]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1010
sprpriority = -1

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
value = 0, 1

[State 1113,remanescence]
type = AfterImage
trigger1 = time = 0
time = 30
length = 20
PalContrast =  128,128,128
PalBright = 10,10,10
trans = Add1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Hard
damage    = 40,4
getpower = 0
givepower = 0
guardflag = MA
pausetime = 6,12
sparkno = s7001
sparkxy = 0,-75
hitsound   = s1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3
air.velocity = -3,0
envshake.time =  25 
envshake.freq = 20     
envshake.ampl = 6  
envshake.phase = 5

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Hard
damage    = 40,4
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = 15,-85
hitsound   = s1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6, -1
air.velocity = -6,-1
envshake.time =  25 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5
p2stateno = 1025

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------
;Double Kick
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1020
sprpriority = -1

[State 300]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 10

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
value = 0, 2

[State 3020, POLVERE]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 7084
sprpriority = 4
removeongethit = 1
ownpal = 1

[State 3020, POLVERE]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
pos = 30,6
anim = 70841
sprpriority = 5
removeongethit = 1
ownpal = 1
scale = .7, .7

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
attr = S, SA
animtype  = Hard
damage    = 20,2
getpower = 0
givepower = 0
guardflag = MA
pausetime = 6,12
sparkno = s7002
sparkxy = 0,-75
hitsound   = s1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
air.velocity = -2,-1
envshake.time =  25 
envshake.freq = 20     
envshake.ampl = 7  
envshake.phase = 5

[State 432, 0]
type = VelSet
trigger1 = AnimElem = 6
x = 2

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = S, SA
animtype  = Hard
damage    = 20,2
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-75
hitsound   = s1,6
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2 ,-12
air.velocity = -2,-12
envshake.time =  25 
envshake.freq = 20     
envshake.ampl = 10  
envshake.phase = 5
p2stateno = 1029
fall = 1
fall.recover = 0             
fall.damage = 0             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 30
yaccel = .8

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

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
value = 240, 0

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
; explosion spin
[Statedef 1029]
type    = A
movetype= H 
physics = N

[State 1029]
type = ChangeAnim2
trigger1 = 1
value = 1029

[State 1029]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1029]
type = VelAdd
Trigger1 = Time >= 0
y = .3

[State 1029]
type = Offset
Trigger1 = Time >= 1
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

[State 1029 ouch] 
type = SelfState
Trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = time = 150
value = 5100

;---------------------------------------------------------------------------
;Uppercut Kick
[Statedef 1030]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1030
sprpriority = 2

[State 1030, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 10

[State 1030, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 1030, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 0

[State 1030,remanescence]
type = AfterImage
trigger1 = time = 0
time = 10
length = 20
PalContrast =  128,128,128
PalBright = 10,10,10
trans = Add1

[State 1030, POLVERE]
type = Explod
trigger1 = AnimElem = 1
pos = -15,0
anim = 70891
sprpriority = 5
removeongethit = 1
ownpal = 1
scale = .8, .8

[State 1030] 
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Up               
damage    = 80,8
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 20,30
sparkno = s7002
sparkxy = 10,-120
hitsound   = s1,5
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
fall.damage = 0             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100            
maxdist = 100,-10           
yaccel = .8 

[State 1030, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Melodic Touch - pt1
[Statedef 1040]
type = S
movetype= A
physics = S
anim = 1040
poweradd = 50
juggle = 5
velset = 0,0
ctrl = 0
sprpriority = 2

[State 1040]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[State 1040]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = hard
damage    = 80,8
getpower = 0
givepower = 0
guardflag = MA
pausetime = 15,15
sparkno = s70051
guard.sparkno = 40
sparkxy = 20,-83
hitsound   = S6,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -10,0
air.velocity = -12,-5
p1stateno = 1041
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
fall = 1

[State 1040]
type = Explod
triggerall = NumExplod(70091) = 0
trigger1 = MoveContact = 1
anim = 70091
ID = 70091
pos = 20,-83
postype = p1
sprpriority = 5
supermove = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
ownpal = 1
removeongethit = 1

[State 1040]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 1

[State 1040]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Melodic Touch - pt2
[Statedef 1041]
type = S
movetype= I
physics = S
anim = 1041
ctrl = 0

[State 1041]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 1

[State 1041]
type = AfterImage
trigger1 = AnimElem = 1
time = 15
length = 15
PalContrast =  128,128,128
PalBright = 10,10,10
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 1041]
type = Explod
trigger1 = AnimElem = 1
anim = 70851
pos = -15,5
postype = p1
sprpriority = 3
ownpal = 1
removeongethit = 1
bindtime = -1

[State 1041]
type = VelAdd
trigger1 = AnimElem = 1
x = -30

[State 1041]
type = VelSet
trigger1 = AnimElem = 2
x = 0
y = 0

[State 1041]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 1041]
type = ChangeState
trigger1 = AnimTime = 0
value = 199
ctrl = 0

;---------------------------------------------------------------------------
; Fireball 1
[Statedef 1050]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
velset = 0,0
anim = 1050
ctrl = 0
sprpriority = 2

[State 1050]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 3

[State 1050, music]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 1

[State 1050]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 0

[State 1050,remanescence]
type = AfterImage
trigger1 = time = 0
time = 30
length = 20
PalContrast =  128,128,128
PalBright = 10,10,10
trans = Add1

[State 1050, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = 0,0
anim = 7010
sprpriority = -2
removetime = 24
removeongethit = 1
ownpal = 1
bindtime = -1

[State 1050, POLVERE]
type = Explod
trigger1 = AnimElem = 4
pos = 20,-95
anim = 7061
sprpriority = 5
removeongethit = 1
ownpal = 1
bindtime = -1

[State 1050, cosmo]
type = Explod
trigger1 = AnimElem = 3
triggerall = NumExplod(3014) = 0
anim = 3014
ID = 3014
pos = 0,0
postype = p1
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 45

[State 1050]
type = Projectile
trigger1 = AnimElem = 2
projscale = .7,.7
projanim = 8050
projhitanim = 8051
offset = -3, -92
sparkno = s8052
sparkxy = 30,0
velocity = 5,0
attr = S, SP
damage = 60,6
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound   = s1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3 
air.animtype = Back
air.velocity = -3,-1
air.juggle = 3
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
palfx.time = 15
palfx.add = 210,170,222
afterimage.time = 200
afterimage.length = 20
afterimage.PalContrast =  128,128,128
afterimage.PalBright = 10,10,10
afterimage.trans = Add

[State 1050, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Fireball 2
[Statedef 1051]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
velset = 0,0
anim = 1050
ctrl = 0
sprpriority = 2

[State 300]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 3

[State 300, music]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 1

[State 300]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 0

[State 1051,remanescence]
type = AfterImage
trigger1 = time = 0
time = 30
length = 20
PalContrast =  128,128,128
PalBright = 10,10,10
trans = Add1

[State 1051, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = 0,0
anim = 7010
sprpriority = -2
removetime = 24
removeongethit = 1
ownpal = 1
bindtime = -1

[State 1051, POLVERE]
type = Explod
trigger1 = AnimElem = 4
pos = 20,-95
anim = 7061
sprpriority = 5
removeongethit = 1
ownpal = 1
bindtime = -1

[State 1051, cosmo]
type = Explod
trigger1 = AnimElem = 3
triggerall = NumExplod(3014) = 0
anim = 3014
ID = 3014
pos = 0,0
postype = p1
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 45

[State 1051]
type = Projectile
trigger1 = AnimElem = 2
projscale = .7,.7
projanim = 8050
projhitanim = 8051
projhits = 2
offset = -3, -92
sparkno = s8052
sparkxy = 30,0
velocity = 6,0
attr = S, SP
damage = 30,3
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound   = s1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3 ,-1 
air.animtype = Back
air.velocity = -3,-1
air.juggle = 3
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
palfx.time = 15
palfx.add = 210,170,222
afterimage.time = 200
afterimage.length = 20
afterimage.PalContrast =  128,128,128
afterimage.PalBright = 10,10,10
afterimage.trans = Add

[State 1000, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------
;Fireball 3
[Statedef 1052]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 60
velset = 0,0
anim = 1050
ctrl = 0
sprpriority = 2

[State 300]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 3

[State 300, music]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 1

[State 300]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 0

[State 1052,remanescence]
type = AfterImage
trigger1 = time = 0
time = 30
length = 20
PalContrast =  128,128,128
PalBright = 10,10,10
trans = Add1

[State 1052, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = 0,0
anim = 7010
sprpriority = -2
removetime = 24
removeongethit = 1
ownpal = 1
bindtime = -1

[State 1052, POLVERE]
type = Explod
trigger1 = AnimElem = 4
pos = 20,-95
anim = 7061
sprpriority = 5
removeongethit = 1
ownpal = 1
bindtime = -1

[State 1052, cosmo]
type = Explod
trigger1 = AnimElem = 3
triggerall = NumExplod(3014) = 0
anim = 3014
ID = 3014
pos = 0,0
postype = p1
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 45

[State 1052]
type = Projectile
trigger1 = AnimElem = 2
projscale = .7,.7
projanim = 8050
projhitanim = 8051
projhits = 3
offset = -3, -92
sparkno = s8052
sparkxy = 30,0
velocity = 7,0
attr = S, SP
damage = 20,2
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound   = s1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3 ,-1
air.animtype = Back
air.velocity = -3,-2
air.juggle = 3
envshake.time =  15 
envshake.freq = 20     
envshake.ampl = 8  
envshake.phase = 5
palfx.time = 15
palfx.add = 210,170,222
afterimage.time = 200
afterimage.length = 20
afterimage.PalContrast =  128,128,128
afterimage.PalBright = 10,10,10
afterimage.trans = Add

[State 1052, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Stringer Nocturne
[Statedef 3000]
type    = S
movetype= A
physics = S
anim = 3000
velset = 0,0
juggle = 0
ctrl = 0

[State 3000, 2]
type = poweradd
trigger1 = Animelem = 2
value = -1000

[State 3000, 2]
type = varset
trigger1 = Time = 1
value = 0
v = 23

[State 3000, 2]
type = varadd
trigger1 = AnimElem = 2
value = 1
v = 23

[State 3000, music]
type = Playsnd
triggerall = var(23) = 1
trigger1 = Animelem = 5
value = 13, 9
channel = 4

[State 3000, 2]
type = Playsnd
triggerall = var(23) = 1
trigger1 = Animelem = 2
value = 12, 6
channel = 0

[State 3000, no music]
type = AssertSpecial
trigger1 = Time = [0,9000]
flag = nomusic

[State 3000, spause]
type = SuperPause
triggerall = var(23) = 1
trigger1 = AnimElem = 2
time = 35
anim = s7008
pos = 2,-75
movetime = 0
darken = 0

[State 3000, Darken]
type = BGPalfx
triggerall = var(23) = 1
trigger1 = AnimElem = 2
ignorehitpause = 1
time = 100
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3000, cosmo]
type = Explod
triggerall = NumExplod(3002) = 0
trigger1 = AnimElem = 2
pos = 0,0
anim = 3002
ID = 3002
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

[State 3000, 2]
type = Playsnd
triggerall = var(23) = 1
trigger1 = Animelem = 2
value = 5, 2

[State 3000, 2]
type = Playsnd
triggerall = var(23) = 1
trigger1 = Animelem = 2
value = 2, 0

;[State 3000, sfondo]
;type = Explod
;triggerall = var(23) = 1
;triggerall = NumExplod(8100) = 0
;trigger1 = AnimElem = 2
;pos = -320,0
;anim = 8100
;ID = 8100
;postype = right
;sprpriority = -9
;ignorehitpause = 1
;ownpal = 1
;bindtime = -1
;persistent = 0
;removeongethit = 1
;supermove = 1
;
;[State 3000, sfondo1]
;type = Explod
;triggerall = var(23) = 1
;triggerall = NumExplod(8101) = 0
;trigger1 = AnimElem = 2
;pos = -320,0
;anim = 8101
;ID = 8101
;postype = right
;sprpriority = 8
;ignorehitpause = 1
;ownpal = 1
;bindtime = -1
;persistent = 0
;removeongethit = 1
;supermove = 1
;
;[State 3000, sfondo2]
;type = Explod
;triggerall = var(23) = 1
;triggerall = NumExplod(8102) = 0
;trigger1 = AnimElem = 2
;pos = -320,0
;anim = 8102
;ID = 8102
;postype = right
;sprpriority = 9
;ignorehitpause = 1
;ownpal = 1
;bindtime = -1
;persistent = 0
;removeongethit = 1
;supermove = 1

[State 3000, lightp]
type = Explod
triggerall = var(23) = 1
triggerall = NumExplod(7061) = 0
trigger1 = AnimElem = 2
pos = 12,-82
anim = 7061
ID = 7061
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

[State 3000, light]
type = Explod
triggerall = var(23) = 1
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
pos = 0,5
anim = 62
ID = 62
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .6,.6

[State 3000, light]
type = Explod
triggerall = var(23) = 1
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
pos = 0,6
anim = 62
ID = 62
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .6,.6
vfacing = -1

[State 3000, polvere]
type = Explod
triggerall = var(23) = 1
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 2
pos = 0,0
anim = 7010
ID = 7010
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

[State 3000, afterimage]
type = AfterImage
triggerall = var(23) = 1
trigger1 = time = 1
time = 50
FrameGap = 2
length = 20
PalContrast =  128,128,128
PalBright = 10,10,10
trans = Add1

[State 3000, 2]
type = Playsnd
triggerall = var(23) = 1
trigger1 = Animelem = 2
value = 5, 3

[State 3000, barriera]
type = Explod
triggerall = NumExplod(8000) = 0
trigger1 = AnimElem = 5
pos = 100,10
anim = 8000
ID = 8000
sprpriority = 9
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3000, white fadeout]
type = BGPalFx
trigger1 = movehit = 1
add = 255,255,255
sinadd = 300,300,300,5
time = 100
ignorehitpause = 0
persistent= 0

[State 3000, helper]
type = Helper
trigger1 = StateNo = 3000
trigger1 = animelem = 3
ID = 3001
postype = P1
pos = 100,10
name = "wall"
stateno = 3001
sprpriority = 4
facing = 1
pausemovetime = 1

[State 3000, 2]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
attr = S, HA
animtype  = Medium
damage    = 29
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s8001
sparkxy = 0,-80
hitsound   = s1,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -5, -5
air.velocity = 2, -8
envshake.time =  30 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5

[State 3000, 2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
attr = S, HA
animtype  = Medium
damage    = 29,10
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s8001
sparkxy = 0,-80
hitsound   = -1;s1,5
guardsound = -1;S6,3
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -5, -5
air.velocity = 2, -8
envshake.time =  30 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5

[State 3000, 2]
type = HitDef
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9
trigger3 = AnimElem = 7
attr = S, HA
animtype  = Medium
damage    = 21
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s8001
sparkxy = 0,-80
hitsound   = s1,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -5, -10
air.velocity = 2, -8
envshake.time =  30 
envshake.freq = 20     
envshake.ampl = 5  
envshake.phase = 5
p2stateno = 1029
fall = 1
fall.recover = 0             
fall.damage = 21             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 30
yaccel = .8

[State 3000, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time = 40
ignorehitpause = 1
persistent= 0

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(3002) >= 1
trigger1 = AnimElem = 18
ID = 3002

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(7061) = 1
trigger1 = AnimElem = 18
ID = 7061

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) = 1
trigger1 = AnimElem = 18
ID = 7010

[State 3000, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3000, 5]
type = ChangeState
trigger1 = (Animelem = 18) && (command != "hold_a")
trigger2 = (Animelem = 18) && (Power < 1000)
value = 0
ctrl = 1

;Stringer Nocturne - helper
[Statedef 3001]
type = S
movetype = A
physics = N
juggle  = 10
ctrl = 0
anim = 8000
sprpriority = 4

[State 3001, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 3001, 2]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 3001
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 3001, 3]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 3001, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3001, destroy]
type = Destroyself
trigger1 = time = 84
trigger2 = parent,var(23) = 0

;---------------------------------------------------------------------------
;Death Trip Serenade (start)
[Statedef 3010]
type    = S
movetype= A
physics = S
anim = 3010
velset = 0,0
poweradd = -2000
juggle = 0
ctrl = 0

[State 3010, music]
type = Playsnd
trigger1 = Animelem = 4
value = 13, 2
channel = 7

[State 3010, 2]
type = Playsnd
trigger1 = Animelem = 4
value = 12, 3
channel = 0

[State 3010, 2]
type = Playsnd
trigger1 = Animelem = 4
value = 2, 0

[State 3010, no music]
type = AssertSpecial
trigger1 = Time = [0,9000]
flag = nomusic

[State 3010, 0]
type = SuperPause
trigger1 = AnimElem = 4
time = 25
anim = s7008
pos = 10,-75
movetime = 0
darken = 1

[State 3010, cosmo]
type = Explod
triggerall = NumExplod(3002) = 0
trigger1 = AnimElem = 4
pos = 0,0
anim = 3002
ID = 3002
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500

[State 3010, afterimage]
type = AfterImage
trigger1 = time = 1
time = 150
FrameGap = 2
length = 20
PalContrast =  128,128,128
PalBright = 10,10,10
trans = Add1

[State 3010, lights]
type = Explod
triggerall = NumExplod(8030) = 0
trigger1 = AnimElem = 4
pos = -5,-87
anim = 8030
ID = 8030
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 250

[State 3010, lights]
type = Explod
triggerall = NumExplod(8030) = 0
trigger1 = AnimElem = 7
pos = -5,-87
anim = 8030
ID = 8030
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 250

[State 3010, lightp]
type = Explod
triggerall = NumExplod(7061) = 0
trigger1 = AnimElem = 4
pos = 12,-82
anim = 7061
ID = 7061
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 250

[State 3010, light]
type = Explod
triggerall = NumExplod(62) = 0
trigger1 = AnimElem = 4
pos = 0,5
anim = 62
ID = 62
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 250
scale = .6,.6

[State 3010, light]
type = Explod
;triggerall = NumExplod(62) = 0
trigger1 = AnimElem = 4
pos = 0,6
anim = 62
ID = 62
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 250
scale = .6,.6
vfacing = -1

[State 3010, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 4
pos = 0,0
anim = 7010
ID = 7010
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 250

[State 3010, hit]
type = Explod
triggerall = Facing = -1
trigger1 = movehit = 1
persistent = 0
anim = 7073
ID = 7073
pos = 5,-120
postype = p2
sprpriority = 9
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 500

[State 3010, hit]
type = Explod
triggerall = Facing = 1
trigger1 = movehit = 1
persistent = 0
anim = 7072
ID = 7072
pos = 5,-120
postype = p2
sprpriority = 9
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 500

[State 3010, hit]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 8031
ID = 8031
pos = -30,-65
postype = p2
sprpriority = 4
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 500

[State 3010, hit]
type = Explod
trigger1 = movehit = 1
persistent = 0
anim = 7060
ID = 7060
pos = -7,-60
postype = p2
sprpriority = 6
bindtime = -1
ignorehitpause = 1
ownpal = 1
removetime = 500

[State 3010, white fadeout]
type = BGPalFx
trigger1 = movehit = 1
add = 255,255,255
sinadd = 300,300,300,60
time = 5
ignorehitpause = 0
persistent= 0

[State 3010, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
animtype  = Medium
damage    = 135,80
getpower = 0
givepower = 0
pausetime = 12,12
sparkno = s8010
sparkxy = 0,-60
hitsound   = s1,2
guardsound = S6,0
guardflag = MA
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = 0, -10
air.velocity = 2, -8
envshake.time =  5
envshake.freq = 5     
envshake.ampl = 0  
envshake.phase = 0
p2stateno = 3013

[State 3010, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time = 40
ignorehitpause = 1
persistent= 0

[State 3010, 5]
type = ChangeState
trigger1 = Time = 200
trigger2 = Moveguarded = 1
value = 3011
ctrl = 1

;---------------------------------------------------------------------------
;Death Trip Serenade (end)
[Statedef 3011]
type    = S
movetype= A
physics = S
anim = 3011
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 3011, afterimage]
type = AfterImage
trigger1 = time = 1
time = 3
FrameGap = 2
length = 20
PalContrast =  128,128,128
PalBright = 10,10,10
trans = Add1

[State 3011, removeEX]
type = RemoveExplod
triggerall = NumExplod(3002) >= 1
trigger1 = AnimElem = 2
ID = 3002

[State 3011, removeEX]
type = RemoveExplod
trigger1 = AnimElem = 1
ID = 7010

[State 3011, removeEX]
type = RemoveExplod
trigger1 = AnimElem = 1
ID = 8030

[State 3011, removeEX]
type = RemoveExplod
trigger1 = AnimElem = 1
ID = 7061

[State 3011, removeEX]
type = RemoveExplod
trigger1 = AnimElem = 1
ID = 62

[State 3011, 1]
type = Playsnd
trigger1 = Animelem = 2
value = 5, 1

[State 3011, 1]
type = Stopsnd
trigger1 = Animelem = 1
channel = 7

[State 3011, 2]
type = varset
trigger1 = AnimTime = 0
value = 1
v = 13

[State 3011, 3]
type = varset
trigger1 = AnimTime = 0
value = 1
v = 14

[State 3011, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Death Trip Serenade (play again)
[Statedef 3012]
type    = S
movetype= I
physics = S
anim = 3010
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 3012, 1]
type = SuperPause
trigger1 = AnimElem = 1
time = 89
anim = s8030
pos = -23,-108
movetime = 89
darken = 1

[State 3012, 2]
type = VarSet
trigger1 = Time = 0
v = 14
value = 0

[State 3012, music]
type = Playsnd
trigger1 = Animelem = 1
value = 13, 1
channel = 0

[State 3012, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Death Trip Serenade (p2 state)
[Statedef 3013]
type = S
movetype= H
physics = N
velset = 0,0

[State 3013, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3013

[State 3013, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 3013, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3013, CS]
type = SelfState
trigger1 = life <= 0
value = 5050
ctrl = 1

[State 3013, CS]
type = SelfState
trigger1 = time = 350
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Stringer Requiem (start)
[Statedef 3020]
type    = S
movetype= A
physics = S
anim = 3020
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0

[State 3020, no music]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze

[State 3020, spause]
type = SuperPause
trigger1 = AnimElem = 2
time = 25
anim = s7009
pos = 0,-88
movetime = 0
darken = 1

[State 3020, voce]
type = Playsnd
trigger1 = Animelem = 2
value = 12, 4
channel = 0

[State 3020, Mouth]
type = Explod
trigger1 = AnimElem = 2
anim = 180
ID = 180
pos = 0,0
postype = p1
bindtime = 80
sprpriority = 10
removetime = 90
removeongethit = 1

[State 3020, music]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13, 4

[State 3020, music]
type = PlaySnd
trigger1 = AnimElem = 3
value = 13, 8
channel = 1

[State 3020, StopSnd]
type = StopSnd
trigger1 = stateno != 3020
channel = -1

[State 3020, cosmo]
type = Explod
triggerall = NumExplod(3028) = 0
trigger1 = AnimElem = 3
pos = 22,-4
anim = 3028
ID = 3028
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 60

[State 3020, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 3
pos = 0,0
anim = 7010
ID = 7010
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3020, corde avanti]
type = Explod
trigger1 = AnimElem = 3
pos = 10,-74
anim = 8020
ID = 8020
sprpriority = 1
ownpal = 1
bindtime = -1
removeongethit = 1
supermove = 1

[State 3020, hit]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Medium
damage    = 0
guardflag = MAF
guard.sparkno = -1
pausetime = 12,12
sparkno = -1
sparkxy = 0,-20
hitsound   = s1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = 0, -25
air.velocity = 2, -8
envshake.time =  30
envshake.freq = 20
envshake.ampl = 5
envshake.phase = 5
p2facing = 1
p1stateno = 3021
p2stateno = 3022

[State 3020, 5]
type = ChangeState
trigger1 = animtime = 0
trigger2 = movecontact < 0
value = 3027
ctrl = 0

;----------------------------------------------------
;Stringer Requiem (success)
[Statedef 3021]
type    = S
movetype= A
physics = S
anim = 3021
velset = 0,0
juggle = 0
ctrl = 0

[State 3021, no music]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze

[State 3021]
type = RemoveExplod
triggerall = NumExplod(3028) > 0
trigger1 = time = 0
ID = 3028

[State 3021, background]
type = Explod
triggerall = NumExplod(8103) = 0
trigger1 = AnimElem = 1
pos = -470,-125
anim = 8103
ID = 8103
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1
scale = 2,2

[State 3021, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 60,60,90
add = 0,0,0
invertall = 0

[State 3021]
type = RemoveExplod
trigger1 = stateno != 3020
ID = 8020

[State 3021, music]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 3

[State 3021, 1]
type = stopSnd
triggerall = p2life > 0
trigger1 = time = 950
channel = -1

[State 3021, 1]
type = stopSnd
trigger1 = p2life = 0
channel = -1

[State 3021, corde suonate]
type = Explod
triggerall = P2BodyDist X <= 140
triggerall = NumExplod(8023) = 0
trigger1 = AnimElem = 1
pos = 10,-74
anim = 8023
ID = 8023
sprpriority = 2
ownpal = 1
bindtime = -1
removetime = 1950
supermove = 1
scale = ifelse(p2bodydist X <= 20, 0.15, ifelse(p2bodydist X <= 50, 0.29, ifelse(p2bodydist X <= 80, 0.39, ifelse(p2bodydist X <= 110, 0.48, 0.57)))), 1

[State 3021, corde suonate]
type = Explod
triggerall = P2BodyDist X > 140
triggerall = NumExplod(8023) = 0
trigger1 = AnimElem = 1
pos = 10,-74
anim = 8023
ID = 8023
sprpriority = 2
ownpal = 1
bindtime = -1
removetime = 1950
supermove = 1
scale = ifelse(p2bodydist X <= 170, 0.66, ifelse(p2bodydist X <= 200, 0.75, ifelse(p2bodydist X <= 230, 0.84, ifelse(p2bodydist X <= 260, 0.94, 1)))), 1

[State 3021, cosmo]
type = Explod
trigger1 = AnimElem = 1
pos = 22,-4
anim = 3028
ID = 3028
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 950

[State 3021]
type = RemoveExplod
triggerall = p2life > 0
trigger1 = time = 1950
ID = 8023

[State 3021]
type = RemoveExplod
trigger1 = p2life <= 0
ID = 8023

[State 191, luce]
type = Explod
trigger1 = AnimElem = 2
pos = 10,-94
anim = 7061
sprpriority = 2
removetime = 24
postype = p1
scale = .4,.4

[State 191, luce]
type = Explod
trigger1 = AnimElem = 5
pos = 12,-94
anim = 7061
sprpriority = 2
removetime = 24
postype = p1
scale = .4,.4

[State 191, luce]
type = Explod
trigger1 = AnimElem = 6
pos = 14,-94
anim = 7061
sprpriority = 2
removetime = 24
postype = p1
scale = .4,.4

[State 3021, corde presa]
type = Explod
trigger1 = time = 0
postype = p2
pos = -15,0
anim = 8021
ID = 8021
sprpriority = 3
ownpal = 1
bindtime = -1
removeongethit = 1
supermove = 1
removetime = 1950

[State 3021, sangue]
type = Explod
trigger1 = time = 5
postype = p2
pos = -10,-80
anim = 7071
ID = 7071
sprpriority = 3
ownpal = 1
bindtime = -1
removeongethit = 1
supermove = 1
removetime = 1950
scale = .30,.20

[State 3021, music]
type = Playsnd
trigger1 = time = 50
trigger2 = time = 250
trigger3 = time = 450
trigger4 = time = 650
trigger5 = time = 850
value = 13, 6

[State 3021, 5]
type = ChangeState
triggerall = p2life > 0
trigger1 = Time = 950
value = 3023
ctrl = 0

[State 3021, 5]
type = ChangeState
trigger1 = p2life <= 0
value = 3027
ctrl = 0

;----------------------------------------------------
;Stringer Requiem (final)
[Statedef 3023]
type    = S
movetype= A
physics = S
anim = 3023
velset = 0,0
poweradd = 350
juggle = 0
ctrl = 0

[State 3023]
type = RemoveExplod
trigger1 = stateno != 3021
ID = 8103

[State 3023, no music]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze

[State 3023, voice]
type = Playsnd
trigger1 = Animelem = 1
value = 12, 5
channel = 0

[State 3023, Mouth]
type = Explod
trigger1 = AnimElem = 1
anim = 180
ID = 180
pos = 0,0
postype = p1
bindtime = 110
sprpriority = 10
removetime = 120
removeongethit = 1

[State 3023, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 90,90,160
add = 0,0,0
invertall = 0

[State 3023]
type = RemoveExplod
trigger1 = projhit = 1;time = 0
ID = 180

[State 3023]
type = RemoveExplod
trigger1 = projhit = 1;time = 0
ID = 8021

[State 3023]
type = RemoveExplod
trigger1 = projhit = 1;time = 0
ID = 8023

[State 3023]
type = RemoveExplod
trigger1 = projhit = 1;time = 0
ID = 7071

[State 3023, music]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13, 7

[State 3023, corde indietro]
type = Explod
triggerall = NumExplod(8022) = 0
trigger1 = AnimElem = 8
pos = 10,-74
anim = 8022
ID = 8022
sprpriority = 1
ownpal = 1
bindtime = -1
removetime = 36
supermove = 1

[State 3023, stopsnd]
type = StopSnd
trigger1 = animelem = 3
channel = 5

[State 3023, spause]
type = SuperPause
trigger1 = AnimElem = 1
time = 30
anim = s8030
pos = 4,-97
movetime = 0
darken = 1

[State 3023, cosmo]
type = Explod
triggerall = NumExplod(2200) = 0
trigger1 = AnimElem = 5
pos = 0,0
anim = 2200
ID = 2200
sprpriority = -1
ownpal = 1
bindtime = -1
;removetime = 750
supermove = 1

[State 3023, last note]
type = Helper
trigger1 = AnimElem = 6
stateno = 3024
ID = 3024
helpertype = Normal
postype = p1
pos = 20,-90
ownpal = 1

[State 3023, proj]
type = Projectile
trigger1 = AnimElem = 6
attr = S, HP
ignorehitpause = 1
projanim = 7061
offset = 0,-90
velocity = 4,0
damage    = 855
fall.damage = 30
getpower = 0
givepower = 0
animtype = Hard
pausetime = 5,15
sparkno = -1
sparkxy = 35,-10
guard.sparkno = -1
hitsound   = s1,5
guardsound = S6,0
ground.type = trip
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -.8,-10
air.velocity = -4.5,-7
palfx.time = 15
palfx.add = 110,70,122
fall = 1

[State 3023, sangue]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 7070
id = 7070
pos = 0,-90
postype = p2
sprpriority = 4
bindtime = -1
ignorehitpause = 1
ownpal = 1
facing = -1

[State 3023, scia]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 8070
id = 8070
pos = 0,5
postype = p2
sprpriority = 5
bindtime = -1
ignorehitpause = 1
ownpal = 1

[State 3023, lampi]
type = Explod
trigger1 = projhit = 1
pos = -250,-320
anim = 8040
ID = 8040
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 60
scale = 1,1

[State 3023, snd]
type = PlaySnd
trigger1 = projhit = 1
value = 3, 7

[State 3023, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time = 40
ignorehitpause = 1
persistent = 0

[State 3023, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------
;Stringer Requiem (last note helper)
[Statedef 3024]
type    = S
movetype= A
physics = S
anim = 7061
velset = 0,0
ctrl = 0
poweradd = 0
sprpriority = 4

[State 3024, light]
type = Explod
trigger1 = AnimElem = 2
pos = -55,-10
anim = 8031
ID = 8031
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3024]
type = Velset
trigger1 = time >= 1
x = 4

[State 3024, NoHit]
type = NotHitBy
trigger1 = Time = 0
time = 500
value = SCA

[State 3024, afterimage]
type = AfterImage
trigger1 = time = 1
time = 500
paladd = 0,0,190
trans = Add1

[State 3024]
type = DestroySelf
trigger1 = P2bodydist X <= -30
trigger2 = time = 150

;---------------------------------------------------------------------------
;Stringer Requiem (p2 state)
[Statedef 3022]
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 3022, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3022, 5]
type = ChangeState
trigger1 = p2bodydist x < 160
value = 3025
ctrl = 0

[State 3022, 5]
type = ChangeState
trigger1 = p2bodydist x >= 160
value = 3026
ctrl = 0

;---------------------------------------------------------------------------
;Stringer Requiem (p2 state - near)
[Statedef 3025]
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 3025, VelSet]
type = VelSet
trigger1 = p2bodydist x < 160
x = -10
y = 0

[State 3025, VelSet]
type = VelSet
trigger1 = p2bodydist x >= 161
x = 0
y = 0

[State 3025, LifeAdd]
type = null;Lifeadd
triggerall = p2stateno = 3022
trigger1 = (time > 10) && (timemod = 5,0)
value = -2

[State 3025, LifeAdd]
type = LifeAdd
triggerall = p2stateno = 3022
trigger1 = time = [10,559]
value = -1
kill = 0

[State 3025, LifeAdd]
type = LifeAdd
triggerall = p2stateno != 3022
trigger1 = time > 10
value = 0
kill = 0

[State 3025, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1028

[State 3025, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 3025, PosSet]
type = Posadd
trigger1 = time = 0
y = 0
x = 0

[State 3025, CS]
type = SelfState
triggerall = life > 0
trigger1 = time = 1075
value = 0
ctrl = 1

[State 3025, CS]
type = SelfState
trigger1 = life = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Stringer Requiem (p2 state - far)
[Statedef 3026]
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 3026, VelSet]
type = VelSet
trigger1 = p2bodydist x > 171
x = 10
y = 0

[State 3026, VelSet]
type = VelSet
trigger1 = p2bodydist x <= 170
x = 0
y = 0

[State 3026, LifeAdd]
type = LifeAdd
triggerall = p2stateno = 3022
trigger1 = time = [10,559]
value = -1
kill = 0

[State 3026, LifeAdd]
type = LifeAdd
triggerall = p2stateno != 3022
trigger1 = time > 10
value = 0
kill = 0

[State 3026, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1028

[State 3026, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 3026, PosSet]
type = Posadd
trigger1 = time = 0
y = 0
x = 0

[State 3026, CS]
type = SelfState
triggerall = life > 0
trigger1 = time = 1075
value = 0
ctrl = 1

[State 3026, CS]
type = SelfState
trigger1 = life = 0
value = 0
ctrl = 1

;----------------------------------------------------
;Stringer Requiem (end)
[Statedef 3027]
type    = S
movetype= I
physics = S
anim = 3027
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 3027]
type = RemoveExplod
triggerall = stateno != 3020
trigger1 = Time = 0
ID = 8020

[State 3027, corde indietro]
type = Explod
triggerall = NumExplod(8022) = 0
triggerall = Time = 1
trigger1 = stateno = 3027
pos = 10,-74
anim = 8022
ID = 8022
sprpriority = 1
ownpal = 1
bindtime = -1
removetime = 36
supermove = 1

[State 3027, music]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 5
channel = 1

[State 3027, StopSnd]
type = StopSnd
trigger1 = stateno != 3027
channel = -1

[State 3027]
type = RemoveExplod
trigger1 = time = 36
ID = 180

[State 3027, 5]
type = ChangeState
trigger1 = time = 45
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; AI variabili (statedef -2)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[Statedef -2]

[State -2, ScreenBound]
type = ScreenBound
trigger1 = stateno = 5150
value = 0
movecamera = 0,0

[State -2, Get P2 Distance]
type = VarSet
trigger1 = P2Dist X != 0
v = 11
value = floor(P2Dist X)

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

[State -2, VarAdd]
type = VarAdd
trigger1 = (Var(13) >= 1) && (Var(13) < 300)
value = 1
v = 13

[State -2, VarSet]
type = VarSet
trigger1 = Var(13) >= 300
value = 0
v = 13

[State -2, ChangeState]
type = ChangeState
triggerall = Ctrl = 1
triggerall = StateNo = 0
triggerall = P2BodyDist X >= 100
triggerall = P2MoveType != A
triggerall = (Var(13) < 1) || (Var(13) >= 900)
trigger1 = Var(14) = 1
value = 3012

[State -2, StopSnd]
type = StopSnd
triggerall = MoveType = H
trigger1 = PrevStateNo = 3020
channel = 1

;---------------------------------------------------------------------------
;Combo 
;---------------------------------------------------------------------------

;punches + fireball
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
value = 1050

;punches + fireball
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
value = 1051

;punches + fireball
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
trigger1 = (stateno = 200) && (prevstateno = 220) && (movecontact) 
value = 1052

;triplo Pugno + fireball
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
trigger1 = (stateno = 210) && (prevstateno = 220) && (movecontact) 
value = 1052

;-----------------------------------------------------
;punches + Harp Attack
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
value = 1000

;punches + Harp Attack
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
value = 1000

;punches + Harp Attack
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
trigger1 = (stateno = 200) && (prevstateno = 220) && (movecontact) 
value = 1000

;triplo Pugno + Harp Attack
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
trigger1 = (stateno = 210) && (prevstateno = 220) && (movecontact) 
value = 1000

;-----------------------------------------------------
;kicks + Flash Kick
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
value = 1010

;kicks + Flash Kick
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 250
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 230) && (movecontact) 
value = 1010

;kicks + Flash Kick
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 250
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 1030) && (movecontact) 
value = 1010

;kicks + Double Kick
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 250
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 230) && (movecontact) 
value = 1020

;kicks + Double Kick
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240) 
trigger1 = (movecontact)
value = 250
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 240) && (movecontact) 
value = 1020

;kicks + Double Kick
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 1030
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 1030) && (prevstateno = 230) && (movecontact) 
value = 1020

;kicks + Uppercut Kick
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
value = 1030

;kicks + Uppercut Kick
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
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 240) && (movecontact) 
value = 1030

;kicks + Uppercut Kick
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 1030
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 1030) && (prevstateno = 230) && (movecontact) 
value = 1030

;-----------------------------------------------------
;punches
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

;punches
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

;-----------------------------------------------------
;kicks
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
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 240) && (movecontact) 
value = 1030

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
value = 250
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 210) && (movecontact) 
value = 1040

[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 220
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 210) && (movecontact) 
value = 230
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 220) && (movecontact)
trigger1 = power >= 1000 
value = 3000

;triplo calcio
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

;-----------------------------------------------------
;Pugni abbasato
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400) 
trigger1 = (movecontact)
value = 410
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 410) && (prevstateno = 400) && (movecontact) 
value = 420

;calci abbasato
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 450
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 450) && (prevstateno = 430) && (movecontact) 
value = 440

;calci abbasato
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 440
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 440) && (prevstateno = 430) && (movecontact) 
value = 450

;calci abbasato
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 450) 
trigger1 = (movecontact)
value = 440

;calci abbasato
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 450) 
trigger1 = (movecontact)
value = 430

;calci abbasato
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 440) 
trigger1 = (movecontact)
value = 430

;-----------------------------------------------------
;Pugni in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 610
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 600) && (movecontact) 
value = 620

;Calci in salto
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 640
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 640) && (prevstateno = 630) && (movecontact) 
value = 650

;combo in salto
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
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 630) && (movecontact) 
value = 640

;---------------------------------------------------------------------------
;Special Moves
;---------------------------------------------------------------------------

;Cosmo charge
[State -2]
type = changestate
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 129])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120)
value = 900

;Throw
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [130, 194])
trigger1 = (P2bodydist X <= 30) && (prevstateno != 5120)
value = 800

;Fireball 1
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [195, 259])
trigger1 = (P2bodydist X >= 160) && (prevstateno != 5120)
value = 1050

;Fireball 2
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [260, 324])
trigger1 = (P2bodydist X >= 180) && (prevstateno != 5120)
value = 1051

;Fireball 3
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [325, 389])
trigger1 = (P2bodydist X >= 200) && (prevstateno != 5120)
value = 1052

;Harp Attack
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [390, 454])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120)
value = 1000

;Flash Kick
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [455, 519])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 1010

;Double Kick
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [520, 584])
trigger1 = (P2bodydist X <= 90) && (prevstateno != 5120)
value = 1020

;Uppercut Kick			
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [585, 649])
trigger1 = (P2bodydist X <= 60) && (prevstateno != 5120)
value = 1030

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [650,714])
value = 199

;---------------------------------------------------------------------------
;Super Moves
;---------------------------------------------------------------------------

;Stringer Requiem
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X > 100) && (power >= 3000) && (random = [715,779])
value = 3020

;Stringer Nocturne
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X <= 100) && (power >= 1000) && (random = [780,844])
value = 3000

;Death Trip Serenade
[State -2]
type = changestate
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L) && (var(13) = 0)
trigger1 = (p2bodydist X >= 150) && (power >= 2000) && (power <= 2999) && (random = [845,909])
value = 3010

;---------------------------------------

[State -2, Random sound]
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

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 10, 0
channel = 0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10, 0
channel = 0

[State -2, Random sound]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10, 0
channel = 0

[State -2, Random sound]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 10, 0
channel = 0

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

[State -3, remove cosmo]
type = Removeexplod
triggerall = stateno != [3020,3021]
trigger1 = p2statetype != A
ID = 3028

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(7072) = 1
trigger1 = p2stateno != 3013
ID = 7072

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(7060) = 1
trigger1 = p2stateno != 3013
ID = 7060

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(8031) = 1
trigger1 = p2stateno != 3013
ID = 8031

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
triggerall = anim = 20
trigger1 = animelem = 2
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 2
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 5
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 5
value = F3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 2
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 2
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 5
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 5
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
trigger1 = animelem = 3
value = 3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 3
value = F3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 6
value = 3, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 6
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
triggerall = anim = 5150
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
triggerall = anim = 5150
trigger1 = time = 1
trigger2 = time = 40
value = 6, 1

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = 5150
trigger1 = time = 41
value = 6, 3

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9

[State -3, stopsnd]
type = Stopsnd
trigger1 = stateno != 3000
channel = 4