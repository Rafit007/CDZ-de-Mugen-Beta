; MUSCA DIO CMD File by Pardo & Tecla2000

;---------------------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 1

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = s
ctrl = 0
velset = 0,0

[State 180, 1]
type = ChangeState
triggerall = var(24) = 1
trigger1 = time = 0
value = 184

[State 180, 2]
type = ChangeState
triggerall = var(24) = 0
trigger1 = time = 0
trigger1 = matchover = 0
value = 181

[State 180, 3]
type = ChangeState
triggerall = var(24) = 0
trigger1 = time = 1
trigger1 = matchover = 1
value = 182

;---------------------------------------------------------------------------
; Win pose 1
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0,250]
flag = roundnotover

[State 181, Mouth]
type = Explod
trigger1 = time = 0
anim = 186
ID = 186
pos = 4,56
postype = p1
bindtime = 150
sprpriority = 10
removetime = 150
removeongethit = 1
supermovetime = 150
ignorehitpause = 1
scale = 1,1

[State 181, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 2

[State 181, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;----------------------------------------------------------------------------
; Win pose 2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182]
type = ChangeState
triggerall = time = 0
trigger1 = name = "dio" && palno = 5 || name = "dio" && palno = 11
trigger2 = name = "dioH"
value = 183

[State 182, 1]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = roundnotover

[State 182, 2]
type = PlaySnd
trigger1 = time = 55
value = 13, 0

;---------------------------------------------------------------------------
; Win pose 3 (Hades)
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 183, 1]
type = AssertSpecial
trigger1 = time = [0,150]
flag = roundnotover

[State 183, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 0

[State 183, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose (fatality)
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 184, 1]
type = AssertSpecial
trigger1 = time = [0,320]
flag = roundnotover

[State 184, 1]
type = RemoveExplod
triggerall = numexplod(0) >= 1
trigger1 = time = 0
ID = 0

[State 184, 1]
type = RemoveExplod
triggerall = numexplod(1812) >= 1
trigger1 = time = 0
ID = 1812

[State 184, 1]
type = RemoveExplod
triggerall = numexplod(1822) >= 1
trigger1 = time = 0
ID = 1822

;Algethi (intro/win)
[State 184, 1]
type = Explod
trigger1 = time = 0
anim = 1814
sprpriority = -3
postype = p1
pos = -75,0
bindtime = 500
removetime = 500
ownpal = 1
shadow = 5,5,5

;Sirius (intro/win)
[State 184, 1]
type = Explod
trigger1 = time = 0
anim = 1824
sprpriority = -3
postype = p1
pos = -30,0
bindtime = 500
removetime = 500
ownpal = 1
shadow = 5,5,5

[State 184, 2]
type = PlaySnd
trigger1 = time = 30
value = 13, 0

[State 184, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Intro state decider
[Statedef 190]

[State 190, var]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 190 , state]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 191

[State 190 , state]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 192

;---------------------------------------------------------------------------
; Intro 1
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = time = [0,450]
flag = Intro

[State 191, 2]
type = ChangeState
triggerall = time = 0
trigger1 = name = "dio" && palno = 5 || name = "dio" && palno = 11
trigger2 = name = "dioH"
value = 193

[State 191, box]
type = Explod
trigger1 = Time = 0
anim = 1910
ID = 1910
ignorehitpause = 1
sprpriority = -3
postype = p1
pos = 20,0
bindtime = 1
removetime = 165

[State 191, cloth]
type = Explod
trigger1 = Time = 0
anim = 1911
ID = 1911
ignorehitpause = 1
sprpriority = -1
postype = p1
pos = 20,0
bindtime = 1
removetime = 265

[State 191, 3]
type = Explod
trigger1 = time = 45
pos = 37,-10
anim = 7040+var(22)
scale = .9,.9
facing = -1
sprpriority = -1

[State 191, 4]
type = Explod
trigger1 = time = 100
pos = 10,0
anim = 7050+var(22)
sprpriority = -1

[State 191, 5]
type = Explod
trigger1 = time = 120
anim = 7003+var(22)
ID = 7003
sprpriority = 0
postype = p1
pos = 20,-30
bindtime = 1
supermove = 1
ownpal = 1

[State 191, Constellation]
type = Explod
trigger1 = animelem = 26
anim = 6000
ID = 6000
pos = -85,-175
postype = p1
bindtime = -1
sprpriority = -4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
scale = 0.7,0.7
removetime = 65

[State 191, 6]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 1

[State 191, 7]
type = PlaySnd
trigger1 = time = 1
value = 5, 0

[State 191, 8]
type = PlaySnd
trigger1 = time = 95
value = 5, 2

[State 191, 9]
type = PlaySnd
trigger1 = time = 115
value = 4, 6

[State 191, 10]
type = PlaySnd
trigger1 = AnimElem = 16
value = 4, 1

[State 191, 11]
type = PlaySnd
trigger1 =  AnimElem  = 18
value = 4, 2

[State 191, 12]
type = PlaySnd
trigger1 =  AnimElem  = 19
value = 4, 3

[State 191, 13]
type = PlaySnd
trigger1 =  AnimElem  = 20
value = 4, 4

[State 191, 14]
type = PlaySnd
trigger1 =  AnimElem = 21
value = 4, 5

[State 191, 15]
type = PlaySnd
trigger1 = AnimElem = 23
value = 4, 6

[State 191, 16]
type = PlaySnd
trigger1 = AnimElem = 26
value = 2, 2

[State 191, 17]
type = PlaySnd
trigger1 = AnimElem = 26
value = 13, 4
channel = 2

[State 191, 17]
type = StopSnd
trigger1 = AnimElem = 34
channel = 2

[State 191, 18]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

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
; Intro 2
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

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

[State 192, 4]
type = ChangeState
trigger1 = animtime = 0
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

;---------------------------------------------------------------------------
; Intro 3 (Hades)
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, voice]
type = PlaySnd
trigger1 = time = 2
value = 13, 0
channel = 0

[State 193]
type = AssertSpecial
trigger1 = Time = [0,360]
flag = Intro

[State 193]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 6

[State 193]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2, 1

[State 193, mantle]
type = Explod
trigger1 = AnimElem = 8
anim = 1930
ID = 1930
pos = -30, 0
postype = p1
sprpriority = -2
bindtime = -1
removetime = 120
sprpriority = -2
supermovetime = -1
removeongethit = 1

[State 193]
type = PlaySnd
trigger1 = AnimElem = 10
value = 12, 1

[State 193]
type = PlaySnd
trigger1 = AnimElem = 10
value = 9, 3

[State 193, Constellation]
type = Explod
trigger1 = AnimElem = 10
anim = 6000
ID = 6000
pos = -85,-175
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
removetime = 140

[State 193, cosmo]
type = Explod
trigger1 = AnimElem = 10
anim = 903+var(22)
ID = 903
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
removetime = 140

[State 193, violet light]
type = Explod
trigger1 = AnimElem = 10
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

[State 193, violet light]
type = Explod
trigger1 = AnimElem = 10
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
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 0

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
[Statedef 200]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  = 1				;Number of air juggle points move takes
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 200				;Change animation (Def: no change)
poweradd = 10			;Power to add (Def: 0)
sprpriority = 2			;Set layering priority to 2 (in front)

[State 200 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 22			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8			;Time attacker pauses, time opponent shakes
sparkno = S7000+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -82		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 0			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

[State 200, 5]
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
poweradd= 10
ctrl = 0
velset = 0,0
anim = 210

[State 210 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1

[State 210, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 10			;Damage that move inflicts, guard damage
animtype = Medium			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 3, 3			;Time attacker pauses, time opponent shakes
sparkno = S7000+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -81		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 1			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12	;Time opponent is in hit state
ground.velocity = -1		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

[State 210, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 23		;Damage that move inflicts, guard damage
animtype = Medium			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8			;Time attacker pauses, time opponent shakes
sparkno = S7000+var(22)			;Spark anim no (Def: set above)
sparkxy = -10, -75		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 1			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12        	;Time before opponent regains control in air

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 220

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 2

[State 220, 2]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 220, 3]
type = VelSet
trigger1 = AnimElem = 2
x = 12

[State 220, 3]
type = HitDef
trigger1 = AnimElem = 3
priority = 2
attr = S, NA
damage = 40
getpower = 20
givepower = 50
animtype = hard
guardflag = HA
sparkxy = -10,-75
sparkno = S7001+var(22)
hitsound = S1, 2
guardsound = S6, 0
pausetime = 15,15
ground.hittime = 19
ground.type = high
ground.slidetime = 19
ground.velocity = -5
air.velocity = -4,-3

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Standing Strong Punch (close)
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 225
poweradd = 30
sprpriority = 2

[State 225, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 225, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 36
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 12
sparkno = S7002+var(22)
sparkxy = -10, -72
hitsound = S1, 1
guardsound = S6, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime = 12
air.velocity = -5,-7
air.cornerpush.veloff = 0
yaccel = .5
persistent = 0
envshake.time = 7
envshake.ampl = 1
getpower=0

[State 225, 3]
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
juggle  = 1
poweradd= 15
ctrl = 0
anim = 230

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0

[State 230, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 24			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 10			;Time attacker pauses, time opponent shakes
sparkno = S7000+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -66		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 3			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 8		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

[State 230, 5]
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
poweradd= 25
ctrl = 0
velset = 0,0
anim = 240

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 10			;Damage that move inflicts, guard damage
animtype = Medium			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 4,4			;Time attacker pauses, time opponent shakes
sparkno = S7000+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -32		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 4			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -2		;Velocity at which opponent is pushed
airguard.velocity = -2,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 21		;Damage that move inflicts, guard damage
animtype = Medium			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8			;Time attacker pauses, time opponent shakes
sparkno = S7001+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -72		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 4			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -2,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 30
ctrl = 0
velset = 0,0
anim = 250

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[State 250, 2]
type = VelSet
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
x = 2

[State 250, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 20			;Damage that move inflicts, guard damage
animtype = Heavy			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 4, 4			;Time attacker pauses, time opponent shakes
sparkno = S7001+var(22)			;Spark anim no (Def: set above)
sparkxy = -10, -108		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 5			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -2		;Velocity at which opponent is pushed
airguard.velocity = -5,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 20		;Damage that move inflicts, guard damage
animtype = Heavy			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 10			;Time attacker pauses, time opponent shakes
sparkno = S7002+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -75		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 4			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -5,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

[State 250, 5]
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
poweradd= 15
ctrl = 0
anim = 400

[State 200 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 20			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8			;Time attacker pauses, time opponent shakes
sparkno = S7000+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -45		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 0			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

[State 400, 5]
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
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410

[State 200 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12, 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 28		;Damage that move inflicts, guard damage
animtype = Medium			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8			;Time attacker pauses, time opponent shakes
sparkno = S7001+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -45		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 1			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -2,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
ctrl = 0
anim = 420
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[State 420, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 35
getpower = 20
animtype = Up
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = S7002+var(22)
sparkxy = -10,-75
hitsound = S1, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-3
air.hittime = 12
fall = 1

[State 420, 4]
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
poweradd= 10
ctrl = 0
anim = 430

[State 201 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12, 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 23			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8			;Time attacker pauses, time opponent shakes
sparkno = S7000+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, 3		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 2			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

[State 430, 5]
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
poweradd= 22
ctrl = 0
anim = 440

[State 201 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 31			;Damage that move inflicts, guard damage
animtype = Medium			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8,8			;Time attacker pauses, time opponent shakes
sparkno = S7001+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, 3		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 3			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = Low		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -3,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

[State 440, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Strong Kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 70
ctrl = 0
anim = 450
sprpriority = 2

[State 450, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[State 450, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12, 0

[State 450, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage   = 41
hitflag = MAFD
guardflag = L
pausetime = 8,8
sparkno = S7002+var(22)
sparkxy = -10,5
hitsound = S1, 4
guardsound = S6, 0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

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
poweradd= 11
ctrl = 0
anim = 600

[State 600, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 0

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12, 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 23			;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 10			;Time attacker pauses, time opponent shakes
sparkno = S7000+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -41		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 0			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

;---------------------------------------------------------------------------
; Jump Medium Punch
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 610

[State 610, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12, 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 31			;Damage that move inflicts, guard damage
animtype = Medium			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 15			;Time attacker pauses, time opponent shakes
sparkno = S7001+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -39		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 1			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -3,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

;---------------------------------------------------------------------------
; Jump Strong Punch
; CNS difficulty: easy
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 70
ctrl = 0
anim = 620

[State 620, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12, 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 40			;Damage that move inflicts, guard damage
animtype = Heavy			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 20			;Time attacker pauses, time opponent shakes
sparkno = S7002+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -30		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 2			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -5,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

;---------------------------------------------------------------------------
; Jump Light Kick
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 20
ctrl = 0
anim = 630

[State 640, 0]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12, 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 25		;Damage that move inflicts, guard damage
animtype = Light			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8			;Time attacker pauses, time opponent shakes
sparkno = S7000+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -65		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 3			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

;---------------------------------------------------------------------------
; Jump Medium Kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 640

[State 640, 0]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12, 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 32			;Damage that move inflicts, guard damage
animtype = Medium			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 12, 12			;Time attacker pauses, time opponent shakes
sparkno = S7001+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -69		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 3			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -3,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

;---------------------------------------------------------------------------
; Jump Strong Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 70
ctrl = 0
anim = 650

[State 640, 0]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 200, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12, 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 43		;Damage that move inflicts, guard damage
animtype = Heavy			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 12,12			;Time attacker pauses, time opponent shakes
sparkno = S7002+var(22)				;Spark anim no (Def: set above)
sparkxy = -10, -61		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S1, 4			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -5,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air

;-------------------------------------------------------------
; Throw 1
[Statedef 800]
type = S
movetype = A
physics = S
anim = 800
velset = 0,0
ctrl = 0

[State 800, 1]
type = HitDef
Trigger1 = AnimElem = 1
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 810
p2stateno = 820
guard.dist = 0
fall = 1

[State 800, StateCahnge]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
[Statedef 810]
type = S
movetype = A
physics = N
anim = 810
poweradd = 5

[State 810, 6]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1, 0

[State 810, 6]
type = PlaySnd
trigger1 = AnimElem = 2
value = s12, 0

[State 810,1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 48,-96

[State 810,3]
type = TargetBind
trigger1 = AnimElem = 3
pos = 44,-99

[State 810,3]
type = TargetBind
trigger1 = AnimElem = 4
pos = -20,-99

[State 810,4]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -55

[State 810,5]
type = TargetState
trigger1 = time = 25
value = 821

[State 810,5]
type = Targetdrop
trigger1 = time = 25

[State 810,6]
type = Turn
trigger1 = Animtime = 0

[State 810,7]
type = PosAdd
trigger1 = AnimElem = 15
x = -10

[State 810,8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[Statedef 821]
type    = A
movetype= H
physics = N
velset = 6,-8
poweradd = 10

[State 0, PosAdd]
type = PosAdd
trigger1 = time =0
x = 0
y = 99

[State 821, 1]
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 2]
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 821, 3]
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210

[State 821, 4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
; Throw 2
[Statedef 830]
type = S
movetype = A
physics = S
anim = 800
velset = 0,0
ctrl = 0

[State 830, 1]
type = HitDef
Trigger1 = AnimElem = 1
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 840
p2stateno = 850
guard.dist = 0
fall = 1

[State 830, StateCahnge]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 840]
type = S
movetype = A
physics = N
anim = 840

[State 840, 6]
type = PlaySnd
trigger1 = AnimElem = 1
value = s12, 0

[State 840, 0]
type = Width
trigger1 = Time >= 0
edge = 80,80

[State 840, 1]
type = SprPriority
trigger1 = Time = [1,33]
value = 2

[State 840, 1]
type = SprPriority
trigger1 = Time >= 34
value = 5

[State 840, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 50,0
;bindtime = 11

[State 840, 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 8,-45

[State 840, 2]
type = TargetBind
trigger1 = AnimElem =4
pos =40,-113

[State 840, 2]
type = TargetBind
trigger1 = AnimElem = 5
pos = -88,-86
;bindtime = 4

[State 840, 2]
type = TargetBind
trigger1 = AnimElem = 6
pos = -55,7
;bindtime = 4

[State 840, 5]
type = TargetLifeAdd
trigger1 = AnimElem = 7
value = -65

[State 840, 2]
type = Targetdrop
trigger1 = AnimElem = 7

[State 840, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 8130
postype = p1
pos = 40,-70
sprpriority = 4

[State 840, 4]
type = Explod
trigger1 = AnimElem = 7
anim = 8120
postype = p1
pos = -80,0
sprpriority = 3

[State 840, 6]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1, 0

[State 840, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = s8, 0

[State 840, 8]
type = Turn
trigger1 = AnimTime = 0

[State 840, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 850]
type = A
movetype = H
physics = N
velset = 0,0

[State 850, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 850

[State 850, 2]
type = VelSet
trigger1 = AnimTime = 0
X = 5

[State 810, 2]
type =PosAdd
trigger1 = AnimElem = 7
x = 55
y = -7

[State 850, 3]
type = ScreenBound
trigger1 = Time >= 0
value = 0

;[State 850, 3]
;type = VelAdd
;trigger1 = Time >= 28
;Y = 0.4

[State 850, 9]
type = SelfState
trigger1 = AnimTime = 0
value = 5100

;---------------------------------------------------------------------------
; Combo
[Statedef 860]
type = S
movetype = A
physics = S
anim = 860
sprpriority = 2
juggle = 0
velset = 0,0
ctrl = 0

[State 860, Effect]
type = PlaySnd
trigger1 = time = 0
value = 0, 2

[State 860, Hit]
type = HitDef
Trigger1 = AnimElem = 2
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 870
p2stateno = 880
hitsound = S1, 2
guard.dist = 0
fall = 1

[State 860, StateCahnge]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 870]
type = S
movetype = A
physics = N
anim = 870
poweradd = 60

[State 870, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6|| AnimElem = 8
value = 1, 1

[State 870, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1, 2

[State 870, Effect]
type = PlaySnd
trigger1 = time = 1
value = 13, 0

[State 870, Bind]
type = TargetBind
trigger1 = AnimElemTime(42) < 0
pos = 53, -66

[State 870, Bind]
type = TargetBind
trigger1 = AnimElemTime(42) = 0
pos = 53, 0

[State 870, Hurt]
type = TargetLifeAdd
trigger1  = MoveContact =1
trigger2 = animelem = 2
trigger3 = animelem = 4
trigger4 = animelem = 6
trigger5 = animelem = 8
trigger6 = animelem = 12
value = -11
ID = -1

[State 870, 1]
type = PlaySnd
trigger1 = time = 0
value = 0, 1

[State 870, Explod]
type = Explod
trigger1  = MoveContact =1
trigger2 = animelem = 2
trigger3 = animelem = 4
trigger4 = animelem = 6
trigger5 = animelem = 8
anim = 7001+var(22)
ID = 7001
pos = -10,-65
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 870, Explod]
type = Explod
trigger1  = MoveContact =1
trigger2 = animelem = 12
anim = 7003+var(22)
ID = 7003
pos = -10,-75
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 870, Throw]
type = TargetState
trigger1 = AnimElemTime(42) = 0
value = 881

[State 870, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 105
ctrl = 0

[Statedef 880]
type = A
movetype = H
physics = N
sprpriority = 2
velset = 0,0

[State 880, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 24 || AnimElem = 42
value = 1, 0

[State 880, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 15 || AnimElem = 33 || AnimElem = 51
value = 1, 1

[State 880, Screen]
type = ScreenBound
trigger1 = 1
Value = 1
movecamera = 1,0

[State 880, Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 880

[Statedef 881]
type = A
movetype = H
physics = N
anim = 5010
sprpriority = 1
velset = -4,-8

[State 881, Gravity]
type = Gravity
Trigger1 = 1

[State 881, Screen]
type = ScreenBound
trigger1 = 1
Value = 1
movecamera = 1,0

[State 881, StateChange]
type = SelfState
trigger1 = AnimTime = 0
value = 5035

;---------------------------------------
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
trigger1 = time = 0
var(10) = 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 9, 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 12, 1

[State 900]
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

[State 901]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

[State 901]
type = Explod
triggerall = numexplod(7010) = 0
trigger1 = 1
anim = 7010+var(22)
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
anim = 7020+var(22)
ID = 7020
pos = 0,2
bindtime = 1
scale = 0.9,0.9
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 901, Constellation]
type = Explod
triggerall = numexplod(6000) = 0
trigger1 = animelem = 1
anim = 6000
ID = 6000
pos = -85,-175
postype = p1
bindtime = -1
sprpriority = -4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
scale = 0.7,0.7

[State 901] ;add
type = Explod
triggerall = numexplod(7030) = 0
trigger1 = 1
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

[State 901] ;add
type = Explod
triggerall = numexplod(7031) = 0
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
type = Explod
triggerall = numexplod(903) = 0
trigger1 = 1
anim = 903+var(22)
ID = 903
pos = 0,0
bindtime = 1
removetime = -1
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 901]
type = ChangeState
triggerall = var(59) = 0
trigger1 = command != "charge1"
trigger2 = command != "charge2"
value = 902

[State 901]
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
physics =  S
ctrl = 0
anim = 902
velset = 0,0

[State 902]
type = VarSet
trigger1 = time = 0
var(10) = 0

[State 902] ;orig
type = StopSnd
trigger1 = Time = 0
channel = 0

[State 902]
type = RemoveExplod
triggerall = numexplod(6000) >= 1
trigger1 = time = 0
ID = 6000

[State 902]
type = RemoveExplod
triggerall = numexplod(7031) >= 1
trigger1 = time = 0
ID = 7031

[State 902]
type = RemoveExplod
triggerall = numexplod(7030) >= 1
trigger1 = time = 0
ID = 7030

[State 902]
type = RemoveExplod
triggerall = numexplod(7020) >= 1
trigger1 = time = 0
ID = 7020

[State 902]
type = RemoveExplod
triggerall = numexplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 902]
type = RemoveExplod
triggerall = numexplod(903) >= 1
trigger1 = time = 0
ID = 903

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
; Piercing Punch
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 1

[State 20100, 1]
type = PlaySnd
trigger1 = Time = 1
value = 12, 1

[State 1001, Super B]
type=AfterImage
trigger1 = Time = 0
time = 30
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1300, RUN_FWD]
type = Explod
trigger1 = AnimElem = 2
pos = 25,0
anim = 7085
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 100,Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 8006
anim = 8006
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1000, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = hard
damage    = 80
guardflag = MA
pausetime = 0,30
sparkno = S7003+var(22)
sparkxy = -30,-74
guard.sparkno = S7006
hitsound = S1, 7
guardsound = S6, 0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 6
ground.velocity = 0
air.velocity = -2.5,-4
fall = 1
air.fall= 1

[State 1000, 3]
Type = Velset
trigger1 = AnimElem = 2
x = 15

[State 1000, 4]
Type = VelMul
trigger1 = AnimElem = 3
x = 1.2

[State 1000, 5]
Type = VelMul
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
x = 1.5

[State 1000, 6]
Type = VelMul
trigger1 = AnimElem = 6
x = 1.7

[State 1000,7]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 1000, 8]
Type = VelMul
trigger1 = AnimElem = 7
x = 2

[State 1000, 9]
Type = VelMul
trigger1 = AnimElem = 8
x = 1.1

[State 1000, 10]
type = ChangeState
trigger1 = MoveHit
value = 1001
ctrl = 1

[State 1000, 11]
type = ChangeState
trigger1 = MoveGuarded
value = 0
ctrl = 1

[State 1000, 12]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

; (attack)
[Statedef 1001]
type = S
Movetype = I
Physics = S
Anim = 1001
ctrl = 0

[State 1001, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 6

[State 1001, Super B]
type=AfterImage
trigger1 = Time = 0
time = 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1001,1]
type = PosAdd
trigger1 = animtime = 0
x = 100

[State 1001,2]
type = ChangeState
trigger1 = animtime = 0
value = 1002
ctrl = 1

; (end)
[Statedef 1002]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1001
sprpriority = 8

[State 1002, Explod]
type = Explod
trigger1 = Time = 1
anim = F12
postype = p2
pos = -15, -75

[State 1002, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 1002, 5]
type = ChangeState
trigger1 = time = 70
value = 0
ctrl = 1

[State 1002, 6.1]
Type = Velset
trigger1 = AnimElem = 1
x = 8

[State 1002, afterimage]
type=AfterImage
trigger1 = Time = 0
time = 15
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1002, nothittableanything]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1 

[State 1002, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Fly Slide
[Statedef 1010]
type = s
movetype = i
physics = s
anim = 1010
velset = 0, 0
sprpriority = 1
ctrl = 0

[State 1002, afterimage]
type=AfterImage
trigger1 = Time = 0
time = 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 100,Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 8006
anim = 8006
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3104, 1]
type = VelAdd
trigger1 =1
x =3

[State 20100, 1]
type = PlaySnd
trigger1 = Time = 1
value = 2, 2

[State 3600 , 1]
type = PlaySnd
trigger1 = animelem = 2
value = 3, 0

[State 3600, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 3, 1

[State 3104, 3]
type = ChangeState
trigger1 = p2bodydist x <50
value = 1011
ctrl = 0

; (end)
[Statedef 1011]
type = s
movetype = a
physics = s
anim = 1011
velset = 0, 0
sprpriority = 1
ctrl = 0

[State 240, 0]
type = varadd
trigger1 = Time = 1
value = 1
v = 20

[State 610, 4]
type = PlaySnd
triggerall = var(20) = 2
trigger1 = Time = 2
value = 14, 5

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 4

[State 240, 5]
type = VarSet
trigger1 = var(20) = 4
value = 0
v = 20

[State 200, 1]
type = PlaySnd
trigger1 = Time = 5
value = 15, 7

[State 220, 1]
type = VelSet
trigger1 = Time = [11,31]
x = 2

;[State 220, 1]
;type = VelSet
;trigger1 = Time = [32,36]
;x = 1

[State 220, 1]
type = VelSet
trigger1 = Time = [37,38]
x = 0

[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 630, 2]
type = HitDef
trigger1 = Animelem = 1
attr = S, SA
damage = 10
animtype  = Medium
hitflag = MAF
guardflag = HA
priority = 3
pausetime = 8,12
sparkno = S7001+var(22)
sparkxy = -10,0
hitsound = S1, 0
guardsound = S6, 0
ground.type=High
ground.slidetime = 13
ground.hittime = 13
ground.velocity = -6
air.type=Low
air.hittime = 12
air.velocity = -5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 2
getpower=0

[State 630, 2]
type = HitDef
trigger1 = Animelem = 3
attr = S, SA
damage = 13
animtype  = Medium
hitflag = MAF
guardflag = HA
priority = 3
pausetime = 8,12
sparkno = S7001+var(22)
sparkxy = -10,2
hitsound = S1, 0
guardsound = S6, 0
ground.type=High
ground.slidetime = 13
ground.hittime = 13
ground.velocity=-6
air.type=Low
air.hittime = 12
air.velocity = -5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 2
getpower=0

[State 630, 2]
type = HitDef
trigger1 = Animelem = 4
attr = S, SA
damage = 13
animtype  = Medium
hitflag = HA
guardflag = MAF
priority = 3
pausetime = 8,12
sparkno = S7001+var(22)
sparkxy = -10,-40
hitsound = S1, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 13
ground.hittime = 13
ground.velocity=-6
air.type=Low
air.hittime = 12
air.velocity= -5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 2
getpower=0

[State 630, 2]
type = HitDef
trigger1 = Animelem = 5
attr = S, SA
damage = 20
animtype  = Hard
hitflag = HA
guardflag = MAF
priority = 3
pausetime = 13,13
sparkno = S7001+var(22)
sparkxy = -10,-70
hitsound = S1, 0
guardsound = S6, 0
ground.type = High
ground.slidetime = 3
ground.hittime  = 3
ground.velocity = -3, -3
air.velocity = -7,-6
air.fall = 1
fall = 1
fall.recover = 0

[State 610, 4]
type = PlaySnd
trigger1 = movehit
triggerall = HitCount > 2
triggerall = AnimTime = 0
value = 14, 6

[State 600, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------------------
; Fly Ball
[Statedef 1020]
type    = S
movetype= A
physics = S
velset = 2,0
ctrl = 0
anim = 1020
poweradd = 100

[State 2000, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 1

[State 1020, ChangeState]
Type = ChangeState
trigger1 = AnimElem=2
value = 1021
ctrl = 1

[Statedef 1021]
type    = S
movetype= A
physics = N
velset = 11,0
anim = 1021
ctrl = 0

[State 2051,0]
Type=PlaySnd
Trigger1 = Anim=1021&&AnimElem = 1
Value = 5, 3

[State 2050, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 25
trans = add1
palbright = 0,0,0
palcontrast = 128,128,128
PalAdd=0,0,0
PalMul=1,1,1
length = 20
timegap = 1

[State 2051, 6]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
animtype  = diagup
damage    = 80
getpower = 10
priority  = 6
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = S7002+var(22)
sparkxy = -10,-50
hitsound = S1, 5
guardsound = S6, 0
ground.type = High
ground.slidetime = 24
ground.hittime  = 30
ground.velocity = -5,-3
air.velocity = -5,-3
air.fall = 1
fall = 1

[State 250, 3]
type = Explod
trigger1 = MoveHit
anim = 7009+var(22)
ID = 7009
pos = 160,220
postype = back
bindtime = 12
supermove = 0
persistent = 0
sprpriority = 1
removeongethit = 0

[State 1002, T]
type = EnvShake
trigger1 = Movehit
freq = 50
ampl = 5
time = 30
persistent = 1
ignorehitpause = 1

[State 1021, ChangeState]
Type = ChangeState
trigger1 = movecontact
value = 1022

[State 1021, ChangeState]
Type = ChangeState
trigger1 = time = 25
trigger2 = FrontEdgeBodyDist < 5
value = 1023
ctrl = 1

[Statedef 1022]
type    = A
movetype= A
physics = N
ctrl = 0

[State 1021, VelSet]
Type = VelSet
trigger1 = time = 0
x = -(vel x/2.0)
y = -6

[State 1021, Gravity]
Type = Gravity
trigger1 = 1

[State 1021, ChangeState]
Type = ChangeState
trigger1 = pos y > -1
trigger1 = time > 0
value = 1023

[Statedef 1023]
type    = C
movetype= A
physics = C
velset = 0,0
ctrl = 0
anim = 1023

[State 1020, PosSet]
Type = PosSet
trigger1 = time = 0
y = 0

[State 1020, ChangeState]
Type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------------------
; Fly Ball (air)
[Statedef 1024]
type    = A
movetype= A
physics = A
velset = 2,0
ctrl = 0
anim = 1020
poweradd = 100

[State 1024, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 1

[State 1024, ChangeState]
Type = ChangeState
trigger1 = AnimElem=2
value = 10241
ctrl = 1

; (start)
[Statedef 10241]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 1021
ctrl = 0
poweradd = 0

[State 10241, 1]
type = PlaySnd
trigger1 = Anim = 1021 && AnimElem = 4
value = 5, 3

[State 10241, 2]
type = VelSet
trigger1 = 1
x = 13
y = 6

[State 10241, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 25
trans = add1
palbright = 0,0,0
palcontrast = 128,128,128
PalAdd=0,0,0
PalMul=1,1,1
length = 20
timegap = 1

[State 10241, 6]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
animtype  = diagup
damage    = 85
getpower = 10
priority  = 6
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = S7002+var(22)
sparkxy = -10,-50
hitsound = S1, 5
guardsound = S6, 0
ground.type = High
ground.slidetime = 24
ground.hittime  = 30
ground.velocity = -5,-3
air.velocity = -5,-3
air.fall = 1
fall = 1

[State 10241, 3]
type = Explod
trigger1 = MoveHit
anim = 7009+var(22)
ID = 7009
pos = 160,220
postype = back
bindtime = 12
supermove = 0
persistent = 0
sprpriority = 1
removeongethit = 0

[State 10241, envshake]
type = EnvShake
trigger1 = Movehit
freq = 50
ampl = 5
time = 30
persistent = 1
ignorehitpause = 1

[State 10241, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 1022

[State 10241, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = FrontEdgeBodyDist < 5
value = 1023
ctrl = 1

;---------------------------------------
; Hit by
[Statedef 1025] ; Ver State 2202 para mais detalhes
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 5070

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1026

;---------------------------------------
; (a custom gethit state)
[Statedef 1026]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = VelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing*10
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

;------------------
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

[State 1027, Tremer a tela]
type = EnvShake
Trigger1 = Time = 0
time = 15
ampl = -3
freq = 90
phase = 90

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 5030

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;------------------
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

;------------------------------------------------
; SoundSpeed Punch
[Statedef 1030]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 1030
ctrl = 0
sprpriority = 2

[State 1030, woosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 5

[State 1030, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 15
trans = add1
palbright = 0,0,0
palcontrast = 128,128,128
PalAdd=0,0,0
PalMul=1,1,1
length = 20
timegap = 1

[State 1030, 1]
type = AfterImageTime
trigger1 = Time >= 0
time = 15

[State 1030, 2]
type = PlaySnd
trigger1 = Time =0
value = 13, 0

[State 1030, 3]
type = VelSet
trigger1 = time >= 0
x = -20

[State 1030, 4]
type = VelSet
trigger1 = time >= 10
x = 0

[State 1030, 5]
type = ChangeState
trigger1 = AnimTime>=10
value = 0
ctrl = 1

[State 1030, 6]
type = ChangeState
trigger1 = BackEdgeDist <= 20
value = 1031
ctrl = 1

;----------------------------------------
; (p1 state)
[Statedef 1031]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 1031

[State 1031, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 8006
anim = 8006
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1031, 5]
type = turn
trigger1 = 1
persistent = 0

[State 1031, 5]
type = VelSet
trigger1 = 1
x = 7

[State 1031, 5]
type = PosAdd
trigger1 = time = 0
x = (P2Dist X) - 400

[State 1031, 5]
type = ChangeAnim
trigger1 = movecontact
value = 1034

[State 1031, 6]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Hard
damage    = 65
priority  = 6
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkxy = -10,-76
sparkno = S7002+var(22)
hitsound = S1, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 24
ground.hittime  = 30
ground.velocity = 10,0
air.velocity = -4,-3
p2facing = 1
air.fall = 1
kill = !var(58) || 1*p2stateno=003

[State 1031, 8]
type = ChangeState
trigger1 = time >= 20
trigger2 = movecontact && animtime = 0
value = 0
ctrl = 1

;-------------------------------
; (combo)
[State 1031, C.Fr]
type = ChangeState
trigger1 = command = "a"
trigger1 = movehit
trigger1 = P2BodyDist X <= 15;10
value = 230
ctrl = 1
[State 2001, S.Fr]
type = ChangeState
trigger1 = command = "x"
trigger1 = movehit
trigger1 = P2BodyDist X <= 15;10
value = 200
ctrl = 1

;------------------------------------------------------------
; SoundSpeed Punch (air)
[Statedef 1032]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 1032
ctrl = 0
sprpriority = 2

[State 1032, woosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 5

[State 1032, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 15
trans = add1
palbright = 0,0,0
palcontrast = 128,128,128
PalAdd=0,0,0
PalMul=1,1,1
length = 20
timegap = 1

[State 1032, 5]
type = AfterImageTime
trigger1 = Time >= 0
time = 15

[State 1032, 1]
type = PlaySnd
trigger1 = Time = 0
value = 13, 0

[State 1032, 5]
type = VelSet
trigger1 = time >= 0
x = -20

[State 1032, 8]
type = ChangeState
trigger1 = BackEdgeDist <= 20
value = 1033
ctrl = 1

;-----------------------------------
; (p1 state)
[Statedef 1033]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 120
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 1033

[State 1033, 5]
type = turn
trigger1 = 1
persistent = 0

[State 1033, 5]
type = VelSet
trigger1 = 1
x = 7
y = 6

[State 1033, 5]
type = PosAdd
trigger1 = time = 0
x = (P2Dist X) - 400

[State 1033, 5]
type = ChangeAnim
trigger1 = movecontact
value = 1035

[State 1033, 6]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
animtype  = Hard
damage    = 70
priority  = 6
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkxy = -10,-25
sparkno = S7004+var(22)
hitsound = S1, 0
guardsound = S6, 0
ground.type = Low
ground.slidetime = 24
ground.hittime  = 30
ground.velocity = -10,0
air.velocity = -4,-3
p2facing = 1
air.fall = 1
kill = !var(58) || 1*p2stateno=003

[State 1033, 8]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = movecontact && animtime = 0 && Pos Y >= 0
value = 0
ctrl = 1

;------------------------------------------------
; SoundSpeed Kick
[Statedef 1040]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 1040
ctrl = 0
sprpriority = 2

[State 1040, woosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 5

[State 1040, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 15
trans = add1
palbright = 0,0,0
palcontrast = 128,128,128
PalAdd=0,0,0
PalMul=1,1,1
length = 20
timegap = 1

[State 1040, 5]
type = AfterImageTime
trigger1 = Time >= 0
time = 15

[State 1040, 1]
type = PlaySnd
trigger1 = Time =0
value = 13, 0

[State 1040, 5]
type = VelSet
trigger1 = time >= 0
x = -20

[State 1040, 5]
type = VelSet
trigger1 = time >= 10
x = 0

[State 1040, 8]
type = ChangeState
trigger1 = AnimTime>=10
value = 0
ctrl = 1

[State 1040, 8]
type = ChangeState
trigger1 = BackEdgeDist <= 20
value = 1041
ctrl = 1

;----------------------------------------
; (p1 state)
[Statedef 1041]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 1041

[State 1041, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 8006
anim = 8006
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1041, 5]
type = turn
trigger1 = 1
persistent = 0

[State 1041, 5]
type = VelSet
trigger1 = 1
x = 8

[State 1041, 5]
type = PosAdd
trigger1 = time = 0
x = (P2Dist X) - 400

[State 1041, 5]
type = ChangeAnim
trigger1 = movecontact
value = 1044

[State 1041, 6]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Hard
damage    = 70
priority  = 6
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkxy = -10,-60
sparkno = S7001+var(22)
hitsound = S1, 5
guardsound = S6, 0
ground.type = Low
ground.slidetime = 24
ground.hittime  = 30
ground.velocity = -4,0
air.velocity = -4,-3
p2facing = 1
air.fall = 1
kill = !var(58) || 1*p2stateno=003
fall = 1

[State 1041, 8]
type = ChangeState
trigger1 = time >= 20
trigger2 = movecontact && animtime = 0
value = 0
ctrl = 1

;----------
; (combo)
[State 1031, C.Fr]
type = ChangeState
trigger1 = command = "a"
trigger1 = movehit
trigger1 = P2BodyDist X <= 15;10
value = 230
ctrl = 1
[State 2001, S.Fr]
type = ChangeState
trigger1 = command = "x"
trigger1 = movehit
trigger1 = P2BodyDist X <= 15;10
value = 200
ctrl = 1

;-------------------------------------------------------
; SoundSpeed Kick (air)
[Statedef 1042]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 1042
ctrl = 0
sprpriority = 2

[State 1042, woosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 5

[State 1042, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 15
trans = add1
palbright = 0,0,0
palcontrast = 128,128,128
PalAdd=0,0,0
PalMul=1,1,1
length = 20
timegap = 1

[State 1042, 5]
type = AfterImageTime
trigger1 = Time >= 0
time = 15

[State 1042, 1]
type = PlaySnd
trigger1 = Time = 0
value = 13, 0

[State 1042, 5]
type = VelSet
trigger1 = time >= 0
x = -20

[State 1042, 8]
type = ChangeState
trigger1 = BackEdgeDist <= 20
value = 1043
ctrl = 1

;-----------------------------------
; (p1 state)
[Statedef 1043]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 120
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 1043

[State 1043, 5]
type = turn
trigger1 = 1
persistent = 0

[State 1043, 5]
type = VelSet
trigger1 = 1
x = 8
y = 6

[State 1043, 5]
type = PosAdd
trigger1 = time = 0
x = (P2Dist X) - 400

[State 1043, 5]
type = ChangeAnim
trigger1 = movecontact
value = 1045

[State 1043, 6]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
animtype  = Hard
damage    = 75
priority  = 6
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkxy = -10,-29
sparkno = S7001+var(22)
hitsound = S1, 5
guardsound = S6, 0
ground.type = Low
ground.slidetime = 24
ground.hittime  = 30
ground.velocity = -4,0
air.velocity = -4,-3
p2facing = 1
air.fall = 1
kill = !var(58) || 1*p2stateno=003
fall = 1

[State 1043, 8]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = movecontact && animtime = 0 && Pos Y >= 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Fly Kick 1
[Statedef 1050]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1050
ctrl = 0
sprpriority = 2

[State 1050, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 1050, 2]
type = null;PosAdd
trigger1 = AnimElem = 2
x = 15

[State 1050, 3]
type = PosAdd
trigger1 = AnimElem = 4
x = 20

[State 1050, 4]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Medium
damage    = 60
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = -10,-70
hitsound = S1, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3.5,-7
guard.velocity = -7
air.velocity = -3.5,-7
fall = 1

[State 1050, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1051

;------------------

[Statedef 1051]
type    = A
movetype= A
physics = N
velset = 2,-6
anim = 1051
HitDefpersist = 1 ;Keep the HitDef from previous state active

[State 1051, 1] ;Gravity
type = VelAdd
trigger1 = 1
y = .45

[State 1051, 2]
type = ChangeState
trigger1 = Command = "a" || Command = "b"
trigger1 = Vel y < -1
value = 1055

[State 1051, 3] ;Change state when KFM is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -10
value = 1052

;------------------------------
[Statedef 1052]
type    = S
movetype= I
physics = S
anim = 1052
sprpriority = 1
velset = 0,0

[State 1052, 1] ;Reset y-position to ground level
type = PosSet
trigger1 = Time = 0
y = 0

[State 1052, 2] ;Play a sound for landing
type = PlaySnd
trigger1 = Time = 0
value = 2, 2

[State 1052, 3] ;Give KFM back control early
type = CtrlSet
trigger1 = AnimElem = 3, -1
value = 1

[State 1052, 4] ;Move KFM back a little
type = PosAdd
trigger1 = AnimElem = 4
x = -15

[State 1052, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------
[Statedef 1055]
type    = A
movetype= A
physics = N
anim = 1055

[State 1055, 1]
type = PlaySnd
trigger1 = Time = 0
value = 12, 4
channel = 0

[State 1055, 2]
type = PlaySnd
trigger1 = Time = 0
value = 0, 2

[State 1055, 3]
type = PosAdd
trigger1 = Time = 0
x = 10
y = -10

[State 1055, 4] ;Gravity
type = VelAdd
trigger1 = 1
y = .45

[State 1055, 5]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Med
damage    = 30 + (prevstateno = 1061)*5, 2
priority  = 4
guardflag = MA
pausetime = 12,12
sparkxy = 0,-90
hitsound = S1, 3
guardsound = S6, 0
ground.type = High
ground.slidetime = 15
ground.hittime  = 16
ground.velocity = -6
guard.velocity = -8
guard.ctrltime = 12
air.velocity = -4,-5
airguard.velocity = -4,-4.5
air.fall = 1

[State 1055, 6] ;Change state when KFM is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -5
value = 1056

;------------------
; (land)
[Statedef 1056]
type    = S
movetype= I
physics = S
anim = 1056
sprpriority = 1
velset = 0,0

[State 1056, 1] ;Reset y-position to ground level
type = PosSet
trigger1 = Time = 0
y = 0

[State 1056, 2] ;Play a sound for landing
type = PlaySnd
trigger1 = Time = 0
value = 2, 2

[State 1056, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Fly Kick 2
[Statedef 1060]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 1060
ctrl = 0
sprpriority = 2

[State 1060, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 1060, 2]
type = PosAdd
trigger1 = AnimElem = 2
x = 6

[State 1060, 3]
type = PosAdd
trigger1 = AnimElem = 4
x = 21

[State 1060, 4]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype  = Medium
damage    = 70
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = -10,-70
hitsound = S1, 2
guardsound = S6, 0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3.5,-7.5
guard.velocity = -7
air.velocity = -3.5,-7.5
fall = 1

[State 1060, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1061

;------------------
; (jump)
[Statedef 1061]
type    = A
movetype= A
physics = N
velset = 2.5,-7.5
anim = 1061
HitDefpersist = 1 ;Keep the HitDef from previous state active

[State 1061, 1]
type = VelAdd
trigger1 = 1
y = .45

[State 1061, 2]
type = ChangeState
trigger1 = Command = "a" || Command = "b"
trigger1 = Vel y < -1
value = 1055

[State 1061, 3]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -10
value = 1052

;--------------------------------------------------------------------------
; Fly Kick 1 (air)
[Statedef 1070]
type    = A
movetype= A
physics = s
juggle  = 4
poweradd= 65
anim = 1070
ctrl = 0
sprpriority = 2

[State 1071,7]
type = ChangeState
trigger1 =  time = 10
ctrl = 0
value = 1071

[Statedef 1071]
type    = A
movetype= A
physics = s
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2

[State 1071,1]
type = ChangeAnim
trigger1 = time = 1
value = 1070

[State 1071, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 1071, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 50
guardflag = HA
priority = 4
fall=1
pausetime = 12,12
sparkno = S7001+var(22)
sparkxy = -10,1
hitsound = S1, 5
guardsound = S6, 0
animtype = heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = -10,-10
fall = 1

[State 1071, 4]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 700, 5]
type = VelSet
trigger1 = Time = 1
x = 0
y = 20

[State 701,6]
type = ChangeAnim
trigger1 = animtime = 0
value = 1070

[State 701,envshake]
type = EnvShake
trigger1 = pos y > -4
time = 10
ampl= 5

[State 701,7]
type = ChangeState
trigger1 =  pos y > -10
ctrl = 0
value = 52

;--------------------------------------------------------------------------
; Fly Kick 2 (air)
[Statedef 1080]
type    = A
movetype= A
physics = s
juggle  = 4
poweradd= 65
anim = 1080
ctrl = 0
sprpriority = 2

[State 1080]
type = SuperPause
trigger1 = time = 1
movetime = 3
time = 3

[State 701,7]
type = ChangeState
trigger1 = time = 29
ctrl = 0
value = 701

[Statedef 1081]
type    = A
movetype= A
physics = s
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2

[State 1081,1]
type = ChangeAnim
trigger1 = time = 1
value = 700

[State 1081, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 1081, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 70
guardflag = HA
priority = 4
fall=1
pausetime = 12,12
sparkno = 1
sparkxy = -10,-40
hitsound = S1, 5
guardsound = S6, 0
animtype = heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = -10,-10

[State 1081, 4]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 1081, 5]
type = VelSet
trigger1 = Time = 1
x = 0
y = 20

[State 1081,6]
type = ChangeAnim
trigger1 = animtime = 0
value = 700

[State 1081,envshake]
type = EnvShake
trigger1 = pos y > -4
time = 10
ampl= 5

[State 1081,7]
type = ChangeState
trigger1 =  pos y > -10
ctrl = 0
value = 45

;---------------------------------------------------------------------------
; Fly Kick 3 (air)
[Statedef 1090]
type    = A
movetype= A
physics = S
juggle  = 4
poweradd= 65
velset = 0,0
ctrl = 0
anim = 1090
sprpriority = 2

[State 1090, 1]
type = angleset
trigger1 = time = 1
value = 0

[State 1090, 2]
type = PosAdd
trigger1 = timemod = 1 , 0
x = -15
y =  0

[State 1090, 3]
type = ChangeState
trigger1 = BackEdgeBodyDist < 1
value = 1091

[Statedef 1091]
type    = A
movetype= A
physics = s
juggle  = 4
poweradd= 65
ctrl = 0
anim=1091
sprpriority = 2

[State 1091, 4]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 1091, 6]
type = ChangeAnim
trigger1 = animtime = 0
value = 1092

[State 1091, 8]
type = angleset
trigger1 = time = 1
value = 0

[State 1091, AssertSpecial]
type = AssertSpecial
trigger1 =  animtime !=0
flag = unguardable

[State 1091, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 70
guardflag = HA
priority = 4
fall=1
pausetime = 12,12
sparkno = S7001+var(22)
sparkxy = -10,28
hitsound = S1, 5
guardsound = S6, 0
animtype = heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = -10,-10

;calcula el angulo
[State 1091 , VarSet]
type =VarSet
trigger1 = time = 16
v = 5
value = (p2dist y)

[State 1091 , VarSet]
type =displaytoclipboard
trigger1 = time = 17
text = "y= %f , x es %f y la relacion es %f"
params = p2dist y, p2dist x, p2dist y/p2dist x

;calcula la hipotenusa
[State 1091 , VarSet]
type =VarSet
trigger1 = time =16
v = 6
value = ((p2dist y*p2dist y) + (p2dist x*p2dist x))**0.5
;atan (p2dist y/p2dist x)

[State 1091, 82]
type = angledraw
trigger1 = time > 16

[State 1091, 91]
type = ChangeAnim
trigger1 = timemod = 4,0
trigger1 = time > 16
value = 1092

[State 1091, 92]
type = PosAdd
trigger1 = timemod = 1,0
trigger1 = time > 16
x = 25 ;x = floor (cos (var(5))*var(6))*10
y = 20 ;y = floor (sin (var(5))*var(6))*10

[State 1091,envshake]
type = EnvShake
trigger1 = pos y > -4
time = 10
ampl= 5

[State 1091,7]
type = ChangeState
trigger1 =  pos y > -5
ctrl = 1
value = 11

;--------------------------------------------------------------------------
; Fly Kicks (air)
[Statedef 1100]
type = A
movetype = A
physics = N
anim = 1100
velset = 0,0
ctrl = 0
poweradd = -1000
facep2 = 1

[State 1100, 1]
type = PlaySnd
trigger1 = Time = 1
value = s12, 0
channel = 1

[State 1100, 2]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 40

[State 1100, 3]
type = Explod
trigger1 = Time = 3
anim = 8110
ID = 8110
pos = 0,-92
postype = P1
sprpriority = -2
supermove = 1
ownpal = 1
removetime = 17
bindtime = -1

[State 1100, 4]
type = Explod
trigger1 = Time = 3
anim = 8100
ID = 8100
pos = 0,-92
postype = P1
sprpriority = 5
supermove = 1
ownpal = 1
removetime = 28
bindtime = -1

[State 1100, 5]
type = SuperPause
trigger1 = Time = 1
movetime = 32
time = 32
anim = -1

[State 1100, 6]
type = PlaySnd
trigger1 = Time = 3
value = s600,10

[State 1100, 7]
type = PlaySnd
trigger1 = AnimElem = 3
value = s100,20
channel = 1

[State 1100, 8]
type = VelSet
trigger1 = AnimElem = 3
X = 6
Y = 6

[State 1100, 9]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = P2BodyDist X < 40
attr = A, HA
damage = 30,6
getpower = 0
animtype =Heavy
guardflag = M
hitflag = MAF
pausetime = 0,0
p1stateno = 1110
sparkno = S7002+var(22)
sparkxy = -10, -30
hitsound = S1, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0,-4
air.velocity = 0,-4
guard.velocity = -13
fall = 0
air.fall = 1
fall.recover = 0

[State 1100, 10]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1120

;
[Statedef 1110]
type = A
movetype = A
physics = N
anim = 1110
velset = 0,0

[State 1100, 2]
type = PlaySnd
trigger1 = AnimElem = 34
value = s100,40
channel = 1

[State 1110, 0]
type = AssertSpecial
trigger1 = Time >= 0
flag = noautoturn

[State 1110, 1]
type = PosAdd
trigger1 = Time = [1,20]
Y = -1.5

[State 1100, 8]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 7
attr = A, HA
damage = 16
getpower = 0
animtype =Heavy
guardflag = M
hitflag = MAF
pausetime = 0,1
sparkno = S7004+var(22)
guard.sparkno = S7006
sparkxy = -10, 17
hitsound = S1, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0,-3.5
air.velocity = 0,-3.5
hitonce = 0
fall = 1
air.fall = 1
fall.recover = 0

[State 1100, 8]
type = HitDef
trigger1 = AnimElem = 9
attr = A, HA
damage = 40
getpower = 0
animtype = UP
guardflag = M
hitflag = MAF
pausetime = 26,26
sparkno = S7001+var(22)
sparkxy = -10, 4
hitsound = S1, 2
guardsound = S6, 0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,-4
air.velocity = -5,-4
hitonce = 1
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 15

[State 1110, 2]
type = VelAdd
trigger1 = Time > 88
Y = 0.5

[State 1110, 9]
type = ChangeState
trigger1 = Time > 10
trigger1 = Pos Y >= 0
value = 1130

;
[Statedef 1120]
type = C
movetype = I
physics = C
anim = 1120
velset = 0,0
ctrl = 0

[State 1120, 1]
type = PosSet
trigger1 = Time = 0
Y = 0

[State 1120, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;
[Statedef 1130]
type = C
movetype = I
physics = C
anim = 1130
velset = 0,0

[State 1130, 1]
type = PosSet
trigger1 = Time = 0
Y = 0

[State 1130, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Dead End Fly 1
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3001

[State 3000, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 0
ID = 2

[State 3000, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 3000]
type = SuperPause
trigger1 = AnimElem = 1
anim = s7008+var(22)
sound = s9, 1
pos = 0,-58
time = 45
darken = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S13, 0

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 1

[State 3000, RUN_FWD]
type = Explod
trigger1 = AnimElem = 3
pos = 0,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 3000, RUN_FWD]
type = AfterImage
trigger1 = AnimElem = 3
time = 13
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 3000, Explod]
type = Explod
triggerall = Time > 10
trigger1 = (!time)
ID = 8006
anim = 8006
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.5,0.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3000, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 2, 1

[State 3000, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 3, 0

[State 3000, 1]
type = PlaySnd
trigger1 = animelem = 8
value = 3, 1

[State 3000, 1]
type = VelSet
trigger1 = AnimElem = 3, > 0
x = 20

[State 3000, 2]
type = VelAdd
trigger1 = AnimElem = 6, >= 0
x = -8

[State 3000, 3]
type = NotHitBy
trigger1 = Animelem <= 3
value = SCA

[State 3000, Hit]
type = HitDef
trigger1 = Time >= 11
trigger2 = Time <= 15
;trigger1 = p2movetype != A
attr = S, HA
animtype  = Light
guardflag = MA
hitflag = M
pausetime = 0,0
sparkno = -1
;sparkxy = -10,-70
;hitsound = S1, 3
;guardsound = 6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = 0,0
snap = 50, 0
numhits = 1

[State 3000, 4]
type = ChangeState
trigger1 = Movecontact = 1
value = 3001
ctrl = 1

[State 3000, 5] ; Caso n縊 acerte o P2, voltar a anima鈬o Stand.
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; (attack)
[Statedef 3001]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 2

[State 3001, snd]
type = PlaySnd
trigger1 = animelem = 1
value = 13, 8

[State 3001, ex]
type = Explod
trigger1 = time = 0
anim = 8071
ID = 8071
pos = 0, 0
postype = back
sprpriority = -5
removetime = 80
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3001, ex]
type = Explod
trigger1 = time = 0
anim = 6001
ID = 6001
pos = 0,0
removetime = 80
sprpriority = -1
scale = 1,1
postype = back
bindtime = -1
removeongethit = 1

[State 3001, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(16) < 0
value = 5,0

[State 3001, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 3

[State 3001, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 3

[State 3001, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3001, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3001, Super D]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, AT
time = 6

[State 3001, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 2

[State 3001, 2]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype  = Up               ;Make p2 use "Up" type animation on hit
damage    = 200,20
getpower  = 0
priority  = 5
guardflag = MA
pausetime = 30,30
sparkno = S7003+var(22)
sparkxy = -10,-80
hitsound = S1, 6
guardsound = S6, 0
ground.type = Low
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -1.3,-25
guard.velocity = -11
air.velocity = -1.3,-25
airguard.velocity = -4.5,-5
envshake.time = 25           ;Parameters for shaking the screen on hit
envshake.ampl = 7
envshake.freq = 176
p2facing = 1                 ;Force p2 to face p1 on hit
fall = 1
fall.recover = 0             ;Prevent p2 from recovering
fall.damage = 70             ;p2 will take 70 damage on hitting the ground
fall.envshake.ampl = 6       ;Parameters for shaking the screen on fall
fall.envshake.freq = 178
fall.envshake.time = 15
mindist = 50,-100            ;Keep p2 a minimum of 50 pixels away from p1, and no higher than 100 pixels up
maxdist = 100,-10            ;Keep p2 a maximum of 100 pixels away from p1, and no lower than 10 pixels below
yaccel = .8                  ;Accelerate

[State 3001, 3]
type = Explod
trigger1 = MoveHit
anim = 7009+var(22)
ID = 7009
pos = 50,-80
postype = p1
bindtime = 12
supermove = 0
persistent = 0
sprpriority = -1
removeongethit = 0

[State 3001, 4]
type = ChangeState
trigger1 = MoveHit
value = 3002

[State 3001, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
;  (end)
[Statedef 3002]
type    = S
movetype= A
physics = S
anim = 3002

[State 3002, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
ID = 6001

[State 3002, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
ID = 8071

[State 3002, 1]
type = AfterImageTime
trigger1 = AnimTime < -2
time = 2

[State 3002, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; Dead End Fly 2
[Statedef 3100]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 3100
poweradd = -2000

[State 3100, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 0
ID = 2

[State 3100, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 3100]
type = SuperPause
trigger1 = AnimElem = 1
anim = s7008+var(22)
sound = s9, 1
pos = 0,-58
time = 45
darken = 1

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S13, 0

[State 3100]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1

[State 3100]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 3100, end]
type = ChangeState
trigger1 = animtime = 0
value = 3101

;-------------------------------------------------------------------------
; (p1 state)
[Statedef 3101]
type = S
movetype = A
physics =  S
ctrl = 0
anim = 3101
juggle = 1

[State 3101, ex]
type = Explod
trigger1 = time = 0
anim = 8071
ID = 8071
pos = 0, 0
postype = back
sprpriority = -5
removetime = 80
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3101, ex]
type = Explod
trigger1 = time = 0
anim = 6001
ID = 6001
pos = 0,0
removetime = 80
sprpriority = -1
scale = 1,1
postype = back
bindtime = -1
removeongethit = 1

;[State 3101, AssertSpecial]
;type = AssertSpecial
;trigger1 = 1
;flag = noBG
;flag2 = noFG
;flag3 = nojugglecheck
;ignorehitpause = 15

[State 3101]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1

[State 3101]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 3101, hit2]
type = HitDef
trigger1 = animelem= 4
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = heavy
air.animtype = heavy
fall.animtype = Back
damage = 200,40
pausetime = 50,50
sparkno = S7003+var(22)
sparkxy = -20,-70
hitsound = S1, 6
guardsound = S6, 0
ground.slidetime = 50
ground.hittime = 50
ground.hittime = 50
ground.velocity = -2,-3
air.velocity = -6,-3
getpower = 0,0
givepower = 0,0
palfx.time = 50
Kill=1
Fall=1
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = animelem =2
value = S0,2
channel = -1

[State 3100, VelSet]
type = VelSet
trigger1 = animtime = 0
x = 2
y = Const(velocity.jump.y)

[State 3100, end]
type = ChangeState
trigger1 = animtime = 0
value = 3102

;-------------------------------------------------------------------------

[Statedef 3102]
type = S
movetype = A
physics =  A
ctrl = 0
anim = 3102
juggle = 12

[State 3101, ex]
type = Explod
trigger1 = time = 0
anim = 8071
ID = 8071
pos = 0, 0
postype = back
sprpriority = -5
removetime = 80
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3101, ex]
type = Explod
trigger1 = time = 0
anim = 6001
ID = 6001
pos = 0,0
removetime = 80
sprpriority = -1
scale = 1,1
postype = back
bindtime = -1
removeongethit = 1

;[State 3102, AssertSpecial]
;type = AssertSpecial
;trigger1 = 1
;flag = noBG
;flag2 = noFG
;flag3 = nojugglecheck
;ignorehitpause = 1

[State 3102]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1

[State 3102]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = animelem =1
value = 2, 0
channel = -1

[State 3102, ex]
type = Explod
trigger1 = animelem = 1
anim = 7082
pos = 0, 0
postype = p1
sprpriority = -5
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime =1
persistent = 0
removeongethit = 1
supermove = 1

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = S0,2
channel = -1

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S13, 8
channel = -1

[State 3102, TargetBind]
type = TargetBind
trigger1 = animelem =4
id = -1
pos = 0,0

[State 3102, hit2]
type = HitDef
trigger1 = animelem= 4
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = heavy
air.animtype = heavy
fall.animtype = Back
damage = 200,40
pausetime =50,50
sparkno = S7003+var(22)
sparkxy = -20,-70
hitsound = S1, 6
guardsound = S6, 0
ground.slidetime = 4
ground.hittime = 15
ground.velocity = -9,-8
air.velocity = -6,-8
getpower = 0,0
givepower = 0,0
palfx.time = 50
Kill = 1
p2stateno = 3120
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

[State 3102, RemoveExplod]
type = RemoveExplod
trigger1 = animtime = 0
ID = 6001

[State 3102, RemoveExplod]
type = RemoveExplod
trigger1 = animtime = 0
ID = 8071

;-------------------------------------------------------------------------------
; (p2 state)
[Statedef 3120]
type    = A
movetype= H
physics = N
velset = 0,0

[State 3120, 相手アニメ変更]
type = ChangeAnim2
trigger1 = 1
value = 3120

[State 3120, ステート変更]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 3121

;---------------------------
[Statedef 3121]
type    = A
movetype= H
physics = N

[State 3121]
type = VelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 3121]
type = VelAdd
trigger1 = 1
y = .45

[State 3121]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 3121]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 3122

[State 3121]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

[Statedef 3122]
type    = A
movetype= H
physics = N

[State 3122]
type = VarSet
trigger1 = time =0
v = 10
value =1

[State 3122]
type = VarSet
trigger1 = time =1
v = 10
value =0

[State 3122, LifeAdd]
type = LifeAdd
trigger1 = time =0
value = -50
kill = 1
absolute = 0
;ignorehitpause =
;persistent =

[State 3122, 振り返る]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 3122, 軸位置移動]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 3122, 位置固定]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 3122, スクロール]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 3122, エフェクト]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor(screenpos y) - 50 ;
postype = back
Scale=.5,.5
sprpriority = 3

[State 3122, 相手アニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 3122

[State 3122, 音を鳴らす]
type = PlaySnd
trigger1 = Time = 0
value = F3,2

[State 3122, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 3123

[Statedef 3123]
type    = A
movetype= H
physics = N

[State 3123]
type = VelSet
trigger1 = Time = 0
y = -6

[State 3123]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 3123]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 3123]
type = VelAdd
trigger1 = 1
y = .35

[State 3123]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 3123]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 3123]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 3123]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 3123]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;--------------------------------------------------------------------------
; Dead End Fly 3
[Statedef 3200]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 3200
poweradd = -3000

[State 3200, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 0
ID = 2

[State 3200, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 3200]
type = SuperPause
trigger1 = AnimElem = 1
anim = s7009+var(22)
sound = s9, 1
pos = 0,-58
time = 194
darken = 1

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S13, 4
channel = 2

[State 3200, PlaySnd]
type = StopSnd
trigger1 = time = 200
channel = 2

[State 3200, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3200, Mouth]
type = Explod
trigger1 = time = 0
anim = 186
ID = 186
pos = -5,42
postype = p1
bindtime = 180
sprpriority = 10
removetime = 180
removeongethit = 1
supermovetime = 180
ignorehitpause = 1
scale = 1,1

[State 3200, VelSet]
type = VelSet
trigger1 = animtime = 0
x = 12
y = Const(velocity.jump.y)/2

[State 3200, end]
type = ChangeState
trigger1 = animtime = 0
value = 3201

;-------------------------------------------------------------------------
[Statedef 3201]
type = S
movetype = A
physics =  A
ctrl = 0
anim = 3102
juggle = 12

[State 3201, ex]
type = Explod
trigger1 = time = 0
anim = 8071
ID = 8071
pos = 0, 0
postype = back
sprpriority = -5
removetime = -1
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3201, ex]
type = Explod
trigger1 = time = 0
anim = 6001
ID = 6001
pos = 0, 0
postype = back
sprpriority = -4
removetime = -1
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3201, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3201, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 3201, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nobardisplay
flag3 = noBG

[State 3201, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = nojugglecheck
ignorehitpause = 1

[State 3201, PlaySnd]
type = PlaySnd
trigger1 = animelem =1
value = 2, 0
channel = -1

[State 3201, PlaySnd]
type = PlaySnd
trigger1 = animelem =3
value = S0, 2
channel = -1

;[State 3201, PlaySnd]
;type = PlaySnd
;trigger1 = time =0
;value = S13, 8
;channel = -1

[State 3201]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1

[State 3201]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 3201, hit2]
type = HitDef
trigger1 = animelem = 4
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = heavy
air.animtype = heavy
fall.animtype = Back
damage = 50,0
sparkno = S7003+var(22)
sparkxy = -20,-70
hitsound = S1, 6
guardsound = S6, 0
ground.slidetime = 4
ground.hittime = 15
ground.velocity = -9,-8
air.velocity = -6,-8
getpower = 0,0
givepower = 0,0
Kill=0
p1stateno = 3202
p2stateno = 3225
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

[State 3201, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 6001

[State 3201, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 8071

;-------------------------------------------------------------------------
; (p1 state 1)
[Statedef 3202]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3202
velset = 0,0
juggle = 12

[State 3202, Pause]
type = SuperPause
trigger1 = time = 0
time = 20
movetime = 0

[State 3202, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 6001

[State 3202, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 8071

[State 3202, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3202, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 3202, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nobardisplay
flag3 = noBG

[State 3202, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = nojugglecheck
ignorehitpause = 1

[State 3202, 0]
type = Width
trigger1 = Time >= 0
edge = 80,80

[State 3202, Explod]
type = Explod
trigger1 = Time = 0
anim = 80051
ID =8005
pos = 0,240
postype =back
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime =54
scale = 1,1
sprpriority =5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 3202, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S13, 7

[State 3202, VelSet]
type = Velset
trigger1 = animelem =1
trigger2 = animelem =2
trigger3 = animelem =3
y = 11

[State 3202, VelSet]
type = Velset
trigger1 = animelem =4
y = 0

[State 3202, PosAdd]
type = Posset
trigger1 = animelem =4
x =enemy, pos x -5

[State 3202]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1

[State 3202]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 3202, ChangeState]
type = ChangeState
trigger1 = time = 50
value = 3203
ctrl = 0

;-------------------------------------------------------------------------

[Statedef 3203]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3203
velset = 0,0
juggle = 12

[State 3203, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3203, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 3203, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nobardisplay
flag3 = noBG

[State 3203, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = nojugglecheck
ignorehitpause = 1

[State 3203, VelSet]
type = Velset
trigger1 = animelem =1
y =-20

[State 3203]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1

[State 3203]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 3203, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause = 1

[State 3203, ChangeState]
type = ChangeState
trigger1 =pos y <= enemy, Const(size.head.pos.y)
value =3204
ctrl = 0

;-------------------------------------------------------------------------

[Statedef 3204]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3204
velset = 0,0

[State 3204, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3204, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 3204, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nobardisplay
flag3 = noBG

[State 3204, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = nojugglecheck
ignorehitpause = 1

[State 3204]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1

[State 3204]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 3204, hit2 ]
type = HitDef
trigger1 = animelem=3
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = heavy
air.animtype = heavy
fall.animtype = Back
damage =80,0
sparkno = S7003+var(22)
sparkxy = -20,-70
hitsound = S1, 6
guardsound = S6, 0
ground.slidetime = 4
ground.hittime = 15
ground.velocity = -9,-8
air.velocity = -6,-8
getpower = 0,0
givepower = 0,0
Kill=0
p1stateno=3205
p2stateno=3226
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

;-------------------------------------------------------------------------
; (p1 state 2)
[Statedef 3205]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
juggle = 12

;[State 3205, Pause]
;type = SuperPause
;trigger1 = time = 0
;time = 20
;movetime = 0

[State 3205, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 6001

[State 3205, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 8071

[State 3205, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3205, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 3205, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nobardisplay
flag3 = noBG

[State 3205, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = nojugglecheck
ignorehitpause = 1

[State 3205, Explod]
type = Explod
trigger1 = Time = 0
anim = 8005
ID = 8005
pos = 0,0
postype =back
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime =54
scale = 1,1
sprpriority =5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 3205, VelSet]
type = Velset
trigger1 = time =0
y = -10

[State 3205, VelSet]
type = Velset
trigger1 = animelem =4
y = 0

[State 3205]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1

[State 3205]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 3205, ChangeState]
type = ChangeState
trigger1 = time = 30
value = 3206
ctrl = 0

;-------------------------------------------------------------------------

[Statedef 3206]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3206
velset = 0,0
juggle = 12

;[State 3206, Pause]
;type = SuperPause
;trigger1 = time = 0
;time = 20
;movetime = 0

[State 3206, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3206, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 3206, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nobardisplay
flag3 = noBG

[State 3206, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = nojugglecheck
ignorehitpause = 1

[State 3206, VelSet]
type = Velset
trigger1 = animelem = 1
y = 20

[State 3206]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1

[State 3206]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 3206, ChangeState]
type = ChangeState
trigger1 =pos y >=200
value = 3207
ctrl = 0

;-------------------------------------------------------------------------

[Statedef 3207]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3207
velset = 0,0

;[State 3207, Pause]
;type = SuperPause
;trigger1 = time = 0
;time = 20
;movetime = 0

[State 3207, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3207, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 3207, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nobardisplay
flag3 = noBG

[State 3207, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = nojugglecheck
ignorehitpause = 1

[State 3207, VelSet]
type = Velset
trigger1 = animelem =1
y = -4

[State 3207, VelSet]
type = VelSet
trigger1 = pos y<=0
y = 0

[State 3207, PosSet]
type = PosSet
trigger1 = pos y <=0
y = 0

[State 3207]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1

[State 3207]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 3207,hit2 ]
type = HitDef
trigger1 = animelem = 1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = heavy
air.animtype = heavy
fall.animtype = Back
damage = 100,0
sparkno = -1
sparkxy = 48,-118
hitsound = S1, 6
guardsound = S6, 0
ground.slidetime = 4
ground.hittime = 15
ground.velocity = -9,-8
air.velocity = -6,-8
getpower = 0,0
givepower = 0,0
Kill=0
p1stateno=3208
p2stateno=3227
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

[State 3207, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S13, 8
channel = -1

;-----------------------------

[Statedef 3208]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3208

;[State 3208, Pause]
;type = SuperPause
;trigger1 = time = 0
;time = 20
;movetime = 0

[State 3208, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3208, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 3208, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nobardisplay
flag3 = noBG

[State 3208, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = nojugglecheck
ignorehitpause = 1

[State 3208, Explod]
type = Explod
trigger1 = Time = 0
anim = 7003+var(22)
ID = 7003
pos = 48,-118
postype =p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority =5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 3208, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3208, TargetState]
type = TargetState
trigger1 = time = 24
value = 3228

[State 3208, 1]
type = SprPriority
trigger1 = Time = [1,33]
value = 2

[State 3208, 1]
type = SprPriority
trigger1 = Time >= 34
value = 5

[State 3208, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 48,-118

[State 3208, 2]
type = TargetBind
trigger1 = AnimElem =2
pos = 69,-83

[State 3208, 2]
type = TargetBind
trigger1 = AnimElem =3
pos = 53,-41

[State 3208, 5]
type = TargetLifeAdd
trigger1 = AnimElem =1
value = -200

[State 3208, HitAdd]
type = HitAdd
trigger1 = animelem =3
value = 1

[State 3208, 5]
type = TargetLifeAdd
trigger1 = AnimElem =3
value = -50

[State 3208, 2]
type = Targetdrop
trigger1 = AnimElem = 4

[State 3208, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 6001

[State 3208, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 8071

[State 3208, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; (p2 state)
[Statedef 3225]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 3225, ChangeAnim2]
type = ChangeAnim2
trigger1 = time =0
value = 3225

[State 3225, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 3225, VarSet]
type = VarSet
trigger1 = command = "c"
v = 10
value = 1

[State 3225, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic

[State 3225, VelSet]
type = Velset
trigger1 = animelem = 4
y = -6

[State 3225, VelSet]
type = Velset
trigger1 = animelem = 5
y = 0

[State 3225, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause = 1

;[State 3225, SelfState]
;type = SelfState
;trigger1 = animtime = 0
;trigger1 = var(10) = 1
;trigger1 = name = "shura"
;value = 2000

;-------------------------------------------------------------------------

[Statedef 3226]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 3226, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 3226, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3226

[State 3226, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic

[State 3226, VelSet]
type = Velset
trigger1 = animelem =4
y = 3

[State 3226, VelSet]
type = Velset
trigger1 = animelem =7
y =0

[State 3226, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause = 1

;-------------------------------------------------------------------------

[Statedef 3227]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 3227, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 3227, ChangeAnim2]
type = ChangeAnim2
trigger1 = time =0
value = 3227

[State 3227, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic

[State 3227, VelSet]
type = Velset
trigger1 = animelem =4
y = 3

[State 3227, VelSet]
type = Velset
trigger1 = animelem =7
y = 0

[State 3227, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause = 1

;-------------------------------------------------------------------------

[Statedef 3228]
type = S
movetype =H
physics = N
ctrl = 0
velset = 0,0

[State 3228, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 3228, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value =3228

[State 3228, PosAdd]
type = PosAdd
trigger1 = animelem = 4
x = -53
y = 41

[State 3228, VelSet]
type = Velset
trigger1 = animelem = 5
y = -6

[State 3228, SelfState]
type = SelfState
trigger1 =animtime = 0
value =5050

;---------------------------------------------------------------------------
; SoundSpeed Combo
[Statedef 3300]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1500
ctrl = 0
anim = 3300

[State 3300]
type = SuperPause
trigger1 = AnimElem = 1
anim = s7008+var(22)
sound = s9, 1
pos = 0,-58
time = 136
movetime = 136
darken = 1

;[State 3300, Escurer]
;type = BgPalFx
;trigger1 = AnimElem = 1
;add = 0,0,0
;sinadd = -255,-255,-255,100
;time = 40

[State 3300, Mouth]
type = Explod
trigger1 = time = 1
anim = 186
ID = 186
pos = 4,56
postype = p1
bindtime = 120
sprpriority = 10
removetime = 120
removeongethit = 1
supermovetime = 120
ignorehitpause = 1
scale = 1,1

[State 3300, 1]
type = PlaySnd
trigger1 = Animelem = 1
value = s13, 6

[State 3300, 2]
type = PlaySnd
trigger1 = Animelem = 2
value = s13, 0

[State 3300, 3]
type = ChangeState
trigger1 = Animelem = 14
value = 3301
ctrl = 1

;-----------------------------
; (run)
[Statedef 3301]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 10
ctrl = 0
velset = 0,0
anim = 3301

[State 3301, RUN_FWD]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 3301, RUN_FWD]
type = AfterImage
trigger1 = AnimElem = 1
time = 13
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 3301, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 8006
anim = 8006
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.8,0.8
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3301, 1]
type = VelAdd
trigger1 = 1
x = 3

[State 3000, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 2, 1

[State 3301, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 3, 0

[State 3301, 1]
type = PlaySnd
trigger1 = animelem = 8
value = 3, 1

;[State 3301, 3]
;type = ChangeState
;trigger1 = p2bodydist x < 30
;value = 3302
;ctrl = 0

[State 3301, Hit]
type = HitDef
trigger1 = Time >= 1
trigger2 = Time <= 4
;trigger1 = p2movetype != A
attr = S, HA
animtype  = Light
guardflag = MA
hitflag = M
pausetime = 0,0
sparkno = -1
;sparkxy = -10,-70
;hitsound = S1, 3
;guardsound = 6, 0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = 0,0
snap = 50, 0
numhits = 1

[State 3301, 4]
type = ChangeState
trigger1 = Movecontact = 1
value = 3302
ctrl = 1

[State 3301, 5] ; Caso n縊 acerte o P2, voltar a anima鈬o Stand.
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
; (attack)
[Statedef 3302]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 0
ctrl = 0
velset = 0,0
anim = 3302

[State 3302, 1]
type = PlaySnd
trigger1 = Animelem = 10
value = s13, 5

[State 3302, 1]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
trigger6 = AnimElem = 12
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
trigger9 = AnimElem = 19
trigger10 = AnimElem = 21
trigger11 = AnimElem = 23
trigger12 = AnimElem = 26
trigger13 = AnimElem = 28
trigger14 = AnimElem = 30
trigger15 = AnimElem = 37
value = 0,0

[State 3302, 1]
type = EnvShake
Trigger1 = animelem = 38
time = 15
ampl = -10;-3
freq = 90
phase = 90

[State 3302, 1]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 16
trigger8 = AnimElem = 18
trigger9 = AnimElem = 20
trigger10 = AnimElem = 22
trigger11 = AnimElem = 24
trigger12 = AnimElem = 27
trigger13 = AnimElem = 29
trigger14 = AnimElem = 31
trigger15 = AnimElem = 34
x = 3

[State 3302, 2]
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 16
trigger8 = AnimElem = 18
trigger9 = AnimElem = 20
trigger10 = AnimElem = 22
trigger11 = AnimElem = 24
trigger12 = AnimElem = 27
trigger13 = AnimElem = 29
trigger14 = AnimElem = 31
trigger15 = AnimElem = 34
x= 0.5

[State 3302, 3]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 16
trigger8 = AnimElem = 18
trigger9 = AnimElem = 20
trigger10 = AnimElem = 22
trigger11 = AnimElem = 24
trigger12 = AnimElem = 27
trigger13 = AnimElem = 29
trigger14 = AnimElem = 31
trigger15 = AnimElem = 34
getpower = 5
attr = S, HA
animtype  = Medium
damage    = 10
guardflag = MA
pausetime = 5,21;11
sparkno = S7004+var(22)
sparkxy = -10,-82
hitsound = S1, 3
guardsound = S6, 0
ground.type = High;Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 0  ;-5,-5
air.velocity = -2.2,-3.2
palfx.time = 5
palfx.add= 100,10,0;106,79,154;150,129,183;61,17,123
palfx.mul= 61,17,123
snap = 50, 0

[State 3302, 4]
type = HitDef
trigger1 = AnimElem = 38
attr = S, NA
animtype  = Hard
damage    = 50
guardflag = MA
pausetime = 5,0;11
sparkno = S7009+var(22)
sparkxy = -50,-70
hitsound = S1, 5
guardsound = S6, 0
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,-7
guard.velocity = -7
air.velocity = -8,-7
airguard.velocity = -5, -4
fall = 1
fall.yvelocity = -2.5
fall.recover = 0

[State 3302, explod]
type = Explod
trigger1 = time = 0
anim = 8071
ID = 8071
pos = 0, 0
postype = back
sprpriority = -5
removetime = 290
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3302, ex1]
type = Explod
trigger1 = time = 20
anim = 6001
ID = 6001
pos = 0,0
removetime = 150
sprpriority = -5
scale = 1,1
postype = back
bindtime = -1
removeongethit = 1
supermove = 1
ignorehitpause = 1

[State 3302, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 6001

[State 3302, RemoveExplod]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 8071

[State 3302, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------
; Infernal Dead End Fly
[Statedef 3400]
type = S
movetype = A
physics = S
anim = 3400
poweradd = -2000
velset = 0,0
juggle = 4
ctrl = 0

[State 3400, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 0
ID = 2

[State 3400, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 3400]
type = PlaySnd
trigger1 = AnimElem = 11
value = 13, 0

[State 3400]
type = SuperPause
trigger1 = AnimElem = 1
anim = s7008+var(22)
sound = s9, 1
pos = 0,-58
time = 45
darken = 1

[State 3400, ex1]
type = Explod
trigger1 = animelem = 4
anim = 6001
ID = 6001
pos = 0,0
removetime = 80
sprpriority = -1
scale = 1,1
postype = back
bindtime = -1
removeongethit = 1
supermove= 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 3400, explod]
type = Explod
trigger1 = animelem = 4
anim = 8071
ID = 8071
pos = 0, 0
postype = back
sprpriority = -5
removetime = 110
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove= 1

[State 3400, 1]
type = VarSet
trigger1 = animelem = 1
v = 15
value = 0

[State 3400, 1]
type = VarSet
trigger1 = movehit
v = 15
value = 1

[State 3400, 1]
type = VelSet
trigger1 = animelem = 6
x = 10

[State 3400, 2]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0, 3

[State 3400, 3]
type = HitDef
trigger1 = animelem = 8
priority = 6
forcestand = 1
attr = s, sp
animtype = Heavy
damage = 200,20
guarDFlag = ma
hitsound = S1, 6
guardsound = S6, 0
pausetime = 0,80
palfx.time = 120
sparkno = S7003+var(22)
sparkxy = -10,-80

[State 3400, 4]
type = PlaySnd
trigger1 = AnimElem = 16
value = 0, 3

[State 3400, 5]
type = HitDef
trigger1 = animelem = 18
forcestand = 1
animtype = Heavy
attr = s, sp
damage = 200,20
guarDFlag = ma
hitsound = S1, 6
guardsound = S6, 0
pausetime = 20,20
palfx.time = 120
sparkno = S7003+var(22)
sparkxy = -50,-80
hitsound = S1, 2
guardsound = S6, 0
ground.type = high
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -8
air.animtype = light
air.velocity = -4,-5
air.juggle = 2
fall = 1

[State 3400, 6]
type = VelSet
trigger1 = animelem = 17
x = 13

[State 3400, 7]
type = PlaySnd
trigger1 = animelem = 4
value = 13, 8

[State 3400, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------
; Dead End Fly (final)
[Statedef 3500]
type    = S
movetype= A
physics = s
juggle  = 4
poweradd= 65
anim = 3500
ctrl = 0
sprpriority = 2

[State 3500]
type = SuperPause
trigger1 = time =1
time = 35
anim = -1
movetime = 35

[State 3500, ex1]
type = Explod
trigger1 = time = 0
anim = 6001
pos = 0,0
removetime = 60
sprpriority = -1
scale = 1,1
postype = back
bindtime = -1
removeongethit = 1
supermove= 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 3500, ex1]
type = Explod
trigger1 = time = 0
anim = 8005
pos = 0,0
removetime = 170
sprpriority = -3
scale = 1,1
postype = back
bindtime = -1
removeongethit = 1
supermove= 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 3500, 2]
type = PlaySnd
trigger1 = Time = 0
value = 13, 7

[State 3500]
type = PosAdd
trigger1 = time =1
x=p2bodydist x
y=p2bodydist y

[State 3500,7]
type = ChangeState
trigger1 =  time = 35
ctrl = 0
value = 3501

;------------------------------------
;
[Statedef 3501]
type    = A
movetype= A
physics = s
juggle  = 4
anim = 3501
poweradd= -2000
ctrl = 0
sprpriority = 2

[State 3501, explod]
type=explod
trigger1 = time =0
anim= 8071
sprpriority = -1
supermove = 1
bindtime = 252
removetime = 150
pos=0,0
postype=back

[State 3501, superpausa]
type = SuperPause
trigger1 = time = 0
time = 100
movetime = 100
anim = -1

[State 3501, AssertSpecial]
type = AssertSpecial
trigger1 =  animtime !=0
flag = unguardable

[State 3501, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0, 3

[State 3501, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 200
guardflag = HA
priority = 4
fall=1
pausetime = 20,20
sparkno = S7003+var(22)
sparkxy = -30,-41
hitsound = S1, 5
guardsound = S6, 0
animtype = heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = -10,-10
envshake.time = 50
envshake.freq = 10
envshake.ampl = 20

[State 3501,7]
type = ChangeState
trigger1 =  animtime = 0
ctrl = 0
value = 45

;---------------------------------------------------------------------------------
; Dio and Sirius Combo Attack (Silver)
[Statedef 3600]
type    = S
movetype= A
physics = S
anim = 20
juggle  = 4
velset = 0,0
ctrl = 0
sprpriority = 2
poweradd = -3000

[State 3600, 1]
type = VarSet
trigger1 = time = 0
var(24) = 0

[State 3600, 1]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noFG
flag3 = nobardisplay

[State 3600 1]
type = PosAdd
trigger1 = time < 20
x = 2

[State 3600, 1]
type = PlaySnd
trigger1 = Animelem = 2
value = 3, 0

[State 3600, 1]
type = PlaySnd
trigger1 = Animelem = 6
value = 3, 1

[State 3600, 1]
type = ChangeAnim
trigger1 = time = 20
value = 1807

[State 3600, 1]
type = SuperPause
trigger1 = time = 1
anim = s7009
sound = s9,1
pos = 0,-58
time = 610
movetime = 610
pausebg = 0
darken = 1

;Algethi (jump in)
[State 3600, 1]
type = Explod
trigger1 = time = 0
anim = 1813
sprpriority = -3
postype = p1
pos = -75,0
bindtime = 32
removetime = 32
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3600, 1]
type = PlaySnd
trigger1 = time = 32
value = 2, 4

;Algethi (super)
[State 3600, 1]
type = Explod
trigger1 = time = 33
anim = 1817
sprpriority = -3
postype = p1
pos = -75,0
bindtime = 578
removetime = 578
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3600, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

;Sirius (jump in)
[State 3600, 1]
type = Explod
trigger1 = time = 20  
anim = 1823
sprpriority = 3
postype = p1
pos = -30,0
bindtime = 32
removetime = 32
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3600, 1]
type = PlaySnd
trigger1 = time = 51
value = 2, 3

;Sirius (super)
[State 3600, 1]
type = Explod
trigger1 = time = 52
anim = 1827
sprpriority = 3
postype = p1
pos = -30,0
bindtime = 558
removetime = 558
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3600, 1]
type = PlaySnd
trigger1 = time = 20
value = 2, 0

[State 3600, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 3, 0

[State 3600, 2]
type = PlaySnd
trigger1 = time = 65
value = 16, 0
channel = 0

[State 3600, Mouth]
type = Explod
trigger1 = time = 75
anim = 186
ID = 186
pos = -41,38
postype = p1
bindtime = 265
sprpriority = 10
removetime = 265
removeongethit = 1
supermovetime = 265
ignorehitpause = 1
scale = 1,1

[State 3600, Mouth]
type = Explod
trigger1 = time = 400
anim = 186
ID = 186
pos = 0,56
postype = p1
bindtime = 140
sprpriority = 10
removetime = 140
removeongethit = 1
supermovetime = 140
ignorehitpause = 1
scale = 1.5,1

[State 3600, Mouth]
type = Explod
trigger1 = time = 550
anim = 186
ID = 186
pos = -67,22
postype = p1
bindtime = 40
sprpriority = 10
removetime = 50
removeongethit = 1
supermovetime = 50
ignorehitpause = 1
scale = 1,1

[State 3600, 3]
type = ChangeState
trigger1 = time = 610
value = 3601
ctrl = 0

;
[Statedef 3601]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 1818

[State 3601, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 1827

[State 3601, 1]
type = PosAdd
trigger1 = time = 0
x = -75
y = 0

;Sirius (stand)
[State 3601, 1]
type = Explod
trigger1 = time = 0
anim = 1822
ID = 1822
sprpriority = 3
postype = p1
pos = 45,0
bindtime = 568
removetime = 568
supermove = 1
ownpal = 1
shadow = 5,5,5

;Dio (stand)
[State 3601, 1]
type = Explod
trigger1 = time = 0
anim = 0
ID = 0
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 568
removetime = 568
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3601, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3601, 2]
type = PlaySnd
trigger1 = animelem = 1
value = 1, 5

[State 3601, spause]
type = SuperPause
trigger1 = animelem = 3
pos = -4, -80
anim = S7009+var(22)
time = 260
darken = 1
sound = S5,8
movetime = 260

[State 3601, quake]
type = EnvShake
trigger1 = timemod = 100,0
trigger1 = animelem = 53, >53
freq = 100
ampl = 10
time = 100

[State 3601, snd]
type = PlaySnd
trigger1 = time = 20
trigger2 = time = 100
value = 5, 9

[State 3601, voice]
type = PlaySnd
trigger1 = Animelem = 10
value = 14, 2
channel = 3

[State 3601, snd]
type = PlaySnd
trigger1 = animelem = 18
value = 5, 7

[State 3601, voice]
type = StopSnd
trigger1 = Animelem = 47
channel = 3

[State 3601, voice]
type = PlaySnd
trigger1 = Animelem = 48
value = 14, 0
channel = 0

[State 3601, explode]
type = Explod
trigger1 = time = -0
anim = 8042+var(22)
ID = 8042
pos = 0,0
postype = left
supermovetime = 260
bindtime = -1
removetime = 260
removeongethit = 1
sprpriority = -5
supermovetime = 525

[State 3601, sfondo]
type = Explod
trigger1 = time = 255
pos = -320,0
anim = 8005
ID = 8005
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 140
supermovetime = 140

[State 3601, sfondo]
type = Explod
trigger1 = time = -0
pos = -320,0
anim = 8041
ID = 8041
postype = right
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 400
supermovetime = 525

[State 3601, proj]
type = Projectile
trigger1 = time = 255
;trigger2 = time = 300
projanim = 8040
projhitanim = 8040
projscale = 2,2
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projshadow = 0,0,0
projremovetime = 60
offset = 70, 0
velocity = 5,0
attr = S, HP
damage   = 0
getpower = 0
givepower = 0
animtype = heavy
p2stateno = 3610
ID = 8040
fall = 1
fall.recover = 0
fall.damage = 70
fall.envshake.ampl = 15
fall.envshake.freq = 50
fall.envshake.time = 20
hitflag = MAFDP
pausetime = 10,10
guard.pausetime = 10,35
hitsound   = S3000,4
sparkno = -1
sparkxy = 75,-55
guardsound = S6, 0
ground.type = Low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0;-6
air.animtype = Back
air.velocity = 0,0;-5,-20
air.juggle = 3
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 3601, VarSet]
type = VarSet
trigger1 = Projcontact = 1
var(24) = 1

[State 3601, snd]
type = PlaySnd
trigger1 = Animelem = 57
value = 5, 10

[State 3601, flash]
type = EnvColor
triggerall = p2stateno != 3610
trigger1 = time = 390
value = 255,255,255
under = 0
time = 10

[State 3601, end]
type = ChangeState
triggerall = p2stateno != 3610
trigger1 = time = 390
value = 0
ctrl = 1

[State 3601, end]
type = ChangeState
triggerall = p2stateno = 3610
trigger1 = time = 390
value = 3602
ctrl = 1

;
[Statedef 3602]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 9999

[State 3602, 1]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noFG

[State 3602, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 0

[State 3602, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 1822

;Sirius (jump out)
[State 3602, 1]
type = Explod
trigger1 = time = 0
anim = 1825
ID = 1825
sprpriority = -3
postype = p1
pos = 45,0
bindtime = 600
removetime = 600
supermove = 1
ownpal = 1
shadow = 5,5,5

;Dio (jump out)
[State 3602, 1]
type = Explod
trigger1 = time = 0
anim = 1805
ID = 1805
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 600
removetime = 600
ownpal = 1
shadow = 5,5,5

;Algethi (jump out)
[State 3602, 1]
type = Explod
trigger1 = time = 0  
anim = 1815
ID = 1815
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 600
removetime = 600
ownpal = 1
shadow = 5,5,5

[State 3602, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

;Sirius (jump)
[State 3602, 2]
type = ModifyExplod
trigger1 = time >= 60
ID = 1825
anim = 1825
pos = 0,540-(time-60)
postype = p2
facing = -1
shadow = 0,0,0

;Dio (jump)
[State 3602, 2]
type = ModifyExplod
trigger1 = time >= 60
ID = 1805
anim = 1805
pos = -240,540-(time-60)
postype = p2
shadow = 0,0,0

;Algethi (jump)
[State 3602, 2]
type = ModifyExplod
trigger1 = time >= 60
ID = 1815
anim = 1815
pos = -10,580-(time-60)
postype = p2
facing = -1
shadow = 0,0,0

[State 3602, 2]
type = PlaySnd
trigger1 = time = 60
value = 5, 9

[State 3602, 2]
type = PlaySnd
trigger1 = time = 200
value = 12,0

[State 3602, 2]
type = PlaySnd
trigger1 = time = 210
value = 14,0

[State 3602, 2]
type = PlaySnd
trigger1 = time = 220
value = 15,0

[State 3602, 2]
type = Explod
trigger1 = time = 60
anim = 8043+var(22)
ID = 8043
pos = 0,0
postype = left
bindtime = -1
removetime = 280
removeongethit = 1
sprpriority = -5

[State 3602, 2]
type = Explod
trigger1 = time = 60
anim = 8005
ID = 8005
pos = 0,0
postype = left
bindtime = -1
removetime = 280
removeongethit = 1
sprpriority = -4
scale = 2,2

[State 3602, 3]
type = Explod
trigger1 = time = 320
ID = 8044
anim = 8044
pos = 0,0
postype = left
bindtime = -1
removetime = 68
removeongethit = 1
sprpriority = 10

[State 3602, 3]
type = PlaySnd
trigger1 = time = 320
value = s1,3

[State 3602, 3]
type = PlaySnd
trigger1 = time = 330
value = s1,4

[State 3602, 3]
type = PlaySnd
trigger1 = time = 340
value = s1,5

[State 3602, 4]
type = ChangeState
trigger1 = time = 320
value = 3603
ctrl = 1

;
[Statedef 3603]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 9999

[State 3603, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 1805

[State 3603, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 1815

[State 3603, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 1825

[State 3603, 1]
type = PosAdd
trigger1 = time = 0
x = 30
y = 0

;Dio (jump in)
[State 3603, 1]
type = Explod
trigger1 = time = 100
anim = 1803
sprpriority = -3
postype = p1
pos = 10,0
bindtime = 32
removetime = 32
ownpal = 1
shadow = 5,5,5

[State 3603, 1]
type = PlaySnd
trigger1 = time = 131
value = 2, 3

;Algethi (jump in)
[State 3603, 1]
type = Explod
trigger1 = time = 100
anim = 1813
sprpriority = -3
postype = p1
pos = -75,0
bindtime = 32
removetime = 32
ownpal = 1
shadow = 5,5,5

[State 3603, 1]
type = PlaySnd
trigger1 = time = 131
value = 2, 4

;Algethi (stand)
[State 3603, 1]
type = Explod
trigger1 = time = 131
anim = 1812
ID = 1812
sprpriority = -3
postype = p1
pos = -75,0
bindtime = 426
removetime = 426
supermove = 1
ownpal = 1
shadow = 5,5,5

;Sirius (jump in)
[State 3603, 1]
type = Explod
trigger1 = time = 100
anim = 1823
sprpriority = -3
postype = p1
pos = -30,0
bindtime = 32
removetime = 32
ownpal = 1
shadow = 5,5,5

;Sirius (stand)
[State 3603, 1]
type = Explod
trigger1 = time = 131
anim = 1822
ID = 1822
sprpriority = -3
postype = p1
pos = -30,0
bindtime = 426
removetime = 426
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3603, 1]
type = PlaySnd
trigger1 = time = 131
value = 2, 2

[State 3603, 2]
type = SelfState
trigger1 = time = 131
value = 52
ctrl = 0

;
[Statedef 3610]
type = S
movetype = H
physics = N
velset = 0,0
sprpriority = 2

[State 3610, 1]
type = ChangeAnim2
trigger1 =  time = 0
value = 3610

[State 3610, 2]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = -10

[State 3610, 3]
type = ChangeState
trigger1 = time = 200
value = 3611
ctrl = 0

;
[Statedef 3611]
type = S
movetype = I
physics = S
sprpriority = 2

[State 3611, 1]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3611, 2]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3611, 3]
type = ChangeAnim2
trigger1 = time = 0
value = 3611

[State 3611, 4]
type = PosSet
trigger1 = AnimElem = 1
x = 0
y = 100

[State 3611, 5]
type = VelSet
trigger1 = time < 10
x = 0
y = -1

[State 3611, 6]
type = VelSet
trigger1 = time > 10
x = 0
y = -0.4

[State 3611, 7]
type = LifeAdd
trigger1 = time = 250
value = -9999
kill = 1
absolute = 0

[State 3611, 8]
type = SelfState
trigger1 = time = 300
value = 5100
ctrl = 0

;---------------------------------------------------------------------------------
; Dio and Sirius Combo Attack (Specter)
[Statedef 3700]
type    = S
movetype= A
physics = S
anim = 20
juggle  = 4
velset = 0,0
ctrl = 0
sprpriority = 2
poweradd = -3000

[State 3700]
type = VarSet
trigger1 = time = 1
var(24) = 0

[State 3700, 1]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noFG
flag3 = nobardisplay

[State 3700 1]
type = PosAdd
trigger1 = time < 20
x = 2

[State 3700, 1]
type = PlaySnd
trigger1 = Animelem = 2
value = 3, 0

[State 3700, 1]
type = PlaySnd
trigger1 = Animelem = 6
value = 3, 1

[State 3700, 1]
type = ChangeAnim
trigger1 = time = 20
value = 1807

[State 3700, 1]
type = SuperPause
trigger1 = time = 0
anim = S7009+var(22)
sound = S9,1
pos = -4, -80
time = 610
movetime = 610
darken = 1

;Algethi (jump in)
[State 3700, 1]
type = Explod
trigger1 = time = 0
anim = 1813
sprpriority = -3
postype = p1
pos = -75,0
bindtime = 32
removetime = 32
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3700, 1]
type = PlaySnd
trigger1 = time = 32
value = 2, 4

;Algethi (super)
[State 3700, 1]
type = Explod
trigger1 = time = 32
anim = 1817
sprpriority = -3
postype = p1
pos = -75,0
bindtime = 447
removetime = 447
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3700, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

;Sirius (jump in)
[State 3700, 1]
type = Explod
trigger1 = time = 20  
anim = 1823
sprpriority = 3
postype = p1
pos = -30,0
bindtime = 32
removetime = 32
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3700, 1]
type = PlaySnd
trigger1 = time = 51
value = 2, 3

;Sirius (super)
[State 3700, 1]
type = Explod
trigger1 = time = 52
anim = 1827
sprpriority = 3
postype = p1
pos = -30,0
bindtime = 426
removetime = 426
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3700, 1]
type = PlaySnd
trigger1 = time = 20
value = 2, 0

[State 3700, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 3, 0

[State 3700, 2]
type = PlaySnd
trigger1 = time = 65
value = 16, 1
channel = 0

[State 3700, Mouth]
type = Explod
trigger1 = time = 75
anim = 186
ID = 186
pos = 0,56
postype = p1
bindtime = 80
sprpriority = 10
removetime = 80
removeongethit = 1
supermovetime = 80
ignorehitpause = 1
scale = 1.5,1

[State 3700, Mouth]
type = Explod
trigger1 = time = 200
anim = 186
ID = 186
pos = -67,22
postype = p1
bindtime = 279
sprpriority = 10
removetime = 279
removeongethit = 1
supermovetime = 279
ignorehitpause = 1
scale = 1,1

[State 3700, 3]
type = ChangeState
trigger1 = time = 480
value = 3701
ctrl = 0

;
[Statedef 3701]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 1812

[State 3701, 1]
type = PosAdd
trigger1 = time = 0
x = -45
y = 0

;Sirius (jump out)
[State 3701, 1]
type = Explod
trigger1 = time = 0
anim = 1825
ID = 1825
sprpriority = 3
postype = p1
pos = 0,0
bindtime = 60
removetime = 60
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3701, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

;Dio (run)
[State 3701, 1]
type = Explod
trigger1 = time = 0
anim = 1800
ID = 1800
sprpriority = -3
postype = p1
pos = 0,0
bindtime = 568
removetime = 568
supermove = 1
ownpal = 1
shadow = 5,5,5

;Dio (run)
[State 3701, 1]
type = ModifyExplod
trigger1 = time >= 0
ID = 1800
anim = 1800
pos = 0+(10*time+1),0
postype = p1
shadow = 0,0,0

[State 3701, 1]
type = RemoveExplod
trigger1 = time = 30
ID = 1800

[State 3701, 1]
type = PlaySnd
triggerall = NumExplod(1800) > 0
trigger1 = animelem = 1
trigger2 = animelem = 3
value = 3, 0

[State 3701, 1]
type = PlaySnd
triggerall = NumExplod(1800) > 0
trigger1 = animelem = 2
trigger2 = animelem = 4
value = 3, 1

[State 3701, 1]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 3701, spause]
type = SuperPause
trigger1 = time = 30
pos = GameWidth-30, -80
anim = s7009+var(22)
time = 30
darken = 1
sound = S9,1
movetime = 30

;Dio (super1)
[State 3701, 2]
type = Explod
trigger1 = time = 30
anim = 1808
ID = 1808
sprpriority = -3
postype = p2
pos = -40,0
bindtime = 30
removetime = 400
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3701, 2]
type = PlaySnd
trigger1 = time = 30
value = 13,8
channel = 0

[State 3701, 2]
type = HitDef
triggerall = P2StateType != A
trigger1 = time = 73
attr = S, NA
damage = 0
getpower = 0
givepower = 0
hitflag = MAF
pausetime = 0,0
sparkno = S7002+var(22)
sparkxy = -5,-80
hitonce = 1
animtype = up
p2facing = -1
p1stateno = 3702
hitsound   = s1, 4
ground.type = High
ground.slidetime = 10
ground.velocity = 10,-7
envshake.time = 5
air.velocity = 10,-7
fall = 1

[State 3701, 3]
type = ChangeState
trigger1 = time = 400
value = 0
ctrl = 1

;
[Statedef 3702]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 1817

[State 3702, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 0
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 0,0
hitonce = 1
animtype = up
p1stateno = 3703
p2stateno = 3710
sparkxy = -5,-10
hitsound   = s9,3
guardsound = s6,0
ground.type = High
fall.yvelocity = -8
fall.damage = 500
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -2,-1
envshake.time = 5
fall.envshake.time = 20
fall.envshake.freq = 30
fall.envshake.ampl = 70
air.velocity = 4,8
guard.velocity = -5
fall = 1

[State 3702, flash]
type = EnvColor
triggerall = p2stateno != 3710
trigger1 = time = 160
value = 255,255,255
under = 0
time = 10

[State 3702, end]
type = ChangeState
triggerall = p2stateno != 3710
trigger1 = time = 160
value = 0
ctrl = 1

;
[Statedef 3703]
type = S
movetype = A
physics = S
juggle = 1
ctrl = 0
anim = 1819

[State 3703, spause]
type = SuperPause
trigger1 = time = 1
pos = -4, -80
anim = S7009+var(22)
time = 30
darken = 1
sound = S9,1
movetime = 240

[State 3703, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 14,1
channel = 0

[State 3703, 1]
type = PlaySnd
trigger1 = Animelem = 6
value = 5,3

[State 3703, 1]
type = Explod
trigger1 = AnimElem = 6
anim = 8060
postype = p1
pos = -20,-250

[State 3703, 1]
type = Explod
trigger1 = AnimElem = 6
pos = -50,0
anim = 8005
ID = 8005
postype = p2
sprpriority = -5
ignorehitpause = 1
ownpal = 1
scale = 0.3,5
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 70
removetime = 70

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 70, 0

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemtime(2) >= 0 && AnimElemTime(3) < 0
pos = 50, 0

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemtime(3) >= 0 && AnimElemTime(4) < 0
pos = 65, 5

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemtime(4) >= 0 && AnimElemTime(5) < 0
pos = 60, 5

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemtime(5) >= 0 && AnimElemTime(6) < 0
pos = 55, 5

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemtime(6) >= 0 && AnimElemTime(7) < 0
pos = 35, -15

[State 3703, Bind]
type = TargetBind
trigger1 = AnimElemtime(6) >= 0 && AnimElemTime(7) < 0
pos = 10, -90

[State 3703, Bind]
type = ChangeState
trigger1 = time = 183
value = 3704
ctrl = 1

;-------------------------------------------------
;
[Statedef 3704]
type = s
movetype = i
physics = s
ctrl = 0
anim = 1828
velset = 0,0
sprpriority = 4

[State 3704, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 1808

[State 3704, BGPalFX]
type = BGPalFX
trigger1 = time = 0
time = 142
add = 0,0,0
mul = 20,20,20
sinadd = 0,0,0,10
invertall = 0
color = 256
ignorehitpause = 1
persistent = 0

[State 3704, Explod]
type = Explod
trigger1 = time = 0
anim = 8002+var(22)
postype = back
pos = 0, 0
sprpriority = 4
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 142
removetime = 142

[State 3704, ScreenBound]
type = ScreenBound
trigger1 = time = 1
value = 0
movecamera = 0,0

[State 3704, SuperPause]
type = SuperPause
trigger1 = time = 1
time = 142
movetime = 142
darken = 1
anim = -1

[State 3704, VelSet]
type = PosSet
trigger1 = Animelem = 1
y = 0
x = ifelse(facing = 1,-160,160)

[State 3704, sound]
type = PlaySnd
trigger1 = time = 0
value = 2, 3

[State 3704, sound]
type = PlaySnd
trigger1 = time = 60
value = 15,1
channel = 0

[State 3704, Run Forward]
type = Explod
trigger1 = time = 10
trigger2 = time = 42
trigger3 = time = 46
trigger4 = time = 74
trigger5 = time = 82
trigger6 = time = 90
trigger7 = time = 98
trigger8 = time = 106
trigger9 = time = 118
trigger10 = time = 134
postype = p1
pos = 5,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 3704, light]
type = Explod
trigger1 = AnimElem = 20
postype = p1
pos = -20,-60
anim = 8070+var(22)
ID = 8070
sprpriority = 5
supermove = 1
removetime = 50
removeongethit = 1
ownpal = 1
scale = 1,1

[State 3704, sound]
type = PlaySnd
trigger1 = time = 10
trigger2 = time = 42
trigger3 = time = 46
trigger4 = time = 74
trigger5 = time = 82
trigger6 = time = 90
trigger7 = time = 98
trigger8 = time = 106
trigger9 = time = 118
trigger10 = time = 134
value = 3, 0

[State 3704, sound]
type = PlaySnd
trigger1 = time = 1
trigger2 = time = 26
trigger3 = time = 58
trigger4 = time = 78
trigger5 = time = 86
trigger6 = time = 94
trigger7 = time = 102
trigger8 = time = 110
trigger9 = time = 126
trigger10 = time = 142
value = 3, 1

[State 3704, ChangeState]
type = ChangeState
trigger1 = time = 142
value = 3705
ctrl = 0

;-------------------------------------------------
;
[Statedef 3705]
type = s
movetype = a
physics = s
ctrl = 0
anim = 1832
velset = 0,0

[State 3705, VarSet]
type = VarSet
trigger1 = time = 1
var(24) = 1

;Dio (stand)
[State 3705, 1]
type = Explod
trigger1 = time = 0
anim = 0
ID = 0
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 960
removetime = 960
supermove = 1
ownpal = 1
shadow = 5,5,5

;Algethi (stand)
[State 3705, 1]
type = Explod
trigger1 = time = 0
anim = 1812
ID = 1812
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 960
removetime = 960
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3705, sound]
type = PlaySnd
trigger1 = time = 0
value = 5, 5

[State 3705, proj]
type = Projectile
trigger1 = time = 5
projanim = 1830
projhitanim = 1831
projpriority = 8
projshadow = 0,0,0
projhits = 1
projscale = 0.5, 0.5
offset = -10,0
velocity = 12,0
guardflag = MA
attr = S, SP
damage = 999,999
getpower = 0
givepower = 0
animtype = Hard
hitflag = MAF
pausetime = 0,10
guard.pausetime = 0, 110
sparkno = S7003+var(22)
guard.sparkno = S7004+var(22)
sparkxy = -10, -90
hitsound   = s1,4
guardsound = s6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 10
ground.velocity = -20,-5
air.animtype = light
air.velocity = -20,-5
air.juggle = 0
fall.recover = 0
fall = 1
palfx.time = 100
palfx.mul = 255,255,255
palfx.add = 0,127,255
palfx.sinadd = 150, 50, 50, 15
p2stateno = 3711

[State 3705, VarSet]
type = VarSet
trigger1 = Projcontact = 1
var(14) = 1

[State 3705, ChangeAnim]
type = ChangeAnim
trigger1 = var(14) = 1 && anim != 1829
trigger2 = time = 60   && anim != 1829
value = 1829

[State 3705, Explod]
type = Explod
trigger1 = anim = 1829
trigger2 = Animelem = 2
anim = 8006
pos = -30,-20
postype = p1
facing = 1
vfacing = 1
removetime = 55
bindtime = -1
persistent = 0
accel = 0,0
random = 0,0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3705, VelSet]
type = PosAdd
triggerall = anim = 1829 && p2life > 0
trigger1 = var(14) = 1
x = p2bodydist X -60
y = 0

[State 3705, VelSet]
type = PosAdd
triggerall = anim = 1829 && p2life > 0
triggerall = var(14) = 0
trigger1 = time = 60
x = frontedgedist
y = 0

[State 3705, ChangeState]
type = ChangeState
triggerall = anim = 1829
trigger1 = time = 150
value = 3706

;-------------------------------------------------
;
[Statedef 3706]
type = s
movetype = i
physics = s
ctrl = 0
velset = 0,0
sprpriority = 4

[State 3706, PosAdd]
type = PosAdd
trigger1 = time = 0 
x = 30
y = 0

[State 3706, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0 
ID = 0

;Sirius (stand)
[State 3706, 1]
type = Explod
trigger1 = time = 1
anim = 1822
ID = 1822
sprpriority = 3
postype = p1
pos = -45,0
bindtime = 960
removetime = 960
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3706, SelfState]
type = SelfState
trigger1 = time = 1
value = 0

;-------------------------------------------------------------
;
[Statedef 3710]
type    = A
movetype= H
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
sprpriority = 2

[State 3710, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 3610

[State 3710, 2]
type = BindToTarget
trigger1 = time = 0
time = 1
ID = -1
pos = 0,0,Mid

[State 3710, 3]
type = VelSet
trigger1 = time = 27
x = 0
y = -16

[State 3710, 4]
type = SelfState
trigger1 = time = 70
value = 5050
ctrl = 1

;-------------------------------------------------------------
;
[Statedef 3711]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 3711, 1]
type = Turn
trigger1 = time = 0
trigger1 = p2dist x <= 0

[State 3711, 2]
type = VelSet
trigger1 = time = 25
x = -26

[State 3711, snd]
type = PlaySnd
trigger1 = time = 0
value = 5000, 0

[State 3711, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3711, push]
type = PlayerPush
trigger1 = 1
value = 0

[State 3711, anim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 3711, snd]
type = PlaySnd
trigger1 = time > 5
trigger1 = backedgedist <= 20
value = 5100, 0

[State 3711, shake]
type = EnvShake
trigger1 = time > 5
trigger1 = backedgedist <= 20
time = 10
ampl = 4

[State 3711, end]
type = ChangeState
trigger1 = time > 5
trigger1 = backedgedist <= 20
value = 3712

[Statedef 3712]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 3712, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3712, anim]
type = ChangeAnim
trigger1 = time < 7
value = 5030

[State 3712, anim]
type = ChangeAnim
trigger1 = time = 7
value = 5050

[State 3712, vel]
type = VelSet
trigger1 = time = 7
persistent = 0
x =  0.75
y = -6

[State 3712, vel]
type = VelAdd
trigger1 = time >= 7
y = 0.45

[State 3712, shake]
type = EnvShake
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
time = 10
ampl = 3

[State 3712, anim]
type = ChangeAnim
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
value = 5050

[State 3712, end]
type = SelfState
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
value = 5100

;--------------------------------------------------------------------------
; Dead End Fly (mortal)
[Statedef 3800]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 3800
poweradd = -3000

[State 1100 , 1]
type = SuperPause
trigger1 = Time = 0
time = 30
anim = -1
darken = 1
movetime =30

[State 3000,vc ]
type = PlaySnd
trigger1 = time = 0
value = 12, 1

[State 3000, ex]
type = Explod
trigger1 = animelem =3
anim = 8071
pos = 0, 0
postype = back
sprpriority = -5
removetime = 70
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 3801

;-----------------------------
[Statedef 3801]
type = S
movetype = A
physics =  N
ctrl = 0
anim = 3801
velset = 9,-2
juggle = 12

[State 3302, ex1]
type = Explod
trigger1 = time =0
anim = 6001
pos = 0,0
id = 4000
removetime = 50
sprpriority = -1
scale = 1,1
postype = back
bindtime = -1
removeongethit = 1

[State 3000, ex]
type = Explod
trigger1 = animelem = 8
anim = 3004
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
sprpriority = 8
scale = 1,1
ownpal = 1

;[State 3000, ex]
;type = Explod
;trigger1 = (movehit) && (numexplod(1023) = 0) && (time > 10)
;anim = 1023
;ID = 1023
;pos = 0,-50
;postype = p2
;bindtime = -1
;removetime = -2
;sprpriority = 8
;scale = 1,1
;ownpal = 1

[State 3000,env ]
type = EnvShake
trigger1 = time = 0
time = 23
freq = 60
ampl = -4
phase = 5

[State 3000,hit2 ]
type = HitDef
trigger1 = time = [0,13]
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = Light
fall.animtype = Back
damage = 3
pausetime = 0,0
sparkno = S7003+var(22)
sparkxy = -20,-70
hitsound = S1, 0
guardsound = S6, 0
ground.slidetime = 4
ground.hittime = 15
ground.velocity = -6,0
air.velocity = -6,0
getpower = 0,0
givepower = 0,0
palfx.time = 50
palfx.mul = 195,225,256
palfx.add =  82,31,184
palfx.sinadd = 195,225,256,10
palfx.color = 1
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

[State 3000,ht ]
type = HitAdd
trigger1 = movehit
value = 4

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0, 3

[State 3000,hit ]
type = HitDef
trigger1 = AnimElem = 9
attr = S,HA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = Hard
fall.animtype = Back
damage = 260
pausetime = 10,10
sparkno = S7003+var(22)
sparkxy = -50,-70
hitsound = S1, 6
guardsound = S6, 0
ground.slidetime = 0
ground.velocity = -12,-9
air.velocity = -12,-9
fall = 1
fall.recover = 1
getpower = 0,0
givepower = 0,0
palfx.time = 50
palfx.mul = 195,225,256
palfx.add =  82,31,184
palfx.sinadd = 195,225,256,10
palfx.color = 1
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

[State 1021,sn ]
type = PlaySnd
trigger1 = time = 0
value = 13, 8

[State 1021,nh ]
type = NotHitBy
trigger1 = time > 5
value = SCA,NA,SA

[State 3000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 3802

;----------------------------
[Statedef 3802]
type = A
movetype = I
physics =  N
ctrl = 0
anim = 3802

[State 1022,v ]
type = VelAdd
trigger1 = time > 0
y = .8

[State 1022,st1]
type = ChangeState
trigger1 = pos Y >= 0
value = 52

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------

[State -2, Get P2 Distance]
type = VarSet
trigger1 = P2Dist X != 0
v = 11
value = Floor(P2Dist X)

[State -2, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(24) = %d  vel x = %f"
params = var(24),vel x

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
type = RemapPal
triggerall = name = "dioS" && palno = 5
trigger1 = 1
source = 1,1
dest = 1,13

[State -2, Silver Version]
type = RemapPal
triggerall = name = "dioS" && palno = 11
trigger1 = 1
source = 1,1
dest = 1,14

[State -2, Silver Version]
type = VarSet
triggerall = roundno >= 1
trigger1 = name = "dio" && palno != 5 || name = "dio" && palno != 11
trigger2 = name = "dioS"
var(22) = 0

[State -2, Specter Version]
type = VarSet
triggerall = roundno >= 1
trigger1 = name = "dios" && palno = 5 || name = "dio" && palno = 11
trigger2 = name = "dioH"
var(22) = 100

[State -2, Constants]
type = AttackMulSet
trigger1 = name = "dioH"
value = 1.09

[State -2, Constants]
type = DefenceMulSet
trigger1 = name = "dioH"
value = 1.09

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
triggerall = ((Time = 1) && (var(8) < 500) && (random < 600))
trigger1 = (stateno = 5001) && (random < 500)
value = 10, 0
channel = 5

[State -2, Random sound]
type = PlaySnd
triggerall = ((Time = 1) && (var(8) < 500) && (random < 600))
trigger1 = (stateno = 5040) && (random < 400)
value = 10, 0
channel = 5

[State -2, Random sound]
type = PlaySnd
triggerall = ((Time = 1) && (var(8) < 500) && (random < 600))
trigger1 = (stateno = 5050)&& (random < 400)
value = 10, 0
channel = 5

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

;---------------------------------------

;[State -3, RemoveExplod]
;type = RemoveExplod
;trigger1 = stateno !=(3100,3800)
;ID = 6001
;
;[State -3, RemoveExplod]
;type = RemoveExplod
;trigger1 = stateno !=(3100,3800)
;ID = 8071

;---------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 3
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 3
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 6
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 6
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

[State -3, Get Up]
type = PlaySnd
triggerall = stateno = 5120
trigger1 = time = 1
value = 10, 3

;---------------------------------------

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = ifelse(selfanimexist(5148),5148,5150)
trigger1 = time = 1
trigger2 = time = 10
trigger3 = time = 20
value = 11, 1

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno!=(9009,9500)
channel = 4

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9