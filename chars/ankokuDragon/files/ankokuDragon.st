;---------------------------------------------------------------------------
; ANKOKU DRAGON ST FILE by FobiaZ
;---------------------------------------------------------------------------

; Lose by time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, Assert]
type = AssertSpecial
trigger1 = time = [0,250]
flag = roundnotover

[State 170]
type = PlaySnd
trigger1 = animelem = 2
value = 10, 1

[State 170]
type = PlaySnd
trigger1 = animelem = 3
value = 2, 2

[State 170]
type = PlaySnd
trigger1 = animelem = 6
value = 13, 9

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win state decider
[Statedef 180]
type = S

; Win Pose 1 (round win)
[State 180]
type = ChangeState
triggerall = var(9) = 0
trigger1 = time = 0 && p2life = 0
trigger1 = matchover = 0
value = 181

; Win Pose 2 (time over win)
[State 180]
type = ChangeState
triggerall = var(9) = 0
trigger1 = time = 0 && p2life > 0
trigger1 = matchover = 0
value = 182

; Win Pose 3 (match win)
[State 180]
type = ChangeState
triggerall = var(9) = 0
trigger1 = time = 0
trigger1 = matchover = 1
value = 183

; Win Pose 4 (win by desperate)
[State 180]
type = ChangeState
triggerall = var(9) = 1
trigger1 = time = 0
value = 184

; Win Pose 5 (win by fatality)
[State 180]
type = ChangeState
triggerall = var(9) = 2
trigger1 = time = 0
value = 185

;---------------------------------------
; Win 1 (round win)
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, Land]
type = PlaySnd
trigger1 = time = 5
trigger2 = time = 120
value = 3, 0

[State 181, Mouth]
type = Explod
trigger1 = time = 15
anim = 186
ID = 186
pos = -3,-3
postype = p1
bindtime = 80
sprpriority = 10
removetime = 90
removeongethit = 1

[State 181, Mouth]
type = Explod
trigger1 = time = 160
anim = 186
ID = 186
pos = -1,4
postype = p1
bindtime = 90
sprpriority = 10
removetime = 100
removeongethit = 1

[State 181, Voice]
type = PlaySnd
trigger1 = time = 11
value = 13, 0

[State 181, Assert]
type     = AssertSpecial
trigger1 = time = [0,300]
flag     = roundnotover

[State 181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win 2 (time over win)
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, Land]
type = PlaySnd
trigger1 = time = 5
value = 3, 0

[State 182, Mouth]
type = Explod
trigger1 = time = 15
anim = 186
ID = 186
pos = 0,0
postype = p1
bindtime = 170
sprpriority = 10
removetime = 180
removeongethit = 1

[State 182, Mouth]
type = Explod
trigger1 = time = 190
anim = 186
ID = 186
pos = 0,0
postype = p1
bindtime = 300
sprpriority = 10
removetime = 310
removeongethit = 1

[State 182, Voice]
type = PlaySnd
trigger1 = time = 11
value = 13, 1

[State 182, Assert]
type     = AssertSpecial
trigger1 = time = [0,550]
flag     = roundnotover

[State 182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win 3 (match win)
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 183, Assert]
type     = AssertSpecial
trigger1 = time = [0,140]
flag     = roundnotover

[State 183, Land]
type = PlaySnd
trigger1 = time = 5
value = 3, 0

[State 183, Voice]
type = PlaySnd
trigger1 = animelem = 4
value = 13, 2

[State 183]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win 4 (win by desperate)
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 184, Land]
type = PlaySnd
trigger1 = time = 5
value = 3, 0

[State 184, Voice]
type = PlaySnd
trigger1 = animelem = 2
value = 13, 17

[State 184, Assert]
type     = AssertSpecial
trigger1 = time = [0,300]
flag     = roundnotover

[State 184]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win 5 (win by fatality)
[Statedef 185]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 185, Assert]
type     = AssertSpecial
trigger1 = time = [0,150]
flag     = roundnotover

[State 185, Land]
type = PlaySnd
trigger1 = time = 5
value = 3, 0

[State 185, Mouth]
type = Explod
trigger1 = time = 6
anim = 186
ID = 186
pos = 11,1
postype = p1
bindtime = 90
sprpriority = 10
removetime = 100
removeongethit = 1

[State 185, Voice]
type = PlaySnd
trigger1 = animelem = 2
value = 13, 15
channel = 5

[State 185, StopSnd]
type = StopSnd
trigger1 = time = 100
channel = 5

[State 185]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Intro state decider
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190]
type = VarRandom
trigger1 = time = 0
v = 2
range = 0,99

;Intro 6 (vs Black Dragon \ himself)
[State 190]
type = ChangeState
trigger1 = p2name = "ankokudragon" || p4name = "ankokudragon"
value = 192

;Intro 5 (vs Ikki)
[State 190]
type = ChangeState
trigger1 = p2name = "ikki" || p4name = "ikki"
value = 195

;Intro 4 (vs Shiryu)
[State 190]
type = ChangeState
trigger1 = p2name = "shiryu" || p4name = "shiryu"
value = 194

;Intro 3 (gold cloth)
[State 190]
type = ChangeState
trigger1 = var(2) = [75,99]
value = 193

;Intro 2 (jump)
[State 190]
type = ChangeState
trigger1 = var(2) = [50,74]
value = 192

;Intro 1 (cloth)
[State 190]
type = ChangeState
trigger1 = var(2) = [0,49]
value = 191

;---------------------------------------
; Intro 1 (cloth)
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191]
type = AssertSpecial
trigger1 = time = [0,550]
flag = Intro

[State 191]
type = AssertSpecial
trigger1 = time = [0,440]
flag = nobardisplay

[State 191, Darken]
type = BGPalFX
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 150,150,250
add = 5,5,5
invertall = 0

[State 191, cloth raise]
type = Explod
trigger1 = time = 0
anim = 1910
pos = 55,1
postype = p1
sprpriority = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 290

[State 191, cloth break]
type = Explod
trigger1 = time = 290
anim = 1911
pos = 55,1
postype = p1
sprpriority = -1
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 191, cloth cosmo]
type = Explod
trigger1 = time = 0
anim = 1912
pos = 55,1
postype = p1
sprpriority = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 290

[State 191, spark1]
type = Explod
trigger1 = time = 55
anim = 7061
ID = 7061
pos = 54,-60
scale = .7,.7
postype = p1
sprpriority = 2
removetime = 28
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 28

[State 191, spark2]
type = Explod
trigger1 = time = 290
anim = 7007
pos = 50,-140
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 191, cosmo]
type = PlaySnd
trigger1 = time = 1
value = 5, 0

[State 191, pieces]
type = PlaySnd
trigger1 = time = 295
value = 5, 2

[State 191, flash]
type = EnvColor
trigger1 = time = 295
value = 255,255,255
under = 0
time = 3

[State 191, cloth1]
type = PlaySnd
trigger1 = animelem = 21
trigger2 = animelem = 25
trigger3 = animelem = 29
value = 4, 1

[State 191, cloth2]
type = PlaySnd
trigger1 = animelem = 23
trigger2 = animelem = 27
trigger3 = animelem = 31
value = 4, 2

[State 191, cloth3]
type = PlaySnd
trigger1 = animelem = 33
value = 4, 5

[State 191, cloth4]
type = PlaySnd
trigger1 = animelem = 35
value = 4, 6

[State 191, Land]
type = PlaySnd
trigger1 = animelem = 40
value = 2, 2

[State 191, Land]
type = Explod
trigger1 = animelem = 40
postype = p1
pos = 0,0
scale = 0.5,0.5
removetime = 16
sprpriority = 3
anim = 7081
ID = 7081

[State 191, voice]
type = PlaySnd
trigger1 = animelem = 17
value = 12, 1
channel = 0

[State 191, big light]
type = Explod
triggerall = NumExplod(70091) = 0
trigger1 = animelem = 17
anim = 70091
ID = 70091
pos = 0,-108
postype = p1
sprpriority = 5
ignorehitpause = 1
bindtime = -1
persistent = 0
ownpal = 1
removeongethit = 1

[State 191, cosmo]
type = Explod
trigger1 = time = 387
anim = 1913
ID = 1913
pos = 0,0
postype = p1
sprpriority = -1
bindtime = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 143
supermovetime = 143

[State 191, constellation]
type = Explod
trigger1 = time = 392
anim = 6000
ID = 6000
pos = 0,-50
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
scale = 0.5,0.5

[State 191, constellation cosmo]
type = Explod
trigger1 = time = 425
anim = 6001
ID = 6001
pos = 0,-50
postype = p1
sprpriority = -5
ignorehitpause = 1
ownpal = 1
removetime = 115
scale = 0.5,0.5
supermovetime = 115

[State 191, constellation bling]
type = PlaySnd
trigger1 = time = 392
value = 5, 1

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

[State 191, Stand]
type = ChangeState
trigger1 = time = 540
value = 0
ctrl = 0

;---------------------------------------
; Intro 2 (jump)
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, 1]
type = ChangeAnim
trigger1 = RoundState = 0
value = 192

[State 192, 2]
type = AssertSpecial
trigger1 = time = [0,120]
flag = Intro

[State 192, 3]
type = AssertSpecial
trigger1 = time = [0,60]
flag = nobardisplay

[State 192, Jump]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 1

[State 192, Land]
type = PlaySnd
trigger1 = animelem = 53
value = 2, 2

[State 192, Land]
type = Explod
trigger1 = animelem = 53
postype = p1
pos = 0,0
scale = 0.5,0.5
removetime = 16
sprpriority = 3
anim = 7081
ID = 7081

[State 192, Land2]
type = PlaySnd
trigger1 = animelem = 54
value = 3, 0

[State 192, Voice]
type = PlaySnd
triggerall = p2name != "ankokudragon"
triggerall = p4name != "ankokudragon"
trigger1 = animelem = 55
value = 13, 4

[State 192, Voice vs Black Dragon]
type = PlaySnd
triggerall = p2name = "ankokudragon" || p4name = "ankokudragon"
trigger1 = animelem = 55
value = 13, 16

[State 192, Mouth]
type = Explod
triggerall = p2name != "ankokudragon"
triggerall = p4name != "ankokudragon"
trigger1 = animelem = 55
anim = 186
ID = 186
pos = 0,0
postype = p1
bindtime = 50
sprpriority = 10
removetime = 50
removeongethit = 1

[State 192, Mouth vs Black Dragon]
type = Explod
triggerall = p2name = "ankokudragon" || p4name = "ankokudragon"
trigger1 = animelem = 55
anim = 186
ID = 186
pos = 0,0
postype = p1
bindtime = 40
sprpriority = 10
removetime = 40
removeongethit = 1

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
type = ChangeState
trigger1 = animtime = 0
value = 0

;---------------------------------------
; Intro 3 (gold cloth)
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 0]
type = ChangeState
triggerall = time = 0
trigger1 = stagevar(info.name) = "Death Valley Cliff (Part 2)"
trigger2 = stagevar(info.name) = "Burrone della Valle della Morte (Part 2)"
value = 192

[State 193, 1]
type = AssertSpecial
trigger1 = time = [0,280]
flag = Intro

[State 193, 2]
type = AssertSpecial
trigger1 = time = [0,250]
flag = nobardisplay

[State 193, goldcloth1]
type = Explod
trigger1 = time = 180
anim = 1930
pos = 44,4
postype = p1
sprpriority = 3
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 193, goldshining1]
type = Explod
trigger1 = time = 100
anim = 8040
ID = 8040
postype = p1
pos = 62,-92
scale = 0.5,0.5
bindtime = 1
removetime = 16
sprpriority = 3

[State 193, goldshining2]
type = Helper
trigger1 = time = 195
name ="Goldshining"
ID = 8040
stateno = 8040
pos = 66,-4
postype = p1
ownpal = 1
persistent = 1
size.xscale = 0.5
size.yscale = 0.5

[State 193, voice]
type = PlaySnd
trigger1 = time = 0
value = 13, 5

[State 193, voice]
type = PlaySnd
trigger1 = time = 200
trigger2 = time = 204
value = 4, 0

[State 193, 3]
type = Explod
trigger1 = time = 200
postype = p1
pos = 56,2
scale = 0.3,0.3
bindtime = 1
removetime = 16
sprpriority = 3
anim = 7081
ID = 7081

[State 193, 4]
type = Explod
trigger1 = time = 204
postype = p1
pos = 60,2
scale = 0.3,0.3
bindtime = 1
removetime = 16
sprpriority = 3
anim = 7081
ID = 7081

[State 193, Mouth]
type = Explod
trigger1 = time = 0
anim = 186
ID = 186
pos = 10,1
postype = p1
bindtime = 120
sprpriority = 10
removetime = 120
removeongethit = 1

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

[State 193, 5]
type = ChangeState
trigger1 = time = 280
value = 0

;---------------------------------------
; Intro 4 (vs Shiryu)
[Statedef 194]
type = S
ctrl = 0
anim = 198
velset = 0,0

[State 194, 1]
type = AssertSpecial
trigger1 = time = [0,570]
flag = Intro

[State 194, 2]
type = AssertSpecial
trigger1 = time = [0,540]
flag = nobardisplay

[State 194, Mouth]
type = Explod
trigger1 = animtime = 5
anim = 186
ID = 186
pos = 0,0
postype = p1
bindtime = 250
sprpriority = 10
removetime = 250
removeongethit = 1

[State 194, Mouth]
type = Explod
trigger1 = animtime = 280
anim = 186
ID = 186
pos = -2,4
postype = p2
bindtime = 320
sprpriority = 10
removetime = 290
removeongethit = 1

[State 194, voice]
type = PlaySnd
trigger1 = time = 0
value = 13, 6

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
trigger1 = time = 570
value = 0

;---------------------------------------
; Intro 5 (vs Ikki)
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 195, 1]
type = AssertSpecial
trigger1 = time = [0,350]
flag = Intro
flag2 = nobardisplay

[State 195, voice]
type = PlaySnd
trigger1 = time = 118
value = 13, 17

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

[State 195, 3]
type = ChangeState
trigger1 = time = 350
value = 0

;---------------------------------------
; Intro 7 (Round > 1)
[Statedef 196]
type = S
ctrl = 0
anim = 198
velset = 0,0

[State 196, 1]
type = AssertSpecial
trigger1 = time = [0,180]
flag = Intro
flag2 = nobardisplay

[State 196, Mouth]
type = Explod
trigger1 = animelem = 2
anim = 186
ID = 186
pos = 0,0
postype = p1
bindtime = 65
sprpriority = 10
removetime = 65
removeongethit = 1

[State 196, voice]
type = PlaySnd
trigger1 = animelem = 1
value = 13, 3
channel = 0

[State 196, 2]
type = PlaySnd
trigger1 = time = 180
value = 3, 1

[State 196, 3]
type = ChangeState
trigger1 = time = 180
value = 0

;---------------------------------------
; Provoking (state decider)
[Statedef 199]
type = S
ctrl = 0
velset = 0,0

[State 199]
type = VarRandom
trigger1 = time = 0
v = 2
range = 0,99

; Provoking 1
[State 199]
type = ChangeState
trigger1 = var(2) = [0,49]
value = 197

; Provoking 2
[State 199]
type = ChangeState
trigger1 = var(2) = [50,99]
value = 198

;---------------------------------------
; Provoking 1
[Statedef 197]
type = S
ctrl = 0
anim = 198
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 197, Mouth]
type = Explod
trigger1 = animelem = 2
anim = 186
ID = 186
pos = 0,0
postype = p1
bindtime = 120
sprpriority = 10
removetime = 120
removeongethit = 1

[State 197, voice]
type = PlaySnd
trigger1 = animelem = 1
value = 13, 7
channel = 0

[State 197]
type = ChangeState
trigger1 = time = 150
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 1978
ctrl = 1

;---------------------------------------
; Provoking 2
[Statedef 198]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 198, Mouth]
type = Explod
trigger1 = animelem = 2
anim = 186
ID = 186
pos = 12,1
postype = p1
bindtime = 90
sprpriority = 10
removetime = 90
removeongethit = 1

[State 198, voice]
type = PlaySnd
trigger1 = animelem = 1
value = 13, 8
channel = 0

[State 198]
type = ChangeState
trigger1 = time = 120
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 1978
ctrl = 1

;---------------------------------------
; Provoking (end)
[Statedef 1978]
type = S
ctrl = 0
anim = 197
velset = 0,0
movetype = I
physics = S
sprpriority = 2
poweradd = 0

[State 1978]
type = RemoveExplod
trigger1 = animelem = 1
ID = 186

[State 1978]
type = PlaySnd
trigger1 = animelem = 1
value = 3, 1

[State 1978]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Light Punch
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
type = PlaySnd
trigger1 = time = 1
value = 0, 0

[State 200 , 2]
type = HitDef
trigger1 = animelem = 4
priority = 3
attr = S, NA
damage = 20
animtype = light
guardflag = MA
sparkno = s7000
sparkxy = -10,-90
hitsound = s1, 0
guardsound = s6, 0
pausetime = 8,8
ground.hittime = 10
ground.type = high
ground.slidetime = 5
ground.velocity = -4
air.velocity = -1.4,-3
getpower = 0
givepower = 0

[State 200, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Medium Punch
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

[State 210, Width]
type = Width
trigger1 = (animelemtime (2) >= 0) && (animelemtime (7) < 0)
value = 15,0

[State 210, 1]
type = PlaySnd
trigger1 = time = 5
value = 0, 1

[State 210, 2]
type = HitDef
trigger1 = animelem = 5
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = s7001
sparkxy = -20,-90
hitsound = s1, 1
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4
getpower = 0
givepower = 0

[State 210, 4]
type = SprPriority
trigger1 = animelem = 5
value = 2

[State 210, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Heavy Punch
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 220
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = time = 5
value = 0, 2

[State 220, Velset]
type = VelSet
trigger1 = animelem = 6
x = 13

[State 220, 2]
type = HitDef
trigger1 = animelem = 6
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-75
hitsound = s1, 2
guardsound = s6, 0
ground.type = high
ground.slidetime = 20
ground.hittime  = 23
ground.velocity = -7.5
air.velocity = -4,-2
envshake.time =  25
envshake.freq = 20
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

[State 220, 3]
type = Explod
trigger1 = animelem = 5
anim = 7084
pos = 25,-2
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 220, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Heavy Punch (close)
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 225
sprpriority = 2

[State 225, 1]
type = PlaySnd
trigger1 = time = 0
value = 0, 2

[State 225, friction]
type = VelMul
trigger1 = 1
x = 0.5

[State 225, 2]
type = HitDef
triggerall = p2stateno != 5050
trigger1 = time = 0
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -5,-120
hitsound = s1, 2
guardsound = s6, 0
ground.type = high
ground.slidetime = 16
ground.hittime  = 18
ground.velocity = -1.5,-8
air.velocity = -1.3,-6
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
fall = 1
air.fall = 1
getpower = 0
givepower = 0

[State 225, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Light Kick
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
trigger1 = time = 2
value = 0, 1

[State 230, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = light
damage    = 20
guardflag = MA
pausetime = 0,8
sparkno = s7000
sparkxy = -10,-105
hitsound = s1, 1
guardsound = s6, 0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -7
air.velocity = -3,-2
getpower = 0
givepower = 0

[State 230, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Light Kick (close)
[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 235
sprpriority = 2

[State 235, 1]
type = PlaySnd
trigger1 = time = 5
value = 0, 0

[State 235, 2]
type = PosAdd
trigger1 = animelem = 3
x = 5

[State 235, 3]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Light
damage    = 20
guardflag = MA
pausetime = 2,9
sparkno = s7000
sparkxy = -25,-50
hitsound = s1, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
getpower = 0
givepower = 0

[State 235, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Medium Kick
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 3,0
anim = 240
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = time = 2
value = 0, 1

[State 240, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 9,9
sparkno = s7001
sparkxy = -5,-95
hitsound = s1, 1
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-2
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 240, 3]
type = Explod
trigger1 = animelem = 3
pos = 18,-3
anim = 7080
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Heavy Kick
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
trigger1 = time = 2
value = 0, 2

[State 250, 2]
type = PlaySnd
trigger1 = animelem = 7
value = 0, 1

[State 250, 3]
type = HitDef
trigger1 = animelem = 5
attr = S, NA
animtype  = hard
damage    = 15
guardflag = MA
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-90
hitsound = s1, 1
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15 
envshake.freq = 15    
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

[State 250, 3]
type = HitDef
trigger1 = animelem = 8
attr = S, NA
animtype  = hard
damage    = 25
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-90
hitsound = s1, 2
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
fall = 1
getpower = 0
givepower = 0

[State 250, powter]
type = Explod
trigger1 = animelem = 3
trigger2 = animelem = 9
pos = 38,-4
anim = 7080
sprpriority = 5
removeongethit = 1
ownpal = 1
ignorehitpause = 0

[State 250, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Heavy Kick (close)
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

[State 255, 1]
type = PlaySnd
trigger1 = time = 1
value = 0, 2

[State 255, 2]
type = HitDef
trigger1 = animelem = 5
attr = S, NA
animtype  = Medium
damage    = 40
guardflag = MA
pausetime = 9,9
sparkno = s7002
sparkxy = -5,-95
hitsound = s1, 2
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-2
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 255, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Crouching Light Punch
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
trigger1 = time = 1
value = 0, 0

[State 400, 2]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 20
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 10,11
sparkno = s7000
sparkxy = -10,-42
hitsound = s1, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -4
air.velocity = -1.5,-3
getpower = 0
givepower = 0

[State 400, 3]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouching Medium Punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = time = 1
value = 0, 1

[State 410, 2]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 30
priority  = 3
animtype  = medium
hitflag = MAF
guardflag = LA
pausetime = 10,11
sparkno = s7001
sparkxy = -10,-50
hitsound = s1, 1
guardsound = s6, 0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -4
air.velocity = -4,-1
getpower = 0
givepower = 0

[State 410, 3]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouching Heavy Punch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 420
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = time = 1
value = 0, 2

[State 420, 2]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 40
animtype  = hard
hitflag = MAFD
guardflag = LA
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-45
hitsound = s1, 2
guardsound = s6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4
envshake.time =  15 
envshake.freq = 15    
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

[State 420, 3]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouching Light Kick
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
trigger1 = time = 1
value = 0, 0

[State 430, 2]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MAFD
guardflag = LA
pausetime = 12,12
sparkno = s7000
sparkxy = 0,-2
hitsound = s1, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 10
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20
getpower = 0
givepower = 0

[State 430, 3]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouching Medium Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

[State 440, 1]
type = PlaySnd
trigger1 = time = 2
value = 0, 1

[State 440, 2]
type = Explod
trigger1 = time = 0
anim = 7089
sprpriority = 0
scale = 0.5,0.5
postype = p1
pos = -5,5
bindtime = 1
ownpal = 1

[State 440, 3]
type = velset
trigger1 = animelem = 1
x = 15

[State 440, 4]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 1

[State 440, 5]
type = Explod
trigger1 = animelem = 3
anim = 7080
pos = -10,-4
postype = p1
sprpriority = 5
ownpal = 1
ignorehitpause = 0

[State 440, 6]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 30
animtype  = medium
hitflag = MAFD
guardflag = LA
pausetime = 12,12
sparkno = s7001
sparkxy = 0,-2
hitsound = s1, 1
guardsound = s6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
down.velocity = -5,0
down.hittime = 20
getpower = 0
givepower = 0

[State 440, 7]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouching Heavy Kick
[Statedef 450]
type    = C
movetype= A
physics = C
velset = 0,0
juggle  = 7
poweradd= 50
ctrl = 0
anim = 450
sprpriority = 2

[State 450, 1]
type = PlaySnd
trigger1 = time = 1
value = 0, 2

[State 450, 2]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 40
hitflag = MAFD
guardflag = LA
pausetime = 12,12
sparkno = s7002
sparkxy = 0,0
hitsound = s1, 2
guardsound = s6, 0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5
fall = 1
getpower = 0
givepower = 0

[State 450, 3]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---------------------------------------
; Jumping Light Punch
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
trigger1 = time = 1
value = 0, 0

[State 600, 2]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 20
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s7000
sparkxy = -10,-70
hitsound = s1, 0
guardsound = s6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 600, 3]
type = CtrlSet
trigger1 = time = 30
value = 1

;---------------------------------------
; Jumping Medium Punch
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = time = 2
value = 0, 1

[State 610, 2]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage = 30
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7001
sparkxy = -5,-60
hitsound = s1, 1
guardsound = s6, 0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
getpower = 0
givepower = 0

[State 610, 3]
type = CtrlSet
trigger1 = time = 17
value = 1

;---------------------------------------
; Jumping Heavy Punch
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 620
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = time = 2
value = 0, 2

[State 620, 2]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage = 40
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-100
hitsound = s1, 2
guardsound = s6, 0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
envshake.time =  15
envshake.freq = 15    
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

[State 620, 3]
type = CtrlSet
trigger1 = time = 36
value = 1

;---------------------------------------
; Jumping Light Kick
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
trigger1 = time = 1
value = 0, 0

[State 630, 2]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage = 20
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7000
sparkxy = -10,-58
hitsound = s1, 0
guardsound = s6, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3
getpower = 0
givepower = 0

[State 630, 3]
type = CtrlSet
trigger1 = time = 35
value = 1

;---------------------------------------
; Jumping Medium Kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 640
sprpriority = 2

[State 640, 1]
type = PlaySnd
trigger1 = time = 2
value = 0, 1

[State 640, 2]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage = 30
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7001
sparkxy = -10,-50
hitsound = s1, 1
guardsound = s6, 0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4
getpower = 0
givepower = 0

[State 640, 3]
type = CtrlSet
trigger1 = time = 38
value = 1

;---------------------------------------
; Jumping Heavy Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 650
sprpriority = 2

[State 650, 1]
type = PlaySnd
trigger1 = time = 2
value = 0, 2

[State 650, 2]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage = 40
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7002
sparkxy = -10,-52
hitsound = s1, 2
guardsound = s6, 0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 650, 3]
type = CtrlSet
trigger1 = time = 11
value = 1

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

;---------------------------------------
; Combo
[Statedef 830]
type    = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 830
sprpriority = 2
poweradd = 50

[State 830, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,11
channel = 0

[State 830, 2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
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
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
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

[State 830, 1]
type = HitDef
trigger1 = AnimElem = 14
attr = S, NT
hitflag = M-
guardflag = MA
priority = 3, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 840
p2stateno = 850
guard.dist = 0
fall = 1
getpower = 0
givepower = 0

[State 850, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------
; Combo (p1 state)
[Statedef 840]
type    = S
movetype= A
physics = N
anim = 840

[State 840, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 840, 2]
type = Width
trigger1 = animelemtime(1) >= 0
edge = 0,60

[State 840, 3]
type = Explod
trigger1 = animelem = 2
anim = 7081
ID = 7081
postype = p2
pos = 0,0
scale = 0.5,0.5
bindtime = 1
removetime = 16
sprpriority = 3

;------------------------------------------------------

[State 840, 4]
type = TargetBind
trigger1 = animelemtime(2) < 0
pos = 45, -5

[State 840, 5 Grab Sound]
type = PlaySnd
trigger1 = animelem = 2
value = 8, 0

[State 840, 6 Voice]
type = PlaySnd
trigger1 = animelem = 3
value = 13, 10

[State 840, 7]
type = PlaySnd
trigger1 = animelem = 5
value = 0, 1

[State 840, 8]
type = PlaySnd
trigger1 = animelem = 6
value = 1, 5

[State 840, 9]
type = TargetLifeAdd
trigger1 = animelem = 6
value = -60

[State 840, 10]
type = Explod
trigger1 = animelem = 6
postype = p2
pos = 0,-120
bindtime = 1
removetime = 16
sprpriority = 3
anim = 7002
ID = 7002

[State 840, 11 Blood]
type = Explod
trigger1 = animelem = 6
postype = p2
pos = 0,-120
bindtime = 1
removetime = 33
sprpriority = 3
scale = .5,.5
anim = 7075
ID = 7075

[State 840, 12 State End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------
; Combo (p2 state)
[Statedef 850]
type    = A
movetype= H
physics = N
velset = 0,0

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 850

[State 850, 2]
type = HitBy
trigger1 = 1
value = SCA
time = 1

[State 850, 3]
type = Changestate
trigger1 = animtime = 0
value = 851
ctrl = 0

;------------------------------------------------------

[Statedef 851]
type = A
movetype = H
physics = N

[State 851, 1]
type = Velset
trigger1 = time = 0
x = 0
y = -5

[State 851, 2]
type = Changeanim2
trigger1 = time >= 0
value = 851

[State 851, 3]
type = Changestate
trigger1 = hitshakeover = 1
value =  852

;------------------------------------------------------

[Statedef 852]
type = A
movetype = H
physics = N
velset = -1.7,-11

[State 852, 1]
type = Veladd
trigger1 = time > 0
y = .4

[State 852, 2]
type = Selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100

;---------------------------------------
; Cosmo Charge (start)
[Statedef 900]
type = S
movetype = I
physics = S
anim = 900
velset = 0,0
ctrl = 0

[State 900, var]
type = VarSet
triggerall = var(59) = 1
trigger1 = time = 0
v = 10
value = 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 9, 1

[State 900, voice]
type = PlaySnd
trigger1 = animelem = 1
value = 13, 2
channel = 0

[State 900, shake]
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

[State 901, sound]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

[State 901, StopSnd]
type = StopSnd
trigger1 = animelem = 6
channel = 0

[State 901, ground charge]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = 1
anim = 7010
ID = 7010
pos = 0,0
sprpriority = -3
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
removeongethit = 1
bindtime = -1
ownpal = 1
scale = .9, .9

[State 901, constellation]
type = Explod
trigger1 = animelem = 1
anim = 6000
ID = 6000
pos = 0,-50
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
removeongethit = 1
scale = 0.5,0.5
bindtime = -1

[State 901, constellation cosmo]
type = Explod
trigger1 = animelem = 1
anim = 6001
ID = 6001
pos = 0,-50
postype = p1
sprpriority = -5
ignorehitpause = 1
ownpal = 1
removeongethit = 1
removetime = 32
scale = 0.5,0.5
bindtime = -1

[State 901, big light]
type = Explod
triggerall = NumExplod(7030) = 0
trigger1 = 1
anim = 7030
ID = 7030
pos = 0,5
sprpriority = -5
ignorehitpause = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = -1
ownpal = 1
scale = .6,.6

[State 901, big light2]
type = Explod
triggerall = NumExplod(7031) = 0
trigger1 = 1
anim = 7031
ID = 7031
pos = 0,6
sprpriority = -5
ignorehitpause = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = -1
ownpal = 1
scale = .6,.6
vfacing = -1

[State 901]
type = PowerAdd
trigger1 = time > 0
value = 5

[State 901, cosmo]
type = Explod
triggerall = NumExplod(903) = 0
trigger1 = 1
pos = 0,0
anim = 903
sprpriority = -1
removeongethit = 1
bindtime = 1
ownpal = 1
ID = 903

[State 901]
type = ChangeState
triggerall = var(59) = 0
trigger1 = command != "charge1"
trigger2 = command != "charge2"
value = 902

[State 901, End]
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

[State 902, Var]
type = VarSet
trigger1 = time = 0
v = 10
value = 0

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(6000) >= 1
trigger1 = time = 0
ID = 6000

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(6001) >= 1
trigger1 = time = 0
ID = 6001

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7030) >= 1
trigger1 = time = 0
ID = 7030

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7031) >= 1
trigger1 = time = 0
ID = 7031

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7020) >= 1
trigger1 = time = 0
ID = 7020

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(903) >= 1
trigger1 = time = 0
ID = 903

[State 902, shine]
type = PalFX
triggerAll = Power >= 3000
trigger1 = time = 1
time = 15
add = 0,0,0
sinadd = 200,20,200,3

[State 902, shake]
type = EnvShake
triggerall = power >= 3000
trigger1 = time = 0
time = 64

[State 902]
type = PlaySnd
triggerAll = Power >= 3000
trigger1 = time = 1
value = 9, 3

[State 902, StopSnd]
type = StopSnd
trigger1 = time = 1
channel = 0

[State 902]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Special Moves (Statedef 1000-2999)
;------------------------------------------------------------------------------

; Weakening Combo 1
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 1000, 1]
type = PlaySnd
trigger1 = time = 8
value = 0, 2

[State 1000, 2]
type = PlaySnd
trigger1 = animelem = 1
value = 2, 1

[State 1000, 3]
type = VelSet
trigger1 = animelem = 2
x = 15

[State 1000, powter]
type = Explod
trigger1 = animelem = 2
pos = 30,0
anim = 7085
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 1000, Afterimage]
type = AfterImage
trigger1 = time = 0
time = 20
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 98,98,98
PalAdd = 0,0,0
PalMul =  1,1,1
Trans = add1

[State 1000, 4]
type = HitDef
triggerall = p2stateno != 1028
trigger1 = time = 0
attr = S, SA
animtype  = Hard
damage    = 40,4
priority  = 4
guardflag = MA
pausetime = 8,7
sparkxy = -20,-80
sparkno = s7002
hitsound   = s1,4
guardsound = s6, 0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -9
guard.velocity = -11
air.velocity = -9,-4
airguard.velocity = -9, -4
p2facing = 1        ;Force to face p1
getpower = 0
givepower = 0

[State 1000, 5]
type = ChangeState
trigger1 = animtime = 0
value = 1001
ctrl = 1

;---------------------------------------
; Weakening Combo 1 (part 2)
[Statedef 1001]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
velset = 0,0
anim = 1001
ctrl = 0
sprpriority = 2

[State 1001, 1]
type = PlaySnd
trigger1 = time = 9
value = 0, 2

[State 1001, Afterimage]
type = AfterImage
trigger1 = time = 0
time = 20
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 98,98,98
PalAdd = 0,0,0
PalMul =  1,1,1
Trans = add1

[State 1001, 2]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = Hard
damage    = 50,5
priority  = 4
guardflag = MA
pausetime = 8,7
sparkxy = -30,-100
sparkno = s7003
hitsound   = s1,11
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,-2
airguard.velocity = -5, -4
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 1001, Blood]
type = Explod
trigger1 = Movehit = 1
postype = p2
pos = 0,-100
bindtime = 1
removetime = 18
sprpriority = 3
scale = 1,1
anim = 7071
ID = 7071
removeongethit = 1

[State 1001, Removeexplod]
type = RemoveExplod
triggerall = NumExplod(7071) >= 1
trigger1 = animelem = 7
ID = 7071

[State 1001, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Weakening Combo 2 (part 1)
[Statedef 1010]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1010
ctrl = 0
sprpriority = 2

[State 1010, 1]
type = PlaySnd
trigger1 = time = 8
value = 0, 2

[State 1010, 2]
type = PlaySnd
trigger1 = animelem = 1
value = 2, 1

[State 1010, 3]
type = PlaySnd
trigger1 = animelem = 5
value = 5, 3

[State 1010, Teleport]
type = PosAdd
trigger1 = animelem = 7
x = 200
y = 0

[State 1010, Turn]
type = Turn
trigger1 = p2dist X < 0

[State 1010, 4]
type = VelSet
trigger1 = animelem = 2
x = 8

[State 1010, powter]
type = Explod
trigger1 = time = 0
pos = 30,0
anim = 7085
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 1010, Afterimage]
type = AfterImage
trigger1 = time = 0
time = 20
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 98,98,98
PalAdd = 0,0,0
PalMul =  1,1,1
Trans = add1

[State 1010, 5]
type = HitDef
triggerall = p2stateno != 1028
trigger1 = time = 0
attr = S, SA
animtype  = Hard
damage    = 40,4
priority  = 4
guardflag = MA
pausetime = 8,7
sparkxy = -20,-80
sparkno = s7002
hitsound   = s1,3
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,-2
airguard.velocity = -5, -4
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 1010, 7]
type = ChangeState
trigger1 = animtime = 0
value = 1011
ctrl = 1

;---------------------------------------
; Weakening Combo 2 (part 2)
[Statedef 1011]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
velset = 0,0
anim = 1011
ctrl = 0
sprpriority = 2

[State 1011, 1]
type = PlaySnd
trigger1 = time = 9
value = 0, 2

[State 1011, powter]
type = Explod
trigger1 = time = 0
pos = 30,0
anim = 7085
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 1011, Afterimage]
type = AfterImage
trigger1 = time = 0
time = 20
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 98,98,98
PalAdd = 0,0,0
PalMul =  1,1,1
Trans = add1

[State 1011, 2]
type = HitDef
triggerall = p2stateno != 1028
trigger1 = time = 0
attr = S, SA
animtype  = Hard
damage    = 50,5
priority  = 4
guardflag = MA
pausetime = 8,7
sparkxy = -30,-100
sparkno = s7003
hitsound   = s1,11
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,-2
airguard.velocity = -5, -4
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 1011, Blood]
type = Explod
trigger1 = Movehit = 1
postype = p2
pos = 0,-100
bindtime = 1
removetime = 18
sprpriority = 3
scale = 1,1
anim = 7071
ID = 7071
removeongethit = 1

[State 1011, Removeexplod]
type = RemoveExplod
triggerall = NumExplod(7071) >= 1
trigger1 = animelem = 7
ID = 7071

[State 1011, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Weakening Combo 3 (part 1)
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1010
ctrl = 0
sprpriority = 2

[State 1020, 1]
type = PlaySnd
trigger1 = time = 8
value = 0, 2

[State 1020, 2]
type = PlaySnd
trigger1 = animelem = 1
value = 2, 1

[State 1020, 3]
type = PlaySnd
trigger1 = animelem = 5
value = 5, 3

[State 1020, Teleport]
type = PosAdd
trigger1 = animelem = 7
x = 200
y = 0

[State 1020, Turn]
type = Turn
trigger1 = p2dist X < 0

[State 1020, 4]
type = VelSet
trigger1 = animelem = 2
x = 8

[State 1020, powter]
type = Explod
trigger1 = time = 0
pos = 30,0
anim = 7085
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 1020, Afterimage]
type = AfterImage
trigger1 = time = 0
time = 20
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 98,98,98
PalAdd = 0,0,0
PalMul =  1,1,1
Trans = add1

[State 1020, 5]
type = HitDef
triggerall = p2stateno != 1028
trigger1 = time = 0
attr = S, SA
animtype  = Hard
damage    = 20,2
priority  = 4
guardflag = MA
pausetime = 8,7
sparkxy = -20,-80
sparkno = s7002
hitsound   = s1,3
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,-2
airguard.velocity = -5, -4
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 1020, 6]
type = ChangeState
trigger1 = animtime = 0
value = 1021
ctrl = 1

;---------------------------------------
; Weakening Combo 3 (part 2)
[Statedef 1021]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
velset = 0,0
anim = 1011
ctrl = 0
sprpriority = 2

; Twin
[State 1021, ChangeAnim]
type = ChangeAnim
triggerall = var(22) = 1
trigger1 = time = 0
value = 2014
persistent = 0

[State 1021, 1]
type = PlaySnd
trigger1 = time = 9
value = 0, 2

[State 1021, 2]
type = PlaySnd
trigger1 = animelem = 1
value = 2, 1

[State 1021, 3]
type = PlaySnd
trigger1 = animelem = 5
value = 5, 3

[State 1021, Teleport]
type = PosAdd
trigger1 = animelem = 7
x = 200
y = 0

[State 1021, Turn]
type = Turn
trigger1 = p2dist X < 0

[State 1021, Afterimage]
type = AfterImage
trigger1 = time = 0
time = 20
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 98,98,98
PalAdd = 0,0,0
PalMul =  1,1,1
Trans = add1

[State 1021, 5]
type = HitDef
triggerall = p2stateno != 1028
trigger1 = time = 0
attr = S, SA
animtype  = Hard
damage    = 20,2
priority  = 4
guardflag = MA
pausetime = 8,7
sparkxy = -30,-100
sparkno = s7003
hitsound   = s1,11
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,-2
airguard.velocity = -5, -4
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 1011, Blood]
type = Explod
trigger1 = Movehit = 1
postype = p2
pos = 0,-100
bindtime = 1
removetime = 18
sprpriority = 3
scale = 1,1
anim = 7071
ID = 7071
removeongethit = 1

[State 1011, Removeexplod]
type = RemoveExplod
triggerall = NumExplod(7071) >= 1
trigger1 = animelem = 7
ID = 7071

[State 1021, 6]
type = ChangeState
trigger1 = animtime = 0
value = 1022
ctrl = 1

;---------------------------------------
; Weakening Combo 3 (part 3)
[Statedef 1022]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
velset = 0,0
anim = 1012
ctrl = 0
sprpriority = 2

[State 1022, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 12, 1
channel = 0

[State 1022, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 0, 2

[State 1022, 1]
type = PlaySnd
trigger1 = animelem = 10
value = 0, 1

[State 1022, 2]
type = VelSet
trigger1 = animelem = 2
x = 8

[State 1022, VelAdd]
type = VelAdd
trigger1 = animelem = 8
x = 8

[State 1022, powter]
type = Explod
trigger1 = time = 0
pos = 30,0
anim = 7085
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 1022, Afterimage]
type = AfterImage
trigger1 = time = 0
time = 50
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 98,98,98
PalAdd = 0,0,0
PalMul =  1,1,1
Trans = add1

[State 1022, 3]
type = HitDef
triggerall = p2stateno != 1028
trigger1 = animelem = 5
attr = S, SA
animtype  = Hard
damage    = 20,2
priority  = 4
guardflag = MA
pausetime = 8,7
sparkxy = -20,-80
sparkno = s7002
hitsound   = s1,4
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
guard.velocity = -7
air.velocity = -5,-2
airguard.velocity = -5, -4
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 1022, 3]
type = HitDef
triggerall = p2stateno != 1028
trigger1 = animelem = 11
attr = S, SA
animtype  = Hard
damage    = 30,3
priority  = 4
guardflag = MA
pausetime = 8,7
sparkxy = -5,-120
sparkno = s7002
hitsound   = s1,5
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8,-7
guard.velocity = -7
air.velocity = -8,-7
airguard.velocity = -5, -4
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
fall = 1
p2stateno = 1025    ;Make p2 go to state 1025 on hit
p2facing = 1        ;Force to face p1
getpower = 0
givepower = 0

[State 1022, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------
; Hit by Weakening Combo - shaking from the hit
[Statedef 1025]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 1025

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1026

;---------------------------------------
; Hit by Weakening Combo - Flying through the air
; (a custom gethit state)
[Statedef 1026]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = VelSet
trigger1 = time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 1026, Gravity]
type = VelAdd
trigger1 = 1
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

;---------------------------------------
; Hit by Weakening Combo - Hit wall
; (a custom gethit state)
[Statedef 1027]
type    = A
movetype= H
physics = N

[State 1027, Turn]
type = Turn
trigger1 = (time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = time = 0
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

[State 1027, spark]
type = Explod
trigger1 = time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Anim]
type = ChangeAnim2
trigger1 = time = 0
value = 1027

[State 1027, Sound]
type = PlaySnd
trigger1 = time = 0
value = F7, 0

[State 1027, State]
type = ChangeState
trigger1 = animtime = 0
value = 1028

;---------------------------------------
; Hit by Weakening Combo - Bounce off wall
; (a custom gethit state)
[Statedef 1028]
type    = A
movetype= H
physics = N

[State 1028, 1]
type = NotHitBy
trigger1 = 1
value = , NA, NP

[State 1028, Vel Y]
type = VelSet
trigger1 = time = 0
y = -6

[State 1028, Vel X]
type = VelSet
trigger1 = time = 0
x = 1.6

[State 1028, Turn]
type = Turn
trigger1 = (time = 0) && (BackEdgeDist < 30)

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .35

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = time = 0
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
; Finger Flame \ Twin Attack 1
[Statedef 1100]
type = S
movetype = A
physics = S
anim = 1100
juggle = 5
ctrl = 0
velset = 0,0
poweradd = 100

[State 1100, voice]
type = PlaySnd
trigger1 = time = 0
value = 12, 2
channel = 0

; Twin
[State 1100]
type = ChangeAnim
triggerall = var(22) = 1
trigger1 = time = 0
value = 1130

[State 1100, StateTypeSet]
type = StateTypeSet
triggerall = var(22) = 1
trigger1 = time = 0
movetype = I

[State 1100, shine]
type = PalFX
triggerall = var(22) = 0
trigger1 = animelem = 4
time = 5
add = 0,0,0
sinadd = 250,150,250,3

[State 1100]
type = PlaySnd
triggerall = var(22) = 0
trigger1 = animelem = 5
value = 5, 5

[State 1100]
type = PlaySnd
triggerall = var(22) = 1
trigger1 = animelem = 5
value = 5, 3

[State 1100, spark]
type = Explod
triggerall = var(22) = 0
trigger1 = animelem = 6
anim = 7061
ID = 7061
pos = 18,-97
postype = p1
sprpriority = 2
removetime = 12
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 1100, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7061) >= 1
trigger1 = animelem = 7
ID = 7061

[State 1100]
type = Projectile
triggerall = var(22) = 0
triggerall = p2bodydist X > 120
trigger1 = animelem = 7
attr = C, SP
projanim = 8001
projhitanim = 7002
offset = 5, -97
velocity = 6,2
damage = 70,7
animtype = Hard
guardflag = LA
pausetime = 0,12
sparkno = s7002
sparkxy =  30,15
hitsound   = s5, 6
guardsound = s1, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
Projscale = .7 , .7
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10
Palfx.time = ifelse(p2statetype = A , 40 ,30)
Palfx.add           = 50,50,50
Palfx.mul           = 200,100,200
Palfx.sinadd        = 200,100,200,3
getpower = 0
givepower = 0

[State 1100]
type = Projectile
triggerall = var(22) = 0
triggerall = p2bodydist X <= 120
trigger1 = animelem = 7
attr = S, SP
projanim = 8001
projhitanim = 7002
offset = 5, -97
velocity = 6,2
damage = 70,7
animtype = Hard
guardflag = MA
pausetime = 0,12
sparkno = s7002
sparkxy =  30,15
hitsound   = s5, 6
guardsound = s1, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
Projscale = .7 , .7
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10
Palfx.time = ifelse(p2statetype = A , 40 ,30)
Palfx.add           = 50,50,50
Palfx.mul           = 200,100,200
Palfx.sinadd        = 200,100,200,3
getpower = 0
givepower = 0

[State 1100, flame]
type = Explod
triggerall = var(22) = 0
trigger1 = projhit = 1
persistent = 0
anim = 8035
pos = -7,-70
postype = p2
sprpriority = 2
bindtime = -1
ignorehitpause = 1
removetime = 35
ownpal = 0

; Twin
[State 1100, Twin]
type = Helper
triggerall = var(22) = 1
trigger1 = animelem = 7
stateno = 2011
ID = 2011
postype = p2
facing = 1
pos = -150, 5
ownpal = 1
pausemovetime = 1

[State 1100]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Twin - Twin Attack 1
[Statedef 2011]
type    = S
movetype= A
physics = S
juggle  = 6
anim = 2011
ctrl = 0
sprpriority = -5

[State 2011, PosSet]
type = PosSet
trigger1 = time >= 0
y = 0

[State 2011, Velset]
type = VelSet
trigger1 = time >= 1
x = 5

[State 2011]
type = HitDef
trigger1 = time = 0
attr = C, SP
animtype  = Hard
damage    = 70,3
guardflag = LA
pausetime = 1,15
sparkno = s7002
sparkxy =  20,-10
hitsound   = s1, 2
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1, -2
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 2011]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 20113

[State 2011]
type = ChangeState
trigger1 = movehit = 1
trigger2 = moveguarded = 1
value = 20111

[State 2011]
type = ChangeState
trigger1 = time = 30
value = 20112

;---------------------------------------
; Twin - Twin Attack 1 (hit)
[Statedef 20111]
type    = A
movetype= A
physics = S
juggle  = 6
anim = 20111
ctrl = 0
sprpriority = 8

[State 20111]
type = VelSet
trigger1 = time = 1
x = 0

[State 20111]
type = Destroyself
trigger1 = animtime = 0

;---------------------------------------
; Twin - Twin Attack 1 (end)
[Statedef 20112]
type    = A
movetype= A
physics = S
juggle  = 6
anim = 20112
ctrl = 0
sprpriority = 8

[State 20112]
type = VelSet
trigger1 = time = 1
x = 0

[State 20112]
type = HitDef
trigger1 = time = 0
attr = A, SP
animtype  = Hard
damage    = 70,4
guardflag = MA
pausetime = 1,15
sparkno = s7002
sparkxy =  0,10
hitsound   = s1, 2
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5, -2
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 20112]
type = Explod
triggerall = movehit = 0
trigger1 = time = 0
anim = 7002
ID = 7002
pos = 79,8
postype = p1
sprpriority = 10

[State 20112]
type = PlaySnd
triggerall = movehit = 0
trigger1 = time = 0
value = 1, 2

[State 20112]
type = Destroyself
trigger1 = animtime = 0

;---------------------------------------
; Twin - Twin Attack 1 (hitby)
[Statedef 20113]
type    = A
movetype= A
physics = S
juggle  = 6
anim = 20113
ctrl = 0
sprpriority = 8

[State 20113]
type = VelSet
trigger1 = time = 1
x = 0

[State 20113]
type = PlaySnd
trigger1 = time = 1
value = 10, 1

[State 20113]
type = Destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Finger Flame \ Twin Attack 2
[Statedef 1110]
type = S
movetype = A
physics = S
anim = 1110
juggle = 5
ctrl = 0
velset = 0,0
poweradd = 100

[State 1110, voice]
type = PlaySnd
trigger1 = time = 0
value = 12, 2
channel = 0

; Twin
[State 1110]
type = ChangeAnim
triggerall = var(22) = 1
trigger1 = time = 0
value = 1130

[State 1110, StateTypeSet]
type = StateTypeSet
triggerall = var(22) = 1
trigger1 = time = 0
movetype = I

[State 1110, shine]
type = PalFX
triggerall = var(22) = 0
trigger1 = animelem = 4
time = 5
add = 0,0,0
sinadd = 250,150,250,3

[State 1110]
type = PlaySnd
triggerall = var(22) = 0
trigger1 = animelem = 5
value = 5, 5

[State 1110]
type = PlaySnd
triggerall = var(22) = 1
trigger1 = animelem = 5
value = 5, 3

[State 1110]
type = PlaySnd
triggerall = var(22) = 1
trigger1 = animelem = 6
value = 0, 2

[State 1110, spark]
type = Explod
triggerall = var(22) = 0
trigger1 = animelem = 6
anim = 7061
ID = 7061
pos = 33,-103
postype = p1
sprpriority = 2
removetime = 12
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 1110, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7061) >= 1
trigger1 = animelem = 7
ID = 7061

[State 1110]
type = Projectile
triggerall = var(22) = 0
trigger1 = animelem = 7
projanim = 8002
projhitanim = 7002
velocity = 6,0
offset = 30, -104
postype = p1
attr = S, SP
damage = 70,7
animtype = Hard
guardflag = MA
pausetime = 0,12
sparkno = s7002
sparkxy =  30,15
hitsound   = s5, 6
guardsound = s1, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
Projscale = .7 , .7
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10
Palfx.time = ifelse(p2statetype = A , 40 ,30)
Palfx.add           = 50,50,50
Palfx.mul           = 200,100,200
Palfx.sinadd        = 200,100,200,3
getpower = 0
givepower = 0

[State 1110, flame]
type = Explod
triggerall = var(22) = 0
trigger1 = projhit = 1
persistent = 0
anim = 8035
pos = -7,-70
postype = p2
sprpriority = 2
bindtime = -1
ignorehitpause = 1
removetime = 35
ownpal = 0

; Twin
[State 1110, Twin]
type = Helper
triggerall = var(22) = 1
trigger1 = animelem = 7
stateno = 2012
ID = 2012
postype = p2
facing = 1
pos = -150, 5
ownpal = 1
pausemovetime = 1

[State 1110]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Twin - Twin Attack 2
[Statedef 2012]
type    = S
movetype= A
physics = S
juggle  = 6
anim = 2012
ctrl = 0
sprpriority = -5

[State 2012, PosSet]
type = PosSet
trigger1 = time >= 0
y = 0

[State 2012, Velset]
type = VelSet
trigger1 = time >= 1
x = 5

[State 2012]
type = HitDef
trigger1 = time = 0
attr = A, SP
animtype  = Hard
damage    = 70,7
guardflag = MA
pausetime = 1,15
sparkno = s7002
sparkxy =  20,-90
hitsound   = s1,2
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1, -2
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 2012]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 20113

[State 2012]
type = ChangeState
trigger1 = movehit = 1
trigger2 = moveguarded = 1
value = 20121

[State 2012]
type = ChangeState
trigger1 = time = 30
value = 20122

;---------------------------------------
; Twin - Twin Attack 2 (hit)
[Statedef 20121]
type    = A
movetype= A
physics = S
juggle  = 6
anim = 20121
ctrl = 0
sprpriority = 8

[State 20121]
type = VelSet
trigger1 = time = 1
x = 0

[State 20121]
type = Destroyself
trigger1 = animtime = 0

;---------------------------------------
; Twin - Twin Attack 2 (end)
[Statedef 20122]
type    = A
movetype= A
physics = S
juggle  = 6
anim = 20121
ctrl = 0
sprpriority = 8

[State 20121]
type = VelSet
trigger1 = time = 1
x = 0

[State 20121]
type = Destroyself
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; Finger Flame \ Twin Attack 3
[Statedef 1120]
type = S
movetype = A
physics = S
anim = 1120
juggle = 5
ctrl = 0
velset = 0,0
poweradd = 100

[State 1120, voice]
type = PlaySnd
trigger1 = time = 0
value = 12, 2
channel = 0

; Twin
[State 1120, ChangeAnim]
type = ChangeAnim
triggerall = var(22) = 1
trigger1 = time = 0
value = 1130

[State 1120, StateTypeSet]
type = StateTypeSet
triggerall = var(22) = 1
trigger1 = time = 0
movetype = I

[State 1120, shine]
type = PalFX
triggerall = var(22) = 0
trigger1 = animelem = 1
time = 5
add = 0,0,0
sinadd = 250,150,250,3

[State 1120]
type = PlaySnd
triggerall = var(22) = 0
trigger1 = animelem = 2
value = 5, 5

[State 1120]
type = PlaySnd
triggerall = var(22) = 1
trigger1 = animelem = 3
value = 5, 3

[State 1120, spark]
type = Explod
triggerall = var(22) = 0
trigger1 = animelem = 3
anim = 7061
ID = 7061
pos = 37,-124
postype = p1
sprpriority = 2
removetime = 12
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 1120, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7061) >= 1
trigger1 = animelem = 4
ID = 7061

[State 1120, flame]
type = Explod
triggerall = var(22) = 0
trigger1 = animelem = 4
anim = 8003
ID = 8003
pos = 60,-150
postype = p1
sprpriority = 3
removetime = 44
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .7 , .7

[State 1120]
type = Projectile
triggerall = var(22) = 0
trigger1 = animelem = 4
attr = A, SP
projanim = 8005
projhitanim = 8004
projremanim = -1
projremove = 1
projremovetime = 44
offset = 60, -150
velocity = 0,0
damage = 70,7
animtype = Hard
guardflag = MA
pausetime = 0,12
sparkno = s7002
sparkxy =  30,15
hitsound   = s5, 6
guardsound = s1, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
Projscale = .7 , .7
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10
Palfx.time = ifelse(p2statetype = A, 40 ,30)
Palfx.add           = 50,50,50
Palfx.mul           = 200,100,200
Palfx.sinadd        = 200,100,200,3
getpower = 0
givepower = 0

[State 1120, flame]
type = Explod
triggerall = var(22) = 0
trigger1 = projhit = 1
persistent = 0
anim = 8035
pos = -7,-70
postype = p2
sprpriority = 2
bindtime = -1
ignorehitpause = 1
removetime = 35
ownpal = 0

; Twin
[State 1120, Twin]
type = Helper
triggerall = var(22) = 1
trigger1 = animelem = 7
stateno = 2013
ID = 2013
postype = p2
facing = 1
pos = -90, -180
ownpal = 1
pausemovetime = 1

[State 1120]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Twin - Twin Attack 3
[Statedef 2013]
type    = A
movetype= A
physics = S
juggle  = 6
anim = 2013
ctrl = 0
sprpriority = -5

[State 2013, Velset]
type = VelSet
trigger1 = time >= 1
y = 10

[State 2013]
type = HitDef
trigger1 = time = 0
attr = A, SP
animtype  = Hard
damage    = 70,3
guardflag = MA
pausetime = 1,15
sparkno = s7002
sparkxy =  0,10
hitsound   = s1,2
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1, -2
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 2013]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 20113

[State 2013]
type = ChangeState
trigger1 = movehit = 1
trigger2 = moveguarded = 1
value = 20131

[State 2013]
type = ChangeState
trigger1 = movehit = 0
trigger1 = Pos Y = 0
value = 20132

;---------------------------------------
; Twin - Twin Attack 3 (hit)
[Statedef 20131]
type    = A
movetype= A
physics = S
juggle  = 6
anim = 20131
ctrl = 0
sprpriority = 8

[State 20131]
type = VelSet
trigger1 = time = 2
y = 0

[State 20131]
type = Destroyself
trigger1 = animtime = 0

;---------------------------------------
; Twin - Twin Attack 3 (land)
[Statedef 20132]
type    = A
movetype= A
physics = S
juggle  = 6
anim = 20132
ctrl = 0
sprpriority = 8

[State 20132]
type = PosSet
trigger1 = time = 0
y = 0

[State 20132]
type = VelSet
trigger1 = time = 0
y = 0

[State 20132]
type = HitDef
trigger1 = time = 0
attr = A, SP
animtype  = Hard
damage    = 70,4
guardflag = MA
pausetime = 1,15
sparkno = s7002
sparkxy =  0,10
hitsound   = s1,2
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5, -2
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 20132]
type = Explod
triggerall = movehit = 0
trigger1 = time = 0
anim = 7002
ID = 7002
pos = 79,8
postype = p1
sprpriority = 10

[State 20132]
type = PlaySnd
triggerall = movehit = 0
trigger1 = time = 0
value = 1, 2

[State 20132]
type = Destroyself
trigger1 = animtime = 0

;---------------------------------------
; Flying Kick
[Statedef 1200]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1200

[State 1200]
type = PlaySnd
trigger1 = time = 0
value = 12, 0
channel = 0

[State 1200]
type = PlaySnd
trigger1 = time = 0
value = 2, 1

[State 1200]
type = PosFreeze
trigger1 = time = [0,3]

[State 1200]
type = AfterImage
trigger1 = time = 4
time = 20
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 98,98,98
PalAdd = 0,0,0
PalMul =  1,1,1
Trans = add1

[State 1200]
type = Velset
trigger1 = time = 4
x = 14
y = 8

[State 1200]
type = HitDef
trigger1 = time = 0
animtype = heavy
attr = A, SA
damage = 80,8
priority = 5
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkxy = 0, -10
sparkno = S7002
hitsound = s1, 2
guardsound = s6, 0
ground.type = Low
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -4
air.velocity = -1.2, -6
forcestand = 1
fall = 1
envshake.time = 10           
envshake.ampl = 7
envshake.freq = 100
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 1200]
type = Velset
trigger1 = pos Y >= 0
x = 0
y = 0

[State 1200]
type = ChangeState
trigger1 = pos Y >= 0
value = 50

;---------------------------------------
; Downward Kick (jump)
[Statedef 1201]
type = A
movetype = A
physics = N
juggle = 1
poweradd = 100
velset = 0,0
ctrl = 0
anim = 1201

[State 1201]
type = AfterImage
trigger1 = time = 1
time = 50
FrameGap = 2
length = 10
PalBright = 0, 0,0
PalContrast = 98,98,98
PalAdd = 0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1201]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

[State 1201]
type = Explod
trigger1 = animelem = 5
postype = p1
pos = 0,0
scale = 0.5,0.5 ;(scale = 1,1 for giant characters)
bindtime = 1
removetime = 26
sprpriority = 3
anim = 7089
ID = 7089

[State 1201]
type = Velset
trigger1 = animelem = 5
trigger1 = BackEdgeBodyDist = [0,20]
x = 2
y = -5

[State 1201]
type = Velset
trigger1 = animelem = 5
trigger1 = BackEdgeBodyDist = [20,70]
x = 2
y = -6

[State 1201]
type = Velset
trigger1 = animelem = 5
trigger1 = BackEdgeBodyDist >= 70
x = 2
y = -5

[State 1201]
type = Veladd
trigger1 = time = [11,20]
x = 0.1
y = 0.3

[State 1201]
type = ChangeState
trigger1 = time >= 20
value = 1202
ctrl = 1

;---------------------------------------
; Downward Kick (kick)
[Statedef 1202]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1202

[State 1202]
type = PlaySnd
trigger1 = time = 0
value = 2, 1

[State 1202]
type = AfterImage
trigger1 = time = 4
time = 20
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 98,98,98
PalAdd = 0,0,0
PalMul =  1,1,1
Trans = add1

[State 1202]
type = Velset
trigger1 = time = 4
x = 7
y = 8

[State 1202]
type = HitDef
trigger1 = time = 0
animtype = heavy
attr = C, SA
damage = 80,8
priority = 5
hitflag = MAFD
guardflag = L
pausetime = 10,10
sparkxy = 0, -20
sparkno = S7002
hitsound = s1, 2
guardsound = s6, 0
ground.type = Low
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -4
air.velocity = -1.2, -6
forcestand = 1
fall = 1
envshake.time = 10
envshake.ampl = 7
envshake.freq = 100
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 1202]
type = Velset
trigger1 = pos Y >= 0
x = 0
y = 0

[State 1202, PosSet]
type = PosSet
trigger1 = movehit = 1
y = 0

[State 1202]
type = ChangeState
trigger1 = movehit = 1
;trigger1 = pos Y >= 0
value = 1203

[State 1202]
type = PlaySnd
trigger1 = movehit = 0
trigger1 = pos Y >= 0
value = 2, 2

[State 1202]
type = ChangeState
trigger1 = movehit = 0
trigger1 = pos Y >= 0
value = 50

;---------------------------------------------------------------------------
; Downward Kick (end)
[Statedef 1203]
type    = A
physics = A
ctrl = 0
anim = 1203
sprpriority = 1

[State 1203, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

[State 1203, 2]
type = VelSet
trigger1 = time = 0
x = -5
y = -3

[State 1203, 3]
type = Explod
trigger1 = time = 5
pos = -5,15
anim = 70841
sprpriority = 5
removeongethit = 1
scale = 0.8,0.8
ownpal = 1

[State 1203, 4]
type = VelSet
trigger1 = time = 19
y = 0

[State 1203, 5]
type = PosSet
trigger1 = time = 19
y = 0

[State 1203, 6]
type = PlaySnd
trigger1 = animelem = 4
value = 2, 2

[State 1203, 7]
type = ChangeState
trigger1 = animelem = 4
value = 52

;--------------------------------------------------------------
; Finger Gust
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1300
ctrl = 0
sprpriority = 2

[State 1300, voice]
type = PlaySnd
trigger1 = time = 0
value = 12, 1
channel = 0

[State 1300, shine]
type = PalFX
trigger1 = animelem = 3
time = 5
add = 0,0,0
sinadd = 250,150,250,3

[State 1300]
type = PlaySnd
trigger1 = animelem = 5
value = 5, 4

[State 1300, spark]
type = Explod
trigger1 = animelem = 4
anim = 7062
ID = 7062
pos = 90,-79
postype = p1
sprpriority = 2
removetime = 12
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 1300, removeexplod]
type = RemoveExplod
triggerall = NumExplod(3678) >= 1
trigger1 = animelem = 7
ID = 7061

[State 1300, Mini Vortex]
type = Helper
trigger1 = animelem = 4
name ="Mini Vortex"
ID = 1301
stateno = 1301
pos = 50,-79
postype = p1
ownpal = 1

[State 1300]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Finger Gust (Mini Vortex)
[Statedef 1301]
type = A
movetype = A
physics = S
anim = 8006
sprpriority = 2

[State 1301, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1301, 1]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
trigger4 = animelem = 8
trigger5 = animelem = 10
attr = S, SP
animtype  = Heavy
damage    = 10, 1
priority  = 5
guardflag = MA
sparkno = -1
hitsound   = -1
ground.type = High
air.velocity = -2,-0.3
airguard.velocity = -1,-0.2
p2facing = 1
fall = 1
fall.recover = 0
fall.damage = 0
getpower = 0
givepower = 0

[State 1301, 2]
type = HitDef
trigger1 = animelem = 12
attr = S, SP
animtype  = Heavy
damage    = 10, 1
priority  = 5
guardflag = MA
sparkno = -1
hitsound   = -1
guardsound = s9,2
ground.type = High
air.velocity = -2,-0.3
airguard.velocity = -1,-0.2
p2facing = 1
fall = 1
fall.recover = 0
fall.damage = 0
getpower = 0
givepower = 0

[State 1301, 3]
type = DestroySelf
trigger1 = time > 40
trigger2 = movetype = H
trigger3 = parent,stateno != 1300

;---------------------------------------------
; Acrobatic Counter
[Statedef 1400]
type = S
physics = S
anim = 1400
juggle = 5
velset = 0,0
ctrl = 0

[State 1400, 1]
type = AfterImage
trigger1 = animelem = 1
length = 20
PalBright = 0, 0,0
PalContrast = 98,98,98
PalAdd = 0,0,0
PalMul =  1,1,1
timeGap = 1
FrameGap = 2
Trans = Add1
time = 5

[State 1400, 2]
type = PalFX
trigger1 = animelem = 4
time = 15
add = 0,0,0
sinadd = 200,100,200,3

[State 1400, 3]
type = PlaySnd
trigger1 = time = 1
value = 0, 1

[State 1400, 4]
type = PlaySnd
trigger1 = time = 1
value = 13, 17
channel = 0

[State 1400, 5]
type = PlaySnd
trigger1 = animelem = 2
value = 3, 0

; Reversal Atk
[State 1400, 6]
type = ReversalDef
p1sprpriority = -3
trigger1 = time = 0
reversal.attr = S, NA, SA
p1stateno = 1401
p2stateno = 1402
hitsound = s6, 0
pausetime = 20,30
sparkno = s7006

[State 1400, 7]
type = HitBy
trigger1 = 1
value = SCA, AA, AP
time = 2

[State 1400, 8]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Acrobatic Counter (p1 state)
[Statedef 1401]
type    = S
movetype= A
physics = N
anim = 1401
sprpriority = 10
poweradd = 100

[State 1401, VelSet]
type = VelSet
trigger1 = animelem = 3
y = -2
x = 1

[State 1401, VelSet]
type = VelSet
trigger1 = animelem = 8
y = 0
x = 0

[State 1401, VelSet]
type = VelSet
trigger1 = animelem = 12
y = 0
x = -3

[State 1401, VelSet]
type = VelSet
trigger1 = animelem = 15
y = 1.8
x = -3

[State 1401, VelSet]
type = VelSet
trigger1 = animtime = 0
y = 0
x = 0

[State 1401, TargetVelAdd]
type = TargetVelAdd
trigger1 = animelem = 11
x = -5
y = 0

[State 1401, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1401, 2]
type = Explod
trigger1 = animelem = 3
postype = p1
pos = 0,0
scale = 0.5,0.5
bindtime = 1
removetime = 16
sprpriority = 3
anim = 7081
ID = 7081

[State 1401, 3 Arms]
type = Explod
trigger1 = animelem = 8
postype = p1
pos = 10,0
scale = 1,1
bindtime = 55
removetime = 55
sprpriority = -3
anim = 1403
ID = 1403

[State 1401, 4 Jump Sound]
type = PlaySnd
trigger1 = animelem = 3
value = 2, 0

[State 1401, 5 Grab Sound]
type = PlaySnd
trigger1 = animelem = 8
value = 8, 0

[State 1401, 6 BindToTarget]
type = BindToTarget
trigger1 = animelem = 8
pos = 10,50,Head

[State 1401, 7]
type = PlaySnd
trigger1 = animelem = 10
value = 0, 2

[State 1401, 8]
type = PlaySnd
trigger1 = animelem = 11
value = 1, 5

[State 1401, 9]
type = TargetLifeAdd
trigger1 = animelem = 11
value = -80

[State 1401, 10]
type = Explod
trigger1 = animelem = 11
postype = p2
pos = -15,-95
bindtime = 1
removetime = 16
sprpriority = 3
anim = 7002
ID = 7002

[State 1401, 11 Blood]
type = Explod
trigger1 = animelem = 11
postype = p2
pos = -15,-95
bindtime = 1
removetime = 24
sprpriority = 3
scale = .5,.5
anim = 7074
ID = 7074

[State 1401, 12 Jump Sound]
type = PlaySnd
trigger1 = animelem = 12
value = 2, 1

[State 1401, 13 State End]
type = ChangeState
trigger1 = animtime = 0
value = 52
ctrl = 1

;------------------------------------------------------
; Acrobatic Counter (p2 state 1)
[Statedef 1402]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1402, Attempt]
type = VarSet
trigger1 = time = 0
v = 23
value = Anim

[State 1402, Freeze anim]
type = ChangeAnim
trigger1 = time != 0
value = var(23)

[State 1402, PosSet]
type = PosSet
trigger1 = time = 0
Y = 0

[State 1402, Velset]
type = VelSet
trigger1 = time = 0
X = 0
Y = 0

[State 1402, CS]
type = ChangeState       ;SelfState
trigger1 = time = 29
trigger1 = Pos Y > -1
value = 1404
ctrl = 1

;------------------------------------------------------
; Acrobatic Counter (p2 state 2)
[Statedef 1404]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1404, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 1402

[State 1404, 2]
type = HitBy
trigger1 = 1
value = sca
time = 1

[State 1404, 3]
type = ChangeState
trigger1 = animtime = 0
value = 1025
ctrl = 0

;---------------------------------------
; Mach Speed (forward)
[Statedef 1500]
type = S
movetype = I
physics = N
ctrl = 0
anim = 1500
velset = 0, 0

[State 1500, Turn]
type = changeanim
trigger1 = p2bodydist x < -5
trigger1 = time > 13
value = 1501

[State 1500]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1500]
type = PlayerPush
trigger1 = !time
value = 0

[State 1500]
type = VelSet
trigger1 = time = [3,12]
x = -.5
y = 0

[State 1500]
type = VelSet
trigger1 = time >= 13
x = 5.50
y = 0

[State 1500]
type = PlaySnd
trigger1 = time = 12
value = 2, 1

[State 1500]
type = AfterImage
trigger1 = animelem = 2
time = 30
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
trans = add1

[State 1500]
type = Turn
trigger1 = animtime = 0 && P2BodyDist X < -5

[State 1500]
type = PlaySnd
trigger1 = animtime = 0
value = 2, 2

[State 1500]
type = ChangeState
trigger1 = time  = 36
trigger2 = backedgebodydist <= 0
value = 0
ctrl = 1

;---------------------------------------
; Mach Speed (backward)
[Statedef 1501]
type = S
movetype = I
physics = N
ctrl = 0
anim = 1500
velset = 0, 0

[State 1501]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1501]
type = PlayerPush
trigger1 = !time
value = 0

[State 1501]
type = VelSet
trigger1 = time = [3,12]
x = .5
y = 0

[State 1501]
type = VelSet
trigger1 = time >= 13
x = -5.50
y = 0

[State 1501]
type = PlaySnd
trigger1 = time = 12
value = 2, 1

[State 1501]
type = AfterImage
trigger1 = animelem = 2
time = 30
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
trans = add1

[State 1501]
type = Turn
trigger1 = animtime = 0 && P2BodyDist X < -5

[State 1501]
type = PlaySnd
trigger1 = animtime = 0
value = 2, 2

[State 1501]
type = ChangeState
trigger1 = time  = 36
trigger2 = backedgebodydist <= 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Super Moves (Statedef 3000-4999)
;------------------------------------------------------------------------------

; Front Assault
[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3000
poweradd = -2000
ctrl = 0
sprpriority = 2
facep2 = 1

[State 3000, Super A]
type = SuperPause
trigger1 = time = 7
anim = s7008
pos = 0,-78
time = 60
movetime = 60
unhittable = 1
sound = s5, 1

[State 3000, shine]
type = PalFX
trigger1 = time = 17
time = 5
add = 0,0,0
sinadd = 150,150,250,3

[State 3000]
type = null;NotHitBy
trigger1 = animelem = 4, >= 0
value = SCA

[State 3000]
type = null;ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 3000]
type = PlaySnd
trigger1 = time = 43
value = 13, 11

[State 3000]
type = null ;ScreenBound
trigger1 = 1
value = 0
movecamera = 0,1

[State 3000, cosmo]
type = Explod
trigger1 = time = 0
anim = 3010
ID = 3010
pos = 0,0
postype = p1
sprpriority = -1
bindtime = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 120
removeongethit = 1
supermovetime = 120

[State 3000, Dragon 1a]
type = Helper
trigger1 = animelem = 6
name ="Dragon1a"
ID = 8021
stateno = 3003
pos = -230,-70
postype = p1
ownpal = 1
persistent = 0

[State 3000]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 10
value = 3, 0

[State 3000]
type = PlaySnd
trigger1 = animelem = 10
value = 3, 1

[State 3000]
type = VelSet
trigger1 = animelem = 6
x = 11

[State 3000]
type = HitDef
trigger1 = hitcount < 2
trigger1 = moveguarded < 1
attr = S, HA
animtype  = Hard
damage    = 0,80
priority  = 6
hitflag = MAF
guardflag = MA
getpower = 0,0
pausetime = 0,10
sparkno = -1
sparkxy = -10,-90
hitsound = s1, 2
guardsound = s6, 0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -6
air.velocity = -3,-3
air.fall = 1
fall.animtype = Hard
fall.recover = 0
fall.xvelocity  = -3
fall.yvelocity  = -3
;fall.envshake.ampl = 4       ;Parameters for shaking the screen on fall
;fall.envshake.freq = 175
;fall.envshake.time = 18
p1stateno = 3001
p2stateno = 3021
hitonce = 0
p2facing = 1
ID = 3021
kill = 0
persistent = 0
ignorehitpause = 1
getpower = 0
givepower = 0

[State 3000]
type = MoveHitReset
trigger1 = var(0) > 0
trigger1 = MoveGuarded

[State 3000, flash]
type = EnvColor
trigger1 = time = 121
value = 255,255,255
under = 0
time = 3

[State 3000]
type = ChangeState
trigger1 = time > 120
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Front Assault (p1 state 1)
[Statedef 3001]
type    = S
movetype= H
physics = N;S
;juggle  = 8
;velset = 0,0
anim = 3001
ctrl = 0
sprpriority = 2

[State 3001, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(3010) >= 0
trigger1 = time = 0
ID = 3010

[State 3001, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = 0

[State 3001, Darken]
type = BGPalFX
trigger1 = time = 0
ignorehitpause = 1
time = 33
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3001, Background 1]
type = Explod
trigger1 = 1
pos = 0,0
anim = 8051
ID = 8051
postype = back
sprpriority = -6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = 200
supermovetime = 200

[State 3001, spark]
type = Explod
trigger1 = animelem = 5
anim = 7003
postype = p1
pos = 0, -120
velocity = 0, 0
accel = 0, 0
removetime = -2
bindtime = 1
sprpriority = 3

[State 3001, Width]
type = VelSet
trigger1 = animelem = 3
x = 0

[State 3001]
type = NotHitBy
trigger1 = 1
value = sca
time = 1

[State 3001]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3001]
type = TargetBind
trigger1 = animelem = 2
ID = 3021
pos = 50, -5
ignorehitpause = 1

[State 3001]
type = TargetState
trigger1 = animtime = 0
value = 3023
ID = 3021

[State 3001]
type = ChangeState
trigger1 = animtime = 0
value = 3002
ctrl = 0

;---------------------------------------------------------------------------
; Front Assault (p1 state 2)
[Statedef 3002]
type    = A
movetype= H
physics = N
anim = 3003
ctrl = 0
sprpriority = 2

[State 3002, ChangeAnim]
type = ChangeAnim
triggerall = var(22) = 1
trigger1 = time = 0
value = 3002
persistent = 0

[State 3002]
type = NotHitBy
trigger1 = 1
value = sca
time = 1

[State 3002]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3002]
type = PosAdd
trigger1 = time = 0
x = 1*((p2Dist x)-48);-39)
y = -70;-15

[State 3002]
type = VarSet
trigger1 = time = 0
fvar(5) = p2Dist x

[State 3002]
type = VarSet
trigger1 = 1
fvar(6) = p2Dist y

[State 3002, cosmo]
type = Explod
trigger1 = time = 128
anim = 3011
ID = 3011
pos = -2,-3
bindtime = -1
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
removetime = 20
supermovetime = 20

; Twin
[State 3002, Twin]
type = Explod
triggerall = var(22) = 1
trigger1 = time = 0
anim = 2010
postype = p1
pos = 140,20
velocity = 0,-0.6
accel = 0,0
removetime = -2
bindtime = 1
sprpriority = 3
facing = -1

[State 3002, Bind]
type = TargetBind
trigger1 = animelem = 42, < 0
trigger1 = !(animelem = 5, < 0)
ID = 3021
pos = ceil(fvar(5)), ceil(fvar(6))

[State 3002, Bind]
type = TargetBind
trigger1 = animelem = 42
ID = 3021
pos = ceil(fvar(5)), ceil(25)

[State 3002]
type = PosAdd
trigger1 = animelem = 44, < 0
trigger1 = !(animelem = 5, < 0)
y = ifelse(gametime % 2 = 1,-1,0)

;------------------------

[State 3002, Camera Helper]
type = Helper
trigger1 = time = 0
name = "Camera"
postype = Front
pos = 4,-70 ;0,-125
stateno = 3030
keyctrl = 0
ownpal = 1

;------------------------

[State 3203, HitAdd]
type = HitAdd
triggerall = var(22) = 0
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
trigger9 = animelem = 41
value = 1

[State 3203, HitAdd]
type = HitAdd
triggerall = var(22) = 1
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 14
trigger4 = animelem = 19
trigger5 = animelem = 24
trigger6 = animelem = 29
trigger7 = animelem = 34
trigger8 = animelem = 42
value = 1

[State 3002]
type = TargetLifeAdd
triggerall = var(22) = 0
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
value = -40
ID = 3021
kill = 0

[State 3002]
type = TargetLifeAdd
triggerall = var(22) = 1
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 14
trigger4 = animelem = 19
trigger5 = animelem = 24
trigger6 = animelem = 29
trigger7 = animelem = 34
value = -50
ID = 3021
kill = 0

[State 3002]
type = TargetLifeAdd
trigger1 = animelem = 41
value = -80
ID = 3021
kill = 1

;------------------------

[State 3002, spark]
type = Explod
triggerall = var(22) = 0
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = TIme = 40
anim = 7003
postype = p1
pos = 51, -61
velocity = 0, 0
accel = 0, 0
removetime = -2
bindtime = 1
sprpriority = 3

[State 3002, spark]
type = Explod
triggerall = var(22) = 1
trigger1 = animelem = 4
trigger2 = animelem = 14
trigger3 = animelem = 24
trigger4 = animelem = 34
anim = 7002
postype = p1
pos = 64, -71
velocity = 0, 0
accel = 0, 0
removetime = -2
bindtime = 1
sprpriority = 3

[State 3002, spark]
type = Explod
triggerall = var(22) = 0
trigger1 = time = 50
trigger2 = time = 60
trigger3 = time = 70
trigger4 = time = 80
anim = 70031
postype = p1
pos = 51, -61
velocity = 0, 0
accel = 0, 0
removetime = -2
bindtime = 1
sprpriority = 3

[State 3002, spark]
type = Explod
triggerall = var(22) = 1
trigger1 = animelem = 9
trigger2 = animelem = 19
trigger3 = animelem = 29
anim = 7002
postype = p1
pos = 74, -61
velocity = 0, 0
accel = 0, 0
removetime = -2
bindtime = 1
sprpriority = 3

[State 3002, spark]
type = Explod
trigger1 = animelem = 41
anim = 7009
postype = p1
pos = 63, -53
velocity = 0, 0
accel = 0, 0
removetime = -2
bindtime = 1
sprpriority = 3

;------------------------

[State 3002]
type = PlaySnd
triggerall = var(22) = 0
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 50
trigger5 = time = 60
trigger6 = time = 70
value = 1, 3

[State 3002]
type = PlaySnd
triggerall = var(22) = 1
trigger1 = animelem = 4
trigger2 = animelem = 9
trigger3 = animelem = 19
trigger4 = animelem = 34
value = 1, 3

[State 3002]
type = PlaySnd
triggerall = var(22) = 0
trigger1 = time = 40
trigger2 = time = 80
value = 1, 4

[State 3002]
type = PlaySnd
triggerall = var(22) = 1
trigger1 = animelem = 14
trigger2 = animelem = 24
trigger3 = animelem = 29
value = 1, 4

[State 3002]
type = PlaySnd
trigger1 = animelem = 41
value = 1, 5

;------------------------

[State 3002, Dragon 1b]
type = Helper
trigger1 = animelem = 1
name ="Dragon1b"
ID = 8020
stateno = 3004
pos = -250,180
postype = p1
ownpal = 1
persistent = 0

[State 3002, Dragon 1c]
type = Helper
trigger1 = animelem = 15
name ="Dragon1c"
ID = 8020
stateno = 3005
pos = 350,100
postype = p1
ownpal = 1
facing = -1
persistent = 0

[State 3002, Dragon 1d]
type = Helper
trigger1 = animelem = 37
name ="Dragon1d"
ID = 8022
stateno = 3006
pos = -350,-300
postype = p1
ownpal = 1
persistent = 0

[State 3002]
type = PlaySnd
trigger1 = animelem = 5
value = 5, 14

[State 3002]
type = PlaySnd
trigger1 = animelem = 20
value = 5, 15

;------------------------

[State 3002, 1]
type = PlaySnd
triggerall = NumTarget(3021) != 0
trigger1 = Target(3021),time = 1
trigger1 = Target(3021),stateno = 5100
value = 5, 6
ignorehitpause = 1

[State 3002, 3]
type = Explod
triggerall = NumTarget(3021) != 0
trigger1 = Target(3021),time = 1
trigger1 = Target(3021),stateno = 5100
anim = 7081
sprpriority = 0
pos = 0,0
postype = p2
bindtime = 1
ownpal = 1

[State 3002, 4]
type = EnvShake
triggerall = NumTarget(3021) != 0
trigger1 = Target(3021),time = 1
trigger1 = Target(3021),stateno = 5100
ampl = 4
freq = 175
time = 18

[State 3002, 5]
type = Statetypeset
trigger1 = animelem = 44
physics = A

[State 3002, 6]
type = null
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 0

;---------------------------------------
; Dragon 1a
[Statedef 3003]
type = S
movetype = I
physics = S
anim = 8021
sprpriority = -4

[State 3003, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3003]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 3003]
type = Velset
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
trigger4 = time = 35
trigger5 = time = 45
trigger6 = time = 55
trigger7 = time = 65
trigger8 = time = 75
trigger9 = time = 85
trigger10 = time = 95
trigger11 = time = 105
y = -1

[State 3003]
type = Velset
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
trigger9 = time = 90
trigger10 = time = 100
trigger11 = time = 110
y = 1

[State 3003, Velset]
type = VelSet
trigger1 = time >= 1
x = 11

[State 3003]
type = DestroySelf
trigger1 = time > 55
trigger2 = movetype = H
trigger3 = root, stateno = [3001,3001]
trigger4 = root, stateno = [3601,3601]
trigger5 = root, stateno != [3000,3600]

;---------------------------------------
; Dragon 1b
[Statedef 3004]
type = S
movetype = I
physics = S
anim = 8020
sprpriority = 4

[State 3004, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3004]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 3004]
type = Velset
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
trigger4 = time = 35
trigger5 = time = 45
trigger6 = time = 55
trigger7 = time = 65
trigger8 = time = 75
trigger9 = time = 85
trigger10 = time = 95
trigger11 = time = 105
y = -1

[State 3004]
type = Velset
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
trigger9 = time = 90
trigger10 = time = 100
trigger11 = time = 110
y = 1

[State 3004, Velset]
type = VelSet
trigger1 = time >= 1
x = 12
y = -7

[State 3004]
type = DestroySelf
trigger1 = time > 110
trigger2 = movetype = H

;---------------------------------------
; Dragon 1c
[Statedef 3005]
type = S
movetype = I
physics = S
anim = 8020
sprpriority = -4

[State 3005, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3005]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 3005]
type = Velset
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
trigger4 = time = 35
trigger5 = time = 45
trigger6 = time = 55
trigger7 = time = 65
trigger8 = time = 75
trigger9 = time = 85
trigger10 = time = 95
trigger11 = time = 105
y = -1

[State 3005]
type = Velset
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
trigger9 = time = 90
trigger10 = time = 100
trigger11 = time = 110
y = 1

[State 3005, Velset]
type = VelSet
trigger1 = time >= 1
x = 12
y = -7

[State 3005]
type = DestroySelf
trigger1 = time > 110
trigger2 = movetype = H

;---------------------------------------
; Dragon 1d
[Statedef 3006]
type = S
movetype = I
physics = S
anim = 8022
sprpriority = 4

[State 3006, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3006]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 3006]
type = Velset
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
trigger4 = time = 35
trigger5 = time = 45
trigger6 = time = 55
trigger7 = time = 65
trigger8 = time = 75
trigger9 = time = 85
trigger10 = time = 95
trigger11 = time = 105
y = -1

[State 3006]
type = Velset
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
trigger9 = time = 90
trigger10 = time = 100
trigger11 = time = 110
y = 1

[State 3006, Velset]
type = VelSet
trigger1 = time >= 1
x = 12
y = 7

[State 3006]
type = DestroySelf
trigger1 = time > 10
trigger2 = movetype = H

;---------------------------------------------------------------------------
; Front Assault (p2 state 1)
[Statedef 3021]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 3021, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3021]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3021]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3021]
type = PosAdd
trigger1 = 1
x = ifelse(time % 2 = 1,-1,1)

[State 3021]
type = ChangeAnim;2
trigger1 = 1;time = 0
value = anim

[State 3021]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 3022

;---------------------------------------------------------------------------
; Front Assault (p2 state 2)
[Statedef 3022]
type    = A
movetype= H
physics = N;S
;juggle  = 8
velset = 0,0
;anim = 3021
ctrl = 0
sprpriority = 1

[State 3022, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3022, 2]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3022, 3]
type = VelSet
trigger1 = time = 0
y = -5

[State 3022, 4]
type = VelMul
trigger1 = animelem = 3
y = 0.95

[State 3022, 5]
type = VelMul
trigger1 = animelem = 4
y = 0.85

[State 3022, 6]
type = VelMul
trigger1 = animelem = 5
y = 0.62

[State 3022, 7]
type = VelMul
trigger1 = animelem = 5, = 8 ;&& animelem = 5, < 13
y = 0.4

[State 3022, 8]
type = VelSet
trigger1 = animelem = 5, >= 13; && animelem = 2, < 0
y = ifelse(gametime % 2 = 1,-1,0)

[State 3022, 9]
type = ChangeAnim2
trigger1 = time = 0
value = 3021

;---------------------------------------------------------------------------
; Front Assault (p2 state 3)
[Statedef 3023]
type    = A
movetype= H
physics = N;S
;juggle  = 8
velset = 0,0
;anim = 3021
ctrl = 0
sprpriority = 1

[State 3023]
type = NotHitBy
trigger1 = 1
value = sca
time = 1

[State 3023]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3023]
type = Changeanim2
trigger1 = time = 0
value = 3023

[State 3023]
type = null;velset
trigger1 = animelem = 36, < 0
trigger1 = !(animelem = 2, < 0)
y = ifelse(gametime % 2 = 1,-1,0)

[State 3023]
type = PosAdd
trigger1 = animelem = 1, >= 10 && animelem = 2, < 0
x = ifelse(gametime % 2 = 1,-1,1)

[State 3023]
type = Null;Statetypeset
trigger1 = animelem = 36
physics = A

[State 3023]
type = VelSet
trigger1 = animelem = 36, < 0
x = 0
y = 0

[State 3023]
type = VelSet;add
trigger1 = animelem = 36, >= 0
x = -7
y = 7;1*(const(movement.yaccel)*1);.44

[State 3023]
type = Changeanim
triggerall = SelfAnimExist(5062)
trigger1 = animelem = 38, >= 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5062

[State 3023]
type = SelfState
trigger1 = anim = 3023
trigger1 = animelem = 38, >= 0
trigger2 = anim = 5062
triggerall = Vel Y > 0
triggerall = Pos Y >= 10
value = 5100

;---------------------------------------------------------------------------
; Front Assault (p2 state 4)
[Statedef 3024]
type    = L
movetype= H
physics = N

[State 3024]
type = VelSet
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 3024]
type = FallEnvShake
trigger1 = time = 0

[State 3024, Var] ;Save fall velocity
type = VarSet
trigger1 = time = 0
;trigger1 = gethitvar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 3024] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 3024] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 3024]
type = PosSet
trigger1 = time = 0
y = 0

[State 3024]
type = VelSet
trigger1 = time = 0
y = 0

[State 3024] ;Reduce speed
type = VelMul
trigger1 = time = 0
x = 0.75

[State 3024]
type = SelfState
trigger1 = time = 0
trigger1 = gethitvar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 3024]
type = HitFallDamage
trigger1 = time = 3

[State 3024]
type = PosFreeze
trigger1 = 1

[State 3024]
type = SelfState
trigger1 = animtime = 0
value = 5101

[State 3024]
type = ForceFeedback
trigger1 = time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; Front Assault (camera helper)
[Statedef 3030]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 3030
sprpriority = -5

[State 3030, 1]
type = NotHitBy
trigger1 = 1
value = sca
time = 1

[State 3030, 2]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3030, 3]
type = BindToRoot;Parent
trigger1 = root, stateno = [3002,3002]
trigger1 = root, animelem = 24, < 0
facing = 1
time = 1
pos = 4,-70 ;0,-125

[State 3030, 4]
type = VelSet
trigger1 = root, stateno = [3002,3002]
trigger1 = root, animelem = 24, >= 0
;x = 0
y = 0

[State 3030, 5]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 3030, 6]
type = DestroySelf
trigger1 = root, stateno = [3002,3002]
trigger1 = root, animelem = 47, >= 0

;---------------------------------------------------------------------------
; Finger Blast
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 3100
ctrl = 0
poweradd = -1000
sprpriority = 2

[State 3100, Super A]
type = SuperPause
trigger1 = animelem = 4
anim = s7008
pos = 0,-88
sound = s5, 1

;[State 3100, Super B]
;type = AfterImage
;trigger1 = animelem = 4
;time = 2

;[State 3100, Super C]
;type = AfterImagetime
;trigger1 = animelemtime(4) >= 0
;time = 2

[State 3100, Super D]
type = NotHitBy
trigger1 = animelem = 4
value = , NA, SA, AT
time = 6

[State 3100, cosmo]
type = Explod
trigger1 = time = 0
anim = 3101
ID = 3101
pos = 0,0
postype = p1
sprpriority = -1
bindtime = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 85
supermovetime = 85

[State 3100, voice]
type = PlaySnd
trigger1 = animelem = 4
value = 13, 17
channel = 0

[State 3100, shine]
type = PalFX
trigger1 = animelem = 5
time = 5
add = 0,0,0
sinadd = 150,150,250,3

[State 3100, shock snd]
type = PlaySnd
trigger1 = animelem = 5
value = 5, 4

[State 3100, spark]
type = Explod
trigger1 = animelem = 5
anim = 7062
ID = 7062
pos = 15,-98
postype = p1
sprpriority = 2
removetime = 12
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 12

[State 3100, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7062) >= 1
trigger1 = animelem = 6
ID = 7062

[State 3100, shock]
type = Explod
trigger1 = animelem = 5
anim = 8000
ID = 8000
pos = 44,-94
postype = p1
sprpriority = 3
removetime = 22
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 22

[State 3100, shock proj]
type = Projectile
trigger1 = animelem = 5
attr = A, HP
projanim = 8000
projremanim = -1
projremove = 1
projremovetime = 20
offset = 44, -94
velocity = 0,0
damage = 200,20
animtype = Hard
guardflag = MA
pausetime = 0,12
sparkno = s7002
sparkxy =  30,15
hitsound   = s5, 6
guardsound = s1, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -12
air.velocity = -4.5,-6
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10
fall = 1
getpower = 0
givepower = 0

[State 3100]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Flying Assault
[Statedef 3200]
type = A
movetype = A
physics = N
juggle = 1
poweradd = 0
velset = 0,0
ctrl = 0
anim = 43

[State 3200]
type = AfterImage
trigger1 = time = 1
time = 50
FrameGap = 2
length = 10
PalBright = 0, 0,0
PalContrast = 98,98,98
PalAdd = 0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 3200]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

[State 3200]
type = Velset
trigger1 = animelem = 2
trigger1 = BackEdgeBodyDist = [0,20]
x = 0
y = -10

[State 3200]
type = Velset
trigger1 = animelem = 2
trigger1 = BackEdgeBodyDist = [20,70]
x = 0
y = -11

[State 3200]
type = Velset
trigger1 = animelem = 2
trigger1 = BackEdgeBodyDist >= 70
x = 0
y = -10

[State 3200]
type = Veladd
trigger1 = time = [10,30]
y = 0.5

[State 3200]
type = ChangeState
trigger1 = time >= 30
value = 3201
ctrl = 1

;---------------------------------------
; Flying Assault (air)
[Statedef 3201]
type = A
movetype = A
physics = N
poweradd = -1000
ctrl = 0
anim = 3200

[State 3201, Super A]
type = SuperPause
trigger1 = animelem = 1
anim = s7008
pos = 10,-68
sound = s5, 1

[State 3201, Super B]
type = NotHitBy
trigger1 = animelem = 4
value = , NA, SA, AT
time = 6

[State 3201, cosmo]
type = Explod
trigger1 = time = 0
anim = 3201
ID = 3201
pos = 0,0
postype = p1
sprpriority = -1
bindtime = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 134
removeongethit = 1
supermovetime = 134

[State 3201]
type = PlaySnd
trigger1 = time = 20
value = 12, 0

[State 3201]
type = PlaySnd
trigger1 = time = 21
value = 5, 15
channel = 0

[State 3201]
type = PlaySnd
trigger1 = time = 10
value = 2, 1

[State 3201]
type = PosFreeze
trigger1 = time = [0,24]

[State 3201]
type = Velset
trigger1 = time = 21
x = 14
y = 8

[State 3201]
type = HitDef
trigger1 = time = 0
animtype = heavy
attr = A, HA
damage = 0, 20
priority = 5
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkxy = 0, -20
sparkno = s7002
hitsound = s1, 2
guardsound = s6, 0
ground.type = Low
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -4
air.velocity = -1.2, -6
forcestand = 1
fall = 1
envshake.time = 10
envshake.ampl = 7
envshake.freq = 100
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
p2facing = 1
p1stateno = 3203
p2stateno = 3204
p2getp1state = 1
getpower = 0
givepower = 0

[State 3201, ChangeState]
type = ChangeState
trigger1 = pos Y >= 0 || moveguarded
value = 3202

[State 3201]
type = Velset
trigger1 = pos Y >= 0
x = 0
y = 0

[State 3201]
type = ChangeState
trigger1 = pos Y >= 0
value = 50

;------------------------
[Statedef 3202]
type = S
movetype = I
physics = S

[State 3202, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(3201) >= 0
trigger1 = time = 0
ID = 3201

[State 3202, AfterImagetime]
type = AfterImagetime
trigger1 = time = 0
time = 0

[State 3202, Darken]
type = BGPalFX
trigger1 = time = 0
ignorehitpause = 1
time = 0
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3201, flash]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
under = 0
time = 3

[State 3202]
type = ChangeState
trigger1 = pos Y >= 0
value = 50

;------------------------
[Statedef 3203]
type = S
movetype = A
physics = S
anim = 3203
velset = 0, 0
poweradd = 0
sprpriority = 1

[State 3203, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(3201) >= 0
trigger1 = time = 0
ID = 3201

[State 3203, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = 0

[State 3203, Darken]
type = BGPalFX
trigger1 = time = 0
ignorehitpause = 1
time = 150
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 3203, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3203, AfterImagetime]
type = AfterImagetime
trigger1 = time = 0
time = 0

[State 3203, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3203, Width]
type = Width
trigger1 = time = 0 && FrontEdgeDist < 50
edge = 60,20

[State 3203, TargetBind]
type = TargetBind
trigger1 = animelem >= 1
pos = 50, 0

[State 3203, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 5, 14

[State 3203, Dragon 2a]
type = Helper
trigger1 = time = 1
name ="Dragon2a"
ID = 8021
stateno = 3207
pos = 0,-70
postype = p1
ownpal = 1
persistent = 0

[State 3203, Dragon 2a]
type = Helper
trigger1 = time = 60
name ="Dragon2a"
ID = 8021
stateno = 3207
pos = -700,-70
postype = p1
ownpal = 1
persistent = 0

[State 3203, Dragon 2b]
type = Helper
trigger1 = time = 30
trigger2 = time = 100
name ="Dragon2b"
ID = 8021
stateno = 3208
pos = 700,-70
postype = p1
ownpal = 1
facing = -1
persistent = 0

[State 3203, HitAdd]
type = HitAdd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 15
trigger4 = animelem = 24
trigger5 = animelem = 31
value = 1

[State 3203, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 15
trigger4 = animelem = 24
value = -40
kill = 0

[State 3203, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 31
value = -40
kill = 1

[State 3203, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 15
trigger4 = animelem = 24
value = 1, 4

[State 3203, PlaySnd]
type = PlaySnd
trigger1 = animelem = 31
value = 1, 5

[State 3203, Explod]
type = Explod
trigger1 = animelem = 5
anim = 7000
pos = 0,-90
postype = p2
sprpriority = 4
bindtime = 1
ownpal = 1

[State 3203, Explod]
type = Explod
trigger1 = animelem = 10
anim = 7000
pos = 0,-50
postype = p2
sprpriority = 4
bindtime = 1
ownpal = 1

[State 3203, Explod]
type = Explod
trigger1 = animelem = 15
anim = 7002
pos = 0,-45
postype = p2
sprpriority = 4
bindtime = 1
ownpal = 1

[State 3203, Explod]
type = Explod
trigger1 = animelem = 24
anim = 7001
pos = 0,-90
postype = p2
sprpriority = 4
bindtime = 1
ownpal = 1

[State 3203, Explod]
type = Explod
trigger1 = animelem = 31
anim = 7002
pos = 0,-90
postype = p2
sprpriority = 4
bindtime = 1
ownpal = 1

[State 3203, HitDef]
type = HitDef
trigger1 = animelem = 31
attr = S, HA
animtype = Hard
damage    = 0
guardflag = M
hitflag = MAF
pausetime = 29, 29
guardsound = s6, 0
sparkno = 0
sparkxy = -10,-90
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
envshake.freq = 40
envshake.ampl = -8
fall.damage = 50
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
getpower = 0
givepower = 0

[State 3203, Explod]
type = Explod
trigger1 = animelem = 31
persistent = 0
anim = 7009
pos = 80,-80
postype = p1
sprpriority = -5
bindtime = 12
ignorehitpause = 1
ownpal = 1

[State 3203, White fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3203, TargetBind]
type = TargetState
trigger1 = animelem = 31
value = 3205

[State 3203, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1

;------------------------
[Statedef 3204]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 3204, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3204,NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3204,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 3204,PosAdd]
type = PosAdd
trigger1 = animelem = 3, = 1 || animelem = 10, = 1 || animelem = 17 ,=1
trigger2 = animelem = 19, = 1 || animelem = 32, = 1 || animelem = 42 ,=1
trigger3 = animelem = 43, = 1 || animelem = 51, = 1 || animelem = 60 ,=1
x = ifelse(time % 2 = 0,2,-2)

[State 3204,ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3204

;---------------------------------------
; Hit by Flying Assault - shaking from the hit
[Statedef 3205]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3205, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 1025

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 3206

;---------------------------------------
; Hit by Flying Assault - Flying through the air
; (a custom gethit state)
[Statedef 3206]
type    = A
movetype= H
physics = N

[State 3206, Gravity]
type = VelAdd
trigger1 = 1
x = -7
y = -1.45

[State 3206, No scroll]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 3206, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1027

[State 3206, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------
; Dragon 2a
[Statedef 3207]
type = S
movetype = I
physics = S
anim = 8021
sprpriority = 4

[State 3207, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3207]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 3207]
type = Velset
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
trigger4 = time = 35
trigger5 = time = 45
trigger6 = time = 55
trigger7 = time = 65
trigger8 = time = 75
trigger9 = time = 85
trigger10 = time = 95
trigger11 = time = 105
y = -1

[State 3207]
type = Velset
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
trigger9 = time = 90
trigger10 = time = 100
trigger11 = time = 110
y = 1

[State 3207, Velset]
type = VelSet
trigger1 = time >= 1
x = 20

[State 3207]
type = DestroySelf
trigger1 = time > 110
trigger2 = movetype = H

;---------------------------------------
; Dragon 2b
[Statedef 3208]
type = S
movetype = I
physics = S
anim = 8021
sprpriority = -4

[State 3208, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3208]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 3208]
type = Velset
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
trigger4 = time = 35
trigger5 = time = 45
trigger6 = time = 55
trigger7 = time = 65
trigger8 = time = 75
trigger9 = time = 85
trigger10 = time = 95
trigger11 = time = 105
y = -1

[State 3208]
type = Velset
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
trigger9 = time = 90
trigger10 = time = 100
trigger11 = time = 110
y = 1

[State 3208, Velset]
type = VelSet
trigger1 = time >= 1
x = 20

[State 3208]
type = DestroySelf
trigger1 = time > 110
trigger2 = movetype = H

;---------------------------------------------------------------------
; Finger Devastation (preparation)
[Statedef 3300]
type = S
movetype = A
physics = S
anim = 3300
poweradd = 0
juggle = 5
ctrl = 0

[State 3300]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noFG
flag3 = nobardisplay

[State 3300, Darken]
type = BGPalFX
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 150,150,250
add = 5,5,5
invertall = 0

[State 3300, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 465
anim = -1
darken = 0
movetime = 465

[State 3300, HitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 450

[State 3300, Sound]
type = PlaySnd
trigger1 = time = 0
value = 13, 12
channel = 0

[State 3300, Constellation]
type = Explod
trigger1 = animelem = 2
anim = 6002
ID = 6002
pos = 0,0
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
supermovetime = 465

[State 3300, Mouth]
type = Explod
trigger1 = animelem = 2
anim = 186
ID = 186
pos = -3,-3
postype = p1
bindtime = 140
sprpriority = 10
ignorehitpause = 1
removetime = 320
removeongethit = 1
supermovetime = 320

[State 3300, spark]
type = Explod
trigger1 = animelem = 4
anim = 7061
ID = 7061
pos = 18,-97
postype = p1
sprpriority = 2
removetime = 28
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 28

[State 3300, Background 2]
type = Explod
trigger1 = 1
pos = 0,0
anim = 8052
ID = 8052
postype = back
sprpriority = -6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = 470
supermovetime = 470

[State 3300, Background 3]
type = Explod
trigger1 = 1
pos = 0,0
anim = 8053
ID = 8053
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = 470
supermovetime = 470

[State 3300, Sound]
type = PlaySnd
trigger1 = animelem = 8
value = 12, 2
channel = 0

[State 3300, End]
type = ChangeState
trigger1 = animtime = 0
value = 3301
ctrl = 1

;---------------------------------------------------------------------------
; Finger Devastation (attack)
[Statedef 3301]
type = S
movetype = A
physics = N
juggle  = 5
ctrl = 0
velset = 0,0
anim = 3301
poweradd = -3000
sprpriority = 2

[State 3301, Super A]
type = SuperPause
trigger1 = animelem = 3
anim = s7009
pos = 25,-58
time = 25
sound = s5, 1
darken = 1

[State 3301, Darken A]
type = BGPalFX
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 150,150,250
add = 5,5,5
invertall = 0

[State 3301, Darken B]
type = BGPalFX
trigger1 = 1
ignorehitpause = 1
time = 1
add = 0,-200,0
mul = 156,156,256
sinadd = 40,80,40,10
invertall = 1

[State 3301, cosmo]
type = Explod
trigger1 = time = 0
anim = 3303
ID = 3303
pos = 0,0
postype = p1
sprpriority = -1
bindtime = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 290
removeongethit = 1
supermovetime = 290

[State 3301, HitBy]
type = HitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 300

[State 3301, spark]
type = Explod
trigger1 = animelem = 4
anim = 7062
ID = 7062
pos = 90,-80
postype = p1
sprpriority = 2
removetime = 242
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 242

[State 3301]
type = PlaySnd
trigger1 = animelem = 4
value = 5, 14

[State 3301]
type = PlaySnd
trigger1 = animelem = 4
value = 13, 13
channel = 0

[State 3301, Vortex]
type = Helper
trigger1 = time = 20
name ="Vortex"
ID = 3303
stateno = 3303
pos = 90,-100
postype = p1
ownpal = 1

[State 3301, Rocks 0]
type = Helper
trigger1 = time = 20
trigger2 = time = 40
trigger3 = time = 70
name ="Rocks"
ID = 3310
stateno = 3310
pos = 90,-10
postype = p1
ownpal = 1
facing = -1

[State 3301, Rocks 1]
type = Helper
trigger1 = time = 40
trigger2 = time = 70
trigger3 = time = 100
name ="Rocks"
ID = 3311
stateno = 3311
pos = 90,-10
postype = p1
ownpal = 1
facing = -1

[State 3301, Rocks 2]
type = Helper
trigger1 = time = 100
trigger2 = time = 130
trigger3 = time = 150
name ="Rocks"
ID = 3312
stateno = 3312
pos = 90,-10
postype = p1
ownpal = 1
facing = -1

[State 3301, Rocks 3]
type = Helper
trigger1 = time = 140
trigger2 = time = 160
trigger8 = time = 180
name ="Rocks"
ID = 3313
stateno = 3313
pos = 90,-10
postype = p1
ownpal = 1
facing = -1

[State 3301, Rocks 4]
type = Helper
trigger1 = time = 160
trigger2 = time = 180
trigger2 = time = 200
name ="Rocks"
ID = 3314
stateno = 3314
pos = 90,-10
postype = p1
ownpal = 1
facing = -1

[State 3301, Rocks 5]
type = Helper
trigger1 = time = 180
trigger2 = time = 200
trigger3 = time = 220
name ="Rocks"
ID = 3315
stateno = 3315
pos = 90,-10
postype = p1
ownpal = 1
facing = -1

[State 3301, ground charge]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = animelem = 5
anim = 7010
ID = 7010
pos = 25,0
sprpriority = -2
ignorehitpause = 1
removeongethit = 1
bindtime = 1
ownpal = 1
scale = .9, .9
removetime = 250
supermovetime = 250

[State 3301, air charge]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = animelem = 5
anim = 7020
ID = 7020
pos = 20,2
sprpriority = -2
ignorehitpause = 1
removeongethit = 1
bindtime = 1
ownpal = 1
scale = .9, .9
removetime = 250
supermovetime = 250

[State 3301, big light]
type = Explod
triggerall = NumExplod(70091) = 0
trigger1 = time = 240
anim = 70091
ID = 70091
pos = 25,-58
postype = p1
sprpriority = 5
ignorehitpause = 1
bindtime = -1
persistent = 0
ownpal = 1
removeongethit = 1
removetime = 20
supermovetime = 20

[State 3301]
type = EnvColor
trigger1 = time = 250
value = 255,200,255
under = 0
time = 10

[State 3301, end]
type = ChangeState
trigger1 = time = 260
value = 3302
ctrl = 1

;---------------------------------------------------------------------------
; Finger Devastation (end)
[Statedef 3302]
type = A
movetype = A
physics = S
anim = 3302
sprpriority = 2

[State 3302]
type = PlaySnd
trigger1 = animtime = 0
value = 3, 0

[State 3302, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Finger Devastation (Vortex)
[Statedef 3303]
type = A
movetype = A
physics = S
anim = 8007
sprpriority = 2

[State 3303, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3303, sound]
type = PlaySnd
trigger1 = (time%15) = 0
trigger1 = time < 219
value = 5, 13
channel = 1

[State 3303, 1]
type = HitDef
trigger1 = time > 0 && time < 180
attr = S, HP
animtype  = Heavy
damage    = 2,1
priority  = 5
guardflag = MA
sparkno = -1
guard.sparkno = -1
hitsound   = -1
ground.type = High
air.velocity = -5,-0.4
airguard.velocity = -2,-0.5
p2facing = 1
fall = 1
getpower = 0
givepower = 0

[State 3303, 3]
type = HitDef
trigger1 = time > 180 && time < 220
attr = S, HP
animtype  = Heavy
damage    = 2,0
priority  = 5
guardflag = MA
sparkno = -1
guard.sparkno = -1
hitsound   = -1
ground.type = High
air.velocity = -5,-0.4
airguard.velocity = -2,-0.5
p2facing = 1
fall = 1
getpower = 0
givepower = 0

[State 3303, 4]
type = HitDef
trigger1 = time = 220
attr = S, HP
animtype  = Heavy
damage    = 164,1
priority  = 5
guardflag = MA
sparkno = -1
hitsound   = s1,8
guardsound = s9,2
ground.type = High
air.velocity = -5,-0.4
airguard.velocity = -2,-0.5
p2facing = 1
fall = 1
p2stateno = 1027
getpower = 0
givepower = 0

[State 3303, 5]
type = DestroySelf
trigger1 = time > 220
trigger2 = parent,stateno != 3301

;---------------------------------------
; Rock 0
[Statedef 3310]
type = S
movetype = I
physics = S
anim = 8010
sprpriority = 4

[State 3310, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3310]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 3310]
type = Velset
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
trigger4 = time = 35
trigger5 = time = 45
trigger6 = time = 55
trigger7 = time = 65
trigger8 = time = 75
trigger9 = time = 85
trigger10 = time = 95
y = -20

[State 3310]
type = Velset
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
trigger9 = time = 90
trigger10 = time = 100
y = 20

[State 3310, Velset]
type = VelSet
trigger1 = time >= 1
x = -5

[State 3310]
type = AngleSet
trigger1 = time = 1
value = 0

[State 3310]
type = AngleDraw
trigger1 = time >= 1

[State 3310]
type = AngleAdd
trigger1 = time >= 1
value = 9

[State 3310]
type = DestroySelf
trigger1 = time > 200
trigger2 = movetype = H
trigger3 = parent,stateno != 3301

;---------------------------------------
; Rock 1
[Statedef 3311]
type = S
movetype = I
physics = S
anim = 8011
sprpriority = 4

[State 3311, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3311]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 3311]
type = Velset
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
trigger4 = time = 35
trigger5 = time = 45
trigger6 = time = 55
trigger7 = time = 65
trigger8 = time = 75
trigger9 = time = 85
trigger10 = time = 95
y = -20

[State 3311]
type = Velset
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
trigger9 = time = 90
trigger10 = time = 100
y = 20

[State 3311, Velset]
type = VelSet
trigger1 = time >= 1
x = -5

[State 3311]
type = AngleSet
trigger1 = time = 1
value = 0

[State 3311]
type = AngleDraw
trigger1 = time >= 1

[State 3311]
type = AngleAdd
trigger1 = time >= 1
value = 9

[State 3311]
type = DestroySelf
trigger1 = time > 200
trigger2 = movetype = H
trigger3 = parent,stateno != 3301

;---------------------------------------
; Rock 2
[Statedef 3312]
type = S
movetype = I
physics = S
anim = 8012
sprpriority = 4

[State 3312, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3312]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 3312]
type = Velset
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
trigger4 = time = 35
trigger5 = time = 45
trigger6 = time = 55
trigger7 = time = 65
trigger8 = time = 75
trigger9 = time = 85
trigger10 = time = 95
y = -20

[State 3312]
type = Velset
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
trigger9 = time = 90
trigger10 = time = 100
y = 20

[State 3312, Velset]
type = VelSet
trigger1 = time >= 1
x = -5

[State 3312]
type = AngleSet
trigger1 = time = 1
value = 0

[State 3312]
type = AngleDraw
trigger1 = time >= 1

[State 3312]
type = AngleAdd
trigger1 = time >= 1
value = 9

[State 3312]
type = DestroySelf
trigger1 = time > 200
trigger2 = movetype = H
trigger3 = parent,stateno != 3301

;---------------------------------------
; Rock 3
[Statedef 3313]
type = S
movetype = I
physics = S
anim = 8013
sprpriority = 4

[State 3313, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3313]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 3313]
type = Velset
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
trigger4 = time = 35
trigger5 = time = 45
trigger6 = time = 55
trigger7 = time = 65
trigger8 = time = 75
trigger9 = time = 85
trigger10 = time = 95
y = -20

[State 3313]
type = Velset
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
trigger9 = time = 90
trigger10 = time = 100
y = 20

[State 3313, Velset]
type = VelSet
trigger1 = time >= 1
x = -5

[State 3313]
type = AngleSet
trigger1 = time = 1
value = 0

[State 3313]
type = AngleDraw
trigger1 = time >= 1

[State 3313]
type = AngleAdd
trigger1 = time >= 1
value = 9

[State 3313]
type = DestroySelf
trigger1 = time > 200
trigger2 = movetype = H
trigger3 = parent,stateno != 3301

;---------------------------------------
; Rock 4
[Statedef 3314]
type = S
movetype = I
physics = S
anim = 8014
sprpriority = 4

[State 3314, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3314]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 3314]
type = Velset
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
trigger4 = time = 35
trigger5 = time = 45
trigger6 = time = 55
trigger7 = time = 65
trigger8 = time = 75
trigger9 = time = 85
trigger10 = time = 95
y = -20

[State 3314]
type = Velset
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
trigger9 = time = 90
trigger10 = time = 100
y = 20

[State 3314, Velset]
type = VelSet
trigger1 = time >= 1
x = -5

[State 3314]
type = AngleSet
trigger1 = time = 1
value = 0

[State 3314]
type = AngleDraw
trigger1 = time >= 1

[State 3314]
type = AngleAdd
trigger1 = time >= 1
value = 9

[State 3314]
type = DestroySelf
trigger1 = time > 200
trigger2 = movetype = H
trigger3 = parent,stateno != 3301

;---------------------------------------
; Rock 5
[Statedef 3315]
type = S
movetype = I
physics = S
anim = 8015
sprpriority = 4

[State 3315, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3315]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 3315]
type = Velset
trigger1 = time = 5
trigger2 = time = 15
trigger3 = time = 25
trigger4 = time = 35
trigger5 = time = 45
trigger6 = time = 55
trigger7 = time = 65
trigger8 = time = 75
trigger9 = time = 85
trigger10 = time = 95
y = -20

[State 3315]
type = Velset
trigger1 = time = 10
trigger2 = time = 20
trigger3 = time = 30
trigger4 = time = 40
trigger5 = time = 50
trigger6 = time = 60
trigger7 = time = 70
trigger8 = time = 80
trigger9 = time = 90
trigger10 = time = 100
y = 20

[State 3315, Velset]
type = VelSet
trigger1 = time >= 1
x = -5

[State 3315]
type = AngleSet
trigger1 = time = 1
value = 0

[State 3315]
type = AngleDraw
trigger1 = time >= 1

[State 3315]
type = AngleAdd
trigger1 = time >= 1
value = 9

[State 3315]
type = DestroySelf
trigger1 = time > 200
trigger2 = movetype = H
trigger3 = parent,stateno != 3301

;---------------------------------------------------------------------------
; Hidden Dragon
[Statedef 3400]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 3400
ctrl = 0
poweradd = -3000
sprpriority = 2

[State 3400, Super A]
type = SuperPause
trigger1 = animelem = 4
anim = s7008
pos = 0,-88
sound = s5, 1

;[State 3400, Super B]
;type = AfterImage
;trigger1 = animelem = 4
;time = 2

;[State 3400, Super C]
;type = AfterImagetime
;trigger1 = animelemtime(4) >= 0
;time = 2

[State 3400, Super D]
type = NotHitBy
trigger1 = animelem = 4
value = , NA, SA, AT
time = 6

[State 3400, cosmo]
type = Explod
trigger1 = time = 0
anim = 3101
ID = 3101
pos = 0,0
postype = p1
sprpriority = -1
bindtime = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 100
supermovetime = 100

[State 3400, voice]
type = PlaySnd
trigger1 = animelem = 4
value = 13, 17
channel = 0

[State 3400, shine]
type = PalFX
trigger1 = animelem = 5
time = 5
add = 0,0,0
sinadd = 150,150,250,3

[State 3400, snd]
type = PlaySnd
trigger1 = animelem = 5
value = 5, 4

[State 3400, snd]
type = PlaySnd
triggerall = p2stateno != 3410
trigger1 = time = 40
value = 1, 8

[State 3400, spark]
type = Explod
trigger1 = animelem = 5
anim = 7062
ID = 7062
pos = 18,-98
postype = p1
sprpriority = 2
removetime = 12
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 12

[State 3400, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7062) >= 1
trigger1 = animelem = 6
ID = 7062

[State 3400, proj]
type = Projectile
trigger1 = animelem = 5
attr = C, SP
projanim = 7060
projhitanim = 7009
offset = 5, -97
velocity = 8,4
damage = 0
animtype = Hard
pausetime = 0,12
sparkno = s7001
sparkxy =  70,15
hitsound   = s1,8
guardsound = s6, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
Projscale = 1.5, 1.5
p2stateno = 3410
envshake.time = 30
envshake.freq = 178
envshake.ampl = 30
envshake.phase = 15
getpower = 0
givepower = 0

[State 3400]
type = ChangeState
triggerall = p2stateno = 3410
trigger1 = animtime = 0
value = 3401
ctrl = 1

[State 3400, hole]
type = Helper
trigger1 = time = 35
name = "Hole"
ID = 8050
stateno = 8050
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 0
sprpriority = -1
supermovetime = 0
pausemovetime = 0

[State 3400]
type = ChangeState
triggerall = movehit = 0
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------
; Hidden Dragon (p1 state 1)
[Statedef 3401]
type = S
movetype = I
physics = S
anim = 0
velset = 0,0
ctrl = 0

[State 3401, ChangeState]
type = ChangeState
trigger1 = p2stateno = 3410
value = 3402
ctrl = 0

;-------------------------------------------------------------------
; Hidden Dragon (p1 state 2)
[Statedef 3402]
type = S
movetype = I
physics = S
anim = 20
velset = 0,0
ctrl = 0

[State 3402, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 9999
movetime = 9999
anim = -1
sound = -1
darken = 1
unhittable = 0

[State 3402]
type = VelSet
trigger1 = P2BodyDist X >= 1
x = const(velocity.walk.fwd.x)

[State 3402, SuperPause]
type = SuperPause
trigger1 = P2BodyDist X < 40
time = 1
movetime = 1
anim = -1
sound = -1
darken = 1
unhittable = 0

[State 3402, ChangeState]
type = ChangeState
trigger1 = P2BodyDist X < 40
value = 3403
ctrl = 0

;-------------------------------------------------------------------
; Hidden Dragon (p1 state 3)
[Statedef 3403]
type = S
movetype = A
physics = S
anim = 3403
velset = 0,0
ctrl = 0

[State 3403, snd]
type = PlaySnd
trigger1 = time = 11
value = 13, 2

[State 3403, snd]
type = PlaySnd
trigger1 = animelem = 31
value = 2, 0

[State 3403, VelAdd]
type = VelAdd
trigger1 = animelem = 31
x = 7
y = 2

[State 3403, VelAdd]
type = VelAdd
trigger1 = animelem = 34
x = 0
y = 8

[State 3403]
type = ChangeState
trigger1 = time = 180
value = 3404
ctrl = 0

;-------------------------------------------------------------------
; Hidden Dragon (p1 state 4)
[Statedef 3404]
type    = S
movetype= I
physics = S
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 3404, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 0
movecamera = 0,0

[State 3404, Pos]
type = PosSet
trigger1 = time >= 0
x = helper(3420), Pos X
y = helper(3420), Pos Y

[State 3404, Vel]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 3404, Assert]
type = AssertSpecial
trigger1 = time >= 0
flag = invisible
flag2 = noFG

[State 3404, Push]
type = PlayerPush
trigger1 = time = 0
trigger2 = (time > 0) && ((NumHelper(3420) = 0) && (NumHelper(3421) = 0) && (NumHelper(3422) = 0) && (NumHelper(3423) = 0) && (NumHelper(3424) = 0) && (NumHelper(3425) = 0))
value = 0

[State 3404, Push]
type = PlayerPush
trigger1 = (time > 0) && ((NumHelper(3420) = 0) && (NumHelper(3421) = 0) && (NumHelper(3422) = 0) && (NumHelper(3423) = 0) && (NumHelper(3424) = 0) && (NumHelper(3425) = 0))
value = 1

[State 3404, NoHit]
type = NotHitBy
trigger1 = time = 0
trigger2 = (time > 0) && ((NumHelper(3420) = 0) && (NumHelper(3421) = 0) && (NumHelper(3422) = 0) && (NumHelper(3423) = 0) && (NumHelper(3424) = 0) && (NumHelper(3425) = 0))
value = SCA

[State 3404, Background 3]
type = Explod
trigger1 = 1
pos = 0,0
anim = 8053
ID = 8053
postype = back
sprpriority = -6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = -1

[State 3404, Background 4a]
type = Explod
trigger1 = 1
pos = 0,0
anim = 8054
ID = 8054
postype = back
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = -1

[State 3404, Background 4b]
type = Explod
trigger1 = 1
pos = 0,0
anim = 8054
ID = 8054
postype = back
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = 1400
supermovetime = 1400

[State 3404, Background 4c]
type = Explod
trigger1 = 1
pos = 0,0
anim = 8054
ID = 8054
postype = back
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = 1200
supermovetime = 1200

[State 3404, Background 4d]
type = Explod
trigger1 = 1
pos = 0,0
anim = 8054
ID = 8054
postype = back
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = 800
supermovetime = 800

[State 3404, Background 4d]
type = Explod
trigger1 = 1
pos = 0,0
anim = 8054
ID = 8054
postype = back
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = 400
supermovetime = 400

; Twin
[State 3404, Twin]
type = Helper
trigger1 = time = 0
ID = 3420
stateno = 3420
sprpriority = -6
pos = 200,0
postype = p2
supermovetime = 1000
keyctrl = 1
ownpal = 1

[State 3404, Arrow]
type = Explod
trigger1 = time = 0
anim = 8071
ID = 8071
pos = 0, enemynear, const(size.head.pos.y)-30
postype = p2
bindtime = -1
removetime = -1
sprpriority = 5
ontop = 1
removeongethit = 0

[State 3404, RemoveExplod]
type = RemoveExplod
trigger1 = p2life <= 0
trigger2 = Life <= 0
trigger3 = Losetime = 1
trigger4 = Wintime = 1
ID = 8071

[State 3404, Var]
type = VarSet
triggerall = 1
trigger1 = p2life <= 0
trigger2 = Losetime = 1
trigger3 = Wintime = 1
v = 9
value = 1

[State 3404, End 1]
type = ChangeState
triggerall = 1
trigger1 = p2life <= 0
trigger2 = Losetime = 1
trigger3 = Wintime = 1
value = 0
ctrl = 1

[State 3404, Var]
type = VarSet
triggerall = p2life > 0
triggerall = p2statetype = S
triggerall = p2movetype != H
trigger1 = (time > 0) && ((NumHelper(3420) = 0) && (NumHelper(3421) = 0) && (NumHelper(3422) = 0) && (NumHelper(3423) = 0) && (NumHelper(3424) = 0) && (NumHelper(3425) = 0))
v = 9
value = 0

[State 3404, End 2]
type = ChangeState
triggerall = p2life > 0
triggerall = p2statetype = S
triggerall = p2movetype != H
trigger1 = (time > 0) && ((NumHelper(3420) = 0) && (NumHelper(3421) = 0) && (NumHelper(3422) = 0) && (NumHelper(3423) = 0) && (NumHelper(3424) = 0) && (NumHelper(3425) = 0))
value = 3405

;---------------------------------------------------------------------
; Hidden Dragon (p1 state 5)
[Statedef 3405]
type = S
movetype = A
physics = S
anim = 3405
poweradd = -3000
juggle = 5
ctrl = 0

[State 3405, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(8054) >= 1
trigger1 = time >= 0
ID = 8054

[State 3405, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(8071) >= 0
trigger1 = time >= 0
ID = 8071

[State 3405, Pos]
type = PosSet
trigger1 = time >= 0
x = 0
y = 0

[State 3405, Vel]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

[State 3405, Turn]
type = Turn
triggerall = facing = enemy,facing
trigger1 = time >= 0

[State 3405]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noFG
flag3 = nobardisplay

[State 3405, Darken]
type = BGPalFX
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 150,150,250
add = 5,5,5
invertall = 0

[State 3405, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 443
anim = -1
darken = 0
movetime = 443

[State 3405, NoHit]
type = NotHitBy
trigger1 = anim = 3300
value = SCA
time = 520

[State 3405, Sound]
type = PlaySnd
trigger1 = time = 20
value = 13, 15
channel = 0

[State 3405, Constellation]
type = Explod
trigger1 = animelem = 2
anim = 6002
ID = 6002
pos = 0,0
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
supermovetime = 443

[State 3405, Mouth]
type = Explod
trigger1 = animelem = 4
anim = 186
ID = 186
pos = -3,-3
postype = p1
bindtime = 110
sprpriority = 10
ignorehitpause = 1
removetime = 320
removeongethit = 1
supermovetime = 320

[State 3405, spark]
type = Explod
trigger1 = animelem = 4
anim = 7061
ID = 7061
pos = 18,-97
postype = p1
sprpriority = 2
removetime = 28
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 28

[State 3405, Background 2]
type = Explod
trigger1 = 1
pos = 0,0
anim = 8052
ID = 8052
postype = back
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = 450
supermovetime = 450

[State 3405, Background 3]
type = Explod
trigger1 = 1
pos = 0,0
anim = 8053
ID = 8053
postype = back
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = 450
supermovetime = 450

[State 3405, Sound]
type = PlaySnd
trigger1 = animelem = 8
value = 12, 2
channel = 0

[State 3405, HitDef]
type = HitDef
trigger1 = animelem = 9
attr = S,HA
hitflag = MA
damage = 0,0
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3406
p2stateno = 3412
getpower = 0
givepower = 0

[State 3405, End]
type = ChangeState
trigger1 = movehit = 1
value = 3406
ctrl = 1

;-----------------------------------------------
; Hidden Dragon (p1 state 6)
[Statedef 3406]
type    = A
movetype= H
physics = N
velset = 0, 0
anim = 3406
sprpriority = 0
ctrl = 0

[State 3406, TargetFacing]
type = TargetFacing
trigger1 = time = 0
value = 1
ID = -1

[State 3406, TargetBind]
type = TargetBind
trigger1 = time = 0
time = 85
ID = -1
pos = 0,0

[State 3406, posAdd]
type = PosAdd
trigger1 = !time
x = p2bodydist X

[State 3406, removeExplod]
type = RemoveExplod
triggerall = NumExplod(8053) >= 1
trigger1 = time >= 0
ID = 8053

[State 3406, removeExplod]
type = RemoveExplod
triggerall = NumExplod(8055) >= 1
trigger1 = time >= 0
ID = 8055

[State 3406, cosmo]
type = Explod
trigger1 = time = 81
anim = 3407
ID = 3407
pos = 0,0
postype = p1
sprpriority = -1
bindtime = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 169
supermovetime = 169

[State 3406, energy pillar 1]
type = Explod
trigger1 = animelem = 2
anim = 8080
ID = 8080
pos = 0,0
postype = p1
sprpriority = -15
removetime = 138
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 0.7,0.7
supermovetime = 138

[State 3406, hole]
type = Helper
trigger1 = animelem = 2
name = "Hole"
ID = 8050
stateno = 8050
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
sprpriority = -10
supermovetime = 0
pausemovetime = 0

[State 3406, voice]
type = PlaySnd
trigger1 = animelem = 2
value = 13, 13

[State 3406, snd]
type = PlaySnd
trigger1 = animelem = 2
value = 5, 14

[State 3406, snd]
type = PlaySnd
trigger1 = animelem = 2
value = 5, 13

[State 3406, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------
; Hidden Dragon (p2 state 1)
[Statedef 3410]
type    = A
movetype= H
physics = N
velset = 0, 0
sprpriority = 5
ctrl = 0

[State 3410, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 3410

[State 3410, voice]
type = PlaySnd
trigger1 = time = 1
value = 11, 0

[State 3410, 2]
type = ChangeState
trigger1 = p2stateno = 3404
value = 3411

;-----------------------------------------------
; Hidden Dragon (p2 state 2)
[Statedef 3411]
type    = A
movetype= H
physics = N
velset = 0, 0
sprpriority = 2
ctrl = 0

[State 3411, Pos]
type = PosSet
trigger1 = time >= 0
x = 50
y = -240

[State 3411, 2]
type = SelfState
trigger1 = time = 1
value = 5050
ctrl = 1

;-----------------------------------------------
; Hidden Dragon (p2 state 3)
[Statedef 3412]
type    = A
movetype= H
physics = N
velset = 0, 0
sprpriority = 2
ctrl = 0

[State 3412, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 3412

[State 3412, Pos]
type = PosSet
trigger1 = time = 0
x = (p2bodydist X) + 20
y = 240

[State 3412, Pos]
type = PosSet
trigger1 = time = 80
x = (p2bodydist X) + 20
y = 0

[State 3412, LifeAdd]
type = LifeAdd
trigger1 = time = 80
value = -600
kill = 1
absolute = 0

[State 3412, VelSet]
type = VelAdd
trigger1 = time > 80
y = -0.2

[State 3412, VelSet]
type = VelSet
trigger1 = time = 160
x = 0
y = 0

[State 3412, 2]
type = SelfState
trigger1 = time = 160
value = 5050
ctrl = 1

;-----------------------------------------------
; Twin - Intro
[Statedef 3420]
type = S
movetype = I
physics = S
anim = 2000
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 4

; Twin (Anime)
;[State 3420]
;type = ChangeAnim
;trigger1 = var(22) = 0
;value = 2100
;persistent = 0

[State 3420]
type = Velset
trigger1 = time = 0
x = 0
Y = 0

[State 3420, Turn]
type = Turn
trigger1 = time = 0

[State 3420, PosSet]
type = PosSet
trigger1 = time = 0
Y = 0

[State 3420, Sound]
type = PlaySnd
trigger1 = animelem = 5
value = 13, 17

[State 3420]
type = Explod
trigger1 = animelem = 5
pos = 0,-105
anim = 8070
sprpriority = 10
ignorehitpause = 1
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1

[State 3420, Lose]
type = ChangeState
trigger1 = root, Losetime
trigger2 = root, life <= 0
value = 3427

[State 3420]
type = ChangeState
trigger1 = animelem = 27
value = 3421
ctrl = 1

;-----------------------------------------------
; Twin - Standing
[Statedef 3421]
type = S
movetype = I
physics = S
anim = 2001
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 4

; Twin (Anime)
;[State 3421]
;type = ChangeAnim
;trigger1 = var(22) = 0
;value = 2101
;persistent = 0

[State 3421]
type = Velset
trigger1 = time = 0
x = 0
Y = 0

[State 3421, PosSet]
type = PosSet
trigger1 = time = 0
Y = 0

[State 3421, Win]
type = ChangeState
trigger1 = root,stateno = 184
value = 3422

[State 3421, Point Out]
type = ChangeState
triggerall = root,stateno != 0
trigger1 = animtime = 0
value = 3423
ctrl = 1

[State 3421, Run Back]
type = ChangeState
triggerall = root,stateno != 0
triggerall = p2dist X <= 150
triggerall = facing != enemy,facing
trigger1 = p2movetype = A
value = 3424
ctrl = 1

[State 3421, Death]
type = ReversalDef
trigger1 = time = 1
reversal.attr = SCA,AA,AP
p1stateno = 3425

[State 3421, Death]
type = HitOverride
trigger1 = time = 1
time = -1
attr = SCA,AA,AP
stateno = 3425

[State 3421, HitBy]
type = HitBy
trigger1 = time = 1
value = SAC,AA,AP
time = 50

[State 3421, Turn]
type = ChangeState
triggerall = root,stateno != 0
trigger1 = p2dist X < 0
value = 3426
ctrl = 1

[State 3421, Lose]
type = ChangeState
trigger1 = root, Losetime
trigger2 = root, life <= 0
value = 3427

[State 3421, Roll Near P2]
type = ChangeState
triggerall = root,stateno != 0
trigger1 = p2dist X >= 300
value = 3428
ctrl = 1

[State 3421, Roll Back P2]
type = ChangeState
triggerall = root,stateno != 0
trigger1 = p2dist X <= 100
value = 3429
ctrl = 1

;-----------------------------------------------
; Twin - Win Pose
[Statedef 3422]
type = S
movetype = I
physics = S
anim = 2002
ctrl = 0
velset = 0,0
sprpriority = 4

; Twin (Anime)
;[State 3422]
;type = ChangeAnim
;trigger1 = var(22) = 0
;value = 2102
;persistent = 0

[State 3422]
type = PlaySnd
trigger1 = time = 0
value = 3, 0

[State 3422]
type = Velset
trigger1 = time = 0
x = 0
Y = 0

[State 3422, NoHit]
type = NotHitBy
trigger1 = time = 0
time = -1
value = SCA

[State 3422]
type = DestroySelf
trigger1 = time = 320

;-----------------------------------------------
; Twin - Point Out
[Statedef 3423]
type    = S
physics = S
movetype = A
anim = 2003
ctrl = 0
velset = 0,0
sprpriority = 4

; Twin (Anime)
;[State 3423]
;type = ChangeAnim
;trigger1 = var(22) = 0
;value = 2103
;persistent = 0

[State 3423, HitDef]
type = HitDef
trigger1 = time = 30
attr = S, HA
animtype  = medium
hitflag = MA
animtype = medium
damage = 30,0
sparkno = s7002
guard.sparkno = -1
sparkxy = -32,-65
pausetime = 5, 15
hitsound = s1, 1
ground.type = high
air.type = high
ground.slidetime = 22
ground.hittime = 24
ground.velocity = 0,0
air.velocity = 0,0
getpower = 0
givepower = 0

[State 3423, Death]
type = ReversalDef
trigger1 = time = 1
reversal.attr = SCA,AA,AP
p1stateno = 3425

[State 3423, Death]
type = HitOverride
trigger1 = time = 1
time = -1
attr = SCA,AA,AP
stateno = 3425

[State 3423, HitBy]
type = HitBy
trigger1 = time = 1
value = SAC,AA,AP
time = 40

[State 3423, Snd]
type = PlaySnd
trigger1 = animelem = 3
value = 12, 1

[State 3423]
type = Explod
trigger1 = animelem = 3
pos = 7,-95
anim = 8070
sprpriority = 10
ignorehitpause = 1
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1

[State 3423, Turn]
type = ChangeState
triggerall = root,stateno != 0
trigger1 = p2dist X < 0
value = 3426
ctrl = 1

[State 3423, Lose]
type = ChangeState
trigger1 = root, Losetime
trigger2 = root, life <= 0
value = 3427

[State 3423, Roll Near P2]
type = ChangeState
triggerall = root,stateno != 0
trigger1 = p2dist X >= 300
value = 3428
ctrl = 1

[State 3423, Roll Back P2]
type = ChangeState
triggerall = root,stateno != 0
trigger1 = p2dist X <= 100
value = 3429
ctrl = 1

[State 3423, End]
type = Changestate
trigger1 = animtime = 0
value = 3421
ctrl = 1

;-----------------------------------------------
; Twin - Run Back
[Statedef 3424]
type = S
movetype = I
physics = S
anim = 2004
ctrl = 0
velset = 0,0
sprpriority = 4

; Twin (Anime)
;[State 3424]
;type = ChangeAnim
;trigger1 = var(22) = 0
;value = 2104
;persistent = 0

;[State 3424]
;type = Explod
;trigger1 = animelem = 2
;pos = -5,15
;anim = 70841
;sprpriority = 5
;supermove = 1
;removeongethit = 1
;scale = .8, .8
;ownpal = 1

[State 3424, Death]
type = ReversalDef
trigger1 = time = 1
reversal.attr = SCA,AA,AP
p1stateno = 3425

[State 3424, Death]
type = HitOverride
trigger1 = time = 1
time = -1
attr = SCA,AA,AP
stateno = 3425

[State 3424, HitBy]
type = HitBy
trigger1 = time = 1
value = SAC,AA,AP
time = 25

[State 3424]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 0

[State 3424]
type = VelSet
trigger1 = animelem = 3
x = -9

[State 3424]
type = PlaySnd
trigger1 = animtime = 0
value = 2, 2

[State 3424]
type = Explod
trigger1 = animelem = 2
trigger2 = animtime = 0
pos = 0,0
anim = 8070
sprpriority = 10
ignorehitpause = 1
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1
scale = 0.5,0.5

[State 3424, VelSet]
type = VelSet
trigger1 = animtime = 0
x = 0
y = 0

[State 3424]
type = ChangeState
trigger1 = animtime = 0
value = 3421
ctrl = 1

;-----------------------------------------------
; Twin - Death
[Statedef 3425]
type = S
movetype = I
physics = S
juggle  = 6
anim = 2005
ctrl = 0
sprpriority = 4

; Twin (Anime)
;[State 3425]
;type = ChangeAnim
;trigger1 = var(22) = 0
;value = 2105
;persistent = 0

[State 3425, Flash]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
under = 0
time = 5

[State 3425, NoHit]
type = NotHitBy
trigger1 = time = 0
time = 100
value = SCA

[State 3425]
type = PlaySnd
trigger1 = animelem = 1
value = 10, 1

[State 3425]
type = PlaySnd
trigger1 = animelem = 3
value = 13, 14
channel = 0

[State 3425]
type = PlaySnd
trigger1 = animelem = 5
value = 11, 1

[State 3425]
type = PlaySnd
trigger1 = animelem = 6
value = 2, 2

[State 3425]
type = VelSet
trigger1 = animelem = 1
x = -4

[State 3425]
type = VelSet
trigger1 = animelem = 6
x = 0

[State 3425, Helper]
type = Helper
trigger1 = animtime = 0
name = "LieDead"
ID = 34251
stateno = 34251
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 3425]
type = DestroySelf
trigger1 = animtime = 0

;-----------------------------------------------
; Twin - Lie Dead
[Statedef 34251]
type = S
movetype = I
physics = S
juggle  = 6
anim = 20051
ctrl = 0
sprpriority = 4

; Twin (Anime)
;[State 34251]
;type = ChangeAnim
;trigger1 = var(22) = 0
;value = 21051
;persistent = 0

[State 34251]
type = DestroySelf
trigger1 = p2stateno = 3412

;-----------------------------------------------
; Twin - Turn
[Statedef 3426]
type = S
movetype = I
physics = S
juggle  = 6
anim = 2006
ctrl = 0
sprpriority = 4

; Twin (Anime)
;[State 3426]
;type = ChangeAnim
;trigger1 = var(22) = 0
;value = 2106
;persistent = 0

[State 3426, Death]
type = ReversalDef
trigger1 = time = 1
reversal.attr = SCA,AA,AP
p1stateno = 3425

[State 3426, Death]
type = HitOverride
trigger1 = time = 1
time = -1
attr = SCA,AA,AP
stateno = 3425

[State 3426, HitBy]
type = HitBy
trigger1 = time = 1
value = SAC,AA,AP
time = 8

[State 3426, Turn]
type = Turn
trigger1 = time = 0

[State 3426, End]
type = ChangeState
trigger1 = animtime = 0
value = 3421
ctrl = 1

;-----------------------------------------------
; Twin - Lose
[Statedef 3427]
type = S
movetype = I
physics = S
anim = 2007
ctrl = 0
sprpriority = 4
velset = 0,0

; Twin (Anime)
;[State 3427]
;type = ChangeAnim
;trigger1 = var(22) = 0
;value = 2107
;persistent = 0

[State 3427, Pos]
type = PosSet
trigger1 = time = 0
y = 0

[State 3427, NoHit]
type = NotHitBy
trigger1 = time = 0
time = 100
value = SCA

[State 3427, Snd]
type = PlaySnd
trigger1 = animelem = 1
value = 3, 0

[State 3427, Snd]
type = PlaySnd
trigger1 = animelem = 2
value = 10, 0

[State 3427, Snd]
type = PlaySnd
trigger1 = animelem = 4
value = 2, 0

[State 3427, Snd]
type = PlaySnd
trigger1 = animelem = 8
value = 5, 3

[State 3427]
type = DestroySelf
trigger1 = animtime = 0

;-----------------------------------------------
; Twin - Roll (near p2)
[Statedef 3428]
type = S
movetype = I
physics = N
ctrl = 0
anim = 2008
velset = 0, 0
sprpriority = 4

; Twin (Anime)
;[State 3428]
;type = ChangeAnim
;trigger1 = var(22) = 0
;value = 2108
;persistent = 0

;[State 3428]
;type = Explod
;trigger1 = animelem = 2
;anim = 7084
;pos = 0,0
;postype = p1
;sprpriority = 4
;ownpal = 1

[State 3428]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3428]
type = VelSet
trigger1 = animelem = 2
x = 8.00

[State 3428]
type = VelSet
trigger1 = animelem = 8
x = 0

[State 3428]
type = PlaySnd
trigger1 = time = 1
value = 2, 1

[State 3428]
type = AfterImage
trigger1 = time = 0
time = 14
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 3428]
type = Turn
trigger1 = animtime = 0 && P2BodyDist X < -5

[State 3428]
type = Explod
trigger1 = time = 1
trigger2 = animtime = 0
pos = 0,0
anim = 8070
sprpriority = 10
ignorehitpause = 1
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1
scale = 0.5,0.5

[State 3428]
type = PlaySnd
trigger1 = animtime = 0
value = 2, 2

[State 3428, End]
type = ChangeState
trigger1 = animtime = 0
value = 3421
ctrl = 1

;-----------------------------------------------
; Twin - Roll (back p2)
[Statedef 3429]
type = S
movetype = I
physics = N
ctrl = 0
anim = 2009
velset = 0, 0
sprpriority = 4

; Twin (Anime)
;[State 3429]
;type = ChangeAnim
;trigger1 = var(22) = 0
;value = 2109
;persistent = 0

;[State 3429]
;type = Explod
;trigger1 = animelem = 2
;anim = 70841
;pos = -10,0
;postype = p1
;sprpriority = 4
;ownpal = 1

[State 3429]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3429]
type = VelSet
trigger1 = animelem = 3
x = 16.00

[State 3429]
type = VelSet
trigger1 = animelem = 8
x = 0

[State 3429]
type = PlaySnd
trigger1 = time = 1
value = 2, 1

[State 3429]
type = AfterImage
trigger1 = time = 0
time = 14
length = 15
palbright = 40,40,40
palcontrast = 250,250,250
palpostbright = -80,-80,-80
timegap = 1
framegap = 1
trans = add1

[State 3429]
type = Explod
trigger1 = time = 1
trigger2 = animtime = 0
pos = 0,0
anim = 8070
sprpriority = 10
ignorehitpause = 1
ownpal = 0
bindtime = -1
persistent = 0
removeongethit = 1
scale = 0.5,0.5

[State 3429]
type = PlaySnd
trigger1 = animtime = 0
value = 2, 2

[State 3429, End]
type = ChangeState
trigger1 = animtime = 0
value = 3421
ctrl = 1

;---------------------------------------------------------------------------
; Black Four
[Statedef 3500]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 3400
ctrl = 0
poweradd = -3000
sprpriority = 2

[State 3500, Super A]
type = SuperPause
trigger1 = animelem = 4
anim = s7008
pos = 0,-88
sound = s5, 1

;[State 3400, Super B]
;type = AfterImage
;trigger1 = animelem = 4
;time = 2

;[State 3400, Super C]
;type = AfterImagetime
;trigger1 = animelemtime(4) >= 0
;time = 2

[State 3500, Super D]
type = NotHitBy
trigger1 = animelem = 4
value = , NA, SA, AT
time = 6

[State 3500, cosmo]
type = Explod
trigger1 = time = 0
anim = 3101
ID = 3101
pos = 0,0
postype = p1
sprpriority = -1
bindtime = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 100
removeongethit = 1
supermovetime = 100

[State 3500, voice]
type = PlaySnd
trigger1 = animelem = 4
value = 13, 17
channel = 0

[State 3500, shine]
type = PalFX
trigger1 = animelem = 5
time = 5
add = 0,0,0
sinadd = 150,150,250,3

[State 3500, snd]
type = PlaySnd
trigger1 = animelem = 5
value = 5, 4

[State 3500, snd]
type = PlaySnd
triggerall = p2stateno != 3510
trigger1 = time = 40
value = 1, 8

[State 3500, spark]
type = Explod
trigger1 = animelem = 5
anim = 7062
ID = 7062
pos = 18,-98
postype = p1
sprpriority = 2
removetime = 12
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 12

[State 3500, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7062) >= 1
trigger1 = animelem = 6
ID = 7062

[State 3500, proj]
type = Projectile
trigger1 = animelem = 5
attr = C, SP
projanim = 7060
projhitanim = 7009
offset = 5, -97
velocity = 8,4
damage = 0
animtype = Hard
pausetime = 0,12
sparkno = s7001
sparkxy =  70,15
hitsound   = s1,8
guardsound = s6, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -10
air.velocity = -2.5,-5
Projscale = 1.5 , 1.5
p2stateno = 3505
envshake.time = 30
envshake.freq = 178
envshake.ampl = 30
envshake.phase = 15
getpower = 0
givepower = 0

[State 3500, hole]
type = Helper
trigger1 = time = 35
name = "Hole"
ID = 8050
stateno = 8050
pos = 0,0
postype = p2
facing = 1
keyctrl = 0
ownpal = 0
sprpriority = -1
supermovetime = 0
pausemovetime = 0

; Short Version, against Ankoku Pegasus
[State 3500]
type = ChangeState
triggerall = p2stateno = 3510 && p2name = "ankokupegasus" || p2stateno = 3510 && p4name = "ankokupegasus"
trigger1 = animtime = 0
value = 3502
ctrl = 1

; Short Version, against Ankoku Cygnus
[State 3500]
type = ChangeState
triggerall = p2stateno = 3510 && p2name = "ankokucygnus" || p2stateno = 3510 && p4name = "ankokucygnus"
trigger1 = animtime = 0
value = 3502
ctrl = 1

; Short Version, against Ankoku Andromeda
[State 3500]
type = ChangeState
triggerall = p2stateno = 3510 && p2name = "ankokuandromeda" || p2stateno = 3510 && p4name = "ankokuandromeda"
trigger1 = animtime = 0
value = 3502
ctrl = 1

; Long Version, with Black Four
[State 3500]
type = ChangeState
triggerall = p2stateno = 3510 && p2name != "ankokupegasus" || p2stateno = 3510 && p4name != "ankokupegasus"
triggerall = p2stateno = 3510 && p2name != "ankokucygnus" || p2stateno = 3510 && p4name != "ankokucygnus"
triggerall = p2stateno = 3510 && p2name != "ankokuandromeda" || p2stateno = 3510 && p4name != "ankokuandromeda"
trigger1 = animtime = 0
value = 3501
ctrl = 1

[State 3500]
type = ChangeState
triggerall = movehit = 0
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Black Four (p1 state 1)
[Statedef 3501]
type = S
movetype = I
physics = S
anim = 3501
velset = 0,0
ctrl = 0
poweradd = 0
sprpriority = 5

[State 3501]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noFG
flag3 = nobardisplay

[State 3501]
type = VarSet
trigger1 = time = 0
var(9) = 1

[State 3501, Background 5]
type = Explod
trigger1 = time = 0
pos = 0,0
anim = 8055
ID = 8055
postype = back
sprpriority = -6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = -1
supermovetime = -1

[State 3501, voice]
type = PlaySnd
trigger1 = time = 0
value = 3, 1

[State 3501, voice]
type = PlaySnd
trigger1 = animelem = 2
value = 12, 2

; Ankoku Pegasus
[State 3501, Ankoku Pegasus]
type = Helper
trigger1 = time = 20
stateno = 3520
ID = 3520
postype = p2
facing = -1
pos = 345, 5
ownpal = 1
pausemovetime = 1

; Ankoku Cygnus
[State 3501, Ankoku Cygnus]
type = Helper
trigger1 = time = 170
stateno = 3530
ID = 3530
postype = p2
facing = -1
pos = 150, -260
ownpal = 1
pausemovetime = 1

; Ankoku Andromeda
[State 3501, Ankoku Andromeda]
type = Helper
trigger1 = time = 300
stateno = 3540
ID = 3540
postype = p2
facing = -1
pos = 325, -160
ownpal = 1
pausemovetime = 1

[State 3501, ChangeState]
type = ChangeState
trigger1 = time = 500
value = 3503
ctrl = 0

;---------------------------------------------------------------------------
; Black Four (p1 state 2)
[Statedef 3502]
type = S
movetype = I
physics = S
anim = 0
velset = 0,0
ctrl = 0
poweradd = 0
sprpriority = 5

[State 3502]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noFG
flag3 = nobardisplay

[State 3502]
type = VarSet
trigger1 = time = 0
var(9) = 0

[State 3502, Background 5]
type = Explod
trigger1 = time = 0
pos = 0,0
anim = 8055
ID = 8055
postype = back
sprpriority = -6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = -1
supermovetime = -1

[State 3502, ChangeState]
type = ChangeState
trigger1 = p2stateno = 3510
value = 3503
ctrl = 0

;---------------------------------------------------------------------------
; Black Four (p1 state 3)
[Statedef 3503]
type = S
movetype = I
physics = S
anim = 20
velset = 0,0
ctrl = 0
poweradd = 0
sprpriority = 5

[State 3503]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noFG
flag3 = nobardisplay

[State 3503]
type = VelSet
trigger1 = P2BodyDist X >= 1
x = const(velocity.walk.fwd.x)

[State 3503, snd]
type = PlaySnd
trigger1 = animelem = 1
value = 5, 0
channel = 3

[State 3503, ChangeState]
type = ChangeState
trigger1 = P2BodyDist X < 40
value = 3504
ctrl = 0

;---------------------------------------------------------------------------
; Black Four (p1 state 4)
[Statedef 3504]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 3504
ctrl = 0
sprpriority = 5

[State 3504, ChangeAnim]
type = ChangeAnim
triggerall = p2name = "ankokupegasus" || p4name = "ankokupegasus"
trigger1 = time = 0
value = 3505

[State 3504, ChangeAnim]
type = ChangeAnim
triggerall = p2name = "ankokucygnus" || p4name = "ankokucygnus"
trigger1 = time = 0
value = 3505

[State 3504, ChangeAnim]
type = ChangeAnim
triggerall = p2name = "ankokuandromeda" || p4name = "ankokuandromeda"
trigger1 = time = 0
value = 3505

[State 3504]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noFG
flag3 = nobardisplay

[State 3504, Super D]
type = NotHitBy
trigger1 = animelem = 4
value = , NA, SA, AT
time = 150

[State 3504, Mouth]
type = Explod
triggerall = p2name != "ankokupegasus" || p4name != "ankokupegasus"
triggerall = p2name != "ankokucygnus" || p4name != "ankokucygnus"
triggerall = p2name != "ankokuandromeda" || p4name != "ankokuandromeda"
trigger1 = time = 140
anim = 186
ID = 186
pos = -3,-3
postype = p1
bindtime = 50
sprpriority = 10
ignorehitpause = 1
removetime = 50
removeongethit = 1
supermovetime = 50

[State 3504, Mouth]
type = Explod
triggerall = p2name = "ankokupegasus" || p4name = "ankokupegasus"
trigger1 = time = 40
anim = 186
ID = 186
pos = -3,-3
postype = p1
bindtime = 50
sprpriority = 10
ignorehitpause = 1
removetime = 50
removeongethit = 1
supermovetime = 50

[State 3504, Mouth]
type = Explod
triggerall = p2name = "ankokucygnus" || p4name = "ankokucygnus"
trigger1 = time = 40
anim = 186
ID = 186
pos = -3,-3
postype = p1
bindtime = 50
sprpriority = 10
ignorehitpause = 1
removetime = 50
removeongethit = 1
supermovetime = 50

[State 3504, Mouth]
type = Explod
triggerall = p2name = "ankokuandromeda" || p4name = "ankokuandromeda"
trigger1 = time = 40
anim = 186
ID = 186
pos = -3,-3
postype = p1
bindtime = 50
sprpriority = 10
ignorehitpause = 1
removetime = 50
removeongethit = 1
supermovetime = 50

[State 3504, spark]
type = Explod
trigger1 = animelem = 4
anim = 7061
ID = 7061
pos = 32,-103
postype = p1
sprpriority = 7
removetime = 28
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 28

[State 3504, voice]
type = PlaySnd
triggerall = p2name != "ankokupegasus" || p4name != "ankokupegasus"
triggerall = p2name != "ankokucygnus" || p4name != "ankokucygnus"
triggerall = p2name != "ankokuandromeda" || p4name != "ankokuandromeda"
trigger1 = time = 140
value = 13, 22
channel = 0

[State 3504, voice]
type = PlaySnd
triggerall = p2name = "ankokupegasus" || p4name = "ankokupegasus"
trigger1 = time = 40
value = 13, 22
channel = 0

[State 3504, voice]
type = PlaySnd
triggerall = p2name = "ankokucygnus" || p4name = "ankokucygnus"
trigger1 = time = 40
value = 13, 22
channel = 0

[State 3504, voice]
type = PlaySnd
triggerall = p2name = "ankokuandromeda" || p4name = "ankokuandromeda"
trigger1 = time = 40
value = 13, 22
channel = 0

[State 3504, shine]
type = PalFX
trigger1 = animelem = 5
time = 5
add = 0,0,0
sinadd = 150,150,250,3

[State 3504, flame snd]
type = PlaySnd
trigger1 = animelem = 5
value = 5, 13

[State 3504, stopsnd]
type = StopSnd
trigger1 = animelem = 5
channel = 3

[State 3504, spark]
type = Explod
trigger1 = animelem = 5
anim = 7062
ID = 7062
pos = 37,-124
postype = p1
sprpriority = 2
removetime = 12
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 12

[State 3504, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7062) >= 1
trigger1 = animelem = 6
ID = 7062

[State 3504, flame start]
type = Explod
trigger1 = animelem = 5
anim = 8030
ID = 8030
scale = 0.3,0.5
pos = 32, -103
postype = p1
sprpriority = 3
removetime = 59
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 59

[State 3504, flame end]
type = Explod
trigger1 = animelem = 27
anim = 8031
ID = 8031
scale = 0.3,0.5
pos = 32, -103
postype = p1
sprpriority = 3
removetime = 16
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 16

[State 3504, flame proj]
type = Projectile
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
trigger6 = animelem = 10
trigger7 = animelem = 11
trigger8 = animelem = 12
trigger9 = animelem = 13
trigger10 = animelem = 14
attr = A, HP
projanim = 8032
projhitanim = -1
projscale = 0.3,0.5
projremanim = -1
projremove = 1
projremovetime = 44
offset = 32, -103
velocity = 0,0
damage = 60
animtype = Hard
pausetime = 0,12
sparkno = s7002
sparkxy =  50,10
hitsound   = s5, 6
guardsound = s1, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -12
air.velocity = -4.5,-6
envshake.time = 30
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10
Palfx.time = 120
Palfx.add           = 50,50,50
Palfx.mul           = 200,100,200
Palfx.sinadd        = 200,100,200,3
fall = 1
getpower = 0
givepower = 0

[State 3504, flame]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
trigger4 = animelem = 8
trigger5 = animelem = 9
trigger6 = animelem = 10
trigger7 = animelem = 11
trigger8 = animelem = 12
trigger9 = animelem = 13
trigger10 = animelem = 14
persistent = 0
anim = 8035
pos = -7,-70
postype = p2
sprpriority = 2
bindtime = -1
ignorehitpause = 1
removetime = 120
ownpal = 0

[State 3504, Background 6]
type = Explod
trigger1 = animelem = 33
pos = 0,0
anim = 8056
ID = 8056
postype = back
sprpriority = -6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.1,1.1
removeongethit = 1
removetime = 70
supermovetime = -1
supermovetime = 70

[State 3504, removeexplod]
type = RemoveExplod
triggerall = NumExplod(8055) >= 1
trigger1 = animelem = 33
ID = 8055

[State 3504, Var]
type = VarSet
triggerall = 1
trigger1 = p2life <= 0
trigger2 = Losetime = 1
trigger3 = Wintime = 1
v = 9
value = 1

[State 3504, Var]
type = VarSet
triggerall = animtime = 0
trigger1 = p2life > 0
v = 9
value = 0

[State 3504]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Black Four (p2 state 1)
[Statedef 3505]
type = S
movetype= H
physics = N
velset = 0,0

[State 3505, Freeze anim]
type = ChangeAnim2
trigger1 = time != 0
value = 3510

[State 3505, PosSet]
type = PosSet
trigger1 = time = 0
Y = 0

[State 3505, ChangeState]
type = ChangeState
trigger1 = time = 0
value = 3510
ctrl = 0

[State 3505, SelfState]
type = SelfState
trigger1 = p2movetype = H
value = 5100
ctrl = 1

;---------------------------------------------------------------------------
; Black Four (p2 state 2)
[Statedef 3510]
type = S
movetype= H
physics = N
velset = 0,0

[State 3510, Freeze anim]
type = ChangeAnim2
trigger1 = time != 0
value = 3510

[State 3510, PosSet]
type = PosSet
trigger1 = time = 0
Y = 0

[State 3510, Velset]
type = Velset
trigger1 = time = 0
X = 0
Y = 0

[State 3510, SelfState]
type = SelfState
trigger1 = p2movetype = H
value = 5100
ctrl = 1

;-----------------------------------------------
; Ankoku Pegasus - Run
[Statedef 3520]
type    = S
movetype= A
physics = S
juggle  = 6
anim = 3520
ctrl = 0
sprpriority = -4

[State 3520]
type = PlaySnd
trigger1 = time = 0
value = 2, 1

[State 3520, Velset]
type = VelSet
trigger1 = time >= 1
x = 6

[State 3520, ChangeState]
type = ChangeState
trigger1 = time = 30
value = 3521
ctrl = 0

[State 3520, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;-----------------------------------------------
; Ankoku Pegasus - Jump
[Statedef 3521]
type    = S
movetype= A
physics = S
juggle  = 6
anim = 3521
ctrl = 0
sprpriority = -4

[State 3521, Velset]
type = VelSet
trigger1 = time = 0
x = 0

[State 3521, Velset]
type = VelSet
trigger1 = animelem = 2
y = -13

[State 3521, Velset]
type = VelSet
trigger1 = animelem = 4
y = -8

[State 3521]
type = PlaySnd
trigger1 = time = 0
value = 3, 0

[State 3521]
type = PlaySnd
trigger1 = animelem = 3
value = 2, 0

[State 3521]
type = Explod
trigger1 = animelem = 2
postype = p1
pos = 0,0
scale = 0.5,0.5
bindtime = 1
removetime = 26
sprpriority = 3
anim = 7089
ID = 7089

[State 3521]
type = Explod
trigger1 = animelem = 2
postype = p1
pos = 0,0
scale = 0.5,0.5
bindtime = 1
removetime = 26
sprpriority = 3
anim = 70891
ID = 70891

[State 3521, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3522
ctrl = 0

[State 3521, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;-----------------------------------------------
; Ankoku Pegasus - Attack
[Statedef 3522]
type    = S
movetype= A
physics = S
juggle  = 6
anim = 3522
ctrl = 0
sprpriority = -4

[State 3522]
type = Explod
trigger1 = time = 0
anim = 7008
ID = 7008
pos = 18, -40
postype = p1
sprpriority = 3
removetime = 24
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = 0.7, 0.7
supermovetime = 24

[State 3522]
type = PlaySnd
trigger1 = time = 0
value = 5, 11

[State 3522]
type = PlaySnd
trigger1 = animelem = 2
value = 13, 19

[State 3522, Velset]
type = VelSet
trigger1 = time = [0,600]
x = 0
y = 0

; Ankoku Ryuseiken
[State 3522]
type = Projectile
trigger1 = animelem = 3
projanim = 8090
projID = 8090
offset = 80,-10
velocity = 2, -1
remvelocity = .7, 0
accel = 14,7
attr = S, HP
damage    = 0
animtype  = Medium
pausetime = 0,12
sparkno = -1
sparkxy = 0, 0
hitsound = s1, 3
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,-3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3
p2stateno = 3510
kill = 0

[State 3522]
type = Projectile
trigger1 = animelem = 4
projanim = 8090
projID = 8090
offset = 80,-10
velocity = 2, 0
remvelocity = .7, 0
accel = 14,7
attr = S, HP
damage    = 0
animtype  = Medium
pausetime = 0,12
sparkno = -1
sparkxy = 0, 0
hitsound = s1, 3
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,-3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3
p2stateno = 3510
kill = 0

[State 3522]
type = Projectile
trigger1 = animelem = 5
projanim = 8090
projID = 8090
offset = 80,-10
velocity = 2, 4
remvelocity = .7, 0
accel = 14,7
attr = S, HP
damage    = 0
animtype  = Medium
pausetime = 0,12
sparkno = -1
sparkxy = 0, 0
hitsound = s1, 3
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,-3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3
p2stateno = 3510
kill = 0

[State 3522]
type = Explod
trigger1 = animelem = 3
anim = 8091
ID = 8091
pos = enemynear,const(size.mid.pos.x), enemynear,const(size.mid.pos.y)
postype = p2
ownpal = 1
facing = -1
bindtime = -1
removetime = 600
persistent = 0
sprpriority = 2
supermovetime = 600

[State 3522, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3504 && root,time = 100
value = 3523
ctrl = 0

[State 3522, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;-----------------------------------------------
; Ankoku Pegasus - Landing
[Statedef 3523]
type = A
movetype = I
physics = A
anim = 3523
velset = 0,0
juggle = 2
ctrl = 0
sprpriority = -4

[State 3523, Velset]
type = VelSet
trigger1 = time = 0
x = -0.7
y = -5

[State 3523]
type = ChangeState
trigger1 = time = 38
value = 3524
ctrl = 0

[State 3523, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;---------------------------------------
; Ankoku Pegasus - Land
[Statedef 3524]
type    = A
movetype= A
physics = S
anim = 3524
juggle  = 6
ctrl = 0
sprpriority = -4

[State 3524]
type = PlaySnd
trigger1 = time = 0
value = 2, 2

[State 3524]
type = PosSet
trigger1 = time = 0
y = 0

[State 3524]
type = VelSet
trigger1 = time = 0
y = 0

[State 3524]
type = Explod
trigger1 = time = 0
postype = p1
pos = 0,0
scale = 0.5,0.5
bindtime = 1
removetime = 16
sprpriority = 3
anim = 7081
ID = 7081

[State 3524]
type = ChangeState
trigger1 = animtime = 0
value = 3525

[State 3524, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;-----------------------------------------------
; Ankoku Pegasus - End
[Statedef 3525]
type = S
movetype = I
physics = S
anim = 3525
ctrl = 0
velset = 0,0
sprpriority = -4

[State 3525]
type = PlaySnd
trigger1 = time = 0
value = 3, 0

[State 3525, ChangeState]
type = ChangeState
triggerall = time = 130
trigger1 = p2life <= 0
value = 3526
ctrl = 0

[State 3525, DestroySelf]
type = DestroySelf
triggerall = time = 140
trigger1 = p2life > 0

[State 3525, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;-----------------------------------------------
; Ankoku Pegasus - Win
[Statedef 3526]
type = S
movetype = I
physics = S
anim = 3526
ctrl = 0
velset = 0,0
sprpriority = -4

[State 3526, ChangeAnim]
type = ChangeState
trigger1 = p2life > 0
value = 3525

[State 3526, Voice]
type = PlaySnd
trigger1 = time = 0
value = 13, 18

[State 3526, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;-----------------------------------------------
; Ankoku Cygnus - Landing
[Statedef 3530]
type = A
movetype = I
physics = A
anim = 3530
velset = 0,0
juggle = 2
ctrl = 0
sprpriority = -5

[State 3530]
type = PlaySnd
trigger1 = time = 0
value = 2, 1

[State 3530, Velset]
type = VelSet
trigger1 = time = 0
y = -2

[State 3530]
type = ChangeState
trigger1 = time = 38
value = 3531
ctrl = 0

[State 3530, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;---------------------------------------
; Ankoku Cygnus - Land
[Statedef 3531]
type    = A
movetype= A
physics = S
anim = 3531
juggle  = 6
ctrl = 0
sprpriority = -5

[State 3531]
type = PlaySnd
trigger1 = time = 0
value = 2, 2

[State 3531]
type = PosSet
trigger1 = time = 0
y = 0

[State 3531]
type = VelSet
trigger1 = time = 0
y = 0

[State 3531]
type = Explod
trigger1 = time = 0
postype = p1
pos = 0,0
scale = 0.5,0.5
bindtime = 1
removetime = 16
sprpriority = 3
anim = 7081
ID = 7081

[State 3531]
type = ChangeState
trigger1 = animtime = 0
value = 3532

[State 3531, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;-----------------------------------------------
; Ankoku Cygnus - Attack
[Statedef 3532]
type    = S
movetype= A
physics = S
juggle  = 6
anim = 3532
ctrl = 0
sprpriority = -5

[State 3532]
type = PlaySnd
trigger1 = time = 0
value = 5, 11

[State 3532]
type = PlaySnd
trigger1 = time = 0
value = 13, 20

[State 3532]
type = PlaySnd
trigger1 = animelem = 6
value = 5, 13

[State 3532]
type = PlaySnd
trigger1 = animelem = 6
value = 5, 7

[State 3532]
type = Explod
trigger1 = time = 0
anim = 7008
ID = 7008
pos = 0, -78
postype = p1
sprpriority = 3
removetime = 24
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = 0.7, 0.7
supermovetime = 24

[State 3532]
type = Explod
triggerall = NumExplod(8092) = 0
trigger1 = animelem = 6
pos = 66,-85
anim = 8092
ID = 8092
sprpriority = 5
ownpal = 1
ignorehitpause = 1
bindtime = -1
scale = 1,0.5
removetime = 400
supermovetime = 400

; Ankoku Blizzard
[State 3532]
type = Projectile
trigger1 = animelem = 6
projanim = 8093
projID = 8093
projhits = 8
projmisstime = 3
projpriority = -2
projsprpriority = 4
projremove = 0
projremovetime = 400
projscale = 0.5,0.5
offset = 55, -85
sparkno = -1
velocity = 0,0
attr = S, HP
damage    = 0
animtype = Heavy
guardflag = MA
guard.sparkno = -1
pausetime = 0,9
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3
air.animtype = Back
air.velocity = -3,-2
air.juggle = 3
palfx.time          = 400
palfx.add           = 110,130,160
palfx.sinadd        = -112,-122,-112,3
palfx.mul           = 150,150,200
p2stateno = 3510
kill = 0

[State 3532]
type = Explod
trigger1 = animtime = 470
pos = 68,-82
anim = 8094
ID = 8094
sprpriority = 5
ownpal = 1
ignorehitpause = 1
bindtime = -1
scale = 1,0.5
removetime = 15
supermovetime = 15

[State 3532, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3504 && root,time = 150
value = 3533
ctrl = 0

[State 3532, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;-----------------------------------------------
; Ankoku Cygnus - End
[Statedef 3533]
type = S
movetype = I
physics = S
anim = 3533
ctrl = 0
velset = 0,0
sprpriority = -5

[State 3533]
type = PlaySnd
trigger1 = time = 0
value = 3, 0

[State 3533, ChangeState]
type = ChangeState
triggerall = time = 130
trigger1 = p2life <= 0
value = 3534
ctrl = 0

[State 3533, DestroySelf]
type = DestroySelf
triggerall = time = 140
trigger1 = p2life > 0

[State 3533, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;-----------------------------------------------
; Ankoku Cygnus - Win
[Statedef 3534]
type = S
movetype = I
physics = S
anim = 3534
ctrl = 0
velset = 0,0
sprpriority = -5

[State 3534, ChangeAnim]
type = ChangeState
trigger1 = p2life > 0
value = 3525

[State 3534, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;-----------------------------------------------
; Ankoku Andromeda - Landing
[Statedef 3540]
type = A
movetype = I
physics = A
anim = 3540
velset = 0,0
juggle = 2
ctrl = 0
sprpriority = -2

[State 3540, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 0
movecamera = 1,0

[State 3540]
type = PlaySnd
trigger1 = time = 0
value = 2, 1

[State 3540, Velset]
type = VelSet
trigger1 = time = 0
x = 3.1
y = -2

[State 3540]
type = ChangeState
trigger1 = root,animtime = 322
value = 3541
ctrl = 0

[State 3540, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;-----------------------------------------------
; Ankoku Andromeda - Land
[Statedef 3541]
type    = A
movetype= A
physics = S
anim = 3541
juggle  = 6
ctrl = 0
sprpriority = -2

[State 3541]
type = PlaySnd
trigger1 = time = 0
value = 2, 2

[State 3541]
type = PosSet
trigger1 = time = 0
y = 0

[State 3541]
type = VelSet
trigger1 = time = 0
y = 0

[State 3541]
type = Explod
trigger1 = time = 0
postype = p1
pos = 0,0
scale = 0.5,0.5
bindtime = 1
removetime = 16
sprpriority = 3
anim = 7081
ID = 7081

[State 3541]
type = ChangeState
trigger1 = animtime = 0
value = 3542

[State 3541, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;-----------------------------------------------
; Ankoku Andromeda - Attack
[Statedef 3542]
type    = S
movetype= A
physics = S
juggle  = 6
anim = 3542
ctrl = 0
sprpriority = -2

[State 3542]
type = PosAdd
trigger1 = time < 10
x = 0.5
y = 0

[State 3542]
type = PlaySnd
trigger1 = time = 7
value = 5, 11

[State 3542]
type = PlaySnd
trigger1 = time = 7
value = 13, 21

[State 3542]
type = PlaySnd
trigger1 = time = 57
value = 5, 8

[State 3542]
type = PlaySnd
trigger1 = time = 90
value = 5, 9

[State 3542]
type = PlaySnd
trigger1 = animelem = 12
value = 5, 4

[State 3542]
type = Explod
trigger1 = time = 7
anim = 7008
ID = 7008
pos = -15, -118
postype = p1
sprpriority = 3
removetime = 24
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = 0.7, 0.7
supermovetime = 24

; Ankoku Nebula Chain
[State 3542]
type = HitDef
trigger1 = animelem = 9
priority = 6
attr = C, HA
damage = 0
animtype = hard
sparkno = -1
sparkxy = -10,-90
hitsound = s1, 9
guardsound = s6, 1
pausetime = 8,8
ground.hittime = 10
ground.type = high
ground.slidetime = 5
ground.velocity = -4
air.velocity = -1.4,-3
getpower = 0
givepower = 0
p2stateno = 3510
kill = 0
numhits = 2

; Snakes
[State 3542, Snakes]
type = Helper
trigger1 = animelem = 11
trigger2 = animelem = 12
stateno = 3550
ID = 3550
postype = p1
facing = 1
pos = 177, 0
ownpal = 1
pausemovetime = 1

[State 3542, Snakes]
type = Helper
trigger1 = animelem = 11
trigger2 = animelem = 12
stateno = 3550
ID = 3550
postype = p1
facing = 1
pos = 245, 0
ownpal = 1
pausemovetime = 1

; Snakes on P2
[State 3542]
type = Explod
trigger1 = time = 80
anim = 8097
ID = 8097
pos = enemynear,const(size.mid.pos.x), enemynear,const(size.mid.pos.y)
postype = p2
ownpal = 1
facing = -1
bindtime = -1
removetime = 300
persistent = 0
sprpriority = 2
supermovetime = 300

[State 3542, ChangeState]
type = ChangeState
trigger1 = root,stateno = 3504 && root,time = 150
value = 3543
ctrl = 0

[State 3542, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;-----------------------------------------------
; Ankoku Andromeda - End
[Statedef 3543]
type = S
movetype = I
physics = S
anim = 3543
ctrl = 0
velset = 0,0
sprpriority = -2

[State 3543]
type = PlaySnd
trigger1 = time = 0
value = 3, 0

[State 3543]
type = PlaySnd
trigger1 = time = 0
value = 5, 10

[State 3543, ChangeState]
type = ChangeState
triggerall = time = 130
trigger1 = p2life <= 0
value = 3544
ctrl = 0

[State 3543, DestroySelf]
type = DestroySelf
triggerall = time = 140
trigger1 = p2life > 0

[State 3543, DestroySelf]
type = DestroySelf
trigger1 = root,movetype = H

;-----------------------------------------------
; Ankoku Andromeda - Win
[Statedef 3544]
type = S
movetype = I
physics = S
anim = 3544
ctrl = 0
velset = 0,0
sprpriority = -2

[State 3544, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 0
movecamera = 1,0

[State 3544, ChangeAnim]
type = ChangeState
trigger1 = p2life > 0
value = 3525

[State 3544, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0

;-----------------------------------------------
; Snakes - Start
[Statedef 3550]
type    = S
movetype= A
physics = S
juggle  = 6
anim = 8095
ctrl = 0
sprpriority = 5

[State 3550, Velset]
type = VelSet
trigger1 = time > 10
x = 2

[State 3550, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3551

[State 3550, ChangeState]
type = DestroySelf
trigger1 = root,stateno = 3504 && root,time = 150

;-----------------------------------------------
; Snakes - End
[Statedef 3551]
type    = S
movetype= A
physics = S
juggle  = 6
anim = 8096
ctrl = 0
sprpriority = 5

[State 3551, ChangeState]
type = DestroySelf
trigger1 = animtime = 0

;------------------------------------------------------------------------------
; Secret Point
[Statedef 3600]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 0,0
anim = 3000
poweradd = -3000
ctrl = 0
sprpriority = 2
facep2 = 1

[State 3600, Super A]
type = SuperPause
trigger1 = time = 7
anim = s7008
pos = 0,-78
time = 60
movetime = 60
unhittable = 1
sound = s5, 1

[State 3600, shine]
type = PalFX
trigger1 = time = 17
time = 5
add = 0,0,0
sinadd = 150,150,250,3

[State 3600]
type = null
trigger1 = animelem = 4, >= 0
value = SCA

[State 3600]
type = null
trigger1 = 1
value = 1
movecamera = 0,1

[State 3600, snd]
type = PlaySnd
trigger1 = time = 43
value = 13, 11

[State 3600, cosmo]
type = Explod
trigger1 = time = 0
anim = 3010
ID = 3010
pos = 0,0
postype = p1
sprpriority = -1
bindtime = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 120
removeongethit = 1
supermovetime = 120

[State 3600, Dragon 1a]
type = Helper
trigger1 = animelem = 6
name ="Dragon1a"
ID = 8021
stateno = 3003
pos = -230,-70
postype = p1
ownpal = 1
persistent = 0

[State 3600]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 10
value = 3, 0

[State 3600]
type = PlaySnd
trigger1 = animelem = 10
value = 3, 1

[State 3600]
type = VelSet
trigger1 = animelem = 6
x = 11

[State 3600]
type = MoveHitReset
trigger1 = var(0) > 0
trigger1 = MoveGuarded

[State 3600, flash]
type = EnvColor
trigger1 = time = 121
value = 255,255,255
under = 0
time = 3

[State 3600]
type = HitDef
trigger1 = hitcount < 2
trigger1 = moveguarded < 1
attr = S, HA
animtype  = Hard
damage    = 0
priority  = 6
hitflag = MAF
getpower = 0,0
pausetime = 0,10
sparkno = 7000
guard.sparkno = -1
sparkxy = -10,-90
hitsound = -1
guardsound = s6, 0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -6
air.velocity = -3,-3
air.fall = 1
fall.animtype = Hard
fall.recover = 0
fall.xvelocity  = -3
fall.yvelocity  = -3
;fall.envshake.ampl = 4       ;Parameters for shaking the screen on fall
;fall.envshake.freq = 175
;fall.envshake.time = 18
p1stateno = 3601
p2stateno = 3602
hitonce = 0
p2facing = 1
ID = 3021
kill = 0
persistent = 0
ignorehitpause = 1
getpower = 0
givepower = 0

[State 3600]
type = ChangeState
trigger1 = time > 120
value = 11
ctrl = 1

;-----------------------------------
; Secret Point (p1 state)
[Statedef 3601]
type    = A
movetype= H
physics = N
anim = 3601
velset = 0,0

[State 3601, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(3010) > 0
trigger1 = time = 0
ID = 3010

[State 3601]
type = VarSet
trigger1 = time = 0
var(9) = 2

[State 3601, VelSet]
type = PosSet
trigger1 = time = 0
x = 0
y = 0

[State 3601, PlaySnd]
type = PlaySnd
triggerall = var(22) = 0
trigger1 = time = 0
value = 1, 9

[State 3601, PlaySnd]
type = PlaySnd
triggerall = var(22) = 1
trigger1 = time = 0
value = 8, 0

[State 3601, Explod]
type = Explod
triggerall = var(22) = 0
trigger1 = time = 0
anim = 7070
ID = 7070
postype = p1
sprpriority = 6
pos = 80,-85
bindtime = 1
removetime = 18
pausemovetime = 1
ownpal = 0
removeongethit = 0

[State 3601, SuperPause]
type = SuperPause
trigger1 = time = 18
time = 50
movetime = 50
anim = -1
sound = -1
darken = 1
unhittable = 0

[State 3601, palfx]
type = PalFX
trigger1 = time = 29
time = 15
add = 0,0,0
sinadd = 200,100,200,3

[State 3601, Explod]
type = Explod
trigger1 = time = 29
anim = 70091
ID = 70091
postype = p1
sprpriority = 6
pos = 82,-83
bindtime = 1
removetime = 20
pausemovetime = 1
ownpal = 1
removeongethit = 0

[State 3601, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3601, PlaySnd]
type = PlaySnd
trigger1 = time = 50
value = 1, 8

[State 3601, Explod]
type = Explod
trigger1 = time = 51
anim = 7072
ID = 7072
postype = p2
pos = 5,-75
bindtime = 1
removetime = 15
pausemovetime = 0
ownpal = 1
removeongethit = 0
scale = 1.5,1.5

[State 3601, Explod]
type = Explod
trigger1 = time = 51
anim = 7075
ID = 7075
postype = p2
pos = 5,-75
bindtime = 1
removetime = 15
pausemovetime = 0
ownpal = 1
removeongethit = 0
scale = 0.7,0.7

[State 3601, Explod]
type = Explod
trigger1 = time = 51
anim = 7075
ID = 7075
postype = p2
vfacing = -1
pos = 5,-75
bindtime = 1
removetime = 15
pausemovetime = 0
ownpal = 1
removeongethit = 0
scale = 0.7,0.7

[State 3601, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------
; Secret Point (p2 state)
[Statedef 3602]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3602, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3602

[State 3602, LifeAdd]
type = LifeAdd
trigger1 = time = 50
value = -9999
kill = 1

[State 3602, PalFX]
type = PalFX
trigger1 = time = 50
time = 30
add = 50,50,50
mul = 250,100,100
sinadd = 250,100,100,3
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0

[State 3602, Flash]
type = EnvColor
trigger1 = time = 50
value = 250,100,100
under = 0
time = 1

[State 3602, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3602, SelfState]
type = SelfState
trigger1 = time = 75
value = 5000
ctrl = 1

;---------------------------------------
; Gold Shining
[Statedef 8040]
type = S
movetype = I
physics = S
anim = 8040
sprpriority = 3

[State 8040, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 8040, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8040]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State 8040]
type = DestroySelf
trigger1 = roundno = 2

;--------------------------------------
; Hole
[Statedef 8050]
type = S
movetype = I
physics = S
anim = 8061
sprpriority = -1

[State 8050, ChangeAnim]
type = ChangeAnim
triggerall = root,stateno = 3400 || root, stateno = 3406
trigger1 = time = 0
value = 8050

[State 8050, energy pillar 2]
type = Explod
trigger1 = time = 0
anim = 8081
ID = 8081
pos = 0,0
postype = p1
sprpriority = -2
removetime = 20
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
scale = 0.7,0.7
supermovetime = 20

[State 8050, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8050, debris]
type = Explod
trigger1 = time = 1
pos = 0,0
postype = p1
anim = 8060
sprpriority = 5
removeongethit = 1
ownpal = 1
scale = 0.6,0.6

[State 8050, debris 2]
type = Explod
trigger1 = time = 1
pos = 0,0
postype = p1
anim = 8061
sprpriority = 5
removeongethit = 1
ownpal = 1
scale = 0.6,0.6

[State 8050]
type = PosSet
trigger1 = time = 0
y = 0

[State 8050]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------

[State -2, Get P2 Distance]
type = VarSet
trigger1 = p2dist X != 0
v = 11
value = floor(p2dist X)

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

[State -2, Constants Equalizer]
type = VarSet
triggerall = roundno = 1
triggerall = stateno = 191 || stateno = 192 || stateno = 193 || stateno = 194 || stateno = 195
triggerall = time < 55
trigger1 = command != "holdup"
var(44) = 0

[State -2, Constants Equalizer]
type = VarSet
triggerall = roundno = 1
triggerall = stateno = 191 || stateno = 192 || stateno = 193 || stateno = 194 || stateno = 195
triggerall = time < 55
trigger1 = command = "holdup"
var(44) = 1

[State -2, Constants Equalizer]
type = VarSet
triggerall = roundno > 1
triggerall = stateno = 5900 || stateno = 196
trigger1 = command != "holdup"
var(44) = 0

[State -2, Constants Equalizer]
type = VarSet
triggerall = roundno > 1
triggerall = stateno = 5900 || stateno = 196
trigger1 = command = "holdup"
var(44) = 1

[State -2, Constants Equalizer]
type = PalFX
triggerall = roundno = 1
triggerall = stateno = 191 || stateno = 192 || stateno = 193 || stateno = 194 || stateno = 195
triggerall = var(44) = 1
trigger1 = time = 55
time = 5
add = 0,0,0
sinadd = 150,150,150,3

[State -2, Constants Equalizer]
type = PalFX
triggerall = roundno > 1
triggerall = stateno = 5900
triggerall = var(44) = 1
trigger1 = time = 25
time = 5
add = 0,0,0
sinadd = 150,150,150,3

[State -2, Constants Equalizer]
type = AttackMulSet
trigger1 = var(44) = 1
value = 1; 1 for 100, 0.9 for 110, 0.83 for 120

[State -2, Constants Equalizer]
type = DefenceMulSet
trigger1 = var(44) = 1
value = 1; 1 for 100, 0.9 for 110, 0.83 for 120

;---------------------------------------

[State -2, Anime Version]
type = VarSet
triggerall = roundno >= 1
triggerall = stateno = 191 || stateno = 192 || stateno = 193 || stateno = 194 || stateno = 195 || stateno = 196
triggerall = time < 55
trigger1 = command != "holddown"
var(22) = 0

[State -2, Manga Version]
type = VarSet
triggerall = roundno >= 1
triggerall = stateno = 191 || stateno = 192 || stateno = 193 || stateno = 194 || stateno = 195 || stateno = 196
triggerall = time < 55
trigger1 = command = "holddown"
var(22) = 1

[State -2, Twin Explod]
type = Explod
triggerall = roundno >= 1
triggerall = stateno = 191 || stateno = 192 || stateno = 193 || stateno = 194 || stateno = 195 || stateno = 196
triggerall = var(22) = 1
trigger1 = time = 55
anim = 2000
ID = 2000
pos = -60,-2
postype = p2
bindtime = 120
sprpriority = 10
removetime = 120
removeongethit = 1

[State -2, Twin Sound]
type = PlaySnd
triggerall = roundno >= 1
triggerall = stateno = 191 || stateno = 192 || stateno = 193 || stateno = 194 || stateno = 195 || stateno = 196
triggerall = var(22) = 1
trigger1 = time = 75
value = 5, 1

[State -2, Twin Sound]
type = PlaySnd
triggerall = roundno >= 1
triggerall = stateno = 191 || stateno = 192 || stateno = 193 || stateno = 194 || stateno = 195 || stateno = 196
triggerall = var(22) = 1
trigger1 = time = 55
trigger2 = time = 175
value = 5, 3

;---------------------------------------

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 5
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 410
trigger4 = stateno = 440
trigger5 = stateno = 610
trigger6 = stateno = 640
value = 12, 0
channel = 0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 500
triggerall = time = 5
trigger1 = stateno = 225
trigger2 = stateno = 220
trigger3 = stateno = 250
trigger4 = stateno = 420
trigger5 = stateno = 450
trigger6 = stateno = 620
trigger7 = stateno = 650
value = 12, 1
channel = 0

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

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 10, 0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10, 0

[State -2, Random sound]
type = PlaySnd
trigger1 = random < 500
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10, 0

[State -2, Random sound]
type = PlaySnd
trigger1 = random < 750
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = alive = 1
value = 10, 1

;---------------------------------------

; 1 Kick + Finger Blast
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240) && (power >= 1000)
trigger1 = (movecontact)
value = 3100

; 1 Kick + Flying Assault
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 440) && (power >= 3000)
trigger1 = (movecontact)
value = 3201

; Weakening Combo + Finger Flame
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 1001)
trigger1 = (movecontact)
value = 1110

; Weakening Combo + Downward Kick
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 1011)
trigger1 = (movecontact)
value = 1201

; Weakening Combo + Finger Blast
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 1022) && (power >= 1000)
trigger1 = (movecontact)
value = 3100

; 4 Hits + Weakening Combo
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 650)
trigger1 = (movecontact)
value = 400
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 400) && (prevstateno = 650) && (movecontact)
value = 440
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 440) && (prevstateno = 400) && (movecontact)
value = 225
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 225) && (prevstateno = 440) && (movecontact)
value = 1000

; 3 Hits + Finger Gust
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200)
trigger1 = (movecontact)
value = 240
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 200) && (movecontact)
value = 250
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 240) && (movecontact)
value = 1300

; 3 Hits + Finger Flame
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210)
trigger1 = (movecontact)
value = 235
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 210) && (movecontact)
value = 220
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 235) && (movecontact)
value = 1110

; 2 Hits + Downward Kick
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 255)
trigger1 = (movecontact)
value = 235
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 255) && (movecontact)
value = 1201

; 3 Punches
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200)
trigger1 = (movecontact)
value = 210
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact)
value = 220

; 3 Kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240)
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 240) && (movecontact)
value = 250

; 3 Crouch Punches
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400)
trigger1 = (movecontact)
value = 420
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = C)
trigger1 = (stateno = 420) && (prevstateno = 400) && (movecontact)
value = 410

; 3 Crouch Kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430)
trigger1 = (movecontact)
value = 440
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = C)
trigger1 = (stateno = 440) && (prevstateno = 430) && (movecontact)
value = 450

; 3 Air Punches
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600)
trigger1 = (movecontact)
value = 620
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A)
trigger1 = (stateno = 620) && (prevstateno = 600) && (movecontact)
value = 610

; 3 Air Kicks
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630)
trigger1 = (movecontact)
value = 650
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630)
trigger1 = (movecontact)
value = 640

;---------------------------------------------------------------------------
; 2\3 Button Combination
;---------------------------------------------------------------------------

; Cosmo Charge
[State -2]
type = changestate
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 50])
trigger1 = (p2bodydist X >= 150) && (prevstateno != 5120) && (power < 3000)
value = 900

; Throw
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (stateno != 100) && (random = [51, 150])
trigger1 = (p2bodydist X < 35) && (prevstateno != 5120) && (p2movetype != H)
value = 800

; Combo
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (stateno != 100) && (random = [151, 200])
trigger1 = (p2bodydist X < 35) && (prevstateno != 5120) && (p2movetype != H)
value = 830

; Provoking
[State -2]
type = changestate
triggerall = roundstate = 2
triggerall = var(8) = 0
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((p2statetype = L) && (P2BodyDist X >= 200)) && (random = [201, 250])
value = 199

;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------

; Weakening Combo
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [251, 270])
trigger1 = (p2bodydist X <= 80) && (prevstateno != 5120)
value = 1000
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [251, 270])
trigger1 = (p2bodydist X <= 90) && (prevstateno != 5120)
value = 1010
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [251, 270])
trigger1 = (p2bodydist X <= 100) && (prevstateno != 5120)
value = 1020

; Finger Flame \ Twin Attack
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [271, 290])
trigger1 = (p2bodydist X >= 150) && (prevstateno != 5120)
value = 1100
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [271, 290])
trigger1 = (p2bodydist X >= 150) && (prevstateno != 5120)
value = 1110
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L) && (p2statetype = A)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [271, 290])
trigger1 = (p2bodydist X <= 50) && (prevstateno != 5120)
value = 1120

; Flying Kick
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [291, 310])
trigger1 = (p2bodydist X <= 200) && (prevstateno != 5120)
value = 1200

; Downward Kick
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [311, 320])
trigger1 = (p2bodydist X <= 50) && (prevstateno != 5120)
value = 1201

; Finger Gust
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [271, 290])
trigger1 = (p2bodydist X >= 100) && (prevstateno != 5120)
value = 1300

; Acrobatic Counter
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype = S) && (ctrl) && (random = [291, 350])
trigger1 = (p2bodydist X <= 70) && (prevstateno != 5120)
value = 1400

; Mach Speed
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [351, 410])
trigger1 = (p2bodydist X <= 80) && (prevstateno != 5120)
value = 1500
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [351, 410])
trigger1 = (p2bodydist X <= 80) && (prevstateno != 5120)
value = 1501

;---------------------------------------------------------------------------
; Super Moves
;---------------------------------------------------------------------------

; Finger Blast
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L) && (movetype = A)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [411, 450])
trigger1 = (p2bodydist X <= 70) && (prevstateno != 5120) && (power >= 1000)
value = 3100

; Flying Assault
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [451, 490])
trigger1 = (p2bodydist X >= 100) && (prevstateno != 5120) && (power >= 1000)
value = 3200

; Flying Assault (in air)
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [491, 550])
trigger1 = (p2bodydist X >= 100) && (prevstateno != 5120) && (power >= 1000)
value = 3201

; Front Assault
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [551, 590])
trigger1 = (p2bodydist X >= 70) && (prevstateno != 5120) && (power >= 2000)
value = 3000

; Finger Devastation
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [591, 650])
trigger1 = (p2bodydist X >= 150) && (prevstateno != 5120) && (power >= 3000)
value = 3300

;---------------------------------------------------------------------------
; Desperate Moves
;---------------------------------------------------------------------------

; Hidden Dragon
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (var(22) = 1) && (statetype != A) && (ctrl) && (random = [651, 730])
trigger1 = (p2bodydist X >= 120) && (prevstateno != 5120) && (power >= 3000) && (life <= 250)
value = 3400

; Black Four
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (var(22) = 0) && (statetype != A) && (ctrl) && (random = [651, 730])
trigger1 = (p2bodydist X >= 120) && (prevstateno != 5120) && (power >= 3000) && (life <= 250)
value = 3500

;---------------------------------------------------------------------------
; Fatality Moves
;---------------------------------------------------------------------------

; Secret Point
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [731, 770])
trigger1 = (p2bodydist X >= 70) && (prevstateno != 5120) && (power >= 3000) && (p2life <= 250)
value = 3600

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

[State -3, Mouth]
type = RemoveExplod
triggerall = numexplod(186) >= 1
trigger1 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
ID = 186

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
trigger1 = animelem = 3
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 3
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 6
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 6
value = F3, 1

;---------------------------------------

[State -3, Air Jump]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

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
PalBright = 10,10,10
PalContrast = 98,98,98
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
trigger1 = animelem = 2
trigger2 = animelem = 5
pos = 0,0
anim = 7085
sprpriority = 5
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
trigger1 = animelem = 4
value = 3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 4
value = F3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 7
value = 3, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 7
value = F3, 1

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
trigger1 = time = 5
pos = -5,15
anim = 70841
sprpriority = 5
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

;-------------------------------------

[State -3, Cloth Pieces]
type = Explod
triggerall = Life <= 0
triggerall = anim = 5148
triggerall = NumExplod(5151) = 0
trigger1 = time = 1
anim = 5151
ID = 5151
pos = -15,-15
sprpriority = 5
ownpal = 1
scale = 1, 1

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = Var(58) = 0
triggerall = Life <= 0
triggerall = anim = 5148
trigger1 = time = 1
trigger2 = time = 10
trigger3 = time = 20
value = 11,1

;-------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9