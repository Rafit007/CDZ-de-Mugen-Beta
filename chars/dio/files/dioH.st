
;*******************************************************************************
;                                                                              *
;Dio de Mosca   Autor   Grafica : Welton Saint y Programacion : Pardo e Tecla 2000  *
;                                                                              *
;*******************************************************************************

;---------------------------------------------------------------------------
; LOSE (Time over)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 190, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8800, 0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; DRAWGAME (Time over)
[Statedef 175]
type = S
ctrl = 0
velset = 0,0

[State 175, 1] ; If no anim, use go to lose state.
type = ChangeState
trigger1 = Time = 0
trigger1 = !SelfAnimExist(175)
value = 170

[State 175, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 175

[State 175, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider

[Statedef 180]
type = s
ctrl = 0
velset = 0,0,0

[state 180, 1];Versus seus amigos de prata
type = changestate
trigger1 = p2name = "siriusS" || p3name = "siriusS" || p4name = "siriusS"
trigger2 = p2name = "algethiS" || p3name = "algethiS"|| p4name = "algethiS"
trigger3 = p2name = "algethiH" || p3name = "algethiH" || p4name = "algethiH"
trigger4 = p2name = "Sirius spectre" || p3name = "Sirius spectre" || p4name = "Sirius spectre"
trigger5 = p2name = "siriusH" || p3name = "siriusH"|| p4name = "siriusH"
value = 181

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
trigger1 = MatchOver = 1
value = 182


[State 180, 2]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 180, 3]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 181

[State 180, 4]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 183

;---------------------------------------------------------------------------
; Win pose 1

[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 182, Assert]
type     = AssertSpecial
trigger1 = Time = [0,250]
flag     = roundnotover

[State 190, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8700, 0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;----------------------------------------------------------------------------
; Winpose 2

[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0
pos = 0,0

[State 182, Assert]
type     = AssertSpecial
trigger1 = Time = [0,330]
flag     = roundnotover

;Sirius
[State 182, 3]
type = Explod
trigger1 = Time = 0
anim = 182
sprpriority = 0
postype = p1
pos = 70,0
bindtime = 1
supermove = 1
ownpal = 1
removetime = -1

;Alguety
[State 182, 3]
type = Explod
trigger1 = Time = 0
anim = 183
sprpriority = 0
postype = p1
pos = 30,0
bindtime = 1
supermove = 1
ownpal = 1
removetime = -1

[State 195 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 180,0

[State 195 , 1]
type = PlaySnd
trigger1 = time = 55
value = 1000,8

;---------------------------------------------------------------------------
; Winpose 3

[Statedef 183]
type = S
ctrl = 0
anim = 184
velset = 0,0
pos = 0,0

[State 182, Assert]
type     = AssertSpecial
trigger1 = Time = [0,100]
flag     = roundnotover


[State 195 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1000,8


;---------------------------------------------------------------------------

; INTRO controller
[Statedef 190]

[State 190, var]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 190 , state]
type = ChangeState
trigger1 = Var(2) = [0,70]
value = 196


[State 190 , state]
type = ChangeState
trigger1 = Var(2) = [71,99]
value = 191


; Introduction
; CNS difficulty: basic
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 190, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 190, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 190, 4


[State 190, snd1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
value = 190, 0

[State 190, snd2]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
value = 190, 1

[State 190, snd2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 190, 3

[State 190, snd]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1000, 7



[State 5000 , 6]
type = Explod
trigger1 =  Time = 0
anim = 191
ignorehitpause = 1
sprpriority = -3
postype = p1
pos = 120,0
bindtime = 1
supermove = 1

;luz desarne armadura
[State 191 , 6]
type = Explod
trigger1 = time = 85
anim = 7060
sprpriority = 0
postype = p1
pos = 50,-30
bindtime = 1
supermove = 1
ownpal = 1

;[State 5000 , 6]
;type = Explod
;trigger1 =  Time = 19
;anim = 192
;ignorehitpause = 1
;sprpriority = 3
;postype = p1
;pos = 120,0
;bindtime = 1
;supermove = 1

[State 192, cloth luce1]
type = Explod
trigger1 = time = 57
pos = 0,0
anim = 7062
sprpriority = -3
removetime = 50


[State 190, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, 4] ;Change to stand state
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
[Statedef 192]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 190, explod1]
type = Explod
trigger1 = Time = 0
anim = 193
ignorehitpause = 1
sprpriority = -3
postype = p1
pos = 50,0
bindtime = 1
supermove = 1

;luz desarne armadura
[State 191 , 6]
type = Explod
trigger1 = time = 115
anim = 7060
sprpriority = 0
postype = p1
pos = 50,-30
bindtime = 1
supermove = 1
ownpal = 1

;[State 192, cloth luce1]
;type = Explod
;trigger1 = time = 95
;pos = 10,0
;anim = 7062
;sprpriority = -1


[State 193, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 194

[State 4018, 3]
type = playsnd
trigger1 = time = 1
value = 2100,0

[State 190, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 190, 4

[State 190, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 190, 3

[State 190, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 16
value = 12,1


[State 190, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem  = 18
value = 12,0



[State 190, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem  = 19
value = 12,0



[State 190, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem  = 20
value = 12,2


[State 190, PlaySnd]
type = PlaySnd
trigger1 =  AnimElem = 21
value = 12,2


[State 190, snd]
type = PlaySnd
trigger1 = AnimElem = 23
value = 190, 3


[State 190, PlaySnd]
type = PlaySnd
trigger1 =   AnimElem = 26
value = 300,0

[State 190, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, 3] ;Change to stand state
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;-------------------------------------------------
[Statedef 193]
type = S
ctrl = 0
anim = 197
velset = 0,0

[State 190, assert]
type = AssertSpecial
trigger1 = 1
flag = Intro

[state 192, 2]
type = assertspecial
trigger1 = time = [0,220]
flag = intro

[State 24000, cosmo]
type = Explod
trigger1 = AnimElem = 1
anim = 198
sprpriority = -1
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1
removetime = 220
removeongethit = 1

[State 4018, 3]
type = playsnd
trigger1 = time = 10
value = 300,0

[State 193, 3] ;Change to stand state
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;--------------------------------------------
[Statedef 196]
type = S
ctrl = 0
anim = 196
velset = 0,0

[State 196, 0]
type = AssertSpecial
trigger1 = Time = [0,360]
flag = Intro


[State 196,remove]
type = RemoveExplod
trigger1 = time = 120
ID = 192

[State 193, Voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 191,0

[State 183, 2]
type = PlaySnd
trigger1 =  time = 180
value = 0,1

[State 196, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1000, 8


[state 196,4]
type = explod
trigger1 = AnimElem = 7
id = 13400
anim = 13400
pos = 0, 0
postype = p1
removetime = -1
sprpriority = 2

[State 196,5]
type = RemoveExplod
trigger1 = time = 200
ID = 13400

[State 192,6]
type = ChangeState
trigger1 = Time = 360
value = 0
ctrl = 0



;---------------------------------------------------------------------------
; Taunt
; CNS difficulty: easy
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1000,8


[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Punch
; CNS difficulty: easy
[Statedef 200]
type    = S				;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A				;Move-type: A-attack, I-idle, H-gethit
physics = S				;Physics: S-stand, C-crouch, A-air
juggle  = 1				;Number of air juggle points move takes
velset = 0,0			;Set velocity (x,y) (Def: no change)
ctrl = 0				;Set ctrl (Def: no change)
anim = 200				;Change animation (Def: no change)
poweradd = 20			;Power to add (Def: 0)
sprpriority = 2			;Set layering priority to 2 (in front)

[State 200 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 23			;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 10			;Time attacker pauses, time opponent shakes
sparkno = s7000				;Spark anim no (Def: set above)
sparkxy = -10, -82		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S200, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Light
ground.type=High
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 1
getpower=0			;Time before opponent regains control in air

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Standing Medium Punch
; CNS difficulty: easy
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 210


[State 200 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4



[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 33		;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 10			;Time attacker pauses, time opponent shakes
sparkno = s7001			;Spark anim no (Def: set above)
sparkxy = -10, -75		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S210, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Medium
ground.type=High
ground.slidetime=13
ground.hittime=13
ground.velocity=-6
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 2
getpower=0			;Time before opponent regains control in air



[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------
; Standing Medium Punch

[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 25
ctrl = 0
velset = 0,0
anim = 215


[State 200 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4


[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 35		;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 12, 12			;Time attacker pauses, time opponent shakes
sparkno = s7000			;Spark anim no (Def: set above)
sparkxy = -10, -78		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S210, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Medium
ground.type=High
ground.slidetime=12
ground.hittime=12
ground.velocity=-6
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 2
getpower=0			;Time before opponent regains control in air


[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
; CNS difficulty: easy
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 40
ctrl = 0
velset = 0,0
anim = 220

[State 220, RUN_FWD]
type = Explod
trigger1 = AnimElem = 2
pos = 0,0
anim = 6002
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 1010, Shadows]
type = AfterImage
Trigger1 = AnimElem = 2
time = 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4

[State 201 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 201, 3]
type = VelSet
trigger1 = AnimElem = 2
x = 14


[State 201 , 3]
type = HitDef
trigger1 = AnimElem = 2
priority = 2
attr = S, NA
damage = 45
getpower = 20
givepower = 50
animtype = hard
guardflag = HA
sparkxy = -10,-75
sparkno = s7002
hitsound = S220,1
guardsound = S6,0
pausetime = 15,15
ground.type = High
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -10
airguard.velocity = -4.4,-4
air.type = High
air.velocity = -4.4,-4
air.hittime = 18



[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------------------------------------------
; Stand Punch Close
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
type = HitDef
trigger1 = time= 0
attr = S, NA
damage = 40
animtype = hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 12
sparkno = s7001
sparkxy = -10, -72
hitsound = s210,1
guardsound = s6, 0
ground.type=High
ground.slidetime=8
ground.hittime=8
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 7
envshake.ampl = 1
getpower=0


[State 225, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 1500, 4


[State 225, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 225, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Standing Light Kick
; CNS difficulty: easy
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 25
ctrl = 0
anim = 230

[State 201 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 240,0

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 25			;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 10			;Time attacker pauses, time opponent shakes
sparkno = s7000				;Spark anim no (Def: set above)
sparkxy = -10, -66		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S230, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Light
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 1
getpower=0			;Time before opponent regains control in air

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
; CNS difficulty: easy
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 25
ctrl = 0
velset = 0,0
anim = 240


[State 201 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4


[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 35		;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 10			;Time attacker pauses, time opponent shakes
sparkno = s7001				;Spark anim no (Def: set above)
sparkxy = -10, -72		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S240, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-3
air.type=Low
air.velocity=-3,-2
envshake.time=9
envshake.ampl=2			;Time before opponent regains control in air


[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
; CNS difficulty: easy
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 40
ctrl = 0
velset = 0,0
anim = 250

[State 201 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2


[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4

[State 201, 3]
type = VelSet
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
x = 2


[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 20			;Damage that move inflicts, guard damage
animtype = Heavy			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 4, 4			;Time attacker pauses, time opponent shakes
sparkno = s7000				;Spark anim no (Def: set above)
sparkxy = -10, -108		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S250, 1			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -2		;Velocity at which opponent is pushed
airguard.velocity = -5,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12			;Time before opponent regains control in air
			;Time before opponent regains control in ai

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 25		;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 12, 12			;Time attacker pauses, time opponent shakes
sparkno = s7001				;Spark anim no (Def: set above)
sparkxy = -10, -75		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S240, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Hard
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-10
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
persistent=0
envshake.time = 9
envshake.ampl = 3
getpower=0			;Time before opponent regains control in air

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
poweradd= 25
ctrl = 0
anim = 400

[State 200 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0


[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 20			;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 10			;Time attacker pauses, time opponent shakes
sparkno = s7000				;Spark anim no (Def: set above)
sparkxy = -10, -45		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S200, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Light
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
envshake.time = 9
envshake.ampl = 1
getpower=0			;Time before opponent regains control in air


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
poweradd= 25
ctrl = 0
anim = 410

[State 200 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 28		;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 10			;Time attacker pauses, time opponent shakes
sparkno = s7000				;Spark anim no (Def: set above)
sparkxy = -10, -45		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S210, 1			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4
animtype = Medium
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-6
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
envshake.time = 9
envshake.ampl = 2
getpower=0			;Time before opponent regains control in air


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
poweradd= 35

[State 420, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 420, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 35
getpower = 20
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = S7001
sparkxy = -10,-75
hitsound = S220,1
guardsound = S6,0
animtype = up
ground.type=Low
ground.slidetime=14
ground.hittime=14
ground.velocity = 0,-11
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
yaccel=.5
envshake.time = 9
envshake.ampl = 3
getpower=0
fall = 1

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
; CNS difficulty: easy
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 20
ctrl = 0
anim = 430

[State 201 , 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 240,0

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 22			;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 10			;Time attacker pauses, time opponent shakes
sparkno = s7000				;Spark anim no (Def: set above)
sparkxy = -10, 3		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S220, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Light
ground.type=Low
ground.slidetime=10
ground.hittime=10
ground.velocity=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3),0
ground.cornerpush.veloff=ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5);,0
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
down.velocity=-2,-2
yaccel=.5
envshake.time = 9
envshake.ampl = 1
getpower=0			;Time before opponent regains control in air


[State 430, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Crouching Medium Kick
; CNS difficulty: easy
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
value = 0,1



[State 200, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 30			;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10,10		;Time attacker pauses, time opponent shakes
sparkno = s7000				;Spark anim no (Def: set above)
sparkxy = -10, 3		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S230, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Medium
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-6
air.type=Low
air.hittime=12
air.velocity=-5,-7
air.cornerpush.veloff=0
down.velocity=-3,-3
yaccel=.5
envshake.time = 9
envshake.ampl = 2
getpower=0			;Time before opponent regains control in air


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
poweradd= 40
ctrl = 0
anim = 450
sprpriority = 2

[State 450, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4

[State 450, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage   = 38
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = s7001
sparkxy = -10,5
hitsound   = S240,1
guardsound = S6,0
ground.type= trip
ground.slidetime=16
ground.hittime=16
ground.velocity=-1.33,-6.85
air.type=Low
air.hittime=12
air.velocity=-1.33,-6.85
air.cornerpush.veloff=0
down.velocity=-4,-4
getpower=0
yaccel=.5
envshake.time = 9
envshake.ampl = 3
getpower=0
fall =1

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jump Light Punch
; CNS difficulty: easy
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 20
ctrl = 0
anim = 600

[State 600, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 25			;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 10			;Time attacker pauses, time opponent shakes
sparkno = s7000				;Spark anim no (Def: set above)
sparkxy = -10, -41		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S200, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Light
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=-3
air.type=Low
air.velocity = -1,((vel y)-.2)
getpower=0
envshake.time=9
envshake.ampl=1			;Time before opponent regains control in air



;---------------------------------------------------------------------------
; Jump Medium Punch
; CNS difficulty: easy
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 35
ctrl = 0
anim = 610

[State 610, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 35			;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 12, 12			;Time attacker pauses, time opponent shakes
sparkno = s7000				;Spark anim no (Def: set above)
sparkxy = -10, -39		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S210, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-5
air.type=Low
air.velocity = -2,((vel y)-.2)
getpower=80
envshake.time=9
envshake.ampl=2
getpower=0			;Time before opponent regains control in air


;---------------------------------------------------------------------------
; Jump Strong Punch
; CNS difficulty: easy
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 40
ctrl = 0
anim = 620

[State 620, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 45			;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 12, 12			;Time attacker pauses, time opponent shakes
sparkno = s7001				;Spark anim no (Def: set above)
sparkxy = -10, -30		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S220, 1			;Sound to play on hit
guardsound = S6, 0			;Sound to play on guard
animtype = Hard
ground.type=High
ground.slidetime=12
ground.hittime=16
ground.velocity=-7
air.type=high
air.velocity = -8,8
getpower=0
envshake.time=12
envshake.ampl=3
;fall=1
air.fall=1
fall.recover=0


;---------------------------------------------------------------------------
; Jump Light Kick
; CNS difficulty: easy
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
value = 0, 1

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 26		;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 10			;Time attacker pauses, time opponent shakes
sparkno = s7000				;Spark anim no (Def: set above)
sparkxy = -10, -65		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S230, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Light
ground.type=High
ground.slidetime=9
ground.hittime=12
ground.velocity=-3
air.type=Low
air.velocity=-1.5,((vel y)-.2)
getpower=0
envshake.time=9
envshake.ampl=1			;Time before opponent regains control in air


;---------------------------------------------------------------------------
; Jump Medium Kick
; CNS difficulty: easy
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

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 34			;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 12, 12			;Time attacker pauses, time opponent shakes
sparkno = s7001				;Spark anim no (Def: set above)
sparkxy = -10, -69		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S230, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=14
ground.velocity=-5
air.type=Low
air.velocity=-2,((vel y)-.2)
getpower=0
envshake.time=9
envshake.ampl=2			;Time before opponent regains control in air



;---------------------------------------------------------------------------
; Jump Strong Kick
; CNS difficulty: easy
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

[state 200, 2]
type = playsnd
triggerall = random < 250
trigger1 = time = 0
value = 1500,4

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA			;Attribute: Standing, Normal Attack
damage = 42		;Damage that move inflicts, guard damage			;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit			;Attack priority: 0 (least) to 7 (most), 4 default					;Hit/Miss/Dodge type (Def: Hit)
pausetime = 12,12			;Time attacker pauses, time opponent shakes
sparkno = s7001				;Spark anim no (Def: set above)
sparkxy = -10, -61		;X-offset for the "hit spark" rel. to p2,					;Y-offset for the spark rel. to p1
hitsound = S240, 1			;Sound to play on hit
guardsound = s6, 0			;Sound to play on guard
animtype = Hard
ground.type=High
ground.slidetime=12
ground.hittime=11
ground.velocity=-3
air.type=Low
air.velocity = -8,8
getpower=0
envshake.time=10
envshake.ampl=3
fall=1
air.fall=1
fall.recover=0			;Time before opponent regains control in air

;-----------------
;Chute no ar

[Statedef 699]
type    = A
movetype= A
physics = s
juggle  = 4
poweradd= 65
anim = 699
ctrl = 0
sprpriority = 2


[state 702,7]
type = changestate
trigger1 =  time = 10
ctrl = 0
value = 702

[Statedef 702]
type    = A
movetype= A
physics = s
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2

[State 702,1]
type = changeanim
trigger1 = time = 1
value = 699

[State 702, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 702, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 70
guardflag = HA
priority = 4
fall=1
pausetime = 12,12
sparkno = s7001
sparkxy = -10,1
hitsound   = S250,1
guardsound = s6,0
animtype = heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = -10,-10
fall = 1

[State 701, 4]
type = PlaySnd
trigger1 = Time = 1
value = 702, 2

[State 700, 5]
type = velset
trigger1 = Time = 1
x = 0
y = 20

[State 701,6]
type = changeanim
trigger1 = animtime = 0
value = 699


[State 701,envshake]
type = envshake
trigger1 = pos y > -4
time = 10
ampl= 5


[state 701,7]
type = changestate
trigger1 =  pos y > -10
ctrl = 0
velset = -10,-10
value = 52


;caida en picada
; CNS difficulty: easy

[Statedef 700]
type    = A
movetype= A
physics = s
juggle  = 4
poweradd= 65
anim = 700
ctrl = 0
sprpriority = 2

[state 700]
type = superpause
trigger1=time=1
movetime=3
time = 3

[state 701,7]
type = changestate
trigger1 =  time = 29
ctrl = 0
value = 701

[Statedef 701]
type    = A
movetype= A
physics = s
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2

[State 701,1]
type = changeanim
trigger1 = time = 1
value = 700

[State 701, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 701, 3]
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
hitsound   = S250,1
guardsound = s6,0
animtype = heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = -10,-10

[State 701, 4]
type = PlaySnd
trigger1 = Time = 1
value = 701, 2

[State 700, 5]
type = velset
trigger1 = Time = 1
x = 0
y = 20

[State 701,6]
type = changeanim
trigger1 = animtime = 0
value = 700


[State 701,envshake]
type = envshake
trigger1 = pos y > -4
time = 10
ampl= 5


[state 701,7]
type = changestate
trigger1 =  pos y > -10
ctrl = 0
velset = -10,-10
value = 45

;---------------------------------------------------------------------------
;pegarse a la pared y lanzarse
[Statedef 750]
type    = A
movetype= A
physics = S
juggle  = 4
poweradd= 65
velset = 0,0
ctrl = 0
anim=750
sprpriority = 2


[state 751, 8]
type = angleset
trigger1 = time = 1
value = 0

[state 750,1]
type = posadd
trigger1 = timemod = 1 , 0
x = -15
y =  0

[state 750,2]
type =changestate
trigger1 = BackEdgeBodyDist < 1
value = 751

[Statedef 751]
type    = A
movetype= A
physics = s
juggle  = 4
poweradd= 65
ctrl = 0
anim=751
sprpriority = 2

[State 751, 4]
type = PlaySnd
trigger1 = Time = 1
value = 750, 1

[state 751, 6]
type = changeanim
trigger1 = animtime = 0
value =752



[state 751, 8]
type = angleset
trigger1 = time = 1
value = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  animtime !=0
flag = unguardable


[State 751, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 70
guardflag = HA
priority = 4
fall=1
pausetime = 12,12
sparkno = s7001
sparkxy = -10,28
hitsound   = S250,1
guardsound = s6,0
animtype = heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = -10,-10

;calcula el angulo
[state 751 , varset]
type =varset
trigger1 = time = 16
v = 5
value = (p2dist y)

[state 751 , varset]
type =displaytoclipboard
trigger1 = time = 17
text = "y= %f , x es %f y la relacion es %f"
param = p2dist y, p2dist x, p2dist y/p2dist x


;calcula la hipotenusa
[state 751 , varset]
type =varset
trigger1 = time =16
v = 6
value = ((p2dist y*p2dist y) + (p2dist x*p2dist x))**0.5


;atan (p2dist y/p2dist x)

[state 751, 82]
type = angledraw
trigger1 = time > 16

[state 751, 91]
type = changeanim
trigger1 = timemod = 4,0
trigger1 = time > 16
value = 700

[state 751, 92]
type = posadd
trigger1 = timemod = 1,0
trigger1 = time > 16
x = 25
y = 20

;x = floor (cos (var(5))*var(6))*10
;y = floor (sin (var(5))*var(6))*10


[State 751,envshake]
type = envshake
trigger1 = pos y > -4
time = 10
ampl= 5

[state 751,7]
type = changestate
trigger1 =  pos y > -5
ctrl = 1
value = 11


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

[State 900, StateCahnge]
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
value = s700,70

[State 810, 6]
type = PlaySnd
trigger1 = AnimElem = 2
value = s1500,3


[State 1310,1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 48,-96

[State 1310,3]
type = TargetBind
trigger1 = AnimElem = 3
 pos = 44,-99

[State 1310,3]
type = TargetBind
trigger1 = AnimElem = 4
pos = -20,-99

[State 1310,4]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -60



[State 1310,5]
type = TargetState
trigger1 = time= 25
value = 821
[State 1310,5]
type = Targetdrop
trigger1 = time=25
value = 821
[State 1310,6]
type = Turn
trigger1 = Animtime = 0

[State 1310,7]
type = PosAdd
trigger1 = AnimElem = 15
x = -10

[State 1310,8]
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
trigger1 =time=0
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
trigger1 = Command = "recover"
value = 5200

[State 821, 3]
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recover"
value = 5210

[State 821, 4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;-----------------------------
;回旋風
[Statedef 850]
type = S
movetype = A
physics = S
anim = 800
velset = 0,0
ctrl = 0

[State 850, 1]
type = HitDef
Trigger1 = AnimElem = 1
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 860
p2stateno = 870
guard.dist = 0
fall = 1

[State 900, StateCahnge]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------
[Statedef 860]
type = S
movetype = A
physics = N
anim = 860

[State 810, 6]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1500,3

[State 860, 0]
type = Width
trigger1 = Time >= 0
edge = 80,80

[State 860, 1]
type = SprPriority
trigger1 = Time = [1,33]
value = 2

[State 860, 1]
type = SprPriority
trigger1 = Time >= 34
value = 5

[State 810, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 50,0
bindtime = 11

[State 810, 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 8,-45

[State 810, 2]
type = TargetBind
trigger1 = AnimElem =4
pos =40,-113


[State 810, 2]
type = TargetBind
trigger1 = AnimElem = 5
pos = -88,-86
bindtime = 4

[State 810, 2]
type = TargetBind
trigger1 = AnimElem = 6
pos = -55,7
bindtime = 4

[State 810, 5]
type = TargetLifeAdd
trigger1 = AnimElem = 7
value = -65

[State 810, 2]
type = Targetdrop
trigger1 = AnimElem = 7


[State 810, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 8130
postype = p1
pos = 40,-70
sprpriority = 4

[State 810, 4]
type = Explod
trigger1 = AnimElem = 7
anim = 8120
postype = p1
pos = -80,0
sprpriority = 3

[State 810, 6]
type = PlaySnd
trigger1 = AnimElem = 1
value = s700,70

[State 810, 6]
type = PlaySnd
trigger1 = AnimElem = 7
value = s800,0

[State 860, 8]
type = Turn
trigger1 = AnimTime = 0

[State 810, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------
[Statedef 870]
type = A
movetype = H
physics = N
velset = 0,0

[State 870, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 870

[State 870, 2]
type = VelSet
trigger1 = AnimTime = 0
X = 5
;Y = -4
[State 810, 2]
type =posadd
trigger1 = AnimElem = 7
pos = 55,-7

[State 870, 3]
type = ScreenBound
trigger1 = Time >= 0
value = 0

;[State 870, 3]
;type = VelAdd
;trigger1 = Time >= 28
;Y = 0.4

[State 870, 9]
type = SelfState
trigger1 = AnimTime = 0
value = 5100

;---------------------------------------------------------------------------
; Throw 2

[Statedef 900]
type = S
movetype = A
physics = S
anim = 900
sprpriority = 2
juggle = 0
velset = 0,0
ctrl = 0

[State 900, Effect]
type = PlaySnd
trigger1 = time = 0
value = 250, 0


[State 900, Hit]
type = HitDef
Trigger1 = AnimElem = 2
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 910
p2stateno = 911
hitsound = S800, 0
guard.dist = 0
fall = 1

[State 900, StateCahnge]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 910]
type = S
movetype = A
physics = N
anim = 910
poweradd = 60



[State 910, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6|| AnimElem = 8
value = 220, 1

[State 910, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 2, 0

[State 900, Effect]
type = PlaySnd
trigger1 = time = 1
value = 1000, 8


[State 910, Bind]
type = TargetBind
trigger1 = AnimElemTime(42) < 0
pos = 53, -66

[State 910, Bind]
type = TargetBind
trigger1 = AnimElemTime(42) = 0
pos = 53, 0

[State 910, Hurt]
type = TargetLifeAdd
trigger1  = MoveContact =1
trigger2 = animelem = 2
trigger3 = animelem = 4
trigger4 = animelem = 6
trigger5 = animelem = 8
trigger6 = animelem = 12
value = -12
ID = -1
;kill = 1
;absolute = 0
;ignorehitpause =
;persistent =



[state 910, 1]
type = playsnd
trigger1 = time = 0
value = 0, 1


[State 910, Explod]
type = Explod
trigger1  = MoveContact =1
trigger2 = animelem = 2
trigger3 = animelem = 4
trigger4 = animelem = 6
trigger5 = animelem = 8
anim = 7001
;ID =
pos = -10,-65
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =

[State 800, Explod]
type = Explod
trigger1  = MoveContact =1
trigger2 = animelem = 12
anim = 7003
;ID =
pos = -10,-75
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermove
pausemove
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;persistent =


[State 910, Throw]
type = TargetState
trigger1 = AnimElemTime(42) = 0
value = 912

[State 910, State Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 105
ctrl = 0

[Statedef 911]
type = A
movetype = H
physics = N
sprpriority = 2
velset = 0,0

[State 910, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 6 || AnimElem = 24 || AnimElem = 42
value = 5000, 0
volume = 80

[State 910, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 15 || AnimElem = 33 || AnimElem = 51
value = 5000, 1
volume = 80

[State 911, Screen]
type = ScreenBound
trigger1 = 1
Value = 1
movecamera = 1,0

[State 911, Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 911


[Statedef 912]
type = A
movetype = H
physics = N
anim = 5010
sprpriority = 1
velset = -4,-8

[State 912, Gravity]
type = Gravity
Trigger1 = 1

[State 912, Screen]
type = ScreenBound
trigger1 = 1
Value = 1
movecamera = 1,0


[State 912, StateChange]
type = SelfState
trigger1 = AnimTime = 0
value = 5035
;---------------------------------------------------------------------------



; Opponent Thrown
; (a custom gethit state)
; Description: This is the state that the opponent changes to after being
;     hit by the throw HitDef. The important thing here is to use a
;     ChangeAnim2 controller. The difference between ChangeAnim2 and
;     ChangeAnim is that ChangeAnim2 changes the player's animation to
;     an action in the AIR file of the attacker (in this case, kfm.air),
;     whereas ChangeAnim always changes the player to an action in his
;     own AIR file. Look at Action 820 in kfm.air for some extra
;     comments.
[Statedef 920]
type    = A
movetype= H
physics = N
velset = 0,0

[State 920, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 920

;---------------------------------------------------------------------------
; Opponent thrown into the air
; (a custom gethit state)
; Description: This state has the opponent flying through the air and
;     falling down onto the ground. The SelfState controller sets the
;     opponent back using to his own state file when he his the ground.
;     Controllers 821,2 and 821,3 allow the opponent to recover by
;     hitting his recovery command when he is falling.
[Statedef 921]
type    = A
movetype= H
physics = N
velset = 2.8,-7
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 921, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recover"
value = 5200 ;HITFALL_RECOVER

[State 921, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recover"
value = 5210 ;HITFALL_AIRRECOVER

[State 921, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;-------------------------------------------------------
;Soco atravessante
[Statedef 10000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0
anim = 10000
sprpriority = 1

[State 20100, 1]
type = PlaySnd
trigger1 = Time = 1
value = 55, 4

[State 10001, Super B]
type=AfterImage
trigger1= Time = 0
time= 30
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
anim = 6002
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 100,Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 101
anim = 101
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


[State 10000, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = hard
damage    = 100
guardflag = MA
pausetime = 0,30
sparkno = S7060
sparkxy = -10,-74
guard.sparkno = S8209
hitsound   = S55,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 6
ground.velocity = 0
air.velocity = -2.5,-4
fall = 1
air.fall= 1
fall.recover=0

[State 10000, 3]
Type = Velset
trigger1 = AnimElem = 2
x = 15

[State 10000, 4]
Type = VelMul
trigger1 = AnimElem = 3
x = 1.2

[State 10000, 5]
Type = VelMul
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
x = 1.5

[State 10000, 6]
Type = VelMul
trigger1 = AnimElem = 6
x = 1.7

[State 10000,7]
type = PlaySnd
trigger1 = AnimElem = 2,1
value = 0,11

[State 10000, 8]
Type = VelMul
trigger1 = AnimElem = 7
x = 2

[State 10000, 9]
Type = VelMul
trigger1 = AnimElem = 8
x = 1.1


[State 10000, 10]
type = ChangeState
trigger1 = MoveHit
value = 10001
ctrl = 1

[State 10000, 11]
type = ChangeState
trigger1 = MoveGuarded
value = 0
ctrl = 1

[State 10000, 12]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

[State 10000,13 , Explod]
type = Explod
trigger1 = Time = 0
anim = 3004
postype = back
pos = 0, 0
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0

;Atravessando
[statedef 10001]
type = S
Movetype = I
Physics = S
Anim = 10001
ctrl = 0

[State 10001, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 6

[State 10001, Super B]
type=AfterImage
trigger1= Time = 0
time=10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[state 10001,1]
type = posadd
trigger1 = animtime = 0
x = 100

[state 10001,2]
type = changestate
trigger1 = animtime = 0
value = 10002
ctrl = 1

;atravessando (fim)
[Statedef 10002]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 10001
sprpriority = 8

[State 10002, Explod]
type = Explod
trigger1 = Time = 1
anim = F12
postype = p2
pos = -15, -75

[State 10002, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 10002, 5]
type = ChangeState
trigger1 = time = 70
value = 0
ctrl = 1

[State 10002, 6.1]
Type = Velset
trigger1 = AnimElem = 1
x = 8

[State 10002, afterimage]
type=AfterImage
trigger1= Time = 0
time= 15
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 10002, nothittableanything]
type = NotHitBy
trigger1 = 1
type = NotHitBy
value = SCA

[State 10002, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-----------------------------------------------
;Ataque
[statedef 9997]
type = s
movetype = i
physics = s
anim = 1980
velset = 0, 0
sprpriority = 1
ctrl = 0

[State 10002, afterimage]
type=AfterImage
trigger1= Time = 0
time= 10
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[state 3104, 1]
type = veladd
trigger1 =1
x =3

[State 100,Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 101
anim = 101
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

[State 20100, 1]
type = PlaySnd
trigger1 = Time = 3
value = 2, 2

[state 3600 , 1]
type = playsnd
trigger1 = animelem = 2
value = 5,1

[state 3600, 1]
type = playsnd
trigger1 = animelem = 4
value = 5,2

[state 3600 , 1]
type = playsnd
trigger1 = animelem = 6
value = 5,3


[state 3104, 3]
type = changestate
trigger1 = p2bodydist x <30
value = 9998
ctrl = 0


[Statedef 9998]
type = s
movetype = a
physics = s
anim = 9998
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
value = 240, 0

[State 240, 5]
type = varset
trigger1 = var(20) = 4
value = 0
v = 20

[State 200, 1]
type = PlaySnd
trigger1 = Time = 5
value = 15, 7

;[State 220, 1]
;type = velset
;trigger1 = Time = [11,31]
;x = 2

;[State 220, 1]
;type = velset
;trigger1 = Time = [32,36]
;x = 1

[State 220, 1]
type = velset
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
hitflag = HAMF
guardflag = HA
priority = 3
pausetime = 8,13
sparkno = S7001
sparkxy = -10,-60
hitsound   = S240,1
guardsound = S6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 6
ground.velocity = -2
air.velocity = -2,-3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 630, 2]
type = HitDef
trigger1 = Animelem = 4
attr = S, SA
damage = 15
animtype  = Medium
hitflag = HAMF
guardflag = HA
priority = 3
pausetime = 8,12
sparkno = S7001
sparkxy = -20,-40
hitsound   = S230,1
guardsound = S6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 6
ground.velocity = -2
air.velocity = -2,-3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 630, 2]
type = HitDef
trigger1 = Animelem = 5
attr = S, SA
damage = 15
hitflag = HA
guardflag = HAMF
priority = 3
pausetime = 8,12
sparkno = S7001
sparkxy = -20,-65
hitsound   = S240,1
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4, -3
air.velocity = -2,-3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 630, 2]
type = HitDef
trigger1 = Animelem = 6
attr = S, SA
damage = 33
hitflag = HA
guardflag = HMAF
priority = 3
pausetime = 12,12
sparkno = S7001
sparkxy = -20,-90
hitsound   = S250,1
guardsound = S6,0
animtype = digup
ground.type = high
ground.slidetime = 13
ground.hittime  = 13
ground.velocity = -3,-2
air.velocity = -4,-5
guard.cornerpush.veloff=-10
ground.cornerpush.veloff =-12
envshake.ampl=5
envshake.time=5
air.fall = 1
air.fall.recovery = 0
fall = 1
fall.recovery = 0

[State 610, 4]
type = PlaySnd
trigger1 = movehit
triggerall = HitCount > 2
triggerall = AnimTime = 0
value = 14, 6


[State 600, 3]
type = changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------------
;Sequencia de chutes

[statedef 2000]
type = S
movetype = A
physics = S
anim = 2000
poweradd = -2000
velset = 0
juggle = 4
ctrl = 0


[State 3000, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 0
ID = 2

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3


[State 2000, snd2]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1000, 8


[State 3100 , 1]
type = SuperPause
trigger1 = Time = 0
time = 20
anim = -1
darken = 1
supermove = 1
movetime = 20


[state 3302,ex1 ]
type = explod
trigger1 = time = 0
anim = 13300
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

[state 3110, explod]
type = explod
trigger1 = time = 0
anim = 13200
pos = 0, 0
postype = back
sprpriority = -5
removetime = 110
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove= 1



[state 3106, 1]
type = varset
trigger1 = animelem = 1
v = 15
value = 0

[state 3106, 1]
type = varset
trigger1 = movehit
v = 15
value = 1

;[state 3105, sp]
;type = superpause
;trigger1 = time = 0
;darken = 0
;anim = -1
;time = 65

[state 3106, 1]
type = velset
trigger1 = animelem = 6
x = 11

[State 3105, 2]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0, 3


[state 3105, 1]
type = hitdef
trigger1=animelem= 8
sprpriority = 6
forcestand = 1
attr = s, sp
animtype = Heavy
postype = p1
damage = 80
guarDFlag = ma
hitsound   = S1,3
guardsound = s6,0
pausetime = 0,80
palfx.time = 120
sparkno = S7003
sparkxy = -10,-80

[State 3105, 2]
type = PlaySnd
trigger1 = AnimElem = 16
value = 0, 3

[state 3105, 1]
type = hitdef
trigger1=animelem= 18
sprpriority = 6
forcestand = 1
animtype = Heavy
attr = s, sp
postype = p1
damage = 110,30
guarDFlag = ma
hitsound   = S2,0
guardsound = s6,0
pausetime = 20,20
palfx.time = 120
sparkno = S7003
sparkxy = -50,-80
hitsound   = S1,2
guardsound = S6,0
ground.type = light
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -8
air.animtype = light
air.velocity = -4,-5
air.juggle = 2
fall = 1
fall.recover=0


[state 3106, 1]
type = velset
trigger1 = animelem = 17
x = 15

[state 3105, snd]
type = playsnd
trigger1 = animelem = 4
value = 1200,4


[state 3105, 3]
type = changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;Dio Bola

[Statedef 3000]
type    = S
movetype= A
physics = S
velset = 2,0
ctrl = 0
anim = 3000
poweradd = 100

[State 2000, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1500, 1


[State 3000, ChangeState]
Type = ChangeState
trigger1 = AnimElem=2
value = 3001
ctrl = 1

;---------------------------

[Statedef 3001]
type    = S
movetype= A
physics = N
velset = 11
anim = 3001
ctrl = 0

[State 2051,0]
Type=PlaySnd
Trigger1 = Anim=3001&&AnimElem = 1
Value = 60,0

[State 2050, AfterImage]
type = AfterImage
trigger1 = Time= 0
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
damage    = 90
getpower = 10
priority  = 6
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = 1200000
sparkxy = -10,-50
guard.sparkno = S7000000263
sparkxy = 0,-60
hitsound   = S250,1
guardsound = s6,0
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
anim = 13100
pos = 160,220
postype = back
bindtime = 12
supermove = 0
persistent = 0
sprpriority = 1
removeongethit = 0


; Tela treme
[State 1002, T]
type = EnvShake
trigger1 = Movehit
freq = 50
ampl = 5
time = 30
persistent = 1
ignorehitpause = 1


[State 3001, ChangeState]
Type = ChangeState
trigger1 = movecontact
value = 3002

[State 3001, ChangeState]
Type = ChangeState
trigger1 = time = 25
trigger2 = FrontEdgeBodyDist < 5
value = 3005
ctrl = 1

;---------------------------

[Statedef 3002]
type    = A
movetype= A
physics = N
ctrl = 0

[State 3001, VelSet]
Type = VelSet
trigger1 = time = 0
x = -(vel x/2.0)
y = -6

[State 3001, Gravity]
Type = Gravity
trigger1 = 1

[State 3001, ChangeState]
Type = ChangeState
trigger1 = pos y > -1
trigger1 = time > 0
value = 3005

;---------------------------

[Statedef 3005]
type    = C
movetype= A
physics = C
velset = 0,0
ctrl = 0
anim = 3005


[State 1020, PosSet]
Type = PosSet
trigger1 = time = 0
y = 0

[State 1020, ChangeState]
Type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

; Dio bola no Ar

[Statedef 3010]
type    = A
movetype= A
physics = A
velset = 2,0
ctrl = 0
anim = 3000
poweradd = 100

[State 2000, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1500, 1


[State 3010, ChangeState]
Type = ChangeState
trigger1 = AnimElem=2
value = 3072
ctrl = 1

;---------------------------

[Statedef 3072]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 3001
ctrl = 0
poweradd = 0

[State 3051,0]
Type=PlaySnd
Trigger1 = Anim=3001&&AnimElem = 4
Value = 60,0

[State 1022, 2]
type = VelSet
trigger1 = 1
x = 13
y = 6

[State 2051, AfterImage]
type = AfterImage
trigger1 = Time= 0
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
damage    = 100
getpower = 10
priority  = 6
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = s1310000
sparkxy = 0,0
guard.sparkno = S7000000263
hitsound   = S250,1
guardsound = s6,0
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
anim = 13100
pos = 160,220
postype = back
bindtime = 12
supermove = 0
persistent = 0
sprpriority = 1
removeongethit = 0


; Tela treme
[State 1002, T]
type = EnvShake
trigger1 = Movehit
freq = 50
ampl = 5
time = 30
persistent = 1
ignorehitpause = 1



[State 2051, ChangeState]
Type = ChangeState
trigger1 = movecontact
value = 3002

[State 2051, ChangeState]
Type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = FrontEdgeBodyDist < 5
value = 3005
ctrl = 1


;--------------------------

; V Mortal - 1

[Statedef 9010]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 9000
poweradd = -3000

[State 3000, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 0
ID = 2

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[state 900]
type = superpause
trigger1=time=1
time = 30
anim = -1
movetime = 30

[State 0, PlaySnd]
type = PlaySnd
trigger1 =time=0
value = S1000,8

[State 3000,ex ]
type = Explod
trigger1 = time=1
anim = 13200
id=13201
pos = 0, 0
postype = back
sprpriority = -5
removetime = -1
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1


[State 3000,ex ]
type = Explod
trigger1 = time=1
anim = 13300
id=13201
pos = 0, 0
postype = back
sprpriority = -4
removetime = -1
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
[State 3000,vc ]
type = PlaySnd
trigger1 = time = 0
value = 9,1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG
[State 0, PlayerPush]
type = PlayerPush
trigger1 =1
value = 0
;ignorehitpause =
;persistent =


[State 1000, XXXX]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1




[State 1000, xxxxxxx]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 3000,ex ]
type = Explod
trigger1 = time=1
anim = 13200
id=13200
pos = 0, 0
postype = back
sprpriority = -5
removetime = -1
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3000,ex ]
type = Explod
trigger1 = animelem = 1
anim = 13100
pos = 0, 0
postype = p1
sprpriority = -5
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
[State 3100 , 1]
type = SuperPause
trigger1 = Time = 0
time =20
anim = -1
darken = 1
supermove = 1
movetime = 0








[State 0, VelSet]
type = VelSet
trigger1 =animtime=0
x=10
y = Const(velocity.jump.y)/2


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=1
value =180
volume = 0
channel = 4

[State 3000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 9011





;-------------------------------------------------------------------------

[statedef 9011]
type = S
movetype = A
physics =  A
ctrl = 0
anim = 9002
juggle = 12
[State 0, PlayerPush]
type = PlayerPush
trigger1 =1
value = 0
;ignorehitpause =
;persistent =


  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=1
value = 55,0
volume = 0
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=3
value = S0,2
volume = 0
channel = -1
[State 0, PlaySnd]
type = PlaySnd
trigger1 =time=0
value = S1000,9
volume = 0
channel = -1


[State 1000, XXXX]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1

  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic
flag2=nobardisplay

[State 1000, xxxxxxx]
type = AfterImageTime
trigger1 = Time > 1
time = 2
  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause=1


[State 3000,hit2 ]
type = HitDef
trigger1 = animelem= 4
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = heavy
air.animtype = heavy
fall.animtype = Back
damage =50,0
sparkno = s7060
sparkxy = -20,-70
hitsound = s0,5
guardsound = s6,0
ground.slidetime = 4
ground.hittime = 15
ground.velocity = -9,-8
air.velocity = -6,-8
getpower = 0,0
givepower = 0,0
Kill=0
p1stateno=9012
p2stateno=9025
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10


;-------------------------------------------------------------------------

[statedef 9012]
type = S
movetype = A
physics = N
ctrl = 0
anim = 9012
velset=0,0
juggle = 12
[State 0, PlayerPush]
type = PlayerPush
trigger1 =1
value = 0
;ignorehitpause =
;persistent =

[State 0, Pause]
type = superPause
trigger1 =time=0
time = 20
movetime = 0

 [State 860, 0]
type = Width
trigger1 = Time >= 0
edge = 80,80
[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, Explod]
type = Explod
trigger1 =Time=0
anim = 436
ID =435
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


  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic
flag2=nobardisplay

  [State 0, VelSet]
type = Velset
trigger1 =animelem=1
trigger2 =animelem=2
trigger3 =animelem=3
y =10
[State 0, VelSet]
type = Velset
trigger1 =animelem=4
y =0

[State 0, PosAdd]
type = Posset
trigger1 =animelem=4
x =enemy, pos x -5


[State 1000, XXXX]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1


[State 1000, xxxxxxx]
type = AfterImageTime
trigger1 = Time > 1
time = 2
  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause=1



[State 0, ChangeState]
type = ChangeState
trigger1 =time=50
value =9013
ctrl = 0


;-------------------------------------------------------------------------

[statedef 9013]
type = S
movetype = A
physics = N
ctrl = 0
anim = 9013
velset=0,0
juggle = 12
[State 0, PlayerPush]
type = PlayerPush
trigger1 =1
value = 0
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic
flag2=nobardisplay

  [State 0, VelSet]
type = Velset
trigger1 =animelem=1
y =-20

[State 1000, XXXX]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1


[State 1000, xxxxxxx]
type = AfterImageTime
trigger1 = Time > 1
time = 2
  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause=1



[State 0, ChangeState]
type = ChangeState
trigger1 =pos y <= enemy, Const(size.head.pos.y)
value =9014
ctrl = 0




;-------------------------------------------------------------------------

[statedef 9014]
type = S
movetype = A
physics = N
ctrl = 0
anim = 9014
velset=0,0
[State 0, PlayerPush]
type = PlayerPush
trigger1 =1
value = 0
;ignorehitpause =
;persistent =


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic
flag2=nobardisplay
flag3=nojugglecheck

[State 1000, XXXX]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1


[State 1000, xxxxxxx]
type = AfterImageTime
trigger1 = Time > 1
time = 2
  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause=1



[State 3000,hit2 ]
type = HitDef
trigger1 = animelem=3
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = heavy
air.animtype = heavy
fall.animtype = Back
damage =100,0
sparkno = s7060
sparkxy = -20,-70
hitsound = s0,5
guardsound = s6,0
ground.slidetime = 4
ground.hittime = 15
ground.velocity = -9,-8
air.velocity = -6,-8
getpower = 0,0
givepower = 0,0
Kill=0
p1stateno=9015
p2stateno=9026
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

;-------------------------------------------------------------------------

[statedef 9015]
type = S
movetype = A
physics = N
ctrl = 0
velset=0,0
juggle = 12
[State 0, PlayerPush]
type = PlayerPush
trigger1 =1
value = 0
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 0, Explod]
type = Explod
trigger1 =Time=0
anim = 435
ID =435
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


  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic
flag2=nobardisplay

  [State 0, VelSet]
type = Velset
trigger1 =time=0
y =-10
[State 0, VelSet]
type = Velset
trigger1 =animelem=4
y =0



[State 1000, XXXX]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1


[State 1000, xxxxxxx]
type = AfterImageTime
trigger1 = Time > 1
time = 2
  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause=1



[State 0, ChangeState]
type = ChangeState
trigger1 =time=30
value =9016
ctrl = 0



;-------------------------------------------------------------------------

[statedef 9016]
type = S
movetype = A
physics = N
ctrl = 0
anim = 9016
velset=0,0
juggle = 12
[State 0, PlayerPush]
type = PlayerPush
trigger1 =1
value = 0
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic
flag2=nobardisplay

  [State 0, VelSet]
type = Velset
trigger1 =animelem=1
y =20

[State 1000, XXXX]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1


[State 1000, xxxxxxx]
type = AfterImageTime
trigger1 = Time > 1
time = 2
  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause=1



[State 0, ChangeState]
type = ChangeState
trigger1 =pos y >=200
value =9017
ctrl = 0




;-------------------------------------------------------------------------

[statedef 9017]
type = S
movetype = A
physics = N
ctrl = 0
anim = 9017
velset=0,0

 [State 0, PlayerPush]
type = PlayerPush
trigger1 =1
value = 0
;ignorehitpause =
;persistent =

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic
flag2=nobardisplay

  [State 0, VelSet]
type = Velset
trigger1 =animelem=1
y =-4
[State 0, VelSet]
type = VelSet
trigger1 =pos y<=0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 =pos y <=0
y = 0


[State 1000, XXXX]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1

[State 1000, xxxxxxx]
type = AfterImageTime
trigger1 = Time > 1
time = 2
  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause=1


[State 3000,hit2 ]
type = HitDef
trigger1 = animelem=1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = heavy
air.animtype = heavy
fall.animtype = Back
damage =110,0
sparkno = -1
sparkxy = 48,-118
hitsound = s0,5
guardsound = s6,0
ground.slidetime = 4
ground.hittime = 15
ground.velocity = -9,-8
air.velocity = -6,-8
getpower = 0,0
givepower = 0,0
Kill=0
p1stateno=9018
p2stateno=9027
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10



;-----------------------------
[Statedef 9018]
type = S
movetype = A
physics =S
velset=0,0
anim=9018
[State 0, PlayerPush]
type = PlayerPush
trigger1 =1
value = 0
;ignorehitpause =
;persistent =

 [State 0, Explod]
type = Explod
trigger1 =Time=0
anim = 7060
ID =6070
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
 [State 0, PosSet]
type = PosSet
trigger1 = time=0
y = 0
[State 0, Pause]
type = superPause
trigger1 =time=0
time = 20
movetime = 0

 [State 0, TargetState]
type = TargetState
trigger1 =time=24
value = 9028


[State 860, 1]
type = SprPriority
trigger1 = Time = [1,33]
value = 2

[State 860, 1]
type = SprPriority
trigger1 = Time >= 34
value = 5

[State 810, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 48,-118


[State 810, 2]
type = TargetBind
trigger1 = AnimElem =2
pos =69,-83

[State 810, 2]
type = TargetBind
trigger1 = AnimElem =3
pos =53,-41





[State 810, 5]
type = TargetLifeAdd
trigger1 = AnimElem =1
value = -200


[State 0, HitAdd]
type = HitAdd
trigger1 =animelem=3
value = 1

[State 810, 5]
type = TargetLifeAdd
trigger1 = AnimElem =3
value = -50

[State 810, 2]
type = Targetdrop
trigger1 = AnimElem = 4




[State 810, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------

[statedef 9025]
type = S
movetype = H
physics = N
ctrl = 0
velset=0,0
[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 =time=0
value =9050


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1

[State 0, VarSet]
type = VarSet
trigger1 =command="jumpingstone"
v = 10
value =1



  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic


  [State 0, VelSet]
type = Velset
trigger1 =animelem=4
y = -6

[State 0, VelSet]
type = Velset
trigger1 =animelem=5
y =0





  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause=1

 [State 0, SelfState]
type = SelfState
trigger1 =animtime=0
trigger1=var(10)=1
trigger1=name="shura"
value =2000



;-------------------------------------------------------------------------

[statedef 9026]
type = S
movetype = H
physics = N
ctrl = 0
velset=0,0


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 =time=0
value =9051



  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic


  [State 0, VelSet]
type = Velset
trigger1 =animelem=4
y = 3

[State 0, VelSet]
type = Velset
trigger1 =animelem=7
y =0





  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause=1




;-------------------------------------------------------------------------

[statedef 9027]
type = S
movetype = H
physics = N
ctrl = 0
velset=0,0


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 =time=0
value =9027



  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = nomusic


  [State 0, VelSet]
type = Velset
trigger1 =animelem=4
y = 3

[State 0, VelSet]
type = Velset
trigger1 =animelem=7
y =0





  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause=1


;-------------------------------------------------------------------------

[statedef 9028]
type = S
movetype =H
physics = N
ctrl = 0
velset=0,0


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 =time=0
value =9028


  [State 0, PosAdd]
type = PosAdd
trigger1 =animelem=4
x = -53
y = 41

  [State 0, VelSet]
type = Velset
trigger1 =animelem=5
y = -6

[State 0, SelfState]
type = SelfState
trigger1 =animtime=0
value =5050

;-------------------------------------------------------------------------
;--------------------------

; V Mortal - 1

[Statedef 9000]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 9000
poweradd = -2000

[State 3000, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 0
ID = 2

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[state 900]
type = superpause
trigger1=time=1
time = 30
anim = -1
movetime = 30


[State 0, PlaySnd]
type = PlaySnd
trigger1 =time=0
value = S1000,8

[State 3000,ex ]
type = Explod
trigger1 = time=1
anim = 13300
id=13200
pos = 0, 0
postype = back
sprpriority = -4
removetime =-1
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
[State 3000,vc ]
type = PlaySnd
trigger1 = time = 0
value = 9,1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG


[State 1000, XXXX]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1




[State 1000, xxxxxxx]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 3000,ex ]
type = Explod
trigger1 = time=1
anim = 13200
id=13200
pos = 0, 0
postype = back
sprpriority = -5
removetime = -1
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3000,ex ]
type = Explod
trigger1 = animelem = 1
anim = 13100
pos = 0, 0
postype = p1
sprpriority = -5
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
[State 3100 , 1]
type = SuperPause
trigger1 = Time = 0
time =20
anim = -1
darken = 1
supermove = 1
movetime = 0




[State 3000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 9001



;-------------------------------------------------------------------------

[statedef 9001]
type = S
movetype = A
physics =  S
ctrl = 0
anim = 9001
juggle = 15


 [State 1000, XXXX]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1



[State 1000, xxxxxxx]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 3000,hit2 ]
type = HitDef
trigger1 = animelem= 4
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = heavy
air.animtype = heavy
fall.animtype = Back
damage =50,0
pausetime =50,50
sparkno = s7060
sparkxy = -20,-70
hitsound = s0,5
guardsound = s6,0
ground.slidetime = 50
ground.hittime=50
ground.hittime =50
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

[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=2
value = S0,2
volume = 0
channel = -1

[State 0, VelSet]
type = VelSet
trigger1 =animtime=0
x=2
y = Const(velocity.jump.y)


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause=1

[State 3000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 9002

;-------------------------------------------------------------------------

[statedef 9002]
type = S
movetype = A
physics =  A
ctrl = 0
anim = 9002
juggle = 12
[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=1
value = 55,0
volume = 0
channel = -1
 [State 3000,ex ]
type = Explod
trigger1 = animelem = 1
anim = 7405
pos = 0, 0
postype = p1
sprpriority = -5
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime =1
persistent = 0
removeongethit = 1
supermove = 1
[State 0, PlaySnd]
type = PlaySnd
trigger1 =animelem=3
value = S0,2
volume = 0
channel = -1
[State 0, PlaySnd]
type = PlaySnd
trigger1 =time=0
value = S1000,9
volume = 0
channel = -1


[State 1000, XXXX]
type = AfterImage
trigger1 = Time = 1
time = 2
PalColor = 0
trans=add1



[State 1000, xxxxxxx]
type = AfterImageTime
trigger1 = Time > 1
time = 2
  [State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = noBG
flag2 = noFG
flag3 = nojugglecheck
ignorehitpause=1

[State 0, TargetBind]
type = TargetBind
trigger1 =animelem=4
id = -1
pos = 0,0


[State 3000,hit2 ]
type = HitDef
trigger1 = animelem= 4
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = heavy
air.animtype = heavy
fall.animtype = Back
damage =150,0
pausetime =50,50
sparkno = s7060
sparkxy = -20,-70
hitsound = s0,5
guardsound = s6,0
ground.slidetime = 4
ground.hittime = 15
ground.velocity = -9,-8
air.velocity = -6,-8
getpower = 0,0
givepower = 0,0
palfx.time = 50
Kill=1
p2stateno=1425
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10



[statedef 4002]
type = A
movetype = I
physics =  N
ctrl = 0
anim = 4002

[State 3002,v ]
type = VelAdd
trigger1 = time > 0
y = .8

[State 3002,st1]
type = ChangeState
trigger1 = pos Y >= 0
value = 52


;-------------------------------------------------------------------------------
[Statedef 1425]
type    = A
movetype= H
physics = N
velset = 0,0



[State 1025, 相手アニメ変更]
type = ChangeAnim2
trigger1 = 1
value = 1425

[State 1025, ステート変更]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1426


[Statedef 1426]
type    = A
movetype= H
physics = N

[State 1026, 食らい中の速度]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1026, 速度加算];重力
type = VelAdd
trigger1 = 1
y = .45

[State 1026, スクロール]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, ステート変更];激突ステートへ
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1427

[State 1026, 相手ステートに戻す]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;激突
[Statedef 1427]
type    = A
movetype= H
physics = N

[State 0, VarSet]
type = VarSet
trigger1 =time=0
v = 10
value =1

[State 0, VarSet]
type = VarSet
trigger1 =time=1
v = 10
value =0


[State 0, LifeAdd]
type = LifeAdd
trigger1 =time=0
value = -50
kill = 1
absolute = 0
;ignorehitpause =
;persistent =


[State 1027, 振り返る]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, 軸位置移動]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, 位置固定]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, スクロール]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, エフェクト]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor(screenpos y) - 50 ;
postype = back
Scale=.5,.5
sprpriority = 3

[State 1027, 相手アニメ変更]
type = ChangeAnim2
trigger1 = Time = 0
value = 1427

[State 1027, 音を鳴らす]
type = PlaySnd
trigger1 = Time = 0
value = F3,2



[State 1027, ステート変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 1428

;壁バウンド
[Statedef 1428]
type    = A
movetype= H
physics = N


[State 1028, 移動速度]
type = VelSet
trigger1 = Time = 0
y = -6

[State 1028, 移動速度]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 1028, 振り返る]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1028, 速度加算];重力
type = VelAdd
trigger1 = 1
y = .35

[State 1028, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, アニメ変更]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052



[State 1028, アニメ変更]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, アニメ変更]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, 相手ステートに戻す]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;--------------------------
; V Mortal - 1

[Statedef 4000]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 4000
poweradd = -3000

[State 3100 , 1]
type = SuperPause
trigger1 = Time = 0
time = 30
anim = -1
darken = 1
supermove = 1
movetime =30


[State 3000,vc ]
type = PlaySnd
trigger1 = time = 0
value = 1500,1


[State 3000,ex ]
type = Explod
trigger1 = animelem =3
anim = 13200
pos = 0, 0
postype = back
sprpriority = -5
removetime = 70
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1


[State 3000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 4001


[statedef 4001]
type = S
movetype = A
physics =  N
ctrl = 0
anim = 4001
velset = 9,-2
juggle = 12



[state 3302,ex1 ]
type = explod
trigger1 = time =0
anim = 13300
pos = 0,0
id = 4000
removetime = 50
sprpriority = -1
scale = 1,1
postype = back
bindtime = -1
removeongethit = 1


[State 3000,ex ]
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

;[State 3000,ex ]
;type = Explod
;trigger1 = (movehit) && (numexplod(3005) = 0) && (time > 10)
;anim = 3005
;ID = 3005
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
sparkno = s700300
sparkxy = -20,-70
hitsound = s5,0
guardsound = s6,0
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

[State 3050, 1]
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
damage = 230
pausetime = 10,10
sparkno = s7003
sparkxy = -50,-70
hitsound = S0,5
guardsound = s6,0
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


[State 3001,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1000,9

[State 3001,nh ]
type = NotHitBy
trigger1 = time > 5
value = SCA,NA,SA

[State 3000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 4002


[statedef 4002]
type = A
movetype = I
physics =  N
ctrl = 0
anim = 4002

[State 3002,v ]
type = VelAdd
trigger1 = time > 0
y = .8

[State 3002,st1]
type = ChangeState
trigger1 = pos Y >= 0
value = 52


;--------------------------------------
[Statedef 3050]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
ctrl = 0
velset = 0,0,0
anim = 2201

[State 3001,sn ]
type = PlaySnd
trigger1 =  AnimElem = 1
value = 1000,9

[State 220, RUN_FWD]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 6002
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 220, RUN_FWD]
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


[State 100,Explod]
type = Explod
trigger1 = (!time)
ID = 101
anim = 101
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

[State 2201, 1]
type = null;PlaySnd
trigger1 = Animelem = 1
value = s1500,4


[State 2201, 1]
type = velset
trigger1 = AnimElem = 1, > 0
x = 20

[State 2201, 2]
type = veladd
trigger1 = AnimElem = 4, >= 0
x = -8

[State 2201, 3]
type = NotHitBy
trigger1 = Animelem < = 1
value = SCA



[State 2201, Hit]
type = HitDef
trigger1 = Time >= 5
trigger2 = Time <= 9
;trigger1 = p2movetype != A
attr = S, HA
animtype  = Light
guardflag = MA
hitflag = M
pausetime = 0,0
sparkno = -1
;sparkxy = -10,-70
;hitsound   = s1,3
;guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = 0,0
snap = 50, 0, 0
numhits = 1


[State 2201, 4]
type = ChangeState
trigger1 = Movecontact = 1
value = 3051
ctrl = 1

[State 2201, 5] ; Caso n縊 acerte o P2, voltar a anima鈬o Stand.
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 3051]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 3050
ctrl = 0
sprpriority = 2


[State 3000,ex ]
type = Explod
trigger1 = animelem = 1
anim = 13200
pos = 0, 0
postype = back
sprpriority = -5
removetime = 80
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[state 3302,ex1 ]
type = explod
trigger1 = time =0
anim = 13300
pos = 0,0
removetime = 80
sprpriority = -1
scale = 1,1
postype = back
bindtime = -1
removeongethit = 1

[State 3050, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(16) < 0
value = 5,0

[State 3050, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1500, 2

[State 3050, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 3

[State 3050, kosumo]
type = Explod
trigger1 = time = 2
anim = 3051
facing = 1
pos = -0,0
postype = right
sprpriority = -2
supermove = 1
removetime = 55
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0


[State 3050, Super B]
type = AfterImage
trigger1 = AnimElem = 2
time = 2

[State 3050, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) >= 0
time = 2

[State 3050, Super D]
type = NotHitBy
trigger1 = AnimElem = 2
value = , NA, SA, AT
time = 6

[State 3050, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 2

[State 3050, 2]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype  = Up               ;Make p2 use "Up" type animation on hit
damage    = 135
getpower  = 0
priority  = 5
guardflag = MA
pausetime = 10,10
sparkno = S7003
sparkxy = -10,-80
hitsound   = s0,5
guardsound = s6,0
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

[State 250, 3]
type = Explod
trigger1 = MoveHit
anim = 13100
pos = 160,220
postype = back
bindtime = 12
supermove = 0
persistent = 0
sprpriority = -1
removeongethit = 0

[State 3050, 4]
type = ChangeState
trigger1 = MoveHit
value = 3052

[State 3050, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
;  (success)
;
[Statedef 3052]
type    = S
movetype= A
physics = S
anim = 3051

[State 3051, 1]
type = AfterImageTime
trigger1 = AnimTime < -2
time = 2

[State 3051, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------
;combo

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
hitsound   = s1,2
guardsound = s6,0
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
hitdefpersist = 1 ;Keep the HitDef from previous state active

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
value = 40, 0

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

; Kung Fu Knee - kick
[Statedef 1055]
type    = A
movetype= A
physics = N
anim = 1055

[State 1055, 1]
type = PlaySnd
trigger1 = Time = 0
value = 100,0
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
hitsound   = s1,3
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

[State 1055, 6] ;Change state when KFM is close to ground
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -5
value = 1056

;------------------
; Kung Fu Knee - land from kick
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
value = 40, 0

[State 1056, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Strong  Knee
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
hitsound   = s1,2
guardsound = s6,0
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
; Strong Kung Fu Knee - jump
[Statedef 1061]
type    = A
movetype= A
physics = N
velset = 2.5,-7.5
anim = 1061
hitdefpersist = 1 ;Keep the HitDef from previous state active

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


;---------------------------------------------------------------------------;
;                               Golpe Furioso                              ;
;---------------------------------------------------------------------------;
;-----------------------------;
;        A for軋 da mosca      ;
;-----------------------------;

[Statedef 2200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1500
ctrl = 0
anim = 2200


[State 2200,SuperPause]
type = SuperPause
trigger1 = animelem = 4
pos = 33, -70
anim = 2200
sound = 20, 0
movetime = 100;250
time =100;250


[state 2200, Escurer]
type = BgPalFx
trigger1 = AnimElem = 7;3
add = 0,0,0
sinadd = -255,-255,-255,100
time = 40


[State 2200, Oiiieee]
type = PlaySnd
trigger1 = Animelem = 1
value = s170,0

[State 2200, Prepara-se!!!]
type = PlaySnd
trigger1 = Animelem = 11
value = s1000,8


[State 2200, 3]
type = ChangeState
trigger1 = Animelem = 23
value = 2201
ctrl = 1


;-----------------------------;
; Corrida antes do ataque     ;
;-----------------------------;

[Statedef 2201]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 10
ctrl = 0
velset = 0,0,0
anim = 1980


[State 220, RUN_FWD]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 6002
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1


[State 220, RUN_FWD]
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


[State 100,Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 101
anim = 101
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


[state 3104, 1]
type = veladd
trigger1 =1
x =7

[state 3600 , 1]
type = playsnd
trigger1 = animelem = 1
value = 5,1

[state 3600, 1]
type = playsnd
trigger1 = animelem = 2
value = 5,2

[state 3600 , 1]
type = playsnd
trigger1 = animelem = 3
value = 5,1

[state 3600 , 1]
type = playsnd
trigger1 = animelem = 4
value = 5,2

[state 3104, 3]
type = changestate
trigger1 = p2bodydist x <30
value = 2202
ctrl = 0


[State 2201, 5] ; Caso n縊 acerte o P2, voltar a anima鈬o Stand.
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------;
;       Metendo o pau          ;
;------------------------------;

[Statedef 2202]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd = 0
ctrl = 0
velset = 0,0,0
anim = 2202

[State 2200, 1]
type = PlaySnd
trigger1 = Animelem = 10
value = s400,0

[State 2202, 1]
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



[State 2202, 1]
type = EnvShake
Trigger1 = animelem = 38
time = 15
ampl = -10;-3
freq = 90
phase = 90

[State 1100, 1]
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

[State 2202, 2]
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

[State 2202, 3]
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
damage    = 8
guardflag = MA
pausetime = 5,21;11
sparkno = S7000
sparkxy = -10,-82
hitsound   = s230,1
guardsound = s6,0
ground.type = High;Low
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 0  ;-5,-5
air.velocity = -2.2,-3.2
palfx.time=5
palfx.add= 100,10,0;106,79,154;150,129,183;61,17,123
palfx.mul= 61,17,123
snap = 50, 0, 0

[State 2202, 4]
type = HitDef
trigger1 = AnimElem = 38
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 5,0;11
sparkno = S13100
sparkxy = 0,0
hitsound   = s250,1
guardsound = s6,0
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


[state 3110, explod]
type = explod
trigger1 = time = 0
anim = 13200
pos = 0, 0
postype = back
sprpriority = -5
removetime = 290
ownpal = 1
scale = 1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove= 1

[state 3302,ex1 ]
type = explod
trigger1 = time = 20
anim = 13300
pos = 0,0
removetime = 150
sprpriority = -5
scale = 1,1
postype = back
bindtime = -1
removeongethit = 1
supermove = 1
ignorehitpause = 1

[State 2202, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------------------;
; Para onde o ataque joga o P2 ;
;------------------------------;

; Ver State 2202 para mais detalhes

[Statedef 1025]
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

;------------------
; (a custom gethit state)
[Statedef 1026]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 10
y = 1

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

;===============================
;sequencia de chutes no ar

[Statedef 3100]
type = A
movetype = A
physics = N
anim = 3100
velset = 0,0
ctrl = 0
poweradd = -1000
facep2 = 1

[State 3100, 2]
type = PlaySnd
trigger1 = Time = 1
value = s1500,4
channel = 1


[State 3000, 2]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 40


[State 3000,3]
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

[State 3000,4]
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

[State 3000,5]
type = SuperPause
trigger1 = Time = 1
movetime = 32
time = 32
anim = -1

[State 3100, 2]
type = PlaySnd
trigger1 = Time = 3
value = s600,10

[State 3100, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = s100,20
channel = 1

[State 3100, 3]
type = VelSet
trigger1 = AnimElem = 3
X = 6
Y = 6

[State 3100, 8]
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
p1stateno = 3110
sparkno = s8040
guard.sparkno = s8030
sparkxy = -10, -30
hitsound = s700,40
guardsound = s6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0,-4
air.velocity = 0,-4
guard.velocity = -13
fall = 0
air.fall = 1
fall.recover = 0

[State 3100, 9]
type = ChangeState
trigger1 = Pos Y >= 0
value = 3120

;Ｈｉｔせず着地
[Statedef 3120]
type = C
movetype = I
physics = C
anim = 3120
velset = 0,0
ctrl = 0

[State 3120, 1]
type = PosSet
trigger1 = Time = 0
Y = 0

[State 3120, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------
;Ｈｉｔ
[Statedef 3110]
type = A
movetype = A
physics = N
anim = 3110
velset = 0,0


[State 3100, 2]
type = PlaySnd
trigger1 = AnimElem = 34
value = s100,40
channel = 1

[State 3110, 0]
type = AssertSpecial
trigger1 = Time >= 0
flag = noautoturn

[State 3110, 1]
type = PosAdd
trigger1 = Time = [1,20]
Y = -1.5


[State 3100, 8]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 7
attr = A, HA
damage = 20,4
getpower = 0
animtype =Heavy
guardflag = M
hitflag = MAF
pausetime = 0,1
sparkno = s7000
guard.sparkno = s8030
sparkxy = -10, 17
hitsound = s700,40
guardsound = s6,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0,-3.5
air.velocity = 0,-3.5
hitonce = 0
fall = 1
air.fall = 1
fall.recover = 0


[State 3100, 8]
type = HitDef
trigger1 = AnimElem = 9
attr = A, HA
damage = 50,10
getpower = 0
animtype = UP
guardflag = M
hitflag = MAF
pausetime = 26,26
sparkno = s7001
guard.sparkno = s8030
sparkxy = -10, 4
hitsound = s700,40
guardsound = s6,0
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


[State 3110, 2]
type = VelAdd
trigger1 = Time > 88
Y = 0.5

[State 3110, 9]
type = ChangeState
trigger1 = Time > 10
trigger1 = Pos Y >= 0
value = 3130

;-----------------------------------------
;命中して着地
[Statedef 3130]
type = C
movetype = I
physics = C
anim = 3130
velset = 0,0

[State 3130, 1]
type = PosSet
trigger1 = Time = 0
Y = 0

[State 3130, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;===================================
;chute da musca no ar

[Statedef 90000]
type    = S
movetype= A
physics = s
juggle  = 4
poweradd= 65
anim = 90000
ctrl = 0
sprpriority = 2

[state 900]
type = superpause
trigger1=time=1
time = 35
anim = -1
movetime = 35

[state 3302,ex1 ]
type = explod
trigger1 = time = 0
anim = 13300
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

[state 3302,ex1 ]
type = explod
trigger1 = time = 0
anim = 435
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


[State 901, 2]
type = PlaySnd
trigger1 = Time = 0
value = 3000, 0

[state 900]
type = posadd
trigger1=time=1
x=p2bodydist x
y=p2bodydist y

[state 900,7]
type = changestate
trigger1 =  time = 35
ctrl = 0
value = 90001

;gira en el aire y da la patada

[Statedef 90001]
type    = A
movetype= A
physics = s
juggle  = 4
anim = 90001
poweradd= -2000
ctrl = 0
sprpriority = 2

[state 901, explod]
type=explod
trigger1=time=0
anim= 13200
sprpriority = -1
supermove = 1
bindtime= 252
removetime=150
pos=0,0
postype=back


[state 901, superpausa]
type = superpause
trigger1 = time = 0
time = 100
movetime = 100
anim = -1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  animtime !=0
flag = unguardable

[State 3050, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0, 3

[State 901, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 200
guardflag = HA
priority = 4
fall=1
pausetime = 20,20
sparkno = s7003
sparkxy = -30,-41
hitsound   = S250,1
guardsound = s6,0
animtype = heavy
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,0
air.velocity = -10,-10
envshake.time = 50
envshake.freq = 10
envshake.ampl = 20

[state 901,7]
type = changestate
trigger1 =  animtime = 0
ctrl = 0
value = 45
;--------------------------
; Recarrega Cosmo

[Statedef 24000]
type = S
movetype = I
physics = S
anim = 2400
velset = 0
ctrl = 0

[State 24000, Var]
type = VarSet
triggerall = var(59) = 1
trigger1 = Time = 0
v = 10
value = 1

[State 24000, cosmo]
type = Explod
trigger1 = Time = 0
anim = 2402
id= 2402
sprpriority = -1
postype = p1
pos = 0,0
bindtime = 1
supermove = 1
ownpal = 1
removetime = -1
removeongethit = 1


[State 900, voce]
type = PlaySnd
trigger1 = Time = 10
value = 55, 7


[State 901, envshake]
type = EnvShake
trigger1 = time = 20
time = 30

[State 1200, explod]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 402
id = 2402
sprpriority = 1
postype = p1
bindtime = 1
supermove = 1
ownpal = 1
removetime = -1
removeongethit = 1

[State 1200, explod]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 403
id = 2402
sprpriority = 0
postype = p1
bindtime = 1
supermove = 1
ownpal = 1
removetime = -1
removeongethit = 1

[State 700,p ]
type = PowerAdd
trigger1 = (time > 10) && (timemod = 3,0)
value = 39

[State 700,st ]
type = ChangeState
trigger1 = command != "holdcosmo"
trigger2 = power = 3000
value = 2401

[statedef 2401]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 2401
velset = 0,0

[State 2401, Var]
type = VarSet
trigger1 = Time = 0
v = 10
value = 0

[State 2401, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 0

[State 2401,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 2402

[State 2401,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;========================================================================
; ataque na velocidade do som  - punho

[Statedef 6000]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 6000
ctrl = 0
sprpriority = 2

[State 6000, AfterImage]
type = AfterImage
trigger1 = Time= 0
time = 15
trans = add1
palbright = 0,0,0
palcontrast = 128,128,128
PalAdd=0,0,0
PalMul=1,1,1
length = 20
timegap = 1

[State 6000, 5]
type = AfterImageTime
trigger1 = Time >= 0
time = 15


[State 6000, 1]
type = PlaySnd
trigger1 = Time =0
value = 13,0

[State 6000, 5]
type = VelSet
trigger1 = time >= 0
x = -20

[State 6000, 5]
type = VelSet
trigger1 = time >= 10
x = 0

[State 6000, 8]
type = ChangeState
trigger1 = AnimTime>=10
value = 0
ctrl = 1

[State 6000, 8]
type = ChangeState
trigger1 = BackEdgeDist <= 20
value = 6001
ctrl = 1

;----------------------------------------

; Aparecendo atr疽 do p2
[Statedef 6001]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 6001

[State 100,Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 101
anim = 101
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


[State 6001, 5]
type = turn
trigger1 = 1
persistent = 0

[State 6001, 5]
type = VelSet
trigger1 = 1
x = 7

[State 6001, 5]
type = PosAdd
trigger1 = time = 0
x = (P2Dist X) - 400

[State 6001, 5]
type = ChangeAnim
trigger1 = movecontact
value = 60002

[State 6001, 6]
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
sparkno = s7002
hitsound   = s250,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 24
ground.hittime  = 30
ground.velocity = 10,0
air.velocity = -4,-3
p2facing = 1
air.fall = 1
kill = !var(58) || 1*p2stateno=003


[State 6001, 8]
type = ChangeState
trigger1 = time >= 20
trigger2 = movecontact && animtime = 0
value = 0
ctrl = 1

;----------
; Combando |
;----------

[State 6001, C.Fr]
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

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;ataque na velocidade do som aereo - punho

[Statedef 6050]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 6003
ctrl = 0
sprpriority = 2

[State 6050, AfterImage]
type = AfterImage
trigger1 = Time= 0
time = 15
trans = add1
palbright = 0,0,0
palcontrast = 128,128,128
PalAdd=0,0,0
PalMul=1,1,1
length = 20
timegap = 1

[State 6050, 5]
type = AfterImageTime
trigger1 = Time >= 0
time = 15

[State 6050, 1]
type = PlaySnd
trigger1 = Time = 0
value = 13,0

[State 6050, 5]
type = VelSet
trigger1 = time >= 0
x = -20

[State 6050, 8]
type = ChangeState
trigger1 = BackEdgeDist <= 20
value = 6051
ctrl = 1

;-----------------------------------

; Aparecendo atr疽 do p2
[Statedef 6051]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 120
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 6004

[State 6051, 5]
type = turn
trigger1 = 1
persistent = 0

[State 6051, 5]
type = VelSet
trigger1 = 1
x = 7
y = 6

[State 6051, 5]
type = PosAdd
trigger1 = time = 0
x = (P2Dist X) - 400

[State 6051, 5]
type = ChangeAnim
trigger1 = movecontact
value = 6005

[State 6051, 6]
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
sparkno = s7000
hitsound   = s250,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 24
ground.hittime  = 30
ground.velocity = -10,0
air.velocity = -4,-3
p2facing = 1
air.fall = 1
kill = !var(58) || 1*p2stateno=003

[State 6051, 8]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = movecontact && animtime = 0 && Pos Y >= 0
value = 0
ctrl = 1

;========================================================================
; ataque na velocidade do som  - chute

[Statedef 3200]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 3200
ctrl = 0
sprpriority = 2

[State 6000, AfterImage]
type = AfterImage
trigger1 = Time= 0
time = 15
trans = add1
palbright = 0,0,0
palcontrast = 128,128,128
PalAdd=0,0,0
PalMul=1,1,1
length = 20
timegap = 1

[State 6000, 5]
type = AfterImageTime
trigger1 = Time >= 0
time = 15


[State 6000, 1]
type = PlaySnd
trigger1 = Time =0
value = 13,0

[State 6000, 5]
type = VelSet
trigger1 = time >= 0
x = -20

[State 6000, 5]
type = VelSet
trigger1 = time >= 10
x = 0

[State 6000, 8]
type = ChangeState
trigger1 = AnimTime>=10
value = 0
ctrl = 1

[State 6000, 8]
type = ChangeState
trigger1 = BackEdgeDist <= 20
value = 3201
ctrl = 1

;----------------------------------------

; Aparecendo atr疽 do p2
[Statedef 3201]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 3201

[State 100,Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 101
anim = 101
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

[State 6001, 5]
type = turn
trigger1 = 1
persistent = 0

[State 6001, 5]
type = VelSet
trigger1 = 1
x = 8

[State 6001, 5]
type = PosAdd
trigger1 = time = 0
x = (P2Dist X) - 400

[State 6001, 5]
type = ChangeAnim
trigger1 = movecontact
value = 3202

[State 6001, 6]
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
sparkno = s7001
hitsound   = s250,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 24
ground.hittime  = 30
ground.velocity = -4,0
air.velocity = -4,-3
p2facing = 1
air.fall = 1
kill = !var(58) || 1*p2stateno=003
fall = 1

[State 6001, 8]
type = ChangeState
trigger1 = time >= 20
trigger2 = movecontact && animtime = 0
value = 0
ctrl = 1

;----------
; Combando |
;----------

[State 6001, C.Fr]
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

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;ataque na velocidade do som aereo - chute

[Statedef 3203]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 3203
ctrl = 0
sprpriority = 2

[State 6050, AfterImage]
type = AfterImage
trigger1 = Time= 0
time = 15
trans = add1
palbright = 0,0,0
palcontrast = 128,128,128
PalAdd=0,0,0
PalMul=1,1,1
length = 20
timegap = 1

[State 6050, 5]
type = AfterImageTime
trigger1 = Time >= 0
time = 15

[State 6050, 1]
type = PlaySnd
trigger1 = Time = 0
value = 13,0

[State 6050, 5]
type = VelSet
trigger1 = time >= 0
x = -20

[State 6050, 8]
type = ChangeState
trigger1 = BackEdgeDist <= 20
value = 3204
ctrl = 1

;-----------------------------------

; Aparecendo atr疽 do p2
[Statedef 3204]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 120
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 3204

[State 6051, 5]
type = turn
trigger1 = 1
persistent = 0

[State 6051, 5]
type = VelSet
trigger1 = 1
x = 8
y = 6

[State 6051, 5]
type = PosAdd
trigger1 = time = 0
x = (P2Dist X) - 400

[State 6051, 5]
type = ChangeAnim
trigger1 = movecontact
value = 3205

[State 6051, 6]
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
sparkno = s7001
hitsound   = s250,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 24
ground.hittime  = 30
ground.velocity = -4,0
air.velocity = -4,-3
p2facing = 1
air.fall = 1
kill = !var(58) || 1*p2stateno=003
fall = 1

[State 6051, 8]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = movecontact && animtime = 0 && Pos Y >= 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]
;[State 0, HitAdd]
;type = HitAdd
;trigger1 =1
;value =enemy, var(10)

;cosmos stande
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = stateno != 0
ID = 2
[State -3,remove]
type = RemoveExplod
trigger1 = stateno !=(9000,9030)
ID = 13201
;cosmos stande
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = anim = 5
ID = 2


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =stateno !=(8999,9005)
id =13200
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = stateno != 0
ID = 3

;cosmos stande
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = anim = 5
ID = 3

;cosmos stande
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(3) = 1
trigger1 = life > 300
ID = 3

;cosmos stande
[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2) = 1
trigger1 = life < 300
ID = 2

[State -3] 
type = RemoveExplod
triggerall = NumExplod(2402) = 1
trigger1 = stateno !=24000
ID = 2402

[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 106 ;Run-back land
value = 40,0


[State -3, 1]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 3
value =40,1


[State -3, 2]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 6
value =40,2


[State -3, 1]
type = PlaySnd
trigger1 = stateno = 21
trigger1 = AnimElem = 3
value =40,2

[State -3, 2]
type = PlaySnd
trigger1 = stateno = 21
trigger1 = AnimElem = 6
value =40,1




[State -3, 3]
type = PlaySnd
trigger1 = stateno = 40
trigger1 = Time = 0
value = 2,1

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = 2, 2

;caer
[State -3 , 2]
type = PlaySnd
trigger1 = stateno = 52
trigger1 = Time = 1
value = 52,0

[State -3 , 7]
type = PlaySnd
triggerall = stateno = 5120
trigger1 = time = 1
value = 5120,0

[State -3, RUN_FWD]
type = Explod
triggerall = stateno = 100
trigger1 = AnimElem = 2
pos = 0,0
anim = 6002
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State -3, RUN_FWD]
type = AfterImage
triggerall = stateno = 100
trigger1 = time = 1
time = 30
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State -3, RUN_BACK]
type = Explod
triggerall = stateno = 105
trigger1 = time = 5
pos = -10,20
anim = 4040
sprpriority = 5
supermove = 1
removeongethit = 1
scale = 0.6, 0.6
ownpal = 1


;Play "OWW!!" sound when hit
[State -3, 1]
type = PlaySnd
triggerall = ((Time = 1) && (var(8) < 500) && (random < 600))
trigger1 = (stateno = 5001) && (random < 500)
value = 5000, 0
channel = 5

[State -3, 2]
type = PlaySnd
triggerall = ((Time = 1) && (var(8) < 500) && (random < 600))
trigger1 = (stateno = 5040) && (random < 400)
value = 5000, 1
channel = 5

[State -3, 3]
type = PlaySnd
triggerall = ((Time = 1) && (var(8) < 500) && (random < 600))
trigger1 = (stateno = 5050)&& (random < 400)
value = 5000, 2
channel = 5

[State 0, StopSnd]
type = StopSnd
trigger1 =stateno!=(9009,9500)
channel = 4


