;---------------------------------------------------------------------------
; ST FILE by WarriorZ
;---------------------------------------------------------------------------

; Lose by Time Over
[Statedef 170,lose time over]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,Assertspecial]
type     = AssertSpecial
trigger1 = Time = [0,50]
flag     = roundnotover

[State 170,voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 170,0
channel = 0

[State 170,nothitby]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win Pose (state decider)
[Statedef 180,winpose decider]
type = S

; Win Pose nevidiasgard KO
[State 180]
type = ChangeState
trigger1 = Time = 0
trigger1 = Var(40) = 1
value = 183

; Win Pose 1 (round win)
[State 180]
type = ChangeState
triggerall = Var(9) = 0
trigger1 = Time = 0
trigger1 = MatchOver = 0
value = 181

; Win Pose 2 (match win)
[State 180]
type = ChangeState
triggerall = Var(9) = 0
trigger1 = Time = 0
trigger1 = MatchOver = 1
value = 182

;---------------------------------------
; Win Pose 1 (round win)
[Statedef 181,winpose1]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 191]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 181, Land]
type = PlaySnd
trigger1 = Time = 5
value = 3,0

[State 181, voice]
type = PlaySnd
trigger1 = Var(2) = [0,33]
trigger1 = animelem = 7
value = 181,0
channel = 0

[State 181, voice]
type = PlaySnd
trigger1 = Var(2) = [34,66]
trigger1 = animelem = 7
value = 181,1
channel = 0

[State 181, voice]
type = PlaySnd
trigger1 = Var(2) = [67,99]
trigger1 = animelem = 7
value = 3320,0
channel = 0

[State 181, assert]
type = AssertSpecial
trigger1 = Var(2) = [0,33]
trigger1 = Time = [0,200]
flag = roundnotover

[State 181, assert]
type = AssertSpecial
trigger1 = Var(2) = [34,66]
trigger1 = Time = [0,310]
flag = roundnotover

[State 181, assert]
type = AssertSpecial
trigger1 = Var(2) = [67,99]
trigger1 = Time = [0,100]
flag = roundnotover

[State 181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win Pose 2 (final round win)
[Statedef 182,winpose2]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 4

[State 182, cloth remove]
type = PlaySnd
trigger1 = Time = 0
value = 190,0

[State 182, cloth]
type = Explod
trigger1 = AnimElem = 2
anim = 183
postype = p1
pos = 0, 0
removetime = 415
sprpriority = 6

[State 182, cloth compose]
type = PlaySnd
trigger1 = Time = 30
value = 190,6

[State 182, flare]
type = Explod
trigger1 = AnimElem = 5
anim = 1820
postype = p1
pos = 0, 0
removetime = 384
sprpriority = 5

[State 182, flare voice]
type = PlaySnd
trigger1 = time = 67
value = 182,0
channel = 0

[State 182, artax voice]
type = PlaySnd
trigger1 = animelem = 8
value = 182,1
channel = 0

[State 182, Assert]
type     = AssertSpecial
trigger1 = Time = [0,410]
flag     = roundnotover

[State 182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win Pose 3 (neviasgard KO)
[Statedef 183,winpose1]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 183, Voice]
type = playsnd
;trigger1 = AnimElem = 1
trigger1 = time = 0
value = 3300,3
channel = 0

[State 183, Assert]
type     = AssertSpecial
trigger1 = Time = [0,210]
flag     = roundnotover

[State 183]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Intro (state decider)
[Statedef 190,intro decider]
type = S
ctrl = 0
velset = 0,0

[State 191]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

;Intro 1 (cape)
[State 191]
type = ChangeState
trigger1 = Var(2) = [0,33]
value = 191

;Intro 2 (clothing)
[State 192]
type = ChangeState
trigger1 = Var(2) = [34,66]
value = 192

;Intro 3 (asgardiani)
[State 190, 6]
type = changestate
trigger1 = p2name != "artax" && p2name != "hagen" && p3name != "artax" && p3name != "hagen" && p4name != "artax" && p4name != "hagen" && p2name != "hilda" && p2name != "ilda" && p3name != "hilda" && p3name != "ilda" && p4name != "hilda" && p4name != "ilda"
triggerall = var(2) = [67,99]
value = 193

;intro 3 (benvenuto)
[State 190, 6]
type = changestate
trigger1 = p2name = "artax" || p3name = "artax" || p4name = "artax" || p2name = "hilda" || p3name = "hilda" || p4name = "hilda"
trigger2 = p2name = "hagen" || p3name = "hagen" || p4name = "hagen" || p2name = "ilda" || p3name = "ilda" || p4name = "ilda"
triggerall = var(2) = [67,99]
value = 194

;---------------------------------------
; Intro 1 (cape)
[Statedef 191,  intro1 cape]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, changeanim]
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 191, assertspecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, Posadd]
type = Posadd
trigger1 = time = 0
x = -19
y = -55

[State 191, VelSet]
type = VelSet
trigger1 = time = 0
y = 3
x = 1

[State 191, VelSet]
type = Velset
trigger1 = pos y = 0
y = 0
x = 0

[State 191, Snd]
type = PlaySnd
trigger1 = time = 1
value = 2,0

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

[State 191, changestate 1910]
type = Changestate
trigger1 = pos y >= 0;AnimTime = 0
value = 1910

; intro1 (land)
[Statedef 1910,intro1 land]
type = S
ctrl = 0
anim = 1910
velset = 0,0

[State 1910, 1]
type = AssertSpecial
trigger1 = time = [0,265]
flag = intro

[State 1910, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2

[State 1910, voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 191,0+ifelse(random<500,0,1)
channel = 0

[State 1910, explod]
type = Explod
trigger1 = AnimElem = 37;31;13
anim = 1911
postype = p1
pos = 0, 10
velocity = -2, -0.5
removetime = 25

[State 1910, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 1910, changestate 0]
type = Changestate
trigger1 = Time = 265;221;110
value = 0

;---------------------------------------
; Intro 2 (clothing)
[Statedef 192,intro2 cloth]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192]
type = AssertSpecial
trigger1 = Time = [0,340]
flag = Intro
flag2 = nobardisplay

[State 192, cloth]
type = Explod
trigger1 = time = 0
anim = 50
pos = 0,0
postype = p1
sprpriority = 3
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 163

[State 192, flash]
type = EnvColor
trigger1 = time = 295
value = 255,255,255
under = 0
time = 3

[State 192, voice]
type = PlaySnd
trigger1 = time = 0
value = 192, 0
channel = 0

;Clothe Elem 1
[State 192, 1]
type = PlaySnd
trigger1 = time = 99
value = 190, 0

;Clothe Elem 2
[State 192, 2]
type = PlaySnd
trigger1 = animelem = 18
value = 190, 1

;Clothe Elem 3
[State 192, 3]
type = PlaySnd
trigger1 = animelem = 19
value = 190, 2

;Clothe Elem 4
[State 192, 4]
type = PlaySnd
trigger1 = animelem = 21
value = 190, 3

;Clothe Elem 5
[State 192, 5]
type = PlaySnd
trigger1 = animelem = 22
value = 190, 4

;Clothe Elem 6
[State 192, 6]
type = PlaySnd
trigger1 = animelem = 24
value = 190, 5

;Clothe Elem 7
[State 192, 7]
type = PlaySnd
trigger1 = animelem = 25
value = 190, 6

;Clothe Elem 8
[State 192, 8]
type = PlaySnd
trigger1 = animelem = 27
value = 190, 7

;Clothe elem final
[State 192, 9]
type = PlaySnd
trigger1 = animelem = 28
value = 190, 8

[State 192, constellation cosmo]
type = Explod
trigger1 = time = 330
anim = 6001
ID = 6011
pos = 0,-50
postype = p1
sprpriority = -5
ignorehitpause = 1
ownpal = 1
removetime = 55
scale=.75,.75

[State 192, constellation bling]
type = null;PlaySnd
trigger1 = time = 327
value = 9,1

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

[State 192, Stand]
type = ChangeState
trigger1 = Time = 340
value = 0
ctrl = 0

;-------------------------------------------------------------------------------
; Intro asgardiani
[Statedef 193,intro3 asgardiani]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, assertspecial]
type = AssertSpecial
trigger1 = time = [0,425]
flag = intro
flag2= noshadow

[State 193, nothitby]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 193, explod carro]
type = Explod
triggerall = NumExplod(341) = 0
trigger1 = animelem = 1
anim = 341
ID = 341
removeongethit = 1
removetime = 380
postype = p1
pos = -50, -20
sprpriority = -8
bindtime = -1
scale = .75,.75

[State 193, explod cosmo]
type = explod
trigger1 = time = 0
pos = 0,0
anim = 19800
pos = 0, 0
removetime = 400
sprpriority = -2
ownpal = 1

[State 193, explod hilda]
type = explod
trigger1 = time = 0
pos = 5,0
anim = 184
removetime = 390
sprpriority = -1
ownpal = 1

[State 193, voice] ;hilda
type = PlaySnd
trigger1 = time = 0
value = 193, 0
channel = 1


;sigfried
[State 193,1]
type = explod
trigger1 = time = 0
id =1841
pos = 0,0
anim = 1841
removetime = 390
sprpriority = 0
ownpal = 1
[State 193, RemoveExplod]
type = RemoveExplod
triggerall = time = 0
id = 1841
trigger1 = p2name = "sigfried" || p3name = "sigfried" || p4name = "sigfried"
trigger2 = p2name = "sigfried d'Alpha" || p3name = "sigfried d'Alpha" || p4name = "sigfried d'Alpha"
trigger3 = p2name = "sigfried de dubhe" || p3name = "sigfried de dubhe" || p4name = "sigfried de dubhe"
trigger4 = p2name = "orion" || p3name = "orion" || p4name = "orion"
trigger5 = p2name = "orion di Asgard" || p3name = "orion di Asgard" || p4name = "orion di Asgard"


;mime
[State 193,2]
type = explod
trigger1 = time = 0
id =1842
pos = 0,0
anim = 1842
removetime = 390
sprpriority = 2
ownpal = 1
[State 193, RemoveExplod]
type = RemoveExplod
triggerall = time = 0
id = 1842
trigger1 = p2name = "mime" || p3name = "mime" || p4name = "mime"
trigger2 = p2name = "mime de eta" || p3name = "mime de eta" || p4name = "mime de eta"
trigger3 = p2name = "mime de Benetosh" || p3name = "mime de Benetosh" || p4name = "mime de Benetosh"
trigger4 = p2name = "mime di Asgard" || p3name = "mime di Asgard" || p4name = "mime di Asgard"


;luxor
[State 193,3]
type = explod
trigger1 = time = 0
id =1843
pos = 0,10
anim = 1843
removetime = 390
sprpriority = 1
ownpal = 1
[State 193, RemoveExplod]
type = RemoveExplod
triggerall = time = 0
id = 1843
trigger1 = p2name = "fenrir" || p3name = "fenrir" || p4name = "fenrir"
trigger2 = p2name = "fenrir de Epsilon" || p3name = "fenrir de Epsilon" || p4name = "fenrir de Epsilon"
trigger3 = p2name = "fenrir d'Alioth" || p3name = "fenrir d'Alioth" || p4name = "fenrir d'Alioth"
trigger4 = p2name = "luxor" || p3name = "luxor" || p4name = "luxor"
trigger5 = p2name = "luxor di Asgard" || p3name = "luxor di Asgard" || p4name = "luxor di Asgard"


;megres
[State 193,4]
type = explod
trigger1 = time = 0
id =1844
pos = 0,0
anim = 1844
removetime = 390
sprpriority = 2
ownpal = 1
scale= .90,.90
[State 193, RemoveExplod]
type = RemoveExplod
triggerall = time = 0
id = 1844
trigger1 = p2name = "alberich" || p3name = "alberich" || p4name = "alberich"
trigger2 = p2name = "alberich de delta" || p3name = "alberich de delta" || p4name = "alberich de delta"
trigger3 = p2name = "alberich de megrez" || p3name = "alberich de megrez" || p4name = "alberich de megrez"
trigger4 = p2name = "megres" || p3name = "megres" || p4name = "megres"
trigger5 = p2name = "megres di Asgard" || p3name = "megres di Asgard" || p4name = "megres di Asgard"


;syd
[State 193,5]
type = explod
id =1845
trigger1 = time = 0
pos = 0,0
anim = 1845
removetime = 390
sprpriority = -3
ownpal = 1
[State 193, RemoveExplod]
type = RemoveExplod
triggerall = time = 0
id = 1845
trigger1 = p2name = "syd" || p3name = "syd" || p4name = "syd"
trigger2 = p2name = "syd de zeta" || p3name = "syd de zeta" || p4name = "syd de zeta"
trigger3 = p2name = "syd de mizar" || p3name = "syd de mizar" || p4name = "syd de mizar"
trigger4 = p2name = "mizar" || p3name = "mizar" || p4name = "mizar"
trigger5 = p2name = "mizar di Asgard" || p3name = "mizar di Asgard" || p4name = "mizar di Asgard"


;thor
[State 193,6]
type = explod
id =1846
trigger1 = time = 0
pos = 0,0
anim = 1846
removetime = 390
sprpriority = -3
ownpal = 1
[State 193, RemoveExplod]
type = RemoveExplod
triggerall = time = 0
id = 1846
trigger1 = p2name = "tholl" || p3name = "tholl" || p4name = "tholl"
trigger2 = p2name = "tholl de gamma" || p3name = "tholl de gamma" || p4name = "tholl de gamma"
trigger3 = p2name = "tholl de Phecda" || p3name = "tholl de Phecda" || p4name = "tholl de Phecda"
trigger4 = p2name = "thor" || p3name = "thor" || p4name = "thor"
trigger5 = p2name = "thor di Asgard" || p3name = "thor di Asgard" || p4name = "thor di Asgard"


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

[State 193, changestate 0]
type = ChangeState
trigger1 = animTime = 0
value = 0

;-----------------------------------------------------------------------------
;intro benvenuto
[Statedef 194,intro4 benvenuto]
type = S
ctrl = 0
anim = 194
velset = 0,0
sprpriority = 1

[State 194, assertspecial]
type = AssertSpecial
trigger1 = time = [0,216]
flag = intro

[State 194, voice]
type = PlaySnd
trigger1 = time = 0
value = 194, 0
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

[State 194, changestate 0]
type = ChangeState
trigger1 = Time = 216
value = 0

;---------------------------------------
; Taunt (state decider)
[Statedef 195,taunt decider]
type = S
ctrl = 0
velset = 0,0

[State 195]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

; taunt risata
[State 195]
type = ChangeState
trigger1 = Var(2) = [0,25]
value = 196

; taunt fiamma
[State 195]
type = ChangeState
trigger1 = Var(2) = [26,50]
value = 197

; taunt dito
[State 195]
type = ChangeState
trigger1 = Var(2) = [51,75]
value = 198

; taunt conserto
[State 195]
type = ChangeState
trigger1 = Var(2) = [76,99]
value = 199

;---------------------------------------
; Taunt risata
[Statedef 196,taunt1 risata]
type = S
ctrl = 0
anim = 196
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 196, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 196,0+ifelse(random<500,0,1)
channel = 0

[State 196, changestate 0]
type = ChangeState
trigger1 = Time = 62
trigger2 = numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------
; Taunt fiamma
[Statedef 197,taunt2 fiamma]
type = S
ctrl = 0
anim = 197
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 197, voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 197,0
channel = 0

[State 197, changestate 0]
type = ChangeState
trigger1 = Time = 333
trigger2 = numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------
; Taunt dito
[Statedef 198,taunt3 dito]
type = S
ctrl = 0
anim = 198
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 198, voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 198,0+ifelse(random<500,0,1)
channel = 0

[State 198, changestate 0]
type = ChangeState
trigger1 = Time = 350
trigger2 = numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------
; Taunt conserto
[Statedef 199,taunt4 conserto]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 199, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 199,0+ifelse(random<500,0,1)
channel = 0

[State 199, changestate 0]
type = ChangeState
trigger1 = Time = 220
trigger2 = numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Light Punch
[Statedef 200,a]
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
trigger1 = Time = 1
value = 0,0

[State 200 , 2]
type = HitDef
trigger1 = AnimElem = 3
priority = 3
attr = S, NA
damage = 20
animtype = light
guardflag = MA
sparkno = s7000
sparkxy = -10,-95
hitsound = s1,0
guardsound = s6,0
pausetime = 8,8
ground.hittime = 10
ground.type = high
ground.slidetime = 5
ground.velocity = -4
air.velocity = -1.4,-3
getpower = 0
givepower = 0
;fall=1

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Medium Punch
[Statedef 210,b]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 6,12
sparkno = s7001
sparkxy = -10,-80
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4
getpower = 0
givepower = 0

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Heavy Punch
[Statedef 220,c]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 5,0
anim = 220
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = Time = 8
value = 0,2

;[State 220, Velset]
;type = VelSet
;trigger1 = time > 5
;x = 2

[State 220, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 6,12
sparkno = s7002
sparkxy = -10,-85
hitsound = s1,2
guardsound = s6,0
ground.type = high
ground.slidetime = 18
ground.hittime  = 20
ground.velocity = -10
air.velocity = -4,-2
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5
getpower = 0
givepower = 0

[State 220, Velset]
type = VelSet
trigger2 = animelem = 4
trigger1 = movecontact = 1
x = 0

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Light Kick
[Statedef 230,x]
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
value = 0,0

[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = light
damage    = 20
guardflag = MA
pausetime = 0,8
sparkno = s7000
sparkxy = -10,-50
hitsound = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -7
air.velocity = -3,-2
getpower = 0
givepower = 0

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Light Kick (close)
[Statedef 235,xx]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 235
sprpriority = 2

[State 225, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0,0

[State 225, 2]
type = PosAdd
trigger1 = AnimElem = 3
x = 5

[State 225, 3]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = light
damage    = 25
guardflag = MA
pausetime = 2,9
sparkno = s7000
sparkxy = 0,-80
hitsound = s1,0
guardsound = s6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
getpower = 0
givepower = 0

[State 225, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Medium Kick
[Statedef 240,y]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 9,9
sparkno = s7001
sparkxy = -10,-100
hitsound = s1,1
guardsound = s6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-2
getpower = 0
givepower = 0

[State 240, powter]
type = Explod
trigger1 = AnimElem = 2
pos = 0,-6
anim = 7080
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Medium Kick (close)
[Statedef 245,yy]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 245
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 35
guardflag = MA
pausetime = 9,9
sparkno = s7001
sparkxy = -10,-100
hitsound = s1,1
guardsound = s6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-2
getpower = 0
givepower = 0

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Heavy Kick
[Statedef 250,z]
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
value = 0,2

[State 250, 2]
type = HitDef
trigger1 = Time = 13
attr = S, NA
animtype  = hard
damage    = 40
guardflag = MA
pausetime = 4,12
sparkno = s7002
sparkxy = 0,-115
hitsound = s1,2
guardsound = s6,0
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
supermove = 1
removeongethit = 1
ownpal = 1

[State 250, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Heavy Kick (close)
[Statedef 255,zz]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 255
sprpriority = 2

[State 250, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, 2]
type = HitDef
trigger1 = Time = 4
attr = S, NA
animtype  = hard
damage    = 45
guardflag = MA
pausetime = 8,12
sparkno = s7002
sparkxy = 0,-115
hitsound = s1,2
guardsound = s6,0
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
supermove = 1
removeongethit = 1
ownpal = 1

[State 250, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Crouching Light Punch
[Statedef 400,a]
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
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = s7000
sparkxy = -10,-42
hitsound = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -4
air.velocity = -1.5,-3
getpower = 0
givepower = 0

[State 400, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouching Medium Punch
[Statedef 410,b]
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
trigger1 = Time = 1
value = 0,1

[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
priority  = 3
animtype  = medium
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = s7001
sparkxy = -10,-50
hitsound = s1,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -4
air.velocity = -4,-1
getpower = 0
givepower = 0

[State 410, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouching Heavy Punch
[Statedef 420,c]
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
trigger1 = Time = 1
value = 0,2

[State 420, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 40
animtype  = hard
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-55
hitsound = s1,2
guardsound = s6,0
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
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage    = 20
animtype  = hard
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-83
hitsound = s1,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -3,-4
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouch Light Kick (vicino)
[Statedef 430,x]
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
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7000
sparkxy = -10,-2
hitsound = s1,0
guardsound = s6,0
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
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------
; Crouch Heavy Kick (Calcio Scivolata) (lontano)
[Statedef 435]
type = C
movetype = A
physics = C
anim = 460
juggle = 1
velset = 0,0
ctrl = 0
poweradd= 50

[State 435]
type = VelAdd
trigger1 = AnimElem = 2
x = 7

[State 435]
type = PlaySnd
trigger1 = Time = 0
value = 7,0

[State 435]
type = HitDef
trigger1 = AnimElem = 2
priority = 5
attr = C, NA
damage = 40
animtype = Light
hitflag = MAFD
guardflag = LA
sparkno = S7002
sparkxy = 0,-10
hitsound = s1,1
guardsound = S6,0
pausetime = 9,9
ground.hittime = 10
ground.type = trip
ground.slidetime = 11
ground.velocity = -6
air.velocity = -4,-3
envshake.time = 10
envshake.ampl = 8
envshake.phase = 10
fall = 1

[State 435]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouch Light Kick (lontano)
[Statedef 440,y]
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
trigger1 = Time = 2
value = 0,1

[State 440, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
animtype  = medium
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-60
hitsound = s1,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
down.velocity = -5,0
down.hittime = 20
getpower = 0
givepower = 0

[State 440, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouch Medium Kick (vicino)
[Statedef 445,yy]
type    = C
movetype= A
physics = C
velset = 0,0
juggle  = 7
poweradd= 50
ctrl = 0
anim = 445
sprpriority = 2

[State 445, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0,1

[State 445, Velset]
type = VelSet
trigger1 = AnimElem = 2
x = 2

[State 445, powter]
type = Explod
trigger1 = AnimElem = 1
pos = -50,-5
anim = 7080
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 445, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002
sparkxy = 0,0
hitsound = s1,2
guardsound = s6,0
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

[State 445, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouch Medium Kick (lontano)
[Statedef 450,z]
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
trigger1 = Time = 5
value = 0,1

[State 450, Velset]
type = VelSet
trigger1 = AnimElem = 2
x = 2

[State 450, powter]
type = Explod
trigger1 = AnimElem = 1
pos = -50,-5
anim = 7080
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 450, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002
sparkxy = 0,0
hitsound = s1,2
guardsound = s6,0
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
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouch Heavy Kick (Freestyle vicino)
[Statedef 455,zz]
type    = C
movetype= A
physics = C
velset = 0,0
juggle  = 7
poweradd= 50
ctrl = 0
anim = 455
sprpriority = 2

[State 455, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0,1

[State 455, 2]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
trigger7 = animelem = 8
attr = C, NA
damage    = 18
hitflag = MAF
guardflag = L
pausetime = 6,6
sparkno = s7002
sparkxy = 0,-40
hitsound = s1,2
guardsound = s6,0
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

[State 455, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Jumping Light Punch
[Statedef 600,a]
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
damage = 20
animtype = Light
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s7000
sparkxy = -10,-58
hitsound = s1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 600, 3]
type = CtrlSet
trigger1 = Time = 17
value = 1

;---------------------------------------
; Jumping Medium Punch
[Statedef 610,b]
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
value = 0,1

[State 610, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-55
hitsound = s1,1
guardsound = s6,0
animtype = Medium
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
getpower = 0
givepower = 0

[State 610, 3]
type = CtrlSet
trigger1 = Time = 23
value = 1

;---------------------------------------
; Jumping Heavy Punch
[Statedef 620,c]
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
trigger1 = Time = 2
value = 0,2

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 621
pos = 9,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 24
sprpriority = 5
ownpal = 1

[State 610, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
guardflag = HA
priority = 4
pausetime = 12,6
sparkno = -1
sparkxy = 0,10
hitsound = s1,1
guardsound = s6,0
animtype = Medium
ground.type = High
ground.slidetime = 7
ground.hittime  = 7
ground.velocity = -5
air.velocity = -3,-4
getpower = 0
givepower = 0
fall = 1

[State 620, 3]
type = CtrlSet
trigger1 = Time = 23
value = 1

;---------------------------------------
; Jumping Light Kick
[Statedef 630,x]
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
animtype = Light
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7000
sparkxy = -10,-55
hitsound = s1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3
getpower = 0
givepower = 0

[State 630, 3]
type = CtrlSet
trigger1 = Time = 20
value = 1

;---------------------------------------
; Jumping Medium Kick
[Statedef 640,y]
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
trigger1 = Time = 2
value = 0,1

[State 640, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
animtype = Medium 
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7001
sparkxy = -10,-40
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4
getpower = 0
givepower = 0

[State 640, 3]
type = CtrlSet
trigger1 = Time = 19
value = 1

;---------------------------------------
; Jumping Heavy Kick
[Statedef 650,z]
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
animtype = Hard
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7002
sparkxy = -10,-40
hitsound = s1,2
guardsound = s6,0
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
trigger1 = Time = 23
value = 1

;---------------------------------------
; Throw
[Statedef 800, throw]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 50
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, Hitdef]
type = HitDef
Trigger1 = Time = 0
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
getpower = 0
givepower = 0

[State 800, 1]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw (p1 state)
[Statedef 810,throw p1 state]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60

[State 810, voice]
type = playsnd
trigger1 = animelem = 1
value = 810,0
channel = 0

[State 1550, voice]
type = playsnd
trigger1 = animelem = 5
value = 810,1
channel = 0

[State 810, Holding fwd?]
type = VarSet
trigger1 = Time = 0
var(2) = command = "holdfwd"

[State 810, Holding back]
type = Turn
trigger1 = Time = 20
trigger1 = command = "holdback"

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(1) < 0 && AnimElemTime(2) < 0
pos = 40, 0

[State 810, Bind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 55, 0

[State 810, Bind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 68, -10

[State 810, Bind 4]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 50, -40

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(8) < 0
pos = 10, -65

[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 0, -55

[State 810, Bind 8]
type = TargetBind
trigger1 = AnimElem = 9
pos = 50, -50

[State 810, Throw 11]
type = TargetState
trigger1 = Animelem = 10
value = 821

[State 810, holdfwd - Turn Target 6] ;If was holding fwd before, turn target too
type = TargetFacing
trigger1 = var(2)
trigger1 = AnimElem = 5
value = -1

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw (p2 state)
[Statedef 820,throw p2 state]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

;---------------------------------------------------------------------------
; Throw (p2 state) in the air
[Statedef 821,throw p2 state air]
type    = A
movetype= H
physics = N
velset = -4,-6
poweradd = 40

[State 821, 1]
type = VelAdd
Trigger1 = 1
y = .4

[State 810, Hurt 11]
type = LifeAdd
triggerall = Vel Y > 0
trigger1 = Pos Y >= 0
value = -100

[State 821, 2]
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= 0
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

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
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
trigger1 = Time = 0
v = 10
value = 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 9, 1

[State 900, voice]
type = PlaySnd
triggerall = power < 3000
triggerall = movetype != H
trigger1 = Animelem = 1
value = 900,0
channel = 0

[State 900, shake]
type = EnvShake
trigger1 = AnimElem = 3
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

[State 901, sound]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9,2

[State 900, StopSnd]
type = StopSnd
trigger1 = command != "charge"
trigger2 = command != "charge 1"
channel = -1

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

[State 901, cavallo]
type = Explod
trigger1 = time = 0
triggerall = NumExplod(6001) = 0
anim = 6001
ID = 6001
pos = 0,-50
postype = p1
sprpriority = -4
scale = 0.75,0.75
removetime = -1

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

[State 901, cosmo]
type = Explod
triggerall = power < 3000
triggerall = animelem = 1
triggerall = NumExplod(911) = 0
trigger1 = 1
pos = 0,0
anim = 911
sprpriority = -1
supermove = 1
removeongethit = 1
bindtime = -1
ownpal = 1
ID = 911
removetime = -1

[State 901]
type = ChangeState
triggerall = Var(59) = 0
trigger1 = command != "charge"
trigger2 = command != "charge 1"
value = 902

[State 901, End]
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

[State 902, removeexplod]
type = RemoveExplod
triggerall = numexplod(911) >= 0
trigger1 = stateno != 901
ID = 911

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
value = 9,3

[State 902]
type = ChangeState
trigger1 = AnimTime= 0
value =0
ctrl = 1

;---------------------------------------
; Barrier (start)
[Statedef 950,barrier]
type = S
movetype = I
physics = S
velset = 0,0
anim = 950
ctrl = 0
sprpriority = 1

[State 950, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3,0

[State 950, cosmo]
type = Explod
triggerall = numexplod(955) >= 0
trigger1 = animelem = 1
pos = 0,0
anim = 955
sprpriority = -2
supermove = 1
removeongethit = 1
bindtime = -1
ownpal = 1
ID = 955
removetime = 10

[State 950, explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7006
pos = 60,-80
sprpriority = 2
scale = .5,.5

[State 950, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,1

[State 950, voice]
type = PlaySnd
triggerall = power > 0
triggerall = movetype != H
trigger1 = AnimElem = 1
value = 950,0
channel = 0

[State 950, cosmo]
type = Explod
triggerall = power > 0
triggerall = animelem = 1
triggerall = NumExplod(955) = 0
trigger1 = 1
pos = 0,0
anim = 955
sprpriority = -2
supermove = 1
removeongethit = 1
bindtime = -1
ownpal = 1
ID = 955
removetime = 10

[State 950, changestate 951]
type = ChangeState
trigger1 = AnimTime = 0
value = 951
ctrl = 1

;---------------------------------------
; Barrier (guarding)
[Statedef 951]
type    = S
movetype= I
physics = S
juggle  = 2
velset = 0,0
anim = 951
ctrl = 0
sprpriority = 1

[State 951]
type = PowerAdd
trigger1 = Time= [0,10]
value = -20

[State 951, cosmo]
type = Explod
triggerall = NumExplod(956) = 0
trigger1 = 1
pos = 0,0
anim = 956
sprpriority = -2
supermove = 1
removeongethit = 1
bindtime = -1
ownpal = 1
ID = 956

[State 951, 2]
type = ReversalDef
trigger1 = 1
reversal.attr = SCA,AA,AP,AT
sparkno = s59
sparkxy = -10,-90
pausetime = 6,15
p1stateno = 952
hitsound = s5,3

[State 951, 3]
type = HitOverride
trigger1 = 1
time = 2
attr = SCA,AA,AP,AT
stateno = 952
ignorehitpause = 1

[State 951, 4]
type = HitBy
trigger1 = 1
value = SCA,AA,AP,AT
time = 2

[State 951, explod]
type = Explod
triggerall = numexplod(7006) = 0
trigger1 = AnimElem = 1
anim = 7006
pos = 60,-80
scale = 1, 1
sprpriority = 2
removetime = -1
bindtime = -1
id = 7006

[State 951, 7]
type = ChangeState
trigger1 = command != "barrier1"
trigger2 = command != "barrier2"
value = 0;953
ctrl = 1

[State 951, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 951
ctrl = 1

[State 951, 9]
type = ChangeState
trigger1 = Power = 0
value = 0;953
ctrl = 1

;---------------------------------------
; Barrier (during attack)
[Statedef 952]
type    = S
movetype= A
physics = S
velset = -12,0
anim = 951
poweradd = 200
ctrl = 0

[State 952]
type = PowerAdd
trigger1 = Time= [0,10]
value = -20

[State 952, 1]
type = ReversalDef
trigger1 = 1
reversal.attr = SAC,AA,SP
sparkno = s59
sparkxy = -10,-90
pausetime = 6,15
p1stateno = 952
hitsound = s5,3

[State 952, 2]
type = HitBy
trigger1 = 1
value = SCA, AP
time = 2

[State 952, 3]
type = HitOverride
Trigger1 = 1
time = 2
attr = SCA,AP
stateno = 952
ignorehitpause = 1

[State 952, 4]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 3

[State 952, 5]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA
time = 1

[State 952, 6]
type = RemoveExplod
trigger1 = time = 0
ID = 7006

[State 952, 7]
type = HitDef
trigger1 = Time = 0
attr = S,SA
animtype  = Hard
hitflag = MA
damage = 0,0
;guard.sparkno = 0
guardflag = MA
sparkno = s7003
sparkxy = 30,-50
hitsound = s5,3
guardsound = s6,1
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 1
fall.recover = 1
fall.damage = 0
;PalFX
palfx.time = 55
palfx.add = 50,50,50
getpower = 0
givepower = 0

[State 952, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 951
ctrl = 1

[State 952, 9]
type = ChangeState
trigger1 = Power = 0
value = 0;953
ctrl = 1

;---------------------------------------
; Barrier (end)
[Statedef 953]
type    = S
movetype= I
physics = S
juggle  = 2
velset = 0,0
anim = 952
ctrl = 0
sprpriority = 2

[State 953, powerset]
type = PowerSet
triggerall = (Power >= 2000)
trigger1 = AnimTime = 0
value = 2000

[State 953, powerset]
type = PowerSet
triggerall = (Power >= 1000) && (Power < 2000)
trigger1 = AnimTime = 0
value = 1000

[State 953, powerset]
type = PowerSet
triggerall = (Power > 0) && (Power < 1000)
trigger1 = AnimTime = 0
value = 0

[State 953, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,1

[State 953, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3,0

[State 953, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; 7th Sense - recover
[Statedef 999,7thsense - recover]
type = S
movetype = I
physics = S
anim = 999
poweradd = 0
velset = 0,0
ctrl = 0

[State 999, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 999]
type = AssertSpecial
trigger1 = Time = 25
flag = nomusic
persistent = 1

[State 999]
type = SuperPause
trigger1 = Time = 10
time = 25
anim = s70091
pos = 4, -68
darken = 1

[State 999]
type = VarSet
trigger1 = time = 1
v = 8
value = 1

[State 999, palfx]
type = PalFX
trigger1 = time = 10
time = 900
add = 5,5,5
sinadd = 40,40,40,3

[State 999, 1]
type = RemoveExplod
trigger1 = 1
ID = 2

[State 999, 1]
type = RemoveExplod
trigger1 = 1
ID = 3

[State 999, big light]
type = Explod
triggerall = NumExplod(7030) = 0
trigger1 = AnimElem = 1
anim = 7030
ID = 7030
pos = -1,-75
sprpriority = -5
ignorehitpause = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 24
ownpal = 1
scale = .6,.6

[State 999, big light]
type = Explod
triggerall = NumExplod(7031) = 0
trigger1 = AnimElem = 1
anim = 7031
ID = 7031
pos = -1,-73
sprpriority = -5
ignorehitpause = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 24
ownpal = 1
scale = .6,.6
vfacing = -1

[State 999, powter]
type = Explod
trigger1 = AnimElem = 1
pos = -5,12
anim = 7088
sprpriority = 5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 999, powter]
type = Explod
trigger1 = AnimElem = 1
pos = 5,12
anim = 70881
sprpriority = 5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 999]
type = EnvShake
trigger1 = Time = 5
time = 50

[State 999, voice]
type = PlaySnd
trigger1 = Time = 0
value = 999,0
channel = 0

[State 999]
type = PlaySnd
trigger1 = Time = 15
value = 9,3

[State 999]
type = PlaySnd
trigger1 = Time = 15
value = 9,0

[State 999]
type = LifeAdd
trigger1 = AnimTime = 1
value = 100

[State 999]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Special Moves (Statedef 1000-2999)
;------------------------------------------------------------------------------

; fireball
[Statedef 1100,fireball1            special1]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1100
poweradd = -50
sprpriority = 4

[State 1100, Explod]
type = Explod
trigger1 = time = 0
anim = 6200
pos = -9,-20
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 12
sprpriority = 5
ownpal = 1
scale = 0.8,0.8

[State 1100, Projectile]
type = Projectile
trigger1 = animelem = 3
ProjID = 6201
projanim = 6201
;projhitanim = 6202
velocity = 4.5,0
sparkno = S6202
sparkxy = 60,0
projpriority = 3         ;p2,front,back,left,right
attr = S,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
getpower = 0,0
givepower = 0,0
animtype = up         ;light,medium,hard,back,up,diagup
air.animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,20
pausetime = 0,30
hitsound = 0,0
guardsound = 0,0
ground.type = low      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 0
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
fall = 0
projscale = 0.8,0.8
palfx.time = 30
palfx.add = 40,-70,-200
palfx.sinadd = 40,30,0,10
palfx.color = 0
palfx.invertall = 1

[State 1100, burn]
type = playsnd
trigger1 = animelem = 1
value = 1100,0

[State 1100, burn]
type = playsnd
trigger1 = animelem = 1
value = 1100,1
channel = 0

[State 1100, changestate 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-------------------------------------------------------------------------------
; colonna di fuoco
[Statedef 1200,colonnafuoco  special2]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1200
poweradd = -50
sprpriority = 4

[State 1200, burn]
type = playsnd
trigger1 = animelem = 3
value = 1200,0

[State 1200, burn]
type = playsnd
trigger1 = animelem = 3
value = 1200,1
channel = 0

[State 1200, Helper]
type = Helper
trigger1 = animelem = 6
name = "sfiammata"
ID = 1230
stateno = 1230
pos = 0,0
postype = p1    ;p2,front,back,left,right
keyctrl = 0
ownpal = 1

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; helper colonna fuoco
[Statedef 1230,helper colonna]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 6300
sprpriority = 5

[State 1230, assertspecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1230, VelSet]
type = VelSet
trigger1 = time > 0
x = 2
y = 0

[State 1230, PlayerPush]
type = PlayerPush
trigger1 = time = 0
value = 1

[State 1230, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA          ;B,E,F
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,20
pausetime = 0,30
sparkno = S6202
guard.sparkno = 0
sparkxy = -10,-20
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 0
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
palfx.time = 30
palfx.add = 40,-70,-200
palfx.sinadd = 40,30,0,10
palfx.color = 0
palfx.invertall = 1

[State 1230, destroyself]
type = destroyself
trigger1 = AnimTime = 0

;-------------------------------------------------------------------------------
; explosion
[Statedef 1300,explosion         special3]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1300
poweradd = -50
sprpriority = 2

[State 1300, burn]
type = playsnd
trigger1 = animelem = 2
value = 1300,0

[State 1300, burn]
type = playsnd
trigger1 = animelem = 1
value = 1300,1
channel = 0

[State 1300, Explod]
type = Explod
trigger1 = animelem = 3
anim = 6400
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 40
sprpriority = 1
ownpal = 1
;scale = 0.8,0.8

[State 1300, Explod]
type = Explod
trigger1 = animelem = 3
anim = 6401
pos = -5,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 40
sprpriority = 3
ownpal = 1
;scale = 0.8,0.8

[State 1300, HitDef]	;fa capire al mugen che ora il box rosso collide con il box blu
type = HitDef		;deve creare contatto
trigger1 = Time = 18	;si attiverà dal tick 0 del gruppo 200 (cioè all'inizio)
trigger2 = Time = 26
trigger3 = Time = 34
trigger4 = Time = 42
trigger5 = Time = 50
attr = S, NA		;spiega l'attributo: S-tanding, N-ormal A-ttack (da usare sempre)
damage = 25		;quanto danno fa
pausetime = 0,1	        ;indica una pausa dei due char al momento dell'hit  (12,12 - 1° e 2°)
hitsound = 5,0		;determina quale suono ci sarà quando avverrà l'hit tra i 2 avversari
guardsound = 6,0	;determina quale suono ci sarà quando avverrà l'hit tra i 2 avversari
sparkno = -1;S6202
sparkxy = 0,-50	        ;indica la posizione dello spark che si vedrà quando ci sarà il contatto
guardflag = HA		;indica come l'avversario può difendersi dall'attacco del vostro personaggio
ground.type = High	;dove l'avversario subirà l'hit (volto-high, stomaco-low, ecc)
ground.slidetime = 5	;quanto tempo l'avversario scorrerà indietro dopo essere stato colpito
ground.hittime  = 12	;il tempo che l'avversario spenderà subendo il colpo (bloccato) prima di recuperare
ground.velocity = 0,-5	;velocità x che l'avversario avrà quando sarà colpito, anche y se cadrà al suolo con "fall"
air.velocity = -1,-5	;velocità che l'avversario avrà quando sarà colpito in aria
animtype = light	;animazione che mostrerà l'avversario in base all'intensità del colpo
fall = 1		;farà cadere al suolo l'avversario quando subirà il colpo
palfx.time = 30
palfx.add = 40,-70,-200
palfx.sinadd = 40,30,0,10
palfx.color = 0
palfx.invertall = 1

[State 1300, Explod]
type = Explod
trigger1 = movehit = 1
anim = 6202
pos = 0,0
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = 60
sprpriority = 9
ownpal = 1

[State 1300, changestate 0]
type = ChangeState
trigger1 = Time = 57
value = 0
ctrl = 1

;---------------------------------------
;WIP special aerea ghiaccio e fuoco
[Statedef 1400,icyfiry               special air]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd = -50
ctrl = 0
anim = 1400
sprpriority = 4

[State 1400, VelSet]
type = VelSet
trigger1 = time = [0,29]
x = 0
y = 0.5

[State 1400, burn]
type = playsnd
trigger1 = animelem = 6 ;movehit = 1
value = 1400,0

[State 1400, burn]
type = playsnd
trigger1 = animelem = 6 ;movehit = 1
value = 1100,0

[State 1400, icy explod]
type = Explod
trigger1 = AnimElem = 6
postype = p1
pos = 0,-53
anim = 6500
sprpriority = 3
supermove = 1
removetime = 30
removeongethit = 1
ownpal = 1
scale = 1,0.5
bindtime = -1

[State 1400]
type = Helper
trigger1 = animelem = 6
name = "icy"
ID = 1410
stateno = 1410
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 1400, firy explod]
type = Explod
trigger1 = AnimElem = 6
postype = p1
pos = 17,2
anim = 6501
sprpriority = 3
supermove = 1
removetime = 30
removeongethit = 1
ownpal = 1
scale = 0.75,1
bindtime = -1

[State 1400]
type = Helper
trigger1 = animelem = 6
name = "firy"
ID = 1420
stateno = 1420
pos = 1,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 1400]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 1400, VelSet]
type = VelSet
trigger1 = time = 30
x = 0
y = 0

;---------------------------------------
;helper icy
[StateDef 1410,helper icy]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,5
ctrl = 0
anim = 6502
poweradd = 0
sprpriority = -2

[State 1410, assertspecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, BindToParent]
type = BindToParent
trigger1 = time = 0
time = 20

[State 0, VelSet]
type = VelSet
trigger1 = time > 0
x = 0
y = 3

[State 0, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA          ;B,E,F
animtype = medium          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,20
pausetime = 0,60
sparkno = -1
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 0
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
palfx.time = 60
palfx.add = 50,100,256
palfx.sinadd = 6,3,1,12
palfx.color = 4
palfx.invertall = 0

[State 200, 3]
type = destroyself
trigger1 = AnimTime = 0

;---------------------------------------
;helper firy
[StateDef 1420,helper firy]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0.5
ctrl = 0
anim = 6503
poweradd = 0
sprpriority = 1

[State 1420, assertspecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, BindToParent]
type = BindToParent
trigger1 = time = 0
time = 20

[State 0, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA          ;B,E,F
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,20
pausetime = 0,30
sparkno = S6203
sparkxy = -7,30
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 0
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
palfx.time = 30
palfx.add = 40,-70,-200
palfx.sinadd = 40,30,0,10
palfx.color = 0
palfx.invertall = 1

[State 200, 3]
type = destroyself
trigger1 = AnimTime = 0

;-------------------------------------------------------------------------------
;pugno ghiacciato
[StateDef 1500,ice punch        special4]
type = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1500
poweradd = -50

[State 1500, run]
type = playsnd
trigger1 = animelem = 2
value = 0,2

[State 1500, RUN_FWD]
type = Explod
trigger1 = AnimElem = 3
pos = 0,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 1500, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NT, ST, HT

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 15

[State 1500, PushOff]
type = PlayerPush
trigger1 = AnimElem = 1
value = 0

[State 1500, ice effect]
type = Explod
trigger1 = AnimElem = 3
pos = 30,-35
anim = 6600
sprpriority = 5
supermove = 1
removetime = 30
removeongethit = 1
ownpal = 1
scale = 0.6,0.6
bindtime = -1

[State 1500,hitdef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 50,10
animtype = heavy
guardflag = HA
pausetime =0, 50
sparkno = S7071
sparkxy = 0, -80
hitsound =S250,1
ground.type = high
ground.velocity =  -2
p2facing = 1
fall.recover= 0
fall= 0
p1stateno = 1530
p2stateno = 1550

[State 1500, Changestate 0]
type = Changestate
trigger1= time = 30
ctrl = 1
value = 0

;-------------------------------------------------------------------------------
;Pose Final
[StateDef 1530,p1 final pose]
type = S
movetype= A
physics = S
velset = -10,0
ctrl = 0
anim = 1530

[State 1500 helper ghiaccetti]
type = Helper
trigger1 = time = 0
ID = 1531
name = "ghiaccetti"
postype = p2
pos = -10,0
persistent = 0
ignorehitpause = 1
stateno = 1531
ownpal = 1

[State 3022, 1] ;Change to stand state when done
type = ChangeState
trigger1 = Time = 44
value = 0
ctrl = 1

[State 3022, 1] ;Change to stand state when done
type = ChangeState
triggerall = Time < 44
trigger1 = command = "c"
value = 1570
ctrl = 0

;-------------------------------------------------------------------------------
;p1 helper ghiaccetti
[StateDef 1531,p1 helper ghiaccetti]
type    = S
MoveType = I
physics = U
ctrl = 0
VelSet = 0,0
sprpriority = 6
anim = 6601

[State 1230, assertspecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1531, Explod]
type = Explod
id = 6602
trigger1 = time = 0
anim = 6602
pos = -10,20
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = 40
removeongethit = 1
sprpriority = 5
ownpal = 1

[State 1531, RemoveExplod]
type = RemoveExplod
trigger1 = movehit = 1
id = 6602

[State changestate 1531 ghiaccio rotto]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = P2StateNo != 1550
value = 1532

;-----------------------------------------------------------------
[StateDef 1532,p1 ghiaccetti rotti]
type    = S
MoveType = I
physics = U
anim = -1
ctrl = 0
VelSet = 0,0
sprpriority = 2

[State 1532,DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;-------------------------------------------------------------------------------
;p2 custom Pose Final
[StateDef 1550,p2 custom]
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
anim = 1550

[State 3420, anim]
type = ChangeAnim2
trigger1 = time = 0
value = 1550

[State 1550, freeze]
type = playsnd
trigger1 = animelem = 1
value = 1550,0

[State 1550, PalFX]
type = PalFX
trigger1 = time = 0
time = 40
add = 50,100,256
mul = 256,200,256
sinadd = 6,3,1,12
invertall = 0
color = 4

[State 1550, SelfState]
type = SelfState
trigger1 = time = 40
value = 0
ctrl = 1

;---------------------------------------
; final Punch
[Statedef 1570,final fire punch]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1570
sprpriority = 2
poweradd = -50

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 0, Explod]
type = Explod
id = 6603
trigger1 = animelem = 3
anim = 6603
pos = 0,-38
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 19
sprpriority = 5
ownpal = 1
scale = 1,0.55

[State 0, VelSet]
type = VelSet
trigger1 = time = [13,22];animelem = 2
x = 6
y = 0

[State 200 , 2]
type = HitDef
trigger1 = AnimElem = 3
priority = 3
attr = S, NA
damage = 40
animtype = light
guardflag = MA
sparkno = 7000
sparkxy = -10,-95
hitsound = s1,0
guardsound = s6,0
pausetime = 5,8
ground.hittime = 10
ground.type = high
ground.slidetime = 15
ground.velocity = -7,-3
air.velocity = -1.4,-3
getpower = 0
givepower = 0
fall = 1

[State 0, Explod]
type = Explod
id = 6604
trigger1 = movehit = 1
anim = 6604
pos = 0,-80
postype = p2  ;p2,front,back,left,right
bindtime = 5
removetime = 35
sprpriority = 5
ownpal = 1
vel = 0.1,-0.5

[State 0, Explod]
type = Explod
id = 6604
trigger1 = movehit = 1
anim = 6604
pos = 10,-55
postype = p2  ;p2,front,back,left,right
bindtime = 5
removetime = 35
sprpriority = 5
ownpal = 1
scale= 1.25,1.25
vel = 0.5,-1

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;aria gelida
[Statedef 1600,freezing air       special5]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1600
poweradd = -50
sprpriority = 3

[State 1400]
type = Helper
trigger1 = animelem = 3
name = "air"
ID = 1610
stateno = 1610
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 1600, voice]
type = playsnd
trigger1 = animelem = 1
value = 1600,0
channel = 0

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; helper air
[Statedef 1610,helper air]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 6700
sprpriority = 5

[State 1230, assertspecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1610, PlayerPush]
type = PlayerPush
trigger1 = time = 0
value = 1

[State 1610, freeze]
type = playsnd
trigger1 = movehit = 1
value = 1610,0

[State 1610, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA          ;B,E,F
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
;fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 50,20
pausetime = 0,80
sparkno = -1
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 0
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
palfx.time = 75
palfx.add = 50,100,256
palfx.sinadd = 6,3,1,12
palfx.color = 4
palfx.invertall = 0

[State 1531, Explod]
type = Explod
id = 6601
trigger1 = movehit = 1
anim = 6601
pos = 0,-5
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = 70
removeongethit = 1
sprpriority = 5
ownpal = 1

[State 1531, Explod]
type = Explod
id = 6602
trigger1 = movehit = 1
anim = 6602
pos = -10,20
postype = p2  ;p2,front,back,left,right
bindtime = -1
removetime = 70
removeongethit = 1
sprpriority = 5
ownpal = 1

[State 200, 3]
type = destroyself
trigger1 = AnimTime = 0

;---------------------------------------
;pugno in corsa
[Statedef 1800,pugnocorsa     special6]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1800
poweradd = -50

[State 210, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = up
damage    = 30
guardflag = MA
pausetime = 12,2
sparkno = s7001
sparkxy = -10,-80
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 9	;quanto tempo l'avversario scorrerà indietro dopo essere stato colpito
ground.hittime  = 8	;il tempo che l'avversario spenderà subendo il colpo (bloccato) prima di recuperare
ground.velocity = 0,-8;velocità x che l'avversario avrà quando sarà colpito, anche y se cadrà al suolo con "fall"
air.velocity = -1,-8	;velocità che l'avversario avrà quando sarà colpito in aria
fall=1

[State 3000, VelSet]
type = VelSet
;trigger1 = AnimElem = 1
trigger1 = Time = [0,14]
x = 5

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Roll (forward)
[Statedef 2050,roll fw]
type = S
movetype = I
physics = N
ctrl = 0
anim = 2050
velset = 0, 0

[State 2050]
type = Explod
trigger1 = AnimElem = 2
anim = 7084
pos = 0,0
postype = p1
sprpriority = 4
ownpal = 1

[State 2050]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2050]
type = PlayerPush
trigger1 = 1
value = 0

[State 2050]
type = VelSet
trigger1 = AnimElem = 2
x = 5.50

[State 2050]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 2050]
type = PlaySnd
trigger1 = Time = 1
value = 2,1

[State 2050]
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

[State 2050]
type = Turn
trigger1 = AnimTime = 0 && P2BodyDist X < -5

[State 2050]
type = PlaySnd
trigger1 = AnimTime = 0
value = 2,2

[State 2050]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
; Roll (Back)
[Statedef 2150,roll back]
type = S
movetype = I
physics = N
ctrl = 0
anim = 2150
velset = 0, 0

[State 2150]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2150]
type = PlayerPush
trigger1 = 1
value = 0

[State 2150]
type = Explod
trigger1 = AnimElem = 2
anim = 70841
pos = -10,0
postype = p1
sprpriority = 4
ownpal = 1

[State 2150]
type = VelSet
trigger1 = AnimElem = 3
x = -5.00

[State 2150]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 2150]
type = PlaySnd
trigger1 = Time = 1
value = 2,1

[State 2150]
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

[State 2150]
type = PlaySnd
trigger1 = AnimTime = 0
value = 2,2

[State 2150]
type = ChangeState
trigger1 = AnimTime = 0
value = 10
ctrl = 1

;------------------------------------------------------------------------------
; Hyper Moves (Statedef 3000-4999)
;------------------------------------------------------------------------------

; artigli - claw
[StateDef 3000,artigli                special7]
type = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 3000
poweradd = -150

[State 3000,Explod speed]
type = Explod
trigger1 = AnimElem = 1
ID = 3001
anim = 3001
pos = -15,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
scale = 0.6,.85
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3000, RUN_FWD]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

;invincibilité
[State 3000, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA, NA, SA, HA, NT, ST, HT

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 1
trigger1 = Time = 0
x = 25

[State 3000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 15
FrameGap = 2
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

; traverser P2
[State 3000, PushOff]
type = PlayerPush
trigger1 = AnimElem = 1
value = 0

[State 3000,2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NA
damage = 50,20
animtype = hard
guardflag = HA
pausetime =0, 70
sparkno = S7071
sparkxy = 0, -80
hitsound =S250,1
ground.type = Trip
ground.velocity =  -2, -2
p2facing = 1
Palfx.time          = 70
Palfx.add           = -122,-30,82
Palfx.mul           = 256,256,256
Palfx.sinadd        = -112,-122,-112,3
Palfx.invertall     = 1
fall.recover= 0
fall= 1

[State 3000, ChangeAnim]
type = Changestate
trigger1 = movehit = 1
value = 3030

[State 3000, ChangeAnim]
type = Changestate
trigger1= time = 20
trigger1 = movehit = 0
ctrl = 1
value = 0

;-------------------------------------------------------------------------------
;Pose Final
[StateDef 3030]
type = S
movetype= A
physics = S
velset = 20,0
ctrl = 0
anim = 3030

[State 3030, Explod]
type = Explod
trigger1 = time = 0
anim = 3002
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = 15
sprpriority = 5
ownpal = 1
;scale = 0.8,0.8

[State 3100, voice]
type = playsnd
trigger1 = animelem = 1
value = 3030,0

[State 3030, 1] ;Change to stand state when done
type = ChangeState
trigger1 = Time = 35
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;geiser attack
[Statedef 3100,geiser                  hyper1]
type = s
movetype = A
physics = S
poweradd = -1000
anim = 3100
juggle = 1
velset = 0,0
ctrl = 0

[State 3100, superpause]
type = superpause
trigger1 = animelem = 1
time = 117
anim = -1
movetime = 117

[State 3100, voice]
type = playsnd
trigger1 = animelem = 1
value = 3100,0
channel = 0

[State 3100, mask]
type = playsnd
trigger1 = animelem = 4
value = 3100,1

[State 3100, aura terra]
type = explod
trigger1 = AnimElem = 5
anim=3105
pos=0,0
sprpriority = -2
postype = p1
supermove = 1

[State 3100, aura bianca]
type = explod
trigger1 = AnimElem = 5
anim=3110
pos=0,0
sprpriority = -1
postype=p1
supermove = 1

[State 3100, aura bianca]
type=playsnd
trigger1 = animelem = 5
value=3100,2

;Bg effect
[State 3100, bgfx]
type=bgpalfx
trigger1 = animelem = 3
time = 660
add = 100,-100,-100
sinadd = 30, 100,100,10

[State 3100, envshake]
trigger1 = animelem = 3
type =envshake
freq=40
time=100
ampl=1

[State 3100, shake]
type = playsnd
trigger1 = time = 150
trigger2 = time = 300
trigger3 = time = 450
value = 3100,3

[State 3100, envshake]
type=envshake
trigger1 = timemod = 12,0
trigger1 = time >90
freq=70
time=20
ampl=3

[State 3100, fulmini rossi1]
type = explod
trigger1 = timemod = 12,0
trigger1 = time > 90
anim = 3130
scale = 0.8,2
pos = random/2,-50
sprpriority = 5
postype = p1

[State 3100, fulmini rossi2]
type = explod
trigger1 = timemod = 12,0
trigger1 = time > 90
anim = 3140
scale = 0.9,1.25
pos = random/-2,-50
sprpriority = 5
postype = p1

[State 3100, rock1]
type = explod
trigger1 = timemod = 12,0
trigger1 = time > 90
anim = 3170
pos = random/1,0
sprpriority = 1
vel = 0,-5
scale = 0.7,0.7
[State 3100, rock1]
type = explod
trigger1 = timemod = 12,0
trigger1 = time > 90
anim = 3170
pos = random/-1,0
sprpriority = 1
vel = 0,-5
scale = 0.7,0.7

[State 3100, rock2]
type = explod
trigger1 = timemod = 12,0
trigger1 = time >90
anim = 3180
pos = random/2,0
sprpriority = 1
vel= 0,-5
[State 3100, rock2]
type = explod
trigger1 = timemod = 12,0
trigger1 = time >90
anim = 3180
pos = random/-2,0
sprpriority = 1
vel= 0,-5

[State 3100, explod geiser]
type = projectile
trigger1 = timemod = 9,0
trigger1 = time >90
projID=1
projanim = 3150
postype = back
velocity = 0,0
projscale = 1,1
projremovetime = 28
offset = random/2,0
attr = S, HP
projhits = 3
fall = 1
damage = 9
hitsound = 5,4
animtype = Heavy
guardflag = MA
pausetime = 0,2
air.animtype = Back
ground.velocity =3, -7
air.velocity = (random/100-5)*4, -7
air.juggle = 0
palfx.time = 30
palfx.add = 40,-70,-200
palfx.sinadd = 40,30,0,10
palfx.color = 0
palfx.invertall = 1
envshake.freq = 20
envshake.time = 10
envshake.ampl= 30

[State 3100, explod gaiser]
type = projectile
trigger1 = timemod = 7,0
trigger1 = time >90
projID=1
projanim = 3155
postype = back
velocity = 0,0
projscale = 1,1
projremovetime = 28
offset = random/2,0
attr = S, HP
projhits=3
fall=1
damage    = 10
hitsound   = 5,4
animtype = Heavy
guardflag = MA
pausetime = 0,2
air.animtype = Back
ground.velocity =3, -7
air.velocity = (random/100-5)*4, -7
air.juggle = 0

[State 3100, cavallo]
type = explod
trigger1 = time = 440
anim = 3120
pos = 10,-10
sprpriority = -5
postype = p1
trans = add
removetime = 220

[State 3100,changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;tempesta fuoco 2fase
[Statedef 3200,1tempestafuoco  hyper2]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3200
poweradd = -1000
sprpriority = 4

[State 3200, superpause]
type = superpause
trigger1 = time = 0
time = 85
anim = -1
movetime = 85
darken = 1

[State 3200, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3200,1
channel = 0

[State 3200, voice]
type = PlaySnd
trigger1 = time = 75
value = 3200,0
;channel = 0

;Bg effect
[State 3200, bgfx]
type=bgpalfx
trigger1 = animelem = 1
time = 141
add = 40,-70,-200
sinadd = 40, 30,0,30

[State 3200, helper raggi]
type = Helper
trigger1 = animelem = 12
name = "raggi"
ID = 3201
stateno = 3201
pos = 0,0
postype = p1    ;p2,front,back,left,right
keyctrl = 0
ownpal = 1

[State 3200, raggi priority]
type = Explod
trigger1 = animelem = 12
anim = 3202
sprpriority = 6
bindtime = -1
pos = -20,0
postype=p1
scale = 1.5,1

[State 3200, changestate 0]
type = ChangeState
trigger1 = p2bodydist x > 125
triggerall = Time = 141
value = 0
ctrl = 1

[State 3200, changestate 3250]
type = ChangeState
trigger1 = p2bodydist x <= 125
triggerall = Time = 141
value = 3250
ctrl = 0

;-------------------------------------------------------------------------------
; helper raggi
[Statedef 3201,helper raggi]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3201
sprpriority = 3

[State 3201, assertspecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3201, BindToParent]
type = BindToParent
trigger1 = time = 0
time = 55

[State 3201, PlayerPush]
type = PlayerPush
trigger1 = time = 0
value = 1

[State 3201, burn]
type = playsnd
trigger1 = animelem = 1
value = 3201,0

[State 3201, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA          ;B,E,F
animtype = back          ;light,medium,hard,back,up,diagup
air.animtype = medium
fall.animtype = Back
damage = 200,20
pausetime = 0,10
sparkno = -1
ground.type = low      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 0
air.hittime = 20
air.velocity = 3,2
palfx.time = 60
palfx.add = 40,-70,-200
palfx.sinadd = 40,30,0,10
palfx.color = 0
palfx.invertall = 1
fall = 0

[State 3201, destroyself]
type = destroyself
trigger1 = AnimTime = 0

;-------------------------------------------------------------------------------
;tempesta fuoco 2fase
[Statedef 3250,2tempestafuoco  hyper2]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3250
sprpriority = 4
poweradd = -1000

[State 3250, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3200,2
channel = 0

[State 3250, voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 3200,3
channel = 0
channel = 0

;Bg effect
[State 3250, bgfx]
type=bgpalfx
trigger1 = animelem = 1
time = 179
add = 40,-70,-200
sinadd = 40, 30,0,30

[State 3250, helper fuoco]
type = Helper
trigger1 = animelem = 4
name = "fuocofinale"
ID = 3210
stateno = 3210
pos = 0,0
postype = p1    ;p2,front,back,left,right
keyctrl = 0
ownpal = 1

[State 3250, changestate 0]
type = ChangeState
trigger1 = Time = 179
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; helper fuoco finale
[Statedef 3210,helper fuoco]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3210
sprpriority = 5

[State 3210, assertspecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3210, BindToParent]
type = BindToParent
trigger1 = time = 0
time = 50

[State 3210, PlayerPush]
type = PlayerPush
trigger1 = time = 0
value = 1

[State 3210, burn]
type = playsnd
trigger1 = animelem = 1
value = 3210,0

[State 3210, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA          ;B,E,F
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
damage = 200,20
pausetime = 0,30
sparkno = S6202
guard.sparkno = 0
sparkxy = -10,-20
ground.type = low      ;Low,Trip,None
ground.slidetime = -5
ground.hittime = 20
air.hittime = 20
ground.velocity = -5,2
air.velocity = -5,2
palfx.time = 110
palfx.add = 40,-70,-200
palfx.sinadd = 40,30,0,10
palfx.color = 0
palfx.invertall = 1
fall = 1

[State 3210, destroyself]
type = destroyself
trigger1 = AnimTime = 0

;-------------------------------------------------------------------------------
;nevi di asgard
[Statedef 3300,neviasgard hyper3]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3300
poweradd = -3000
sprpriority = 4

[State 3300, superpause]
type = superpause
trigger1 = time = 0
time = 191                 ;143
anim = -1
movetime = 191             ;143
darken = 1

[State 3300, voice1]
type = playsnd
trigger1 = animelem = 1
value = 3300,0
channel = 0

;Bg effect
[State 3300, bgfx]
type=bgpalfx
trigger1 = animelem = 6
time = 300;170
add = 50,50,50
sinadd = 25,25,25,35

[State 3300, neve]
type = Explod
trigger1 = AnimElem = 2
anim = 3370
ID = 3370
pos = -320, 0
postype = right
sprpriority = 7
supermove = 1
removetime = 359         ;205
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3300, stelle1]
type = Explod
trigger1 = AnimElem = 2
anim = 3371
ID = 3371
pos = 0, 0
postype = back
sprpriority = -7
supermove = 1
removetime = 259         ;205
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3300, voice2]
type = playsnd
trigger1 = animelem = 11
value = 3300,1
channel = 0

[State 3300, sfera mano]
type = Explod
trigger1 = animelem = 11
anim = 3350
pos = 0,0
postype = p1
bindtime = -1
removetime = 25
sprpriority = 5
ownpal = 1
supermove = 1

[State 3300, sfondo tempesta]
type = Explod
trigger1 = animelem = 12
anim = 3351
pos = 0,0
postype = p1
bindtime = -1
removetime = 154;127;108
sprpriority = -5
ownpal = 1
scale = .5,.5
supermove = 1

[State 3300, laser]
type = Explod
trigger1 = AnimElem = 19
anim = 3352
ID = 3352
pos = 0, -88
postype = p1
sprpriority = -3
supermove = 1
removetime = 16
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3300, voice3]
type = playsnd
trigger1 = animelem = 25
value = 3300,2
channel = 0

[State 3300, Projectile]
type = Projectile
trigger1 = animelem = 26
ProjID = 3360
projanim = 3360
sparkno = -1
projpriority = 3
attr = S,HP
hitflag = MA
guardflag = MA
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 500,50
pausetime = 3,3
hitsound = 0,0
guardsound = 0,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
projscale = 1.2,0.8
offset = -5,-18
projremove = 0
p2stateno = 3310

[State 3300 helper]
type = Helper
trigger1 = projcontact = 1
ID = 3380
name = "ghiacciolo"
postype = p2
pos = 15,20
persistent = 0
ignorehitpause = 1
stateno = 3380
ownpal = 1

[State 3300, WinPose]
type = varset
trigger1 = p2life <= 0
v = 40
value = 1

[State 3300, changestate 0]
type = ChangeState
trigger1 = Time = 300     ;210
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;p2 custom Pose Final
[StateDef 3310,p2 custom]
type = U
movetype= H
physics = U
velset = 0,0
ctrl = 0
;anim = 3310

[State 3310]
type = PlayerPush
trigger1 = 1
value = 0

[State 3310, anim]
type = ChangeAnim2
trigger1 = time = 0
value = 3310

[State 3310, palfx]
type = PalFX
trigger1 = time = 0
time = 90;60
add = 50,100,256
mul = 256,200,256
sinadd = 6,3,1,12
invertall = 0
color = 4

;[State 3310, PlaySnd]
;type = PlaySnd
;trigger1 = time = 0
;value = 3310,0
;[State 0, PlaySnd]
;type = PlaySnd
;trigger1 = time = 163
;value = 3310,1

[State 3310, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 1

[State 3310,KOed by iceball]
type = ChangeState
trigger1 = life <= 0
trigger2 = time = 420
value = 3320

[State 3310, SelfState]
type = changeState
trigger1 = time = 300
value = 3315
ctrl = 1

;-----------------------------------------------------------------------------------------------------
[StateDef 3315,p2 custom defrozen]
type    = U
MoveType = H
physics = U
ctrl = 0
VelSet = 0,0
sprpriority = 0

[State 1060, flat on yer back]
type = SelfState
trigger1 = time = 5
value = 5100

[State 1060, back to standing]
type = SelfState
trigger1 = time = 5
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;P2 custom death
[StateDef 3320,p2 custom death]
type = U
MoveType = H
physics = U
ctrl = 0
VelSet = 0,0
sprpriority = 0

[State 3310, anim]
type = ChangeAnim2
trigger1 = time = 0
value = 3311

;-------------------------------------------------------------------------------
;helper ghiacciolo
[StateDef 3380,helper ghiacciolo]
type    = S
MoveType = I
physics = U
ctrl = 0
VelSet = 0,0
sprpriority = 10
anim = 3380

[State 3310, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3310,0

[State changestate 3380 ghiaccio rotto1]
type = ChangeState
triggerall = p2life > 0
trigger1 = AnimTime = 0
trigger2 = P2StateNo != 3310
value = 3385

[State changestate 3380 ghiaccio rotto2]
type = ChangeState
triggerall = anim = 3380 && time >= 300
triggerall = p2life > 0
trigger1 = AnimTime = 0
trigger2 = P2StateNo != 3310
value = 3385

;-----------------------------------------------------------------
[Statedef 3385, ghiaccio rotto]
type    = S
MoveType = I
physics = U
anim = 3385
ctrl = 0
VelSet = 0,0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3310,1

[State DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;-------------------------------------------------------------------------------
;fuoco PUGNO
[Statedef 3400,fuocopugno      hyper4]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3400
poweradd = -1000
sprpriority = 4

[State 3400, superpause]
type = superpause
trigger1 = time = 0
time = 55
anim = -1
movetime = 55
darken = 0

[State 3400, voice]
type = playsnd
trigger1 = animelem = 1
value = 3400,0
channel = 0

[State 3400, burn]
type = playsnd
trigger1 = animelem = 2 ;movehit = 1
value = 3400,1

;Bg effect
[State 3400, bgfx]
type=bgpalfx
trigger1 = animelem = 1
time = 78
add = 40,-70,-200
sinadd = 40, 30,0,30

[State 3400, sfondo]
type = Explod
trigger1 = time = 0
anim = 3401
scale = 1,1
sprpriority = -3
postype = back
bindtime = -1
pos = 0,0
supermove =1
supermovetime =0
removetime = 88
id = 3401
removeongethit = 1

[State 3400, explod fuoco]
type = explod
trigger1 = AnimElem = 2
anim = 3402
pos = -31,-87
sprpriority = 5
postype = p1
supermove = 1
scale = 0.4,0.4
removetime= 50

[State 3400, explod fuoco]
type = explod
trigger1 = AnimElem = 2
anim = 3403
pos = -14,-87
sprpriority = 5
postype = p1
supermove = 1
scale = 0.6,0.8
removetime=50

[State 3400, explod fuoco]
type = explod
trigger1 = AnimElem = 3
anim = 3404
pos = 0,0
sprpriority = 5
postype = p1
supermove = 1
removetime = 10

[State 3400, Helper fiammata1]
type = Helper
trigger1 = time = 66 ;animelem = 5
name = "fiammata1"
ID = 3410
stateno = 3410
pos = 0,0
postype = p1    ;p2,front,back,left,right
keyctrl = 0
ownpal = 1

[State 3400, changestate 0]
type = ChangeState
trigger1 = Time = 88
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; helper fiammata1
[Statedef 3410,helper fiammata1]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3410
sprpriority = 5

[State 3410, assertspecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3410, BindToParent]
type = BindToParent
trigger1 = time = 0
time = 60

[State 3410, PlayerPush]
type = PlayerPush
trigger1 = time = 0
value = 1

[State 3410, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA          ;B,E,F
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 200,20
pausetime = 0,30
sparkno = S6202
guard.sparkno = 0
sparkxy = -10,-20
ground.type = low      ;Low,Trip,None
ground.slidetime = -5
ground.hittime = -5
air.hittime = 20
ground.velocity = -5,2
air.velocity = -5,2
palfx.time = 90
palfx.add = 40,-70,-200
palfx.sinadd = 40,30,0,10
palfx.color = 0
palfx.invertall = 1
fall = 1

[State 3410, destroyself]
type = destroyself
trigger1 = AnimTime = 0

;-------------------------------------------------------------------------------
;fuoco meriggio 1
[Statedef 3500,fuocomeriggio1 hyper5]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3500
poweradd = -2000
sprpriority = 4

[State 3500, explod cosmo]
type = Explod
triggerall = NumExplod(3511) = 0
triggerall = stateno = 3500
trigger1 = animelem = 3
anim = 3511
id = 3511
pos = 0,0
postype = p1
sprpriority = -2
removetime = 45
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 3500, removexplod]
type = RemoveExplod
trigger1 = time = 55
ID = 3511

[State 3500, superpause]
type = superpause
trigger1 = time = 0
time = 87
anim = -1
movetime = 87
darken = 0

[State 3500, voice]
type = playsnd
trigger1 = animelem = 1
value = 3500,0
channel = 0

[State 3500, burn]
type = playsnd
trigger1 = animelem = 2
value = 3500,1

[State 3500, burn]
type = playsnd
trigger1 = animelem = 14
value = 3500,2

;Bg effect
[State 3500, bgfx]
type=bgpalfx
trigger1 = animelem = 1
time = 145
add = 40,-70,-200
sinadd = 40, 30,0,30

[State 3500, aura terra]
type = Explod
trigger1 = AnimElem = 2
anim = 3501
ID = 3501
pos = -5, 13
postype = p1
sprpriority = 3
supermove = 1
removetime = 60
ignorehitpause = 1
bindtime = -1
persistent = 0
scale = 0.5,0.5

[State 3500, aura alta]
type = Explod
trigger1 = AnimElem = 2
anim = 3502
ID = 3502
pos = 0, 0
postype = p1
sprpriority = 5
supermove = 1
removetime = 50
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3500, sfondo]
type = Explod
trigger1 = time = 0
anim = 3503
scale = 1,1
sprpriority = 3
postype = back
bindtime = -1
pos = 0,0
supermove =1
supermovetime =0
removetime = 145
id = 3503
removeongethit = 1

[State 3500, Helper fiammata2]
type = Helper
trigger1 = animelem = 15
name = "fiammata2"
ID = 3510
stateno = 3510
pos = 0,-10
postype = p1    ;p2,front,back,left,right
keyctrl = 0
ownpal = 1

[State 3500, changestate 0]
type = ChangeState
trigger1 = Time = 145
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; helper fuoco2
[Statedef 3510,helper fiammata2]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3510
sprpriority = 5

[State 3510, assertspecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3510, BindToParent]
type = BindToParent
trigger1 = time = 0
time = 60

[State 3510, PlayerPush]
type = PlayerPush
trigger1 = time = 0
value = 1

[State 3510, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA          ;B,E,F
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 400,40
pausetime = 0,30
sparkno = S6202
guard.sparkno = 0
sparkxy = -10,-20
ground.type = low      ;Low,Trip,None
ground.slidetime = -5
ground.hittime = -5
air.hittime = 20
ground.velocity = -5,2
air.velocity = -5,2
palfx.time = 90
palfx.add = 40,-70,-200
palfx.sinadd = 40,30,0,10
palfx.color = 0
palfx.invertall = 1
fall = 1

[State 3510, destroyself]
type = destroyself
trigger1 = AnimTime = 0

;-------------------------------------------------------------------------------
;fuoco meriggio 2
[Statedef 3600,fuocomeriggio2 hyper6]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3600
poweradd = -3000
sprpriority = 4

[State 3600, superpause]
type = superpause
trigger1 = time = 0
time = 130
anim = -1
movetime = 130
darken = 0

[State 3600, explod cosmo]
type = Explod
triggerall = NumExplod(3603) = 0
triggerall = stateno = 3600
trigger1 = animelem = 3
anim = 3603
id = 3603
pos = 0,0
postype = p1
sprpriority = -2
removetime = 90;120
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

[State 3600, removexplod]
type = RemoveExplod
trigger1 = time = 90;120
ID = 3603

[State 3600, voice]
type = playsnd
trigger1 = animelem = 1
value = 3600,0
channel = 0

[State 3600, voice]
type = playsnd
trigger1 = animelem = 16
value = 3600,1
channel = 0

[State 3600, burn]
type = playsnd
trigger1 = animelem = 8
value = 3500,1

[State 3100, mask]
type = playsnd
trigger1 = animelem = 20
value = 3600,2

[State 3600, burn]
type = playsnd
trigger1 = animelem = 22
value = 3500,2

;Bg effect
[State 3600, bgfx]
type=bgpalfx
trigger1 = animelem = 1
time = 210
add = 40,-70,-200
sinadd = 40, 30,0,30

[State 3600, sfondo1]
type = Explod
trigger1 = time = 0
anim = 3503
scale = 1,1
sprpriority = 3
postype = back
bindtime = -1
pos = 0,0
supermove =1
supermovetime =0
removetime = 210
id = 3503
removeongethit = 1

[State 3600, sfondo2]
type = Explod
trigger1 = time = 0
anim = 3601
scale = 1,1
sprpriority = -3
postype = back
bindtime = -1
pos = 0,0
supermove =1
supermovetime =0
removetime = 210
id = 3601
removeongethit = 1

[State 3600, avvolto]
type = Explod
trigger1 = AnimElem = 7;16
anim = 3611
ID = 3611
pos = 0, 0
postype = p1
sprpriority = 7
supermove = 1
removetime = 76;107
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3600, braccia]
type = Explod
trigger1 = animelem = 18
anim = 3602
scale = 1,1
sprpriority = 6
postype = p1
bindtime = -1
pos = 0,0
supermove =1
supermovetime =0
removetime = 30
id = 3602
removeongethit = 1

[State 3600, Helper fiammata3]
type = Helper
trigger1 = animelem = 22
name = "fiammata3"
ID = 3610
stateno = 3610
pos = 0,0
postype = p1    ;p2,front,back,left,right
keyctrl = 0
ownpal = 1

[State 3600, changestate 0]
type = ChangeState
trigger1 = Time = 210
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; helper fuoco3
[Statedef 3610,helper fiammata3]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3610
sprpriority = 5

[State 3610, assertspecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3610, BindToParent]
type = BindToParent
trigger1 = time = 0
time = 60

[State 3610, PlayerPush]
type = PlayerPush
trigger1 = time = 0
value = 1

[State 3610, HitDef]
type = HitDef
trigger1 = time = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = MA          ;B,E,F
animtype = hard          ;light,medium,hard,back,up,diagup
air.animtype = light
fall.animtype = Back
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 600,60
pausetime = 0,30
sparkno = S6202
guard.sparkno = 0
sparkxy = -10,-20
ground.type = low      ;Low,Trip,None
ground.slidetime = -5
ground.hittime = -5
air.hittime = 20
ground.velocity = -5,2
air.velocity = -5,2
palfx.time = 90
palfx.add = 40,-70,-200
palfx.sinadd = 40,30,0,10
palfx.color = 0
palfx.invertall = 1
fall = 1

[State 3610, destroyself]
type = destroyself
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; KFS - AI (Artificial Intelligence)
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
; Random Sounds
;---------------------------------------------------------------------------

; Medium Blows
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 5
trigger1 = stateno = 210
trigger2 = stateno = 240
trigger3 = stateno = 410
trigger4 = stateno = 440
trigger5 = stateno = 610
trigger6 = stateno = 640
value = 12,0
channel = 0

; Strong Blows
[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = time = 5
trigger1 = stateno = 215
trigger2 = stateno = 220
trigger3 = stateno = 250
trigger4 = stateno = 420
trigger5 = stateno = 450
trigger6 = stateno = 620
trigger7 = stateno = 650
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
value = 10,1

;---------------------------------------------------
;===================================================
;Combo Standing
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
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 220
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 210) && (movecontact) 
value = 200

;3 pugni 
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
value = 220

;3 pugni 
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
trigger1 = (stateno = 210) && (prevstateno = 220) && (movecontact) 
value = 200

;3 pugni 
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
trigger1 = (stateno = 200) && (prevstateno = 220) && (movecontact) 
value = 210

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
value = 250
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 240) && (movecontact) 
value = 230

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
trigger1 = (stateno = 400) && (prevstateno = 410) && (movecontact) 
value = 420

;calci Abbasati
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
trigger1 = (stateno = 440) && (prevstateno = 430) && (movecontact) 
value = 435

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
value = 455

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

;---------------------------------------------------------------------------
;Special Moves
;---------------------------------------------------------------------------

;Charge
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 89])
trigger1 = (P2bodydist X >= 150) && (power < 3000) && (prevstateno != 5120)
value = 900

;FireBall
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [90, 134])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120)
value = 1100

;Fire Column
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [135, 179])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120) 
value = 1200

;Cosmo Explosion
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [180, 224])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 1300

;Air IcyFiry
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [225, 269])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 1400

;Icy Punch
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [270, 314])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120)
value = 1500

;Freezing Air
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [315, 359])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120)
value = 1600

;Running Punch
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [360, 404])
trigger1 = (P2bodydist X >= 120) && (prevstateno != 5120) 
value = 1800

;Claws
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [405, 449])
trigger1 = (p2bodydist X <= 100) && (prevstateno != 5120)
value = 3000

;Barrier
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [450, 494])
trigger1 = (p2bodydist X <= 50) && (prevstateno != 5120)
value = 950

;Roll Forward
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [495, 539])
trigger1 = (p2bodydist X >= 150) && (prevstateno != 5120)
value = 2050

;Roll Backward
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [540, 584])
trigger1 = (p2bodydist X <= 75) && (prevstateno != 5120)
value = 2150

;Throw
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [585, 629])
trigger1 = (p2bodydist X <= 50) && (prevstateno != 5120)
value = 800

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

;Geiser
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 80) && (power >= 1000) && (power < 2000) && (random = [675, 719])
value = 3100

;Fire Storm
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall =  (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 150) && (power >= 2000) && (random = [720, 764])
value = 3200

;Asgard Snow
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 320) && (power >= 3000) && (random = [765, 809])
value = 3300

;Midday Fire Lv1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 320) && (power >= 1000) && (power < 2000) && (random = [810, 854])
value = 3400

;Midday Fire Lv2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 320) && (power >= 2000) && (random = [855, 899])
value = 3500

;Midday Fire Lv3
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 320) && (power >= 3000) && (random = [900, 944])
value = 3600

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
; Remove Explods
;-------------------------------------

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

;-------------------------------------

[State -3, removeexplod]
type = RemoveExplod
triggerall = NumExplod(6001) >= 0
trigger1 = stateno != 901
ID = 6001

;-------------------------------------
;barrier
[State -3, removeexplod]
type = RemoveExplod
triggerall = numexplod(7006) >= 0
trigger1 = stateno != 951
ID = 7006

[State -3, removecosmo]
type = RemoveExplod
triggerall = numexplod(956) >= 0
trigger1 = stateno != 951
ID = 956

;-------------------------------------
;ghiacciolo 
[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = !movecontact
trigger2 = time = 215;165
id = 3380

;Bg effect geiser
[State -3, bgfx]
type = bgpalfx
triggerall = prevstateno = 3100
trigger1 = movetype = H
time = 0

;p1 effect 7th sense
[State -3, fx]
type = palfx
trigger1 = power = 0
time = 0

;---------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = Animelem = 4
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = Animelem = 7
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
triggerall = anim = 20
trigger1 = Animelem = 4
value = F3,0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = Animelem = 7
value = F3,1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = Animelem = 2
value = F3,0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = Animelem = 5
value = F3,1

;---------------------------------------

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
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

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
trigger1 = Animelem = 3
value = 3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 3
value = F3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 6
value = 3,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 6
value = F3,1

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
value = 2,2

[State -3, Run Back Land]
type = PlaySnd
triggerall = stateno = 106
trigger1 = time = 1
value = F2,3

;---------------------------------------

[State -3, Flare]
type = Explod
triggerall = anim = 5150
trigger1 = time = 1
pos = 0,0
anim = 5111
removetime = -1
sprpriority = -5
ownpal = 1
id = 5111
bindtime = -1

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = Var(58) = 0
triggerall = Life <= 0
triggerall = anim = 5148
trigger1 = time = 1
trigger2 = time = 10
trigger3 = time = 20
value = 11,1

[State -3, Saphir Light]
type = Explod
triggerall = anim = 5150
trigger1 = time = 1
anim = 5152
ID = 5152
pos = -6,-3
sprpriority = 5
ownpal = 1

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9