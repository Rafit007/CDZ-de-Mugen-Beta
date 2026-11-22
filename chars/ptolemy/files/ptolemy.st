;---------------------------------------------------------------------------
; PTOLEMY ST FILE by FobiaZ & Tony ADV
;---------------------------------------------------------------------------

; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, Assert]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = roundnotover

[State 170]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13, 5

[State 170]
type = PlaySnd
trigger1 = AnimElem = 30
value = 2, 3

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180]
type = ChangeState
triggerall = Var(9) = 1
trigger1 = Time = 0
value = 183

[State 180]
type = ChangeState
triggerall = Var(9) = 0
trigger1 = Time = 0
trigger1 = MatchOver = 1
value = 182

[State 180]
type = ChangeState
triggerall = Var(9) = 0
trigger1 = Time = 0
trigger1 = MatchOver = 0
value = 181

;-----------------------------------------
; Win 1 (round win)
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 181, Assert]
type = AssertSpecial
trigger1 = Time = [0,135]
flag = roundnotover

[State 181]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 0

[State 181, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 13, 4
channel = 0

[State 181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-----------------------------------------
; Win 2 (match win)
[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 182, Assert]
type = AssertSpecial
trigger1 = Time = [0,150]
flag = roundnotover

[State 182]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 0

[State 182]
type = PlaySnd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 12
value = 3, 0

[State 182]
type = PlaySnd
trigger1 = AnimElem = 11
value = 2, 1

[State 182, voice]
type = PlaySnd
trigger1 = AnimElem = 15
value = 13, 2
channel = 0

[State 182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-----------------------------------------
; Win 3 (after true arrow)
[Statedef 183]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 183, Assert]
type = AssertSpecial
trigger1 = Time = [0,630]
flag = roundnotover

[State 183, no music]
type = AssertSpecial
trigger1 = Time = [0,630]
flag = nomusic

[State 183]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 0

[State 183, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13, 6
channel = 0

[State 183]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2, 3

[State 183]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;----------------------------------------------------------
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

;----------------------------------------------------------
; Intro 1 (cloth)
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191]
type = AssertSpecial
trigger1 = Time = [0,540]
flag = Intro

[State 191]
type = ChangeState
triggerall = time = 0
trigger1 = palno = 5
value = 193

[State 191]
type = ChangeState
triggerall = time = 0
trigger1 = palno = 11
value = 194

[State 191, box]
type = Explod
trigger1 = AnimElem = 1
anim = 1910
ID = 1910
pos = 50,5
postype = p1
sprpriority = 6
ignorehitpause = 1
ownpal = 1
removetime = -1

[State 191, removeEX]
type = RemoveExplod
triggerall = NumExplod(1910) >= 1
trigger1 = AnimElem = 24
ID = 1910

[State 191, box light 1]
type = Explod
trigger1 = AnimElem = 2
anim = 7040
ID = 7040
pos = 50,5
postype = p1
sprpriority = 15
ignorehitpause = 1
ownpal = 1

[State 191, box light 2]
type = Explod
trigger1 = AnimElem = 5
anim = 7050
ID = 7050
pos = 46,5
postype = p1
sprpriority = 12
ignorehitpause = 1
ownpal = 1

[State 191, cosmo]
type = Explod
trigger1 = AnimElem = 36
anim = 1913+(10*var(22))
ID = 1913
pos = -16,2
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
removetime = -1

[State 191, removeEX]
type = RemoveExplod
triggerall = NumExplod(1913) >= 1
trigger1 = time = 530
ID = 1913

[State 191, cloth raise]
type = Explod
trigger1 = time = 1
anim = 1911
ID = 1911
pos = 50,5
postype = p1
sprpriority = 13
ignorehitpause = 1
ownpal = 1
removetime = -1

[State 191, removeEX]
type = RemoveExplod
triggerall = NumExplod(1911) >= 1
trigger1 = AnimElem = 22
ID = 1911

[State 191, cloth cosmo]
type = Explod
trigger1 = time = 1
anim = 1914
ID = 1914
pos = 50,5
postype = p1
sprpriority = 12
ignorehitpause = 1
ownpal = 1
removetime = 200

[State 191, removeEX]
type = RemoveExplod
triggerall = NumExplod(1922) >= 1
trigger1 = AnimElem = 22
ID = 1914

[State 191, cloth break]
type = Explod
trigger1 = AnimElem = 22
anim = 1912
ID = 1912
pos = 55,10
postype = p1
sprpriority = 3
ignorehitpause = 1
ownpal = 1
removetime = -1

[State 191, removeEX]
type = RemoveExplod
triggerall = NumExplod(1912) >= 1
trigger1 = AnimElem = 32
ID = 1912

[State 191, light]
type = Explod
trigger1 = AnimElem = 37
anim = 7030+var(22)
ID = 7030
pos = -1,4
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
bindtime = 1
persistent = 0
removeongethit = 1
scale = .6,.6

[State 191, light]
type = Explod
trigger1 = AnimElem = 37
anim = 7030+var(22)
ID = 7030
pos = -1,3
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
scale = .6,.6
vfacing = -1

[State 191, Darken]
type = BGPalFX
triggerAll = time <= 389
trigger1 = 1
ignorehitpause = 1
time = 5
mul = 180,180,180
add = 5,5,5
invertall = 0

[State 191, Darken]
type = BGPalFX
trigger1 = time = 390
ignorehitpause = 1
time = 135
mul = 90,90,150
add = 5,5,5
invertall = 0

[State 191, skull]
type = Explod
trigger1 = time = 395
anim = 6000
ID = 6000
pos = 0,-50
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1

[State 191, skull cosmo]
type = Explod
trigger1 = time = 400
anim = 6001+var(22)
ID = 6001
pos = 0,-50
postype = p1
sprpriority = -5
ignorehitpause = 1
ownpal = 1
removetime = 125

[State 191, skull]
type = PlaySnd
trigger1 = time = 395
value = 5, 8

[State 191, voice]
type = PlaySnd
trigger1 = AnimElem = 37
value = 13, 2
channel = 0

[State 191]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 0

[State 191]
type = PlaySnd
trigger1 = time = 80
value = 2, 1

[State 191]
type = PlaySnd
trigger1 = time = 130
value = 5, 1

[State 191, cloth]
type = PlaySnd
trigger1 = time = 200
value = 5, 2

[State 191, cloth]
type = PlaySnd
trigger1 = AnimElem = 25
value = 4, 2

[State 191, cloth]
type = PlaySnd
trigger1 = AnimElem = 27
value = 4, 3

[State 191, cloth]
type = PlaySnd
trigger1 = AnimElem = 29
value = 4 ,4

[State 191, cloth]
type = PlaySnd
trigger1 = AnimElem = 31
value = 4, 5

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
type = ChangeState
trigger1 = time = 540
value = 0
ctrl = 0

;----------------------------------------------------------
; Intro 2 (masked)
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = Intro

[State 192]
type = AssertSpecial
trigger1 = time = [0,50]
flag = nobardisplay

[State 192]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2, 1

[State 192, cosmo]
type = Explod
trigger1 = time = 90
anim = 1920+(10*var(22))
ID = 1920
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
removetime = 125

[State 192, skull]
type = Explod
trigger1 = time = 90
anim = 6000
ID = 6000
pos = -5,-40
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1

[State 192, skull cosmo]
type = Explod
trigger1 = time = 100
anim = 6001+var(22)
ID = 6001
pos = -5,-40
postype = p1
sprpriority = -5
ignorehitpause = 1
ownpal = 1
removetime = 125

[State 192, mantle]
type = Helper
trigger1 = time = 90
stateno = 1921
ID = 1921
postype = p1
pos = 0,0
ownpal = 1

[State 192, mask]
type = Helper
trigger1 = time = 90
stateno = 1922
ID = 1922
postype = p1
pos = 0,0
ownpal = 1

[State 192, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 0

[State 192, voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 13, 1

[State 192, Darken]
type = BGPalFX
trigger1 = time = 95
ignorehitpause = 1
time = 135
mul = 90,90,150
add = 5,5,5
invertall = 0

[State 192]
type = AfterImage
trigger1 = time = 1
time = 50
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

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
trigger1 = time = 300
value = 12
ctrl = 0

; Mantle
[Statedef 1921]
type    = A
movetype= A
physics = S
juggle  = 6
anim = 1921
ctrl = 0
sprpriority = 6

[State 1921, Velset]
type = VelSet
trigger1 = Time >= 1
x = -5
y = -1

[State 1921]
type = DestroySelf
trigger1 = time = 200

; Mask
[Statedef 1922]
type = S
movetype = I
physics = S
anim = 1922
sprpriority = 4

[State 1922, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1922]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 1922]
type = AngleAdd
trigger1 = Time >= 1
value = -9

[State 1922]
type = AngleDraw
trigger1 = Time >= 1 && Pos Y <= 10

[State 1922]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 1922]
type = VelSet
trigger1 = time = 2
y = -4

[State 1922]
type = VelSet
trigger1 = time >= 2
x = -1

[State 1922]
type = VelAdd
trigger1 = time >= 2
y = .35

[State 1922]
type = DestroySelf
trigger1 = time = 200

;---------------------------------------------------------------------------
; Intro 3 (specter)
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, voice]
type = PlaySnd
trigger1 = time = 2
value = 13, 2
channel = 0

[State 193]
type = AssertSpecial
trigger1 = Time = [0,360]
flag = Intro

[State 193]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 0

[State 193]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2, 1

[State 193]
type = PlaySnd
trigger1 = AnimElem = 14
value = 5, 8

[State 193, skull]
type = Explod
trigger1 = AnimElem = 13
anim = 6000
ID = 6000
pos = 0,-40
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1

[State 193, skull cosmo]
type = Explod
trigger1 = AnimElem = 14
anim = 6001+var(22)
ID = 6001
pos = 0,-40
postype = p1
sprpriority = -5
ignorehitpause = 1
ownpal = 1
removetime = 125

[State 193, cosmo]
type = Explod
trigger1 = AnimElem = 14
anim = 1913+(10*var(22))
ID = 1913
pos = -6,2
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
removetime = 125

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

[State 193, mantle]
type = Explod
trigger1 = AnimElem = 14
pos = -75,0
anim = 1940
sprpriority = -5
ownpal = 1

;---------------------------------------------------------------------------
; Intro 4 (lost canvas specter)
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 194, voice]
type = PlaySnd
trigger1 = time = 2
value = 15, 0
channel = 0

[State 194]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = Intro

[State 194, no music]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = nomusic

[State 194]
type = PlaySnd
trigger1 = AnimElem = 1
value = 9, 0

[State 194]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 0

[State 194]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1, 4

[State 194, violet light]
type = Explod
trigger1 = AnimElem = 7
anim = 7130
ID = 7130
pos = -1,4
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
scale = .6,.6

[State 194, violet light]
type = Explod
trigger1 = AnimElem = 7
anim = 7130
ID = 7130
pos = -1,3
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
scale = .6,.6
vfacing = -1

[State 194, Darken]
type = BGPalFX
triggerAll = time <= 300
trigger1 = 1
ignorehitpause = 1
time = 5
mul = 180,180,180
add = 5,5,5
invertall = 0

[State 194, Darken]
type = BGPalFX
trigger1 = time = 1
ignorehitpause = 1
time = 135
mul = 90,90,150
add = 5,5,5
invertall = 0

[State 194, cosmo]
type = Explod
trigger1 = AnimElem = 8
anim = 903+var(22)
pos = -0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 0

[State 194, powter]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 8
pos = 0,0
anim = 7010+var(22)
sprpriority = -3
removeongethit = 1
bindtime = -1
ID = 7010
scale = .9, .9

[State 194, powter]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = AnimElem = 8
pos = 0,2
anim = 7020+var(22)
sprpriority = 2
removeongethit = 1
bindtime = -1
ID = 7020
scale = .9, .9

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

[State 194, removeEX]
type = RemoveExplod
triggerall = NumExplod(903) >= 1
trigger1 = Time = 230
ID = 903

[State 194, removeEX]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = Time = 230
ID = 7010

[State 194, removeEX]
type = RemoveExplod
triggerall = NumExplod(7020) >= 1
trigger1 = Time = 230
ID = 7020

;---------------------------------------------------------------------------
; Provoking (state decider)
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
trigger1 = Var(2) = [0,99]
value = 198

;----------------------------------------
; Provoking
[Statedef 198]
type = S
ctrl = 0
anim = 198
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 198]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 0

[State 198, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13, 3
channel = 0

[State 198]
type = ChangeState
trigger1 = Time = 360
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 197
ctrl = 1

;---------------------------------------
; Provoking (end)
[Statedef 197]
type = S
ctrl = 0
anim = 197
velset = 0,0
movetype = I
physics = S
sprpriority = 2
poweradd = 0

[State 197]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 1

[State 197]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
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

[State 200]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 200]
type = HitDef
trigger1 = AnimElem = 3
priority = 3
attr = S, NA
damage = 20
animtype = light
guardflag = MA
sparkno = s7000+var(22)
sparkxy = -10,-80
hitsound = s1, 0
guardsound = s6, 0
pausetime = 12,6
ground.hittime = 13
ground.type = high
ground.slidetime = 9
ground.velocity = -5
air.velocity = -3,-3
getpower = 0
givepower = 0

[State 200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
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

[State 210]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 210]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 2,9
sparkno = s7001+var(22)
sparkxy = -10,-82
hitsound = s1, 1
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -3,-2
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

[State 210]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
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

[State 220, Velset]
type = VelSet
trigger1 = AnimElem = 4
x = 6

[State 220]
type = Explod
trigger1 = AnimElem = 2
pos = 0,0
anim = 7084
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 220]
type = PlaySnd
trigger1 = Time = 8
value = 0, 2

[State 220]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 2,9
sparkno = s7002+var(22)
sparkxy = -10,-75
hitsound = s1, 2
guardsound = s6, 0
ground.type = high
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

[State 220]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
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

[State 225]
type = PlaySnd
trigger1 = Time = 5
value = 0, 2

[State 225]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 2,9
sparkno = s7002+var(22)
sparkxy = 0,-110
hitsound = s1, 2
guardsound = s6, 0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8
air.velocity = -8,-2
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 225]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
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
guardflag = MA
pausetime = 0,8
sparkno = s7000+var(22)
sparkxy = -10,-70
hitsound = s1, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -7
air.velocity = -3,-2
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

[State 230]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
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

[State 235]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 235]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Light
damage    = 20
guardflag = MA
pausetime = 2,9
sparkno = s7000+var(22)
sparkxy = 0,-56
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

[State 235]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 240
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
guardflag = MA
pausetime = 2,9
sparkno = s7001+var(22)
sparkxy = -10,-70
hitsound = s1, 1
guardsound = s6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-2
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

[State 240, powter]
type = Explod
trigger1 = AnimElem = 1
pos = -20,-5
anim = 7080
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 240]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
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
guardflag = MA
pausetime = 2,9
sparkno = s7002+var(22)
sparkxy = 0,-95
hitsound = s1, 2
guardsound = s6, 0
ground.type = Low
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

[State 250, powter]
type = Explod
trigger1 = AnimElem = 2
pos = 0,-6
anim = 7080
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 250]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
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

[State 400]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 400]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = s7000+var(22)
sparkxy = -10,-50
hitsound = s1, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-1
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

[State 400]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
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

[State 410]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 410]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
priority  = 3
animtype  = medium
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = s7001+var(22)
sparkxy = -10,-50
hitsound = s1, 1
guardsound = s6, 0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -4,-1
envshake.time =  10
envshake.freq = 10    
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

[State 410]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
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

[State 420]
type = PlaySnd
trigger1 = Time = 5
value = 0, 2

[State 420]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
animtype  = hard
hitflag = MAF
guardflag = L
pausetime = 7, 8
sparkno = s7002+var(22)
sparkxy = -5,-50
hitsound = s1, 2
guardsound = s6, 0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -5,-1
envshake.time =  15 
envshake.freq = 15    
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

[State 420]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
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

[State 430]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 430]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7000+var(22)
sparkxy = -10,-2
hitsound = s1, 0
guardsound = s6, 0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3,-3
down.velocity = -5,0
down.hittime = 20
envshake.time =  5 
envshake.freq = 5    
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

[State 430]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
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

[State 440, Velset]
type = VelSet
trigger1 = AnimElem = 2
x = 1

[State 440]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 440]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
animtype  = medium
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7001+var(22)
sparkxy = -10,-50
hitsound = s1, 1
guardsound = s6, 0
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
getpower = 0
givepower = 0

[State 440, powter]
type = Explod
trigger1 = AnimElem = 2
pos = -32,0
anim = 7080
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 440, powter]
type = Explod
trigger1 = AnimElem = 3
pos = 10,0
anim = 7080
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 440]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
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

[State 450]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 450, Velset]
type = VelSet
trigger1 = AnimElem = 2
x = 4

[State 450, powter]
type = Explod
trigger1 = AnimElem = 1
pos = 80,1
anim = 7085
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 450]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002+var(22)
sparkxy = 0,0
hitsound = s1, 2
guardsound = s6, 0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.5,-3
guard.velocity = -5
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5
fall = 1
getpower = 0
givepower = 0

[State 450]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
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

[State 600]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 600]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s7000+var(22)
sparkxy = -10,-80
hitsound = s1, 0
guardsound = s6, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
envshake.time =  5
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
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

[State 610]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 610]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7001+var(22)
sparkxy = 0,-55
hitsound = s1, 1
guardsound = s6, 0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4
air.velocity = -3,-4
envshake.time =  10
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
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

[State 620]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 620]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002+var(22)
sparkxy = -10,-95
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

;---------------------------------------------------------------------------
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

[State 630]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 630]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7000+var(22)
sparkxy = -10,-55
hitsound = s1, 0
guardsound = s6, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -3,-3
envshake.time =  5
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
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

[State 640]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 640]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7001+var(22)
sparkxy = -10,-100
hitsound = s1, 1
guardsound = s6, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -4,-3
envshake.time =  10
envshake.freq = 10    
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

;---------------------------------------------------------------------------
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

[State 650]
type = PlaySnd
trigger1 = Time = 5
value = 0, 2

[State 650]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 40
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002+var(22)
sparkxy = -10,-80
hitsound = s1, 2
guardsound = s6, 0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -4,-5
air.velocity = -4,-5
envshake.time =  15
envshake.freq = 15   
envshake.ampl = 5  
envshake.phase = 5
fall = 1
getpower = 0
givepower = 0

;--------------------------------------------------------------------
; Throw - Attempt
[Statedef 800]
type = S
movetype = A
physics = S
poweradd = 50
ctrl = 0
velset = 0,0
anim = 800

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
snap = 50, 0
sparkno = -1
p2facing = 1
ground.cornerpush.veloff = 0
p1stateno = 801
p2stateno = 804
getpower = 0
givepower = 0

[State 800, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 235
ctrl = 1

;---------------------------------------
; Throw - P1 State (1)
[Statedef 801]
type    = A
movetype= A
physics = N
anim = 801

[State 801, 1]
type = PlaySnd
trigger1 = Time = 0
value = 2, 0

[State 801, 2]
type = Explod
trigger1 = Time = 0
anim = F8
pos = 40,-90
sprpriority = 2
postype = p1

[State 801, 3]
type = PlaySnd
trigger1 = AnimElem = 5
value = 12, 1
channel = 0

[State 801, 4]
type = Explod
trigger1 = AnimElem = 8
anim = 7003
ID = 7003
pos = 55,-75
sprpriority = 7

[State 801, 5]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1, 2

[State 801, 6]
type = TargetLifeAdd
Trigger1 = AnimElem = 8
value = -60

[State 801, 7]
type = ChangeState
Trigger1 = AnimTime = 0
value = 802
ctrl = 0

;---------------------------------------
; Throw - P1 State (2)
[Statedef 802]
type    = A
movetype= A
physics = N
anim = 802

[State 802, 1]
type = VelSet
trigger1 = AnimElem = 1
x = -3
y = -8

[State 802, 2]
type = VelAdd
trigger1 = 1
y = .5

[State 802, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 803

;---------------------------------------
; Throw - P1 State (3)
[Statedef 803]
type    = S
physics = S
ctrl = 0
anim = 803
velset = 0,0

[State 803, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 801, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 3

[State 803, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 1

;---------------------------------------
; Throw - P2 State (1)
[Statedef 804]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0

[State 804, 1]
type = PosAdd
trigger1 = AnimElem = 1
x = 0
y = 0

[State 804, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 804

[State 805, 3]
type = ChangeState
Trigger1 = AnimElem = 4
value = 805

;---------------------------------------
; Throw - P2 State (2)
[Statedef 805]
type    = L
movetype= H
physics = N
velset = -5,-6

[State 805, 1]
type = VelAdd
trigger1 = animelem = 1, >= 0
y = .5

[State 805, 2]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------
; Throw 2 - Attempt
[Statedef 810]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 50
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 810, Hitdef]
type = HitDef
Trigger1 = AnimElem = 1
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 811
p2stateno = 812
guard.dist = 0
fall = 1
getpower = 0
givepower = 0

[State 810, 1]
type = ChangeState
Trigger1 = AnimTime = 0
value = 235
ctrl = 1

;---------------------------------------
; Throw 2 - P1 State
[Statedef 811]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 811

[State 811, Width]
type = Width
trigger1 = AnimElemTime(1) = 0
value = 56,0

[State 811, TargetBind]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
time = 1
pos = 56,0

[State 811, BindToTarget]
type = BindToTarget
trigger1 = AnimElemTime(6) = 0
time = 1
pos = 0,0,Foot

[State 811, Width]
type = Width
trigger1 = AnimElemTime(6) = 0
value = 56,0

[State 811, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = S8, 0

[State 811, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0, 1

[State 811, Explod]
type = Explod
trigger1 = AnimElem = 2
pos = 80,1
anim = 7085
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 811, HitDef]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
damage = 60
animtype = Hard
air.animtype = back
guardflag = M
hitflag = MAFD
priority = 4, Hit
sparkno = s7004+var(22)
sparkxy = -20,-60
hitsound = s1, 2
ground.type = Low
pausetime = 0,9
ground.slidetime = 17
ground.hittime = 17
guard.hittime = 17
guard.slidetime = 17
guard.ctrltime = 17
ground.velocity = 4.2,-6.5
air.type = High
air.velocity = 4.2,-6.5
air.hittime = 13
air.juggle = 0
getpower = 0,0
givepower = 0,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
fall = 1
fall.recover = 0
p1sprpriority = 2
p2sprpriority = -1
numhits = 0
snap = 0,-20
getpower = 0
givepower = 0

[State 811, Turn]
type = Turn
trigger1 = AnimElem = 10

[State 811, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = -100

[State 811, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------
; Throw 2 - P2 State
[Statedef 812]
type = S
movetype= H
velset = 0,0
ctrl = 0

[State 812, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 812

[State 812, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(5) = 0
value = 4

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
v = 10
value = 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 9, 1

[State 900, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 0
channel = 0

[State 900, shake]
type = EnvShake
trigger1 = AnimElem = 1
time = 40

[State 900]
type = ChangeState
trigger1 = AnimTime = 0
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

[State 901, powter]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = 1
pos = 0,0
anim = 7010+var(22)
sprpriority = -3
removeongethit = 1
bindtime = -1
ID = 7010
scale = .9, .9

[State 901, powter]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = 1
pos = 0,2
anim = 7020+var(22)
sprpriority = 2
removeongethit = 1
bindtime = -1
ID = 7020
scale = .9, .9

[State 901, cosmo]
type = Explod
triggerall = NumExplod(903) = 0
trigger1 = 1
pos = 0,0
anim = 903
sprpriority = -2
removeongethit = 1
bindtime = -1
ID = 903

[State 901, skull]
type = Explod
trigger1 = AnimElem = 1
anim = 6000
ID = 6000
pos = 0,-50
postype = p1
sprpriority = -4
bindtime = -1
ignorehitpause = 1
ownpal = 1
removeongethit = 1

[State 901, skull cosmo]
type = Explod
trigger1 = AnimElem = 1
anim = 6001+var(22)
ID = 6001
pos = 0,-50
postype = p1
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 32

[State 901, light]
type = Explod
triggerall = NumExplod(7030) = 0
trigger1 = 1
anim = 7030+var(22)
ID = 7030
pos = -1,4
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .6,.6

[State 901, light]
type = Explod
triggerall = NumExplod(7031) = 0
trigger1 = 1
anim = 7031+var(22)
ID = 7031
pos = -1,5
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .6,.6
vfacing = -1

[State 901]
type = PowerAdd
trigger1 = time > 0
value = 5

[State 901]
type = ChangeState
triggerall = Var(59) = 0
trigger1 = command != "charge1"
trigger2 = command != "charge2"
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
trigger1 = AnimTime = 0
value = 901

;----------------------------------------------------
; Cosmo Charge (end)
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
triggerall = NumExplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7020) >= 1
trigger1 = time = 0
ID = 7020

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
triggerall = NumExplod(903) >= 1
trigger1 = time = 0
ID = 903

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
triggerAll = Power >= 3000
trigger1 = Time = 1
value = 9, 3

[State 902]
type = ChangeState
trigger1 = AnimTime= 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hail Of Arrows 1
[Statedef 1000]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = -1

[State 1000]
type = PlaySnd
trigger1 = time = 1
value = 3, 0

[State 1000]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 16
trigger3 = time = 24
value = 5, 4

[State 1000, Helper]
type = Helper
trigger1 = Time = 12
trigger2 = Time = 20
trigger3 = Time = 28
stateno = 1001
ID = 1001
postype = p1
pos = 70, -51
ownpal = 1

[State 1000, spark]
type = Explod
trigger1 = AnimElem = 3
anim = 7063+var(22)
ID = 7063
pos = 60,-55
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 27
facing = 1

[State 1000, cosmo]
type = Explod
trigger1 = AnimElem = 1
triggerall = NumExplod(1003) = 0
anim = 1003+(10*var(22))
ID = 1003
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 30

[State 1000]
type = ChangeState
trigger1 = Time = 30
value = 12
ctrl = 1

;------------------------------------------
; arrow
[Statedef 1001]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 1001
ctrl = 0
sprpriority = 0

[State 1001, Velset]
type = VelSet
trigger1 = Time >= 1
x = 7

[State 1001, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 1001

[State 1001]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Medium
damage    = 20,0
guardflag = MA
pausetime = 1,15
sparkno = s7004+var(22)
sparkxy = -20,0
hitsound = s1, 0
;guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1, -2
envshake.time =  5
envshake.freq = 5   
envshake.ampl = 5  
envshake.phase = 5
Palfx.time          = 5
Palfx.add           = 250,150,10
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1
Fall = 1
getpower = 0
givepower = 0

[State 1001, cosmo]
type = Explod
trigger1 = 1
anim = 1002+(10*parent,var(22))
ID = 1002
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 80

[State 1001, removeEX]
type = RemoveExplod
triggerall = NumExplod(1002) >= 1
trigger1 = movehit >= 1
trigger2 = movecontact >= 1
ID = 1002

[State 1001, shine]
type = PalFX
trigger1 = time = 5
time = 75
add = 0,0,0
sinadd = 200,0,200,3

[State 1001]
type = DestroySelf
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = time = 80

;---------------------------------------------------------------------------
; Hail Of Arrows 2
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

[State 1010]
type = PlaySnd
trigger1 = time = 1
value = 3, 0

[State 1010]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 16
trigger3 = time = 24
value = 5, 4

[State 1010, Helper]
type = Helper
trigger1 = Time = 12
trigger2 = Time = 20
trigger3 = Time = 28
stateno = 1011
ID = 1011
postype = p1
pos = 70, -75
ownpal = 1

[State 1010, spark]
type = Explod
trigger1 = Time = 12
anim = 7063+var(22)
ID = 7063
pos = 80,-75
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 27
facing = 1

[State 1010, cosmo]
type = Explod
trigger1 = AnimElem = 1
triggerall = NumExplod(1013) = 0
anim = 1013+(10*var(22))
ID = 1013
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40

[State 1010]
type = ChangeState
trigger1 = Time = 40
value = 1030
ctrl = 1

;------------------------------------------
; arrow
[Statedef 1011]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 1001
ctrl = 0
sprpriority = 0

[State 1011, Velset]
type = VelSet
trigger1 = Time >= 1
x = 10

[State 1011, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 1011

[State 1011]
type = HitDef
trigger1 = Time = 0
attr = S, SP
animtype  = Medium
damage    = 20,2
guardflag = MA
pausetime = 1,12
sparkno = s7004+var(22)
sparkxy = -20,0
hitsound = s1, 0
;guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3
air.velocity = -2, -2
getpower = 0
givepower = 0
envshake.time =  5
envshake.freq = 5   
envshake.ampl = 5  
envshake.phase = 5
Palfx.time          = 5
Palfx.add           = 250,150,10
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 1011, cosmo]
type = Explod
trigger1 = 1
anim = 1002+(10*parent,var(22))
ID = 1002
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 80

[State 1011, removeEX]
type = RemoveExplod
triggerall = NumExplod(1002) >= 1
trigger1 = movehit = 1
trigger2 = movecontact = 1
ID = 1002

[State 1011, shine]
type = PalFX
trigger1 = time = 5
time = 75
add = 0,0,0
sinadd = 200,0,200,3

[State 1011]
type = DestroySelf
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = time = 80

;---------------------------------------------------------------------------
; Hail Of Arrows 3
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

[State 1020]
type = PlaySnd
trigger1 = time = 1
value = 3, 0

[State 1020]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 16
trigger3 = time = 24
value = 5, 4

[State 1020, Helper]
type = Helper
trigger1 = Time = 12
trigger2 = Time = 20
trigger3 = Time = 28
stateno = 1021
ID = 1021
postype = p1
pos = 60, -85
ownpal = 1

[State 1020, spark]
type = Explod
trigger1 = Time = 12
anim = 7063+var(22)
ID = 7063
pos = 70,-95
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 27
facing = 1

[State 1020, cosmo]
type = Explod
trigger1 = AnimElem = 1
triggerall = NumExplod(1023) = 0
anim = 1023+(10*var(22))
ID = 1023
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40

[State 1020]
type = ChangeState
trigger1 = Time = 45
value = 1030
ctrl = 1

;------------------------------------------
; arrow
[Statedef 1021]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 1021
ctrl = 0
sprpriority = 0

[State 1021, Velset]
type = VelSet
trigger1 = Time >= 1
x = 8
y = -8

[State 1021, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 1021

[State 1021]
type = HitDef
trigger1 = Time = 0
attr = S, SP
animtype  = Medium
damage    = 20,2
guardflag = MA
pausetime = 1,12
sparkno = s7004+var(22)
sparkxy = -20,0
hitsound = s1, 0
;guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3, -2
getpower = 0
givepower = 0
envshake.time =  5
envshake.freq = 5   
envshake.ampl = 5  
envshake.phase = 5
Palfx.time          = 5
Palfx.add           = 250,150,10
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 1021, cosmo]
type = Explod
trigger1 = 1
anim = 1022+(10*parent,var(22))
ID = 1022
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 80

[State 1021, removeEX]
type = RemoveExplod
triggerall = NumExplod(1022) >= 1
trigger1 = movehit = 1
trigger2 = movecontact = 1
ID = 1022

[State 1021, shine]
type = PalFX
trigger1 = time = 5
time = 75
add = 0,0,0
sinadd = 200,0,200,3

[State 1021]
type = DestroySelf
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = time = 80

;------------------------------------------
; Hail Of Arrows 2,3 (end)
[Statedef 1030]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1030
sprpriority = -1

[State 1030, removeEX]
type = RemoveExplod
triggerall = NumExplod(1013) >= 1
trigger1 = Time = 0
ID = 1013

[State 1030, removeEX]
type = RemoveExplod
triggerall = NumExplod(1023) >= 1
trigger1 = Time = 0
ID = 1023

[State 1030]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hail Of Arrows 1 (in air)
[Statedef 1100]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 100
ctrl = 0
anim = 1100
sprpriority = 2
velset = 0,-4

[State 1100]
type = PlaySnd
trigger1 = Time = 9
trigger2 = Time = 17
trigger3 = Time = 26
value = 5, 4

[State 1100, Helper]
type = Helper
trigger1 = Time = 10
trigger2 = Time = 18
trigger3 = Time = 27
stateno = 1101
ID = 1101
postype = p1
pos = 0, -65
ownpal = 1

[State 1100, spark]
type = Explod
trigger1 = Time = 11
anim = 7063+var(22)
ID = 7063
pos = -2,-65
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 27
facing = 1

[State 1100, cosmo]
type = Explod
trigger1 = AnimElem = 2
triggerall = NumExplod(1103) = 0
anim = 1103+(10*var(22))
ID = 1103
pos = 2,-3
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 30

;[State 1100, removeEX]
;type = RemoveExplod
;triggerall = NumExplod(1103) >= 1
;trigger1 = AnimElem = 3
;ID = 1103

;------------------------------------------
; arrow
[Statedef 1101]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 1101
ctrl = 0
sprpriority = 2

[State 1101, Velset]
type = VelSet
trigger1 = Time >= 1
y = 8

[State 1101, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 1101

[State 1101]
type = HitDef
trigger1 = Time = 0
attr = A, SP
animtype  = Medium
damage    = 20,2
guardflag = MA
pausetime = 1,15
sparkno = s7003+var(22)
sparkxy = -25,25
hitsound = s1, 0
;guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2
air.velocity = -2, -2
getpower = 0
givepower = 0
envshake.time =  5
envshake.freq = 5   
envshake.ampl = 5  
envshake.phase = 5
Palfx.time          = 5
Palfx.add           = 250,150,10
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 1101, cosmo]
type = Explod
trigger1 = 1
anim = 1102+(10*parent,var(22))
ID = 1102
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 80

[State 1101, removeEX]
type = RemoveExplod
triggerall = NumExplod(1102) >= 1
trigger1 = movehit >= 1
trigger2 = movecontact >= 1
trigger3 = Pos Y >= 0
ID = 1102

[State 1101, shine]
type = PalFX
trigger1 = time = 5
time = 100
add = 0,0,0
sinadd = 200,0,200,3

[State 1101]
type = DestroySelf
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = Pos Y >= 0
trigger4 = time = 80

;---------------------------------------------------------------------------
; Hail Of Arrows 2 (in air)
[Statedef 1110]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 100
ctrl = 0
anim = 1110
sprpriority = 2
velset = -2,-5

[State 1110]
type = PlaySnd
trigger1 = Time = 9
trigger2 = Time = 17
trigger3 = Time = 26
value = 5, 4

[State 1110, Helper]
type = Helper
trigger1 = Time = 10
trigger2 = Time = 18
trigger3 = Time = 27
stateno = 1111
ID = 1111
postype = p1
pos = 50, -75
ownpal = 1

[State 1110, spark]
type = Explod
trigger1 = Time = 11
anim = 7063+var(22)
ID = 7063
pos = 63,-70
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 27
facing = 1

[State 1110, cosmo]
type = Explod
trigger1 = AnimElem = 1
triggerall = NumExplod(1113) = 0
anim = 1113+(10*var(22))
ID = 1113
pos = 15,7
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = -1

[State 1110, removeEX]
type = RemoveExplod
triggerall = NumExplod(1113) >= 1
trigger1 = AnimElem = 3
ID = 1113

;------------------------------------------
; arrow
[Statedef 1111]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 1111
ctrl = 0
sprpriority = 2

[State 1111, Velset]
type = VelSet
trigger1 = Time >= 1
x = 9
y = 8

[State 1111, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 1111

[State 1111]
type = HitDef
trigger1 = Time = 0
attr = A, SP
animtype  = Medium
damage    = 20,2
guardflag = MA
pausetime = 1,15
sparkno = s7003+var(22)
sparkxy = -25,25
hitsound = s1, 0
;guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -2, -2
getpower = 0
givepower = 0
envshake.time =  5
envshake.freq = 5   
envshake.ampl = 5  
envshake.phase = 5
Palfx.time          = 5
Palfx.add           = 250,150,10
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 1111, cosmo]
type = Explod
trigger1 = 1
anim = 1112+(10*parent,var(22))
ID = 1112
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 80

[State 1111, removeEX]
type = RemoveExplod
triggerall = NumExplod(1112) >= 1
trigger1 = movehit >= 1
trigger2 = movecontact >= 1
trigger3 = Pos Y >= 0
ID = 1112

[State 1111, shine]
type = PalFX
trigger1 = time = 5
time = 100
add = 0,0,0
sinadd = 200,0,200,3

[State 1111]
type = DestroySelf
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = Pos Y >= 0
trigger4 = time = 80

;---------------------------------------------------------------------------
; Arrows 3 (in air)
[Statedef 1120]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 100
ctrl = 0
anim = 1120
sprpriority = 2
velset = 0,0

[State 1120]
type = VelSet
trigger1 = AnimElem = 2
x = -2
y = -4

[State 1120]
type = PlaySnd
trigger1 = Time = 9
trigger2 = Time = 17
trigger3 = Time = 26
value = 5, 4

[State 1120, Helper]
type = Helper
trigger1 = Time = 10
trigger2 = Time = 18
trigger3 = Time = 27
stateno = 1121
ID = 1121
postype = p1
pos = 50, -110
ownpal = 1

[State 1120, spark]
type = Explod
trigger1 = Time = 11
anim = 7063+var(22)
ID = 7063
pos = 65,-102
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 27
facing = 1

[State 1120, cosmo]
type = Explod
trigger1 = AnimElem = 1
triggerall = NumExplod(1123) = 0
anim = 1123+(10*var(22))
ID = 1123
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40

;[State 1120, removeEX]
;type = RemoveExplod
;triggerall = NumExplod(1123) >= 1
;trigger1 = AnimElem = 3
;ID = 1123

;------------------------------------------
; arrow
[Statedef 1121]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 1001
ctrl = 0
sprpriority = 2

[State 1121, Velset]
type = VelSet
trigger1 = Time >= 1
x = 9

[State 1121, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 1121

[State 1121]
type = HitDef
trigger1 = Time = 0
attr = A, SP
animtype  = Medium
damage    = 20,2
guardflag = HA
pausetime = 1,15
sparkno = s7003+var(22)
sparkxy = -25,25
hitsound = s1, 0
;guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2, -2
getpower = 0
givepower = 0
envshake.time =  5
envshake.freq = 5   
envshake.ampl = 5  
envshake.phase = 5
Palfx.time          = 5
Palfx.add           = 250,150,10
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1

[State 1121, cosmo]
type = Explod
trigger1 = 1
anim = 1002+(10*parent,var(22))
ID = 1002
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 80

[State 1121, removeEX]
type = RemoveExplod
triggerall = NumExplod(1002) >= 1
trigger1 = movehit >= 1
trigger2 = movecontact >= 1
trigger3 = Pos Y >= 0
ID = 1002

[State 1121, shine]
type = PalFX
trigger1 = time = 5
time = 100
add = 0,0,0
sinadd = 200,0,200,3

[State 1121]
type = DestroySelf
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = Pos Y >= 0
trigger4 = time = 80

;---------------------------------------------------------------------------
; Shadow Kick (start)
[Statedef 1200]
type = A
movetype = A
physics = N
juggle = 1
poweradd = 100
velset = 0,0
ctrl = 0
anim = 43

[State 1200]
type = AfterImage
trigger1 = time = 1
time = 50
FrameGap = 2
length = 10
PalBright= 0, 0,0
PalContrast= 98,98,98
PalAdd=0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1200]
type = PlaySnd
trigger1 = Time = 0
value = 2, 0

[State 1200]
type = VelSet
trigger1 = animelem = 2
trigger1 = BackEdgeBodyDist = [0,20] 
x = -9
y = -10

[State 1200]
type = VelSet
trigger1 = animelem = 2
trigger1 = BackEdgeBodyDist = [20,70] 
x = -9
y = -9

[State 1200]
type = VelSet
trigger1 = animelem = 2
trigger1 = BackEdgeBodyDist >= 70
x = -6
y = -10

[State 1200]
type = VelAdd
trigger1 = time = [10,30]
y = 0.43

[State 1200]
type = VelAdd
trigger1 = time >= 30
x = -1.8

[State 1200]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10
trigger1 = time >= 15
value = 1201
ctrl = 0

[State 1200]
type = ChangeState
trigger1 = BackEdgeBodyDist > 10
trigger1 = Time = 45
value = 1201
ctrl = 0

;------------------------------------------
; Shadow Kick
[Statedef 1201]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1200

[State 1201]
type = PlaySnd
trigger1 = Time = 0
value = 12, 1
channel = 0

[State 1201]
type = PlaySnd
trigger1 = Time = 0
value = 2, 1

[State 1201]
type = posfreeze
trigger1 = time = [0,3]

[State 1201]
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

[State 1201]
type = VelSet
trigger1 = time = 4
x = 14
y = 8

[State 1201]
type = HitDef
trigger1 = time = 0
animtype = heavy
attr = A, SA
damage = 80,8
priority = 5
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkxy = 20, -20
sparkno = s7002+var(22)
hitsound = s1, 2
guardsound = s6, 0
ground.type = Low
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -4
air.velocity = -1.2, -6
getpower = 0
givepower = 0
forcestand = 1
fall = 1
envshake.time = 10           
envshake.ampl = 7
envshake.freq = 100
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 1201, cosmo]
type = Explod
trigger1 = animelem = 2
anim = 1201+(10*var(22))
ID = 1201
pos = 0,12
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 100

[State 1201]
type = VelSet
trigger1 = pos Y >= 0
x = 0
y = 0

[State 1201]
type = ChangeState
trigger1 = pos Y >= 0
value = 50

;---------------------------------------------------------------------------
; Combo 1
[Statedef 1300]
type    = U
movetype= A
physics = N
juggle  = 3
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1300
sprpriority = 0
facep2 = 1

[State 1300]
type = Explod
triggerall = pos Y >= -5
trigger1 = AnimElem = 2
pos = 30,0
anim = 7084
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 1300]
type = VarSet
trigger1 = Time = 0
var(1) = 0

[State 1300]
type = VarSet
trigger1 = Time = 0 && StateType != A
var(1) = 1

[State 1300]
type = AfterImage
trigger1 = time = 1
time = 57
FrameGap = 5
length = 20
PalBright= 0, 0,0
PalContrast= 98,98,98
PalAdd=0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1300]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 3
damage = 10,1
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 1,3
sparkxy = -10,-80
hitsound = s1, 1
guardsound = s6, 0
sparkno = s7001+var(22)
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
air.velocity = -3,-3
getpower = 0
givepower = 0
persistent = 0

[State 1300]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 5
damage = 10,1
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 1,3
sparkxy = -10,-80
hitsound = s1, 1
guardsound = s6, 0
sparkno = s7001+var(22)
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
air.velocity = -3,-3
getpower = 0
givepower = 0
persistent = 0

[State 1300]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 7
damage = 10,1
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 1,3
sparkxy = -10,-80
hitsound = s1, 1
guardsound = s6, 0
sparkno = s7001+var(22)
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
air.velocity = -3,-3
getpower = 0
givepower = 0
persistent = 0

[State 1300]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 9
damage = 10,1
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 1,3
sparkxy = -10,-80
hitsound = s1, 1
guardsound = s6, 0
sparkno = s7001+var(22)
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
air.velocity = -3,-3
getpower = 0
givepower = 0
persistent = 0

[State 1300]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 12
damage = 40,4
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 7,7
sparkxy = -10,-80
hitsound = s1, 2
guardsound = s6, 0
sparkno = s7002+var(22)
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5,-7
air.velocity = -5,-7
ground.cornerpush.veloff = -70
air.cornerpush.veloff = -70
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 0
persistent = 0

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
value = 12, 1

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 13
value = 12, 0

[State 1300]
type = VelSet
trigger1 = AnimElem = 2
x = 2
persistent = 0

[State 1300]
type = VelSet
trigger1 = AnimElem = 12
y = -2
persistent = 0

[State 1300]
type = VelMul
trigger1 = AnimElem = 14, >= 0 && Vel X
x = 0.7

[State 1300]
type = VelAdd
trigger1 = Pos Y < 0 && AnimElem = 14, >= 1
y = 0.2

[State 1300]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1300]
type = ChangeState
trigger1 = AnimTime = 0; && var(1)
value = 1302
ctrl = 0

[State 1300]
type = null;ChangeState
trigger1 = AnimTime = 0 && !var(1)
value = 1302
ctrl = 0

[State 1300]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 50
ctrl = 0

;---------------------------------------------------------------------------
; Combo (end1)
[Statedef 1301]
type    = S
movetype= I
physics = S
juggle  = 3
;poweradd=
ctrl = 0
velset = 0,0
anim = 1301
sprpriority = 0

[State 1301]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1301]
type = PlaySnd
trigger1 = Time = 1
value = 2, 3

[State 1301]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------------------
; Combo (end2)
[Statedef 1302]
type = A
movetype = I
physics = A
anim = 41
ctrl = 0
sprpriority = 0
;poweradd=
velset = 0,0
;facep2 = 1

[State 1302]
type = null;StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1302]
type = null;CtrlSet
trigger1 = Time = 17
value = 1

[State 1302]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
; Combo 2
[Statedef 1310]
type    = U
movetype= A
physics = N
juggle  = 3
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1300
sprpriority = 0
facep2 = 1

[State 1310]
type = Explod
triggerall = pos Y >= -5
trigger1 = AnimElem = 2
pos = 30,0
anim = 7084
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 1310]
type = VarSet
trigger1 = Time = 0
var(1) = 0

[State 1310]
type = VarSet
trigger1 = Time = 0 && StateType != A
var(1) = 1

[State 1200]
type = AfterImage
trigger1 = time = 1
time = 57
FrameGap = 5
length = 20
PalBright= 0, 0,0
PalContrast= 98,98,98
PalAdd=0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1310]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 3
damage = 10,1
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 1,3
sparkxy = -10,-80
hitsound = s1, 1
guardsound = s6, 0
sparkno = s7001+var(22)
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
air.velocity = -3,-3
getpower = 0
givepower = 0
ID = 1

[State 1310]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 5
damage = 10,1
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 1,3
sparkxy = -10,-80
hitsound = s1, 1
guardsound = s6, 0
sparkno = s7001+var(22)
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
air.velocity = -3,-3
getpower = 0
givepower = 0
ID = 1

[State 1310]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 7
damage = 10,1
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 1,1
sparkxy = -10,-80
hitsound = s1, 1
guardsound = s6, 0
sparkno = s7001+var(22)
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
air.velocity = -3,-3
getpower = 0
givepower = 0
ID = 2

[State 1310]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 9
damage = 10,1
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 1,1
sparkxy = -10,-80
hitsound = s1, 1
guardsound = s6, 0
sparkno = s7001+var(22)
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
air.velocity = -3,-3
getpower = 0
givepower = 0
ID = 2

[State 1310]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 12
damage = 40,4
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 7,7
sparkxy = -10,-80
hitsound = s1, 2
guardsound = s6, 0
sparkno = s7002+var(22)
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5,-7
air.velocity = -5,-7
ground.cornerpush.veloff = -70
air.cornerpush.veloff = -70
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 0
persistent = 0

[State 1310]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
value = 12, 1

[State 1310]
type = PlaySnd
trigger1 = AnimElem = 13
value = 12, 0

[State 1310]
type = VelSet
trigger1 = AnimElem = 2 || AnimElem = 6
x = 3.5
persistent = 0

[State 1310]
type = VelSet
trigger1 = AnimElem = 14
y = -2
persistent = 0

[State 1310]
type = VelMul
trigger1 = AnimElem = 14, >= 0 && Vel X
x = 0.7

[State 1310]
type = VelAdd
trigger1 = Pos Y < 0 && AnimElem = 14, >= 1
y = 0.2

[State 1310]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1310]
type = ChangeState
trigger1 = AnimTime = 0; && var(1)
value = 1302
ctrl = 0

[State 1310]
type = null;ChangeState
trigger1 = AnimTime = 0 && !var(1)
value = 1302
ctrl = 0

[State 1310]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;---------------------------------------------------------------------------
; Combo 3
[Statedef 1320]
type    = U
movetype= A
physics = N
juggle  = 3
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1300
sprpriority = 0
facep2 = 1

[State 1320]
type = Explod
triggerall = pos Y >= -5
trigger1 = AnimElem = 2
pos = 30,0
anim = 7084
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 1320]
type = VarSet
trigger1 = Time = 0
var(1) = 0

[State 1320]
type = VarSet
trigger1 = Time = 0 && StateType != A
var(1) = 1

[State 1200]
type = AfterImage
trigger1 = time = 1
time = 57
FrameGap = 5
length = 20
PalBright= 0, 0,0
PalContrast= 98,98,98
PalAdd=0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1320]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 3
damage = 10,1
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 1,3
sparkxy = -10,-80
hitsound = s1, 1
guardsound = s6, 0
sparkno = s7001+var(22)
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
air.velocity = -3,-3
getpower = 0
givepower = 0
ID = 1

[State 1320]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 5
damage = 10,1
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 1,3
sparkxy = -10,-80
hitsound = s1, 1
guardsound = s6, 0
sparkno = s7001+var(22)
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
air.velocity = -3,-3
getpower = 0
givepower = 0
ID = 1

[State 1320]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 7
damage = 10,1
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 1,3
sparkxy = -10,-80
hitsound = s1, 1
guardsound = s6, 0
sparkno = s7001+var(22)
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
air.velocity = -3,-3
getpower = 0
givepower = 0
ID = 2

[State 1320]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 9
damage = 10,1
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 1,3
sparkxy = -10,-80
hitsound = s1, 1
guardsound = s6, 0
sparkno = s7001+var(22)
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
air.velocity = -3,-3
getpower = 0
givepower = 0
ID = 2

[State 1320]
type = HitDef
attr = S, SA
trigger1 = AnimElem = 12
damage = 40,4
animtype = Light
priority  = 5, Hit
guardflag = MA
pausetime = 7,7
sparkxy = -10,-80
hitsound = s1, 2
guardsound = s6, 0
sparkno = s7002+var(22)
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5,-7
air.velocity = -5,-7
ground.cornerpush.veloff = -70
air.cornerpush.veloff = -70
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 0
persistent = 0

[State 1320]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
value = 12, 1

[State 1320]
type = PlaySnd
trigger1 = AnimElem = 13
value = 12, 0

[State 1320]
type = VelSet
trigger1 = AnimElem = 2 || AnimElem = 6
x = 5
persistent = 0

[State 1320]
type = VelSet
trigger1 = AnimElem = 14
y = -2
persistent = 0

[State 1320]
type = VelMul
trigger1 = AnimElem = 14, >= 0 && Vel X
x = 0.7

[State 1320]
type = VelAdd
trigger1 = Pos Y < 0 && AnimElem = 14, >= 1
y = 0.2

[State 1320]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
persistent = 0

[State 1320]
type = ChangeState
trigger1 = AnimTime = 0; && var(1)
value = 1302
ctrl = 0

[State 1320]
type = null;ChangeState
trigger1 = AnimTime = 0; && !var(1)
value = 1302
ctrl = 0

[State 1320]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52
ctrl = 0

;---------------------------------------
; Hit by Combo - Shaking from the hit
; (a custom gethit state)
; See State 1020 for details
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

;----------------------------------
; Hit by Combo - Flying through the air
; (a custom gethit state)
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
; Hit by Combo - Hit wall
; (a custom gethit state)
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
value = 1, 2

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;------------------------------------------
; Hit by Combo - Bounce off wall
; (a custom gethit state)
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

;-----------------------------------------------------------------------
; Teleport
[Statedef 1400]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1400

[State 1400]
type = AfterImage
trigger1 = AnimElem = 4
time = 50
FrameGap = 2
length = 10
PalBright= 0, 0,0
PalContrast= 98,98,98
PalAdd=0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1400, Snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 5, 5

[State 1400, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1400]
type = PlayerPush
trigger1 = 1
value = 0

[State 1400]
type = ChangeState
trigger1 = AnimTime = 0
value = 1401
ctrl = 1

; Teleport (end)
[Statedef 1401]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1401

[State 1401, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 5, 5

[State 1401]
type = turn
trigger1 = p2dist X < 0

[State 1401]
type = PosAdd
triggerall = Var(59) = 0
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = command = "holdup"
trigger1 = command = "holdback"
trigger1 = Time = 0
x = -150
y = -100

[State 1401]
type = PosAdd
triggerall = Var(59) = 0
triggerall = command != "holdback"
triggerall = command != "holddown"
trigger1 = command = "holdup"
trigger1 = command = "holdfwd"
trigger1 = Time = 0
x = 150
y = -100

[State 1401]
type = PosAdd
triggerall = Var(59) = 0
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = command = "holdup"
trigger1 = Time = 0
x = 0
y = -100

[State 1401]
type = PosAdd
triggerall = Var(59) = 0
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "holdback"
trigger1 = Time = 0
x = -150
y = 0

[State 1401]
type = PosAdd
triggerall = Var(59) = 0
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "holdfwd"
trigger1 = Time = 0
x = 150
y = 0

[State 1401]
type = PosAdd
triggerall = Var(59) = 0
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
trigger1 = command = "holddown"
trigger1 = Time = 0
x = 0
y = 0

[State 1401]
type = PosAdd
triggerall = p2bodydist X <= 60
triggerall = Var(59) != 0
triggerall = Random = [0, 332]
trigger1 = Time = 0
x = -150
y = -100

[State 1401]
type = PosAdd
triggerall = Var(59) != 0
triggerall = Random = [0, 332]
trigger1 = Time = 0
x = 150
y = -100

[State 1401]
type = PosAdd
triggerall = Var(59) != 0
triggerall = Random = [333, 665]
trigger1 = Time = 0
x = 0
y = -100

[State 1401]
type = PosAdd
triggerall = p2bodydist X <= 60
triggerall = Var(59) != 0
triggerall = Random = [333, 665]
trigger1 = Time = 0
x = -150
y = 0

[State 1401]
type = PosAdd
triggerall = Var(59) != 0
triggerall = Random = [666, 999]
trigger1 = Time = 0
x = 150
y = 0

[State 1401]
type = PosAdd
triggerall = Var(59) != 0
triggerall = p2bodydist X <= 60
triggerall = P2MoveType = A
triggerall = Random = [666, 999]
trigger1 = Time = 0
x = 0
y = 0

[State 1401]
type = PlayerPush
trigger1 = 1
value = 0

[State 1401, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1401]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

; Teleport (clones)
;[Statedef 1402]
;type = S
;movetype = I
;physics = S
;anim = 1402
;velset = 0,0
;ctrl = 0
;poweradd = 0
;sprpriority = -2
;
;[State 1402]
;type = PlayerPush
;trigger1 = 1
;value = 0
;
;[State 1402, NoHit]
;type = NotHitBy
;trigger1 = 1
;value = SCA
;
;[State 1402]
;type = turn
;trigger1 = p2dist X < 0
;
;[State 1402]
;type = DestroySelf
;trigger1 = AnimTime = 0
;trigger2 = Pos Y >= 80

;---------------------------------------------------------------------------
; PA
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = -1

[State 3000, Darken]
type = BGPalFX
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 90,90,150
add = 5,5,5
invertall = 0

[State 3000]
type = SuperPause
trigger1 = AnimElem = 2
time = 30
movetime = 30
anim = s7009+var(22)
pos = 0, -80
darken = 1

[State 3000, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 7
channel = 0

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 6

[State 3000, powter]
type = Explod
trigger1 = AnimElem = 4
pos = 4,0
anim = 7010+var(22)
sprpriority = -2
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3000, spark]
type = Explod
trigger1 = AnimElem = 4
anim = 7063+var(22)
ID = 7063
pos = 82,-70
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3000, cosmo]
type = Explod
triggerall = NumExplod(3003) = 0
trigger1 = AnimElem = 2
anim = 3003+(10*var(22))
ID = 3003
pos = 1,1
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 30
supermovetime = 30

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(3003) >= 1
trigger1 = Time = 30
ID = 3003

[State 3000, background]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = AnimElem = 1
pos = -310,-20
anim = 8001
ID = 8001
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 600
supermovetime = 600

[State 3000, background]
type = Explod
triggerall = NumExplod(8000) = 0
trigger1 = AnimElem = 1
pos = -320,-20
anim = 8000
ID = 8000
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 600
supermovetime = 600

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(8001) >= 1
trigger1 = AnimElem = 5
ID = 8001

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(8000) >= 1
trigger1 = AnimElem = 5
ID = 8000

[State 3000]
type = PlaySnd
trigger1 = Time = 38
trigger2 = Time = 45
trigger3 = Time = 48
trigger4 = Time = 54
value = 5, 4

[State 3000, Helper]
type = Helper
trigger1 = Time = 40
trigger2 = Time = 51
stateno = 3001
ID = 3001
postype = p1
pos = 80, -45
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3000, Helper]
type = Helper
trigger1 = Time = 47
stateno = 3001
ID = 3001
postype = p1
pos = 80, -60
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3000, Helper]
type = Helper
trigger1 = Time = 56
stateno = 3001
ID = 3001
postype = p1
pos = 80, -30
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3000]
type = VarSet
trigger1 = Numhelper(3201) >= 1
var(9) = 1

[State 3000]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
; arrows
[Statedef 3001]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 3001
ctrl = 0
sprpriority = 0

[State 3001, Velset]
type = VelSet
trigger1 = Time >= 1
x = 7

[State 3001, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3001

[State 3001]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage    = ifelse (parent,stateno = 3000,50,0),ifelse (parent,stateno = 3000,5,0)
guardflag = MA
pausetime = 1,15
sparkno = s7004+var(22)
sparkxy = -20,-25
hitsound = s1, 0
numhits = 10
;guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4, -2
air.velocity = -4, -2
envshake.time = 20           
envshake.ampl = 7
envshake.freq = 50
fall = 1
fall.recover = 0             
fall.damage = 0
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 5
Palfx.add           = 250,150,10
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1
getpower = 0
givepower = 0

[State 3001]
type = BGPalFX
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3001, cosmo]
type = Explod
trigger1 = 1
anim = 3002+(10*parent,var(22))
ID = 3002
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 80
supermovetime = 80

[State 3001, removeEX]
type = RemoveExplod
triggerall = NumExplod(3002) >= 1
trigger1 = time = 40
ID = 3002

[State 3001]
type = DestroySelf
trigger1 = time = 40

;---------------------------------------------------------------------------
; PA (in air)
[Statedef 3100]
type = A
movetype = A
physics = A
juggle  = 5
poweradd = -1000
ctrl = 0
velset = 0,0
anim = 3100
sprpriority = 2

[State 3100, Darken]
type = BGPalFX
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 90,90,150
add = 5,5,5
invertall = 0

[State 3100]
type = SuperPause
trigger1 = AnimElem = 1
time = 25
movetime = 25
anim = s7009+var(22)
pos = -5, -100
darken = 1

[State 3100, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 7
channel = 0

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 6

[State 3100, spark]
type = Explod
trigger1 = AnimElem = 8
anim = 7060+var(22)
ID = 7060
pos = 50, -70
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3100, cosmo]
type = Explod
triggerall = NumExplod(3103) = 0
trigger1 = AnimElem = 5
anim = 3103+(10*var(22))
ID = 3103
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 30
supermovetime = 30

[State 3100, removeEX]
type = RemoveExplod
triggerall = NumExplod(3103) >= 1
trigger1 = Time = 30
ID = 3103

[State 3100, background]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = AnimElem = 1
pos = -310,-20
anim = 8001
ID = 8001
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 500

[State 3100, background]
type = Explod
triggerall = NumExplod(8000) = 0
trigger1 = AnimElem = 1
pos = -320,-20
anim = 8000
ID = 8000
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 500

[State 3100, removeEX]
type = RemoveExplod
triggerall = NumExplod(8001) >= 1
trigger1 = AnimElem = 9
ID = 8001

[State 3100, removeEX]
type = RemoveExplod
triggerall = NumExplod(8000) >= 1
trigger1 = AnimElem = 9
ID = 8000

[State 3100]
type = VelSet
trigger1 = time = [0,110]
x = 0
y = 0

[State 3100]
type = PlaySnd
trigger1 = Time = 37
trigger2 = Time = 44
trigger3 = Time = 46
trigger4 = Time = 47
value = 5, 4

[State 3100, Helper]
type = Helper
trigger1 = Time = 38
trigger2 = Time = 47
stateno = 3101
ID = 3101
postype = p1
pos = 40, -58
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3100, Helper]
type = Helper
trigger1 = Time = 45
stateno = 3101
ID = 3101
postype = p1
pos = 80, -55
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3100, Helper]
type = Helper
trigger1 = Time = 48
stateno = 3101
ID = 3101
postype = p1
pos = 10, -62
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3100]
type = VarSet
trigger1 = Numhelper(3301) >= 1
var(9) = 1

[State 3100]
type = ChangeState
trigger1 = Time = 110
value = 50
ctrl = 1

;------------------------------------------
; arrows
[Statedef 3101]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 3101
ctrl = 0
sprpriority = 2

[State 3101, Velset]
type = VelSet
trigger1 = Time >= 1
x = 8
y = 7

[State 3101, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3101

[State 3101]
type = HitDef
trigger1 = Time = 0
attr = A, HP
animtype  = Medium
damage    = ifelse (parent,stateno = 3100,50,0),ifelse (parent,stateno = 3100,5,0)
guardflag = MA
pausetime = 1,15
sparkno = s7003+var(22)
sparkxy = -25,20
hitsound = s1, 0
;guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-1
air.velocity = -1, -1
numhits = 10
envshake.time = 20           
envshake.ampl = 7
envshake.freq = 50
fall = 1
fall.recover = 0             
fall.damage = 0
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 5
Palfx.add           = 250,150,10
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1
getpower = 0
givepower = 0

[State 3101, cosmo]
type = Explod
trigger1 = 1
anim = 3102+(10*parent,var(22))
ID = 3102
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 200
supermovetime = 200

[State 3101, shine]
type = PalFX
trigger1 = time = 5
time = 100
add = 0,0,0
sinadd = 200,0,200,3

[State 3101]
type = BGPalFX
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3101]
type = DestroySelf
trigger1 = time = 40
trigger1 = Pos Y >= 0

;---------------------------------------------------------------------------
; PA (ta)
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3200
sprpriority = -1

[State 3200, Darken]
type = BGPalFX
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 90,90,150
add = 5,5,5
invertall = 0

[State 3200]
type = SuperPause
trigger1 = AnimElem = 2
time = 30
movetime = 30
anim = s7009+var(22)
pos = 0, -80
darken = 1

[State 3200, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13, 7
channel = 0

[State 3200]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5, 6

[State 3200, powter]
type = Explod
trigger1 = AnimElem = 5
pos = 4,0
anim = 7010+var(22)
sprpriority = -2
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3200, spark]
type = Explod
trigger1 = AnimElem = 5
anim = 7063+var(22)
ID = 7063
pos = 82,-70
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3200, cosmo]
type = Explod
trigger1 = AnimElem = 2
triggerall = NumExplod(3003) = 0
anim = 3003+(10*var(22))
ID = 3003
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 30
supermovetime = 30

[State 3200, removeEX]
type = RemoveExplod
triggerall = NumExplod(3003) >= 1
trigger1 = Time = 30
ID = 3003

[State 3200, background]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = AnimElem = 1
pos = -310,-20
anim = 8001
ID = 8001
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 600
supermovetime = 600

[State 3200, background]
type = Explod
triggerall = NumExplod(8000) = 0
trigger1 = AnimElem = 1
pos = -320,-20
anim = 8000
ID = 8000
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 600
supermovetime = 600

[State 3200, removeEX]
type = RemoveExplod
triggerall = NumExplod(8001) >= 1
trigger1 = AnimElem = 5
ID = 8001

[State 3200, removeEX]
type = RemoveExplod
triggerall = NumExplod(8000) >= 1
trigger1 = AnimElem = 5
ID = 8000

[State 3200]
type = PlaySnd
trigger1 = Time = 38
trigger2 = Time = 45
trigger3 = Time = 48
trigger4 = Time = 54
value = 5, 7

[State 3200, Helper]
type = Helper
trigger1 = Time = 40
trigger2 = Time = 51
stateno = 3001
ID = 3001
postype = p1
pos = 80, -45
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3200, Helper]
type = Helper
trigger1 = Time = 47
stateno = 3001
ID = 3001
postype = p1
pos = 80, -60
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3200, Helper]
type = Helper
trigger1 = Time = 56
stateno = 3001
ID = 3001
postype = p1
pos = 80, -30
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3200, Enemy ID]
type = VarSet
trigger1 = Time <= 0
trigger1 = Var(50) <= 0
ignorehitpause = 1
var(50) = EnemyNear, ID

[State 3200, Helper]
type = Helper
triggerall = Numhelper(3201) = 0
triggerall = Numhelper(3202) = 0
triggerall = Numhelper(3203) = 0
triggerall = Numhelper(3301) = 0
triggerall = Numhelper(3302) = 0
triggerall = power >= 2000
triggerall = p2life > 0
trigger1 = Time = 63
stateno = 3201
ID = 3201
postype = p1
pos = 50, PlayerID(Var(50)), Pos Y + PlayerID(Var(50)), Const(size.mid.pos.y) -21
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3200]
type = VarSet
trigger1 = Numhelper(3201) >= 1
var(9) = 1

[State 3200]
type = ChangeState
triggerall = Numhelper(3201) >= 1
trigger1 = Helper(3201),MoveHit
value = 3206
ctrl = 0

[State 3200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------
; true arrow
[Statedef 3201]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 3201
ctrl = 0
sprpriority = -5
poweradd= -2000

[State 3201, Velset]
type = VelSet
trigger1 = Time >= 1
x = 8

[State 3201]
type = HitDef
trigger1 = Time = 0
attr = S, HP
animtype  = Hard
damage    = 100,20
pausetime = 1,15
sparkno = s7004+var(22)
sparkxy = -20,0
hitsound = s1, 5
guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1, -2
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
Palfx.time          = 1
Palfx.add           = 180,0,180
Palfx.sinadd        = 255,5,5,1
Palfx.invertall     = 0
p2stateno = 3207
kill = 0
fall.damage = 0
getpower = 0
givepower = 0

[State 3201, cosmo]
type = Explod
trigger1 = 1
anim = 1002+(10*var(22))
ID = 1002
pos = 0,0
postype = p1
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 80
supermovetime = 80

[State 3201, removeEX]
type = RemoveExplod
triggerall = NumExplod(1002) >= 1
trigger1 = movehit >= 1
trigger2 = movecontact >= 1
ID = 1002

[State 3201, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3210

[State 3201]
type = ChangeState
trigger1 = movehit >= 1
value = 3202

[State 3201]
type = ChangeState
trigger1 = movehit = 0
trigger1 = movecontact = 1
value = 3210

[State 3201]
type = DestroySelf
trigger1 = time = 80

;------------------------------------------
; hit
[Statedef 3202]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 3202
ctrl = 0
sprpriority = 8

[State 3202, removeEX]
type = RemoveExplod
triggerall = NumExplod(1002) >= 1
trigger1 = time = 0
ID = 1002

[State 3202, removeEX]
type = RemoveExplod
triggerall = NumExplod(1012) >= 1
trigger1 = time = 0
ID = 1012

[State 3202, Enemy ID]
type = VarSet
trigger1 = Time <= 0
trigger1 = Var(50) <= 0
ignorehitpause = 1
var(50) = EnemyNear, ID

[State 3202, PosSet]
type = PosSet
triggerall = facing = 1
trigger1 = 1
x = PlayerID(Var(50)), Pos X + PlayerID(Var(50)), Const(size.mid.pos.x) +12
y = PlayerID(Var(50)), Pos Y + PlayerID(Var(50)), Const(size.mid.pos.y) -26

[State 3202, PosSet]
type = PosSet
triggerall = facing = -1
trigger1 = 1
x = PlayerID(Var(50)), Pos X - PlayerID(Var(50)), Const(size.mid.pos.x) -12
y = PlayerID(Var(50)), Pos Y + PlayerID(Var(50)), Const(size.mid.pos.y) -27

[State 3202]
type = VelSet
trigger1 = Time >= 0
x = 10*((p2dist x - 5)/(abs(p2dist x - 5) + abs(p2dist y - 0) + 0.0000001))
y = 10*((p2dist y - 80)/(abs(p2dist x - 0) + abs(p2dist y - 80) + 0.0000001))

[State 3202]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
trigger6 = AnimElem = 12
value = 1, 5

[State 3202]
type = PlaySnd
trigger1 = time = 230
value = 1, 4

[State 3202, gold spark]
type = Explod
trigger1 = time = 0
anim = 7260
ID = 7260
pos = 0,0
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 160

[State 3202, gold hit]
type = Explod
trigger1 = Time = 230
anim = 7203
ID = 7203
pos = 0,0
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
vfacing = -1
scale = 2,2

[State 3202, gold hit]
type = Explod
trigger1 = Time = 230
anim = 7203
ID = 7203
pos = 0,0
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
vfacing = 1
scale = 2,2

[State 3202]
type = HitDef
trigger1 = Time = 230
attr = S, HP
animtype  = Hard
damage    = 920,20
guardflag = MA
pausetime = 1,15
sparkno = s7260
sparkxy = -20,0
hitsound = s1, 4
guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1, -2
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
Palfx.time          = 1
Palfx.add           = 180,0,180
Palfx.sinadd        = 255,5,5,1
Palfx.invertall     = 0
kill = 1
fall = 1
getpower = 0
givepower = 0

[State 3202, flames]
type = Explod
trigger1 = Time = 0
anim = 8060
id = 8060
pos = 160,120
postype = back
sprpriority = -5
removetime = 228
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = 228

[State 3202, clock]
type = Explod
trigger1 = Time = 0
anim = 8061
id = 8061
pos = 160,120
postype = back
sprpriority = -5
removetime = 230
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = 230

[State 3202]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = p2life <= 0

;------------------------------------------
; p1 state
[Statedef 3206]
type = S
ctrl = 0
anim = 3206
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 3206]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 0

[State 3206, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 13, 8
channel = 0

[State 3206]
type = ChangeState
trigger1 = Time = 360
value = 0
ctrl = 1

;------------------------------------------
; p2 state
[Statedef 3207]
type = S
physics = S
anim = 5030
juggle = 5
velset = 0,0
ctrl = 0

[State 3207]
type = NotHitBy
trigger1 = Time < 230
value = SCA

[State 3207]
type = PowerAdd
trigger1 = time > 5
value = -100

[State 3207]
type = LifeAdd
trigger1 = time > 10
value = -5
kill = 0

[State 3207]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 3207]
type = VelSet
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 3207]
type = ChangeState
trigger1 = Time = 230
value = 0
ctrl = 1

;------------------------------------------
; guarded
[Statedef 3210]
type = S
movetype = I
physics = S
anim = 3201
sprpriority = 4 

[State 3210, removeEX]
type = RemoveExplod
triggerall = NumExplod(1002) >= 1
trigger1 = Time = 0
ID = 3201

[State 3210, removeEX]
type = RemoveExplod
triggerall = NumExplod(1012) >= 1
trigger1 = Time = 0
ID = 1012

[State 3210, shine]
type = PalFX
trigger1 = time = 0
time = 1
add = 0,0,0
sinadd = 200,0,200,3

[State 3210, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3210]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 3210]
type = AngleAdd
trigger1 = Time >= 1
value = -9

[State 3210]
type = AngleDraw
trigger1 = Time >= 1 && Pos Y <= 10

[State 3210]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3210]
type = VelSet
trigger1 = time = 2
y = -4

[State 3210]
type = VelSet
trigger1 = time >= 2
x = -1

[State 3210]
type = VelAdd
trigger1 = time >= 2
y = .35

[State 3210]
type = ChangeState
trigger1 = Pos Y >= 0
value = 3211

;------------------------------------------
[Statedef 3211]
type = S
movetype = I
physics = S
anim = 3211
sprpriority = 4 

[State 3211, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3211]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3211, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3211]
type = DestroySelf
trigger1 = time = 40

;------------------------------------------------------------------------------
; PA (ta) (in air)
[Statedef 3300]
type = A
movetype = A
physics = A
juggle  = 5
poweradd = -1000
ctrl = 0
velset = 0,0
anim = 3300
sprpriority = 2

[State 3300, Darken]
type = BGPalFX
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 90,90,150
add = 5,5,5
invertall = 0

[State 3300]
type = SuperPause
trigger1 = AnimElem = 1
time = 25
movetime = 25
anim = s7009+var(22)
pos = -5, -100
darken = 1

[State 3300, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 7
channel = 0

[State 3300]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 6

[State 3300, spark]
type = Explod
trigger1 = AnimElem = 8
anim = 7060+var(22)
ID = 7060
pos = 50, -70
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3300, cosmo]
type = Explod
triggerall = NumExplod(3103) = 0
trigger1 = AnimElem = 5
anim = 3103+(10*var(22))
ID = 3103
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 30
supermovetime = 30

[State 3300, removeEX]
type = RemoveExplod
triggerall = NumExplod(3103) >= 1
trigger1 = Time = 30
ID = 3103

[State 3300, background]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = AnimElem = 1
pos = -310,-20
anim = 8001
ID = 8001
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 500

[State 3300, background]
type = Explod
triggerall = NumExplod(8000) = 0
trigger1 = AnimElem = 1
pos = -320,-20
anim = 8000
ID = 8000
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 500

[State 3300, removeEX]
type = RemoveExplod
triggerall = NumExplod(8001) >= 1
trigger1 = AnimElem = 9
ID = 8001

[State 3300, removeEX]
type = RemoveExplod
triggerall = NumExplod(8000) >= 1
trigger1 = AnimElem = 9
ID = 8000

[State 3300]
type = VelSet
trigger1 = time = [0,110]
x = 0
y = 0

[State 3300]
type = ChangeState
trigger1 = Time = 110
value = 50
ctrl = 1

[State 3300]
type = PlaySnd
trigger1 = Time = 37
trigger2 = Time = 44
trigger3 = Time = 46
trigger4 = Time = 47
value = 5, 3

[State 3300, Helper]
type = Helper
trigger1 = Time = 38
trigger2 = Time = 47
stateno = 3101
ID = 3101
postype = p1
pos = 40, -58
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3300, Helper]
type = Helper
trigger1 = Time = 45
stateno = 3101
ID = 3101
postype = p1
pos = 80, -55
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3300, Helper]
type = Helper
trigger1 = Time = 48
stateno = 3101
ID = 3101
postype = p1
pos = 10, -62
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3300, Enemy ID]
type = VarSet
trigger1 = Time <= 0
trigger1 = Var(50) <= 0
ignorehitpause = 1
var(50) = EnemyNear, ID

[State 3300, Helper]
type = Helper
triggerall = Numhelper(3201) = 0
triggerall = Numhelper(3202) = 0
triggerall = Numhelper(3203) = 0
triggerall = Numhelper(3301) = 0
triggerall = Numhelper(3302) = 0
triggerall = power >= 2000
triggerall = p2life > 0
trigger1 = Time = 58
stateno = 3301
ID = 3301
postype = p1
pos = 40, PlayerID(Var(50)), Pos Y + PlayerID(Var(50)), Const(size.mid.pos.y) -21 ;-78
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3300]
type = VarSet
trigger1 = Numhelper(3301) >= 1
var(9) = 1

[State 3300]
type = ChangeState
triggerall = Numhelper(3301) >= 1
trigger1 = Helper(3301),MoveHit
value = 3306
ctrl = 0

;--------------------------------------------------------------------
; true arrow
[Statedef 3301]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 3301
ctrl = 0
sprpriority = -5
poweradd= -2000

[State 3301, Velset]
type = VelSet
trigger1 = Time >= 1
x = 8
y = 7

[State 3301]
type = HitDef
trigger1 = Time = 0
attr = A, HP
animtype  = Hard
damage    = 100,20
pausetime = 1,15
sparkno = s7004+var(22)
sparkxy = -20,0
hitsound = s1, 5
guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1, -2
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
Palfx.time          = 1
Palfx.add           = 180,0,180
Palfx.sinadd        = 255,5,5,1
Palfx.invertall     = 0
p2stateno = 3207
kill = 0
fall.damage = 0
getpower = 0
givepower = 0

[State 3301, cosmo]
type = Explod
trigger1 = 1
anim = 1012
ID = 1012
pos = 0,0
postype = p1
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 80
supermovetime = 80

[State 3301, removeEX]
type = RemoveExplod
triggerall = NumExplod(1012) >= 1
trigger1 = movehit >= 1
trigger2 = movecontact >= 1
ID = 1012

[State 3301]
type = ChangeState
trigger1 = movehit >= 1
value = 3302

[State 3301]
type = ChangeState
trigger1 = movehit = 0
trigger1 = movecontact = 1
value = 3210

[State 3301]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = time = 200
value = 3311

;------------------------------------------
; hit
[Statedef 3302]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 3302
ctrl = 0
sprpriority = 8

[State 3302, removeEX]
type = RemoveExplod
triggerall = NumExplod(1002) >= 1
trigger1 = time = 0
ID = 1002

[State 3302, removeEX]
type = RemoveExplod
triggerall = NumExplod(1102) >= 1
trigger1 = time = 0
ID = 1102

[State 3302, Enemy ID]
type = VarSet
trigger1 = Time <= 0
trigger1 = Var(50) <= 0
ignorehitpause = 1
var(50) = EnemyNear, ID

[State 3302, PosSet]
type = PosSet
triggerall = facing = 1
trigger1 = 1
x = PlayerID(Var(50)), Pos X + PlayerID(Var(50)), Const(size.mid.pos.x) +12
y = PlayerID(Var(50)), Pos Y + PlayerID(Var(50)), Const(size.mid.pos.y) -34

[State 3302, PosSet]
type = PosSet
triggerall = facing = -1
trigger1 = 1
x = PlayerID(Var(50)), Pos X - PlayerID(Var(50)), Const(size.mid.pos.x) -12
y = PlayerID(Var(50)), Pos Y + PlayerID(Var(50)), Const(size.mid.pos.y) -35

[State 3302]
type = VelSet
trigger1 = Time >= 0
x = 10*((p2dist x - 5)/(abs(p2dist x - 5) + abs(p2dist y - 0) + 0.0000001))
y = 10*((p2dist y - 80)/(abs(p2dist x - 0) + abs(p2dist y - 80) + 0.0000001))

[State 3302]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
trigger6 = AnimElem = 12
value = 1, 5

[State 3302]
type = PlaySnd
trigger1 = time = 230
value = 1, 4

[State 3302, gold spark]
type = Explod
trigger1 = time = 0
anim = 7260
ID = 7260
pos = 0,0
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 160

[State 3302, gold light]
type = Explod
trigger1 = Time = 230
anim = 7203
ID = 7203
pos = 0,0
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
vfacing = -1
scale = 2,2

[State 3302, gold light]
type = Explod
trigger1 = Time = 230
anim = 7203
ID = 7203
pos = 0,0
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
vfacing = 1
scale = 2,2

[State 3302]
type = HitDef
trigger1 = Time = 230
attr = A, HP
animtype  = Hard
damage    = 920,20
guardflag = MA
pausetime = 1,15
sparkno = s7260
sparkxy = -20,0
hitsound = s1, 4
guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1
air.velocity = -1, -2
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5
Palfx.time          = 1
Palfx.add           = 180,0,180
Palfx.sinadd        = 255,5,5,1
Palfx.invertall     = 0
kill = 1
fall = 1
getpower = 0
givepower = 0

[State 3302, flames]
type = Explod
trigger1 = Time = 0
anim = 8060
id = 8060
pos = 160,120
postype = back
sprpriority = -5
removetime = 228
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = 228

[State 3302, clock]
type = Explod
trigger1 = Time = 0
anim = 8061
id = 8061
pos = 160,120
postype = back
sprpriority = -5
removetime = 230
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = 230

[State 3302]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = p2life <= 0

;------------------------------------------
; p1 state
[Statedef 3306]
type    = S
physics = S
ctrl = 0
anim = 47

[State 3306, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3306, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3306, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 3306, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3206
ctrl = 0

;------------------------------------------
; land
[Statedef 3311]
type = S
movetype = I
physics = S
anim = 3311
sprpriority = 4

[State 3311]
type = PlaySnd
trigger1 = time = 1
value = 2, 2

[State 3311, shine]
type = PalFX
trigger1 = time = 0
time = 5
add = 0,0,0
sinadd = 200,0,200,3

[State 3311, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3311]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3311, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3311]
type = DestroySelf
trigger1 = time = 40

;---------------------------------------------------------------------------
; PA (il)
[Statedef 3400]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3400
sprpriority = -1

[State 3400, Darken]
type = BGPalFX
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 90,90,150
add = 5,5,5
invertall = 0

[State 3400]
type = SuperPause
trigger1 = AnimElem = 2
time = 30
movetime = 30
anim = s7009+var(22)
pos = 0, -80
darken = 1

[State 3400, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13, 7
channel = 0

[State 3400]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5, 6

[State 3400, powter]
type = Explod
trigger1 = AnimElem = 5
pos = 4,0
anim = 7010+var(22)
sprpriority = -2
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3400, spark]
type = Explod
trigger1 = AnimElem = 5
anim = 7063+var(22)
ID = 7063
pos = 82,-70
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3400, cosmo]
type = Explod
triggerall = NumExplod(3003) = 0
trigger1 = AnimElem = 2
anim = 3003+(10*var(22))
ID = 3003
pos = 1,1
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 30
supermovetime = 30

[State 3400, removeEX]
type = RemoveExplod
triggerall = NumExplod(3003) >= 1
trigger1 = AnimTime = 30
ID = 3003

[State 3400, background]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = AnimElem = 1
pos = -310,-20
anim = 8001
ID = 8001
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 600
supermovetime = 600

[State 3400, background]
type = Explod
triggerall = NumExplod(8000) = 0
trigger1 = AnimElem = 1
pos = -320,-20
anim = 8000
ID = 8000
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 600
supermovetime = 600

[State 3400, removeEX]
type = RemoveExplod
triggerall = NumExplod(8001) >= 1
trigger1 = AnimElem = 5
ID = 8001

[State 3400, removeEX]
type = RemoveExplod
triggerall = NumExplod(8000) >= 1
trigger1 = AnimElem = 5
ID = 8000

[State 3400]
type = PlaySnd
trigger1 = Time = 38
trigger2 = Time = 45
trigger3 = Time = 48
trigger4 = Time = 54
value = 5, 4

[State 3400, Helper]
type = Helper
trigger1 = Time = 40
trigger2 = Time = 51
stateno = 3001
ID = 3001
postype = p1
pos = 80, -45
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3400, Helper]
type = Helper
trigger1 = Time = 47
stateno = 3001
ID = 3001
postype = p1
pos = 80, -60
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3400, Helper]
type = Helper
trigger1 = Time = 56
stateno = 3001
ID = 3001
postype = p1
pos = 80, -30
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3400]
type = VarSet
trigger1 = Numhelper(3300) >= 1
var(9) = 1

[State 3400]
type = ChangeState
triggerall = Numhelper(3001) >= 1
trigger1 = Time = 75 && Helper(3001),MoveHit
value = 3401
ctrl = 0

[State 3400]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------
; p1 state
[Statedef 3401]
type    = A
movetype= A
physics = A
anim = 3401
velset = 0,0
poweradd = -1000
juggle = 7
ctrl = 0
sprpriority = -5

[State 3401, removeEX]
type = RemoveExplod
triggerall = NumExplod(3002) >= 1
trigger1 = Time = 0
ID = 3002

[State 3401, removeEX]
type = RemoveExplod
triggerall = NumExplod(3102) >= 1
trigger1 = Time = 0
ID = 3102

[State 3401, Pos]
type = PosSet
trigger1 = Time >= 0
x = -25
y = -55

[State 3401, Assert]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 3401, Pause]
type = SuperPause
trigger1 = Time = 0
time = 120
anim = -1
sound = S12,3
darken = 1

[State 3401, End]
type = ChangeState
trigger1 = Time = 1
value = 3402

;
[Statedef 3402]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1200

[State 3402]
type = PlaySnd
trigger1 = Time = 0
value = 12, 1
channel = 0

[State 3402]
type = PlaySnd
trigger1 = Time = 0
value = 2, 1

[State 3402]
type = posfreeze
trigger1 = time = [0,3]

[State 3402]
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

[State 3402]
type = VelSet
trigger1 = time = 4
x = 14
y = 8

[State 3402]
type = HitDef
trigger1 = time = 0
animtype = heavy
attr = A, HP
damage = 400,40
priority = 5
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkxy = 20, -20
sparkno = s7002+var(22)
hitsound = s1, 4
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

[State 3402, cosmo]
type = Explod
trigger1 = animelem = 2
anim = 1203
ID = 1203
pos = 0,12
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 100
supermovetime = 100

[State 3402]
type = VelSet
trigger1 = pos Y >= 0
x = 0
y = 0

[State 3402]
type = ChangeState
trigger1 = pos Y >= 0
value = 50

;---------------------------------------------------------------------------
; PA (il) (in air)
[Statedef 3500]
type = A
movetype = A
physics = A
juggle  = 5
poweradd = -1000
ctrl = 0
velset = 0,0
anim = 3500
sprpriority = 2

[State 3500, Darken]
type = BGPalFX
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 90,90,150
add = 5,5,5
invertall = 0

[State 3500]
type = SuperPause
trigger1 = AnimElem = 1
time = 25
movetime = 25
anim = s7009+var(22)
pos = -5, -100
darken = 1

[State 3500, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 7
channel = 0

[State 3500]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 6

[State 3500, spark]
type = Explod
trigger1 = AnimElem = 8
anim = 7060+var(22)
ID = 7060
pos = 50, -70
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3500, cosmo]
type = Explod
triggerall = NumExplod(3103) = 0
trigger1 = AnimElem = 5
anim = 3103+(10*var(22))
ID = 3103
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 30
supermovetime = 30

[State 3500, removeEX]
type = RemoveExplod
triggerall = NumExplod(3103) >= 1
trigger1 = Time = 30
ID = 3103

[State 3500, background]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = AnimElem = 1
pos = -310,-20
anim = 8001
ID = 8001
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 500

[State 3500, background]
type = Explod
triggerall = NumExplod(8000) = 0
trigger1 = AnimElem = 1
pos = -320,-20
anim = 8000
ID = 8000
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 500

[State 3500, removeEX]
type = RemoveExplod
triggerall = NumExplod(8001) >= 1
trigger1 = AnimElem = 9
ID = 8001

[State 3500, removeEX]
type = RemoveExplod
triggerall = NumExplod(8000) >= 1
trigger1 = AnimElem = 9
ID = 8000

[State 3500]
type = VelSet
trigger1 = time = [0,110]
x = 0
y = 0

[State 3500]
type = PlaySnd
trigger1 = Time = 37
trigger2 = Time = 44
trigger3 = Time = 46
trigger4 = Time = 47
value = 5, 4

[State 3500, Helper]
type = Helper
trigger1 = Time = 38
trigger2 = Time = 47
stateno = 3101
ID = 3101
postype = p1
pos = 40, -58
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3500, Helper]
type = Helper
trigger1 = Time = 45
stateno = 3101
ID = 3101
postype = p1
pos = 80, -55
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3500, Helper]
type = Helper
trigger1 = Time = 48
stateno = 3101
ID = 3101
postype = p1
pos = 10, -62
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3500]
type = VarSet
trigger1 = Numhelper(3301) >= 1
var(9) = 1

[State 3500]
type = ChangeState
triggerall = Numhelper(3101) >= 1
trigger1 = Time = 75 && Helper(3101),MoveHit
value = 3401
ctrl = 0

[State 3500]
type = ChangeState
trigger1 = Time = 110
value = 50
ctrl = 1

;--------------------------------------------------------------------
; PA (mp)
[Statedef 3600]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 3600
sprpriority = -1

[State 3600]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 1
channel = 0

[State 3600]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13, 10
channel = 1

[State 3600, vel]
type = VelSet
trigger1 = AnimElem = 2
x = 0
y = -12

[State 3600, vel]
type = VelSet
trigger1 = AnimElem = 3
x = -0.5
y = -11

[State 3600, vel]
type = VelSet
trigger1 = AnimElem = 4
x = -0.7
y = -9.5

[State 3600, vel]
type = VelSet
trigger1 = AnimElem = 5
x = -1
y = -8

[State 3600, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 3700
ctrl = 0

;---------------------------------------------------------------------------
; PA (mp) (in air)
[Statedef 3700]
type = A
movetype = A
physics = A
juggle  = 5
poweradd = -3000
ctrl = 0
velset = 0,0
anim = 3700
sprpriority = 2

[State 3700, Darken]
type = BGPalFX
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 90,90,150
add = 5,5,5
invertall = 0

[State 3700]
type = SuperPause
trigger1 = AnimElem = 1
time = 25
movetime = 25
anim = s7009+var(22)
pos = -5, -100
darken = 1

[State 3700, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 7
channel = 0

[State 3700]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 10
value = 5, 6

[State 3700, spark]
type = Explod
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
anim = 7060+var(22)
ID = 7060
pos = 50, -70
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 180
removeongethit = 1

[State 3700, violet spark]
type = Explod
triggerall = var(22) != 0
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
anim = 7160
ID = 7160
pos = 50, -70
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 180
removeongethit = 1

[State 3700, cosmo]
type = Explod
triggerall = NumExplod(3103) = 0
trigger1 = AnimElem = 5
anim = 3103+(10*var(22))
ID = 3103
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 30
supermovetime = 30

[State 3700, removeEX]
type = RemoveExplod
triggerall = NumExplod(3103) >= 1
trigger1 = Time = 30
ID = 3103

[State 3700, background]
type = Explod
triggerall = NumExplod(8001) = 0
trigger1 = AnimElem = 1
pos = -310,-20
anim = 8001
ID = 8001
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 500

[State 3700, background]
type = Explod
triggerall = NumExplod(8000) = 0
trigger1 = AnimElem = 1
pos = -320,-20
anim = 8000
ID = 8000
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 500

[State 3700, removeEX]
type = RemoveExplod
triggerall = NumExplod(8001) >= 1
trigger1 = AnimElem = 9
ID = 8001

[State 3700, removeEX]
type = RemoveExplod
triggerall = NumExplod(8000) >= 1
trigger1 = AnimElem = 9
ID = 8000

[State 3700]
type = VelSet
trigger1 = time = [0,300]
x = 0
y = 0

[State 3700]
type = PlaySnd
triggerall = Time < 100
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
value = 5, 4

[State 3700, Helper]
type = Helper
triggerall = Time < 180
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
stateno = 3701
ID = 3701
postype = p1
pos = 60, -28
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3700, Helper]
type = Helper
triggerall = Time < 180
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
stateno = 3702
ID = 3702
postype = p1
pos = 45, -48
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3700, Helper]
type = Helper
triggerall = Time < 180
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
stateno = 3703
ID = 3703
postype = p1
pos = 65, -48
ownpal = 1
supermovetime = 500
pausemovetime = 1

[State 3700]
type = ChangeState
trigger1 = Time = 220
value = 50
ctrl = 1

;------------------------------------------
; arrows
[Statedef 3701]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 3004
ctrl = 0
sprpriority = 2

[State 3701, Velset]
type = VelSet
trigger1 = Time >= 1
x = 4
y = 7

[State 3701, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -67.5

[State 3701, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3001

[State 3701]
type = HitDef
trigger1 = Time = 0
attr = A, HP
animtype  = Medium
damage    = 20,2
guardflag = MA
pausetime = 1,15
sparkno = s7003+var(22)
sparkxy = -25,20
hitsound = s1, 0
;guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-1
air.velocity = -1, -1
numhits = 10
envshake.time = 20           
envshake.ampl = 7
envshake.freq = 50
fall = 1
fall.recover = 0             
fall.damage = 0
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 5
Palfx.add           = 250,150,10
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1
getpower = 0
givepower = 0

[State 3701, cosmo]
type = Explod
trigger1 = 1
anim = 3067+(10*parent,var(22))
ID = 3067
pos = -33,-85
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 200
supermovetime = 200
vfacing = -1

[State 3701, shine]
type = PalFX
trigger1 = time = 5
time = 100
add = 0,0,0
sinadd = 200,0,200,3

[State 3701]
type = BGPalFX
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3701]
type = DestroySelf
trigger1 = time = 40
trigger1 = Pos Y >= 0

;------------------------------------------
; arrows
[Statedef 3702]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 3004
ctrl = 0
sprpriority = 2

[State 3702, Velset]
type = VelSet
trigger1 = Time >= 1
x = 8
y = 7

[State 3702, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -45

[State 3702, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3001

[State 3702]
type = HitDef
trigger1 = Time = 0
attr = A, HP
animtype  = Medium
damage    = 20,2
guardflag = MA
pausetime = 1,15
sparkno = s7003+var(22)
sparkxy = -25,20
hitsound = s1, 0
;guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-1
air.velocity = -1, -1
numhits = 10
envshake.time = 20           
envshake.ampl = 7
envshake.freq = 50
fall = 1
fall.recover = 0             
fall.damage = 0
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 5
Palfx.add           = 250,150,10
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1
getpower = 0
givepower = 0

[State 3702, cosmo]
type = Explod
trigger1 = 1
anim = 3045+(10*parent,var(22))
ID = 3045
pos = -39,-73
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 200
supermovetime = 200
vfacing = -1

[State 3702, shine]
type = PalFX
trigger1 = time = 5
time = 100
add = 0,0,0
sinadd = 200,0,200,3

[State 3702]
type = BGPalFX
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3702]
type = DestroySelf
trigger1 = time = 40
trigger1 = Pos Y >= 0

;------------------------------------------
; arrows
[Statedef 3703]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 3004
ctrl = 0
sprpriority = 2

[State 3703, Velset]
type = VelSet
trigger1 = Time >= 1
x = 7
y = 4

[State 3703, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -22.5

[State 3703, Hit]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA,AA,AT,AP,NT,ST,HT,NA,SA,HA,NP,SP,HP
stateno = 3001

[State 3703]
type = HitDef
trigger1 = Time = 0
attr = A, HP
animtype  = Medium
damage    = 20,2
guardflag = MA
pausetime = 1,15
sparkno = s7003+var(22)
sparkxy = -25,20
hitsound = s1, 0
;guardsound = s6, 1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-1
air.velocity = -1, -1
numhits = 10
envshake.time = 20           
envshake.ampl = 7
envshake.freq = 50
fall = 1
fall.recover = 0             
fall.damage = 0
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 5
Palfx.add           = 250,150,10
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1
getpower = 0
givepower = 0

[State 3703, cosmo]
type = Explod
trigger1 = 1
anim = 3022+(10*parent,var(22))
ID = 3022
pos = -39,-55
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 200
supermovetime = 200
vfacing = -1

[State 3703, shine]
type = PalFX
trigger1 = time = 5
time = 100
add = 0,0,0
sinadd = 200,0,200,3

[State 3703]
type = BGPalFX
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3703]
type = DestroySelf
trigger1 = time = 40
trigger1 = Pos Y >= 0

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State -2, Get P2 Distance]
type = VarSet
trigger1 = P2Dist X != 0
var(11) = Floor(P2Dist X)

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

;---------------------------------------

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 225
triggerall = stateno = 220
triggerall = stateno = 420
triggerall = stateno = 620
trigger1 = time = 5
value = 12, 1
channel = 0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 250
triggerall = stateno = 450
triggerall = stateno = 650
trigger1 = time = 5
value = 12, 0
channel = 0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
trigger1 = stateno = 1000
trigger2 = stateno = 1010
trigger3 = stateno = 1020
trigger4 = stateno = 1100
trigger5 = stateno = 1110
trigger6 = stateno = 1120
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
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10, 0

[State -2, Random sound]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10, 0

[State -2, Random sound]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 10, 1

;---------------------------------------

; Supercombo
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
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 220) && (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 230) && (movecontact)
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 210) && (movecontact)
value = 250
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 230) && (movecontact)
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 250) && (movecontact)
value = 1010

; 4 Punches
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
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 210) && (movecontact)
value = 220

; 3 Punches + Combo
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
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 220) && (movecontact) 
value = 1300

; 3 Punches + Combo
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
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 220) && (movecontact)
value = 1310

; 3 Punches + Combo
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
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 220) && (movecontact)
value = 1320

; 2 Punches + Hail Of Arrows
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
value = 1000

; 2 Punches + Hail Of Arrows
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
value = 1010

; 2 Punches + Hail Of Arrows
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
value = 1020

; 2 Punches + Hail Of Arrows
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235) 
trigger1 = (movecontact)
value = 220
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 235) && (movecontact) 
value = 1020

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
value = 240

; 3 Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235)
trigger1 = (movecontact)
value = 250
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 235) && (movecontact)
value = 230

; 3 Kicks
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

; 3 Crouch Punches
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400) 
trigger1 = (movecontact)
value = 420
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 420) && (prevstateno = 400) && (movecontact) 
value = 410

; 3 Crouch Kicks
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

; 3 Air Punches
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 620
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 620) && (prevstateno = 600) && (movecontact) 
value = 610

; 3 Air Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 630
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 630) && (prevstateno = 640) && (movecontact) 
value = 650

; 2 Air Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 650

; 2 Air Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 640

; Punch + Hail Of Arrows in air
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 1100

; Punch + Hail Of Arrows in air
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 1110

; Punch + Hail Of Arrows in air
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 1120

;---------------------------------------------------------------------------
; 2\3 Button Combination
;---------------------------------------------------------------------------

; Cosmo Charge
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 69])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120) && (power < 3000)
value = 900

; Throw
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (stateno != 100) && (random = [70, 104])
trigger1 = (P2bodydist X < 20) && (prevstateno != 5120) && (p2movetype != H)
value = 800

; Throw 2
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (stateno != 100) && (random = [105, 139])
trigger1 = (P2bodydist X < 20) && (prevstateno != 5120) && (p2movetype != H)
value = 810

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [140,174])
value = 199

;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------

; Hail Of Arrows 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [175, 209])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120)
value = 1000

; Hail Of Arrows 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [210, 244])
trigger1 = (P2bodydist X >= 175) && (prevstateno != 5120)
value = 1010

; Hail Of Arrows 3
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [245, 279])
trigger1 = (P2bodydist X >= 200) && (prevstateno != 5120) && (p2movetype != A)
value = 1020

; Hail Of Arrows 1 (in air)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [280, 314])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120)
value = 1100

; Hail Of Arrows 2 (in air)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [315, 349])
trigger1 = (P2bodydist X <= 175) && (prevstateno != 5120)
value = 1110

; Hail Of Arrows 3 (in air)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [350, 384])
trigger1 = (P2bodydist X <= 200) && (prevstateno != 5120) && (p2movetype != A)
value = 1120

; Shadow Kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [385, 419])
trigger1 = (P2bodydist X >= 20) && (prevstateno != 5120)
value = 1200

; Shadow Kick (in air)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [420, 454])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120)
value = 1201

; Combo 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S) && (ctrl) && (random = [455, 489])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 1300

; Combo 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S) && (ctrl) && (random = [490, 524])
trigger1 = (P2bodydist X <= 160) && (prevstateno != 5120)
value = 1310

; Combo 3
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S) && (ctrl) && (random = [525, 559])
trigger1 = (P2bodydist X <= 200) && (prevstateno != 5120)
value = 1320

; Teleport
[State -2]
type = ChangeState
Triggerall = (roundstate = 2)  && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)  && (random = [560, 594])
trigger1 = (P2bodydist X > 70) && (prevstateno != 5120)
value = 1400

;---------------------------------------------------------------------------
; Super Moves
;---------------------------------------------------------------------------

; PA
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 170) && (power >= 1000) && (power < 2000) && (random = [595, 629])
value = 3000

; PA (in air)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl)
trigger1 = (p2bodydist X <= 200) && (power >= 1000) && (power < 2000) && (random = [630, 664])
value = 3100

; PA (il)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 170) && (power >= 2000) && (random = [665, 699])
value = 3400

; PA (il) (in air)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl)
trigger1 = (p2bodydist X <= 200) && (power >= 2000) && (random = [700, 734])
value = 3500

; PA (mp)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 250) && (power >= 3000) && (random = [735, 769])
value = 3600

; PA (mp) (in air)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl)
trigger1 = (p2bodydist X <= 200) && (power >= 3000) && (random = [770, 804])
value = 3700

; PA (ta)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 170) && (power >= 3000) && (p2life <= 250) && (random = [805, 839])
value = 3200

; PA (ta) (in air)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl)
trigger1 = (p2bodydist X <= 200) && (power >= 3000) && (p2life <= 250) && (random = [840, 874])
value = 3300

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

; Arrows (arrow cosmo)
[State -3]
type = RemoveExplod
triggerall = NumExplod(1002) >= 1
trigger1 = stateno != 1001
trigger1 = stateno != 1011
trigger1 = stateno != 1021
trigger1 = stateno != 1121
ID = 1002

; Arrows in air (char cosmo)
[State -3]
type = RemoveExplod
triggerall = NumExplod(1103) >= 1
trigger1 = stateno != 1100
ID = 1103
[State -3]
type = RemoveExplod
triggerall = NumExplod(1113) >= 1
trigger1 = stateno != 1110
ID = 1113
[State -3]
type = RemoveExplod
triggerall = NumExplod(1123) >= 1
trigger1 = stateno != 1120
ID = 1123

; Arrows in air (arrow cosmo)
[State -3]
type = RemoveExplod
triggerall = NumExplod(1102) >= 1
trigger1 = stateno != 1101
ID = 1102
[State -3]
type = RemoveExplod
triggerall = NumExplod(1112) >= 1
trigger1 = stateno != 1111
ID = 1112

; Shadow Kick (char cosmo)
[State -3]
type = RemoveExplod
triggerall = NumExplod(1201) >= 1
trigger1 = stateno != 1201
ID = 1201

; PA (in air) (char cosmo)
[State -3, remove]
type = RemoveExplod
triggerall = NumExplod(3103) >= 1
trigger1 = stateno != 3100
trigger1 = stateno != 3300
trigger1 = stateno != 3500
trigger1 = stateno != 3700
ID = 3103

; PA (in air) (arrows cosmo)
[State -3, remove]
type = RemoveExplod
triggerall = NumExplod(3102) >= 1
trigger1 = stateno != 3101
ID = 3102

; PA (mp) (arrows cosmo)
[State -3, remove]
type = RemoveExplod
triggerall = NumExplod(7002) >= 1
trigger1 = stateno != 3700
ID = 3067
[State -3, remove]
type = RemoveExplod
triggerall = NumExplod(7001) >= 1
trigger1 = stateno != 3700
ID = 3045
[State -3, remove]
type = RemoveExplod
triggerall = NumExplod(7003) >= 1
trigger1 = stateno != 3700
ID = 3022

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
trigger1 = Animelem = 3
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 5
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
triggerall = var(22) = 0
trigger1 = Time = 1
time = 35
PalBright = 10,10,10
PalContrast = 128,200,200
trans = Add1

[State -3, Air Jump]
type = AfterImage
triggerall = stateno = 45
triggerall = var(22) = 1
trigger1 = Time = 1
time = 35
PalBright = 10,10,10
PalContrast = 150,90,200
trans = Add1

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = 2, 1

[State -3, Air Jump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = F2, 1

[State -3, Air Jump]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

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
pos = 25,0
anim = 7084
sprpriority = 5
removeongethit = 1
ownpal = 1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = AnimElem = 3
pos = 25,0
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
trigger1 = Animelem = 3
value = F3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 6
value = F3, 1

;---------------------------------------

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
pos = -10,20
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
value = 11, 1

;-------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9