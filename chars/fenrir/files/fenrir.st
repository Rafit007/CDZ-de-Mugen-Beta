;---------------------------------------------------------------------------
; FENRIR ST FILE by YoungZac, Wise, Squall & FobiaZ
;---------------------------------------------------------------------------

; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = AssertSpecial
trigger1 = Time = [0,360]
flag = roundnotover

[State 170, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13,8
channel = 0

[State 170, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 170, 4]
type = Explod
trigger1 = AnimElem = 8
anim = 7062
sprpriority = 4
postype = p1
pos = 24,-60
bindtime = 1
removetime = -2
removeongethit = 1

;---------------------------------------------------------------------------
; Win State Decider
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Matchover = 0
value = 181

[State 180, 2]
type = ChangeState
trigger1 = Matchover = 1
value = 182

;---------------------------------------------------------------------------
; Win Pose 1 - Round Win
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = roundnotover

[State 181, mouth]
type = Explod
trigger1 = Time = 1
anim = 199
ID = 199
pos = 0,0
postype = p1
bindtime = 85
sprpriority = 10
removetime = 85
removeongethit = 1
scale = 1.045,1.045

[State 181, mouth]
type = Explod
trigger1 = Time = 120
anim = 199
ID = 199
pos = 0,0
postype = p1
bindtime = 110
sprpriority = 10
removetime = 110
removeongethit = 1
scale = 1.045,1.045

;[State 181, mouth]
;type = Explod
;trigger1 = Time = 240
;anim = 199
;ID = 199
;pos = 0,0
;postype = p1
;bindtime = 100
;sprpriority = 10
;removetime = 100
;removeongethit = 1
;scale = 1.045,1.045

[State 181, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3,0

[State 181, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,3
channel = 0

[State 181, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,3

[State 181, 2]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win Pose 2 - Match Win
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, 1]
type = AssertSpecial
trigger1 = Time = [0,270]
flag = RoundNotOver

[State 182, mouth]
type = Explod
trigger1 = Time = 1
anim = 199
ID = 199
pos = 0,0
postype = p1
bindtime = 130
sprpriority = 10
removetime = 130
removeongethit = 1
scale = 1.045,1.045

[State 182, mouth]
type = Explod
trigger1 = Time = 190
anim = 198
ID = 198
pos = 0,0
postype = p1
bindtime = 100
sprpriority = 10
removetime = 100
removeongethit = 1
scale = 1.045,1.045

[State 182, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3,0

[State 182, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,6
channel = 0

;---------------------------------------------------------------------------
; Intro state decider
[Statedef 190]
type = S
velset = 0,0
ctrl = 0
;anim = 190

[State 190]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 190, 1]
type = ChangeState
trigger1 = Var(2) = [1,24]
value = 191

[State 190, 2]
type = ChangeState
trigger1 = Var(2) = [25,49]
value = 192

[State 190, 3]
type = ChangeState
trigger1 = Var(2) = [50,70]
value = 193

[State 190, 4]
type = ChangeState
triggerall = p2name != "fenrir"
triggerall = p3name != "fenrir"
triggerall = p4name != "fenrir"
triggerall = p2name != "hilda"
triggerall = p3name != "hilda"
triggerall = p4name != "hilda"
trigger1 = Var(2) = [71,99]
value = 194

[State 190, 5]
type = ChangeState
triggerall = p2name = "fenrir" || p3name = "fenrir" || p4name = "fenrir" || p2name = "hilda" || p3name = "hilda" || p4name = "hilda"  
trigger1 = Var(2) = [71,99]
value = 193

;---------------------------------------------------------------------------
; Intro 1 (robe)
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,400]
flag = Intro

[State 191, 2]
type = RemoveExplod
triggerall = NumExplod(199) != 0
trigger1 = 1
ID = 199

[State 191, fx]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 150,150,222
sinadd = 34,56,67,240
add = 5,5,5
invertall = 0

[State 191, wolf]
type = Helper
trigger1 = Time = 0
id = 2010
postype = p1
pos = -70, 0
stateno = 2010
keyctrl = 0
ownpal = 1

[State 191, robe]
type = Explod
trigger1 = Time = 0
anim = 1910
pos = -10,0
postype = p1
removetime = -2
sprpriority = 3
supermovetime = 350
ignorehitpause = 0
ownpal = 1
bindtime = 170
persistent = 0
removeongethit = 1

[State 191, robe cosmo]
type = Explod
trigger1 = Time = 0
anim = 1911
pos = -11,2
postype = p1
removetime = 350
sprpriority = 2
supermovetime = 350
ignorehitpause = 0
ownpal = 1
bindtime = 350
persistent = 0
removeongethit = 1

[State 191, symbol]
type = Explod
trigger1 = Time = 6
anim = 6000
pos = -50,-180
postype = p1
removetime = 330
sprpriority = -1
supermovetime = 330
ignorehitpause = 1
ownpal = 1
ID = 6000
removeongethit = 1
bindtime = -1
persistent = 1
trans = Addalpha
alpha = 150,256

[State 191, light]
type = Explod
trigger1 = Time = 340
anim = 7009
pos = 50,2
postype = p1
removetime = -2
sprpriority = -2
supermovetime = 170
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 0
removeongethit = 1

[State 191, wind]
type = Explod
trigger1 = Time = 359
ID = 1912
anim = 1912
pos = -5,0
postype = p1
sprpriority = 5
supermovetime = 24
removetime = 24
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0

[State 191, voice]
type = PlaySnd
trigger1 = Time = 0
value = 13,12
channel = 0

[State 191, voice]
type = PlaySnd
trigger1 = Time = 6
value = 14,5

[State 191, voice]
type = PlaySnd
trigger1 = Time = 351
value = 12,1
channel = 0

[State 191, voice]
type = PlaySnd
trigger1 = Time = 350
value = 5,2

[State 191, voice]
type = PlaySnd
trigger1 = Time = 359
value = 4,4

[State 191, stopsnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 191, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------------------------------------------
; Intro 2 (anime)
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, 1]
type = AssertSpecial
trigger1 = time = [0,360]
flag = Intro

[State 192, fx]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 150,150,222
sinadd = 34,56,67,240
add = 5,5,5
invertall = 0

[State 192, wolf]
type = Helper
trigger1 = time = 0
id = 2010
postype = p1
pos = -45, 0
stateno = 2010
keyctrl = 0
ownpal = 1

[State 192, mouth]
type = Explod
trigger1 = AnimElem = 1
anim = 199
ID = 199
pos = 0,0
postype = p1
bindtime = 210
sprpriority = 10
removetime = 210
removeongethit = 1
scale = 1.045,1.045

[State 192, ursa minor 1]
type = Explod
trigger1 = AnimElem = 3
postype = back
pos = -40,20
anim = 8054
ID = 8054
sprpriority = -3
removetime = 120
scale = 0.6,0.6

[State 192, background]
type = Explod
trigger1 = AnimElem = 3
anim = 8050
ID = 8050
pos = 0,0
postype = back
sprpriority = -4
supermovetime = 120
removetime = 120
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 192, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,0
channel = 0

[State 192, snd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
value = 5,3

[State 192, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 14,5
channel = 0

[State 192, stopsnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 192, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------
; Intro 3 (jump)
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 1]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = Intro

[State 193, 2]
type = AssertSpecial
trigger1 = time = [0,60]
flag = nobardisplay

[State 193, wolf]
type = Helper
trigger1 = Time = 0
id = 2010
postype = p1
pos = -40, 0
stateno = 2010
keyctrl = 0
ownpal = 1

[State 193, wolf]
type = Helper
trigger1 = AnimElem = 55
id = 2011
postype = p1
pos = -40, 0
stateno = 2011
keyctrl = 0
ownpal = 1

[State 193, jump]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,1

[State 193, land]
type = PlaySnd
trigger1 = AnimElem = 53
value = 2,2

[State 193, land]
type = Explod
trigger1 = Animelem = 53
postype = p1
pos = 0,0
scale = 0.5,0.5
removetime = 16
sprpriority = 3
anim = 7081
id = 7081

[State 193, land2]
type = PlaySnd
trigger1 = AnimElem = 54
value = 3,0

[State 193, voice]
type = PlaySnd
trigger1 = AnimElem = 55
value = 14,1
channel = 0

[State 193, stopsnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 193, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;-------------------------------------------------------------------------------
; Intro 4 (god warriors)
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 194]
type = AssertSpecial
trigger1 = time = [0,425]
flag = intro
flag2= noshadow

[State 194]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 194, ursa maior 2]
type = Explod
triggerall = NumExplod(8055) = 0
trigger1 = animelem = 1
anim = 8055
ID = 8055
removeongethit = 1
removetime = 380
postype = p1
pos = -50, -20
sprpriority = -8
bindtime = -1
scale = .75,.75

; Cosmo
[State 194]
type = explod
trigger1 = time = 0
pos = 0,0
anim = 1947
pos = 0, 0
removetime = 400
sprpriority = -2
ownpal = 1

; Hilda voice
[State 194]
type = PlaySnd
trigger1 = time = 0
value = 15, 0
channel = 1

; Hilda
[State 194]
type = explod
trigger1 = time = 0
pos = 5,0
anim = 1940
removetime = 390
sprpriority = -1
ownpal = 1

[State 194]
type = ChangeState
trigger1 = animTime = 0
value = 0

; Sigfried
[State 194]
type = explod
trigger1 = time = 0
id = 1941
pos = 0,0
anim = 1941
removetime = 390
sprpriority = 0
ownpal = 1

[State 194]
type = RemoveExplod
triggerall = time = 0
id = 1941
trigger1 = p2name = "sigfried" || p3name = "sigfried" || p4name = "sigfried"

; Mime
[State 194]
type = explod
trigger1 = time = 0
id = 1942
pos = 0,0
anim = 1942
removetime = 390
sprpriority = 2
ownpal = 1

[State 194]
type = RemoveExplod
triggerall = time = 0
id = 1942
trigger1 = p2name = "mime" || p3name = "mime" || p4name = "mime"

; Hagen
[State 194]
type = explod
trigger1 = time = 0
id = 1943
pos = 0,10
anim = 1943
removetime = 390
sprpriority = 1
ownpal = 1

[State 194]
type = RemoveExplod
triggerall = time = 0
id = 1943
trigger1 = p2name = "hagen" || p3name = "hagen" || p4name = "hagen"

; Alberich
[State 194]
type = explod
trigger1 = time = 0
id = 1944
pos = 0,0
anim = 1944
removetime = 390
sprpriority = 2
ownpal = 1
scale= .90,.90

[State 194]
type = RemoveExplod
triggerall = time = 0
id = 1944
trigger1 = p2name = "alberich" || p3name = "alberich" || p4name = "alberich"

; Cyd
[State 194]
type = explod
id = 1945
trigger1 = time = 0
pos = 0,0
anim = 1945
removetime = 390
sprpriority = -3
ownpal = 1

[State 194]
type = RemoveExplod
triggerall = time = 0
id = 1945
trigger1 = p2name = "syd" || p3name = "syd" || p4name = "syd"

; Tholl
[State 194]
type = explod
id = 1946
trigger1 = time = 0
pos = 0,0
anim = 1946
removetime = 390
sprpriority = -3
ownpal = 1

[State 194]
type = RemoveExplod
triggerall = time = 0
id = 1946
trigger1 = p2name = "tholl" || p3name = "tholl" || p4name = "tholl"

[State 194, wolf]
type = Helper
trigger1 = time = 390
id = 2030
postype = p1
pos = -145, 0
stateno = 2030
keyctrl = 0
ownpal = 1

[State 194, mask]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,3

[State 194]
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
; Provoking State Decider
[Statedef 195]
type = S
movetype = I
velset = 0,0
ctrl = 0

[State 195, 1]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 195, 2]
type = ChangeState
trigger1 = Var(2) = [0,50]
value = 196

[State 195, 3]
type = ChangeState
trigger1 = Var(2) = [51,99]
value = 197

;---------------------------------------------------------------------------
; Provoking 1
[Statedef 196]
type = S
movetype = I
physics = S
anim = 196
velset = 0,0
ctrl = 0

[State 196, mouth]
type = Explod
trigger1 = AnimElem = 1
anim = 198
ID = 198
pos = 0,0
postype = p1
bindtime = 110
sprpriority = 10
removetime = 110
removeongethit = 1
scale = 1.045,1.045

[State 196, 1]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = Time = 120
value = 3,0

[State 196, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,5
channel = 0

[State 196, 3]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = Time = 120
value = 5,3

[State 196, 4]
type = ChangeState
trigger1 = Time = 120
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Provoking 2
[Statedef 197]
type = S
movetype = I
physics = S
anim = 197
velset = 0,0
ctrl = 0

[State 197, mouth]
type = Explod
trigger1 = AnimElem = 1
anim = 199
ID = 199
pos = -8,1
postype = p1
bindtime = 150
sprpriority = 10
removetime = 150
removeongethit = 1
scale = 1.045,1.045

[State 197, 1]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = Time = 160
value = 3,0

[State 197, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,2
channel = 0

[State 197, 3]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = Time = 160
value = 5,3

[State 197, 4]
type = ChangeState
trigger1 = Time = 160
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 200
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 200, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 20
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = s7000
sparkxy = -8,-85
hitsound   = s1,7
guardsound = s6,1
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
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

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,4

[State 210, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 8,8
sparkno = s7004
sparkxy = -8,-76
hitsound   = s1,6
guardsound = s6,1
ground.type = High
ground.slidetime = 8
ground.hittime  = 15
ground.velocity = -4.0
air.velocity = -2.5,-4

[State 210, 3]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 210, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Strong Punch (close)
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

[State 215, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 215, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 4,8
sparkno = s7001
sparkxy = -8,-70
hitsound   = s1,5
guardsound = s6,1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -3,-5
air.velocity = -2.5,-3.5
fall = 1

[State 215, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Strong Punch
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

[State 220, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 220, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Up
damage    = 40
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-110
hitsound   = s1,3
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -1,-10.5
guard.velocity = -6
air.velocity = -1,-8.5
airguard.velocity = -4,-4.5
p2facing = 1
fall = 1
fall.recovertime = 50
yaccel = .4

[State 220, fx]
type = Explod
trigger1 = AnimElem = 4
anim = 221
id = 221
pos = 0,0
postype = p1
sprpriority = 4
removetime = 12
bindtime = -1
ownpal = 1
supermovetime = 12
removeongethit = 1

[State 220, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Kick
[Statedef 230]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 230                       ;Change animation (Def: no change)
poweradd = 50                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 230, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 20, 0                   ;Damage that move inflicts, guard damage
getpower = 0
givepower = 0
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = s7000                      ;Spark anim no (Def: set above)
sparkxy = -8, -95               ;X-offset for the "hit spark" rel. to p2,
hitsound = s1,1                  ;Sound to play on hit
guardsound = s6,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 12             ;Time opponent is in hit state
ground.velocity = -4             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air

[State 230, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 230, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[Statedef 240]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 240                       ;Change animation (Def: no change)
poweradd = 50                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 240, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 30, 0                   ;Damage that move inflicts, guard damage
getpower = 0
givepower = 0
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = s7000                      ;Spark anim no (Def: set above)
sparkxy = -8, -80               ;X-offset for the "hit spark" rel. to p2,
hitsound = s1,2                  ;Sound to play on hit
guardsound = s6,0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 12             ;Time that the opponent slides back
ground.hittime  = 15             ;Time opponent is in hit state
ground.velocity = -6             ;Velocity at which opponent is pushed
airguard.velocity = -2.9,-3.2     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air

[State 240, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Strong Kick
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
value = 0,1

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7000
sparkxy = -8,-70
hitsound   = s1,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -8,-78
hitsound   = s1,2
guardsound = s6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -2.2,-3.2

[State 250, 3]
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

[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

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
sparkxy = -10,-42
hitsound   = s1,7
guardsound = s6,1
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, 3]
type = CtrlSet
trigger1 = AnimElemTime(4) >= 0
value = 1

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

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

[State 410, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,4

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
animtype  = Medium
damage    = 30
getpower = 0
givepower = 0
priority  = 5
hitflag = MAF
guardflag = L
pausetime = 8,8
sparkxy = 0,-50
sparkno = s7000
hitsound   = s1,6
guardsound = s6,1
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -1,0
guard.velocity = -6
air.velocity = -1,0
airguard.velocity = -1.5,-3
p2facing = 1

[State 410, fx]
type = Explod
trigger1 = Time = 8
anim = 1201
pos = -70,-60
postype = p1
removetime = 30
sprpriority = 3
supermovetime = 1201
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.9,0.7

[State 410, 4]
type = PlaySnd
trigger1 = AnimElem = 8
value = 0,0

[State 410, 5]
type = CtrlSet
trigger1 = AnimElemTime(11) >= 0
value = 1

[State 410, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 420]
type = S
movetype = A
physics = S
anim = 420
velset = 0,0
ctrl = 0
poweradd = 50

[State 420, cosmo]
type = Playsnd
trigger1 = time = 0
value = 0,1

[State 420, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, SA
animtype  = medium
damage    = 15
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 8,8
sparkxy = 0,-50
sparkno = s7070
hitsound   = s1,6
guardsound = s6,1
ground.type = Low
ground.slidetime = 8
ground.hittime  = 10
ground.velocity = -1,0
guard.velocity = -6
air.velocity = -1,0
airguard.velocity = -4,0
p2facing = 1
fall = 0

[State 420, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = medium
damage    = 10
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 8,8
sparkxy = 0,-50
sparkno = s7070
hitsound   = s1,6
guardsound = s6,1
ground.type = Low
ground.slidetime = 8
ground.hittime  = 10
ground.velocity = -4,3
guard.velocity = -6
air.velocity = -4,-5
airguard.velocity = -4,0
p2facing = 1
fall = 1

[State 420, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
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

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 8,8
sparkno = s7000
sparkxy = -10,-8
hitsound   = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 8
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 8

[State 430, 2]
type = CtrlSet
trigger1 = AnimElemTime(3) >= 0
value = 1

[State 430, 3]
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

[State 440, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 10
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 8,8
sparkno = s7000
sparkxy = -10,-8
hitsound   = s1,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 8
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 8

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 20
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 8,8
sparkno = s7000
sparkxy = -10,-48
hitsound   = s1,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 8
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 8

[State 440, 3]
type = CtrlSet
trigger1 = AnimElemTime(4) >= 0
value = 1

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 450
sprpriority = 2

[State 450, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 450, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 40
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 8,8
sparkno = s7000
sparkxy = -10,-8
hitsound   = s1,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 8
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 8
fall = 1

[State 450, 3]
type = CtrlSet
trigger1 = AnimElemTime(3) >= 0
value = 1

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jump Light Punch
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
value = 0,0

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s7000
sparkxy = -10,-58
hitsound   = s1,7
guardsound = s6,1
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 600, 3]
type = CtrlSet
trigger1 = AnimElemTime(3) >= 0
value = 1

;---------------------------------------------------------------------------
; Jump Medium Punch
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
trigger1 = Time = 2
value = 0,4

[State 610, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 4,12
sparkno = s7002
sparkxy = -10,-55
hitsound   = s1,6
guardsound = s6,1
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

;---------------------------------------------------------------------------
; Jump Strong Punch
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 620
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 620, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 40
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7001
sparkxy = -5,-35
hitsound   = s1,3
guardsound = s6,1
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3
fall = 1

;---------------------------------------------------------------------------
; Jump Light Kick
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
value = 0,0

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
sparkxy = -5,-35
hitsound   = s1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3

;---------------------------------------------------------------------------
; Jump Medium Kick
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
trigger1 = Time = 1
value = 0,1

[State 640, 2]
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
sparkxy = -5,-35
hitsound   = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3

;---------------------------------------------------------------------------
; Jump Strong Kick
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
trigger1 = Time = 2
value = 0,2

[State 650, 2]
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
sparkxy = -10,-40
hitsound   = s1,3
guardsound = s6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4

;---------------------------------------------------------------------------
; Throw (start)
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
anim = 800
poweradd = 50

[State 800, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NT
getpower = 0
givepower = 0
Hitflag = M-
priority = 2, Miss
sparkno = -1
hitsound = s1,0
p1stateno = 805
p2stateno = 810

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Throw (p1 state 1)
[Statedef 805]
type = S
movetype = A
physics = N
anim = 805
velset = 0,0

[State 805, 0]
type = Changestate
trigger1 = animtime = 0
value = 806

;---------------------------------------
; Throw (p1 state 2)
[Statedef 806]
type = S
movetype = A
physics = N
anim = 806

[State 806, 0]
type = VelSet
trigger1 = Time = 0
x = 2
y = -6

[State 806, 1]
type = VelAdd
trigger1 = Time >= 0
y = .4

[State 806, 2]
type = Changestate
trigger1 = Vel Y > 0
trigger1 = Pos Y > 0
value = 807

;---------------------------------------
; Throw (p1 state 3)
[Statedef 807]
type = S
movetype = A
physics = N
anim = 807
velset = 0,0

[State 807, 0]
type = BindToTarget
trigger1 =  animtime != 0
pos = 16,0,Foot

[State 807, 1]
type = TargetLifeAdd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 14
trigger4 = animelem = 18
trigger5= animelem = 22
trigger6 = animelem = 26
value = -8

[State 807, 2]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 14
trigger3= animelem = 22
value = 1,0

[State 807, 3]
type = PlaySnd
trigger1 = animelem = 10
trigger2 = animelem = 18
trigger3 = animelem = 26
value = 1,4

[State 807, 4]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 14
trigger4 = animelem = 18
trigger5= animelem = 22
trigger6 = animelem = 26
anim = 7000
pos = 37,-15
sprpriority = 9

[State 807, 5]
type = Changestate
trigger1 = animtime = 0
value = 808

;---------------------------------------
; Throw (p1 state 4)
[Statedef 808]
type    = S
movetype= A
physics = A
ctrl = 0
anim = 105

[State 808, Turn]
type = Turn
trigger1 = AnimElem = 2

[State 808, 1]
type = VelSet
trigger1 = Time = 0
x = 3
y = -6

[State 808, 2]
type = TargetLifeAdd
trigger1 = Time = 0
value = -12

[State 808, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,1

[State 808, 4]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 808, 5]
type = Explod
trigger1 = Time = 0
anim = F2
pos = 37,-15

[State 808, 6]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 808, 7]
type = TargetVelSet
trigger1 = Time = 0
y = -9.5

[State 808, 8]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 808, 9]
type = Explod
trigger1 = Time = 0
anim = F60
pos = 0, 0
under = 1

[State 808, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 52

;---------------------------------------
; Throw (p2 state 1)
[Statedef 810]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0

[State 810, 0]
type = VelSet
trigger1 = AnimElem = 3
x = -2
y = -5

[State 810, 1]
type = VelAdd
trigger1 = Pos Y < 0
y = .35

[State 810, 2]
type = Changeanim2
trigger1 = Time = 0
value = 810

[State 810, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 811

;---------------------------------------
; Throw (p2 state 2)
[Statedef 811]
type = L
movetype = H
physics = N

[State 811, 0]
type = Changeanim2
trigger1 = Time = 0
value = 811

[State 811, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 811, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 811, 3]
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 811, 4]
type = Explod
trigger1 = Time = 1
anim = F60
pos = 0, 0
under = 1

[State 811, 5]
type = PlaySnd
trigger1 = Time = 1
value = F7,0

[State 811, 6]
type = Changeanim2
trigger1 = Time = 3
value = 812

[State 811, 7]
type = PosSet
trigger1 = Time = 3
y = 20

[State 811, 8]
type = VelAdd
trigger1 = Time >= 3
y = .4

[State 811, 9]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
value = 813

;---------------------------------------
; Throw (p2 state 3)
[Statedef 813]
type = L
movetype= H
physics = N

[State 813, 0]
type = ChangeAnim2
trigger1 = time = 0
value = 813

[State 813, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 813, 2]
type = VelSet
trigger1 = Time = 0
y = 0

[State 813, 3]
type = VelMul
trigger1 = Time >= 0
x = 0.85

[State 813, 4]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 813, 5]
type = Explod
trigger1 = Time = 0
anim = F60
pos = 0, 0
under = 1

[State 813, 6]
type = ChangeState
trigger1 = Vel Y < 0
value = 814

;---------------------------------------
; Throw (p2 state 4)
[Statedef 814]
type = L
movetype= H
physics = N

[State 814, 0]
type = ChangeAnim2
trigger1 = time = 0
value = 811

[State 814, 1]
type = Veladd
trigger1 = Time >= 0
y = .4

[State 814, 2]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
; Blinding Claw (start)
[Statedef 850]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 850
sprpriority = 2

[State 850, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,4

[State 850, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Up
damage    = 10
getpower = 0
givepower = 0
priority  = 5
pausetime = 12,12
sparkno = s7002
sparkxy = 0,-80
hitsound   = s1,5
guardsound = s6,1
ground.type = Low
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -1,-10.5
guard.velocity = -6
air.velocity = -1,-8.5
airguard.velocity = -4,-4.5
p2facing = 1
fall = 0
fall.recovertime = 50
p2stateno = 860

[State 850, super]
type = BGPalfx
trigger1 = movehit
ignorehitpause = 1
time = 30
mul = 107,107,222
add = -5,-5,-5
invertall = 1

[State 850, eyes]
type = Explod
triggerall = numexplod(8060) = 0
trigger1 = movehit
anim = 8060
ID = 8060
pos = -150,-220
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
removeongethit = 1
supermovetime = 250
removetime = -1

[State 850, explod]
type = Explod
triggerall = numexplod(7070) = 0
trigger1 = movehit
anim = 7071
ID = 7070
removetime = 10
persistent = 0
pos = 0,-110
postype = p2
bindtime = -1
removeongethit = 1

[State 850, end1]
type = ChangeState
trigger1 = movehit = 1
value = 851

[State 850, end2]
type = ChangeState
trigger1 = AnimTime = 0 && movehit = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Blinding Claw (p1 state 1)
[Statedef 851]
type    = A
physics = A
ctrl = 0
anim = 851
sprpriority = 1

[State 851, playsnd]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 851, 1]
type = VelSet
trigger1 = Time = 0
x = -5
y = -3

[State 851, 2]
type = Explod
trigger1 = Time = 5
pos = -5,15
anim = 70841
sprpriority = 5
supermovetime = 250
removeongethit = 1
scale = 0.8,0.8
ownpal = 1

[State 851, 3]
type = VelSet
trigger1 = Time = 19
y = 0

[State 851, 4]
type = PosSet
trigger1 = Time = 19
y = 0

[State 851, playsnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2,2

[State 851, 5]
type = ChangeState
trigger1 = AnimElem = 4
value = 852

;---------------------------------------------------------------------------
; Blinding Claw (p1 state 2)
[Statedef 852]
type    = S
physics = S
ctrl = 0
anim = 852

[State 852, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 852, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 852, background]
type = Explod
trigger1 = Time = 0
pos = 0,0
anim = 8061
ID = 8060
postype = back
sprpriority = 3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 250
removetime = -1

[State 852, background]
type = Explod
trigger1 = Time = 0
pos = 0,0
anim = 8062
ID = 8060
postype = back
sprpriority = 10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 250
removetime = -1

[State 852, mouth]
type = Explod
trigger1 = Time = 0
anim = 199
ID = 199
pos = -4,16
postype = p1
bindtime = 190
sprpriority = 2
removetime = 190
ignorehitpause = 1
supermovetime = 190
scale = 1.045,1.045

[State 852, playsnd]
type = PlaySnd
trigger1 = Time = 0
value = 13,13
channel = 0

[State 852, spause]
type = SuperPause
trigger1 = Time = 0
time = 250
anim = -1
darken = 0
movetime = 250

[State 852, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(8060) >= 0
trigger1 = AnimTime = 0
id = 8060

[State 852, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 853

;---------------------------------------------------------------------------
; Blinding Claw (p1 state 3)
[Statedef 853]
type = S
movetype = A
physics = S
anim = 1000
velset = 0,0
ctrl = 0

[State 853, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,0
persistent = 0

[State 853, snd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
value = 5,5

[State 853, light effect]
type = Explod
trigger1 = AnimElem = 3
anim = 7060
ID = 7060
pos = 85,-77
postype = p1
sprpriority = 4
supermovetime = 49
removetime = 49
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 853, proj]
type = Projectile
triggerall = numprojid(8000) = 0
trigger1 = animelem = 4, =1
projanim = 8000
projhitanim = 8001
projpriority = 1
projremovetime = 60
postype = p1
projscale = 0.8,0.8
offset = 50,-35
velocity = 7.5, 0
remvelocity = .7, 0
projhits = 1
attr = S, SP
animtype = hard
damage = 10
pausetime = 0,20
sparkno = -1
guard.sparkno = 40
sparkxy = 0,-60
hitsound = s1,5
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 20
ground.velocity = -7,0
air.velocity = -7,-5
fall = 0
fall.recover = 0
persistent = 0

[State 853, proj]
type = Projectile
triggerall = numprojid(8000) = 0
trigger1 = animelem = 8, =1
projanim = 8000
projhitanim = 8001
projremovetime = 60
projsprpriority = 1
postype = p1
projscale = 0.8,0.8
offset = 50,-35
velocity = 7.4, 0
remvelocity = .7, 0
projhits = 1
attr = S, SP
animtype = hard
damage = 10
pausetime = 0,20
sparkno = -1
guard.sparkno = 40
sparkxy = -10,-80
hitsound = s1,5
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 20
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 0
fall.recover = 0
persistent = 0

[State 853, proj]
type = Projectile
triggerall = numprojid(8000) = 0
trigger1 = animelem = 12, =1
projanim = 8000
projhitanim = 8001
projremovetime = 60
projsprpriority = 1
postype = p1
projscale = 0.8,0.8
offset = 50,-35
velocity = 7.3, 0
remvelocity = .7, 0
projhits = 1
projID = 8000
attr = S, SP
animtype = back
damage = 30
pausetime = 15,0
sparkno = -1
guard.sparkno = 40
sparkxy = -10,-80
hitsound = s1,5
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 20
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 1
fall.recover = 0
persistent = 0

[State 853, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Blinding Claw (p2 state)
[Statedef 860]
type = S
movetype= H
physics = N
velset = 0,0

[State 860, Freeze anim]
type = Changeanim
trigger1 = time != 0
value = 120

[State 860, Freeze color]
type = PalFX
trigger1 = time != 0
add = 150,50,50
;mul = 125,125,125
sinadd = 255,5,5,3
time = 2

[State 860, PosSet]
type = PosSet
trigger1 = time = 0
Y = 0

[State 860, Velset]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 860, CS]
type = SelfState
trigger1 = time = 210
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 860, CZ]
type = ChangeState
trigger1 = time = 210
trigger1 = Pos Y < 0
value = 52;0

;---------------------------------------
;Cosmo Charge (start)
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
trigger1 = Time = 0
v = 10
value = 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 9, 1

[State 900, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,0
channel = 0

[State 900, voice]
type = PlaySnd
trigger1 = Time = 20
value = 14,5

[State 900, shake]
type = EnvShake
trigger1 = AnimElem = 1
time = 40

[State 900]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

;---------------------------------------
;Cosmo Charge (charging)
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901

[State 901, sound]
type = PlaySnd
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
removeongethit = 1
bindtime = 1
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
bindtime = 1
ownpal = 1
scale = .9, .9

[State 901, constellation]
type = Explod
trigger1 = AnimElem = 1
anim = 6000
ID = 6000
pos = -50,-180
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
removeongethit = 1

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

[State 901, big light]
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
triggerall = NumExplod(910) = 0
trigger1 = 1
pos = 0,0
anim = 910
sprpriority = -1
removeongethit = 1
bindtime = 1
ownpal = 1
ID = 910
removetime = -1

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
trigger1 = random <= 10
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

;---------------------------------------
;Cosmo Charge (end)
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

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(6000) >= 1
trigger1 = time = 0
ID = 6000

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
triggerall = NumExplod(910) >= 1
trigger1 = time = 0
ID = 910

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
triggerall = Power >= 3000
trigger1 = Time = 1
value = 9,3

[State 902]
type = ChangeState
trigger1 = AnimTime= 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------

; Wolf Fangs 1
[Statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
poweradd = 100
velset = 0,0
ctrl = 0

[State 1000, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,0
persistent = 0

[State 1000, snd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,5

[State 1000, light effect]
type = Explod
trigger1 = AnimElem = 3
anim = 7060
ID = 7060
pos = 85,-77
postype = p1
sprpriority = 4
supermovetime = 18
removetime = 18
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 1000, proj]
type = Projectile
triggerall = numprojid(8000) = 0
trigger1 = animelem = 5, =1
projanim = 8000
projhitanim = 8001
projshadow = 1,0,0
projpriority = 1
projremovetime = 60
postype = p1
projscale = 0.8,0.8
offset = 50,-35
velocity = 9, 0
remvelocity = .7, 0
projhits = 1
attr = S, SP
animtype = back
damage = 60,6
projID = 8000
sparkno = -1
guard.sparkno = 40
sparkxy = 0,-60
hitsound = s1,5
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 20
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 0
fall.recover = 0
persistent = 0

[State 1000, end]
type = ChangeState
trigger1 = time = 35
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Wolf Fangs 2
[Statedef 1010]
type = S
movetype = A
physics = S
anim = 1010
poweradd = 100
velset = 0,0
ctrl = 0

[State 1010, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,0
persistent = 0

[State 1010, snd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
value = 5,5

[State 1010, light effect]
type = Explod
trigger1 = AnimElem = 3
anim = 7060
ID = 7060
pos = 80,-72 ;pos = 72,-74
postype = p1
sprpriority = 4
supermovetime = 18
removetime = 18
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
persistent = 0

[State 1010, proj]
type = Projectile
triggerall = numprojid(8002) = 0
trigger1 = animelem = 4, =1
projanim = 8002
projhitanim = 8003
projshadow = 1,0,0
projremovetime = 60
postype = p1
projscale = 0.8,0.8
offset = 50,-33
velocity = 7, 0
remvelocity = .7, 0
projpriority = 1
projhits = 1
attr = S, SP
animtype = back
damage = 30,3
sparkno = -1
guard.sparkno = 40
sparkxy = 0,-60
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 20
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 0
fall.recover = 0
persistent = 0

[State 1010, proj]
type = Projectile
triggerall = numprojid(8002) = 0
trigger1 = animelem = 6, =1
projanim = 8002
projhitanim = 8003
projshadow = 1,0,0
projremovetime = 60
projsprpriority = 1
postype = p1
projscale = 0.8,0.8
offset = 50,-13
velocity = 6.9, 0
remvelocity = .7, 0
projhits = 1
projID = 8000
attr = S, SP
animtype = medium
damage = 30,3
sparkno = -1
guard.sparkno = 40
sparkxy = 0,-60
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 20
ground.velocity = -7,0
air.velocity = -7,-5
fall = 0
fall.recover = 0
persistent = 0

[State 1010, end]
type = ChangeState
trigger1 = time = 45
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Wolf Fangs 3
[Statedef 1020]
type = S
movetype = A
physics = S
anim = 1020
poweradd = 100
velset = 0,0
ctrl = 0

[State 1020, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,0
persistent = 0

[State 1020, snd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
value = 5,5

[State 1020, light effect]
type = Explod
trigger1 = AnimElem = 3
anim = 7060
ID = 7060
pos = 85,-77
postype = p1
sprpriority = 4
supermovetime = 49
removetime = 49
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 1020, proj]
type = Projectile
triggerall = numprojid(8000) = 0
trigger1 = animelem = 4, =1
projanim = 8000
projhitanim = 8001
projshadow = 1,0,0
projpriority = 1
projremovetime = 60
postype = p1
projscale = 0.8,0.8
offset = 50,-35
velocity = 7.5, 0
remvelocity = .7, 0
projhits = 1
attr = S, SP
animtype = hard
damage = 20,2
pausetime = 0,20
sparkno = -1
guard.sparkno = 40
sparkxy = 0,-60
hitsound = s1,5
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 20
ground.velocity = -7,0
air.velocity = -7,-5
fall = 0
fall.recover = 0
persistent = 0

[State 1020, proj]
type = Projectile
triggerall = numprojid(8000) = 0
trigger1 = animelem = 8, =1
projanim = 8000
projhitanim = 8001
projshadow = 1,0,0
projremovetime = 60
projsprpriority = 1
postype = p1
projscale = 0.8,0.8
offset = 50,-35
velocity = 7.4, 0
remvelocity = .7, 0
projhits = 1
attr = S, SP
animtype = hard
damage = 20,2
pausetime = 0,20
sparkno = -1
guard.sparkno = 40
sparkxy = -10,-80
hitsound = s1,5
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 20
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 0
fall.recover = 0
persistent = 0

[State 1020, proj]
type = Projectile
triggerall = numprojid(8000) = 0
trigger1 = animelem = 12, =1
projanim = 8000
projhitanim = 8001
projshadow = 1,0,0
projremovetime = 60
projsprpriority = 1
postype = p1
projscale = 0.8,0.8
offset = 50,-35
velocity = 7.3, 0
remvelocity = .7, 0
projhits = 1
projID = 8000
attr = S, SP
animtype = back
damage = 40,2
pausetime = 15,0
sparkno = -1
guard.sparkno = 40
sparkxy = -10,-80
hitsound = s1,5
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 20
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 1
fall.recover = 0
persistent = 0

[State 1020, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Shaking for the hit
; (a custom gethit state)
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
; Flying through the air
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
; Hit wall
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

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1027

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;---------------------------------------
; Bounce off wall
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
trigger1 = 1
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
; Super-Hit on Wall by Tux, State 1
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

;-----------------------------------------------
; Super-Hit on Wall by Tux, State 2
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

;-----------------------------------------------
; Super-Hit on Wall by Tux, State 3
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
removeongethit = 1

[State 1031, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1027

[State 1031, Sound]
type = PlaySnd
trigger1 = Time = 1
value = F7,0

[State 1031, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1032

;-----------------------------------------------
; Super-Hit on Wall by Tux, State 4
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
; Rotating Kick 1
[Statedef 1100]
type = S
movetype = A
physics = S
anim = 1100
poweradd = 100
velset = 0,0
ctrl = 0

[State 1100, voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,3

[State 1100, powter]
type = Explod
trigger1 = AnimElem = 4
postype = p1
pos = 0,0
scale = 0.5,0.5
bindtime = 1
removetime = 26
sprpriority = 3
anim = 7089
id = 7089

[State 1100, fx]
type = Explod
trigger1 = AnimElem = 5
anim = 1101
pos = 20,-2
postype = p1
removetime = 42
sprpriority = 3
supermovetime = 42
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 1
removeongethit = 1

[State 1100, 2]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Up
damage    = 80,8
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = 0,-110
sparkno = s7002
hitsound = s1,3
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -1,-10.5
guard.velocity = -6
air.velocity = -1,-8.5
airguard.velocity = -4,-4.5
p2facing = 1
fall = 1
fall.recover = 0
yaccel = .4

[State 1100, explod]
type = Explod
triggerall = numexplod(7070) = 0
trigger1 = movehit
anim = 7071
ID = 7070
removetime = 10
persistent = 0
pos = 0,-110
postype = p2
bindtime = -1
removeongethit = 1

[State 1100, snd]
type = PlaySnd
trigger1 = animtime = 0
value = 2,2

[State 1100, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Rotating Kick 2 (start)
[Statedef 1110]
type = S
movetype = A
physics = S
anim = 1110
poweradd = 100
velset = 0,0
ctrl = 0

[State 1110, 1]
type = SprPriority
trigger1 = Time = 0
value = 2

[State 1110, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,3

[State 1110, 3]
type = Explod
trigger1 = AnimElem = 4
anim = 11100
sprpriority = 3
postype = p1
pos = 0,0
bindtime = 1
removetime = -2
removeongethit = 1

[State 1110, powter]
type = Explod
trigger1 = AnimElem = 4
postype = p1
pos = 0,0
scale = 0.5,0.5
bindtime = 1
removetime = 26
sprpriority = 3
anim = 7089
id = 7089

[State 1110, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1111

;---------------------------------------
; Rotating Kick 2 (jump)
[Statedef 1111]
type = A
movetype = A
physics = N
anim = 1111
velset = 5,-7

[State 1111, 1]
type = VelAdd
trigger1 = Time > 0
y = .54

[State 1111, 2]
type = VelAdd
trigger1 = Vel X > 0
x = -.4

[State 1111, 3]
type = VelSet
trigger1 = Vel X < 0
x = 0

[State 1111, 5]
type = SprPriority
trigger1 = Time = 0
value = 2

[State 1111, 6]
type = PlaySnd
trigger1 = AnimElem = 4
value = 5,6

[State 1111, 7]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
damage = 80,8
getpower = 0
givepower = 0
animtype = hard
priority = 5
guardflag = MA
sparkno = s7001
sparkxy = -10,-40
hitsound = s1,3
guardsound = s6,0
pausetime = 10,10
ground.hittime = 19
ground.type = Low
ground.slidetime = 15
ground.hittime  = 18
ground.velocity = -1,-11.5
guard.velocity = -6
air.velocity = -1,-8.5
airguard.velocity = -4,-4.5
p2facing = 1
fall = 1
fall.recover = 0
yaccel = .5

[State 1111, explod]
type = Explod
triggerall = numexplod(7070) = 0
trigger1 = movehit
anim = 7071
ID = 7070
removetime = 10
persistent = 0
pos = 0,-40
postype = p2
bindtime = -1
removeongethit = 1

[State 1111, fx]
type = Explod
trigger1 = AnimElem = 4
anim = 1102
sprpriority = 3
ignorehitpause = 0
postype = p1
pos = 0,0
;shadow = 68,68,68
bindtime = 1
removeongethit = 1

[State 1111, 9]
type = HitDef
trigger1 = AnimElem = 5
trigger1 = MoveContact = 1
attr = A, SA
damage = 20
getpower = 0
givepower = 0
animtype = hard
priority = 5
guardflag = MA
sparkno = s3220
guard.sparkno = s3270
sparkxy = -10,-60
hitsound = s1,3
guardsound = s6,0
pausetime = 10,10
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = 5,-10
air.velocity = -2,-6
air.fall = 0
yaccel = .4

[State 1111, 10]
type = HitDef
trigger1 = AnimElem = 6
trigger1 = MoveContact = 1
attr = A, SA
damage = 30
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
sparkno = s3220
guard.sparkno = s3270
sparkxy = -10,-105
hitsound = s1,3
guardsound = s6,0
pausetime = 10,10
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = 5,-10
air.velocity = -7,-9
fall = 1
air.fall = 1
yaccel = .5

[State 1111, 11]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1112

;---------------------------------------
; Rotating Kick 2 (land)
[Statedef 1112]
type = S
movetype = I
physics = S
anim = 1112
velset = 0,0

[State 1112, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1112, 2]
type = PlaySnd
trigger1 = Time = 1
value = 2,2

[State 1112, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------
; Rotating Kick 3 (start)
[Statedef 1120]
type = S
movetype = A
physics = S
anim = 1110
poweradd = 100
velset = 0,0
ctrl = 0

[State 1120, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 7060
sprpriority = 4
postype = p1
pos = 0,-30
bindtime = 1
supermovetime = 18
removeongethit = 1

[State 1120, 2]
type = SprPriority
trigger1 = Time = 0
value = 2

[State 1120, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,0
channel = 0

[State 1120, 4]
type = Explod
trigger1 = AnimElem = 4
anim = 11100
sprpriority = 3
postype = p1
pos = 0,0
shadow = 68,68,68
bindtime = 1
removeongethit = 1

[State 1120, powter]
type = Explod
trigger1 = AnimElem = 4
postype = p1
pos = 0,0
scale = 0.5,0.5
bindtime = 1
removetime = 26
sprpriority = 3
anim = 7089
id = 7089

[State 1120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1121

;---------------------------------------
;Rotating Kick 3 (jump)
[Statedef 1121]
type = A
movetype = A
physics = N
anim = 1121
velset = 1.7,-3.3

[State 1121, 1]
type = VelAdd
trigger1 = AnimElem = 22
y = -.3

[State 1121, 2]
type = Explod
trigger1 = Time = 2
anim = F120
pos = -5,-2

[State 1121, 3]
type = Width
trigger1 = 1
edge = 7,0

[State 1121, 4]
type = AfterImage
trigger1 = Time = 0
time = 67
length = 10
framegap = 3
trans = add1

[State 1121, 4]
type = PlaySnd
trigger1 = Time = 1
value = 0,3

[State 1121, 6]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
damage = 10,1
getpower = 0
givepower = 0
animtype = hard
priority = 6
guardflag = MA
sparkno = s7002
sparkxy = -10,-50
hitsound = s1,6
guardsound = s6,0
pausetime = 2,2
ground.type = low
ground.velocity = -1,-4
air.velocity = -1,-4
fall = 0
fall.recover = 0

[State 1121, 7]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
under = 1
ignorehitpause = 1

[State 1121, 8]
type = AssertSpecial
trigger1 = MoveHit
flag = NoFG
ignorehitpause = 1

[State 1121, 9]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 14
trigger3 = AnimElem = 21
anim = 1102
sprpriority = 4
postype = p1
pos = 0,0
shadow = 68,68,68
bindtime = -1
removeongethit = 1

[State 1121, voice]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 14
trigger3 = AnimElem = 21
value = 5,6

[State 1121, 10]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
trigger3 = AnimElem = 18
attr = S, HA
damage = 10,1
getpower = 0
givepower = 0
animtype = hard
priority = 6
guardflag = MA
sparkno = s7000
sparkxy = -20,-75
hitsound = s1,3
guardsound = s6,0
pausetime = 5,5
ground.type = low
ground.velocity = -1,-5
air.velocity = -1,-5
fall = 0
fall.recover = 0

[State 1121, 11]
type = HitDef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
trigger3 = AnimElem = 19
attr = S, HA
damage = 10,1
getpower = 0
givepower = 0
animtype = hard
priority = 6
guardflag = MA
sparkno = s7000
sparkxy = -20,-75
hitsound = s1,3
guardsound = s6,0
pausetime = 5,5
ground.type = low
ground.velocity = -1,-5
air.velocity = -1,-5
fall = 0
fall.recover = 0

[State 1121, 11]
type = VelSet
trigger1 = AnimElem = 23
x = 0
y = 0

[State 1121, 12]
type = HitDef
trigger1 = AnimElem = 23
attr = S, HA
damage = 10,1
getpower = 0
givepower = 0
animtype = up
priority = 6
guardflag = MA
sparkno = s7002
sparkxy = -20,-120
hitsound = s1,3
guardsound = s6,0
pausetime = 28,28
ground.type = low
ground.velocity = -2.5,-7
air.velocity = -2.5,-7
fall = 0
fall.recover = 0

[State 1121, 13]
type = EnvShake
trigger1 = Time > 45 && MoveHit
time = 24
ignorehitpause = 1

[State 1121, 14]
type = MoveHitReset
trigger1 = MoveHit
ignorehitpause = 1

[State 1121, 14]
type = Explod
trigger1 = AnimElem = 27
anim = 11210
sprpriority = 3
postype = p1
pos = 0,0
shadow = 68,68,68
bindtime = 1
removeongethit = 1

[State 1121, 15]
type = ChangeState
trigger1 = AnimTime = 0
value = 1122

;---------------------------------------
; Rotating Kick 3 (final hit)
[Statedef 1122]
type = A
movetype = A
physics = N
anim = 1122
velset = 6.3,0

[State 1122, 1]
type = Velset
trigger1 = AnimElem >= 2
y = 10.5

[State 1122, 2]
type = AfterImage
trigger1 = Time = 0
time = 15
length = 10
framegap = 3
trans = add1

[State 1122, 3]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 10,1
getpower = 0
givepower = 0
animtype = up
priority = 6
guardflag = MA
getpower = 0
sparkno = s7001
sparkxy = -20,-10
hitsound = s1,5
guardsound = s6,0
pausetime = 10,8
ground.type = low
ground.velocity = -2.5,12
air.velocity = -2.5,12
fall = 1
fall.recover = 0

[State 1122, 4]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,1

[State 1122, 5]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1123

;---------------------------------------
; Rotating Kick 3 (land)
[Statedef 1123]
type = S
movetype = I
physics = S
anim = 1123
velset = 0,0

[State 1123, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1123, 2]
type = Playsnd
trigger1 = Time = 0
value = 2,2

[State 1123, 3]
type = AfterImageTime
trigger1 = Time = 0
time = 24

[State 1123, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------
; Wolf Claws 1
[Statedef 1200]
type = S
movetype = A
physics = S
anim = 1200
poweradd = 100
velset = 0,0
ctrl = 0

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,4

[State 1200, voice]
type = PlaySnd
trigger1 = Animelem = 2
value = 12,0
channel = 0

[State 1200, 1]
type = VelAdd
trigger1 = Time = 0
x = 2

[State 1200, fx]
type = Explod
trigger1 = time = 8
anim = 1201
pos = -80,-80
postype = p1
removetime = 30
sprpriority = 3
supermovetime = 30
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
trans = add1
removeongethit = 1

[State 1200, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = light
damage    = 80,8
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 8,8
sparkxy = 0,-50
sparkno = s7000
hitsound   = s1,6
guardsound = s6,1
ground.type = Low
ground.slidetime = 8
ground.hittime  = 12
ground.velocity = -1,0
guard.velocity = -6
air.velocity = -1,0
airguard.velocity = -4,0
p2facing = 1
fall = 1

[State 1200, Explod]
type = Explod
triggerall = numexplod(7070) = 0
trigger1 = movehit
anim = 7071
ID = 7070
removetime = 10
persistent = 0
pos = 0,-60
postype = p2
bindtime = -1
removeongethit = 1

[State 1200, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------
; Wolf Claws 2
[Statedef 1210]
type = S
movetype = A
physics = S
anim = 1210
poweradd = 100
velset = 4,0
ctrl = 0

[State 1210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,4

[State 1210, voice]
type = PlaySnd
trigger1 = Animelem = 2
value = 12,0
channel = 0

[State 1210, fx]
type = Explod
trigger1 = time = 5
anim = 1211
pos = -30,-130
postype = p1
removetime = 6
sprpriority = 3
supermovetime = 170
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 1
trans = add1
removeongethit = 1

[State 1210, 1]
type = AfterImage
trigger1 = time = 0
time = 2
FrameGap = 3
length = 5
palinvertall = 1
palcolor = 1
Trans = Add

[State 1210, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = medium
damage    = 80,8
getpower = 0
givepower = 0
priority  = 5
guardflag = MA
pausetime = 8,8
sparkxy = 0,-50
sparkno = s7001
hitsound   = s1,5
guardsound = s6,1
ground.type = Low
ground.slidetime = 8
ground.hittime  = 12
ground.velocity = 0,8
guard.velocity = -6
air.velocity = -1,8
airguard.velocity = -4,0
p2facing = 1
fall = 1

[State 1210, Explod]
type = Explod
triggerall = numexplod(7070) = 0
trigger1 = movehit
anim = 7071
ID = 7070
removetime = 10
persistent = 0
pos = 0,-60
postype = p2
bindtime = -1
removeongethit = 1

[State 1210, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------
; Wolf Claws 3 (start)
[Statedef 1220]
type = S
movetype = A
physics = S
anim = 1220
velset = 0,0
poweradd = 100
ctrl = 0

[State 1220, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,4

[State 1220, voice]
type = PlaySnd
trigger1 = Animelem = 2
value = 12,0
channel = 0

[State 1220, fx]
type = Explod
trigger1 = Animelem = 2
anim = 1211
pos = -30,-130
postype = p1
removetime = 6
sprpriority = 3
supermovetime = 170
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 1
trans = add1
removeongethit = 1

[State 1220, 2]
type = VarSet
trigger1 = Time = 0
var(2) = 0

[State 1220, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
damage = 40,4
getpower = 0
givepower = 0
animtype = hard
priority = 6
hitflag = MA
guardflag = MA
sparkno = s7070
sparkxy = -10,-80
hitsound = s1,7
guardsound = s6,1
pausetime = 6,6
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = 0
air.velocity = -3,-5
fall = IfElse(p2statetype = A,1,0)

[State 1220, 4]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
persistent = 0
ignorehitpause = 1

[State 1220, 5]
type = AssertSpecial
trigger1 = MoveHit
flag = NoFG
persistent = 0
ignorehitpause = 1

[State 1220, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 1221

;--------------------------------------------
; Wolf Claws 3 (attack)
[Statedef 1221]
type = S
movetype = A
physics = S
anim = 1221

[State 1221, super]
type = BGPalfx
trigger1 = time >= 0
ignorehitpause = 1
time = 1
mul = 256, 160, 128
sinadd = 84, 64, 5, 8
invertall = 1

[State 1221, 1]
type = AfterImage
trigger1 = time = 0
time = 2
FrameGap = 3
length = 10
palinvertall = 1
palcolor = 1
Trans = Add

[State 1221, 2]
type = AfterImageTime
trigger1 = time < 9
time = 2

[State 1221, 3]
type = Explod
trigger1 = Time = 2
anim = F120
pos = -5,-2

[State 1221, 4]
type = VarAdd
trigger1 = Time = 0
var(2) = 1

[State 1221, 5]
type = Explod
trigger1 = Time = 0
trigger1 = Var(2) = 1
anim = 12210
sprpriority = 5
postype = p1
pos = 0,0
shadow = 68,68,68
bindtime = 1
removeongethit = 1

[State 1221, 6]
type = Explod
trigger1 = Time = 0
trigger1 = Var(2) = 2
anim = 12220
sprpriority = 5
postype = p1
pos = 0,0
shadow = 68,68,68
bindtime = 1
removeongethit = 1

[State 1221, 7]
type = Explod
trigger1 = Time = 0
trigger1 = Var(2) = 3
anim = 12220
sprpriority = 4
postype = p1
pos = 0,0
shadow = 68,68,68
bindtime = 1
removeongethit = 1

[State 1221, 8]
type = PlaySnd
trigger1 = Time = 1
value = 0,4

[State 1221, 9]
type = PosAdd
trigger1 = Time = 1
trigger2 = Time = 2
x = 7

[State 1221, 10]
type = PosAdd
trigger1 = Time = 3
trigger2 = Time = 4
x = 6

[State 1221, 11]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
damage = 10,1
getpower = 0
givepower = 0
animtype = hard
priority = 6
hitflag = MA
guardflag = MA
sparkno = s7001
sparkxy = -10,-80
hitsound = s1,7
guardsound = s6,1
pausetime = 2,2
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = 0
air.velocity = -3,-5
fall = IfElse(p2statetype = A,1,0)

[State 1221, 12]
type = Explod
triggerall = numexplod(7070) = 0
trigger1 = movehit
anim = 7071
ID = 7070
removetime = 10
persistent = 1
pos = 0,-60
postype = p2
bindtime = -1
removeongethit = 1

[State 1221, 13]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
persistent = 0
ignorehitpause = 1

[State 1221, 14]
type = AssertSpecial
trigger1 = MoveHit
flag = NoFG
persistent = 0
ignorehitpause = 1

[State 1221, 15]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Var(2) < 3
value = 1221

[State 1221, 16]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Var(2) = 3
value = 1222

;--------------------------------------------
; Wolf Claws 3 (end)
[Statedef 1222]
type = S
movetype = A
physics = S
anim = 1222

[State 1222, 1]
type = Explod
trigger1 = Time = 0
anim = 12220
sprpriority = 3
postype = p1
pos = 0,0
shadow = 68,68,68
bindtime = 1
removeongethit = 1

[State 1222, 2]
type = PlaySnd
trigger1 = Time = 1
value = 1,4

[State 1222, 3]
type = PosAdd
trigger1 = Time = 1
trigger2 = Time = 2
x = 7

[State 1222, 4]
type = PosAdd
trigger1 = Time = 3
trigger2 = Time = 4
x = 6

[State 1222, 5]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
damage = 20,2
getpower = 0
givepower = 0
animtype = up
priority = 6
hitflag = MA
guardflag = MA
sparkno = s7070
sparkxy = -10,-80
hitsound = s1,7
guardsound = s6,1
getpower = 0
pausetime = 2,2
ground.velocity = -4.5,-7
air.velocity = -4.5,-7
fall = 1

[State 1222, 6]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
persistent = 0
ignorehitpause = 1

[State 1222, 7]
type = AssertSpecial
trigger1 = MoveHit
flag = NoFG
persistent = 0
ignorehitpause = 1

[State 1222, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Flying Claws 1
[Statedef 1300]
type    = S
movetype= I
physics = N
poweradd= 0
juggle = 8
ctrl = 0
anim = 1300
velset = 0, -8

[State 1300, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 2,1

[State 1300, afterimage]
type = AfterImage
trigger1 = AnimElem = 1
time = 15
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State 1300, 2]
type = ChangeState
trigger1 = Time = 20
value = 1301

;---------------------------------------------------------------------------
; Flying Claws 1 (air)
[Statedef 1301]
type    = A
movetype= A
physics = N
poweradd= 100
juggle = 8
ctrl = 0
anim = 1301
velset = 0, 0

[State 1301, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 0,4

[State 1301, 2]
type = VelSet
trigger1 = Time >= 0
x = 8
Y = 12

[State 1301, 3]
type = Width
trigger1 = AnimElem = 1, >= 0
trigger2 = AnimElem = 6, < 0
value = 20,0

[State 1301, afterimage]
type = AfterImage
trigger1 = AnimElem = 1
time = 15
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[state 1301, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 1301, 4]
type = HitDef
trigger1 = Time = 0
attr = A, SA
;animtype = Back
damage    = 80,8
getpower = 0
givepower = 0
priority  = 5
hitflag   = M
guardflag = M
pausetime = 8,8
sparkxy = 5,-10
sparkno = s7000
hitsound = s1,4
guardsound = s6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -3.5
air.velocity = -3.2,-6
fall.animtype = Hard
fall = 1

[State 1301, ChangeAnim]
type = ChangeAnim
triggerall = anim = 59
trigger1 = Movehit = 1
trigger1 = Animelem = 1
value = 1301
elem = 2

[State 1301, Explod]
type = Explod
triggerall = numexplod(7070) = 0 
trigger1 = movehit
anim = 7071
ID = 7070
removetime = 10
persistent = 0
pos = 0,-60
postype = p2
bindtime = -1
removeongethit = 1

[State 1301, 5]
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = Anim = 8001
trigger3 = AnimElem = 1
trigger4 = Anim = 8001
trigger4 = AnimElem = 2
type = PosAdd
y = -10

[State 1301, 6] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1302

;---------------------------------------------------------------------------
; Flying Claws (land on ground)
[Statedef 1302]
type    = A
movetype= A
physics = N
anim = 1302
velset = 0,0

[State 1302, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1302, 2]
type = Playsnd
trigger1 = Time = 0
value = 2,2

[State 1302, 3]
type = Explod
trigger1 = Time = 0
postype = p1
pos = 0,0
scale = 0.5,0.5
bindtime = 1
removetime = 16
sprpriority = 3
anim = 7081
id = 7081

[State 1302, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Flying Claws 2
[Statedef 1310]
type    = S
movetype= I
physics = N
poweradd= 0
juggle = 8
ctrl = 0
anim = 1300
velset = 0, -8

[State 1310, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 2,1

[State 1310, afterimage]
type = AfterImage
trigger1 = AnimElem = 1
time = 15
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State 1310, 2]
trigger1 = Time = 20
type = ChangeState
value = 1311

;---------------------------------------------------------------------------
; Flying Claws 2 (air)
[Statedef 1311]
type    = A
movetype= A
physics = N
poweradd= 100
juggle = 8
ctrl = 0
anim = 1301
velset = 0, 0

[State 1310, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 0,4

[State 1310, 2]
type = VelSet
trigger1 = Time >= 0
x = 12
Y = 12

[State 1310, 3]
type = Width
trigger1 = AnimElem = 1, >= 0
trigger2 = AnimElem = 6, < 0
value = 20,0

[State 1310, afterimage]
type = AfterImage
trigger1 = AnimElem = 1
time = 15
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[state 1310, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 1310, 4]
type = HitDef
trigger1 = Time = 0
attr = A, SA
;animtype = Back
damage    = 80,8
getpower = 0
givepower = 0
priority  = 5
hitflag   = M
guardflag = M
pausetime = 8,8
sparkxy = 5,-10
sparkno = s7002
hitsound = s1,4
guardsound = s6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -3.5
air.velocity = -3.2,-6
fall.animtype = Hard
fall = 1

[State 1310, ChangeAnim]
type = ChangeAnim
triggerall = anim = 59
trigger1 = Movehit = 1
trigger1 = Animelem = 1
value = 1301
elem = 2

[State 1310, Explod]
type = Explod
triggerall = numexplod(7070) = 0
trigger1 = movehit
anim = 7071
ID = 7070
removetime = 10
persistent = 0
pos = 0,-60
postype = p2
bindtime = -1
removeongethit = 1

[State 1310, 5]
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = Anim = 8001
trigger3 = AnimElem = 1
trigger4 = Anim = 8001
trigger4 = AnimElem = 2
type = PosAdd
y = -10

[State 1310, 6] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1302

;---------------------------------------------------------------------------
; Flying Claws 3
[Statedef 1320]
type    = S
movetype= I
physics = N
poweradd= 0
juggle = 8
ctrl = 0
anim = 1300
velset = 0, -9

[State 1320, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 2,1

[State 1320, afterimage]
type = AfterImage
trigger1 = AnimElem = 1
time = 15
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State 1320, 2]
trigger1 = Time = 20
type = ChangeState
value = 1321

;---------------------------------------------------------------------------
; Flying Claws 3 (air)
[Statedef 1321]
type    = A
movetype= A
physics = N
poweradd= 100
juggle = 8
ctrl = 0
anim = 1321
velset = 0, 0

[State 1321, 1]
type = Playsnd
trigger1 = AnimElem = 1
value = 0,4

[State 1321, 2]
type = VelSet
trigger1 = Time >= 0
x = 15
Y = 12

[State 1321, 3]
type = Width
trigger1 = AnimElem = 1, >= 0
trigger2 = AnimElem = 6, < 0
value = 20,0

[State 1321, afterimage]
type = AfterImage
trigger1 = AnimElem = 1
time = 15
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State 1321, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 1321, 4]
type = HitDef
trigger1 = Time = 0
attr = A, SA
;animtype = Back
damage    = 80,8
getpower = 0
givepower = 0
priority  = 5
hitflag   = M
guardflag = M
pausetime = 8,8
sparkxy = 5,-10
sparkno = s7001
hitsound = s1,4
guardsound = s6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -3.5
air.velocity = -3.2,-6
fall.animtype = Hard
fall = 1

[State 1321, ChangeAnim]
type = ChangeAnim
triggerall = anim = 59
trigger1 = Movehit = 1
trigger1 = Animelem = 1
value = 1321
elem = 2

[State 1321, Explod]
type = Explod
triggerall = numexplod(7070) = 0
trigger1 = movehit
anim = 7071
ID = 7070
removetime = 10
persistent = 0
pos = 0,-60
postype = p2
bindtime = -1
removeongethit = 1

[State 1321, 5]
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = Anim = 8001
trigger3 = AnimElem = 1
trigger4 = Anim = 8001
trigger4 = AnimElem = 2
type = PosAdd
y = -10

[State 1321, 6] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1302

;---------------------------------------------------------------------------
; King Attack
[Statedef 1400]
type = S
movetype = A
physics = S
anim = 1400
ctrl = 0
velset = 0,0
poweradd = 50

[State 1400, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
value = 5,3

[State 1400, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; King (Stand)
[Statedef 2000]
type = S
movetype = I
physics = S
velSet = 0,0
ctrl = 0
anim = 2000

[State 2000, 2]
type = DestroySelf
triggerall = (p2name = "shiryu") || (p2name = "shiryu2")
trigger1 = p2stateno = [8601,8605]

[State 2000, 1]
type = HitOverride
trigger1 = Time = 0
attr = SCA, AA, AP, AT
stateno = 2050
time = -1

[State 2000, 2]
type = SprPriority
trigger1 = Time >= 0
value = 4

[State 2000, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2000, 4]
type = ChangeState
trigger1 = rootdist x > 50
value = 2020

[State 2000, 5]
type = ChangeState
trigger1 = rootdist x <= 0
value = 2021

[State 2000, 6]
type = ChangeState
trigger1 = parent, facing = 1
trigger1 = facing = -1
trigger2 = parent, facing = -1
trigger2 = facing = 1
value = 2040

[State 2000, 7]
type = ChangeState
trigger1 = parent,stateno = 181
trigger2 = parent,stateno = 1400
value = 2030

[State 2000, 8]
type = ChangeState
trigger1 = parent,stateno = 182
trigger2 = parent,stateno = 5150
value = 2011

[State 2000, 9]
type = PlaySnd
trigger1 = parent,stateno = 5150
value = 14,3

;---------------------------------------------------------------------------
; King (Intro)
[Statedef 2010]
type = S
movetype = I
physics = S
VelSet = 0,0
ctrl = 0
anim = 2010

[State 2010, 1]
type = SprPriority
trigger1 = Time >= 0
value = 4

[State 2010, 2]
type = DestroySelf
triggerall = (p2name = "shiryu") || (p2name = "shiryu2")
trigger1 = p2stateno = [8601,8605]

[State 2010, 3]
type = DestroySelf
triggerall = parent, stateno = 193
trigger1 = parent, AnimElem = 55

[State 2010, 4]
type = DestroySelf
trigger1 = parent, stateno = 0

;---------------------------------------------------------------------------
; King (Win\Lose)
[Statedef 2011]
type = S
movetype = I
physics = S
VelSet = 0,0
ctrl = 0
anim = 2011

[State 2011, 1]
type = PlaySnd
triggerall = parent,stateno = 181 || parent,stateno = 182
trigger1 = AnimElem = 3
value = 14,0

[State 2011, 2]
type = PlaySnd
triggerall = parent,stateno = 5150
trigger1 = AnimElem = 3
value = 14,1

[State 2011, 3]
type = SprPriority
trigger1 = Time >= 0
value = 4

[State 2011, 4]
type = DestroySelf
triggerall = (p2name = "shiryu") || (p2name = "shiryu2")
trigger1 = p2stateno = [8601,8605]

[State 2011, 5]
type = DestroySelf
trigger1 = parent, stateno = 0

;---------------------------------------------------------------------------
; King (Walk Fwd)
[Statedef 2020]
type = S
movetype = I
physics = S
ctrl = 0
anim = 2020

[State 2020, 1]
type = DestroySelf
triggerall = (p2name = "shiryu") || (p2name = "shiryu2")
trigger1 = p2stateno = [8601,8605]

[State 2020, 2]
type = VelSet
trigger1 = Time >= 0
x = 2

[State 2020, 3]
type = ChangeState
triggerall = rootdist x <= 50
trigger1 = parent, facing = 1
trigger1 = facing = 1
trigger2 = parent, facing = -1
trigger2 = facing = -1
value = 2000

[State 2020, 4]
type = ChangeState
triggerall = rootdist x <= -40
trigger1 = parent, facing = 1
trigger1 = facing = -1
trigger2 = parent, facing = -1
trigger2 = facing = 1
value = 2040

;---------------------------------------------------------------------------
; King (Walk Back)
[Statedef 2021]
type = S
movetype = I
physics = S
ctrl = 0
anim = 2021

[State 2021, 1]
type = DestroySelf
triggerall = (p2name = "shiryu") || (p2name = "shiryu2")
trigger1 = p2stateno = [8601,8605]

[State 2021, 2]
type = VelSet
trigger1 = Time >= 0
x = -2

[State 2021, 3]
type = ChangeState
trigger1 = rootdist x > 40
value = 2000

[State 2021, 4]
type = ChangeState
trigger1 = rootdist x < -50
value = 2040

;---------------------------------------------------------------------------
; King (Run)
[Statedef 2030]
type = S
movetype = I
physics = N
anim = 2030
velset = 6, 0
ctrl = 0

[State 2030, 1]
type = DestroySelf
triggerall = (p2name = "shiryu") || (p2name = "shiryu2")
trigger1 = p2stateno = [8601,8605]

[State 2030, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,2

[State 2030, 3]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 2080

[State 2030, 4]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 2030, 5]
type = ChangeState
triggerall = parent,stateno = 194
trigger1 = rootdist x <= 50
value = 2010

[State 2030, 6]
type = ChangeState
triggerall = parent,stateno = 181
trigger1 = Time > 30 && P2Dist x <= 10
value = 2010

[State 2030, 7]
type = ChangeState
triggerall = parent,stateno != 181
triggerall = parent,stateno != 194
trigger1 = P2Dist x <= 100
value = 2031

[State 2030, 8]
type = VelSet
triggerall = parent,stateno != 181
triggerall = parent,stateno != 194
trigger1 = P2Dist x <= 100
x = 0

;---------------------------------------------------------------------------
; King (Attack)
[Statedef 2031]
type = A
movetype = A
physics = N
anim = 2031
velset = 6.5,0
ctrl = 0

[State 2031, 1]
type = DestroySelf
triggerall = (p2name = "shiryu") || (p2name = "shiryu2")
trigger1 = p2stateno = [8601,8605]

[State 2031, 2]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 2080

[State 2031, 3]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 2031, 4]
type = VelSet
trigger1 = AnimElem = 4
y = -4

[State 2031, 5]
type = HitDef
trigger1 = Time = 0
attr = S, SP
damage = 50
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
priority = 5
pausetime = 2,2
hitsound = s8,0
guardsound = s6,0
sparkno = -1
ground.type = Low
ground.slidetime = 8
ground.hittime = 10
air.fall = 1
fall = 1

[State 2031, 6]
type = PlaySnd
triggerall = movehit <= 0
trigger1 = AnimTime = 0
value = 14,4

[State 2031, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 2060

;---------------------------------------------------------------------------
; King (Turn)
[Statedef 2040]
type = S
movetype = I
physics = S
VelSet = 0,0
ctrl = 0
anim = 2040

[State 2040, 1]
type = DestroySelf
triggerall = (p2name = "shiryu") || (p2name = "shiryu2")
trigger1 = p2stateno = [8601,8605]

[State 2040, 2]
type = Turn
trigger1 = AnimTime = 0

[State 2040, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 2020

;---------------------------------------------------------------------------
; King (Hit)
[Statedef 2050]
type     = A
physics  = N
movetype = H
VelSet = -4,-5
anim = 2050

[State 2050, 1]
type = VelAdd
trigger1 = Time >= 0
y = .43

[State 2050, 2]
type = ChangeState
trigger1 = Vel y > 0
trigger1 = Pos y >= 10
value = 2000

;---------------------------------------------------------------------------
; King (Air)
[Statedef 2060]
type = A
movetype = I
physics = N
anim = 2030
velset = 5, 4
ctrl = 0

[State 2060, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 2080

[State 2060, 2]
type = DestroySelf
triggerall = (p2name = "shiryu") || (p2name = "shiryu2")
trigger1 = p2stateno = [8601,8605]

[State 2060, 3]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 2060, 4]
type = Gravity
trigger1 = Time >= 0

[State 2060, 5]
type = ChangeState
trigger1 = Pos Y >= -2
trigger1 = Vel Y > 0
value = 2070

;---------------------------------------------------------------------------
; King (Ground)
[Statedef 2070]
type = S
movetype = I
physics = S
anim = 2030
velset = 0, 0
ctrl = 0

[State 2070, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 2080

[State 2070, 2]
type = DestroySelf
triggerall = (p2name = "shiryu") || (p2name = "shiryu2")
trigger1 = p2stateno = [8601,8605]

[State 2070, 3]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 2070, 4]
type = ChangeState
trigger1 = Moveguarded = 1
value = 2040

[State 2070, 5]
type = ChangeState
trigger1 = Pos y >= -2
value = 2000

;---------------------------------------------------------------------------
; King (Interrupted)
[Statedef 2080]
type = A
movetype = I
physics = N
anim = 2011
velset = 0,0
ctrl = 0

[State 2080, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,3

[State 2080, end]
type = ChangeState
trigger1 = Time = 0
value = 2000

;---------------------------------------------------------------------------
; Hyper Moves
;---------------------------------------------------------------------------

; Wolf Cruently Claw
[Statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
poweradd = -1000
velset = 0,0
ctrl = 0

[State 3000, super]
type = BGPalfx
trigger1 = AnimElem = 2
ignorehitpause = 1
time = 70
mul = 107,107,222
add = -5,-5,-5
invertall = 1

[State 3000, background]
type = Explod
trigger1 = AnimElem = 2
anim = 8052
ID = 8051
pos = 0,0
postype = back
sprpriority = -2
supermovetime = 70
removetime = 70
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3000, cosmo]
type = RemoveExplod
trigger1 = stateno != 3000
ID = 8051

[State 3000, speed]
type = Velset
triggerall = p2bodydist X >= 5
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
trigger6 = AnimElem = 9
x = 18

[State 3000, speed]
type = Velset
triggerall = p2bodydist X >= 5
trigger1 = AnimElem = 10
x = 12

[State 3000, speed]
type = Velset
triggerall = p2bodydist X >= 5
trigger1 = AnimElem = 11
x = 5

[State 3000, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13,9
channel = 0

[State 3000, spause]
type = superpause
trigger1 = AnimElem = 1
anim = s7008
time = 40
pos = -16, -75

[State 3000, wolf fx]
type = Explod
trigger1 = AnimElem  = 1
ID = 6001
anim = 6001
pos = -25,0
postype = p1
sprpriority = -2
supermovetime = 40
removetime = -2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
scale = 0.6,0.6

[State 3000, cosmo]
type = Explod
trigger1 = AnimElem = 3
anim = 3001
pos = 0,0
postype = p1
removetime = 32
sprpriority = -2
supermovetime = 32
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 1
removeongethit = 1

[State 3000, final hit]
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
attr = S, HA
animtype  = Hard
damage    = 14,3
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,4
sparkno = s7004
sparkxy = -10,-60
hitsound   = s1,3
guardsound = s6,0
guard.velocity = -15
guard.slidetime = 15
guard.hittime = 15
ground.slidetime = 15
ground.velocity = -1,0
ground.type = low
air.velocity = -1,0
fall = 1
fall.recover = 0

[State 3000, final hit]
type = HitDef
trigger1 = AnimElem = 12
attr = S, HA
animtype  = Hard
damage    = 88
getpower = 0
givepower = 0
guardflag = MA
pausetime = 4,5
sparkno = s7004
sparkxy = -10,-60
hitsound   = s1,3
guardsound = s6,0
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 20
ground.velocity = -25,-5
ground.type = high
air.velocity = -7,-5
fall = 1
fall.recover = 0

[State 3000, end]
type = ChangeState
trigger1 = animtime = 0
value = 1302

;-------------------------------------------------------
; Lighting Claws (start)
[Statedef 3050]
type    = S
movetype= A
physics = S
juggle  = 3
poweradd = -1000
ctrl = 0
velset = 0,0
anim = 3050

[State 3050, voice]
type = PlaySnd
trigger1 = time = 0
value = 13,4
channel = 0

[State 3050, superpause]
type = Superpause
trigger1 = AnimElem = 1
anim = s7008
pos = -20, -90
time = 50
movetime = 50

[State 3050, super]
type = BGPalfx
trigger1 = AnimElem = 2
ignorehitpause = 1
time = 80
mul = 107,107,222
add = -5,-5,-5
invertall = 1

[State 3050, background]
type = Explod
trigger1 = AnimElem = 2
anim = 8051
ID = 8051
pos = 0,0
postype = back
sprpriority = -2
supermovetime = 80
removetime = 80
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3050, residual image]
type = Explod
trigger1 = AnimElem = 2
anim = 30500
ID = 30500
pos = 0,0
postype = p1
sprpriority = 4
supermovetime = 8
removetime = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3050, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,0

[State 3050, 1]
type = HitDef
trigger1 = time = 0
triggerall = p2stateno != 5120
attr = S, HA
animtype = Hard
damage = 0
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 0,18
sparkno = s7001
sparkxy = 0, -60
hitsound = s1,5
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -6
air.velocity = -3,-4
guard.velocity = -6
air.juggle  = 3
p2stateno= 3060

[State 3050, 2]
type = ChangeState
trigger1 = movecontact = 1
value = 3052

[State 3050, 2]
type = posadd
triggerall = p2bodydist X >= 80
trigger1 = AnimTime = 0
x = 100

[State 3050, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3051

;-------------------------------------
; Lighting Claws (transition 1)
[Statedef 3051]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 3051

[State 3051, voice]
type = PlaySnd
trigger1 = movecontact = 1
value = 1,6

[State 3051, 1]
type = HitDef
trigger1 = AnimElem = 1
triggerall = p2stateno != 5120
attr = S, HA
animtype = Hard
damage = 20,20
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
sparkno = s7001
pausetime = 8,18
sparkxy = 0,0
hitsound = s1,6
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -6
air.velocity = -3,-4
guard.velocity = -6
air.juggle  = 3
p2stateno= 3060

[State 3051, 2]
type = velset
trigger1 = Time > 0
x = 12

[State 3051, 3]
type = ChangeState
trigger1 = movecontact = 1
value = 3053

[State 3051, 4]
type = ChangeState
trigger1 = Time = 12
value = 3054

;-------------------------------------
; Lighting Claws (end 1)
[Statedef 3052]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3052

[State 3052, 1]
type = explod
Trigger1 = Time = 0
anim = 7004
sprpriority = 9
pos = 0,-55
postype = p2
bindtime = 1

[State 3052, 2]
type = explod
Trigger1 = Time = 6
anim = 7004
sprpriority = 9
pos = 30,-107
postype = p2
bindtime = 1

[State 3052, 3]
type = explod
Trigger1 = Time = 12
anim = 7004
sprpriority = 9
pos = -40,-12
postype = p2
bindtime = 1

[State 3052, 4]
type = explod
Trigger1 = Time = 17
anim = 7004
sprpriority = 9
pos = 50,-80
postype = p2
bindtime = 1

[State 3052, 5]
type = ChangeState
trigger1 = Time = 18
value = 3056

;-------------------------------------
; Lighting Claws (transition 2)
[Statedef 3053]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3051

[State 3053, 1]
type = explod
Trigger1 = Time = 0
anim = 7004
sprpriority = 9
pos = 0,-55
postype = p2
bindtime = 1

[State 3053, 2]
type = explod
Trigger1 = Time = 6
anim = 7004
sprpriority = 9
pos = 30,-107
postype = p2
bindtime = 1

[State 3053, 3]
type = Explod
Trigger1 = Time = 12
anim = 7004
sprpriority = 9
pos = -40,-12
postype = p2
bindtime = 1

[State 3053, 4]
type = explod
Trigger1 = Time = 17
anim = 7004
sprpriority = 9
pos = 50,-80
postype = p2
bindtime = 1

[State 3053, 5]
type = ChangeState
trigger1 = Time = 18
value = 3056

;-------------------------------------
; Lighting Claws (end 2)
[Statedef 3054]
type    = S
movetype= A
physics = S
juggle  = 3
anim = 3052
velset = 0,0

[State 3054, voice]
type = PlaySnd
trigger1 = movecontact = 1
value = 1,5

[State 3054, 1]
type = HitDef
trigger1 = AnimElem = 1
triggerall = p2stateno != 5120
attr = S, HA
animtype = Hard
damage = 0
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
pausetime = 0,18
sparkno = s7001
sparkxy = 0,0
hitsound = s1,6
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -6
air.velocity = -3,-4
guard.velocity = -6
air.juggle  = 3
p1stateno= 3055
p2stateno= 3060

[State 3054, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------
; Lighting Claws (transition 3)
[Statedef 3055]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0

[State 3055, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------
; Lighting Claws (end 3)
[Statedef 3056]
type    = S
movetype= A
physics = S
juggle  = 2
anim = 3052
velset = 0,0

[State 3056, 1]
type = explod
Trigger1 = Time = 6
anim = 7004
sprpriority = 9
pos = -20,-38
postype = p2
bindtime = 1

[State 3056, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3056, 2]
type = posadd
trigger1 = Time = 0
x = 200

[State 3056, voice]
type = PlaySnd
trigger1 = Animelem = 1
value = 5,0

[State 3056, voice]
type = null;PlaySnd
trigger1 = animelem = 3
value = 1,0

[State 3056, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------
; Lighting Claws (p2 state)
[Statedef 3060]
type    = A
movetype= H
physics = N
ctrl = 0
velset = 0,0

[State 3060, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3060

[State 3060, 2]
type = Lifeadd
Trigger1 = animelem = 1
Trigger2 = animelem = 3
Trigger3 = animelem = 5
Trigger4 = animelem = 7
Trigger5 = animelem = 9
value = -40

[State 3060, 3]
type = Velset
trigger1 = animTime = 0
x = -2
y = -1

[State 3060, 4]
type = SelfState
Trigger1 = animTime = 0
value = 5050
ctrl = 0

;-----------------------------------------------------------------------------------------
; Northern Gun Ro Ken
[Statedef 3100]
type = S
movetype = A
physics = S
anim = 3100
poweradd = -2000
velset = 0,0
ctrl = 0

[State 3100, VarSet]
type = VarSet
trigger1 = Time = 0
v = 12
value = 1

[State 3100, snb]
type = PlaySnd
trigger1 = animelem = 1
value = 13,11
channel = 0

[State 3100, snb]
type = PlaySnd
trigger1 = (time%22) <= 0
triggerall = time <= 20
value = 2,1

[State 3100, cosmo]
type = RemoveExplod
trigger1 = stateno != 3100
ID = 8051

[State 3100, 1]
type = Superpause
trigger1 = AnimElem = 3
time = 26
anim = s7008
pos = -30, -94
;movetime = 100

[State 3100, super]
type = BGPalfx
trigger1 = AnimElem = 6
ignorehitpause = 1
time = 130
mul = 107,107,222
add = -5,-5,-5
invertall = 1

[State 3100, background]
type = Explod
trigger1 = AnimElem = 6
anim = 8051
ID = 8051
pos = 0,0
postype = back
sprpriority = -3
supermovetime = 130
removetime = 130
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3100, background]
type = Explod
trigger1 = AnimElem = 6
anim = 8050
ID = 8051
pos = 0,0
postype = back
sprpriority = -4
supermovetime = 130
removetime = 130
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3100, cosmo]
type = Explod
trigger1 = AnimElem = 3
anim = 3101
pos = 0,0
postype = p1
removetime = 170
sprpriority = -2
supermovetime = 170
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 1
removeongethit = 1

[State 3100, voice]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
trigger6 = AnimElem = 16
trigger7 = AnimElem = 18
trigger8 = AnimElem = 20
trigger9 = AnimElem = 22
trigger10 = AnimElem = 24
trigger11 = AnimElem = 26
trigger12 = AnimElem = 28
trigger13 = AnimElem = 30
trigger14 = AnimElem = 32
value = 5,5

[State 3100, light effect]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
trigger6 = AnimElem = 16
trigger7 = AnimElem = 18
trigger8 = AnimElem = 20
trigger9 = AnimElem = 22
trigger10 = AnimElem = 24
trigger11 = AnimElem = 26
trigger12 = AnimElem = 28
trigger13 = AnimElem = 30
trigger14 = AnimElem = 32
anim = 7060
ID = 7060
pos = 80,-72
postype = p1
sprpriority = 4
removetime = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3100, helper]
type = Helper
trigger1 = Time = 15
trigger2 = Time = 55
name = "wolf1"
id = 40000
postype = p1
pos = -200, 0
stateno = 4000
keyctrl = 0
ownpal = 1

[State 3100, helper]
type = Helper
trigger1 = Time = 35
trigger2 = Time = 75
name = "wolf2"
id = 40000
postype = front
facing = -1
pos = 200, 0
stateno = 4100
keyctrl = 0
ownpal = 1

[State 3100, fireball1]
type = Projectile
trigger1 = AnimElem = 6
projanim = 8002
projhitanim = 8003
projremovetime = 300
;projscale = .5,.5
projsprpriority = 5
projremove = 0
projedgebound = 60
postype = p1
offset = 50,-13
velocity = 13, 0
remvelocity = 0, 0
projhits = 1
attr = S, SP
animtype = medium
pausetime = 4, 12
damage = 50,14
;sparkno = s7070
guard.sparkno = 40
sparkxy = 55,-60
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.hittime = 15
ground.slidetime = 30
ground.velocity = -7,0
ground.type = low
air.velocity = -10,-5
fall.recover = 0
air.fall = 1

[State 3100, fireball2]
type = Projectile
trigger1 = AnimElem = 8
projanim = 8002
projhitanim = 8003
projsprpriority = 5
projedgebound = 60
projremovetime = 300
postype = p1
offset = 50,-23
velocity = 13,0
projhits = 1
remvelocity = 0,0
attr = S, SP
pausetime = 4, 32
animtype = medium
damage = 29,2
;sparkno = s7070
guard.sparkno = 40
sparkxy = 55,-40
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.hittime = 12
ground.slidetime = 30
ground.velocity = -7,0
ground.type = low
air.velocity = -7,-5
fall.recover = 0
air.fall = 1

[State 3100, fireball3]
type = Projectile
trigger1 = AnimElem = 10
projanim = 8002
projhitanim = 8003
projsprpriority = 5
projremove = 0
projedgebound = 60
projremovetime = 300
postype = p1
offset = 50,-3
velocity = 13,0
projhits = 1
remvelocity = 0,0
attr = S, SP
pausetime = 4, 32
animtype = medium
damage = 29,2
;sparkno = s7070
guard.sparkno = 40
sparkxy = 60,-27
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 25
ground.velocity = -7,0
ground.type = high
air.velocity = -7,-5
fall.recover = 0
air.fall = 1

[State 3100, fireball4]
type = Projectile
trigger1 = AnimElem = 12
projanim = 8002
projhitanim = 8003
projsprpriority = 5
projremove = 0
projedgebound = 60
projremovetime = 300
postype = p1
offset = 50,-13
velocity = 13,0
projhits = 1
remvelocity = 0,0
attr = S, SP
animtype = medium
pausetime = 4, 32
damage = 29,2
;sparkno = s7070
guard.sparkno = 40
sparkxy = 60,-40
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 25
ground.velocity = -7,0
ground.type = low
air.velocity = -7,-5
fall.recover = 0
air.fall = 1
numhits = 4

[State 3100, fireball5]
type = Projectile
trigger1 = AnimElem = 14
projanim = 8002
projhitanim = 8003
projsprpriority = 5
projremove = 0
projedgebound = 60
projremovetime = 300
postype = p1
offset = 50,-23
velocity = 13,0
projhits = 1
remvelocity = 0,0
attr = S, SP
pausetime = 4, 32
animtype = medium
damage = 29,2
;sparkno = s7070
guard.sparkno = 40
sparkxy = 55,-27
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 12
guard.hittime = 10
ground.slidetime = 20
ground.velocity = -7,0
ground.type = high
air.velocity = -7,-5
fall.recover = 0
air.fall = 1
numhits = 4

[State 3100, fireball6]
type = Projectile
trigger1 = AnimElem = 16
projanim = 8002
projhitanim = 8003
projsprpriority = 5
projedgebound = 60
projremovetime = 300
postype = p1
offset = 50,-3
velocity = 13,0
projhits = 1
remvelocity = 0,0
attr = S, SP
pausetime = 4, 32
animtype = medium
damage = 29,2
;sparkno = s7070
guard.sparkno = 40
sparkxy = 60,-45
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 10
guard.hittime = 12
ground.slidetime = 20
ground.velocity = -12,0
ground.type = low
air.velocity = -7,-5
fall.recover = 0
air.fall = 1
numhits = 4

[State 3100, fireball7]
type = Projectile
trigger1 = AnimElem = 18
projanim = 8002
projhitanim = 8003
projsprpriority = 5
projremove = 0
projedgebound = 60
projremovetime = 300
postype = p1
offset = 50,-13
velocity = 13,0
projhits = 1
remvelocity = 0,0
attr = S, SP
animtype = medium
pausetime = 4, 32
damage = 29,2
;sparkno = s7070
guard.sparkno = 40
sparkxy = 60,-50
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 12
ground.hittime = 25
ground.slidetime = 15
ground.velocity = -5,0
ground.type = low
air.velocity = -7,-5
fall.recover = 0
air.fall = 1
supermovetime = 30
numhits = 4

[State 3100, fireball8]
type = Projectile
trigger1 = AnimElem = 20
projanim = 8002
projhitanim = 8003
projsprpriority = 5
projedgebound = 60
projremovetime = 300
postype = p1
offset = 50,-23
velocity = 13,0
projhits = 1
remvelocity = 0,0
attr = S, SP
pausetime = 4, 32
animtype = medium
damage = 29,2
;sparkno = s7070
guard.sparkno = 40
sparkxy = 55,-20
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.hittime = 12
ground.slidetime = 30
ground.velocity = -7,0
ground.type = low
air.velocity = -7,-5
fall.recover = 0
air.fall = 1

[State 3100, fireball9]
type = Projectile
trigger1 = AnimElem = 22
projanim = 8002
projhitanim = 8003
projsprpriority = 5
projremove = 0
projedgebound = 60
projremovetime = 300
postype = p1
offset = 50,-3
velocity = 13,0
projhits = 1
remvelocity = 0,0
attr = S, SP
pausetime = 4, 32
animtype = medium
damage = 29,2
;sparkno = s7070
guard.sparkno = 40
sparkxy = 60,-67
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 25
ground.velocity = -7,0
ground.type = high
air.velocity = -7,-5
fall.recover = 0
air.fall = 1

[State 3100, fireball10]
type = Projectile
trigger1 = AnimElem = 24
projanim = 8002
projhitanim = 8003
projsprpriority = 5
projremove = 0
projedgebound = 60
projremovetime = 300
postype = p1
offset = 50,-13
velocity = 13,0
projhits = 1
remvelocity = 0,0
attr = S, SP
animtype = medium
pausetime = 4, 32
damage = 29,2
;sparkno = s7070
guard.sparkno = 40
sparkxy = 60,-50
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 25
ground.velocity = -7,0
ground.type = low
air.velocity = -7,-5
fall.recover = 0
air.fall = 1
numhits = 4

[State 3100, fireball11]
type = Projectile
trigger1 = AnimElem = 26
projanim = 8002
projhitanim = 8003
projsprpriority = 5
projedgebound = 60
projremovetime = 300
postype = p1
offset = 50,-23
velocity = 13,0
projhits = 1
remvelocity = 0,0
attr = S, SP
pausetime = 4, 32
animtype = medium
damage = 29,2
;sparkno = s7070
guard.sparkno = 40
sparkxy = 55,-27
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 12
guard.hittime = 10
ground.slidetime = 20
ground.velocity = -7,0
ground.type = high
air.velocity = -7,-5
fall.recover = 0
air.fall = 1
numhits = 4

[State 3100, fireball12]
type = Projectile
trigger1 = AnimElem = 28
projanim = 8002
projhitanim = 8003
projsprpriority = 5
projremove = 0
projedgebound = 60
projremovetime = 300
postype = p1
offset = 50,-3
velocity = 13,0
projhits = 1
remvelocity = 0,0
attr = S, SP
pausetime = 4, 32
animtype = medium
damage = 20,2
;sparkno = s7070
guard.sparkno = 40
sparkxy = 55,-70
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 10
guard.hittime = 12
ground.slidetime = 20
ground.velocity = -12,0
ground.type = low
air.velocity = -7,-5
fall.recover = 0
air.fall = 1
numhits = 4

[State 3100, fireball13]
type = Projectile
trigger1 = AnimElem = 30
projanim = 8002
projhitanim = 8003
projsprpriority = 5
projedgebound = 60
projremovetime = 300
postype = p1
offset = 50,-13
velocity = 13,0
projhits = 1
remvelocity = 0,0
attr = S, SP
animtype = medium
pausetime = 4, 32
damage = 20,2
;sparkno = s7070
guard.sparkno = 40
sparkxy = 60,-50
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 12
ground.hittime = 25
ground.slidetime = 15
ground.velocity = -5,0
ground.type = low
air.velocity = -7,-5
fall.recover = 0
air.fall = 1
supermovetime = 30
numhits = 4

[State 3100, fireball14]
type = Projectile
trigger1 = AnimElem = 32
projanim = 8002
projhitanim = 8003
projsprpriority = 5
projremove = 0
projedgebound = 60
projremovetime = 300
postype = p1
offset = 50,-23
velocity = 13,0
projhits = 1
remvelocity = 0,0
attr = S, SP
pausetime = 4, 12
animtype = medium
damage = 20,2
;sparkno = s7070
guard.sparkno = 40
sparkxy = 55,-27
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 12
guard.hittime = 10
ground.slidetime = 20
ground.velocity = -7,0
ground.type = high
air.velocity = -7,-5
fall.recover = 0
fall = 1
air.fall = 1
numhits = 4

[State 3100, RemoveExplod]
type = RemoveExplod
triggerall = AnimElem = 33
trigger1 = NumExplod(7060) >= 0
id = 7060

[State 3100, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------------------
; Wolf Cruently Claw 2
[Statedef 3200]
type = S
movetype = A
physics = S
anim = 3200
poweradd = -3000
velset = 0,0
ctrl = 0

[State 3200, snd]
type = PlaySnd
trigger1 = animelem = 1
value = 12,0

[State 3200, snd]
type = PlaySnd
trigger1 = (time%22) <= 0
triggerall = time <= 20
value = 2,1

[State 3200, cosmo]
type = RemoveExplod
trigger1 = stateno != 3200
ID = 8051

[State 3200, 1]
type = superpause
trigger1 = AnimElem = 1
anim = s7008
pos = 1, -58
Time = 50
darken = 1
movetime = 50

[State 3200, wolf fx]
type = Explod
trigger1 = AnimElem  = 1
ID = 6001
anim = 6001
pos = -25,0
postype = p1
sprpriority = -2
supermovetime = 40
removetime = -2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
scale = 0.6,0.6

[State 3200, 2]
type = superpause
trigger1 = AnimElem = 33
anim = s7008
pos = -20, -77
Time = 20
darken = 1
movetime = 20

[State 3200, super]
type = BGPalfx
trigger1 = AnimElem = 34
ignorehitpause = 1
time = 80
mul = 107,107,222
add = -5,-5,-5
invertall = 1

[State 3200, background]
type = Explod
trigger1 = AnimElem = 1
anim = 8051
ID = 8051
pos = 0,0
postype = back
sprpriority = -3
supermovetime = 149
removetime = 149
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3200, background]
type = Explod
trigger1 = AnimElem = 1
anim = 8050
ID = 8051
pos = 0,0
postype = back
sprpriority = -4
supermovetime = 149
removetime = 149
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3200, background]
type = Explod
trigger1 = AnimElem = 34
anim = 8052
ID = 8051
pos = 0,0
postype = back
sprpriority = -3
supermovetime = 80
removetime = 80
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3200, cosmo 1]
type = Explod
trigger1 = time = 0
anim = 3201
pos = 0,0
postype = p1
removetime = 44
sprpriority = -2
supermovetime = 44
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 1
removeongethit = 1

[State 3200, cosmo 2]
type = Explod
trigger1 = AnimElem = 13
anim = 3202
pos = 0,0
postype = p1
removetime = 80
sprpriority = -2
supermovetime = 80
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 1
removeongethit = 1

[State 3200, cosmo 3]
type = Explod
trigger1 = AnimElem = 35
anim = 3203
pos = 0,0
postype = p1
removetime = 32
sprpriority = -2
supermovetime = 32
ignorehitpause = 1
ownpal = 1
bindtime = 170
persistent = 1
removeongethit = 1

[State 3200, voice]
type = PlaySnd
trigger1 = AnimElem = 13
value = 13,9
channel = 0

[State 3200, voice]
type = PlaySnd
trigger1 = AnimElem = 16
trigger2 = AnimElem = 18
trigger3 = AnimElem = 20
trigger4 = AnimElem = 22
trigger5 = AnimElem = 24
trigger6 = AnimElem = 26
trigger7 = AnimElem = 28
value = 5,5

[State 3200, light effect]
type = Explod
trigger1 = AnimElem = 16
trigger2 = AnimElem = 18
trigger3 = AnimElem = 20
trigger4 = AnimElem = 22
trigger5 = AnimElem = 24
trigger6 = AnimElem = 26
trigger7 = AnimElem = 28
anim = 7060
ID = 7060
pos = 87,-81
postype = p1
sprpriority = 4
removetime = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3200, fireball1]
type = Projectile
trigger1 = AnimElem = 16
ProjID = 8000
projanim = 8000
projhitanim = 8001
projremovetime = 300
;projscale = .5,.5
projsprpriority = 6
projpriority = 2
projremove = 0
projedgebound = 60
postype = p1
offset = 50,-13
velocity = 13, 0
remvelocity = 0, 0
projhits = 1
attr = S, HP
animtype = medium
pausetime = 4, 25
damage = 45,12
sparkno = s7070
guard.sparkno = 40
sparkxy = 55,-70
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.hittime = 15
ground.slidetime = 30
ground.velocity = -7,0
ground.type = low
air.velocity = -10,-5
fall.recover = 0
air.fall = 1

[State 3200, fireball2]
type = Projectile
trigger1 = AnimElem = 18
ProjID = 8000
projanim = 8000
projhitanim = 8001
projremovetime = 300
;projscale = .5,.5
projpriority = 2
projsprpriority = 6
projremove = 0
projedgebound = 60
postype = p1
offset = 50,-13
velocity = 13, 1.7
remvelocity = 0, 0
projhits = 1
attr = S, HP
pausetime = 4, 25
animtype = medium
damage = 45,12
sparkno = s7070
guard.sparkno = 40
sparkxy = 55,-60
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.hittime = 12
ground.slidetime = 30
ground.velocity = -7,0
ground.type = low
air.velocity = -7,-5
fall.recover = 0
air.fall = 1

[State 3200, fireball3]
type = Projectile
trigger1 = AnimElem = 20
ProjID = 8000
projanim = 8000
projhitanim = 8001
projremovetime = 300
;projscale = .5,.5
projpriority = 2
projsprpriority = 6
projremove = 0
projedgebound = 60
postype = p1
offset = 50,-13
velocity = 13, -1.4
remvelocity = 0, 0
projhits = 1
attr = S, HP
pausetime = 4, 25
animtype = medium
damage = 45,12
sparkno = s7070
guard.sparkno = 40
sparkxy = 60,-37
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 25
ground.velocity = -7,0
ground.type = high
air.velocity = -7,-5
fall.recover = 0
air.fall = 1

[State 3200, fireball4]
type = Projectile
trigger1 = AnimElem = 22
ProjID = 8000
projanim = 8001
projhitanim = 8001
projremovetime = 300
;projscale = .5,.5
projpriority = 2
projsprpriority = 6
projremove = 0
projedgebound = 60
postype = p1
offset = 50,-13
velocity = 13, 1.7
remvelocity = 0, 0
projhits = 1
attr = S, HP
animtype = medium
pausetime = 4, 25
damage = 45,12
sparkno = s7070
guard.sparkno = 40
sparkxy = 60,-60
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 20
ground.slidetime = 25
ground.velocity = -7,0
ground.type = low
air.velocity = -7,-5
fall.recover = 0
air.fall = 1
numhits = 4

[State 3200, fireball5]
type = Projectile
trigger1 = AnimElem = 24
ProjID = 8000
projanim = 8000
projhitanim = 8001
projremovetime = 300
projpriority = 2
;projscale = .5,.5
projsprpriority = 6
projremove = 0
projedgebound = 60
postype = p1
offset = 50,-13
velocity = 13, -1.4
remvelocity = 0, 0
projhits = 1
attr = S, SP
pausetime = 4, 55
animtype = medium
damage = 45,12
sparkno = s7070
guard.sparkno = 40
sparkxy = 65,-47
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 12
guard.hittime = 10
ground.slidetime = 20
ground.velocity = -7,0
ground.type = high
air.velocity = -7,-5
fall.recover = 0
air.fall = 1
numhits = 4

[State 3200, fireball6]
type = Projectile
trigger1 = AnimElem = 26
ProjID = 8000
projanim = 8000
projhitanim = 8001
projremovetime = 300
;projscale = .5,.5
projpriority = 2
projsprpriority = 6
projremove = 0
projedgebound = 60
postype = p1
offset = 50,-13
velocity = 13, 0
remvelocity = 0, 0
projhits = 1
attr = S, SP
pausetime = 4, 55
animtype = medium
damage = 45,12
sparkno = s7070
guard.sparkno = 40
sparkxy = 60,-20
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 10
guard.hittime = 12
ground.slidetime = 20
ground.velocity = -12,0
ground.type = low
air.velocity = -7,-5
fall.recover = 0
air.fall = 1
numhits = 4

[State 3200, fireball7]
type = Projectile
trigger1 = AnimElem = 28
ProjID = 8000
projanim = 8000
projhitanim = 8001
projremovetime = 300
;projscale = .5,.5
projpriority = 2
projsprpriority = 5
projremove = 0
projedgebound = 60
postype = p1
offset = 50,-13
velocity = 13, 1.7
remvelocity = 0, 0
projhits = 1
attr = S, HP
animtype = medium
pausetime = 4, 55
damage = 45,12
sparkno = s7070
guard.sparkno = 40
sparkxy = 55,-60
hitsound = s1,7
guardsound = s6,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
guard.velocity = -7
guard.slidetime = 20
guard.hittime = 12
ground.hittime = 25
ground.slidetime = 15
ground.velocity = -5,0
ground.type = low
air.velocity = -7,-5
fall.recover = 0
air.fall = 1
supermovetime = 30
numhits = 4

[State 3200, voice]
type = PlaySnd
trigger1 = AnimElem = 35
value = 13,10
channel = 0

[State 3200, speed]
type = VelSet
triggerall = p2bodydist X >= 5
trigger1 = AnimElem = 35
trigger2 = AnimElem = 36
trigger3 = AnimElem = 37
trigger4 = AnimElem = 38
x = 20

[State 3200, speed]
type = Velset
triggerall = p2bodydist X >= 5
trigger1 = AnimElem = 39
x = 15

[State 3200, speed]
type = Velset
triggerall = p2bodydist X >= 5
trigger1 = AnimElem = 40
x = 12

[State 3200, speed]
type = Velset
triggerall = p2bodydist X >= 5
trigger1 = AnimElem = 41
x = 8

[State 3200, speed]
type = Velset
trigger1 = AnimElem = 42
x = 0

[State 3200, final hit]
type = HitDef
trigger1 = hitcount < 8
attr = S, HA
animtype  = Hard
damage    = 51,4
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 2,16
sparkno = s7004
sparkxy = -10,-60
hitsound   = s1,1
guardsound = s6,0
guard.velocity = -15
guard.slidetime = 15
guard.hittime = 15
ground.slidetime = 15
ground.velocity = 0,0
ground.type = low
air.velocity = 0,0
numhits = 1
fall = 0
fall.recover = 0

[State 3200, final hit]
type = HitDef
trigger1 = Hitcount = 8
attr = S, HA
animtype  = Hard
damage    = 60,0
getpower = 0
givepower = 0
guardflag = MA
pausetime = 4,5
sparkno = s7001
sparkxy = -10,-60
hitsound   = s1,3
guardsound = s6,0
guard.velocity = -7
guard.slidetime = 0
guard.hittime = 0
ground.slidetime = 0
ground.velocity = -25,-4
ground.type = high
air.velocity = -25,0
fall = 1
p2stateno = 1025
fall.damage = 18
fall.recover = 0

[State 3200, RemoveExplod]
type = RemoveExplod
triggerall = AnimElem = 33
trigger1 = NumExplod(7060) >= 0
id = 7060

[State 3200, 6]
type = ChangeState
trigger1 = animtime = 0
value = 1302

;-------------------------------------------------------------
; Wolf Pack
[Statedef 3400]
type = S
movetype = A
physics = S
anim = 3400
poweradd = -1000
velset = 0,0
ctrl = 0

[State 3400, 1]
type = superpause
trigger1 = AnimElem = 4
anim = s7008
pos = 13, -106
time = 60

[State 3400, 2]
type = Helper
trigger1 = Time = 16
name = "wolf1"
id = 4000
postype = p1
pos = -200, 0
stateno = 4000
keyctrl = 0
ownpal = 1

[State 3400, 3]
type = Helper
trigger1 = Time = 21
name = "wolf2"
id = 4100
postype = front
facing = -1
pos = 200, 0
stateno = 4100
keyctrl = 0
ownpal = 1

[State 3400, 4]
type = Helper
trigger1 = Time = 26
name = "wolf3"
id = 4000
postype = p1
pos = -200, 0
stateno = 4000
keyctrl = 0
ownpal = 1

[State 3400, 5]
type = Helper
trigger1 = Time = 31
name = "wolf4"
id = 4100
postype = front
facing = -1
pos = 200, 0
stateno = 4100
keyctrl = 0
ownpal = 1

[State 3400, snd]
type = PlaySnd
trigger1 = Animelem = 2
trigger2 = Animelem = 7
value = 5,3

[State 3400, voice]
type = PlaySnd
trigger1 = Animelem = 4
value = 13,7
channel = 0

[State 3400, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------
; Wolf 1&3
;------------------------------

; Wolf 1&3 (In)
[Statedef 4000]
type = S
movetype = I
physics = N
anim = 4030
velset = 6, 0
ctrl = 0

[State 4000, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 4050

[State 4000, 2]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 4000, 3]
type = ChangeState
triggerall = parent,stateno != 3100
trigger1 = P2Dist x <= 100
value = 4001

[State 4001, 4]
type = ChangeState
triggerall = parent,stateno = 3100
trigger1 = P2Dist x <= 100
value = 4031

[State 4000, 5]
type = VelSet
trigger1 = P2Dist x <= 100
x = 0

[State 4000, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,2

;------------------------------
; Wolf 1&3 (Stop)
[Statedef 4001]
type = A
movetype = A
physics = N
anim = 4001
velset = 0,0
ctrl = 0

[State 4001, DestroySelf]
type = DestroySelf
triggerall = parent,stateno != 3100
trigger1 = parent,var(14) = 1

[State 4001, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 4050

[State 4001, 2]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 4001, 3]
type = ChangeState
trigger1 = Time = 35
value = 4031

[State 4001, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,4

;------------------------------
; Wolf 1&3 (Attack)
[Statedef 4031]
type = A
movetype = A
physics = N
anim = 4031
velset = 5,0
ctrl = 0

[State 4031, DestroySelf]
type = DestroySelf
triggerall = parent,stateno != 3100
trigger1 = parent,var(14) = 1

[State 4031, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP
slot = 0
stateno = 4050

[State 4031, 2]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 4031, 3]
type = VelSet
trigger1 = AnimElem = 4
y = -4

[State 4031, 4]
type = HitDef
triggerall = parent,stateno != 3100
trigger1 = AnimElem = 4
attr = S, SP
damage = 50,10
animtype = Heavy
getpower = 0
givepower = 0
hitflag = MAFD
guardflag = MA
priority = 5
pausetime = 2,2
sparkno = s7070
sparkxy = -10, -20
hitsound = s8,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 8
ground.hittime = 10
air.fall = 1

[State 4031, 5]
type = HitDef
triggerall = parent,stateno = 3100
trigger1 = AnimElem = 4
attr = S, SP
damage = 0,0
animtype = Heavy
getpower = 0
givepower = 0
hitflag = MAFD
guardflag = MA
priority = 5
pausetime = 2,2
sparkno = s7070
sparkxy = -10, -20
hitsound = s8,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 8
ground.hittime = 10
air.fall = 1
p1stateno = 4080

[State 4031, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 4060

;------------------------------
; Wolf 1&3 (Out)
[Statedef 4032]
type = A
movetype = I
physics = N
anim = 4030
velset = 8,0
ctrl = 0

[State 4032, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 4050

[State 4032, ScreenBound]
type = ScreenBound
trigger1 = Time >= 0
value = 0
movecamera = 0,0

[State 4032, 2]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 4032, 3]
type = DestroySelf
trigger1 = Pos X >= 150
trigger2 = Time >= 50

;------------------------------
; Wolf 1&3 (Hit)
[Statedef 4050]
type = A
movetype = I
physics = N
anim = 4050
velset = 0,0
ctrl = 0

[State 4050, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 4032

[State 4050, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,3

;------------------------------
; Wolf 1&3 (Air)
[Statedef 4060]
type = A
movetype = I
physics = N
anim = 4060
velset = 5, 4
ctrl = 0

[State 4060, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 4050

[State 4060, 2]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 4060, 3]
type = Gravity
trigger1 = Time >= 0

[State 4060, 4]
type = ChangeState
trigger1 = Pos Y >= -2
trigger1 = Vel Y > 0
value = 4070

;------------------------------
; Wolf 1&3 (Ground)
[Statedef 4070]
type = S
movetype = I
physics = S
anim = 4070
velset = 0, 0
ctrl = 0

[State 4070, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 4050

[State 4070, 2]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 4070, 3]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 4080

[State 4070, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 14,1

[State 4070, 4]
type = ChangeState
trigger1 = Time = 35
value = 4032

;------------------------------
; Wolf 1&3 (Catch)
[Statedef 4080]
type = S
movetype = I
physics = S
anim = 4090
velset = 0, 0
ctrl = 0

[State 4080, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 4050

[State 4080, 2]
type = sprpriority
trigger1 = Time = 0
value = 4

[State 4080, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,4

[State 4080, 4]
type = ChangeState
trigger1 = Time = 35
value = 4032

;------------------------------
; Wolf 2&4
;------------------------------

; Wolf 2&4 (In)
[Statedef 4100]
type = S
movetype = I
physics = N
anim = 4030
velset = 6,0
ctrl = 0

[State 4100, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 4150

[State 4100, 2]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 4100, 3]
type = ChangeState
triggerall = parent,stateno != 3100
trigger1 = P2Dist x <= 100
value = 4101

[State 4101, 4]
type = ChangeState
triggerall = parent,stateno = 3100
trigger1 = P2Dist x <= 100
value = 4131

[State 4100, 5]
type = VelSet
trigger1 = P2Dist x <= 100
x = 0

[State 4100, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,2

;------------------------------
; Wolf 2&4 (Stop)
[Statedef 4101]
type = A
movetype = A
physics = N
anim = 4001
velset = 0,0
ctrl = 0

[State 4101, DestroySelf]
type = DestroySelf
triggerall = parent,stateno != 3100
trigger1 = parent,var(14) = 1

[State 4101, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 4150

[State 4101, 2]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 4101, 2]
type = ChangeState
trigger1 = Time = 35
value = 4131

[State 4101, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,4

;------------------------------
; Wolf 2&4 (Attack)
[Statedef 4131]
type = A
movetype = A
physics = N
anim = 4031
velset = 5,0
ctrl = 0

[State 4131, DestroySelf]
type = DestroySelf
triggerall = parent,stateno != 3100
trigger1 = parent,var(14) = 1

[State 4131, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 4150

[State 4131, 2]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 4131, 3]
type = VelSet
trigger1 = AnimElem = 4
y = -8

[State 4131, 4]
type = HitDef
triggerall = parent,stateno != 3100
trigger1 = AnimElem = 4
attr = S, SP
damage = 50
animtype = Heavy
getpower = 0
givepower = 0
hitflag = MAFD
guardflag = MA
priority = 5
pausetime = 2,2
sparkno = s7070
sparkxy = -10, -20
hitsound = s8,0
guardsound = s6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 10
air.fall = 1
fall = 1

[State 4131, 5]
type = HitDef
triggerall = parent,stateno = 3100
trigger1 = AnimElem = 4
attr = S, SP
damage = 0,0
animtype = Heavy
getpower = 0
givepower = 0
hitflag = MAFD
guardflag = MA
priority = 5
pausetime = 2,2
sparkno = s7070
sparkxy = -10, -20
hitsound = s8,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 8
ground.hittime = 10
air.fall = 1
p1stateno = 4180

[State 4131, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 4160

;------------------------------
; Wolf 2&4 (Out)
[Statedef 4132]
type = A
movetype = I
physics = N
anim = 4030
velset = 8,0
ctrl = 0

[State 4132, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 4150

[State 4132, 2]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 4132, 3]
type = DestroySelf
trigger1 = Pos X >= 150
trigger2 = Time >= 50

;------------------------------
; Wolf 2&4 (Hit)
[Statedef 4150]
type = A
movetype = I
physics = N
anim = 4050
velset = 0,0
ctrl = 0

[State 4150, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 4132

[State 4150, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,3

;------------------------------
; Wolf 2&4 (Air)
[Statedef 4160]
type = A
movetype = I
physics = N
anim = 4060
velset = 5, 8
ctrl = 0

[State 4160, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 4050

[State 4160, 2]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 4160, 3]
type = Gravity
trigger1 = Time >= 0

[State 4160, 4]
type = ChangeState
trigger1 = Pos Y >= -2
trigger1 = Vel Y > 0
value = 4170

;------------------------------
; Wolf 2&4 (Ground)
[Statedef 4170]
type = S
movetype = I
physics = S
anim = 4070
velset = 0, 0
ctrl = 0

[State 4170, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 4050

[State 4170, 2]
type = sprpriority
trigger1 = Time = 0
value = 10

[State 4170, 3]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 4080

[State 4170, 4]
type = ChangeState
trigger1 = Time = 35
value = 4132

;------------------------------
; Wolf 1&3 (Catch)
[Statedef 4180]
type = S
movetype = I
physics = S
anim = 4090
velset = 0, 0
ctrl = 0

[State 4180, 1]
type = HitOverride
trigger1 = Time = 0
time = -1
attr = SCA, AA, AP, AT
slot = 0
stateno = 4050

[State 4180, 2]
type = sprpriority
trigger1 = Time = 0
value = 3

[State 4180, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 14,4

[State 4180, 4]
type = ChangeState
trigger1 = Time = 35
value = 4032

;---------------------------------------------------------------------------
; FENRIR - AI (Artificial Intelligence)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; AI Variables (Statedef -2)
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

;---------------------------------------------------------------------------

[State -2, God Field Dash]
type = RemoveExplod
triggerall = NumExplod(2020) != 0
trigger1 = stateno != 2020
ID = 2020

[State -2, Tenkyoken]
type = RemoveExplod
triggerall = NumExplod(2400) != 0
trigger1 = stateno != 2400
ID = 2400

[State -2, Tenkyoken]
type = RemoveExplod
trigger1 = anim != 0
ID = 2

[State -2, Tenkyoken]
type = RemoveExplod
trigger1 = anim != 1
ID = 3

[State -2, wolfvar]
type = varset
triggerall = (p2name = "shiryu") || (p2name = "shiryu2")
trigger1 = p2stateno = [8601,8605]
v = 11
value = 1

[State -2, 1]
type = Helper
trigger1 = stateno = 0
trigger1 = numhelper(2000) = 0
name = "wolf"
id = 2000
postype = p1
pos = -45, 0
stateno = 2000
keyctrl = 0
ownpal = 1

[State -2, StopPOWSound]
type = StopSnd
trigger1 = stateno != 705
channel = 12

[State -2, StopPOWSound]
type = StopSnd
trigger1 =time = 110
channel = 15

;---------------------------------------------------------------------------
; Random Sounds
;---------------------------------------------------------------------------

; Medium Blows
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 5
trigger1 = stateno = 210
trigger2 = stateno = 250
trigger3 = stateno = 410
trigger4 = stateno = 440
trigger5 = stateno = 610
trigger6 = stateno = 630
value = 12,0
channel = 0

; Strong Blows
[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = time = 5
trigger1 = stateno = 220
trigger2 = stateno = 230
trigger3 = stateno = 260
trigger4 = stateno = 420
trigger5 = stateno = 450
trigger6 = stateno = 640
trigger7 = stateno = 660
value = 12,1
channel = 0

; Hit
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 10,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 10,0

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10,0

[State -2]
type = PlaySnd
trigger1 = random < 500
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10,0

[State -2]
type = PlaySnd
trigger1 = random < 750
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 10,0

;---------------------------------------------------------------------------
; Combos
;---------------------------------------------------------------------------

; Punch + combo
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
value = 215
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S) && (power >= 1000)
trigger1 = (stateno = 215) && (prevstateno = 200) && (movecontact)
value = 3050

; Punch + combo
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
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S) && (power >= 2000)
trigger1 = (stateno = 240) && (prevstateno = 210) && (movecontact)
value = 3000

; Punch + combo
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
trigger1 = (stateno = 250) && (prevstateno = 200) && (movecontact)
value = 215
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S) && (power >= 1000)
trigger1 = (stateno = 215) && (prevstateno = 250) && (movecontact)
value = 2100

; Punch + combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200)
trigger1 = (movecontact)
value = 215
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S) && (power >= 1000)
trigger1 = (stateno = 215) && (prevstateno = 200) && (movecontact)
value = 2100

; Punch + combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210)
trigger1 = (movecontact)
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S) && (power >= 2000)
trigger1 = (stateno = 240) && (prevstateno = 210) && (movecontact)
value = 3000

; Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 250)
trigger1 = (movecontact)
value = 1300

; Punch + combo
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
value = 215
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 215) && (prevstateno = 210) && (movecontact)
value = 1200

; Punch + combo
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
value = 250
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 210) && (movecontact)
value = 1210

; Punch + combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 215)
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 215) && (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact)
value = 1220

; Punch + combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230)
trigger1 = (movecontact)
value = 215
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 215) && (prevstateno = 230) && (movecontact)
value = 1100

; Punch + combo
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
value = 1100

; Punch + combo
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
value = 210

; Punch + combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240)
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 240) && (movecontact)
value = 215

; Punch + combo
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
value = 1100

; Punch + combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210)
trigger1 = (movecontact)
value = 250
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 210) && (movecontact)
value = 1100

; Punch + combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240)
trigger1 = (movecontact)
value = 215
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 215) && (prevstateno = 240) && (movecontact)
value = 1110

; Punch + combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 215)
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 215) && (movecontact)
value = 1020

; Punch x 4
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
value = 200

; Punch x 3
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
value = 3200

; Punch x 3
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 215)
trigger1 = (movecontact)
value = 215
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 215) && (prevstateno = 215) && (movecontact)
value = 1000

; Punch x 3
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
value = 1120

;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------

; Cosmo Charge
[State -2]
type = changestate
Triggerall = (roundstate = 2)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 69])
trigger1 = (P2bodydist X >= 150) &&  (power <= 2999) && (prevstateno != 5120)
value = 900

; Wolf Fangs 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [70, 104])
trigger1 = (P2bodydist X >= 120) && (prevstateno != 5120)
value = 1000

; Wolf Fangs 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [105, 139])
trigger1 = (P2bodydist X >= 145) && (prevstateno != 5120)
value = 1010

; Wolf Fangs 3
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [140, 174])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120)
value = 1020

; Rotating Kick 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [175, 209])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 1100

; Rotating Kick 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [210, 244])
trigger1 = (P2bodydist X <= 60) && (prevstateno != 5120)
value = 1110

; Rotating Kick 3
[State -2]
type = changestate
Triggerall = roundstate = 2 && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [245, 279])
trigger1 = (p2bodydist X <= 120) && (prevstateno != 5120)
value = 1120

; Wolf Claws 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [280, 314])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 1200

; Wolf Claws 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [315, 349])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 1210

; Wolf Claws 3
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X <= 150) && (prevstateno != 5120) && (random = [350, 384])
value = 1220

; Flying Claws 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [385, 419])
trigger1 = (P2bodydist X >= 120) && (p2bodydist X < 180) &&(prevstateno != 5120)
value = 1300

; Flying Claws 1 (air)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L) && (Pos Y <= -70)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [420, 454])
trigger1 = (P2bodydist X >= 120) && (p2bodydist X < 180) &&(prevstateno != 5120)
value = 1301

; Flying Claws 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [455, 489])
trigger1 = (P2bodydist X >= 180) && (p2bodydist X < 240) && (prevstateno != 5120)
value = 1310

; Flying Claws 2 (air)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L) && (Pos Y <= -70)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [490, 524])
trigger1 = (P2bodydist X >= 180) && (p2bodydist X < 240) && (prevstateno != 5120)
value = 1311

; Flying Claws 3
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [525, 559])
trigger1 = (P2bodydist X >= 240) && (prevstateno != 5120)
value = 1320

; Flying Claws 3 (air)
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L) && (Pos Y <= -70)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [560, 594])
trigger1 = (P2bodydist X >= 240) && (prevstateno != 5120)
value = 1321

; King Attack
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [595, 629])
trigger1 = (P2bodydist X >= 210) && (prevstateno != 5120)
value = 1400

; Throw
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X <= 30) && (stateno != 100) && (p2movetype != H) && (random = [630,664])
value = 800

; Blinding Claw
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X <= 30) && (stateno != 100) && (p2movetype != H) && (random = [665,699])
value = 850

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [700,734])
value = 195

;---------------------------------------------------------------------------
; Hyper Moves
;---------------------------------------------------------------------------

; Wolf Pack
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X >= 150) && (power >= 1000) && (power < 2000) && (random = [735,769])
value = 3400

; Wolf Cruently Claw 2
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X >= 150) && (power >= 3000) && (random = [770,804])
value = 3200

; Northern Gun Ro Ken
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X >= 150) && (power >= 2000) && (random = [805,839])
value = 3100

; Wolf Cruently Claw 1
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X < 150) && (power >= 1000) && (power < 3000) && (random = [840,874])
value = 3000

; Lighting Claws
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X < 150) && (p2bodydist X <= 150) && (power >= 1000) && (power < 3000) && (random = [875,909])
value = 3050

;---------------------------------------------------------------------------
; Automatic States (Statedef -3)
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

[State -3, remove mouth1]
type = RemoveExplod
triggerall = NumExplod(198) >= 1
trigger1 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
ID = 198

[State -3, remove mouth2]
type = RemoveExplod
triggerall = NumExplod(198) >= 1
trigger1 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
ID = 199

;-------------------------------------

[State -3, wolfvar]
type = varset
triggerall = (p2name = "shiryu") || (p2name = "shiryu2")
trigger1 = p2stateno = [8601,8605]
v = 11
value = 1

[State -3, AI Activate]
type = RemoveExplod
trigger1 = Stateno != [2400,2403]
ID = 2403

;---------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = Animelem = 2
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = Animelem = 5
value = 3,1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = Animelem = 2
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = Animelem = 5
value = 3,1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 100
trigger1 = Animelem = 3
value = 3,1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = Animelem = 2
value = F3,0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = Animelem = 5
value = F3,1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = Animelem = 2
value = F3,0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = Animelem = 5
value = F3,1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 100
trigger1 = Animelem = 3
value = F3,1

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
value = 2,0

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = time = 1
value = F2,0

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
value = F2,3

;---------------------------------------

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = time = 1
time = 25
PalBright = 10,10,10
PalContrast= 98,98,98
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
trigger1 = AnimElem = 3
pos = 0,0
anim = 7085
sprpriority = 5
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
trigger1 = Animelem = 3
value = 3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 3
value = F3,0

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

;---------------------------------------

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = Var(58) = 0
triggerall = Life <= 0
triggerall = anim = 5149
trigger1 = time = 1
trigger2 = time = 10
trigger3 = time = 20
value = 11,1

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
triggerall = var(4) = 1
trigger1 = stateno != 100
trigger2 = stateno != 191
channel = 4

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9

;---------------------------------------

; Reset var(4)
[State -3, VarSet]
type = VarSet
triggerall = var(4) = 1
trigger1 = stateno != 100
v = 4
value = 0

[State -3, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "A.I. = %d"
params = var(9)

[State 0, VarSet]
type = VarSet
trigger1 = Stateno != 3100
v = 12
value = 0

[State 0, VarSet]
type = Destroyself
Triggerall = Ishelper(40000)
trigger1 = Stateno != 3100