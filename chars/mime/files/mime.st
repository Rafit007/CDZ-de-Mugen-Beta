;---------------------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 2]
type = VarRandom
trigger1 = Time = 0
v = 17
range = 0,99

[State 170, PlaySnd]
type = PlaySnd
triggerall = Var(17) = [0,49]
trigger1 = animelem = 2
value = 170,0
channel = 0

[State 170, PlaySnd]
type = PlaySnd
triggerall = Var(17) = [50,99]
trigger1 = animelem = 2
value = 170,1
channel = 0

[State 170, 2]
type = AssertSpecial
triggerall = Var(17) = [0,49]
trigger1 = time = [0,150]
flag = roundnotover

[State 170, 3]
type = AssertSpecial
triggerall = Var(17) = [50,99]
trigger1 = time = [0,120]
flag = roundnotover

[State 170, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, 2]     ;win per fatality
type = ChangeState
triggerall = var(3) = 1
trigger1 = Time = 0
value = 189

[State 180, 2]
type = VarRandom
triggerall = var(3) = 0
trigger1 = Time = 0
v = 2
range = 0,99

[State 180, 3]      ;nota dalla cetra
type = ChangeState
triggerall = var(3) = 0
trigger1 = Var(2) = [0,25]
value = 181

[State 180, 4]      ;ELMO
type = ChangeState
triggerall = var(3) = 0
trigger1 = Var(2) = [26,50]
value = 182

[State 180, 5]      ;hilda
type = ChangeState
triggerall = var(3) = 0
trigger1 = Var(2) = [51,75]
value = 183

[State 180, 6]      ;folken
type = ChangeState
triggerall = var(3) = 0
trigger1 = Var(2) = [76,99]
value = 184

;---------------------------------------------------------------------------
; Win pose 1 nota di cetra
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 191, 2]
type = AssertSpecial
trigger1 = time = [0,120]
flag = roundnotover

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 181,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 181,1
channel = 0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 2 ELMO
[Statedef 182]
type    = S
physics = S
ctrl = 0
anim = 187
velset = 0,0

[State 180, 2]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 61
value = 187,0
channel = 0

[State 181,assert ]
type = AssertSpecial
trigger1 = time < 400
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 3 hilda
[Statedef 183]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 183, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 183,0
channel = 0

[state 183,2]
type = explod
trigger1 = animelem = 2
pos = 0,0
anim = 18200
pos = 0, 0
removetime = 270
sprpriority = -2
ownpal = 1

;Hilda Face
[state 183,2]
type = Explod
trigger1 = AnimElem = 1
anim = 183
id = 183
pos = 0,13
postype = back
sprpriority = -5
removetime = 280
scale = .95,.95

[State 181,assert ]
type = AssertSpecial
trigger1 = time < 280
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose 4 folken
[Statedef 184]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 184, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 184,0
channel = 0

[state 183,2]
type = explod
trigger1 = animelem = 2
pos = 0,0
anim = 18200
pos = 0, 0
removetime = 410
sprpriority = -2
ownpal = 1

;Folken
[state 184,2]
type = explod
trigger1 = time = 0
pos = 100,0
anim = 186
removetime = 440
sprpriority = -1
ownpal = 1

[State 181,assert ]
type = AssertSpecial
trigger1 = time < 440 ;90
flag = roundnotover

;---------------------------------------------------------------------------
; Win pose Fatality
[Statedef 189]
type    = S
physics = S
ctrl = 0
anim = 189
velset = 0,0

[State 180, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 180, 2]
type = PlaySnd
trigger1 = time = 1
value = 189, 0

[State 181,assert ]
type = AssertSpecial
triggerall = var(3) = 1
trigger1 = time < 90
flag = roundnotover

;---------------------------------------------------------------------------
;intro state decider
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[state 190, 1]
type = changestate
trigger1 = roundno = 1
trigger1 = p2name = "shun2" || p4name = "shun2"
value = 195

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 190, 3]
type = varset
trigger1 = time = 0
var(3) = 0

[state 190, 4]    ;vestizione 1
type = changestate
trigger1 = var(2) = [0,15]
value = 191

[state 190, 5]   ;vestizione 2
type = changestate
trigger1 = var(2) = [16,32]
value = 192

[state 190, 6]   ;intro asgardiani
type = changestate
trigger1 = p2name != "mime" && p3name != "mime" && p4name != "mime" && p2name != "hilda" && p3name != "hilda" && p4name != "hilda"
triggerall = var(2) = [33,49]
value = 193
[state 190, 6]   ;intro benvenuto
type = changestate
trigger1 = p2name = "mime" || p3name = "mime" || p4name = "mime" || p2name = "hilda" || p3name = "hilda" || p4name = "hilda"
triggerall = var(2) = [33,49]
value = 196

[state 190, 6]   ;intro folken
type = changestate
trigger1 = var(2) = [50,74]
value = 194

[state 190, 6]   ;intro muretto
type = changestate
trigger1 = var(2) = [75,99]
value = 195

;---------------------------------------------------------------------------
; Introduction Cloth V1
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 2] 
type = AssertSpecial
trigger1 = 1
flag = Intro

;Clothe Elem 1
[State 191, 1]
type = PlaySnd
trigger1 = time = 40
value = 190, 0

;Clothe Elem 2
[State 191, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 190, 1

;Clothe Elem 3
[State 191, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 190, 2

;Clothe Elem 4
[State 191, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 190, 3

;Clothe Elem 5
[State 191, 1]
type = PlaySnd
trigger1 = animelem = 7
value = 190, 4

;Clothe Elem 6
[State 191, 1]
type = PlaySnd
trigger1 = animelem = 9
value = 190, 5

;Clothe Elem 7
[State 191, 1]
type = PlaySnd
trigger1 = animelem = 10
value = 190, 6

;Clothe Elem 8
[State 191, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 190, 7

;Clothe elem final
[State 191, 1]
type = PlaySnd
trigger1 = animelem = 11
value = 190, 8

;Voice
[State 191, 1]
type = PlaySnd
trigger1 = animelem = 15
value = 191, 1
channel = 0

;Cloth Socle
[state 191,1]
type = explod
trigger1 = time = 0
pos = -120,0
anim = 192
removetime = 118
sprpriority = 3
ownpal = 1

;Cloth Separate
[state 191,1]
type = explod
trigger1 = animelem = 3
pos = -120,0
anim = 193
removetime = 81
sprpriority = -2
ownpal = 1

;Light Effect Clothe
[state 191,1]
type = explod
trigger1 = time = 30
pos = -120,0
anim = 19200
removetime = 16
sprpriority = 0
ownpal = 1

; Cloth Totem p1
[State 191]
type = Explod
triggerall = facing = 1
trigger1 = time = 240
anim = 905
sprpriority = -3
postype = p1
pos = -32,-120
ownpal = 1
removetime = 180
scale = 1.25,1.25
bindtime = -1
supermove = 1

; Cloth Totem p2
[State 191]
type = Explod
triggerall = facing = -1
trigger1 = time = 240
anim = 906
sprpriority = -3
postype = p1
pos = -32,-120
ownpal = 1
removetime = 180
scale = 1.25,1.25
bindtime = -1
supermove = 1

; Light Totem p1
[State 191]
type = Explod
triggerall = facing = 1
trigger1 = time = 240
anim = 19200
sprpriority = -1
postype = p1
pos = -225,-76
ownpal = 1
removetime = 180
scale = 1.25,1.25
bindtime = -1
supermove = 1
;trans = add

; Light Totem p2
[State 191]
type = Explod
triggerall = facing = -1
trigger1 = time = 240
anim = 19201
sprpriority = -1
postype = p1
pos = -225,-76
ownpal = 1
removetime = 180
scale = 1.25,1.25
bindtime = -1
supermove = 1
;trans = add

;Saphir
[State 191]
type = Explod
trigger1 = animelem = 31
pos = 0,0
anim = 20010
sprpriority = 2
supermove = 1
ownpal = 1
removeongethit = 1

;Saphir
[State 191]
type = Explod
trigger1 = time = 220
pos = -14,41
anim = 20010
sprpriority = 3
supermove = 1
ownpal = 1
removeongethit = 1
removetime = 180

[State 191]
type = Changeanim
trigger1 = Time = 362
value = 12

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
trigger1 = Time = 372
value = 0

;---------------------------------------------------------------------------
; Introduction Cloth V2
[Statedef 192]
type = S
ctrl = 0
anim = 191
velset = 0,0
sprpriority = 1

[State 192, 2] 
type = AssertSpecial
trigger1 = 1
flag = Intro

;Clothe Elem 1
[State 192, 1]
type = PlaySnd
trigger1 = time= 40;animelem = 2
value = 190, 1

;Clothe Elem 2
[State 192, 1]
type = PlaySnd
trigger1 = time=113;animelem = 5
value = 190, 3

;Voice
[State 192, 1]
type = PlaySnd
trigger1 = animelem = 8
value = 191, 0
channel = 0

;Clothe Socle
[state 192,1]
type = explod
trigger1 = time = 0
pos = 0,0
anim = 195
removetime = 141
sprpriority = 2
ownpal = 1

;Light Effect Clothe
[state 192,1]
type = explod
trigger1 = time = 30
pos = -75,3
anim = 19200
removetime = 20;16
sprpriority = 1
ownpal = 1

;Constellation
[State 192]
type = Explod
trigger1 = animelem = 5
pos = 0,-20
anim = 19100
sprpriority = -3
supermove = 1
ownpal = 1
removeongethit = 1
removetime = 325
scale = .60,.60

[State 192]
type = Changeanim
trigger1 = Time = 470
value = 12

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
trigger1 = Time = 480
value = 0

;---------------------------------------------------------------------------
; Intro asgardiani
[Statedef 193]
type = S
ctrl = 0
anim = 198
velset = 0,0

[State 191,add ]
type = AssertSpecial
trigger1 = time = [0,425]
flag = intro
flag2= noshadow

[State 193, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 8005, carro]
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

[state 193,2] ;cosmo
type = explod
trigger1 = time = 0
pos = 0,0
anim = 19800
pos = 0, 0
removetime = 400
sprpriority = -2
ownpal = 1

;hilda voice
[State 195, 1]
type = PlaySnd
trigger1 = time = 0
value = 193, 0
channel = 1

;Hilda
[state 193,2]
type = explod
trigger1 = time = 0
pos = 5,0
anim = 184
removetime = 390
sprpriority = -1
ownpal = 1

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

[State 194]
type = ChangeState
trigger1 = animTime = 0
value = 0

;sigfried
[state 193,2]
type = explod
trigger1 = time = 0
id =1841
pos = 0,0
anim = 1841
removetime = 390
sprpriority = 0
ownpal = 1
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = time = 0
id = 1841
trigger1 = p2name = "sigfried" || p3name = "sigfried" || p4name = "sigfried"
trigger2 = p2name = "sigfried d'Alpha" || p3name = "sigfried d'Alpha" || p4name = "sigfried d'Alpha"
trigger3 = p2name = "sigfried de dubhe" || p3name = "sigfried de dubhe" || p4name = "sigfried de dubhe"
trigger4 = p2name = "orion" || p3name = "orion" || p4name = "orion"
trigger5 = p2name = "orion di Asgard" || p3name = "orion di Asgard" || p4name = "orion di Asgard"

;hagen
[state 193,2]
type = explod
trigger1 = time = 0
id =1842
pos = 0,0
anim = 1842
removetime = 390
sprpriority = 2
ownpal = 1
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = time = 0
id = 1842
trigger1 = p2name = "hagen" || p3name = "hagen" || p4name = "hagen"
trigger2 = p2name = "hagen de beta" || p3name = "hagen de beta" || p4name = "hagen de beta"
trigger3 = p2name = "hagen de Merak" || p3name = "hagen de Merak" || p4name = "hagen de Merak"
trigger4 = p2name = "artax" || p3name = "artax" || p4name = "artax"
trigger5 = p2name = "artax di Asgard" || p3name = "artax di Asgard" || p4name = "artax di Asgard"

;luxor
[state 193,2]
type = explod
trigger1 = time = 0
id =1843
pos = 0,10
anim = 1843
removetime = 390
sprpriority = 1
ownpal = 1
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = time = 0
id = 1843
trigger1 = p2name = "fenrir" || p3name = "fenrir" || p4name = "fenrir"
trigger2 = p2name = "fenrir de Epsilon" || p3name = "fenrir de Epsilon" || p4name = "fenrir de Epsilon"
trigger3 = p2name = "fenrir d'Alioth" || p3name = "fenrir d'Alioth" || p4name = "fenrir d'Alioth"
trigger4 = p2name = "luxor" || p3name = "luxor" || p4name = "luxor"
trigger5 = p2name = "luxor di Asgard" || p3name = "luxor di Asgard" || p4name = "luxor di Asgard"

;megres
[state 193,2]
type = explod
trigger1 = time = 0
id =1844
pos = 0,0
anim = 1844
removetime = 390
sprpriority = 2
ownpal = 1
scale= .90,.90
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = time = 0
id = 1844
trigger1 = p2name = "alberich" || p3name = "alberich" || p4name = "alberich"
trigger2 = p2name = "alberich de delta" || p3name = "alberich de delta" || p4name = "alberich de delta"
trigger3 = p2name = "alberich de megrez" || p3name = "alberich de megrez" || p4name = "alberich de megrez"
trigger4 = p2name = "megres" || p3name = "megres" || p4name = "megres"
trigger5 = p2name = "megres di Asgard" || p3name = "megres di Asgard" || p4name = "megres di Asgard"

;syd
[state 193,2]
type = explod
id =1845
trigger1 = time = 0
pos = 0,0
anim = 1845
removetime = 390
sprpriority = -3
ownpal = 1
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = time = 0
id = 1845
trigger1 = p2name = "syd" || p3name = "syd" || p4name = "syd"
trigger2 = p2name = "syd de zeta" || p3name = "syd de zeta" || p4name = "syd de zeta"
trigger3 = p2name = "syd de mizar" || p3name = "syd de mizar" || p4name = "syd de mizar"
trigger4 = p2name = "mizar" || p3name = "mizar" || p4name = "mizar"
trigger5 = p2name = "mizar di Asgard" || p3name = "mizar di Asgard" || p4name = "mizar di Asgard"

;thor
[state 193,2]
type = explod
id =1846
trigger1 = time = 0
pos = 0,0
anim = 1846
removetime = 390
sprpriority = -3
ownpal = 1
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = time = 0
id = 1846
trigger1 = p2name = "tholl" || p3name = "tholl" || p4name = "tholl"
trigger2 = p2name = "tholl de gamma" || p3name = "tholl de gamma" || p4name = "tholl de gamma"
trigger3 = p2name = "tholl de Phecda" || p3name = "tholl de Phecda" || p4name = "tholl de Phecda"
trigger4 = p2name = "thor" || p3name = "thor" || p4name = "thor"
trigger5 = p2name = "thor di Asgard" || p3name = "thor di Asgard" || p4name = "thor di Asgard"

;---------------------------------------------------------------------------
;Intro Folken
[Statedef 194]
type = S
ctrl = 0
anim = 197
velset = 0,0

[State 194,add ]
type = AssertSpecial
trigger1 = time = [0,105]
flag = intro

[State 194, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 194, 1]
type = PlaySnd
trigger1 = time = 0
value = 194, 0
channel = 1

;Folken
[state 194,2]
type = explod
trigger1 = time = 0
pos = -20,0
anim = 185
removetime = 130
sprpriority = -1
ownpal = 1

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
type = ChangeState
trigger1 = Time = 140
value = 0

;---------------------------------------------------------------------------
;Intro muretto VS Shun
[Statedef 195]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 195, 1] 
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nomusic

[State 195, 1]
type = assertspecial
trigger1 = time = [0,1830]
flag = noshadow

;Music
[State 195, 1]
type = PlaySnd
trigger1 = time = 0
value = 195, 1
channel = 1

;Cosmo
[State 195, 2]
type = Explod
trigger1 = time = 0
anim = 19400
id = 19400
pos = 0,0
postype = p1
sprpriority = -1
removetime = -1
bindtime = -1
ownpal = 1
supermove = 1
removeongethit = 1

;Background
[State 195, 3]
type = Explod
trigger1 = time = 0
pos = 0,0
anim = 19500
sprpriority = -2
supermove = 1
ownpal = 1
removeongethit = 1

;Saphir
[State 195]
type = Explod
trigger1 = time = 1942
pos = 0,0
anim = 20010
sprpriority = 2
supermove = 1
ownpal = 1
removeongethit = 1

[State 195, 4]
type = RemoveExplod
triggerall = NumExplod(19400) = 1
trigger1 = time = 1800
ID = 19400

[State 195, 5]
type = RemoveExplod
triggerall = NumExplod(19500) = 1
trigger1 = time = 1879
ID = 19500

[State 195]
type = RemoveExplod
triggerall = NumExplod(19100) = 1
trigger1 = time = 2200
ID = 19100

[State 195, 5]
type = RemoveExplod
triggerall = NumExplod(20010) = 1
trigger1 = time = 2200
ID = 20010

[State 195, 1]
type = PlaySnd
trigger1 = time = 1830
value = 100, 0

[State 195, 1]
type = PlaySnd
trigger1 = time = 1840
value = 6, 2

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

[State 195, 6]
type = ChangeState
trigger1 = Time = 1845
value = 0

;-----------------------------------------------------------------------------
;intro benvenuto
[Statedef 196]
type = S
ctrl = 0
anim = 196
velset = 0,0
sprpriority = 1

[State 196, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 196, 1]
type = PlaySnd
trigger1 = time = 0
value = 196, 0
channel = 0

[State 196, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 196, 6]
type = ChangeState
trigger1 = Time = 150
value = 0

;---------------------------------------------------------------------------
;Taunt decider
[Statedef 199]
type = S

[State 180, 2]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,50

[State 180, 3]      ;risatine
type = ChangeState
triggerall = var(3) = 0
trigger1 = Var(2) = [0,34]
value = 198

[State 180, 4]      ;cetra sottobraccio
type = ChangeState
triggerall = var(3) = 0
trigger1 = Var(2) = [35,50]
value = 197

;-------------------------------------------------------------------------------
; Taunt 1 risate
[Statedef 198]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 199, 3]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 199, 3]
type = PlaySnd
trigger1 = time = 0
trigger1 = Var(2) = [0,24]
value = 199,0
channel = 0

[State 199, 3]
type = PlaySnd
trigger1 = time = 0
trigger1 = Var(2) = [25,49]
value = 199,1
channel = 0

[State 199, 3]
type = PlaySnd
trigger1 = time = 0
trigger1 = Var(2) = [50,74]
value = 199,2
channel = 0

[State 199, 3]
type = PlaySnd
trigger1 = time = 0
trigger1 = Var(2) = [75,99]
value = 199,3
channel = 0

[State 199, 5]
type = ChangeState
trigger1 = Time = 80
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; TAUNT 2 cetra sottobraccio
[Statedef 197]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = 182,0
channel = 0

[State 199, 5]
type = ChangeState
trigger1 = animTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch
[Statedef 200,a]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 50
ctrl = 0
velset = 0,0
anim = 200
sprpriority = 2

[State 200, 1]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 20
animtype = light
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 8, 8
sparkno = s7001
sparkxy = -10, -76
hitsound = S1, 0
guardsound = S2, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
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
; Standing medium punch
[Statedef 210,b]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 2,0
anim = 210

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = light
damage    = 30
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 5,10
sparkno = s7001
sparkxy = -15,-80
hitsound   = S1,1
guardsound = S2,1
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing strong punch
[Statedef 220,c]
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
animtype  = Medium
damage    = 40
hitflag = MAF
guardflag = MA
getpower = 0
givepower = 0
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-70
hitsound   = S1,2
guardsound = S2,2
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4

[state 220,2]
type = explod
trigger1 = animelem = 3
pos = 0,0
anim = 221
pos = 0, 0
removetime = 5
sprpriority = 2
ownpal = 1
bindtime = -1

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing light kick
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
value = 0, 0

[State 230, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 20
hitflag = MAF
guardflag = MA
getpower = 0
givepower = 0
pausetime = 5,10
sparkno = s7000
sparkxy = -10,-60
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2.5,-3.5

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing medium kick
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
value = 0, 1

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = hard
damage    = 30
hitflag = MAF
guardflag = MA
getpower = 0
givepower = 0
pausetime = 5,12
sparkno = s7001
sparkxy = -10,-76
hitsound   = S1,1
guardsound = S2,1
ground.type = high
ground.slidetime = 12
ground.hittime  = 10
ground.velocity = -6
air.velocity = -2.2,-3.2

[State 240, 3]
type = PosAdd
trigger1 = AnimElem = 7
x = 12

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing strong kick
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
value = 0, 2

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = hard
damage    = 40
hitflag = MAF
guardflag = MA
getpower = 0
givepower = 0
pausetime = 2,6
sparkno = s7001
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S2,2
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -16
air.velocity = -2.2,-3.2

[State 250, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light punch
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
sparkxy = -10,-55
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching medium punch
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

[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
getpower = 0
givepower = 0
animtype  = Medium
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-55
hitsound   = S1,1
guardsound = S2,1
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching strong punch
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
trigger1 = Time = 1
value = 0, 2

[State 420, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage = 40
getpower = 0
givepower = 0
animtype  = hard
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-55
hitsound   = S1,2
guardsound = S2,2
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light kick
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
trigger1 = AnimElem = 2
attr = C, NA
damage = 20
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7000
sparkxy = -10,-8
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Medium Kick
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
trigger1 = AnimElem = 3
attr = C, NA
damage = 30
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7001
sparkxy = -5,-10
hitsound   = S1,2
guardsound = S2,2
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Strong Kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 50
ctrl = 0
anim = 450
sprpriority = 2

[State 450, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 450, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 40
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 12,6
sparkno = s7001
sparkxy = -10,-42
hitsound   = S1,2
guardsound = S2,2
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Jump Light Punch
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
trigger1 = animelem = 2
value = 0, 0

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20
getpower = 0
givepower = 0
animtype = Light
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 8, 10
sparkno = s7000
sparkxy = -10, -91
hitsound = S1, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1,0
air.type = High
air.velocity = -1.4,-3
air.hittime = 12


;---------------------------------------------------------------------------
;Jump Medium Punch
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
trigger1 = animelem = 2
value = 0, 1

[State 610, 3]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 30
getpower = 0
givepower = 0
animtype = Medium
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 8, 15
sparkno = s7001
sparkxy = -10, -89
hitsound = S1, 1
guardsound = s2, 1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -3,0
air.type = High
air.velocity = -2.7,-3
air.hittime = 12


;---------------------------------------------------------------------------
;Jump Strong Punch
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 620
sprpriority = 2

[State 620, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 0, 2

[State 620, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 40
getpower = 0
givepower = 0
animtype = Hard
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 8, 20
sparkno = s7001
sparkxy = -10, -90
hitsound = S1, 2
guardsound = S2, 2
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -5,0
air.type = High
air.velocity = -2.7,-3
air.hittime = 12

;---------------------------------------------------------------------------
;Jump Light Kick
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
trigger1 = time = 0
attr = S, NA
damage = 20
getpower = 0
givepower = 0
animtype = Light
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 8, 8
sparkno = s7000
sparkxy = -10, -40
hitsound = S1, 0
guardsound = s2, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1,0
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;---------------------------------------------------------------------------
;Jump Medium Kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 640
sprpriority = 2

[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 640, 3]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 30
getpower = 0
givepower = 0
animtype = Medium
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 12, 12
sparkno = s7001
sparkxy = -10, -40
hitsound = S1, 1
guardsound = s2, 1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -3,0
air.type = High
air.velocity = -2.7,-3
air.hittime = 12

;---------------------------------------------------------------------------
;Jump Strong Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 650
sprpriority = 1

[State 650, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 650, 3]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 40
animtype = Hard
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA			
priority = 3, Hit
pausetime = 12,12
sparkno = s7001
sparkxy = -10, -40
hitsound = S1, 2
guardsound = s2, 2
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -5,0
air.type = High
air.velocity = -2.7,-3
air.hittime = 12

[state 650,3]
type = explod
trigger1 = AnimElem = 3
pos = 0,0
anim = 651
pos = 0, 0
removetime = 5
sprpriority = 2
ownpal = 1
bindtime = -1

;---------------------------------------------------------------------------
;Standing flash elobow
[Statedef 211,flash elbow]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 211

[State 211, 5]
type=AfterImage
trigger1= Time = 0
time= 7
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 211,Explod]
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

[State 211, polvere]
type = MakeDust
trigger1 = animelem = 2
pos = -15,3
pos2 = -22,-3
spacing = 2

[State 211, 3]
type = VelSet
trigger1 = time = 5
x = 25

[State 211, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 211, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = medium
damage    = 90, 9
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 12,3
sparkno = s7001
sparkxy = -10,-80
hitsound   = S1,1
guardsound = S2,1
ground.type = trip
ground.slidetime = 12
ground.hittime  = 10
ground.velocity = -15,-2.5
air.velocity = -2.5,-4
fall = 1

[State 211, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing light kick
[Statedef 231,knee]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 231
sprpriority = 2

[State 231, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 231, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 20
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkno = s7000
sparkxy = -10,-60
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2.5,-3.5

[State 231, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching flash kick
[Statedef 431,crouch flash kick]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 100
ctrl = 0
anim = 431
sprpriority = 2

[State 431, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 431, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, SA
damage    = 90, 9
getpower = 0
givepower = 0
animtype  = hard
hitflag = MAF
guardflag = L
pausetime = 6,6
sparkno = s7000
sparkxy = -10,-8
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -15
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20

[state 650,3]
type = explod
trigger1 = AnimElem = 3
anim = 221
pos = -15, 74
sprpriority = 3
bindtime = -1

[State 0, MakeDust]
type = MakeDust
trigger1 = animelem = 3
pos = -20,0
pos2 = -35,0
spacing = 1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 15
y = 0

[State 431, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Jump flash Kick
[Statedef 660,jump flash kick]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 100
ctrl = 0
anim = 660
sprpriority = 2

[State 650, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 650, 3]
type = HitDef
trigger1 = time = 0
attr = S, SA
damage = 90, 9
animtype = Heavy
guardflag = MA
hitflag = MAF
getpower = 0
givepower = 0
priority = 3, Hit
pausetime = 12,12
sparkno = s7001
sparkxy = -10, -70
hitsound = S1, 2
guardsound = s2, 2
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -5,0
air.type = High
air.velocity = -2.7,-3
air.hittime = 12

[state 650,3]
type = explod
trigger1 = AnimElem = 2
anim = 221
pos = 20, 10
sprpriority = 3
bindtime = -1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 10
y = 0

;---------------------------------------------------------------------------
;Combo Kick 1
[Statedef 300,combo kick 1]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 300
sprpriority = 2

[State 300, 0]
type = Playsnd
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
trigger4 = animelem = 15
trigger5 = animelem = 19
trigger6 = animelem = 23
value = 0, 0

[State 300, 1]
type = Playsnd
trigger1 = animelem = 1
value = 0, 1

[State 300, 2]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 11
trigger3 = animelem = 19
attr = S, SA
animtype  = Hard
damage    = 5,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = s7001
sparkxy = -10,-60
hitsound   = S1,0
guardsound = S2,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 300, 3]
type = HitDef
trigger1 = animelem = 7
trigger2 = animelem = 15
trigger3 = animelem = 23
attr = S, SA
animtype  = Hard
damage    = 5,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = S1,0
guardsound = S2,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 300, 4]
type = HitDef
trigger1 = animelem = 8
trigger2 = animelem = 16
trigger3 = animelem = 24
attr = S, SA
animtype  = Hard
damage    = 5,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = S1,0
guardsound = S2,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 300, 5]
type = HitDef
trigger1 = animelem = 10
trigger2 = animelem = 18
attr = S, SA
animtype  = Hard
damage    = 4,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = s7001
sparkxy = -10,-60
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 300, 6]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 13
trigger3 = animelem = 21
attr = S, SA
animtype  = Hard
damage    = 4,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 300, 7]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 14
trigger3 = animelem = 22
attr = S, SA
animtype  = Hard
damage    = 5,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 300, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Combo Kick 2
[Statedef 310,combo kick 2]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 300
sprpriority = 2

[State 310, 0]
type = Playsnd
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
trigger4 = animelem = 15
trigger5 = animelem = 19
trigger6 = animelem = 23
value = 0, 1

[State 310, 1]
type = Playsnd
trigger1 = animelem = 1
value = 0, 2

[State 310, 2]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 11
trigger3 = animelem = 19
attr = S, SA
animtype  = Hard
damage    = 5,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = s7001
sparkxy = -10,-60
hitsound   = S1,1
guardsound = S2,1
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 310, 3]
type = HitDef
trigger1 = animelem = 7
trigger2 = animelem = 15
trigger3 = animelem = 23
attr = S, SA
animtype  = Hard
damage    = 5,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = S1,1
guardsound = S2,1
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 310, 4]
type = HitDef
trigger1 = animelem = 8
trigger2 = animelem = 16
trigger3 = animelem = 24
attr = S, SA
animtype  = Hard
damage    = 5,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = S1,1
guardsound = S2,1
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 310, 5]
type = HitDef
trigger1 = animelem = 10
trigger2 = animelem = 18
attr = S, SA
animtype  = Hard
damage    = 5,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = s7001
sparkxy = -10,-60
hitsound   = S1,1
guardsound = S2,1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 310, 6]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 13
trigger3 = animelem = 21
attr = S, SA
animtype  = Hard
damage    = 5,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = S1,1
guardsound = S2,1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 310, 7]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 14
trigger3 = animelem = 22
attr = S, SA
animtype  = Hard
damage    = 5,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = S1,1
guardsound = S2,1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 310, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Combo Kick 3
[Statedef 320,combo kick 3]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 300
sprpriority = 2

[State 320, 0]
type = Playsnd
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
trigger4 = animelem = 15
trigger5 = animelem = 19
trigger6 = animelem = 23
value = 0, 2

[State 320, 1]
type = Playsnd
trigger1 = animelem = 1
value = 0, 1

[State 320, 2]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 11
trigger3 = animelem = 19
attr = S, SA
animtype  = Hard
damage    = 5,2
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = s7001
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S2,2
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 320, 3]
type = HitDef
trigger1 = animelem = 7
trigger2 = animelem = 15
trigger3 = animelem = 23
attr = S, SA
animtype  = Hard
damage    = 5,2
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S2,2
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 320, 4]
type = HitDef
trigger1 = animelem = 8
trigger2 = animelem = 16
trigger3 = animelem = 24
attr = S, SA
animtype  = Hard
damage    = 5,2
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S2,2
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 320, 5]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 10
trigger3 = animelem = 18
attr = S, SA
animtype  = Hard
damage    = 5,2
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = s7001
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S2,2
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 320, 6]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 13
trigger3 = animelem = 21
attr = S, SA
animtype  = Hard
damage    = 5,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S2,2
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 320, 7]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 14
trigger3 = animelem = 22
attr = S, SA
animtype  = Hard
damage    = 5,1
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = S1,2
guardsound = S2,2
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 320, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Combo Kick crouch 1
[Statedef 500,combo kick crouch 1]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 500
sprpriority = 2

[State 500, 0]
type = Playsnd
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
trigger4 = animelem = 15
trigger5 = animelem = 19
trigger6 = animelem = 23
value = 0, 0

[State 500, 1]
type = Playsnd
trigger1 = animelem = 1
value = 0, 1

[State 500, 2]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 11
trigger3 = animelem = 19
attr = C, NA
animtype  = Hard
damage    = 5,2
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = s7001
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 3]
type = HitDef
trigger1 = animelem = 7
trigger2 = animelem = 15
trigger3 = animelem = 23
attr = C, NA
animtype  = Hard
damage    = 5,2
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = -1
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 4]
type = HitDef
trigger1 = animelem = 8
trigger2 = animelem = 16
attr = C, NA
animtype  = Hard
damage    = 5,2
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = -1
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 5]
type = HitDef
trigger1 = animelem = 10
trigger2 = animelem = 18
attr = C, NA
animtype  = Hard
damage    = 5,3
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = s7001
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 6]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 13
trigger3 = animelem = 21
attr = C, NA
animtype  = Hard
damage    = 5,3
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = -1
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 7]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 14
trigger3 = animelem = 22
attr = C, NA
animtype  = Hard
damage    = 5,3
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = -1
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;Combo Kick crouch 2
[Statedef 510,combo kick crouch 2]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 500
sprpriority = 2

[State 500, 0]
type = Playsnd
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
trigger4 = animelem = 15
trigger5 = animelem = 19
trigger6 = animelem = 23
value = 0, 0

[State 500, 1]
type = Playsnd
trigger1 = animelem = 1
value = 0, 1

[State 500, 2]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 11
trigger3 = animelem = 19
attr = C, NA
animtype  = Hard
damage    = 5,2
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = s7001
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 3]
type = HitDef
trigger1 = animelem = 7
trigger2 = animelem = 15
trigger3 = animelem = 23
attr = C, NA
animtype  = Hard
damage    = 5,2
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = -1
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 4]
type = HitDef
trigger1 = animelem = 8
trigger2 = animelem = 16
trigger3 = animelem = 24
attr = C, NA
animtype  = Hard
damage    = 5,2
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = -1
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 5]
type = HitDef
;trigger1 = animelem = 2
trigger1 = animelem = 10
trigger2 = animelem = 18
attr = C, NA
animtype  = Hard
damage    = 5,3
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = s7001
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 6]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 13
trigger3 = animelem = 21
attr = C, NA
animtype  = Hard
damage    = 5,3
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = -1
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 7]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 14
trigger3 = animelem = 22
attr = C, NA
animtype  = Hard
damage    = 5,3
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = -1
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Combo Kick crouch 3
[Statedef 520,combo kick crouch 3]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 500
sprpriority = 2

[State 500, 0]
type = Playsnd
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 11
trigger4 = animelem = 15
trigger5 = animelem = 19
trigger6 = animelem = 23
value = 0, 0

[State 500, 1]
type = Playsnd
trigger1 = animelem = 1
value = 0, 1

[State 500, 2]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 11
trigger3 = animelem = 19
attr = C, NA
animtype  = Hard
damage    = 5,2
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = s7001
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 3]
type = HitDef
trigger1 = animelem = 7
trigger2 = animelem = 15
trigger3 = animelem = 23
attr = C, NA
animtype  = Hard
damage    = 5,2
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = -1
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 4]
type = HitDef
trigger1 = animelem = 8
trigger2 = animelem = 16
trigger3 = animelem = 24
attr = C, NA
animtype  = Hard
damage    = 5,2
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = -1
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 5]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 10
trigger3 = animelem = 18
attr = C, NA
animtype  = Hard
damage    = 5,3
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = s7001
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 6]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 13
trigger3 = animelem = 21
attr = C, NA
animtype  = Hard
damage    = 5,3
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = -1
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 7]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 14
trigger3 = animelem = 22
attr = C, NA
animtype  = Hard
damage    = 5,3
getpower = 0
givepower = 0
hitflag = M
guardflag = L
pausetime = 0,0
sparkno = -1
sparkxy = -5,-10
hitsound   = S1,0
guardsound = S2,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = 0
air.velocity = -2.5,-3.5

[State 500, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;------------------------------------------------------------
;rimbalzo al muro
[Statedef 700,wall rebound]
type=A
physics=A
anim= 700
ctrl=0

[State 700, 1]
type=ctrlset
trigger1=Time = 6
value=1

[State 700, 1]
type=velset
trigger1=Time = 6
y= -9
x= 9

[State 700, 2]
type=velset
trigger1=Time = [0,4]
y=0
x=0

[State 700, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;------------------------------------------------------------
;fine rimbalzo al muro
[Statedef 701]
type=A
physics=A
anim= 700
ctrl=0

[State 701, 1]
type=velset
trigger1=Time = 6
y= -9
x= -9

[State 701, 1]
type=CtrlSet
trigger1=Time = 6
value=1

[State 701, 2]
type=velset
trigger1=Time = [0,4]
y=0
x=0

[State 701, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;---------------------------------------------------------------------------
;Throw - Attempt
[Statedef 800,throw]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
p1stateno = 810
p2stateno = 820
guard.dist = 0
fall = 1

[State 1000, 1]
type = PlaySnd
trigger1 = Time = 0
value = 800, 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Throw - Throwing the opponent
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 50

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 0

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 800, 0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 28, 0

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

[State 810, Pos 15]
type = PosAdd
trigger1 = AnimElem = 15
x = -10

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown by Throw
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
;Thrown by Throw - thrown into the air
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 2.8,-7
poweradd = 50

[State 821, 1]
type = VelAdd
Trigger1 = 1
y = .4

[State 810, Hurt 11]
type = LifeAdd
triggerall = Vel Y > 0
trigger1 = Pos Y >= -20
value = -19

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

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------
; Cosmo Charge
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
value = 900, 2

[State 900]
type = EnvShake
trigger1 = animelem = 1
time = 40

[State 900]
type = ChangeState
trigger1 = animtime = 0
value = 901

;--------------------------
;Cosmo Charge - charging
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901
velset = 0,0
ctrl = 0

[State 901]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

[State 901, cosmo]
type = Explod
triggerall = NumExplod(9021) = 0
trigger1 = animelem = 1
anim = 9021
id= 9021
sprpriority = -1
postype = p1
pos = 0,0
bindtime = -1
supermove = 1
ownpal = 1
removetime = -1
removeongethit = 1

[State 901, aura]
type = Explod
triggerall = NumExplod(904) = 0
trigger1 = animelem = 2
pos = 0,0
anim = 904
id = 904
sprpriority = 1
postype = p1
bindtime = -1
supermove = 1
scale = 0.9,0.9
ownpal = 1
removetime = -1
removeongethit = 1

[State 901, cerchio terra]
type = Explod
triggerall = NumExplod(903) = 0
trigger1 = animelem = 2
pos = 0,0
anim = 903
id = 903
sprpriority = 0
postype = p1
bindtime = -1
supermove = 1
scale = 0.9,0.9
ownpal = 1
removetime = -1
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

[State 901, constellation]
type = Explod
triggerall = NumExplod(19100) = 0
trigger1 = 1
pos = -10,-40
anim = 19100
ID = 19100
sprpriority = -2
supermove = 1
ownpal = 1
removeongethit = 1
removetime = -1
scale = .60,.60
bindtime = -1

[State 901]
type = PowerAdd
trigger1 = time > 0
value = 5

[State 901, voce]
type = PlaySnd
trigger1 = Animelem = 1
value = 900, 11
channel = 0

[State 901, StopSnd]
type = StopSnd
triggerall = Var(59) = 0
trigger1 = stateno = 902
trigger2 = command != "charge1"
trigger3 = command != "charge2"
channel = -1

[state 901, ChangeState]
type = StopSnd
triggerall = time >= 1
triggerall = Var(59) = 1
trigger1 = stateno = 902
trigger1 = random <= 1
trigger2 = p2movetype = A && random <= 100
trigger3 = p2bodydist X <= 100
channel = -1

;[State 900, Shake]
;type = EnvShake
;trigger1 = animelem = 3
;time = 10

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

;--------------------------
;Cosmo Charge (end)
[Statedef 902]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 902
velset = 0,0

[State 902, Var]
type = VarSet
trigger1 = Time = 0
v = 10
value = 0

[State 902, cosmo]
type = Explod
trigger1 = time = 0
anim = 9022
id= 9020
sprpriority = -1
postype = p1
ownpal = 1
removetime = 15

[State 902]
type = RemoveExplod
trigger1 = time = 0
ID = 9021

[State 902,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 9022

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

[State 902,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 903

[State 902,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 904

[State 902,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 19100

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

[State 902,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ruota1
[Statedef 1000,ruota1]
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
trigger1 = Time = 0
value = 1100, 0

[State 1000, 2]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 1000, 3]
type = AfterImage
trigger1 = time = 5
time = 10
FrameGap = 2
length = 12
PalBright = 10,10,10
PalContrast= 98,98,98
trans = Add1

[State 1000, 4]
type = MakeDust
trigger1 = Time = 0
pos = -15,3
pos2 = -22,-3
spacing = 2

[State 1000, 6]
type = HitDef
trigger1 = AnimElem = 5
priority = 5
attr = S, SA
damage = 90, 9
getpower = 0
givepower = 0
animtype = hard
hitflag = MAF
guardflag = MA
sparkno = s7001
sparkxy = -20,-98
hitsound   = s1,0
guardsound = 2,2
pausetime = 5,10
ground.hittime = 19
ground.type = trip
ground.slidetime = 19
ground.velocity = -4,-7
air.velocity = -4,-3
fall = 1
fall.recover = 0

[State 1000, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ruota2
[Statedef 1010,ruota2 1]
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
trigger1 = Time = 0
value = 1100, 0

[State 1010, 2]
type = PlaySnd
trigger1 = Time = 5
value = 0, 0

[State 1010, 3]
type = null;AfterImage
trigger1 = time = 5
time = 10
FrameGap = 2
length = 12
PalBright = 10,10,10
PalContrast= 98,98,98
trans = Add1

[State 1010, 4]
type = MakeDust
trigger1 = Time = 0
pos = -15,3
pos2 = -22,-3
spacing = 2

[State 1010, 6]
type = HitDef
trigger1 = AnimElem = 5
priority = 5
attr = S, SA
damage = 45, 9
getpower = 0
givepower = 0
animtype = hard
hitflag = MAF
guardflag = MA
sparkno = s7001
sparkxy = -20,-98
hitsound   = s1,1
guardsound = 2,1
pausetime = 2,18
ground.hittime = 1
ground.type = high
ground.slidetime = 19
ground.velocity = -2
air.velocity = -4,-3
fall = 0
fall.recover = 0
p1stateno = 1011

[State 1010, 7]
type = SprPriority
triggerall = MoveContact = 0
trigger1 = AnimElem = 6
value = -1

[State 1010, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 12
ctrl = 1

;---------------------------------------------------------------------------
; ruota2
[Statedef 1011,ruota2 2]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1011
ctrl = 0
sprpriority = 2

[State 1010, 1]
type = null;PlaySnd
trigger1 = Time = 0
value = 1100, 0

[State 1010, 4]
type = MakeDust
trigger1 = Time = 0
pos = -15,3
pos2 = -22,-3
spacing = 2

[State 1010, 6]
type = HitDef
trigger1 = AnimElem = 3
priority = 5
attr = S, NA
damage = 45
getpower = 0
givepower = 0
animtype = light
hitflag = MAF
guardflag = MA
sparkno = s7001
sparkxy = -20,-98
hitsound   = s1,1
guardsound = 2,1
pausetime = 2,5
ground.hittime = 15
ground.type = high
ground.slidetime = 15
ground.velocity = -5,-8
air.velocity = -4,-3
fall = 1
fall.recover = 0

[State 1010, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 12
ctrl = 1

;---------------------------------------------------------------------------
; ruota3
[Statedef 1020,ruota3]
type    = S
movetype= A
physics = N
juggle  = 6
poweradd= 100
velset = 0,0
anim = 1020
ctrl = 0
sprpriority = 2

[State 1020, 1]
type = VelMul
trigger1 = 1
x = .85 * ifelse (AnimElemTime(6) < 0, 1, .8)

[State 1020, 2]
type = AfterImage
trigger1 = Time = 5
length = 13
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 2

[State 1020, 3]
type = AfterImageTime
trigger1 = AnimElemTime(8) < 0
time = 2

[State 1020, 4]
type = PalFX
trigger1 = Time = 0
time = 20
add = 32,16,0
sinadd = 64,32,5,3

[State 1020, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1100, 0

[State 1020, 2]
type = PlaySnd
trigger1 = Time = 35
value = 0, 0

[State 1020, 2]
type = Explod
trigger1 = AnimElem = 2
ID = 101
anim = 101
pos = -30,0
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

[State 1020, 3]
type = AfterImage
trigger1 = animelem = 5;time = 7
time = 10
FrameGap = 2
length = 12
PalBright = 10,10,10
PalContrast= 98,98,98
trans = Add1

[State 1020, 4]
type = MakeDust
trigger1 = Time = 0
pos = -15,3
pos2 = -22,-3
spacing = 2

[State 1020, 5]
type = VelSet
trigger1 = AnimElem = 7
x = 19
y = -6

[State 1020, 9]
type = HitDef
trigger1 = AnimElem = 7
priority = 5
attr = S, NA
damage = 90, 9
getpower = 0
givepower = 0
animtype = hard
hitflag = MAF
guardflag = MA
sparkno = s7001
sparkxy = -30,-128
hitsound   = s1,2
guardsound = 2,2
pausetime = 2,2
ground.hittime = 19
ground.type = trip
ground.slidetime = 19
ground.velocity = -5,-12
air.velocity = -4,-3
fall = 1
fall.recover = 0
p2stateno = 1025

[State 1020, 5]
type = VelSet
trigger1 = AnimElem = 9
x = 6
y = -4

[State 0, PosSet]
type = Posadd
trigger1 = animtime = 0
x = 30
;ignorehitpause =
;persistent =


[State 1020, 11]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0

; Hit by ruota3 - shaking from the hit
[Statedef 1025,hit wall]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, 1] ;Custom animation
type = ChangeAnim2
trigger1 = 1
value = 1025

[State 1025, 2]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1026

; Hit by ruota3 - flying through the air
[Statedef 1026]
type    = A
movetype= H
physics = N

[State 1026, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1026, 2]
type = VelAdd
trigger1 = 1
y = .45

[State 1026, 3]
type = ScreenBound
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, 4]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1027

[State 1026, 5]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

; Hit by ruota3 - hit wall
[Statedef 1027]
type    = A
movetype= H
physics = N

[State 1027, 1]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, 2]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, 3]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, 4]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, 5]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, 6]
type = ChangeAnim2
trigger1 = Time = 0
value = 1027

[State 1027, 7]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

; Hit by ruota3 - bounce off wall
[Statedef 1028]
type    = A
movetype= H
physics = N

[State 1028, 1]
type = NotHitBy
trigger1 = 1
value = , NA, NP

[State 1028, 2]
type = VelSet
trigger1 = Time = 0
y = -6

[State 1028, 3]
type = VelSet
trigger1 = Time = 0
x = 1.6

[State 1028, 4]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)

[State 1028, 5]
type = VelAdd
trigger1 = 1
y = .35

[State 1028, 6] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, 7] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, 8] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, 9] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, 10]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; Light  Upper
[Statedef 1100,light upper]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = 2

[State 1100, 1]
type = AfterImage
trigger1 = time = 15
time = 10
FrameGap = 2
length = 12
PalBright = 10,10,10
PalContrast= 98,98,98
trans = Add1

[State 1100, 2]
type = MakeDust
trigger1 = Time = 0
pos = -15,3
pos2 = -22,-3
spacing = 2

[State 1100, 3]
type = Velset
trigger1 = AnimElem = 2
x = 15

[State 1100, 4]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(13) < 0
value = 5,0

[State 1100, 5]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1120, 0

[State 1100, 6]
type = HitDef
trigger1 = AnimElem = 2
priority = 5
attr = S, SA
damage = 90, 9
getpower = 0
givepower = 0
animtype = light
hitflag = MAF
guardflag = HA
sparkno = s7001
sparkxy = -10, -76
;sparkno = 2
;sparkxy = -20,-73
hitsound   = s1,0
guardsound = 2,0
pausetime = 15,25
ground.hittime = 9
ground.type = trip
ground.slidetime = 19
ground.velocity = -5
air.velocity = -4,-3
fall = 1
fall.recover = 0

[State 1100, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 1101
ctrl = 1

;------------------------------------
;
[Statedef 1101]
type = S
physics = S
anim = 1101
juggle = 5
velset = 0,0
ctrl = 0

[State 144003]
type = ChangeState
trigger1 = Time = 13
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Fast Upper
[Statedef 1120,fast upper]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd= 100
velset = 0,0
anim = 1120
ctrl = 0
sprpriority = 2

[State 1120, 1]
type = AfterImage
trigger1 = time = 15
time = 10
FrameGap = 2
length = 12
PalBright = 10,10,10
PalContrast= 98,98,98
trans = Add1

[State 1120, 2]
type = MakeDust
trigger1 = Time = 0
pos = -15,3
pos2 = -22,-3
spacing = 2

[State 1120,Explod]
type = Explod
trigger1 = AnimElem = 5
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

[State 1120, 3]
type = Velset
trigger1 = AnimElem = 6
x = 25

[State 1120, 4]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(14) < 0
value = 5,0

[State 1120, 5]
type = AfterImage
trigger1 = Time = 0
length = 13
PalBright   =  30, 30,  0
PalContrast =  70, 70, 20
PalAdd      = -10,-10,-10
PalMul      = .85,.85,.50
TimeGap  = 1
FrameGap = 2
Trans = Add
time = 2

[State 1120, 6]
type = AfterImageTime
trigger1 = AnimTime < -2
time = 2

[State 1120, 7]
type = PalFX
trigger1 = Time = 0
time = 20
add = 32,16,0
sinadd = 64,32,5,3

[State 1120, 8]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1120, 0

[State 1120, 9]
type = HitDef
trigger1 = AnimElem = 4
priority = 5
attr = S, SA
damage = 90, 9
getpower = 0
givepower = 0
animtype = hard
hitflag = MAF
guardflag = HA
sparkno = s7001
sparkxy = -10, -76
;sparkno = 2
;sparkxy = -20,-73
hitsound   = s1,2
guardsound = 2,2
pausetime = 15,7
ground.hittime = 29
ground.type = high
ground.slidetime = 29
ground.velocity = -15,-4
air.velocity = -4,-3
fall = 1
fall.recover = 0
p2stateno = 1025

[State 1120, 11]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Smash punch
[Statedef 1200,smash punch]
type    = S
movetype= A
physics = S
juggle  = 7
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = -1

[State 1200, 1]
type = AfterImage
trigger1 = time = 0
time = 12
FrameGap = 1
length = 12
PalBright = 10,10,10
PalContrast= 98,98,98
trans = Add1

[State 1200, 2]
type = MakeDust
trigger1 = Time = 0
pos = -15,3
pos2 = -22,-3
spacing = 2

[State 1200,x corsa]
type = Explod
trigger1 = AnimElem = 3
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

[State 1200, 3]
type = VelSet
trigger1 = AnimElem = 3
x = 45

[State 1200, 4]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 1200, Push]
type = PlayerPush
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 0

[State 1200, 5]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[state 1200, cosmo corsa]
type = explod
trigger1 = animelem = 4
pos = 0,0
anim = 1201
pos = 0, 0
removetime = 15
sprpriority = -2
ownpal = 1
bindtime = -1

[state 1200, 6]
type = RemoveExplod
triggerall = NumExplod(1201) = 1
trigger1 = movecontact
ID = 1201

[state 1200, raggi]
type = explod
triggerall = NumExplod(1203) = 0
trigger1 = movehit
id = 1203
postype = p2
pos = 0,0
anim = 1203
removetime = 12
sprpriority = 2

;[State 1200, 5]
;type = PlaySnd
;trigger1 = movehit
;value = 1200, 0
;channel = 1

[State 1200, 9]
type = HitDef
trigger1 = AnimElem = 3
attr = C, SA
damage    = 90, 9
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 1,25
sparkno = -1
sparkxy = -5,-70
hitsound   = S1200,0
guardsound = 2,2
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 1200, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------
;reversal attack
[Statedef 1400,reversal]
type = S
physics = S
anim = 1400
juggle = 5
velset = 0,0
ctrl = 0

[State 1400]
type = ReversalDef
trigger1 = time = 0
reversal.attr = S, NA
p1stateno = 1401
hitsound = S260,0
sparkno = -1
pausetime = 2,50

[State 1400]
type = ChangeState
trigger1 = Time = 25
value = 0;1403
ctrl = 1

;---------------------------------------
[Statedef 1401]
type = S
movetype = I
physics = S
anim = 1401
poweradd = 100
juggle = 5
velset = 0,0
ctrl = 0

[State 1401, 4]
type = Explod
trigger1 = time = 0
ID = 1405
anim = 1405
pos = 0,-10
postype = p1
sprpriority = 4
removetime = 39
ownpal = 1
bindtime = -1
scale = 1,1

[State 1401, explod]
type = Explod
triggerall = NumExplod(14040) = 0
trigger1 = time = 20
pos = 0,40
anim = 1404
id = 14040
sprpriority = 3
postype = p1
bindtime = 1
supermove = 1
ownpal = 1
removetime = 34
removeongethit = 1
vel = 0,0
scale = 1.2,1.5

[State 1401, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 2000,1

[State 1401, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 181,0

[State 1401]
type = ChangeState
trigger1 = Time = 40
value = 1402
ctrl = 0

;----------------------------------------
[Statedef 1402]
type = S
movetype = A
physics = S
anim = 1402
poweradd = 100
juggle = 5
velset = 0,0
ctrl = 0

[State 1402]
type = HitDef
trigger1 = AnimElem = 2
priority = 5
attr = S, NA
damage = 30
givepower = 0
getpower = 0
animtype  = Up
sparkno = -1
hitsound = S1401,0
guardsound = S1401,0
pausetime = 1,10
ground.hittime = 1
ground.type = High
ground.slidetime = 1
ground.velocity = -5,-12
air.velocity = -5,-12
envshake.time =  20
envshake.freq = 50
envshake.ampl = 25
envshake.phase = 25
fall = 1
fall.recover = 0
fall.damage = 60
fall.envshake.ampl = 10
fall.envshake.freq = 50
fall.envshake.time = 10
yaccel = .8
p2stateno = 1025;144004

;[State 1402, explod]
;type = Explod
;triggerall = NumExplod(1404) = 0
;trigger1 = time = 0
;pos = 0,40
;anim = 1404
;id = 1404
;sprpriority = 3
;postype = p1
;bindtime = 1
;supermove = 1
;ownpal = 1
;removetime = 34
;removeongethit = 1
;vel = 3,0
;scale = 1.2,1.5

[State 1402]
type = ChangeState
trigger1 = Time = 50
value = 1403
ctrl = 1

;------------------------------------
[Statedef 1403]
type = S
physics = S
anim = 1403
juggle = 5
velset = 0,0
ctrl = 0

[State 1403]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===============================================================================
;SPECIAL - SUPER
;===============================================================================

;--------------------------
;singola nota - Laser 0
[Statedef 2000,single]
type = S
movetype = A
physics = S
anim = 2000
juggle = 3
velset = 0,0
ctrl = 0

[State 2000, cosmo]
type = Explod
trigger1 = time = 0
pos = 0,0
anim = 2010
ID = 2010
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = -1

[State 2000, cosmo]
type = RemoveExplod
triggerall = NumExplod(2010) = 1
trigger1 = time = 15
ID = 2010

[State 2000, nota]
type = Playsnd
trigger1 = Animelem = 1
value = 3000,2
channel = 4

[State 2000, 5]
type = Playsnd
trigger1 = time = 10
value = 2000,4

[State 2000, 6]
type = Projectile
trigger1 = time = 11
attr = S, SP
ignorehitpause = 1
projanim = 2001
offset = -25,3
velocity = 5,0
damage = 60, 6
animtype = Hard
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkno = -1
guard.sparkno = -1
hitsound   = 2000,2
guardsound = 2000,3
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
palfx.time = 15
palfx.add = 110,70,122

[State 2000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------
;righe - Laser 1
[Statedef 2100,righe]
type = S
movetype = A
physics = S
anim = 2100
juggle = 3
velset = 0,0
ctrl = 0
sprpriority = 3

[State 2100, cosmo]
type = Explod
trigger1 = time = 0
pos = 0,0
anim = 2410
ID = 2410
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 16

[state 2100, 8]
type = explod
trigger1 = movecontact
triggerall = NumExplod(1203) = 0
id = 1203
postype = p2
pos = 0,-20
anim = 1202
removetime = 12
sprpriority = 3

[state 2100, 8]
type = explod
trigger1 = movecontact
triggerall = NumExplod(1204) = 0
id = 1204
postype = p2
pos = 0,10
anim = 1202
removetime = 12
sprpriority = 2

[State 2100, 3]
type = Playsnd
trigger1 = Animelem = 1
value = 2100,0
channel = 0

;[State 2100, 4]
;type = StopSnd
;trigger1 = animelem = 22
;channel = 4

;[State 2100, 3]
;type = Playsnd
;trigger1 = time = 98
;value = 2000,1

;[State 2100, 3]
;type = Playsnd
;trigger1 = time = 98
;value = 2000,4

[State 2100, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = hard
damage    = 60, 6
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,15
sparkno = s7001
sparkxy = -30,-80
hitsound   = S1,2
guardsound = S2,2
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = -2.5,-4

[state 2100, 2]
type = explod
trigger1 = animelem = 6
anim = 2101
id = 2101
removetime = 21
sprpriority = -1
ownpal = 1
bindtime = 1

[State 2100, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0;2105
ctrl = 1;0

;[Statedef 2100,rughe fine]
;type = S
;movetype = A
;physics = S
;anim = 2105
;juggle = 3
;velset = 0
;ctrl = 0

;[state 2100, 2]
;type = explod
;trigger1 = animelem = 1
;anim = 2106
;removetime = 9
;sprpriority = -1
;ownpal = 1
;bindtime = 1

;[State 2100, 7]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 0
;ctrl = 1

;--------------------------
;scossa - Laser 2
[Statedef 2200,scossa]
type = S
movetype = A
physics = S
anim = 2220  ; 2200 warriorz original
juggle = 3
velset = 0,0
ctrl = 0

[State 2200, nota stonata]
type = null;Playsnd
trigger1 = animelem = 3
value = 2000,1
channel = 1;0

[State 2200, parte la nota]
type = Playsnd
trigger1 = animelem = 15
value = 2000,4
channel = 1

[State 2200, scossa al p2]
type = null;Playsnd
trigger1 = projhit = 1
value = 2200,1
channel = 2

[State 2200, StopSnd]
type = StopSnd
trigger1 = p2stateno != 5000
channel = 3

[State 2200, 4]
type = Projectile
trigger1 = animelem = 17
attr = S, SP
projanim = 22800
offset = 0,0
velocity = 7,0
damage = 60, 6
getpower = 0
givepower = 0
animtype = Hard
hitflag = MAF
guardflag = MA
guard.pausetime = 15,5
pausetime = 15,130
sparkno = -1
guard.sparkno = -1
hitsound   = S2200,1
guardsound = S2000,3
ground.type = High
ground.slidetime = 14
ground.hittime  = 10
ground.velocity = 0;-8
air.velocity = -2.5,-5
palfx.time = 15
palfx.add = 110,70,122

[State 2200, 1]
type = Explod
trigger1 = projhit = 1
pos = -15,0
anim = 2201
ID = 2201
postype = p2
sprpriority = 2
ownpal = 1
bindtime = -1
removetime = 130
;scale= .5,.85

[State 2200, RemoveExplod]
type = RemoveExplod
trigger1 = p2stateno != 5000
id = 2201

[State 2200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===============================================================================
;DESPERATE - FATALITY
;===============================================================================

;DESESPERATE ATTACK
[Statedef 3300,desesperate]
type = S
movetype = A
physics = S
anim = 3300
poweradd = -3000
juggle = 5
velset = 0,0
ctrl = 0

[State 4005, 1]
type = assertspecial
trigger1 = 1
flag = noBG
flag2 = noFG
flag3 = nobardisplay

[State 4005, 2]
type = assertspecial
trigger1 = 1
flag = timerfreeze
flag2 = nomusic

[State 4000, 9]
type = EnvShake
trigger1 =AnimElem=1
time = 50
freq = 60

[State 4001, 10]
type = SuperPause
trigger1 = time = 0
anim = -1
Time = 390
sound = -1
movetime = 390
darken = 1

[State 3300, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 3300,0
channel = 0

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 20
value = 3300, 1
channel = 1

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 14
value = 190, 7

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2= AnimElem = 11
trigger3 = AnimElem = 16
value = 190, 0

[State 3000, 1]
type = PlaySnd
trigger1 = time = 100
value = 2, 0

[State 211,flash]
type = Explod
trigger1 = AnimElem = 22
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
removetime = 25

[State 4000, COSMO on]
type = Explod
trigger1 = time = 0
pos = 0,0
anim = 4010
ID = 4010
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 60

[State 4001, CETRA down]
type = Explod
trigger1 = AnimElem = 2
pos = 0,0
anim = 4011
ID = 4011
postype = p1
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 50

[State 4002, CLOTH remove]
type = Explod
trigger1 = ANIMELEM = 3
pos = 0,0
anim = 4012
ID = 4012
postype = p1
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 275

[State 4002, CLOTH go]
type = Explod
trigger1 = time = 390
pos = 0,0
anim = 4013
ID = 4013
postype = p1
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
supermove = 1
removetime = 245
vel = -10,0
accel = -5,0

[State 0, VelSet]
type = Velset
trigger1 = animelem = 22
x = 25
y = 0

[State 0, VelSet]
type = Velset
trigger1 = frontedgedist <= 60
x = 0
y = 0

[State 4004, 3]
type = AfterImage
trigger1 = animelem = 22
time = 15
length = 20
PalBright = 10,10,10
PalContrast= 98,98,98
trans = Add1

[State 4012, 1]
type = hitdef
Trigger1 = animelem = 22
forcestand = 1
attr =  A, HA
damage = 600
animtype = light
getpower = 0
givepower = 0
hitflag = MAF
pausetime = 0,12
;sparkno = s7001
;sparkxy = 0, -76
hitsound   = s1,0
guardsound = -1
guard.sparkno = -1
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 4.5,.5;20,1
air.velocity = 8,6
fall = 1
p2stateno = 3306

[State 0, Explod]
type = Explod
trigger1 = animelem = 22
anim = 221
ID = 2221
pos = 52,8
postype = p1  ;p2,front,back,left,right
bindtime = -1
sprpriority = 0
ontop = 1
removetime = 32

[State 0, Explod]
type = Explod
trigger1 = movehit = 1
anim = 7001
ID = 70011
pos = 0,-76
postype = p2  ;p2,front,back,left,right
bindtime = -1
sprpriority = 0
ontop = 1
removetime = 24

[State 44301 , change state]
type = ChangeState
trigger1 = animtime = 0
value = 3301

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 370

[State 2100]
type = VarSet
triggerall = p2life < 1
trigger1 = 1
var(3) = 1

;--------------------------------------
;P1state
[Statedef 3301]
type = A
movetype = H
physics = N
velset = 0,0
anim = 3301
ctrl = 0
facep2 = -1

[State 3301, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 500

[State 3301, StopSnd]
type = StopSnd
trigger1 = time = 50
channel = -1

[State 3301, CtrlSet]
type = CtrlSet
trigger1 = 1
value = 0

[State 3301, PlaySnd]
type = PlaySnd
triggerall = var(3) = 1
trigger1 = time = 50
value = 189,1

[State 3301, AssertSpecial]
type = AssertSpecial
triggerall = var(3) = 1
trigger1 = 1
flag = nokosnd

[State 3301]
type = ChangeAnim
triggerall = var(3) = 0
trigger1 = time = 1
value = 189

[State 3301]
type = LifeSet
triggerall = var(3) = 0
triggerall = anim = 189
trigger1 = time = 30
value = 0
persistent = 0

;[State 3301]
;type = ChangeState
;trigger1 = Time = 50
;value = 0
;ctrl = 0

;--------------------------------------
;P2state
[Statedef 3306]
type = A
movetype = H
physics = N
velset = 0,0

[State 4005, 1]
type = assertspecial
trigger1 = 1
flag = noBG
flag2 = noFG
flag3 = nobardisplay

[State 4005, 1]
type = assertspecial
trigger1 = 1
flag = timerfreeze
flag2 = nomusic

[State 4006, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4006]
type = ChangeAnim2
trigger1 = time = 0
value = 4006

[State 4006]
type = velset
trigger1 = time >= 0
x = 15

[State 0, VelSet]
type = Velset
trigger1 = frontedgedist <= 30
x = 0
y = 0

[State 4006, AssertSpecial]
type = AssertSpecial
trigger1 = time = 10
flag = Invisible

[State 4006]
type = SelfState
trigger1 = time = 20
value = 5050
ctrl = 1

;===============================================================================
; MELODIA DELLE TENEBRE
[Statedef 3000,melodia delle tenebre]   ;lancio
type    = S
movetype= A
physics = S
anim = 3000
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0

[State 3000, no music]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze

[State 3000, 0]
type = SuperPause
trigger1 = AnimElem = 2
time = 25
anim = s3014
pos = -23,-108
movetime = 0;25
darken = 1

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 4
channel = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno != 3000
channel = -1

[State 3000, light]
type = Explod
triggerall = NumExplod(3009) = 0
trigger1 = AnimElem = 3
pos = 0,5
anim = 3009
ID = 3009
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3000, polvere]
type = Explod
triggerall = NumExplod(3008) = 0
trigger1 = AnimElem = 3
pos = 0,0
anim = 3008
ID = 3008
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3000, lazzo]
type = Explod
trigger1 = AnimElem = 3
pos = 0,0
anim = 3002
ID = 3002
sprpriority = 1
ownpal = 1
bindtime = -1
removeongethit = 1
supermove = 1

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3100, 4

[State 3002]
type = null;RemoveExplod
trigger1 = stateno != 3000
ID = 3002

[State 3000, 2]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Medium
damage    = 0, 180
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MAF
guard.sparkno = -1
pausetime = 12,12
sparkno = -1
sparkxy = 0,-20
hitsound   = S1,0
guardsound = S2,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = 0, -25
air.velocity = 2, -8
envshake.time =  30
envshake.freq = 20
envshake.ampl = 5
envshake.phase = 5
p2stateno = 3004
p1stateno = 3002

[State 3000, 5];se p2 non è in 3004, mime va in 3001
type = ChangeState
triggerall = animtime = 0
trigger1 = movecontact != 1
value = 3001   ;mime ritira il lazo (anim 3016) non avendo acchiappato nessuno
ctrl = 0

;--------------------------
;- ritira il lazzo
[Statedef 3001,ritira]
type    = S
movetype= A
physics = S
anim = 3016
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 3002, lazzo]
type = Explod
triggerall = NumExplod(3004) = 0
trigger1 = stateno = 3001
pos = 0,0
anim = 3004
ID = 3004
sprpriority = 1
ownpal = 1
bindtime = -1
removetime = 36
supermove = 1

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000, 5
channel = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = stateno != 3001
channel = -1

[State 3002, 5]
type = ChangeState
trigger1 = time = 36
value = 0
ctrl = 1

;------------------------------
;- sonada
[statedef 3002,sonada]
type    = S
movetype= A
physics = S
anim = 3001
velset = 0,0
juggle = 0
ctrl = 0

[State 3000, no music]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze

[State 8005, carro]
type = Explod
triggerall = NumExplod(340) = 0
trigger1 = animelem = 3
anim = 340
ID = 340
removeongethit = 1
removetime = -1
postype = p1
pos = -2, -70
sprpriority = -8
bindtime = -1
scale = .5,.5

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000, 0
channel = 0

[State 3000, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 60,60,90
add = 0,0,0
invertall = 0

[State 3002]
type = RemoveExplod
trigger1 = stateno != 3000
ID = 3002

[State 3004, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000, 1

[State 3004, 1]
type = stopSnd
triggerall = p2life > 0
trigger1 = time = 950
channel = -1
[State 3004, 1]
type = stopSnd
trigger1 = p2life = 0
channel = -1

[State 3002, lazzo]
type = Explod
triggerall = NumExplod(3017) = 0
trigger1 = AnimElem = 1
pos = 6,0
anim = 3017
ID = 3017
sprpriority = 2
ownpal = 1
bindtime = -1
removetime = 950
supermove = 1

[State 3002, cosmo]
type = Explod
triggerall = NumExplod(23100) = 0
trigger1 = AnimElem = 3
pos = 0,0
anim = 2310
ID = 23100
sprpriority = -1
ownpal = 1
bindtime = -1
removetime = 950
supermove = 1

[State 3002]
type = RemoveExplod
triggerall = p2life > 0
trigger1 = time = 950
ID = 3017
[State 3002]
type = RemoveExplod
trigger1 = p2life <= 0
ID = 3017

[State 3002, note]
type = Explod
triggerall = NumExplod(3020) = 0
trigger1 = AnimElem = 3
pos = 25,-95
anim = 3020
ID = 3020
sprpriority = 2
ownpal = 1
bindtime = -1
removetime = 935
supermove = 1
scale = .15,.15

[State 3002]
type = RemoveExplod
triggerall = p2life > 0
trigger1 = time = 950
ID = 3020
[State 3002]
type = RemoveExplod
trigger1 = p2life <= 0
ID = 3020

[State 3001, 5]
type = ChangeState
triggerall = p2life > 0
trigger1 = Time = 950
value = 3003
ctrl = 0
[State 3001, 5]
type = ChangeState
trigger1 = p2life <= 0
value = 3001
ctrl = 0

[State 3000, net]
type = Explod
trigger1 = time = 0
postype = p1
pos = 205,-20
anim = 30030
ID = 30030
sprpriority = 3
ownpal = 1
bindtime = -1
removeongethit = 1
supermove = 1
removetime = 1950

[State 3000, net]
type = Explod
trigger1 = time = 0
postype = p2
pos = -5,-0
anim = 23002
ID = 23002
sprpriority = 3
ownpal = 1
bindtime = -1
removeongethit = 1
supermove = 1
removetime = 1950

[State 3000, blood]
type = Explod
trigger1 = time = 5
postype = p2
pos = -10,-100
anim = 30070
ID = 30070
sprpriority = 3
ownpal = 1
bindtime = -1
removeongethit = 1
supermove = 1
removetime = 900
scale = .30,.20

[State 3005, 2]
type = Playsnd
trigger1 = time = 50
trigger2 = time = 250
trigger3 = time = 450
trigger4 = time = 650
trigger5 = time = 850
value = 3005,0

[State 3005, 2]
type = Playsnd
trigger1 = movehit = 1
value = 11,0
persistent = 0

;--------------------------
;- ultima nota
[Statedef 3003,ultima]
type    = S
movetype= A
physics = S
anim = 2300
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0
sprpriority = 2

[State 3002]  ;carro
type = RemoveExplod
trigger1 = stateno != 3002
ID = 340

[State 3000, no music]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3000, 6
channel = 0

[State 3000, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 90,90,160
add = 0,0,0
invertall = 0

[State 3002]
type = RemoveExplod
trigger1 = projhit = 1;time = 0
ID = 30030

[State 3002]
type = RemoveExplod
trigger1 = projhit = 1 ;time = 0
ID = 23002

[State 3004, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2000, 0

[State 3002, riga unica]
type = Explod
trigger1 = time = 0
pos = 0,0
anim = 23003
ID = 23003
sprpriority = 3
ownpal = 1
bindtime = -1
removetime = 46
supermove = 1

[State 0,corda0]
type = Explod
triggerall = NumExplod(23001) = 0
trigger1 = animelem = 5
ID = 23001
anim = 23001
pos = 8,15
postype = p1
sprpriority = 3
removetime = 40
scale = .9,1

[State 3001, StopSnd]
type = StopSnd
trigger1 = animelem = 3
channel = 5

[State 3001, 0]
type = SuperPause
trigger1 = AnimElem = 1
time = 30
anim = s3010
pos = -13,-95
movetime = 0
darken = 1

[State 3002, cosmo]
type = Explod
triggerall = NumExplod(2311) = 0
trigger1 = AnimElem = 5
pos = 0,0
anim = 2311
ID = 2311
sprpriority = -1
ownpal = 1
bindtime = -1
;removetime = 750
supermove = 1

[State 2000, 6]
type = Projectile
trigger1 = animelem = 6;98
attr = S, HP
ignorehitpause = 1
projanim = 3011
offset = 0,-80
velocity = 12,0
damage = 50;75
fall.damage = 17;25
animtype = Hard
pausetime = 5,15
sparkno = -1
sparkxy = 35,10
guard.sparkno = -1
hitsound   = S3003,0
guardsound = S2000,3
ground.type = trip
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -.8,-10
air.velocity = -4.5,-7
palfx.time = 15
palfx.add = 110,70,122
fall = 1

[state 1200, righe net]
type = explod
trigger1 = projcontact = 1
triggerall = NumExplod(1203) = 0
id = 1203
postype = p2
pos = 0,0
anim = 1203
removetime = 12
sprpriority = 4

[State 3004, scia]
type = Explod
trigger1 = projhit = 1
persistent = 0
anim = 3012
id = 3012
pos = 0,5
postype = p2
sprpriority = 5
bindtime = 12
ignorehitpause = 1
ownpal = 1

[State 3004, sangue]
type = Explod
trigger1 = projhit = 1
;persistent = 0
anim = 3019
id = 3019
pos = 0,-90
postype = p2
sprpriority = 4
bindtime = 12
ignorehitpause = 1
ownpal = 1
facing = -1

[state 3004, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3001, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------
;- p2 paralisi state controller
[Statedef 3004,p2paralisi controller]
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 3001, 5]
type = ChangeState
trigger1 = p2bodydist x < 160
value = 3005
ctrl = 0

[State 3001, 5]
type = ChangeState
trigger1 = p2bodydist x >= 160
value = 3006
ctrl = 0

;--------------------------
;- p2 paralisi state vicino
[Statedef 3005]
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = p2bodydist x < 160
x = -10
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = p2bodydist x >= 161
x = 0
y = 0

[State 0, LifeAdd]
type = null;Lifeadd
triggerall = p2stateno = 3002
trigger1 = (time > 10) && (timemod = 5,0)
value = -2

[State 0, LifeAdd]
type = LifeAdd
triggerall = p2stateno = 3002
trigger1 = time = [10,559]
value = -1
kill = 0

[State 0, LifeAdd]
type = LifeAdd
triggerall = p2stateno != 3002
trigger1 = time > 10
value = 0
kill = 0

[State 3005, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3005

[State 3005, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 3005, PosSet]
type = Posadd
trigger1 = time = 0
y = 0
x = 0

[State 3005, CS]
type = SelfState
triggerall = life > 0
trigger1 = time = 1075
value = 0
ctrl = 1

[State 3005, CS]
type = SelfState
trigger1 = life = 0
value = 0
ctrl = 1

;--------------------------
;- p2 paralisi state lontano
[Statedef 3006]
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 0, VelSet]
type = VelSet
trigger1 = p2bodydist x > 171
x = 10
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = p2bodydist x <= 170
x = 0
y = 0

[State 0, LifeAdd]
type = LifeAdd
triggerall = p2stateno = 3002
trigger1 = time = [10,559]
value = -1
kill = 0

[State 0, LifeAdd]
type = LifeAdd
triggerall = p2stateno != 3002
trigger1 = time > 10
value = 0
kill = 0

[State 3005, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3005

[State 3005, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 3005, PosSet]
type = Posadd
trigger1 = time = 0
y = 0
x = 0

[State 3005, CS]
type = SelfState
triggerall = life > 0
trigger1 = time = 1075
value = 0
ctrl = 1

[State 3005, CS]
type = SelfState
trigger1 = life = 0
value = 0
ctrl = 1

;===========================================================
; ILLUSION GHOST
[Statedef 3100,illusion ghost]
type = S
movetype = I
physics = S
anim = 3100
poweradd = -3000
juggle = 5
velset = 0,0
ctrl = 0

[State 0, PalFXverde]
type = null;PalFX
trigger1 = time = 80
time = 1000
add = 0,0,0
mul = 90,256,50
sinadd = 90,10,10,50
invertall = 0
color = 220

[State 0, PalFX3]
type = PalFX
trigger1 = time = 80
time = 1000
add = 0,0,0
mul = 106,224,56
sinadd = 10,25,15,90
invertall = 0
color = 128

[State 0, PalFXverdino]
type = PalFX
trigger1 = time = 0
time = 79
add = 0,0,0
mul = 109,256,65
sinadd = 70,10,10,90
invertall = 0
color = 256

[State 0, RemoveExplod] ;eventuale cosmo stand
type = RemoveExplod
trigger1 = time = 0
id = 20000

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 100

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 0
time = 20
anim = -1
sound = S3100,3
pos = 0,0
darken = 1
unhittable = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 75
value = 3000,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 100
value = 3100,0
channel = 0

[State 4005, 2]
type = assertspecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 2
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 0,rovine]
type = Explod
trigger1 = time = 0
ID = 3101
anim = 3101
pos = -85,0;100,200
postype = p1;left
sprpriority = -9
removetime = 1100

[State 0, Helper avanti]
type = Helper
trigger1 = time = 30
helpertype = normal ;player
name = "illusione1"
ID = 3102
stateno = 3102
pos = 0,0
postype = p1

[State 0, Helper indietro]
type = Helper
trigger1 = time = 30
helpertype = normal ;player
name = "illusione2"
ID = 3103
stateno = 3103
pos = 0,0
postype = p1

[State 0,illusione0]  ; lui explod
type = null;Explod
triggerall = NumExplod(3110) = 0
trigger1 = AnimElem = 4
ID = 3110
anim = 3109
pos = 0,0
postype = p1
sprpriority = 1
removetime = 1040
scale =1,1

[State 0,illusione0]  ; PROVA lui explod
type = Explod
triggerall = NumExplod(3110) = 0
trigger1 = AnimElem = 4
ID = 3110
anim = 3109
pos = 0,0
postype = p1
sprpriority = 1
removetime = 40;
scale =1,1
ownpal = 1

[State 0,illusione1] ; illusione 1 avanti al muro
type = Explod
triggerall = NumExplod(3125) = 0
trigger1 = AnimElem = 4
ID = 3125
anim = 3105
pos = -43,0;140,200
postype = p1;left
sprpriority = -6
removetime = 1030
scale =.87,.87

[State 0,illusione2] ;illusione 2 dietro in ginocchio
type = Explod
triggerall = NumExplod(3126) = 0
trigger1 = AnimElem = 4
ID = 3126
anim = 13106
pos = -140,5;45,205
postype = p1;left
sprpriority = -6
removetime = 1020
scale =.91,.91

[State 0,illusione3]  ;in piedi sul picco
type = Explod
triggerall = NumExplod(3104) = 0
trigger1 = AnimElem = 4
ID = 3104
anim = 13104
pos = -152,-107;32,93
postype = p1;left
sprpriority = -7
removetime = 1030
scale =.7,.7

[State 0,illusione4] ; seduto sul picco
type = Explod
triggerall = NumExplod(3107) = 0
trigger1 = AnimElem = 4
ID = 3107
anim = 3107
pos = -65,-131;119,71
postype = p1;left
sprpriority = -8
removetime = 1040
scale =.85,.85

[State 0,illusione5] ; al palo
type = Explod
triggerall = NumExplod(3108) = 0
trigger1 = AnimElem = 4
ID = 3108
anim = 13108
pos = -217,0;-30,200
postype = p1;left
sprpriority = -7
removetime = 1020
scale =.58,.58

[State 0,illusione6] ;seduto in terra
type = Explod
triggerall = NumExplod(3109) = 0
trigger1 = AnimElem = 4
ID = 3109
anim = 13109
pos = -55,15;155,215
postype = p1;left
sprpriority = 1
removetime = 1010
scale =1.20,1.20

[State 0,illusione7] ;ginocchio rovine
type = Explod
triggerall = NumExplod(3111) = 0
trigger1 = AnimElem = 4
ID = 3111
anim = 13110
pos = 105,-67;245,134
postype = p1;left
sprpriority = -5
removetime = 1030
scale =.70,.70

[State 0,illusione8] ;"appena dietro p2"
type = Explod
triggerall = NumExplod(3113) = 0
trigger1 = AnimElem = 4
ID = 3113
anim = 13114
pos = 75,10;310,210
postype = p1;left
sprpriority = 1
removetime = 1010
scale =1.15,1.15

[State 0,illusione9] ;"dietro dietro p2"
type = Explod
triggerall = NumExplod(3114) = 0
trigger1 = AnimElem = 4
ID = 3114
anim = 13113
pos = 222,0;400,203
postype = p1;left
sprpriority = -6
removetime = 1020
scale =.95,.90

[State 0, Colonna]
type = explod
trigger1 = time = 0
anim = 3111
pos = 0,0; 85,0 <-- ORIGINALI
postype = p1
sprpriority = -1
removetime = 100

;[State 0, Helper Colonna]
;type = Helper
;trigger1 = time = 0
;stateno = 3112
;pos = 17,0
;postype = p1
;sprpriority = -1
;removetime = 1000
;helpertype = normal
;name = "colonna"
;ID = 3112

[State 0, PosSet]
type = NULL;Posadd
trigger1 = animelem = 5
x = 85

[State 0, ChangeAnim]
type = Changestate
trigger1 = time = 100
value = 3112

;--------------------------------------
;- HELPER illusione1 avanti
[Statedef 3102]
type = S
movetype = I
physics = S
anim = 3102
juggle = 5
velset = 0,0
ctrl = 0

[State 0, VelSet]
type = Velset
trigger1 = time = [0,30]
x = 1.5
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = TIME = 40

;---------------------------------------
;- HELPER illusione2 dietro
[Statedef 3103]
type = S
movetype = I
physics = S
anim = 3103
juggle = 5
velset = 0,0
ctrl = 0

[State 0, VelSet]
type = Velset
trigger1 = time = [0,25]
x = -2
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = TIME = 50

;-------------------------------------------------------------------------------
;- colonna
[Statedef 3112,colonna]
type = S
physics = S
anim = 3111 ; 31111
juggle = 5
velset = 0,0
ctrl = 0
sprpriority = -4

[State 0,illusione0]  ; PROVA lui explod
type = Explod
triggerall = NumExplod(31100) = 0
trigger1 = AnimElem = 1
ID = 31100
anim = 3109
pos = 0,0
postype = p1
sprpriority = 1
removetime = 1000;
scale = 1,1
ownpal = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 4005, 2]
type = assertspecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze

[State 3000, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 2
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 144000]
type = ReversalDef
trigger1 = time = 0
reversal.attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
p1stateno = 3115
hitsound = -1
sparkno = -1
sparkxy = 0, 0
pausetime = 2,50

;;==============================================================================
;;da usare in alternativa al reversaldef di sopra per far colpire la colonna
;;dai proiettili, cambiare l'anim di questo statedef da 3111 a 31111
;;
;[State 3112]
;type = ReversalDef
;priority = 7
;trigger1 = time = 0
;reversal.attr = SCA,AA,AT
;p1stateno = 3115
;hitsound = -1
;sparkno = -1
;sparkxy = 0, 0
;pausetime = 2,50
;;
;[State 3112]
;type = HitOverride
;trigger1 = 1
;attr = SCA,AP
;time = 1
;stateno = 3115
;;==============================================================================

[State 3001, 2]
type = EnvColor ;  Pa
trigger1 = time = 1000
time = 5
value = 255,255,255
under = 0

[State 0,]
type = changestate
triggerall = p2bodydist x > 0
trigger1 = time = 1000
value = 3119
ctrl = 0

[State 0,]
type = changestate
triggerall = p2bodydist x < 0
trigger1 = time = 1000
value = 3120
ctrl = 0

;-------------------------------------------------------------------------------
;- colonna distrutta
[Statedef 3115]
type = S
movetype = A
physics = S
anim = 3112
juggle = 5
velset = 0,0
ctrl = 0

[State 0, PalFXverde]
type = PalFX
trigger1 = time = 0
time = 0
add = 0,0,0
mul = 00,0,0
sinadd = 0,0,00,00
invertall = 0
color = 256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1
value = 3100,1
channel = -1

[State 3004, 1]
type = stopSnd
;triggerall = p2life > 0
trigger1 = time = 0
channel = -1

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 2
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 3001, 2]
type = EnvColor ;  Pa
trigger1 = time = 0
time = 5
value = 255,255,255
under = 0

[State 0, DestroySelf]
type = DestroySelf
triggerall = NumHelper(3102) > 0
trigger1 = TIME = 0

[State 0, DestroySelf]
type = DestroySelf
triggerall = NumHelper(3103) > 0
trigger1 = TIME = 0

[State 0, RemoveExplod] ;ROVINE
type = RemoveExplod
trigger1 = time = 0
id = 3101

[State 0, RemoveExplod] ;illusione 0
type = RemoveExplod
trigger1 = time = 0
id = 3110

[State 0, RemoveExplod] ;illusione 1
type = RemoveExplod
trigger1 = time = 0
id = 3125

[State 0, RemoveExplod] ;illusione 2
type = RemoveExplod
trigger1 = time = 0
id = 3126

[State 0, RemoveExplod] ;illusione 3
type = RemoveExplod
trigger1 = time = 0
id = 3104

[State 0, RemoveExplod] ;illusione 4
type = RemoveExplod
trigger1 = time = 0
id = 3107

[State 0, RemoveExplod] ;illusione 5
type = RemoveExplod
trigger1 = time = 0
id = 3108

[State 0, RemoveExplod] ;illusione 6
type = RemoveExplod
trigger1 = time = 0
id = 3109

[State 0, RemoveExplod] ;illusione 7
type = RemoveExplod
trigger1 = time = 0
id =  3111

[State 0, RemoveExplod] ;illusione 8
type = RemoveExplod
trigger1 = time = 0
id =  3113

[State 0, RemoveExplod] ;illusione 9
type = RemoveExplod
trigger1 = time = 0
id =  3114

[State 0, RemoveExplod] ; LUI DAVANTI LA COLONNA
type = RemoveExplod
trigger1 = TIME = 0
id = 31100

[State 0,]
type = changestate
triggerall = p2bodydist x > 0
trigger1 = time = 40
value = 3119
ctrl = 0

[State 0,]
type = changestate
triggerall = p2bodydist x < 0
trigger1 = time = 40
value = 3120
ctrl = 0

;-------------------------------------------------------------------------------
;- riappare senza attaccare
[Statedef 3118]
type = S
physics = S
anim = 3118
juggle = 5
velset = 0,0
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = animelem = 1
x = -57
y = 0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = animelem = 1
value = 200

[State 144000]
type = ChangeState
trigger1 = Time = 35
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;- compare alle spalle1
[Statedef 3119]
type = S
;movetype = A
physics = S
anim = 3119
juggle = 5
velset = 0,0
ctrl = 0


[State 0, Turn]
type = Turn
trigger1 = p2bodydist x < 0


[State 0, NotHitBy]
type = NotHitBy
trigger1 = stateno = 3119
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 2
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 0, PosSet]
type = posadd
trigger1 = time = 0
x = 300
y = 0

[State 144000]
type = ChangeState
trigger1 = Time = 25
value = 3121
ctrl = 1

[State 0, Turn]
type = Turn
trigger1 = animelem = 2

;-------------------------------------------------------------------------------
;- compare alle spalle2
[Statedef 3120]
type = S
;movetype = A
physics = S
anim = 3119
juggle = 5
velset = 0,0
ctrl = 0


[State 0, Turn]
type = Turn
trigger1 = p2bodydist x < 0


[State 0, NotHitBy]
type = NotHitBy
trigger1 = stateno = 3120
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 2
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 0, PosSet]
type = posadd
trigger1 = time = 0
x = -300
y = 0

[State 144000]
type = ChangeState
trigger1 = Time = 25
value = 3121
ctrl = 1

;-------------------------------------------------------------------------------
;- fase d'Attacco
[Statedef 3121]
type = S
movetype = A
physics = S
anim = 3120
juggle = 5
velset = 0,0
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = stateno = 3120
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 3100,2

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 20
mul = 90,220,160
add = 0,0,0
invertall = 0

;projectile corda centrale 3
[State 2200]
type = Projectile
trigger1 = AnimElem = 5
trigger2 = time = 10
trigger3 = time = 20
trigger4 = time = 30
;trigger5 = time = 40
attr = S, HP
projanim = 3117
offset = 80,-85
velocity = 11,0
animtype = light
pausetime = 3,4
;sparkno = s2704
;sparkxy = -50,90
hitsound = S1200,1
guardsound = S4006,0
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0
air.velocity = -3,1
damage = 53, 180
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
projID = 3117
envshake.time =  15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
guard.sparkno = -1

[state 0, raggi explod]
type = explod
trigger1 = projcontact = 1
triggerall = NumExplod(3117) = 0
id = 3117
postype = p2
pos = -85,15
anim = 2704
removetime = 19
sprpriority = 2

;projectile corda bassa 5
[State 2200]
type = Projectile
trigger1 = AnimElem = 5
trigger2 = time = 10
trigger3 = time = 20
trigger4 = time = 30
trigger5 = time = 40
attr = S, HP
projanim = 3123
offset = 80,-85
velocity = 11,4
animtype = Hard
pausetime = 3,4
;sparkno = s2704
;sparkxy = -60,120
hitsound = S1200,1
guardsound = S4006,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0
air.velocity = -3,1
damage = 15
projID = 3123
envshake.time =  15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
guard.sparkno = -1

[state 0, raggi explod]
type = explod
trigger1 = projcontact = 1
triggerall = numExplod(3123) = 0
id = 3123
postype = p2
pos = -95,65
anim = 2704
removetime = 19
sprpriority = 2

;projectile corda alta 1
[State 2200]
type = Projectile
trigger1 = AnimElem = 5
trigger2 = time = 10
trigger3 = time = 20
trigger4 = time = 30
trigger5 = time = 40
attr = S, HP
projanim = 3124
offset = 80,-85
velocity = 11,-4
animtype = light
pausetime = 3,4
;sparkno = s2704
;sparkxy = -40,80
hitsound = S1200,1
guardsound = S4006,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -2,-2
air.velocity = -3,1
damage = 15
projID = 3124
envshake.time =  15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
guard.sparkno = -1

[state 0, raggi explod]
type = explod
trigger1 = projcontact = 1
triggerall = numExplod(3124) = 0
id = 3124
postype = p2
pos = -105,-35
anim = 2704
removetime = 19
sprpriority = 2

;projectile corda bassa 4
[State 2200]
type = Projectile
trigger1 = AnimElem = 5
trigger2 = time = 10
trigger3 = time = 20
trigger4 = time = 30
trigger5 = time = 40
attr = S, HP
projanim = 3121
offset = 80,-85
velocity = 11,2
animtype = Hard
pausetime = 3,4
;sparkno = s2704
;sparkxy = -20,100
hitsound = S1200,1
guardsound = S4006,0
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0
air.velocity = -3,1
damage = 15
projID = 3121
envshake.time =  15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
guard.sparkno = -1

[state 0, raggi explod]
type = explod
trigger1 = projcontact = 1
triggerall = numExplod(3121) = 0
id = 3121
postype = p2
pos = -75,40
anim = 2704
removetime = 19
sprpriority = 2

;projectile corda alta 2
[State 2200]
type = Projectile
trigger1 = AnimElem = 5
trigger2 = time = 10
trigger3 = time = 20
trigger4 = time = 30
trigger5 = time = 40
attr = S, HP
projanim = 3122
offset = 80,-85
velocity = 11,-2
animtype = Hard
pausetime = 3,4
;sparkno = S2704
;sparkxy = -30,70
hitsound = S1200,1
guardsound = S4006,0
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5,-5
air.velocity = -3,1
damage = 15
projID = 3122
envshake.time =  15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
guard.sparkno = -1

[state 0, raggi explod]
type = explod
trigger1 = projcontact = 1
triggerall = numExplod(3122) = 0
id = 3122
postype = p2
pos = -65,-10
anim = 2704
removetime = 19
sprpriority = 2

;projectile corda centrale 3
[State 2200]
type = Projectile
trigger1 = time = 40
attr = S, HP
projanim = 3117
offset = 80,-85
velocity = 11,0
animtype = Hard
pausetime = 3,4
;sparkno = s2704
;sparkxy = -50,90
hitsound = S1200,1
guardsound = S4006,0
ground.type = high
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -7,-7
air.velocity = -3,1
damage = 100;25
projID = 3117
envshake.time =  15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
guard.sparkno = -1
fall = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;===========================================================
[Statedef 32000,pre-requiem bordo. p2 lontano]
type = S
movetype = A
physics = S
anim = 32000
juggle = 5
velset = 0,0
ctrl = 0

[State 4005, 2]
type = assertspecial
trigger1 = 1
flag = nomusic
flag2 = noshadow
flag3 = timerfreeze

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 2
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 0, RemoveExplod] ;eventuale cosmo stand
type = RemoveExplod
trigger1 = time = 0
id = 20000

[State 0, PosAdd]
type = posadd
TRIGGER1 = animelem = 5
;trigger2 = backedgedist > 50
x = 100
y = 0

[State 0, Changestate]
type = Changestate
trigger1 = time = 30
value = 32003
ctrl = 0

;--------------------------------
; Illusion attack
[Statedef 32001,pre-requiem p2 vicino]
type = S
movetype = A
physics = S
anim = 32001
juggle = 5
velset = 0,0
ctrl = 0

[State 4005, 2]
type = assertspecial
trigger1 = 1
flag = nomusic
flag2 = noshadow
flag3 = timerfreeze

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 2
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 0, RemoveExplod] ;eventuale cosmo stand
type = RemoveExplod
trigger1 = time = 0
id = 20000

[State 220, 2]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = light
damage    = 20
guardflag = MA
pausetime = 0,1
sparkno = s7001
sparkxy = -15,-80
hitsound   = S1,2
guardsound = S1,2
ground.type = low
ground.slidetime = 45
ground.hittime  = 115
ground.velocity = -15
air.velocity = -2.5,-4

[State 0, Changestate]
type = Changestate
trigger1 = time = 15
value = 32003
ctrl = 0

;--------------------------------
; Illusion attack
[Statedef 32002,pre-requiem bordo. p2 vicino]
type = S
movetype = A
physics = S
anim = 32002
juggle = 5
velset = 0,0
ctrl = 0

[State 4005, 2]
type = assertspecial
trigger1 = 1
flag = nomusic
flag2 = noshadow
flag3 = timerfreeze

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 2
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 0, RemoveExplod] ;eventuale cosmo stand
type = RemoveExplod
trigger1 = time = 0
id = 20000

[State 220, 2]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = light
damage    = 20
guardflag = MA
pausetime = 0,10
sparkno = s7001
sparkxy = -15,-80
hitsound   = S1,2
guardsound = S1,2
ground.type = low
ground.slidetime = 45
ground.hittime  = 115
ground.velocity = -25
air.velocity = -2.5,-4

[State 0, PosAdd]
type = posadd
TRIGGER1 = animelem = 8
x = 100
y = 0

[State 0, Changestate]
type = Changestate
trigger1 = time = 45
value = 32003
ctrl = 0

;---------------------------------------
;REQUIEM DOLCE MELODIA
[Statedef 32003,start requiem]
type = S
movetype = A
physics = S
anim = 32003
poweradd = -2000
juggle = 5
velset = 0,0
ctrl = 0

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 2
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 0, RemoveExplod] ;eventuale cosmo stand
type = RemoveExplod
trigger1 = time = 0
id = 20000

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 900

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3200,0
channel = 0

[State 220, 2]
type = HitDef
trigger1 = time = 10
attr = S, HA
animtype  = light
damage    = 0, 80
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,1
sparkno = -1
sparkxy = 0,-100
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 12
ground.hittime  = 115
ground.velocity = 0
air.velocity = -2.5,-4
p2stateno = 3204
p1stateno = 3200

[State 0, Changestate]
type = Changestate
trigger1 = time = 30
value = 0
ctrl = 1

;---------------------------------------
[Statedef 3200,dolce melodia]
type = S
movetype = A
physics = S
anim = 3200
juggle = 5
velset = 0,0
ctrl = 0

[State 0,prato1]
type = Explod
triggerall = NumExplod(323) = 0
trigger1 = time = 10
ID = 323
pos = 0,0
anim = 323
postype = back
sprpriority = -7
removetime = 1000

[State 0,stelle]
type = Explod
triggerall = NumExplod(325) = 0
trigger1 = time = 10
ID = 325
pos = 0,0
anim = 325
postype = back
sprpriority = -9
removetime = 1000


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 95;65;95
value = 3200,1

[State 4005, 2]
type = assertspecial
trigger1 = 1
flag = nomusic
flag2 = noshadow
flag3 = timerfreeze

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 2
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 0,illusione0]  ; lui cammina
type = Explod
triggerall = NumExplod(3204) = 0
trigger1 = time = 100;130
ID = 3204
anim = 3201
pos = 0,0;93,200
postype = p1;left
sprpriority = -1
removetime = 400
scale =1,1
vel = -.295,0 ;-.31,0

[State 0,illusione0]  ; lui fermo
type = Explod
triggerall = NumExplod(3205) = 0
trigger1 = time = 500;530
ID = 3205
anim = 3201
pos = -118,0;93,200
postype = p1;left
sprpriority = -1
removetime = 370
scale = 1,1
vel = 0,0

[State 0, Helper 0 lui]
type = Helper
trigger1 = time = 0;30
helpertype = normal
name = "illusione0"
ID = 3201
stateno = 3201
pos = 0,0
postype = p1

[State 0,illusione0]  ; primo
type = Explod
triggerall = NumExplod(32051) = 0
trigger1 = time = 770;800
ID = 32051
anim = 32011
pos = 59,0
postype = p1
sprpriority = -1
removetime = 31

[State 0,corda0]  ; prima
type = Explod
triggerall = NumExplod(32212) = 0
trigger1 = time = 790;820
ID = 32212
anim = 32212
pos = 59,0
postype = p1
sprpriority = 1
removetime = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 790;820
value = 3200,20

[State 0, Helper avanti]
type = Helper
trigger1 = time = 0;30
helpertype = normal ;player
name = "illusione1"
ID = 3202
stateno = 3202
pos = 0,0
postype = p1

[State 0,illusione0]  ; secondo
type = Explod
triggerall = NumExplod(32052) = 0
trigger1 = time = 800;830
ID = 32052
anim = 32011
pos = 0,0
postype = p1
sprpriority = -1
removetime = 31

[State 0,corda0]  ; seconda
type = Explod
triggerall = NumExplod(32212) = 0
trigger1 = time = 820;850
ID = 32212
anim = 32212
pos = 0,0
postype = p1
sprpriority = 1
removetime = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 820;850
value = 3200,2

[State 0, Helper indietro]
type = Helper
trigger1 = time = 0;30
helpertype = normal;player
name = "illusione2"
ID = 3203
stateno = 3203
pos = 0,0
postype = p1

[State 0,illusione0]  ; terzo
type = Explod
triggerall = NumExplod(32053) = 0
trigger1 = time = 830;860
ID = 32053
anim = 32011
pos = -59,0
postype = p1
sprpriority = -1
removetime = 31

[State 0,corda0]  ; terza
type = Explod
triggerall = NumExplod(32212) = 0
trigger1 = time = 850;880
ID = 32212
anim = 32212
pos = -59,0
postype = p1
sprpriority = 1
removetime = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 850;880
value = 3200,21

[State 0, Changestate]
type = Changestate
trigger1 = time = 870;900
value = 3206
ctrl = 1

[State 0,confuso]
type = Explod
triggerall = NumExplod(32055) = 0
trigger1 = time = 0;10
ID = 32055
anim = 3205
pos = 0,0
postype = p2
sprpriority = 1
removetime = 820
bindtime = -1

;-------------------------------------------------------------------------------
;- p2 custom state
[Statedef 3204]  ; stand
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 4006]
Type = changeanim
Trigger1 = Time = 0
Value = 0

[State 4006]
Type = changestate
Trigger1 = Time = 790
Value = 3214

;- p2 custom state
[Statedef 3214]  ; 1 filo
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 4006]
Type = changeanim
Trigger1 = Time >= 0
Value = 130

[State 4006]
Type = changestate
Trigger1 = Time = 10
Value = 3215

;- p2 custom state
[Statedef 3215]   ;stand 20
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 4006]
Type = changeanim
Trigger1 = Time = 0
Value = 0

[State 4006]
Type = changestate
Trigger1 = Time = 20
Value = 3216

;- p2 custom state
[Statedef 3216]     ;2 filo
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 4006]
Type = changeanim
Trigger1 = Time >= 0
Value = 130

[State 4006]
Type = changestate
Trigger1 = Time = 10
Value = 3217

;- p2 custom state
[Statedef 3217]    ; stand 20
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 4006]
Type = changeanim
Trigger1 = Time = 0
Value = 0

[State 4006]
Type = changestate
Trigger1 = Time = 20
Value = 3218

;- p2 custom state
[Statedef 3218]     ;3 filo
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 4006]
Type = changeanim
Trigger1 = Time >= 0
Value = 130

[State 4006]
Type = changestate
Trigger1 = Time = 10
Value = 3219

;- p2 custom state
[Statedef 3219]  ; stand
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 4006]
Type = changeanim
Trigger1 = Time = 0
Value = 0

[State 0, SelfState]
type = SelfState
trigger1 = time = 110
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;- HELPER illusione1 avanti
[Statedef 3202]
type = S
movetype = A
physics = S
anim = 3201
juggle = 5
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;indietro e fermo
[State 0, VelSet]
type = Velset
trigger1 = time = [0,66]
x = .7
y = 0

;avanti
[State 0, VelSet]
type = Velset
trigger1 = time = [100,290]
x = -.5

[State 0, VelSet]      ;scende a metà
type = Velset
trigger1 = time = [100,195]
y = -.05
[State 0, VelSet]      ;risale da metà
type = Velset
trigger1 = time = [196,290]
y = .05

;indietro
[State 0, VelSet]
type = Velset
trigger1 = time = [291,505]
x = .5

[State 0, VelSet] ; sale a metà
type = Velset
trigger1 = time = [291,398]
y = .05
[State 0, VelSet] ;riscende da metà
type = Velset
trigger1 = time = [399,505]
y = -.05

[State 0, VelSet]
type = Velset
trigger1 = time = [506,750]
x =  0
y = 0

[State 0, SprPriority]
type = SprPriority
trigger1 = time = 470
value = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = TIME = 770

;- HELPER illusione2 dietro ------------------------------------------------------
[Statedef 3203]
type = S
movetype = A
physics = S
anim = 3201
juggle = 5
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

;indietro e fermo
[State 0, VelSet]
type = Velset
trigger1 = time = [0,66]
x = -.7
y = 0

;avanti
[State 0, VelSet]
type = Velset
trigger1 = time = [100,290]
x = .5

[State 0, VelSet]      ;scende a metà
type = Velset
trigger1 = time = [100,195]
y = .05
[State 0, VelSet]      ;risale da metà
type = Velset
trigger1 = time = [196,290]
y = -.05

;indietro
[State 0, VelSet]
type = Velset
trigger1 = time = [291,505]
x = -.5

[State 0, VelSet] ; sale a metà
type = Velset
trigger1 = time = [291,398]
y = -.05
[State 0, VelSet] ;riscende da metà
type = Velset
trigger1 = time = [399,505]
y = .05

[State 0, VelSet]
type = Velset
trigger1 = time = [506,850]
x =  0
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = TIME = 830


;- HELPER illusione0 ------------------------------------------------------
[Statedef 3201]
type = S
movetype = A
physics = S
anim = 3201
juggle = 5
velset = 0,0
ctrl = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, VelSet]
type = Velset
trigger1 = time = [101,150]
x = .25
y = -.05

[State 0, VelSet]
type = Velset
trigger1 = time = [151,200]
x = -.25
y = .25

[State 0, VelSet]
type = Velset
trigger1 = time = [201,300]
x = -.25
y = -.05

[State 0, VelSet]
type = Velset
trigger1 = time = [301,400]
x = .10
y = -.15

[State 0, VelSet]
type = Velset
trigger1 = time = [401,450]
x = .30
y = .20

[State 0, VelSet]
type = Velset
trigger1 = time = [451,900]
x = 0
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = TIME = 800

;-------------------------------------------------------------------------------
;- compare lontano
[Statedef 3206]
type = S
;movetype = A
physics = S
anim = 3206
juggle = 5
velset = 0,0
ctrl = 0

[State 0, PosSet]
type = PosAdd;Set
trigger1 = time = 0
x = -400;0
y = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = stateno = 3206
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 144000]
type = ChangeState
trigger1 = Time = 50
value = 3210
ctrl = 1

;--------------------------
;- fase attacco - ex.Laser 5
[Statedef 3210]
type = S
movetype = A
physics = S
anim = 2500
juggle = 3
velset = 0,0
poweradd = -2000
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = stateno = 2500
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1

[State 4005, 2]
type = assertspecial
trigger1 = 1
flag = nomusic

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 2
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 2500, cosmo]
type = Explod
trigger1 = time = 0
pos = 0,0
anim = 2510
ID = 2510
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = -1

[State 2500, cosmo]
type = RemoveExplod
triggerall = NumExplod(2510) = 1
trigger1 = time = 29
ID = 2510

[State 2500, 3]
type = Playsnd
trigger1 = Animelem = 1
value = 2000,0
channel = 4

;[State 2500, 4]
;type = StopSnd
;trigger1 = animelem = 10
;channel = 4

[State 2500, 3]
type = Playsnd
trigger1 = time = 0
value = 2600,4
channel = 0

[State 2500, 3]
type = Playsnd
trigger1 = time = 48
value = 2000,4

[State 2500, 4]
type = Projectile
trigger1 = time = 48
attr = S, HP
;ignorehitpause = 1
projanim = 2502
;projhitanim = 2003
offset = -60,-10
velocity = 15,0
damage = 200, 40
animtype = light
getpower = 0
givepower = 0
hitflag = MAF
pausetime = 25,5
sparkno = -1
sparkxy = 35,10
guard.sparkno = -1
hitsound   = 2000,2
guardsound = 2000,3
ground.type = trip
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -15, -5
air.velocity = -2.5,-5
palfx.time = 15
palfx.add = 110,70,122
fall = 1

[State 2500, 4]
type = Projectile
trigger1 = time = 48
attr = S, SP
;ignorehitpause = 1
projanim = 2504
;projhitanim = 2003
offset = -60,-10
velocity = 10,0
damage = 200, 40
animtype = Hard
getpower = 0
givepower = 0
hitflag = MAF
pausetime = 25,10
sparkno = -1
sparkxy = 35,10
guard.sparkno = -1
hitsound   = 2000,2
guardsound = 2000,3
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -5, -2
air.velocity = -2.5,-5
palfx.time = 15
palfx.add = 110,70,122
fall = 0

[State 2500, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================
;--------------------------------
; pre-ninna nanna
[Statedef 34000,pre-ninna]
type = S
movetype = A
physics = S
anim = 32001
poweradd = -2000
juggle = 5
velset = 0,0
ctrl = 0

[State 4005, 2]
type = assertspecial
trigger1 = 1
flag = nomusic
flag2 = noshadow
flag3 = timerfreeze

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 2
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 0, RemoveExplod] ;eventuale cosmo stand
type = RemoveExplod
trigger1 = time = 0
id = 20000

[State 220, 2]
type = HitDef
trigger1 = time = 4
attr = S, HA
animtype  = light
damage    = 10
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,1
sparkno = s7001
sparkxy = -15,-80
hitsound   = S1,2
guardsound = S1,2
ground.type = low
ground.slidetime = 35
ground.hittime  = 25
ground.velocity = -10
air.velocity = -2.5,-4

[State 0, Changestate]
type = Changestate
trigger1 = time = 15
value = 3400
ctrl = 0

; NINNA NANNA
[Statedef 3400,ninna nanna]
type = S
movetype = A
physics = S
anim = 3400
poweradd = -2000
juggle = 5
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, RemoveExplod] ;eventuale cosmo stand
type = RemoveExplod
trigger1 = time = 0
id = 20000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 3400,0
channel = 0

[State 1, StopSnd]
type = StopSnd
trigger1 = p2stateno = 3410
channel = -1
[State 2, StopSnd]
type = StopSnd
trigger1 = time = 1000
channel = -1
[State 2, StopSnd]
type = StopSnd
trigger1 = p2life = 0
channel = -1

[State 0, NotHitBy]
type = null;NotHitBy
trigger1 = stateno = 3400
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 1

[State 4005, 2]
type = assertspecial
trigger1 = 1
flag = nomusic
flag2 = timerfreeze

[State 3000, Verden]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 2
mul = 90,220,160
add = 0,0,0
invertall = 0

[State 8005, luci disco]
type = Explod
triggerall = NumExplod(34150) = 0
trigger1 = animelem = 3
anim = 3415
ID = 34150
removeongethit = 1
removetime = 700
postype = back
pos = 0, 0
sprpriority = -9
bindtime = -1

[State 8005, pentagramma]
type = Explod
triggerall = NumExplod(324) = 0
trigger1 = animelem = 3
anim = 324
ID = 324
removeongethit = 1
removetime = 700
postype = back
pos = 0, 20
sprpriority = -8
bindtime = -1

[State 0,illusione1]  ; lui di spalle
type = Explod
triggerall = NumExplod(34011) = 0
trigger1 = time = 0
ID = 34011
anim = 3401
pos = 0,0
postype = p1
sprpriority = 2
removetime = 700
removeongethit = 1

[State 0,illusione2]  ; lui in ginocchio
type = Explod
triggerall = NumExplod(34021) = 0
trigger1 = time = 10
ID = 34021
anim = 3402
pos = 0,0
postype = p1
sprpriority = 3
removetime = 690
removeongethit = 1

[State 0,illusione3]  ; lui di spalle in ginocchio
type = Explod
triggerall = NumExplod(34031) = 0
trigger1 = time = 20
ID = 34031
anim = 3403
pos = 0,0
postype = p1
sprpriority = 4
removetime = 680
removeongethit = 1
scale = 1,1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = p2life = 0
id = 34150
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = p2life = 0
id = 34011
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = p2life = 0
id = 34021
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = p2life = 0
id = 34031

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = p2stateno = 3410
id = 34150
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = p2stateno = 3410
id = 34011
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = p2stateno = 3410
id = 34021
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = p2stateno = 3410
id = 34031

[State 220, 2]
type = HitDef
trigger1 = time = 71
trigger2 = time = 151
trigger3 = time = 231
trigger4 = time = 311
trigger5 = time = 391
trigger6 = time = 471
trigger7 = time = 551
trigger8 = time = 631
attr = S, HA
animtype  = hard
damage    = 20, 10
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,15;50
sparkno = s3014
sparkxy = -20,-125
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 12
ground.hittime  = 65;110
ground.velocity = 0
air.velocity = -2.5,-4

[State 220, 2]
type = HitDef
trigger1 = time = 711
attr = S, HA
animtype  = LIGHT
damage    = 240
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,55
sparkno = s3014
sparkxy = -25,-80
hitsound   = -1
guardsound = -1
ground.type = low
ground.slidetime = 12
ground.hittime  = 115
ground.velocity = 0
air.velocity = -2.5,-4
p2stateno = 3410

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = Time = 711
flag = nokosnd
flag2 = nokoslow

[State 0, Changestate]  ;p1 va in attesa se p2 dorme
type = Changestate
trigger1 = p2stateno = 3410
value = 3409
ctrl = 0

[State 0, Changestate]  ;se p2 non dorme a 1000tick smette di suonare
type = Changestate
triggerall = p2stateno != 3410
trigger1 = time = 712
value = 0
ctrl = 1

[State 0, Changestate]  ;p1 torna in standing
type = Changestate
triggerall = p2life = 0
trigger1 = 1
value = 0
ctrl = 1

;=================== NOTE

[State 0,cetra]  ; cetra avanti basso
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 6
trigger2 = animelem = 14
trigger3 = animelem = 22
trigger4 = animelem = 30
trigger5 = animelem = 38
trigger6 = animelem = 46
trigger7 = animelem = 54
trigger8 = animelem = 62
ID = 3404
anim = 3404
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 2,1
[State 0,cetra]  ; cetra avanti alto
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 7
trigger2 = animelem = 15
trigger3 = animelem = 23
trigger4 = animelem = 31
trigger5 = animelem = 39
trigger6 = animelem = 47
trigger7 = animelem = 55
trigger8 = animelem = 63
ID = 3404
anim = 3404
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 2,-1
[State 0,cetra]  ; cetra avanti dritto
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 8
trigger2 = animelem = 16
trigger3 = animelem = 24
trigger4 = animelem = 32
trigger5 = animelem = 40
trigger6 = animelem = 48
trigger7 = animelem = 56
trigger8 = animelem = 64
ID = 3404
anim = 3404
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 2,0

[State 0,cetra]  ; cetra alto avanti
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 6
trigger2 = animelem = 14
trigger3 = animelem = 22
trigger4 = animelem = 30
trigger5 = animelem = 38
trigger6 = animelem = 46
trigger7 = animelem = 54
trigger8 = animelem = 62
ID = 3404
anim = 3404
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 1,-2
[State 0,cetra]  ; cetra alto dietro
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 7
trigger2 = animelem = 15
trigger3 = animelem = 23
trigger4 = animelem = 31
trigger5 = animelem = 39
trigger6 = animelem = 47
trigger7 = animelem = 55
trigger8 = animelem = 63
ID = 3404
anim = 3404
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = -1,-2
[State 0,cetra]  ; cetra alto dritto
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 8
trigger2 = animelem = 16
trigger3 = animelem = 24
trigger4 = animelem = 32
trigger5 = animelem = 40
trigger6 = animelem = 48
trigger7 = animelem = 56
trigger8 = animelem = 64
ID = 3404
anim = 3404
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 0,-2

[State 0,cetra]  ; cetra dietro alto
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 6
trigger2 = animelem = 14
trigger3 = animelem = 22
trigger4 = animelem = 30
trigger5 = animelem = 38
trigger6 = animelem = 46
trigger7 = animelem = 54
trigger8 = animelem = 62
ID = 3404
anim = 3404
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = -2,-1
[State 0,cetra]  ; cetra dietro dritto
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 7
trigger2 = animelem = 15
trigger3 = animelem = 23
trigger4 = animelem = 31
trigger5 = animelem = 39
trigger6 = animelem = 47
trigger7 = animelem = 55
trigger8 = animelem = 63
ID = 3404
anim = 3404
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = -2,0
[State 0,cetra]  ; cetra dietro basso
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 8
trigger2 = animelem = 16
trigger3 = animelem = 24
trigger4 = animelem = 32
trigger5 = animelem = 40
trigger6 = animelem = 48
trigger7 = animelem = 56
trigger8 = animelem = 64
ID = 3404
anim = 3404
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = -2,1

[State 0,cetra]  ; cetra basso dietro
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 6
trigger2 = animelem = 14
trigger3 = animelem = 22
trigger4 = animelem = 30
trigger5 = animelem = 38
trigger6 = animelem = 46
trigger7 = animelem = 54
trigger8 = animelem = 62
ID = 3404
anim = 3404
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = -1,2
[State 0,cetra]  ; cetra basso dritto
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 7
trigger2 = animelem = 15
trigger3 = animelem = 23
trigger4 = animelem = 31
trigger5 = animelem = 39
trigger6 = animelem = 47
trigger7 = animelem = 55
trigger8 = animelem = 63
ID = 3404
anim = 3404
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 0,2
[State 0,cetra]  ; cetra basso avanti
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 8
trigger2 = animelem = 16
trigger3 = animelem = 24
trigger4 = animelem = 32
trigger5 = animelem = 40
trigger6 = animelem = 48
trigger7 = animelem = 56
trigger8 = animelem = 64
ID = 3404
anim = 3404
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 1,2

;================== CETRA ROTANTE

[State 0,note]  ; note avanti basso
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 3
trigger2 = animelem = 11
trigger3 = animelem = 19
trigger4 = animelem = 27
trigger5 = animelem = 35
trigger6 = animelem = 43
trigger7 = animelem = 51
trigger8 = animelem = 59
trigger9 = animelem = 67
ID = 3405
anim = 3405
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 2,1
[State 0,note]  ; note avanti alto
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 4
trigger2 = animelem = 12
trigger3 = animelem = 20
trigger4 = animelem = 28
trigger5 = animelem = 36
trigger6 = animelem = 44
trigger7 = animelem = 52
trigger8 = animelem = 60
trigger9 = animelem = 68
ID = 3405
anim = 3405
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 2,-1
[State 0,note]  ; note avanti dritto
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 5
trigger2 = animelem = 13
trigger3 = animelem = 21
trigger4 = animelem = 29
trigger5 = animelem = 37
trigger6 = animelem = 45
trigger7 = animelem = 53
trigger8 = animelem = 61
trigger9 = animelem = 69
ID = 3405
anim = 3405
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 2,0

[State 0,note]  ; note alto avanti
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 3
trigger2 = animelem = 11
trigger3 = animelem = 19
trigger4 = animelem = 27
trigger5 = animelem = 35
trigger6 = animelem = 43
trigger7 = animelem = 51
trigger8 = animelem = 59
trigger9 = animelem = 67
ID = 3405
anim = 3405
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 1,-2
[State 0,note]  ; note alto dietro
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 4
trigger2 = animelem = 12
trigger3 = animelem = 20
trigger4 = animelem = 28
trigger5 = animelem = 36
trigger6 = animelem = 44
trigger7 = animelem = 52
trigger8 = animelem = 60
trigger9 = animelem = 68
ID = 3405
anim = 3405
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = -1,-2
[State 0,note]  ; note alto dritto
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 5
trigger2 = animelem = 13
trigger3 = animelem = 21
trigger4 = animelem = 29
trigger5 = animelem = 37
trigger6 = animelem = 45
trigger7 = animelem = 53
trigger8 = animelem = 61
trigger9 = animelem = 69
ID = 3405
anim = 3405
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 0,-2

[State 0,note]  ; note dietro alto
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 3
trigger2 = animelem = 11
trigger3 = animelem = 19
trigger4 = animelem = 27
trigger5 = animelem = 35
trigger6 = animelem = 43
trigger7 = animelem = 51
trigger8 = animelem = 59
trigger9 = animelem = 67
ID = 3405
anim = 3405
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = -2,-1
[State 0,note]  ; note dietro dritto
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 4
trigger2 = animelem = 12
trigger3 = animelem = 20
trigger4 = animelem = 28
trigger5 = animelem = 36
trigger6 = animelem = 44
trigger7 = animelem = 52
trigger8 = animelem = 60
trigger9 = animelem = 68
ID = 3405
anim = 3405
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = -2,0
[State 0,note]  ; note dietro basso
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 5
trigger2 = animelem = 13
trigger3 = animelem = 21
trigger4 = animelem = 29
trigger5 = animelem = 37
trigger6 = animelem = 45
trigger7 = animelem = 53
trigger8 = animelem = 61
trigger9 = animelem = 69
ID = 3405
anim = 3405
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = -2,1

[State 0,note]  ; note basso dietro
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 3
trigger2 = animelem = 11
trigger3 = animelem = 19
trigger4 = animelem = 27
trigger5 = animelem = 35
trigger6 = animelem = 43
trigger7 = animelem = 51
trigger8 = animelem = 59
trigger9 = animelem = 67
ID = 3405
anim = 3405
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = -1,2
[State 0,note]  ; note basso dritto
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 4
trigger2 = animelem = 12
trigger3 = animelem = 20
trigger4 = animelem = 28
trigger5 = animelem = 36
trigger6 = animelem = 44
trigger7 = animelem = 52
trigger8 = animelem = 60
trigger9 = animelem = 68
ID = 3405
anim = 3405
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 0,2
[State 0,note]  ; note basso avanti
type = Explod
;triggerall = NumExplod(3404) = 0
trigger1 = animelem = 5
trigger2 = animelem = 13
trigger3 = animelem = 21
trigger4 = animelem = 29
trigger5 = animelem = 37
trigger6 = animelem = 45
trigger7 = animelem = 53
trigger8 = animelem = 61
trigger9 = animelem = 69
ID = 3405
anim = 3405
pos = 0,-100
postype = p1
sprpriority = 4
removetime = 650
scale = .25,.25
vel = 1,2

;--------------------------
;- p1 attesa
[Statedef 3409]
type = S
movetype= H
physics = N
velset = 0,0
anim = 3409
ctrl = 0

[State 4005, 2]
type = assertspecial
trigger1 = 1
flag = nomusic

[State 8005, pentagramma]
type = Explod
triggerall = NumExplod(326) = 0
trigger1 = animelem = 1
anim = 326
ID = 326
removeongethit = 1
removetime = -1
postype = back
pos = 0, 20
sprpriority = -8
bindtime = -1

[State 3, StopSnd]
type = playSnd
trigger1 = time = 5
value = 3400,1
channel = 0

[State 0, Explod]
type = Explod
triggerall = NumExplod(301400) = 0
trigger1 = time = 0
anim = 3015
ID = 301400
pos = -50,-55
postype = p2  ;p2,front,back,left,right
bindtime = -1
sprpriority = 4
ontop = 1
removeongethit = 1
removetime = 400;500

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = p2life = 0
id = 301400
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = p2movetype != H
id = 301400

[State 3, StopSnd]
type = null;StopSnd
trigger1 = p2life = 0
channel = -1

[State 3005, CS]
type = changeState
trigger1 = time = 350
value = 0
ctrl = 1

;--------------------------
;- p2 dorme1
[Statedef 3410]
type = S
movetype= H
physics = N
velset = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 4006]
Type = changeanim
Trigger1 = Time >= 0
Value = 10

[State 4006]
type = changestate
trigger1 = time = 15
value = 3411

;- p2 dorme2
[Statedef 3411]
type = S
movetype= H
physics = N
velset = 0,0
anim = 11

[State 4006]
type = Changestate
trigger1 = time = 15
value = 3412

;- p2 dorme3
[Statedef 3412]
type = S
movetype= H
physics = N
velset = 0,0

[State 4006]
Type = changeanim
Trigger1 = Time >= 0
Value = 5120

[State 4006]
type = changestate
trigger1 = time = 15
value = 3413

;- p2 dorme4
[Statedef 3413]
type = S
movetype= H
physics = N
velset = 0,0

[State 4006]
type = ChangeAnim2
trigger1 = time = 0
value = 5110

[State 3005, CS]
type = SelfState
triggerall = life > 0
trigger1 = time = 455
value = 5120
ctrl = 1

[State 3005, CS]
type = SelfState
trigger1 = life = 0
value = 5150
ctrl = 1

;===============================================================================
;sacro mime - ex.Laser 6
[Statedef 2600,sacro mime]
type = S
movetype = A
physics = S
anim = 2600
juggle = 3
velset = 0,0
poweradd = -1000
ctrl = 0

[State 0, NotHitBy]
type = null;NotHitBy
trigger1 = stateno = 2600
value = SCA,NA,SA
time = 1

[State 0, RemoveExplod] ;eventuale cosmo stand
type = RemoveExplod
trigger1 = time = 0
id = 20000

[State 3000, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 90,90,160
add = 0,0,0
invertall = 0

[State 0, SuperPause]
type = SuperPause
trigger1 = animelem = 1
time = 10
darken = 1
pos= 15,-95

[State 2600, cosmo]
type = Explod
trigger1 = time = 0
pos = 0,0
anim = 2610
ID = 2610
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = -1

[State 2600, 2]
type = RemoveExplod
triggerall = NumExplod(2610) = 1
trigger1 = time = 228
ID = 2610

[State 2600, righe "cosmo"]
type = Explod
trigger1 = animelem = 10
pos = 0,0
anim = 2602
ID = 2602
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
;removetime = 10

[State 2600, 3]
type = Playsnd
trigger1 = Animelem = 1
value = 2600,2
channel = 0

[State 2600, 3]
type = Playsnd
trigger1 = Animelem = 1
value = 2600,10
channel = 4

[State 2600, 3]
type = Playsnd
trigger1 = time = 60
trigger2 = time = 180
value = 2600,12
channel = 4

[State 2600, 3]
type = Playsnd
trigger1 = time = 120
trigger2 = time = 240
value = 2600,11
channel = 4

[State 2600, 4]
type = StopSnd
trigger1 = animelem = 20
channel = 4

[State 2600, 3]
type = Playsnd
trigger1 = time = 50
trigger2 = time = 155
value = 2600,1

[State 2600, 4]
type = Projectile
trigger1 = ANIMELEM = 10
attr = S, SP
projanim = 2302
offset = 50,-70
velocity = 10,0
damage = 10, 5
animtype = Hard
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 25,60
;sparkno = S2603
;sparkxy = 0,0
guard.sparkno = -1
hitsound   = 2000,2
guardsound = 2000,3
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5

[State 2600, 4]
type = Projectile
trigger1 = ANIMELEM = 11
attr = S, SP
projanim = 2302
offset = 50,-90
velocity = 15,0
damage = 10, 5
animtype = Hard
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 25,60
;sparkno = S2603
;sparkxy = 0,0
guard.sparkno = -1
hitsound   = 2000,2
guardsound = 2000,3
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
afterimage.time = 10
afterimage.length = 25
afterimage.trans = ADD
afterimage.paladd = 255,255,255
afterimage.framegap = 7

[State 2600, 4]
type = Projectile
trigger1 = ANIMELEM = 10
attr = S, SP
projanim = 2302
offset = 50,-70
velocity = 11,-3
damage = 10, 5
animtype = Hard
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 25,60
;sparkno = S2603
;sparkxy = 0,0
guard.sparkno = -1
hitsound   = 2000,2
guardsound = 2000,3
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
afterimage.time = 10
afterimage.length = 25
afterimage.trans = ADD
afterimage.paladd = 255,255,255
afterimage.framegap = 7

[State 2200]
type = Projectile
trigger1 = AnimElem = 11
attr = S, SP
projanim = 2302
offset = 50,-70;-90
velocity = 11,2.7
animtype = Hard
getpower = 0
givepower = 0
hitflag = MAF
GUARDFLAG = MA
pausetime = 3,50
;sparkno = S2603
;sparkxy = 0,0
hitsound = S1200,1
guardsound = S4006,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0
air.velocity = -3,1
damage = 10, 3
envshake.time =  15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
guard.sparkno = -1
afterimage.time = 10
afterimage.length = 25
afterimage.trans = ADD
afterimage.paladd = 255,255,255
afterimage.framegap = 7

[state 1200, raggi]
type = explod
trigger1 = projcontact = 1
;triggerall = NumExplod(3013) = 0
id = 3013
postype = p2
pos = -100,-0
anim = 3013
bindtime = 1
removetime = 35;60
sprpriority = 2
scale = .5,.5

[State 2600, 3]
type = Playsnd
trigger1 = Time = 220
value = 2600,3
channel = 0

[State 2600, 7]
type = ChangeState
trigger1 = Time = 279;228
value = 2605
ctrl = 0

;------------------------------------------------------
;- ultimo attacco
[Statedef 2605]
type = S
movetype = A
physics = S
anim = 2605
juggle = 3
velset = 0,0
ctrl = 0

[State 2600, 3]
type = Playsnd
trigger1 = time = 1
value = 2605,0

[State 2200]
type = Projectile
trigger1 = AnimElem = 2
attr = S, SP
projanim = 2601
projscale = 1,.5 ; change the offset
offset = -10,-40;-10,0
velocity = 11,0
getpower = 0
givepower = 0
hitflag = MAF
GUARDFLAG = MA
animtype = Hard
pausetime = 3,14
hitsound = S1200,1
guardsound = S4006,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -7,-4
air.velocity = -3,1
damage = 40, 8
envshake.time =  15
envshake.freq = 25
envshake.ampl = 5
envshake.phase = 5
guard.sparkno = -1
afterimage.time = 30
afterimage.length = 25
afterimage.trans = Add
afterimage.paladd = 255,255,255
afterimage.framegap = 4
fall = 1

[state 1200, raggi]
type = explod
trigger1 = projcontact = 1
;triggerall = NumExplod(3013) = 0
id = 3013
postype = p2
pos = -100,-0
anim = 3013
bindtime = 1
removetime = 35;60
sprpriority = 2
scale = .5,.5

[State 2600, 7]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;===============================================================================
;pentacapelli - ex.Laser 4
[Statedef 2400,pentacapelli esecuzione]
type = S
movetype = A
physics = S
anim = 2400
juggle = 3
velset = 0,0
poweradd = -1000
ctrl = 0
sprpriority = 3

[State 3000, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 90,90,160
add = 0,0,0
invertall = 0

[State 0, SuperPause]
type = SuperPause
trigger1 = time = 6
time = 146
movetime = 146
darken = 1
pos= 15,-95
sound = -1

[State 2400, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2400,0
channel = 0

[State 2400, cosmo]
type = Explod
trigger1 = time = 1
pos = 0,0
anim = 2410
ID = 2410
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 187

[State 2400, capelli]
type = Explod
trigger1 = time = 152
pos = 0,0
anim = 2402
ID = 2402
postype = p1
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 47

[State 2400, capelli]
type = Explod
trigger1 = time = 142
pos = 0,0
anim = 2401
ID = 2401
postype = p1
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 67

[State 2400, cosmo]
type = RemoveExplod
triggerall = NumExplod(2410) = 1
trigger1 = time = 207
ID = 2410

[State 2000, 3]
type = Playsnd
trigger1 = Animelem = 1
value = 2000,0
channel = 4

[State 2000, 4]
type = StopSnd
trigger1 = animelem = 30
channel = 4

[State 2400, 3]
type = Playsnd
trigger1 = time = 148
value = 2000,1

[State 2400, 3]
type = Playsnd
trigger1 = time = 148
value = 2000,4

[State 2400, 4]
type = hitdef
trigger1 = time = 0
attr = S, HP
ignorehitpause = 1
;anim = 2405
damage = 200, 20
animtype = Hard
getpower = 0
givepower = 0
hitflag = MAF
guardflag = MA
pausetime = 0,35
sparkno = -1
sparkxy = 35,10
guard.sparkno = -1
hitsound   = 2000,2
guardsound = 2000,3
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0
air.velocity = -2.5,-5
palfx.time = 15
palfx.add = 110,70,122
fall=1

[State 2400, 5]
type = null;Explod
triggerall = NumExplod(2404) = 0
trigger1 = moveHit
anim = 2404
pos = 0,0
postype = p2
bindtime = -1
sprpriority = 1
removetime = 50
id = 2404

[State 2400, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 2403
ctrl = 1

[Statedef 2403,pentacapelli fine]
type = S
movetype = A
physics = S
anim = 2403
juggle = 3
velset = 0,0
ctrl = 0

[State 2400, capelli]
type = Explod
trigger1 = time = 0
pos = 0,0
anim = 2406
ID = 2406
postype = p1
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
supermove = 1
removetime = 10

[State 3000, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 1
mul = 90,90,160
add = 0,0,0
invertall = 0

[State 2400, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------------------
;===================================================
;AI Variables
;===================================================
;---------------------------------------------------

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

;---------------------------------------------------

[State -2, HitBy]
type = HitBy
trigger1 = prevstateno = 32003
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 1

[State 3002]
type = RemoveExplod
trigger1 = stateno != 3000
ID = 3002

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = movetype = H
id = 2101

[state 1200, 8]
type = explod
trigger1 = stateno = 2000
trigger2 = prevstateno = 2000
triggerall = projhit = 1
id = 2003
postype = p2
pos = 0,-95
anim = 2003
removetime = 20
sprpriority = 3
scale = .25,.25

;---------------------------------------------------
;===================================================
;AI Combo Standing
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
value = 210

;3 pugni 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 200) && (movecontact) 
value = 210

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
trigger1 = (stateno = 220) && (prevstateno = 210) && (movecontact) 
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
trigger1 = (stateno = 210) && (prevstateno = 220) && (movecontact) 
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
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 240) && (movecontact) 
value = 250

;3 calci 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 231) 
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 231) && (movecontact) 
value = 240

;---------------------------------------------------
;===================================================
;AI Combo Crouching
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
;AI Combo Air
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
;AI Special Moves
;---------------------------------------------------------------------------

;Cosmo Charge
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 59])
trigger1 = (P2bodydist X >= 150) && (power < 3000) && (prevstateno != 5120)
value = 900

;Singola nota
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [60, 89])
trigger1 = ((P2bodydist X >= 120) && (prevstateno != 5120) && (StateNo != 2000) && (prevStateNo != 2000) && (prevStateNo != 0) && (prevStateNo != 10) && (P2MoveType != H))
value = 2000

;Righe pentagramma
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [90, 119])
trigger1 = (P2bodydist X >= 130) && (prevstateno != 5120)
value = 2100

;Scossa paralisi
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [120, 149])
trigger1 = (P2bodydist X >= 140) && (prevstateno != 5120) && ((prevstateno != 2200) && (P2MoveType != H))
value = 2200

;Pugno in corsa toglifiato
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [150, 179])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120) && ((prevstateno != 1100) && (P2MoveType != H))
value = 1100

;Pugno in corsa sbattuto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [180, 209])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120) 
value = 1120

;Unghie/righe in corsa
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [210, 239])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120)
value = 1200

;Presa
[State -2]
type = changestate
Triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [240, 269])
trigger1 = (p2bodydist X <= 20) && (stateno != 100) && (p2movetype != H) && (prevstateno != 5120)
value = 800

;Gomitata flash
[State -2]
type = changestate
Triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [270, 299])
trigger1 = (p2bodydist X > 10) && (p2movetype != H) && (prevstateno != 5120)
value = 211

;Combo kick 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [300, 329])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) && !((stateno = 0) && ((prevstateno = 300) || (prevstateno = 310) || (prevstateno = 320)))
value = 300
[State -2]
type = changestate
Triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = C) && (ctrl) && (random = [300, 329])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) && !((stateno = 11) && ((prevstateno = 500) || (prevstateno = 510) || (prevstateno = 520)))
value = 500

;Combo kick 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [330, 359])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) && !((stateno = 0) && ((prevstateno = 300) || (prevstateno = 310) || (prevstateno = 320)))
value = 310
[State -2]
type = changestate
Triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = C) && (ctrl) && (random = [330, 359])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) && !((stateno = 11) && ((prevstateno = 500) || (prevstateno = 510) || (prevstateno = 520)))
value = 510

;Combo kick 3
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [360, 389])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) && !((stateno = 0) && ((prevstateno = 300) || (prevstateno = 310) || (prevstateno = 320)))
value = 320
[State -2]
type = changestate
Triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall =  (var(59) != 0) && (statetype = C) && (ctrl) && (random = [360, 389])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) && !((stateno = 11) && ((prevstateno = 500) || (prevstateno = 510) || (prevstateno = 520)))
value = 520

;Crouching flash kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = C) && (ctrl) && (random = [390, 419])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120) 
value = 431

;Jumping flash Kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [420, 449])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120) 
value = 660

;Ruota1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype = S)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [450, 479])
trigger1 = (P2bodydist X <= 30) && (prevstateno != 5120) 
value = 1000

;Ruota2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype = S)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [480, 509])
trigger1 = (P2bodydist X <= 40) && (prevstateno != 5120) 
value = 1010

;Ruota3
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype = S)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [510, 539])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) 
value = 1020

;Guard Impact
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype = S)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [540, 569])
trigger1 = (P2bodydist X <= 60) && (P2MoveType = A) && (prevstateno != 5120) 
value = 1400

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [570,599])
value = 199

;---------------------------------------------------------------------------
;AI Super Moves
;---------------------------------------------------------------------------

;Sacro Mime
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 100) && (power >= 1000) && (power < 2000) && (random = [600, 629])
value = 2600

;Pentacapelli
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 160) && (power >= 1000) && (power < 2000) && (random = [630, 659])
value = 2400

;Ninna Nanna
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist x < 30) && (power >= 2000) && (random = [660, 689])
value = 34000
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist x >= 30) && (power >= 2000) && (random = [660, 689])
value = 3400

;Requiem dolce melodia
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist x > 35) && (backedgedist < 50) && (power >= 2000) && (random = [690, 719])
value = 32000
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist x < 35) && (backedgedist > 50) && (power >= 2000) && (random = [690, 719])
value = 32001
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist x < 35) && (backedgedist < 50) && (power >= 2000) && (random = [690, 719])
value = 32002
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist x > 35) && (backedgedist > 50) && (power >= 2000) && (random = [690, 719])
value = 32003

;Illusion Ghost
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 320) && (power >= 3000) && (random = [720, 749])
value = 3100

;Melodia delle tenebre
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 200) && (power >= 3000) && (random = [750, 779])
value = 3000

;Desperate
[State -2]
type = changestate
triggerall = P2StateType != A
Triggerall = (roundstate = 2) && (P2StateType != L) && (Life <= 250)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 70) && (p2bodydist X <= 270) && (power >= 3000) && (random = [780, 809])
value = 3300

;-----------------------------------
;-----------------------------------
;-----------------------------------
;explod melodia delle tenebre - rete sangue p2

[State 3002]
type = RemoveExplod
trigger1 = p2life <= 0
ID = 30070

[State 3002]
type = RemoveExplod
trigger1 = p2life <= 0
ID = 30030

[State 3002]
type = RemoveExplod
trigger1 = p2life <= 0
ID = 23002

;--------------------------------

[State 3002]
type = RemoveExplod
trigger1 = stateno = 0
ID = 323
[State 3002]
type = RemoveExplod
trigger1 = stateno = 0
ID = 327

[State 3002]
type = RemoveExplod
trigger1 = stateno = 0
ID = 325

;--------------------------------

[State 3002]
type = RemoveExplod
trigger1 = stateno = 3409
trigger2 = stateno = 0
ID = 324

[State 3002]
type = RemoveExplod
trigger1 = stateno = 0
ID = 326

;--------------------------------

[State 0, RemoveExplod] ;eventuale cosmo stand
type = RemoveExplod
trigger1 = stateno != 0
id = 20000

[State 0, RemoveExplod] ;eventuale cosmo stand
type = RemoveExplod
trigger1 = stateno != 0
id = 20001

[State 2]
type = PlaySnd
trigger1 = stateno = 100
trigger1 = AnimElem = 2
value = 3,1

[State 2]
type = PlaySnd
trigger1 = stateno = 100
trigger1 = AnimElem = 4
value = 3,0

[State 2]
type = PlaySnd
trigger1 = stateno = 100
trigger1 = AnimElem = 6
value = 3,1

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 5000,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 5000,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5020
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 5000,0

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 5000,1

[State -2]
type = PlaySnd
trigger1 = random < 500
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 5000,2

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = time = 1
triggerall = stateno = 5020
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 5000,1

[State -2]
type = PlaySnd
trigger1 = random < 500
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 5000,3

[state -2]
type = PlaySnd
trigger1 = !alive
trigger1 = time = 1
triggerall = stateno = 5110
value = 6000,0

[state -2]
type = PlaySnd
trigger1 = !alive
trigger1 = time = 25
triggerall = stateno = 5110
value = 6000,1

[State -2 , 0]
type = PosSet
triggerall = Pos Y != 0
trigger1 = stateno = 0
trigger2 = stateno = 11
y = 0

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

;-------------------------------------

[State -3, AI Activate]
type = VarSet
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
var(59) = 1

;-------------------------------------

[State -3, PowerSet]
type = PowerSet
trigger1 = stateno = 3300
value = 0

[State -3, Hilda buona]
type = Explod
triggerall = var(3) = 1
trigger1 = stateno  = 180
trigger1 = time = 50
pos = -35,-155
anim = 20181
ID = 20181
postype = p1
sprpriority = -2
removetime = -1
scale = .7,.8

[State -3, Assert]
type = AssertSpecial
triggerall = var(3) = 1
trigger1 = stateno = 180
trigger1 = time < 440 ;90
flag = roundnotover

[State -3, VarSet]
type = VarSet
triggerall = 1
trigger1 = p2name = "shun2" || p4name = "shun2"
trigger2 = p2name = "ikki2" || p4name = "ikki2"
var(7) = 1

;-------------------------------------

[State -3,remove]
type = RemoveExplod
triggerall = numexplod(2) >= 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life <= 250
ID = 2

[State -3,remove]
type = RemoveExplod
triggerall = numexplod(3) >= 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life > 250
ID = 3

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(20010) = 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life < 250
ID = 20010

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(20011) = 1
trigger1 = stateno != 0
trigger2 = anim = 5
trigger3 = life > 250
ID = 20011

[State -3,remove]
type = RemoveExplod
trigger1 = stateno != 900
ID = 905

[State -3,remove]
type = RemoveExplod
trigger1 = stateno != 900
ID = 906

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(1201) = 1
trigger1 = stateno != 1200
ID = 1201

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(1404) = 1
trigger1 = stateno != 1402
ID = 1404

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2401) = 1
trigger1 = stateno != 2400
ID = 2401

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2402) = 1
trigger1 = stateno != 2400
ID = 2402

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2403) = 1
trigger1 = stateno != 2400
ID = 2403

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(2404) = 1
trigger1 = stateno != 2400
ID = 2404

[State -3]
type = RemoveExplod
triggerall = NumExplod(2705) = 1
trigger1 = stateno != 2700
ID = 2705

[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(3003) = 1
trigger1 = p2stateno != 3005
ID = 3003

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(3105) = 1
trigger1 = stateno != 3100
ID = 3105

[State -3,remove]
type = RemoveExplod
triggerall = NumExplod(3106) = 1
trigger1 = stateno != 3101
ID = 3106

;--------------------------------------

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 4
value = 3,0

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 20
trigger1 = AnimElem = 11
value = 3,1

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 21
trigger1 = AnimElem = 3
value = 3,1

[State -3, Walk]
type = PlaySnd
trigger1 = stateno = 21
trigger1 = AnimElem = 10
value = 3,0

;---------------------------------------

[State -3, Jump Start]
type = PlaySnd
trigger1 = stateno = 40
trigger1 = Time = 0
value = 6,0

[State -3, Air Jump]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State -3, AirJump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = 6,1

[State -3, Jump Land]
type = PlaySnd
trigger1 = stateno = 52
trigger1 = Time = 1
value = 6,2

;---------------------------------------

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = time = 1
pos = 0,0
anim = 70050
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
pos = 25,0
anim = 7005
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = time = 1
time = 25
PalBright = 10,10,10
PalContrast= 98,98,98
trans = Add1

[State -3, Run Forward]
type = PlaySnd
triggerall = time = 1
trigger1 = stateno = 100
value = 6,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
value = 3,0
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 4
value = 3,1
volume = 0
channel = -1
freqmul = 1.0
loop = 0
pan = 0

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
type = PlaySnd
triggerall = time = 1
trigger1 = stateno = 105
value = 6,0

[State -3, Run Back Land]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 106
value = 6,2

;---------------------------------------

[State -3, Cloth Pieces]
type = Explod
triggerall = anim = 5140
trigger1 = time = 1
anim = 5111
ID = 5111
pos = -15,0
sprpriority = 5
ownpal = 1

[State -3, Cloth Pieces]
type = Explod
triggerall = anim = 5150
trigger1 = time = 1
anim = 5151
ID = 5151
pos = -15,0
sprpriority = 5
ownpal = 1

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = Var(58) = 0
triggerall = Life <= 0
triggerall = anim = 5150
triggerall = Time < 3
trigger1 = Time > 0
value = 11,1

[State -3, Saphir Light]
type = Explod
triggerall = anim = 5150
trigger1 = time = 1
anim = 5152
ID = 5152
pos = 0,0
sprpriority = 5
ownpal = 1

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9