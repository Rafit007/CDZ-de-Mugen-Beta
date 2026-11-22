;Phoenix Ikki States file by SeiyaDivin & Tux

;----------------------------------------------------------------
; Time Over state decider
[Statedef 170]
type = S

[State 170, 1]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 170, 2]
type = ChangeState
trigger1 = !MatchOver
value = 171

[State 170, 3]
type = ChangeState
trigger1 = MatchOver
value = 172

;----------------------------------------------------------------
; Time Over Lose 1
[Statedef 171]
type = S
anim = 170

[State 171 , 1]
type = AssertSpecial
trigger1 = Time = [0,450]
flag = RoundNotOver

[State 171, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 170, 0
channel = 0

[State 171, Tux]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2, 3

;----------------------------------------------------------------
; Time Over Lose 2
[Statedef 172]
type = S
anim = 171

[State 172 , 1]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = RoundNotOver

[State 171, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 170, 1
channel = 0

[State 172, Tux]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 3

;----------------------------------------------------------------
;----------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Anim = 8138
value = 189

[State 180, 2]
type = ChangeState
trigger1 = Anim = 4404
value = 188

[State 180, 3]
type = ChangeState
trigger1 = Anim = 3048
value = 184

[State 180, 4]
type = ChangeState
trigger1 = Anim = 3041
value = 185

[State 180, 5]
type = ChangeState
trigger1 = Anim = 3061
value = 183

[State 180, 6]
type = ChangeState
trigger1 = Anim = 3108
value = 187

[State 180, 7]
type = ChangeState
triggerall = Var(50) = RoundNo
triggerall = (Anim != 8141) && (Anim != 4404) && (Anim != 3048) && (Anim != 3061)
trigger1 = Time = 0
value = 186

[State 180, 8]
type = ChangeState
triggerall = Var(50) != RoundNo
triggerall = MatchOver = 0
triggerall = (Anim != 8141) && (Anim != 4404) && (Anim != 3048) && (Anim != 3061)
trigger1 = Time = 0
value = 181

[State 180, 9]
type = ChangeState
triggerall = Var(50) != RoundNo
triggerall = MatchOver = 1
triggerall = (Anim != 8141) && (Anim != 4404) && (Anim != 3048) && (Anim != 3061)
trigger1 = Time = 0
value = 182

;----------------------------------------------------------------
; Win 1st Round
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 181, 2]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = RoundNotOver

[State 181, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 181, 0
channel = 0

;----------------------------------------------------------------
; Win 2nd Round by Tux
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 182, 1]
type = AssertSpecial
triggerall = name = "ikkiG" || (name = "ikki" && palno >= 1 && palno <= 9)
trigger1 = Time = [0,220]
flag = RoundNotOver

[State 182, 1]
type = AssertSpecial
triggerall = name = "ikkiE" || (name = "ikki" && palno >= 10 && palno <= 12)
trigger1 = Time = [0,1200]
flag = RoundNotOver

[State 182, 1]
type = PlaySnd
triggerall = Anim = 182
trigger1 = animelem = 1
value = 3, 0

[State 182, Voice]
type = PlaySnd
triggerall = Anim = 182
trigger1 = animelem = 2
value = 182, 0

[State 182, 2]
type = ChangeAnim
triggerall = name = "ikkiE" || (name = "ikki" && palno >= 10 && palno <= 12)
trigger1 = Time = 0
value = 18200

[State 182, 3]
type = PlaySnd
triggerall = Anim = 18200
trigger1 = Time = 0
value = 190, 0

[State 182, 4]
type = Explod
triggerall = Anim = 18200
trigger1 = Time = 0
anim = 4102
ID = 4102
pos = 0,0
postype = p1
sprpriority = 5
removetime = 48
bindtime = -1
ownpal = 1

[State 182, 5]
type = PlaySnd
triggerall = Anim = 18200
trigger1 = Time = 48
value = 190, 2

[State 182, Explod]
type = Explod
triggerall = Anim = 18200
trigger1 = Time = 48
anim = 8142
ID = 8142
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 182, 6]
type = EnvShake
triggerall = Anim = 18200
trigger1 = Time = 48
time = 16
persistent = 0
ignorehitpause = 1

[State 182, 7]
type = PlaySnd
triggerall = Anim = 18200
trigger1 = Time = 54
value = 190, 1

[State 182, 8]
type = Explod
triggerall = Anim = 18200
trigger1 = Time = 48  
anim = 1930
sprpriority = -2
postype = p1
pos = 7,15
bindtime = 1
ownpal = 1

[State 182, 9]
type = EnvColor
triggerall = Anim = 18200
trigger1 = Time = 48
value = 255,255,255
time = 10

[State 182, 10]
type = Explod
triggerall = Anim = 18200
trigger1 = Time = 325
anim = 4004
ID = 4004
pos = 0,0
postype = p1
sprpriority = -4
removetime = 75
bindtime = -1
ownpal = 1
removeongethit = 1

[State 182, FX]
type = PlaySnd
triggerall = Anim = 18200
trigger1 = Time = 325
value = 5, 9

[State 182, big light]
type = Explod
triggerall = Anim = 18200
trigger1 = Time = 355
trigger1 = 1
anim = 7130
ID = 7130
pos = 130,-142
postype = p1
bindtime = -1
removetime = 50
scale = 1,1
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 182, big light]
type = Explod
triggerall = Anim = 18200
trigger1 = Time = 355
trigger1 = 1
anim = 7130
ID = 7130
pos = 130,-140
postype = p1
bindtime = -1
removetime = 50
scale = 1,1
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
vfacing = -1

[State 182, Voice]
type = PlaySnd
triggerall = Anim = 18200
trigger1 = Time = 79
value = 182, 1
channel = 0

[State 182, 12]
type = EnvColor
triggerall = Anim = 18200
trigger1 = AnimElem = 40
value = 255,255,255
time = 10

[State 182, 13]
type = PlaySnd
triggerall = Anim = 18200
trigger1 = AnimElem = 40
value = 9, 3

[State 182, 14]
type = PlaySnd
triggerall = Anim = 18200
trigger1 = AnimElem = 46
trigger2 = AnimElem = 48
trigger3 = AnimElem = 51
trigger4 = AnimElem = 54
trigger5 = AnimElem = 56
trigger6 = AnimElem = 58
value = 190, 3

[State 182, 15]
type = PlaySnd
triggerall = Anim = 18200
trigger1 = AnimElem = 60
trigger2 = AnimElem = 63
trigger3 = AnimElem = 66
trigger4 = AnimElem = 68
trigger5 = AnimElem = 70
trigger6 = AnimElem = 72
value = 190, 4

[State 182, Voice]
type = PlaySnd
triggerall = Anim = 18200
trigger1 = Time = 740
value = 182, 2
channel = 0

[State 182, Voice]
type = PlaySnd
triggerall = Anim = 18200
trigger1 = Time = 960
value = 12, 12
channel = 0

;----------------------------------------------------------------
; Win after Giant Punch
[Statedef 183]
type = S
ctrl = 0
anim = 3061
velset = 0,0

[State 183, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 183 , 2]
type = AssertSpecial
trigger1 = Time = [0, 60]
flag = RoundNotOver

;----------------------------------------------------------------
; Win after Sight of Hell
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 184, 1]
type = ChangeAnim
triggerall = RoundNo >= 2
trigger1 = Time = 0
value = 199

[State 184, 2]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 184, 3]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 184, 4]
type = PlaySnd
triggerall = RoundNo = 1
trigger1 = AnimElem = 1
value = 184, 1
channel = 0

[State 184, 5]
type = PlaySnd
triggerall = RoundNo >= 2
trigger1 = AnimElem = 6
value = 12, 10
channel = 0

[State 184, 6]
type = PlaySnd
triggerall = RoundNo >= 2
trigger1 = AnimElem = 9
value = 184, 2
channel = 0

;----------------------------------------------------------------
; Win after Burnt Alive
[Statedef 185]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 185, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 185, 2]
type = AssertSpecial
trigger1 = Time = [0,280]
flag = RoundNotOver

[State 185, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 185, 0
channel = 0

[State 185, 4]
type = PlaySnd
trigger1 = AnimElem = 14
value = 185, 1
channel = 0

;----------------------------------------------------------------
; Win after Renaissance
[Statedef 186]
type = S
ctrl = 0
anim = 186
velset = 0,0

[State 186, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 186, 2]
type = AssertSpecial
trigger1 = Time = [0,540]
flag = RoundNotOver

[State 186, 3]
type = Explod
trigger1 = Time = 0
anim = 4105
ID = 4105
pos = 0,-40
postype = p1
sprpriority = -5
removetime = 540
bindtime = -1
ownpal = 1
scale = .5,.5

[State 186, 4]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4300, 0
channel = 0

[State 186, 5]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4300, 4

;----------------------------------------------------------------
; Win after Phoenix No Ken
[Statedef 187]
type = S
ctrl = 0
anim = 3108
velset = 0,0

[State 187, 1]
type = AssertSpecial
trigger1 = Time = [0,0]
flag = roundnotover
flag2 = NoBarDisplay

[State 187, 2]
type = AllPalFX
trigger1 = Time = [0,0]
time = 1
add = -255,-255,-255

[State 187, 3]
type = BGPalFX
trigger1 = Time = [0,0]
time = 1
add = -255,-255,-255

;----------------------------------------------------------------
; Win after Esmeralda's Memory
[Statedef 188]
type = S
ctrl = 0
anim = 4404
velset = 0,0

[State 188]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 188, 0]
type = AssertSpecial
trigger1 = Time = [0,175]
flag = RoundNotOver;Intro

[State 188, 0.1]
type = PlaySnd
trigger1 = animelem = 1
value = 4400, 4
channel = 0

[State 188, 1] ;intro not yet over
type = VarSet
trigger1 = Time = 0
v = 9
value = 1

[State 188, 3] ;intro over, set v9 to 0
type = VarSet
trigger1 = Time = 65
v = 9
value = 0

;explod
[State 188, 6]
type = Explod
trigger1 = Time = 0
anim = 7032
sprpriority = 0
postype = p1
pos = -20,0
bindtime = 1
ownpal = 1

;explod
[State 188, 7]
type = Explod
trigger1 = Time = 0
anim = 7032
sprpriority = 0
postype = p1
pos = -20,3
bindtime = 1
ownpal = 1
vfacing = -1

;;explod
;[State 188, 8]
;type = Explod
;trigger1 = Time = 0
;anim = 8122
;sprpriority = 0
;postype = p1
;pos = 180,-180
;scale = .5,.5
;bindtime = 1
;ownpal = 1

;bg effect
[State 188, super]
type = bgpalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 150
mul = 150,150,222
sinadd = 34,56,67,240
add = 5,5,5
invertall = 0

;----------------------------------------------------------------
; Win after Ultime Phoenix
[Statedef 189]
type = A
movetype = A
physics = N
velset = 0,0
anim = 8138
ctrl = 0

[State 189]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 189]
type = AssertSpecial
trigger1 = Time = [0,1008]
flag = RoundNotOver

[State 189]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nomusic

[State 189]
type = AssertSpecial
trigger1 = Time <= 836
flag = noshadow

[State 189]
type = PlaySnd
trigger1 = Time = 0
value = 4050, 5

[State 189]
type = ChangeAnim
trigger1 = Time = 740
value = 8139

[State 189]
type = PosSet
trigger1 = Time = 740
y = 0

[State 189]
type = PlaySnd
trigger1 = Time = 740
value = 4050, 3

[State 189]
type = Explod
trigger1 = Time = 740
anim = 8513
pos = -10,0
postype = p1
sprpriority = -2
removetime = 20
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 189]
type = Explod
trigger1 = Time = 740
anim = 8513
pos = -10,1
postype = p1
sprpriority = -2
removetime = 20
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
vfacing = -1

[State 189]
type = ChangeAnim
trigger1 = Time = 842
value = 8140

[State 189, Tux]
type = PlaySnd
trigger1 = Time = 948
value = 12, 1

[State 189]
type = ChangeAnim
trigger1 = Time = 948
value = 8141

;----------------------------------------------------------------
;----------------------------------------------------------------
; Intro state decider
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1];avec armure
type = ChangeState
trigger1 = p2name = "phoenix noir" || p4name = "phoenix noir"
trigger2 = p2name = "ankoku phoenix" || p4name = "ankoku phoenix"
trigger3 = p2name = "ankokuPhoenix" || p4name = "ankokuPhoenix"
trigger4 = p2name = "black phoenix" || p4name = "black phoenix"
trigger5 = p2name = "blackPhoenix" || p4name = "blackPhoenix"
value = 191

[State 190, 1];armure ressuscitée
type = ChangeState
trigger1 = p2name = "ikki" || p4name = "ikki"
value = 192

[State 190, 1];depuis le ciel
type = ChangeState
trigger1 = p2name = "shaka" || p4name = "shaka"
trigger2 = p2name = "yaga" || p4name = "yaga"
trigger3 = p2name = "jagger" || p4name = "jagger"
value = 193

[State 190, 1];en marchant
type = ChangeState
trigger1 = p2name = "agora" || p4name = "agora"
trigger2 = p2name = "shiva" || p4name = "shiva"
value = 194

[State 190, 1];Versus Shun
type = ChangeState
trigger1 = p2name = "shun" || p4name = "shun"
trigger2 = p2name = "Andromeda" || p4name = "Andromeda"
value = 195

[State 190, 1];Versus Bronze Saints (Guerre Galactique)
type = ChangeState
trigger1 = p2name = "jabu" || p4name = "jabu"
trigger2 = p2name = "Seiya Civil" || p4name = "Seiya Civil"
trigger3 = p2name = "seiyaNC" || p4name = "seiyaNC"
trigger4 = p2name = "Shiryu Civil" || p4name = "Shiryu Civil"
trigger5 = p2name = "shiryuNC" || p4name = "shiryuNC"
trigger6 = p2name = "Hyoga Civil" || p4name = "Hyoga Civil"
trigger7 = p2name = "hyogaNC" || p4name = "hyogaNC"
value = 196

[State 190, 1];Versus Nachi
type = ChangeState
trigger1 = p2name = "nachi" || p4name = "nachi"
trigger2 = p2name = "Lupus Nachi" || p4name = "Lupus Nachi"
trigger3 = p2name = "Nachi del Lobo" || p4name = "Nachi del Lobo"
value = 197

[State 190, 1];Versus Seiya / Hyoga / Shiryu
type = ChangeState
trigger1 = p2name = "seiya" || p4name = "seiya"
trigger2 = p2name = "hyoga" || p4name = "hyoga"
trigger3 = p2name = "Hyoga de Cisne" || p4name = "Hyoga de Cisne"
trigger4 = p2name = "shiryu" || p4name = "shiryu"
trigger5 = p2name = "Shiryu de Dragão" || p4name = "Shiryu de Dragão"
value = 198

[State 190, 1];Versus Esmeralda
type = ChangeState
trigger1 = p2name = "esmeralda" || p4name = "esmeralda"
value = 19000

[State 190, 1];Versus Guilty
type = ChangeState
trigger1 = p2name = "guilty" || p4name = "guilty"
value = 19100

[State 190, 1];Versus Black Four
type = ChangeState
trigger1 = p2name = "pegase noir" || p4name = "pegase noir"
trigger2 = p2name = "ankoku pegasus" || p4name = "ankoku pegasus"
trigger3 = p2name = "ankokuPegasus" || p4name = "ankokuPegasus"
trigger4 = p2name = "black pegasus" || p4name = "black pegasus"
trigger5 = p2name = "blackPegasus" || p4name = "blackPegasus"
;--------------------------------------------------------------
trigger6 = p2name = "dragon noir" || p4name = "dragon noir"
trigger7 = p2name = "ankoku dragon" || p4name = "ankoku dragon"
trigger8 = p2name = "ankokuDragon" || p4name = "ankoku dragon"
trigger9 = p2name = "black dragon" || p4name = "black dragon"
trigger10 = p2name = "blackDragon" || p4name = "blackDragon"
;--------------------------------------------------------------
trigger11 = p2name = "cygne noir" || p4name = "cygne noir"
trigger12 = p2name = "ankoku cygnus" || p4name = "ankoku cygnus"
trigger13 = p2name = "ankokuCygnus" || p4name = "ankokuCygnus"
trigger14 = p2name = "black swan" || p4name = "black swan"
trigger15 = p2name = "blackSwan" || p4name = "blackSwan"
;--------------------------------------------------------------
trigger16 = p2name = "andromede noir" || p4name = "andromede noir"
trigger17 = p2name = "ankoku andromeda" || p4name = "ankoku andromeda"
trigger18 = p2name = "ankokuAndromeda" || p4name = "ankokuAndromeda"
trigger19 = p2name = "black andromeda" || p4name = "black andromeda"
trigger20 = p2name = "blackAndromeda" || p4name = "blackAndromeda"
value = 19200

[State 190, 1];Versus Jango
type = ChangeState
trigger1 = p2name = "jango" || p4name = "jango"
value = 19300

[State 190, 1];Versus Docrates
type = ChangeState
trigger1 = p2name = "docrates" || p4name = "docrates"
value = 19400

[State 190, 1];Versus ennemis de Shun (Sauver)
type = ChangeState
triggerall = p2name != "shun" && p3name != "shun" && p4name != "shun"
trigger1 = p2name = "flamme" || p4name = "flamme"
trigger2 = p2name = "ennetsu" || p4name = "ennetsu"
trigger3 = p2name = "capella" || p4name = "capella"
trigger4 = p2name = "Auriga Capella" || p4name = "Auriga Capella"
trigger5 = p2name = "capellaS" || p4name = "capellaS"
trigger6 = p2name = "dante" || p4name = "dante"
trigger7 = p2name = "danteS" || p4name = "danteS"
trigger8 = p2name = "orpheus" || p4name = "orpheus"
trigger9 = p2name = "Orfeo" || p4name = "Orfeo"
trigger10 = p2name = "uru" || p4name = "uru"
trigger11 = p2name = "rungh" || p4name = "rungh"
value = 19500

[State 190, 1];Versus Ares
type = ChangeState
trigger1 = p2name = "arles_gemini" || p4name = "arles_gemini"
trigger2 = p2name = "evil saga" || p4name = "evil saga"
trigger3 = p2name = "evilSaga" || p4name = "evilSaga"
trigger4 = p2name = "SagaE" || p4name = "SagaE"
value = 19600

[State 190, 2]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

;Random
[State 190, 3]
type = ChangeState
trigger1 = var(2) = [0,24]
value = 191

[State 190, 4]
type = ChangeState
trigger1 = var(2) = [25,49]
value = 192

[State 190, 5]
type = ChangeState
trigger1 = var(2) = [50,74]
value = 193

[State 190, 6]
type = ChangeState
trigger1 = var(2) = [75,99]
value = 194

;----------------------------------------------------------------
; Intro avec armure
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,600]
flag = intro

;phoenix ouverture
[State 191, 0.1]
type = PlaySnd
trigger1 = Time = 120
value = 190, 0

[State 191, 2]
type = PlaySnd
trigger1 = AnimElem = 18
value = 190, 1

[State 191, 0.2]
type = PosAdd
trigger1 = AnimElem = 14
Y = -5

[State 191, 0.2]
type = PosAdd
trigger1 = AnimElem = 15
Y = -5

[State 191, 0.2]
type = PosAdd
trigger1 = AnimElem = 16
Y = -7

[State 191, 0.2]
type = PosAdd
trigger1 = AnimElem = 17
Y = -7

[State 191, 0.2]
type = PosAdd
trigger1 = AnimElem = 18
Y = -6

[State 191, 0.2]
type = PosAdd
trigger1 = AnimElem = 19
Y = -6

[State 191, 0.2]
type = PosAdd
trigger1 = AnimElem = 20
Y = -6

[State 191, 0.2]
type = PosAdd
trigger1 = AnimElem = 21
Y = -8

[State 191, 0.2]
type = PosAdd
trigger1 = AnimElem = 22
Y = -6

[State 191, 0.2]
type = PosAdd
trigger1 = AnimElem = 23
Y = -6

[State 191, 0.2]
type = PosAdd
trigger1 = AnimElem = 24
Y = -6

[State 191, 0.2]
type = PosAdd
trigger1 = AnimElem = 25
Y = -6

[State 191, 0.2]
type = PosAdd
trigger1 = AnimElem = 26
Y = -6

[State 191, 5]
type = PlaySnd
trigger1 = AnimElem = 29;Jambe
trigger2 = AnimElem = 34;Bras1
trigger3 = AnimElem = 42;Torse
trigger4 = AnimElem = 47;Dos
trigger5 = AnimElem = 52;Casque
value = 190, 3

[State 191, 5]
type = PlaySnd
trigger1 = AnimElem = 32;Jupe
trigger2 = AnimElem = 40;Bras2
trigger3 = AnimElem = 44;Epaule1
trigger4 = AnimElem = 49;Epaule2
value = 190, 4

[State 191, 5]
type = PlaySnd
trigger1 = AnimElem = 60
value = 190, 2

[State 191, 5]
type = PlaySnd
trigger1 = AnimElem = 60
value = 190, 5

[State 191, pos]
type = PosAdd
trigger1 = AnimElem = 62
Y = 20
X = 0

[State 191, pos]
type = PosAdd
trigger1 = AnimElem = 63
Y = 20
X = 0

[State 191, pos]
type = PosAdd
trigger1 = AnimElem = 64
Y = 20
X = 0

[State 191, pos]
type = PosAdd
trigger1 = AnimElem = 65
Y = 20
X = 0

[State 191, 5]
type = PlaySnd
trigger1 = AnimElem = 65
value = 2, 3

;Bg effect
[State 191, super]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 200
mul = 150,150,222
sinadd = 34,56,67,240
add = 5,5,5
invertall = 0

;BG Stars
[State 191, 1]
type = Explod
trigger1 = AnimElem = 25
anim = 20000
ID = 20000
pos = 0,0
postype = back
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 191, remove]
type = RemoveExplod
triggerall = NumExplod(20000) = 1
trigger1 = animelem = 66
ID = 20000

[State 191, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 12, 2
channel = 0

;Box
[State 191, 1]
type = Explod
trigger1 = AnimElem = 10
ID = 1910
anim = 1910
pos = 25, 0
postype = p1
removetime = 75
sprpriority = 4

[State 191, Shake1]
type = EnvShake
trigger1 = AnimElem = 10, = 19
time = 4

[State 191, BoxHit1]
type = PlaySnd
trigger1 = AnimElem = 10, = 19
value = 190, 3

[State 191, Shake2]
type = EnvShake
trigger1 = AnimElem = 10, = 27
time = 4

[State 191, BoxHit2]
type = PlaySnd
trigger1 = AnimElem = 10, = 27
value = 1, 2

;Explod ouverture box
[State 191,1]
type = Explod
trigger1 = AnimElem = 10, = 31
ID = 7040
anim = 7040
pos = 25, 0
postype = p1
removetime = 20
sprpriority = 5
ownpal = 1

;Lumière verticale ouverture box
[State 191,1]
type = Explod
trigger1 = AnimElem = 12
ID = 7050
anim = 7050
pos = 25, 0
postype = p1
removetime = 32
sprpriority = -4
ownpal = 1

;Box open sol
[State 191,1]
type = Explod
trigger1 = AnimElem = 19
ID = 1911
anim = 1911
pos = 10,35
postype = p1
removetime = 12
sprpriority = -2
ownpal = 1

;Armure
[State 191,1]
type = Explod
trigger1 = AnimElem = 12
ID = 1920
anim = 1920
pos = 25, -60
postype = p1
removetime = 255
sprpriority = -3
ownpal = 1

[State 191, FlashClothes]
type = PalFX
trigger1 = AnimElem = 27
time = 2
add = 0,50,150

;oiseau flamme
[State 191, 8]
type = Explod
ID = 1960
trigger1 = AnimElem = 61
anim = 1960
sprpriority = -2
postype = p1
pos = 0,0
removetime = 95
bindtime = 1
ownpal = 1

[State 191, 10]
type = EnvShake
trigger1 = AnimElem = 61
time = 10

[State 191, Flash]
type = EnvColor
trigger1 = AnimElem = 61
value = 200,130,0
time = 3

;Constellation
[State 191, 6]
type = Explod
ID = 1970
trigger1 = AnimElem = 61
anim = 1970
sprpriority = -4
postype = p1
pos = 0,90
removetime = -1
bindtime = 1
ownpal = 1

[State 191,remove]
type = RemoveExplod
triggerall = NumExplod(1970) = 1
trigger1 = animelem = 66
ID = 1970

[State 191,remove]
type = RemoveExplod
triggerall = NumExplod(1980) = 1
trigger1 = animelem = 66
ID = 1980

[State 191, 11] ;Intro not yet over
type = VarSet
trigger1 = Time = 0
v = 9
value = 1

[State 191, 12] ;Intro over, set v9 to 0
type = VarSet
trigger1 = Time = 597
v = 9
value = 0

[State 191, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 191, 14]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;------------------------------------
; Intro armure ressuscitée
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192, 1] 
type = AssertSpecial
trigger1 = Time = [0, 380]
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 192, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 11
channel = 0

[State 192, 3]
type = Explod
trigger1 = AnimElem = 1
anim = 20000
ID = 20000
pos = 0,0
postype = back
sprpriority = -5
removetime = 380
bindtime = -1
ownpal = 1
removeongethit = 1

[State 192, 4]
type = Explod
triggerall = (P2Name != "ikki") && (P4Name != "ikki")
trigger1 = AnimElem = 1
anim = 1980
ID = 1980
pos = 25,0
postype = p1
sprpriority = -3
removetime = 60
bindtime = -1
ownpal = 1
removeongethit = 1

[State 192, 5]
type = EnvColor
triggerall = (P2Name != "ikki") && (P4Name != "ikki")
trigger1 = AnimElem = 2
value = 230,50,0
time = 1

[State 192, 6]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4300, 2

[State 192, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 192, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;----------------------------------------------------------------
; Intro depuis le ciel
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 0]
type = AssertSpecial
trigger1 = Time = [0,550]
flag = intro
flag = nomusic

[State 193, phoenix]
type = PlaySnd
trigger1 = Time = 0
value = 190, 0

;Bg Fond
[State 193, 6]
type = Explod
ID = 8001
trigger1 = Time = 0
anim = 8001
sprpriority = -4
postype = left
pos = 0,185
removetime = 57
bindtime = 1
ownpal = 1

[State 193, descente du phoenix]
type = Explod
trigger1 = Time = 0  
anim = 1940
sprpriority = 3
postype = p1
pos = -75,-210
bindtime = 1
ownpal = 1
scale = 0.3,0.3

[State 193, descente du phoenix 2]
type = Explod
trigger1 = Time = 5  
anim = 1940
sprpriority = 3
postype = p1
pos = -75,-180
bindtime = 1
ownpal = 1
scale = 0.3,0.3

[State 193, descente du phoenix 3]
type = Explod
trigger1 = Time = 9 
anim = 1940
sprpriority = 3
postype = p1
pos = -65,-140
bindtime = 1
ownpal = 1
scale = 0.3,0.3

[State 193, descente du phoenix 4]
type = Explod
trigger1 = Time = 13  
anim = 1940
sprpriority = 3
postype = p1
pos = -45,-100
bindtime = 1
ownpal = 1
scale = 0.4,0.4

[State 193, descente du phoenix 5]
type = Explod
trigger1 = Time = 17  
anim = 1940
sprpriority = 3
postype = p1
pos = -25,-60
bindtime = 1
ownpal = 1
scale = 0.5,0.5

[State 193, descente du phoenix 6]
type = Explod
trigger1 = Time = 21  
anim = 1940
sprpriority = 3
postype = p1
pos = -5,-20
bindtime = 1
ownpal = 1
scale = 0.6,0.6

[State 193, descente du phoenix 7]
type = Explod
trigger1 = Time = 25  
anim = 1940
sprpriority = 3
postype = p1
pos = 5,0
bindtime = 1
ownpal = 1
scale = 0.7,0.7

[State 193, impact]
type = PlaySnd
trigger1 = Time = 26
value = 190, 2

[State 193, tremblement impact]
type = EnvShake
trigger1 = Time = 26
time = 16
persistent = 0
ignorehitpause = 1

[State 193, colone]
type = PlaySnd
trigger1 = Time = 32
value = 190, 1

[State 193, colone de feux]
type = Explod
trigger1 = Time = 26  
anim = 1941
sprpriority = 3
postype = p1
pos = 7,15
bindtime = 1
ownpal = 1

;Signe
[State 193, Sign]
type = Explod
ID = 1980
trigger1 = Time = 50
anim = 1980
sprpriority = -3
postype = p1
pos = 0,30
removetime = 95
bindtime = 1
ownpal = 1

[State 193, Voix]
type = PlaySnd
trigger1 = Animelem = 4
value = 193, 0

[State 193, Voix]
type = PlaySnd
triggerall = name = "ikkiG" || (name = "ikki" && palno >= 1 && palno <= 9)
trigger1 = Time = 230
value = 193, 1
channel = 0

[State 193, Voix]
type = PlaySnd
triggerall = name = "ikkiE" || (name = "ikki" && palno >= 10 && palno <= 12)
trigger1 = Time = 230
value = 193, 2
channel = 0

[State 193, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 193, 9]
type = ChangeState
trigger1 = Time = 550
value = 0
ctrl = 0

;----------------------------------------------------------------
; Intro en marchant
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 194, 0]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = intro

[State 194, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 194, 0
channel = 0

[State 194, step]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 9
value = 3, 1

[State 194, step]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 12
value = 3, 0

[State 194, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 194, 10]
type = ChangeState
trigger1 = Time = 180
value = 0
ctrl = 0

;----------------------------------------------------------------
; Intro vs Shun
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 195, 0]
type = AssertSpecial
trigger1 = Time = [0,190]
flag = intro

[State 195, snd]
type = PlaySnd
triggerall = name = "ikkiE" || name = "ikki" && palno >= 9 && palno <= 12
trigger1 = Time = 0
value = 195, 0
channel = 0

[State 195, snd]
type = PlaySnd
triggerall = name = "ikkiG" || (name = "ikki" && palno >= 1 && palno <= 9)
trigger1 = Time = 0
value = 195, 1
channel = 0

[State 195, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 195, 3]
type = ChangeState
trigger1 = Time = 190
value = 0
ctrl = 0

;----------------------------------------------------------------
; Intro vs Bronze Saints (Guerre Galactique)
[Statedef 196]
type = A
ctrl = 0
anim = 196
velset = 0,0

[State 195, 0]
type = AssertSpecial
trigger1 = Time = [0,450]
flag = intro

[State 196, 1]
type = ScreenBound
trigger1 = 1
value = 0

[State 196, 1]
type = ChangeAnim
triggerall = name = "ikkiE" || name = "ikki" && palno >= 9 && palno <= 12
trigger1 = Time = 0
value = 1961

[State 196, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 11

[State 196, descente du phoenix]
type = Explod
trigger1 = Time = 116  
anim = 1940
sprpriority = -3
postype = p1
pos = -75,-210
bindtime = 1
ownpal = 1
scale = 0.3,0.3

[State 196, descente du phoenix 2]
type = Explod
trigger1 = Time = 121  
anim = 1940
sprpriority = -3
postype = p1
pos = -75,-180
bindtime = 1
ownpal = 1
scale = 0.3,0.3

[State 196, descente du phoenix 3]
type = Explod
trigger1 = Time = 124 
anim = 1940
sprpriority = -3
postype = p1
pos = -65,-140
bindtime = 1
ownpal = 1
scale = 0.3,0.3

[State 196, descente du phoenix 4]
type = Explod
trigger1 = Time = 128  
anim = 1940
sprpriority = -3
postype = p1
pos = -45,-100
bindtime = 1
ownpal = 1
scale = 0.4,0.4

[State 196, descente du phoenix 5]
type = Explod
trigger1 = Time = 132  
anim = 1940
sprpriority = -3
postype = p1
pos = -25,-60
bindtime = 1
ownpal = 1
scale = 0.5,0.5

[State 196, descente du phoenix 6]
type = Explod
trigger1 = Time = 135  
anim = 1940
sprpriority = -3
postype = p1
pos = -5,-20
bindtime = 1
ownpal = 1
scale = 0.6,0.6

[State 196, descente du phoenix 7]
type = Explod
trigger1 = Time = 139  
anim = 1940
sprpriority = -3
postype = p1
pos = 5,0
bindtime = 1
ownpal = 1
scale = 0.7,0.7

[State 196, explosion]
type = Explod
trigger1 = Time = 140  
anim = 8144
sprpriority = -3
postype = p1
pos = 5,0
bindtime = 1
ownpal = 1
scale = 0.7,0.7

[State 196, Tux1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 1

[State 196, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 190, 0

[State 196, snd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2, 3

[State 196, Tux2]
type = PlaySnd
triggerall = name = "ikkiE" || name = "ikki" && palno >= 9 && palno <= 12
trigger1 = AnimElem = 11
value = 5, 7

[State 196, snd]
type = PlaySnd
trigger1 = AnimElem = 14
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
channel = -1

[State 196, 4]
type = ChangeState
trigger1 = Time = 450
value = 0
ctrl = 0

;------------------------------------
; Intro vs Nachi
[Statedef 197]
type = S
ctrl = 0
anim = 197
velset = 0,0

[State 197]
type = AssertSpecial
trigger1 = Time = [0, 850]
flag = intro
ignorehitpause = 1

[State 197, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 197, 0
channel = 0

[State 197, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 197, 3]
type = ChangeState
trigger1 = Time = 850
value = 0
ctrl = 0

;----------------------------------------------------------------
; Intro vs Seiya / Hyoga / Shiryu
[Statedef 198]
type = S
ctrl = 0
anim = 198
velset = 0,0

[State 198, 1]
type = AssertSpecial
trigger1 = Time = [0,205]
flag = intro

[State 198, voix]
type = PlaySnd
trigger1 = Time = 0
value = 198, 1

;casque
[State 198, 2]
type = Explod
triggerall = name = "ikkiE" || name = "ikki" && palno >= 9 && palno <= 12
trigger1 = Time = 0
anim = 1950
sprpriority = 1
postype = p1
pos = 0,0
bindtime = 1
ownpal = 1
removetime = 200

[State 198, 3]
type = PlaySnd
trigger1 = Time = 200
value = 3, 0

[State 198, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 198, 3]
type = ChangeState
trigger1 = Time = 205
value = 0
ctrl = 0

;------------------------------------
; Intro vs Esmeralda
[Statedef 19000]
type = S
ctrl = 0
anim = 19000
velset = 0,0

[State 19000]
type = AssertSpecial
trigger1 = Time = [0, 650]
flag = intro
flag2 = nomusic
flag3 = nobardisplay
ignorehitpause = 1

[State 19000, snd]
type = PlaySnd
trigger1 = Time = 180
value = 4400, 0

[State 19000, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 19000, 3]
type = ChangeState
trigger1 = Time = 650
value = 0
ctrl = 0

;------------------------------
; Intro vs Guilty
[Statedef 19100]
type = S
ctrl = 0
anim = 19100
velset = 0,0

[State 19100, 0]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 19100, esmeralda]
type = Helper
triggerall = p2name != "esmeralda" || p3name != "esmeralda" || p4name != "esmeralda"
trigger1 = Time = 0
trigger1 = numhelper(19102) = 0
name = "esmeralda"
ID = 19102
postype = p1
pos = 30, 0
stateno = 19102
keyctrl = 0
ownpal = 1

[State 19100, esmeralda]
type = PlaySnd
trigger1 = Time = 100
value = 4400, 3
channel = 0

[State 19100, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 19100, 4]
type = ChangeState
trigger1 = Time = 200
value = 19101
ctrl = 0

;------------------------------
; Ikki pleure
[Statedef 19101]
type = S
ctrl = 0
anim = 19101
velset = 0,0

[State 19101, 0]
type = AssertSpecial
trigger1 = Time = [0,540]
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 19101, snd]
type = PlaySnd
trigger1 = Time = 10
value = 5, 5

[State 19101, esmeralda]
type = PlaySnd
trigger1 = Time = 50
value = 4400, 2
channel = 0

[State 19101, snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 12, 8

[State 19101]
type = PlaySnd
trigger1 = AnimElem = 8
value = 9, 1

[State 19101, shake]
type = EnvShake
trigger1 = AnimElem = 8
time = 40

[State 19101, Phoenix]
type = Explod
trigger1 = AnimElem = 8
anim = 1980
ID = 1980
pos = 0,0
postype = p1
sprpriority = -3
removetime = 112
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19101, Cosmos]
type = Explod
trigger1 = AnimElem = 8
anim = 903
ID = 903
pos = 0,0
postype = p1
sprpriority = -5
removetime = 112
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19101]
type = Explod
triggerall = numexplod(7010) = 0
trigger1 = AnimElem = 8
anim = 7010
ID = 7010
pos = 0,0
bindtime = 1
removetime = 112
scale = 0.9,0.9
sprpriority = -3
ownpal = 1
removeongethit = 1

[State 19101]
type = Explod
triggerall = numexplod(7020) = 0
trigger1 = AnimElem = 8
anim = 7020
ID = 7020
pos = 0,2
bindtime = 1
removetime = 112
scale = 0.9,0.9
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 19101, fire]
type = Explod
triggerall = NumExplod(8123) = 0
trigger1 = AnimElem = 8
anim = 8123
ID = 8123
pos = 0,10
bindtime = -1
removetime = 112
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 19101, big light]
type = Explod
triggerall = numexplod(7030) = 0
trigger1 = AnimElem = 8
anim = 7030
ID = 7030
pos = -10,5
bindtime = -1
removetime = 112
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 19101, big light]
type = Explod
triggerall = numexplod(7031) = 0
trigger1 = AnimElem = 8
anim = 7031
ID = 7031
pos = -10,6
vfacing = -1
bindtime = -1
removetime = 112
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 19101, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 19101, 4]
type = ChangeState
trigger1 = Time = 540
value = 0
ctrl = 0

;---------------------------------------------------------------------------
; Esmeralda mon amour
[Statedef 19102]
type = S
movetype = A
physics = S
anim = 19102
juggle = 0
velset = 0,0
ctrl = 0

[State 19102, 1]
type = Explod
triggerall = NumExplod(19102) = 0
trigger1 = Time = 0
anim = 19102
ID = 19102
pos = 0,0
postype = p1
sprpriority = 9
removetime = 200
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19102, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 19102, 2]
type = ChangeState
trigger1 = Time = 200
value = 19103
ctrl = 0

;---------------------------------------------------------------------------
; Esmeralda meurt
[Statedef 19103]
type = S
movetype = A
physics = S
anim = 19103
juggle = 0
velset = 0,0
ctrl = 0

[State 19103 , esmeralda]
type = PlaySnd
trigger1 = Time = 0
value = 4200, 4

[State 19103, 1]
type = Explod
triggerall = NumExplod(19103) = 0
trigger1 = Time = 0
anim = 19103
ID = 19103
pos = 0,0
postype = p1
sprpriority = 8
removetime = 402
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19103, 1]
type = Explod
triggerall = NumExplod(19104) = 0
trigger1 = Time = 0
anim = 19104
ID = 19104
pos = 0,0
postype = p1
sprpriority = 9
removetime = 12
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19103, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 19103, 2]
type = ChangeState
trigger1 = Time = 402
value = 19104
ctrl = 0

;---------------------------------------------------------------------------
; Esmeralda disparait
[Statedef 19104]
type = S
movetype = A
physics = S
anim = 19105
juggle = 0
velset = 0,0
ctrl = 0

[State 19104, 1]
type = Explod
triggerall = NumExplod(19105) = 0
trigger1 = Time = 0
anim = 19105
ID = 19105
pos = 0,0
postype = p1
sprpriority = 9
removetime = 100
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19104, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 19104, 1]
type = DestroySelf
trigger1 = Time = 100

;----------------------------------------------------------------
; Intro vs Black Four
[Statedef 19200]
type = S
ctrl = 0
anim = 19200
velset = 0,0

[State 19200, 1]
type = AssertSpecial
trigger1 = Time = [0,350]
flag = intro
flag2 = nobardisplay

[State 19200, 2]
type = PlaySnd
triggerall = name = "ikkiG" || (name = "ikki" && palno >= 1 && palno <= 9)
trigger1 = Time = 0
value = 192, 0
channel = 0

[State 19200, 3]
type = PlaySnd
triggerall = name = "ikkiE" || (name = "ikki" && palno >= 10 && palno <= 12)
trigger1 = Time = 0
value = 192, 1
channel = 0

[State 19200, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 19200, 3]
type = ChangeState
trigger1 = Time = 350
value = 0
ctrl = 0

;------------------------------
; Intro vs Jango
; Étranglement ankoku phoenix
[Statedef 19300]
type = S
ctrl = 0
anim = 19300
velset = 0,0

[State 19300, 0] 
type = AssertSpecial
trigger1 = 1
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 19300, 0]
type = AssertSpecial
trigger1 = Time = [0,120]
flag = intro

[State 19300 , voix ankoku]
type = PlaySnd
trigger1 = Time = 10
value = 191, 0

[State 19300 , voix aie ankoku]
type = PlaySnd
trigger1 = Time = 0
value = 10, 1

[State 19300 , voix aie ankoku]
type = PlaySnd
trigger1 = Time = 100
value = 10, 1

[State 19300, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 19300, 4]
type = ChangeState
trigger1 = Time = 120
value = 19301
ctrl = 1

;------------------------------
; intro depuis helico
[Statedef 19301]
type = S
ctrl = 0
anim = 19301
velset = 0,0

[State 19301, AssertSpecial] 
type = AssertSpecial
trigger1 = 1
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 19301, 0]
type = AssertSpecial
trigger1 = Time = [0,300]
flag = intro

[State 19301 , shun]
type = Helper
triggerall = name = "ikkiG" || (name = "ikki" && palno >= 1 && palno <= 9)
triggerall = p2name != "shun" || p3name != "shun" || p4name != "shun"
trigger1 = Time = 0
trigger1 = numhelper(19302) = 0
name = "shun-helico"
ID = 19302
postype = p1
pos = 50, 0
stateno = 19302
keyctrl = 0
ownpal = 1

[State 19301 , seiya]
type = Helper
triggerall = name = "ikkiG" || (name = "ikki" && palno >= 1 && palno <= 9)
triggerall = p2name != "seiya" || p3name != "seiya" || p4name != "seiya"
trigger1 = Time = 0
trigger1 = numhelper(19306) = 0
name = "seiya-helico"
ID = 19306
postype = p1
pos = 50, 0
stateno = 19306
keyctrl = 0
ownpal = 1

[State 19301 , hyoga]
type = Helper
triggerall = name = "ikkiG" || (name = "ikki" && palno >= 1 && palno <= 9)
triggerall = p2name != "hyoga" || p3name != "hyoga" || p4name != "hyoga"
trigger1 = Time = 0
trigger1 = numhelper(19304) = 0
name = "hyoga-helico"
ID = 19304
postype = p1
pos = 50, 0
stateno = 19304
keyctrl = 0
ownpal = 1

[State 19301, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 19301, 4]
type = ChangeState
trigger1 = Time = 300
value = 191
ctrl = 0

;---------------------------------------------------------------------------
; Shun-helico
[Statedef 19302]
type = S
movetype = A
physics = S
anim = 19302
juggle = 0
velset = 0,0
ctrl = 0

[State 19302, Tux1]
type = PlaySnd
trigger1 = Time = 0
value = 2, 1

[State 19302, voix shun]
type = PlaySnd
trigger1 = Time = 0
value = 191, 1

[State 19302, 1]
type = Explod
triggerall = NumExplod(19302) = 0
trigger1 = Time = 0
anim = 19302
ID = 19302
pos = 0,0
postype = p1
sprpriority = 6
removetime = 200
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19302, 2]
type = ChangeState
trigger1 = Time = 200
value = 19303
ctrl = 0

;---------------------------------------------------------------------------
; Shun-stand
[Statedef 19303]
type = S
movetype = A
physics = S
anim = 19303
juggle = 0
velset = 0,0
ctrl = 0

[State 19303, Tux1]
type = PlaySnd
trigger1 = Time = 0
value = 2, 2

[State 19303, Tux1]
type = PlaySnd
trigger1 = Animelem = 2
value = 2, 1

[State 19303 , helico]
type = PlaySnd
trigger1 = Time = 0
value = 191, 4

[State 19303, 1]
type = Explod
triggerall = NumExplod(19303) = 0
trigger1 = Time = 0
anim = 19303
ID = 19303
pos = 0,0
postype = p1
sprpriority = 6
removetime = 300
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19303, 1]
type = DestroySelf
trigger1 = Time = 300

;---------------------------------------------------------------------------
; Hyoga-helico
[Statedef 19304]
type = S
movetype = A
physics = S
type = S
movetype = A
physics = S
anim = 19304
juggle = 0
velset = 0,0
ctrl = 0
sprpriority = 5

[State 19304, Tux1]
type = PlaySnd
trigger1 = Time = 0
value = 2, 1

[State 19304 , voix ami qui sauve]
type = PlaySnd
trigger1 = Time = 0
value = 191, 2

[State 19304, 1]
type = Explod
triggerall = NumExplod(19304) = 0
trigger1 = Time = 0
anim = 19304
ID = 19304
pos = 0,0
postype = p1
sprpriority = 5
removetime = 200
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19304, 2]
type = ChangeState
trigger1 = Time = 210
value = 19305
ctrl = 0

;---------------------------------------------------------------------------
; Hyoga-stand
[Statedef 19305]
type = S
movetype = A
physics = S
anim = 19305
juggle = 0
velset = 0,0
ctrl = 0

[State 19305, Tux1]
type = PlaySnd
trigger1 = Time = 0
value = 2, 2

[State 19305, Tux1]
type = PlaySnd
trigger1 = Animelem = 2
value = 2, 1

[State 19305, 1]
type = Explod
triggerall = NumExplod(19305) = 0
trigger1 = Time = 0
anim = 19305
ID = 19305
pos = 0,0
postype = p1
sprpriority = 5
removetime = 300
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19305, 2]
type = DestroySelf
trigger1 = Time = 300

;---------------------------------------------------------------------------
; Seiya-helico
[Statedef 19306]
type = S
movetype = A
physics = S
type = S
movetype = A
physics = S
anim = 19306
juggle = 0
velset = 0,0
ctrl = 0

[State 19305, Tux1]
type = PlaySnd
trigger1 = Time = 0
value = 2, 1

[State 19305, voix ami qui sauve]
type = PlaySnd
trigger1 = Time = 0
value = 191, 2

[State 19306, 1]
type = Explod
triggerall = NumExplod(19306) = 0
trigger1 = Time = 0
anim = 19306
ID = 19306
pos = 0,0
postype = p1
sprpriority = 4
removetime = 200
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19306, 2]
type = ChangeState
trigger1 = Time = 200
value = 19307
ctrl = 0

;---------------------------------------------------------------------------
; Seiya-stand
[Statedef 19307]
type = S
movetype = A
physics = S
anim = 19307
juggle = 0
velset = 0,0
ctrl = 0

[State 19307, Tux1]
type = PlaySnd
trigger1 = Time = 0
value = 2, 2

[State 19307, Tux1]
type = PlaySnd
trigger1 = Animelem = 2
value = 2, 1

[State 19307, 1]
type = Explod
triggerall = NumExplod(19307) = 0
trigger1 = Time = 0
anim = 19307
ID = 19307
pos = 0,0
postype = p1
sprpriority = 4
removetime = 300
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19307, 2]
type = DestroySelf
trigger1 = Time = 300

;----------------------------------------------------------------
; Intro vs Docrates
[Statedef 19400]
type = S
ctrl = 0
anim = 19400
velset = 0,0

[State 19400, 0]
type = AssertSpecial
trigger1 = Time = [0,400]
flag = intro

[State 19400, Voix]
type = PlaySnd
trigger1 = Time = 240
value = 194, 1
channel = 0

[State 19400, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 19400, 10]
type = ChangeState
trigger1 = Time = 400
value = 0
ctrl = 0

;-----------------------------------
; Intro vs ennemis de Shun (sauver)
[Statedef 19500]
type = S
anim = 19500

[State 19500, 1]
type = AssertSpecial
trigger1 = Time = [0, 501]
flag = intro

[State 19500, shun]
type = Explod
triggerall = name = "ikkiG" || (name = "ikki" && palno >= 1 && palno <= 9)
trigger1 = AnimElem = 1
anim = 4139
sprpriority = 9
postype = p1
pos = 20,20
removetime = 542
bindtime = -1
ownpal = 1

[State 19500, Projectile]
type = Projectile
trigger1 = Time = 30
trigger2 = Time = 60
trigger3 = Time = 80
attr = S, NP
ignorehitpause = 1
projanim = 3512
projhitanim = -1
offset = -100,-13
velocity = 5,0
damage = 0,0
animtype = light
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
projremove = 0
projremovetime = 20

[State 19500, hit]
type = Explod
trigger1 = Time = 50
trigger2 = Time = 70
trigger3 = Time = 100
anim = 8104
sprpriority = 2
postype = p2
pos = 40,-110
bindtime = 1
ownpal = 1
scale = 0.5,0.5

[State 19500, snd hit]
type = PlaySnd
trigger1 = Time = 50
trigger2 = Time = 70
trigger3 = Time = 100
value = 6, 0

[State 19500, descente du phoenix]
type = Explod
trigger1 = Time = 116  
anim = 1940
sprpriority = -3
postype = p1
pos = -75,-210
bindtime = 1
ownpal = 1
scale = 0.3,0.3

[State 19500, descente du phoenix 2]
type = Explod
trigger1 = Time = 121  
anim = 1940
sprpriority = -3
postype = p1
pos = -75,-180
bindtime = 1
ownpal = 1
scale = 0.3,0.3

[State 19500, descente du phoenix 3]
type = Explod
trigger1 = Time = 124 
anim = 1940
sprpriority = -3
postype = p1
pos = -65,-140
bindtime = 1
ownpal = 1
scale = 0.3,0.3

[State 19500, descente du phoenix 4]
type = Explod
trigger1 = Time = 128  
anim = 1940
sprpriority = -3
postype = p1
pos = -45,-100
bindtime = 1
ownpal = 1
scale = 0.4,0.4

[State 19500, descente du phoenix 5]
type = Explod
trigger1 = Time = 132  
anim = 1940
sprpriority = -3
postype = p1
pos = -25,-60
bindtime = 1
ownpal = 1
scale = 0.5,0.5

[State 19500, descente du phoenix 6]
type = Explod
trigger1 = Time = 135  
anim = 1940
sprpriority = -3
postype = p1
pos = -5,-20
bindtime = 1
ownpal = 1
scale = 0.6,0.6

[State 19500, descente du phoenix 7]
type = Explod
trigger1 = Time = 139  
anim = 1940
sprpriority = -3
postype = p1
pos = 5,0
bindtime = 1
ownpal = 1
scale = 0.7,0.7

[State 19500, explosion]
type = Explod
trigger1 = Time = 140  
anim = 8144
sprpriority = -3
postype = p1
pos = 5,0
bindtime = 1
ownpal = 1
scale = 0.7,0.7

[State 19500, Tux1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 1

[State 19500, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 190, 0

[State 19500, snd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 190, 2

[State 19500, snd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 2, 3

[State 19500, snd]
type = PlaySnd
triggerall = name = "ikkiG" || (name = "ikki" && palno >= 1 && palno <= 9)
trigger1 = AnimElem = 14
value = 195, 2
channel = 0

[State 19500, snd]
type = PlaySnd
triggerall = name = "ikkiE" || name = "ikki" && palno >= 9 && palno <= 12
trigger1 = AnimElem = 14
value = 195, 3
channel = 0

[State 19500, snd]
type = PlaySnd
trigger1 = AnimElem = 29
value = 12, 8

[State 19500, snd]
type = PlaySnd
triggerall = name = "ikkiG" || (name = "ikki" && palno >= 1 && palno <= 9)
trigger1 = Time = 341
value = 3, 0

[State 19500, snd]
type = PlaySnd
triggerall = name = "ikkiG" || (name = "ikki" && palno >= 1 && palno <= 9)
trigger1 = Time = 480
value = 2, 1

[State 19500]
type = PlaySnd
trigger1 = AnimElem = 29
value = 9, 1

[State 19500, shake]
type = EnvShake
trigger1 = AnimElem = 29
time = 40

[State 19500, Phoenix]
type = Explod
trigger1 = AnimElem = 29
anim = 1980
ID = 1980
pos = 0,0
postype = p1
sprpriority = -3
removetime = 112
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19500, Cosmos]
type = Explod
trigger1 = AnimElem = 29
anim = 903
ID = 903
pos = 0,0
postype = p1
sprpriority = -5
removetime = 112
bindtime = -1
ownpal = 1
removeongethit = 1

[State 19500]
type = Explod
triggerall = numexplod(7010) = 0
trigger1 = AnimElem = 29
anim = 7010
ID = 7010
pos = 0,0
bindtime = 1
removetime = 112
scale = 0.9,0.9
sprpriority = -3
ownpal = 1
removeongethit = 1

[State 19500]
type = Explod
triggerall = numexplod(7020) = 0
trigger1 = AnimElem = 29
anim = 7020
ID = 7020
pos = 0,2
bindtime = 1
removetime = 112
scale = 0.9,0.9
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 19500, fire]
type = Explod
triggerall = NumExplod(8123) = 0
trigger1 = AnimElem = 29
anim = 8123
ID = 8123
pos = 0,10
bindtime = -1
removetime = 112
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 19500, big light]
type = Explod
triggerall = numexplod(7030) = 0
trigger1 = AnimElem = 29
anim = 7030
ID = 7030
pos = -10,5
bindtime = -1
removetime = 112
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 19500, big light]
type = Explod
triggerall = numexplod(7031) = 0
trigger1 = AnimElem = 29
anim = 7031
ID = 7031
pos = -10,6
vfacing = -1
bindtime = -1
removetime = 112
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 19500, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 19500, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;------------------------------
; Intro vs Ares
[Statedef 19600]
type = S
ctrl = 0
anim = 19600
velset = 0,0

[State 19600, 1]
type = AssertSpecial
trigger1 = Time = [0,520]
flag = intro

[State 19600, 2]
type = PlaySnd
trigger1 = Time = 330
value = 196, 1

[State 19600, 3]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 19600, 4]
type = Changestate
trigger1 = Time = 520
value = 0
ctrl = 0

;----------------------------------------------------------------
;----------------------------------------------------------------
; Provoking
[Statedef 199]
type = S
movetype = I
physics = S
anim = 199
velset = 0,0
ctrl = 0

[State 199, Tux]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 199, 1A]
type = PlaySnd
triggerall = var(2) = [0,49]
trigger1 = AnimElem = 1
value = 199, 0
channel = 0

[State 199, 1B-1]
type = PlaySnd
triggerall = var(2) = [50,99]
trigger1 = AnimElem = 6
value = 12, 10
channel = 0

[State 199, 1B-2]
type = PlaySnd
triggerall = var(2) = [50,99]
trigger1 = AnimElem = 9
value = 199, 1
channel = 0

[State 199, 2]
type = ChangeState
trigger1 = Time = 190
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Light Punch Far
[Statedef 200]
type = S
movetype = A
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
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = s7000;0
sparkxy = -10, -100;-10, -80
hitsound = s1,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;voix
[State 200, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 12, 2

;vent
[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Médium Punch Far
[Statedef 205]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 205
poweradd = 50
sprpriority = 2

[State 205, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 30, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = s7001 ;0
sparkxy = -10, -90
hitsound = s1,1
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;voix
[State 205, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 1
value = 12, 4

;vent
[State 205, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 1

[State 205, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Médium Punch Close
[Statedef 206]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 206
poweradd = 50
sprpriority = 2

[State 206, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 30, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = s7001 ;0
sparkxy = -10, -70
hitsound = s1,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;voix
[State 206, 2]
type = PlaySnd
triggerall = random <= 500
trigger1 = AnimElem = 3
value = 12, 4

;vent
[State 206, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 206, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Strong Punch
[Statedef 210]
type = S
movetype = A
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

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElem = 2
x = 15
y = 0

[State 210, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 12, 5

[State 210, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Hard
damage = 40,0
guardflag = MA
pausetime = 10,15
sparkno = s7002 ;1
sparkxy = -10,-80
hitsound = s1,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4
envshake.time =  15
envshake.freq = 45
envshake.ampl = 6
envshake.phase = 6

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Punch Close
[Statedef 215]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 215
poweradd = 50
sprpriority = 2

[State 215, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = s7000;0
sparkxy = -10, -90
hitsound = s1,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;voix
[State 215, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 12, 2

;vent
[State 215, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 215, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Strong Punch Close
[Statedef 211]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 211
poweradd = 50
sprpriority = 2

[State 205, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 40, 0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = s7002 ;0
sparkxy = -30, -110
hitsound = s1,1
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -7
airguard.velocity = -4,-.8
air.type = High
air.velocity = -4,-3
air.hittime = 12
envshake.time =  15
envshake.freq = 45
envshake.ampl = 6
envshake.phase = 6

;voix
[State 215, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 1
value = 12, 4

;vent
[State 215, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 215, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Light Kick
[Statedef 220]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 220
poweradd = 50
sprpriority = 2

[State 220, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 12, 18
sparkno = s7000 ;0
sparkxy = -10, -30
hitsound = s1,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;voix
[State 220, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 12, 2

;vent
[State 220, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 220, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Médium Kick
[Statedef 225]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 225
poweradd = 50
sprpriority = 2

;voix
[State 225, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 2
value = 12, 4

;vent
[State 225, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 225, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = medium
damage = 30,0
guardflag = MA
pausetime = 8,8
sparkno = s7001;0 ;1
sparkxy = -10,-50
hitsound = s1,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 225, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Strong Kick
[Statedef 230]
type = S
movetype = A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 230
sprpriority = -1

[State 230, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 230, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
damage = 40, 0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 12
sparkno = s7002;0
sparkxy = -10, -80
hitsound = s1,1
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 25
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time =  15
envshake.freq = 45
envshake.ampl = 6
envshake.phase = 6

;voix
[State 230, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = AnimElem = 2
value = 12, 5

;vent
[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 1

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Light Kick Close
[Statedef 235]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 235
poweradd = 50
sprpriority = 2

[State 235, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = s7000
sparkxy = -10, -76
hitsound = s1,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;voix
[State 235, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem = 2
value = 12, 2

;vent
[State 235, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 0

[State 235, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Medium Kick Close
[Statedef 240]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 240
poweradd = 50
sprpriority = 2

[State 235, 1]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
attr = S, NA
damage = 15, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = s7001;0
sparkxy = -10, -76
hitsound = s1,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

;voix
[State 235, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = AnimElem = 2
value = 12, 4

;vent
[State 235, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
value = 0, 0

[State 235, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
; Stand Hard Kick Close
[Statedef 245]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,-6
ctrl = 0
anim = 245
poweradd = 50
sprpriority = 2

[State 235, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
damage = 40, 0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = s7002;0
sparkxy = -30, -65
hitsound = s1,5
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -8
airguard.velocity = -3,-.8
air.type = High
air.velocity = -3,-3
air.hittime = 12
fall = 1
envshake.time =  15
envshake.freq = 45
envshake.ampl = 6
envshake.phase = 6

;voix
[State 235, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 12, 6

;vent
[State 235, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0, 1

[State 235, 7]
type = ChangeState
trigger1 = AnimElem = 8
value = 50
ctrl = 1

;----------------------------------------------------------------
; Crouch Light Punch
[Statedef 400]
type = C
movetype = A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 400
sprpriority = 2

;vent
[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 400, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 20,0
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 10,11
sparkno = s7000;0
sparkxy = -10,-45
hitsound = s1,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, 3]
type = CtrlSet
trigger1 = Time = 5
value = 1

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;----------------------------------------------------------------
; Crouch Medium Punch
[Statedef 410]
type = C
movetype = A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

;vent
[State 410, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 30,0
animtype  = Medium
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7001;0
sparkxy = -10,-60
hitsound = s1,1
guardsound = 6,0
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

;----------------------------------------------------------------
; Crouch Strong Punch
[Statedef 420]
type = C
movetype = A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 420
sprpriority = 2

;voix
[State 420, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 12, 5

;vent
[State 420, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 2

[State 420, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 40,0
animtype  = hard
hitflag = MAF
guardflag = LA
pausetime = 3,10
sparkno = s7002;0
sparkxy = -10,-100
hitsound = s1,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -3,-4
envshake.time =  15
envshake.freq = 45
envshake.ampl = 6
envshake.phase = 6

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
; Crouch Light Kick
[Statedef 430]
type = C
movetype = A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 430
sprpriority = 2

;voix
[State 430, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 1
value = 12, 2

;vent
[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 20,0
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = LA
pausetime = 10,11
sparkno = s7000;0
sparkxy = 0,0
hitsound = s1,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 430, 3]
type = CtrlSet
trigger1 = Time = 5
value = 1

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;----------------------------------------------------------------
; Crouch Médium Kick
[Statedef 440]
type = C
movetype = A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 440
sprpriority = 2

;voix
[State 440, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 1
value = 12, 4

;vent
[State 440, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 30,0
animtype  = Medium
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7001;0
sparkxy = -10,-15
hitsound = s1,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
; Crouch Strong Kick
[Statedef 450]
type = C
movetype = A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 450
sprpriority = 2

;voix
[State 450, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 1
value = 12, 5

;vent
[State 450, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 450, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 40,0
animtype  = hard
hitflag = MAF
guardflag = LA
pausetime = 12,12
sparkno = s7002;0
sparkxy = -10,-73
hitsound = s1,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4
envshake.time =  15
envshake.freq = 45
envshake.ampl = 6
envshake.phase = 6

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------
; Jump Light Punch
[Statedef 600]
type = A
movetype = A
physics = A
juggle  = 2
poweradd= 50
ctrl = 0
anim = 600
sprpriority = 2

;voix
[State 600, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem = 2
value = 12, 2

;vent
[State 600, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 0

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 20,0
animtype  = Light
guardflag = MA
priority = 3
pausetime = 7,8
sparkno = s7000;0
sparkxy = -10,-100
hitsound = s1,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 600, 3]
type = CtrlSet
trigger1 = Time = 17
value = 1

;----------------------------------------------------------------
; Jump Medium Punch
[Statedef 610]
type = A
movetype = A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 610
sprpriority = 2

;voix
[State 610, 2]
type = PlaySnd
triggerall = random <= 500
trigger1 = AnimElem = 2
value = 12, 4

;vent
[State 610, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 610, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 30,0
guardflag = MA
priority = 4
pausetime = 12,12
sparkno = s7001;0
sparkxy = -10,-55
hitsound = s1,1
guardsound = 6,0
animtype = Medium
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

;----------------------------------------------------------------
; Jump Hard Punch
[Statedef 620]
type = A
movetype = A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 620
sprpriority = 2

;voix
[State 620, 2]
type = PlaySnd
triggerall = random <= 750
trigger1 = AnimElem = 3
value = 12, 5

;vent
[State 620, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 2

[State 620, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
damage = 40,0
guardflag = MA
priority = 4
pausetime = 12,12
sparkno = s7002;0
sparkxy = -10,-55
hitsound = s1,2
guardsound = 6,0
animtype = Hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
envshake.time =  15
envshake.freq = 45
envshake.ampl = 6
envshake.phase = 6

;----------------------------------------------------------------
;----------------------------------------------------------------
;Jump Light Kick
[Statedef 630]
type = A
movetype = A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 630
sprpriority = 2

;voix
[State 630, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem = 3
value = 12, 2

;vent
[State 630, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 0

[State 630, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = A, NA
damage = 20,0
animtype = Light
guardflag = MA
priority = 3
pausetime = 8,8
sparkno = s7000;0
sparkxy = -5,-90
hitsound = s1,0
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3

;----------------------------------------------------------------
;Jump Medium Kick
[Statedef 640]
type = A
movetype = A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 640
sprpriority = 2

;vox
[State 640, 2]
type = PlaySnd
triggerall = random <= 500
trigger1 = AnimElem = 3
value = 12, 4

;vent
[State 640, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 1

[State 640, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
damage = 30,0
guardflag = MA
priority = 4
pausetime = 12,12
sparkno = s7001;0
sparkxy = -10,-95
hitsound = s1,1
guardsound = 6,0
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4

;----------------------------------------------------------------
;Jump Hard Kick
[Statedef 650]
type = A
movetype = A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 650
sprpriority = 2

;voix
[State 650, 2]
type = PlaySnd
triggerall = random <= 750
trigger1 = AnimElem = 3
value = 12, 5

;vent
[State 650, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 2

[State 650, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
damage = 40,0
guardflag = MA
priority = 4
pausetime = 12,12
sparkno = s7002;0
sparkxy = -10,-65
hitsound = s1,2
guardsound = 6,0
animtype = Hard
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4
envshake.time =  15
envshake.freq = 45
envshake.ampl = 6
envshake.phase = 6

;===========================================================================
;Throw - Attempt
;===========================================================================
;sac De Frappe humain
[Statedef 800]
type = S
movetype = A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
poweradd = 50

;===============================
;paramétre spétial
;===============================
;[State 1000 , 2]
;type = Superpause
;trigger1 = Time = 85
;time = 30
;anim = -1
;darken = -1
;pos = 0,0

[State 800, 5]
type = envshake
trigger1 = animelem = 5
trigger2 = animelem = 7
time = 10
ampl = 4

[State 800, 5]
type = envshake
trigger1 = animelem = 9
time = 40
ampl = 8

;===============================
;SND
;===============================
;tenir
[State 800, p2 tenir]
type = PlaySnd
trigger1 = animelem = 2
value = s1, 6

;===============================
;HIT ATTAQUE
;===============================
[State 800, 1]
type = HitDef
trigger1 = Time = 0
attr = S, ST
damage = 22,0
hitflag = M
sparkno = -1
priority = 3, miss  
pausetime = 25,25
p2facing = 1
p2stateno = 810
hitsound = 1100,1
fall.damage = 20

[State 800, 2]
type = ChangeState
triggerall = MoveHit
trigger1 = animtime = 0
value = 801
ctrl = 0

[State 800, 3]
type = ChangeState
triggerall = !MoveHit
trigger1 = animtime = 0
value = 0
ctrl = 1

;===============================
;sac De Frappe humain suit
[Statedef 801]
type = S
movetype = A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 801

;===============================
;paramétre spétial
;===============================
[State 800, TargetLifeAdd]
type = TargetLifeAdd
trigger1  = MoveContact = 1
trigger2 = animelem = 2
trigger3 = animelem = 4
trigger4 = animelem = 6
value = -7
ID = -1

;===============================
;SND
;===============================
;vent
[State 800, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0, 1

;voix
[State 800, p1 voix frapland]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
value = 12, 0

;voix (shiné)
[State 800, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 12, 7

;frape lande
[State 800, 1]
type = PlaySnd
trigger1  = MoveContact = 1
trigger2 = animelem = 2
trigger3 = animelem = 4
value =s1, 2

;frap fin
[State 800, 2]
type = PlaySnd
trigger1 = animelem = 6
value = 1, 5

;===============================
;EXPLOD
;===============================
[State 800, Explod]
type = Explod
trigger1  = MoveContact = 1
trigger2 = animelem = 2
trigger3 = animelem = 4
anim = 7001
;ID =
pos = 0,-70
postype = p2
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

[State 800, Explod]
type = Explod
trigger1  = MoveContact = 1
trigger2 = animelem = 6
anim = 7002
;ID =
pos = 0,-100
postype = p2
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

[State 801, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;==============================================
;Throw p2 lande
;==============================================
;Target p2
[Statedef 810]
type = A
movetype = H 
physics = N
velset = 0,0
ctrl = 0

[State 810, 0]
type = ChangeAnim2
trigger1 = Time = 0
value = 810

[State 810, 2]
type = hitby
trigger1 = 1
value = sca
time = 1

[State 810, 3]
type = Sprpriority
trigger1 = animelem = 5
trigger1 = animelem = 7
value = 2

[State 810, 8]
type = ChangeState
trigger1 = animtime = 0
value = 820
ctrl = 0

;==============================================
;p2 air launch
[Statedef 820]
type = A
movetype = H
physics = N

[State 820, 1]
type = velset
trigger1 = Time = 0
x = 0
y = -5

[State 820, 2]
type = ChangeAnim2
trigger1 = time >= 0
value = 820

[State 820, 3]
type = ChangeState
trigger1 = hitshakeover = 1
value =  821
;==============================================
;p2 aie
[Statedef 821]
type = A
movetype = H
physics = N
velset = -1.7,-11

[State  821 , 1]
type = veladd
trigger1 = time > 0
y = .4

[State  821 , 2]
type = Selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100

;===========================================================================
;  Cosmo Charge
;===========================================================================

;--------------------------------------
; Cosmo Charge - start
[Statedef 900]
type = S
movetype = I
physics = S
anim = 900
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

[State 901]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 8
channel = 0

[State 900, shake]
type = EnvShake
trigger1 = Time = 0
time = 40

[State 900, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

;--------------------------------------
; Cosmo Charge - charging
[Statedef 901]
type = S
physics = S
ctrl = 0
velset = 0,0
anim = 901

[State 901]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

[State 901]
type = PowerAdd
trigger1 = time > 0
value = 5

[State 901, 3]
type = ChangeState
triggerall = time >= 1
triggerall = Var(59) = 0
trigger1 = command != "hold_c"
trigger2 = command != "hold_z"
trigger3 = power >= 3000
value = 902

[State 901, End]
type = ChangeState
triggerall = time >= 1
triggerall = Var(59) = 1
trigger1 = random <= 1
trigger2 = p2movetype = A && random <= 100
trigger3 = p2bodydist X <= 100
trigger4 = power >= 3000
value = 902
ctrl = 1

;===============================
;EXPLOD
;===============================

[State 901, Phoenix]
type = Explod
trigger1 = AnimElem = 1
anim = 1980
ID = 1980
pos = 0,0
postype = p1
sprpriority = -3
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 901, Cosmos]
type = Explod
trigger1 = AnimElem = 3
anim = 903
ID = 903
pos = 0,0
postype = p1
sprpriority = -5
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1

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

[State 901, fire]
type = Explod
triggerall = NumExplod(8123) = 0
trigger1 = AnimElem = 1
anim = 8123
ID = 8123
pos = 0,10
bindtime = -1
removetime = -1
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 901, big light]
type = Explod
triggerall = numexplod(7030) = 0
trigger1 = 1
anim = 7030
ID = 7030
pos = -10,5
bindtime = -1
removetime = -1
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 901, big light]
type = Explod
triggerall = numexplod(7031) = 0
trigger1 = 1
anim = 7031
ID = 7031
pos = -10,6
vfacing = -1
bindtime = -1
removetime = -1
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

;--------------------------------------
; Cosmo Charge - end
[Statedef 902]
type = S
movetype = I
physics = S
anim = 902

[State 902, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 0

[State 902, Var]
type = VarSet
trigger1 = Time = 0
v = 10
value = 0

[State 902, Flash]
type = EnvColor
triggerall = power >= 3000
trigger1 = Time = 0
value = 93,0,127
time = 3

[State 902, Tux]
type = PlaySnd
triggerall = power >= 3000
trigger1 = Time = 0
value = 9, 3

[State 902, 1]
type = EnvShake
triggerall = power >= 3000
trigger1 = time >= 0
time = 64

[State 902,re]
type = RemoveExplod
trigger1 = Time = 0
ID = 7030

[State 902,re]
type = RemoveExplod
trigger1 = Time = 0
ID = 7031

[State 902,re]
type = RemoveExplod
trigger1 = Time = 0
ID = 7010

[State 902,re]
type = RemoveExplod
trigger1 = Time = 0
ID = 7020

[State 902,re]
type = RemoveExplod
trigger1 = Time = 0
ID = 8123

[State 902,re]
type = RemoveExplod
trigger1 = Time = 0
ID = 1980

[State 902, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; 7th Sense
[Statedef 999]
type = S
movetype = I
physics = S
anim = 901
poweradd = 0
velset = 0,0
ctrl = 0

[State 999]
type = Explod
trigger1 = Time = 0
pos = 0,0
postype = p1
anim = 911
sprpriority = -3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0
removetime = 30

[State 999]
type = NotHitBy
trigger1 = 1
value = SCA

[State 999]
type = AssertSpecial
trigger1 = Time = 10
flag = nomusic
persistent = 1

[State 999]
type = SuperPause
trigger1 = Time = 10
time = 20
anim = s70091
pos = 4,-48
darken = 1

[State 999]
type = VarSet
trigger1 = Time = 1
var(8) = 1

[State 999]
type = PalFX
trigger1 = Time = 10
time = 900
add = 5,5,5
sinadd = 40,40,40,3

[State 999]
type = RemoveExplod
trigger1 = 1
ID = 2

[State 999]
type = RemoveExplod
trigger1 = 1
ID = 3

[State 999]
type = Explod
triggerall = numexplod(7030) = 0
trigger1 = animelem = 1
anim = 7030
ID = 7030
pos = 0,5
postype = p1
bindtime = -1
removetime = 50
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 999]
type = Explod
triggerall = numexplod(7031) = 0
trigger1 = animelem = 1
anim = 7031
ID = 7031
pos = 0,6
postype = p1
vfacing = -1
bindtime = -1
removetime = 50
scale = 0.6,0.6
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

[State 999]
type = Explod
trigger1 = animelem = 5
pos = -5,12
postype = p1
anim = 7088
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 999]
type = Explod
trigger1 = animelem = 5
pos = 5,12
postype = p1
anim = 70881
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 999]
type = EnvShake
trigger1 = Time = 5
time = 50

[State 999]
type = PlaySnd
trigger1 = Time = 0
value = 2, 0
channel = 0

[State 999]
type = PlaySnd
trigger1 = Time = 15
value = 5, 2

[State 999]
type = PlaySnd
trigger1 = Time = 15
value = 9, 4

[State 999]
type = LifeAdd
trigger1 = animtime = 15
value = 100

[State 999]
type = VarSet
trigger1 = command = "illusion1"
v = 9
value = 1

[State 999]
type = ChangeState
triggerall = Var(9) = 0
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 999]
type = ChangeState
triggerall = Var(9) = 1
trigger1 = animtime = 0
value = 3030
ctrl = 0

;===========================================================================
;feu du phénix
;===========================================================================
[Statedef 1000]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 100

;voix
[State 1000, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = AnimElem = 1
value = 12, 5

;flam
[State 1000, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = s5, 1

[State 1000, 3]
type = Projectile
trigger1 = AnimElem = 1
projID = 1000
projanim = 8507
projhitanim = 8507
projpriority = 1
projshadow = -1
projremovetime = 33
offset = -20,-80
velocity = 0,0
attr = S, SP
damage = 80,8
animtype = Medium
guardflag = MA
supermovetime = 900
pausemovetime = 900
hitflag = MAFD
pausetime = 10,10
hitsound = -1
guardsound = -1
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 7
ground.hittime  = 7
ground.velocity = -6
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
Palfx.time = 30
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
air.fall = 1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 1000, 2]
type = Explod
triggerall = NumExplod(8508) = 0
trigger1 = projhit1000 = 1
postype = p2
pos = -15,-30
anim = 8508
ID = 8508
sprpriority = 5
ownpal = 1
bindtime = -1
removetime = 20
ignorehitpause = 1
persistent = 1
scale = 0.8,0.8

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;l'envole du phénix
;===========================================================================
;Light fly away phoenix
[Statedef 1030]
type = S
movetype = A
physics = S
poweradd= 100
ctrl = 0
velset = 0,0
anim = 47
sprpriority = 2

;voix
[State 1030, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem = 2
value = 12, 9

[State 1030, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1031

;---------------------------------------------------------------------------
[Statedef 1031]
type = A
movetype = A
physics = A
juggle  = 8
ctrl = 0
anim = 1020
sprpriority = 2
velset = 1.4,-8.4

[State 1031, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S5, 2
;volume = 0
;channel = -1

[State 1031, 1]
type = HitDef
trigger1 = Time = 0
trigger2 = movecontact = 8
attr = A, SA
animtype = Up
damage = 30,4
guardflag = MA
priority = 4
pausetime = 12,12
sparkno = s7002 ;0;s8146
sparkxy = -10,-100
guard.sparkno = s7000
hitsound = S1,2
guardsound = s1,0
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -.1,-13.5
guard.velocity = -7
air.velocity = -.1,-13.5
airguard.velocity = -3,-4
fall = 1
fall.damage = 20
fall.recover = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20

[State 1031]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;===========================================================================
; Médium fly away phoenix
[Statedef 1032]
type = S
movetype = A
physics = S
poweradd= 100
ctrl = 0
velset = 0,0
anim = 47
sprpriority = 2

;voix
[State 1032, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = AnimElem = 2
value = 12, 9

[State 1032, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1033

;---------------------------------------------------------------------------
[Statedef 1033]
type = A
movetype = A
physics = A
juggle  = 8
ctrl = 0
anim = 1020
sprpriority = 2
velset = 1.4,-8.4

[State 1031, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S5, 2
;volume = 0
;channel = -1

[State 1033, 1]
type = HitDef
trigger1 = Time = 0
trigger2 = movecontact = 5
attr = A, SA
animtype = Up
damage = 22,3
guardflag = MA
priority = 4
pausetime = 12,12
sparkno = s7002 ;0;s8146
sparkxy = -10,-100
guard.sparkno = s7000
hitsound = S1,2
guardsound = s1,0
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -.1,-13.5
guard.velocity = -7
air.velocity = -.1,-13.5
airguard.velocity = -3,-4
fall = 1
fall.damage = 20
fall.recover = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20

[State 1033]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;===========================================================================
; Strong fly away phoenix
[Statedef 1034]
type = S
movetype = A
physics = S
poweradd= 100
ctrl = 0
velset = 0,0
anim = 47
sprpriority = 2

;voix
[State 1034, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = AnimElem = 2
value = 12, 9

[State 1034, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1035

;---------------------------------------------------------------------------
[Statedef 1035]
type = A
movetype = A
physics = A
juggle  = 8
ctrl = 0
anim = 1020
sprpriority = 2
velset = 1.4,-8.4

[State 1031, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S5, 2
;volume = 0
;channel = -1

[State 1035, 1]
type = HitDef
trigger1 = Time = 0
trigger2 = movecontact = 3
attr = A, SA
animtype = Up
damage = 14,2
guardflag = MA
priority = 4
pausetime = 12,12
sparkno = s7002 ;0;s8146
sparkxy = -10,-100
guard.sparkno = s7000
hitsound = S1,2
guardsound = s1,0
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -.1,-13.5
guard.velocity = -7
air.velocity = -.1,-13.5
airguard.velocity = -3,-4
fall = 1
fall.damage = 20
fall.recover = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20

[State 1035]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;===========================================================================
; Plongeon du phénix
;===========================================================================
;Light Plongeon du phénix
[Statedef 1040]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1040
velset = 0,0
juggle = 7
poweradd = 100

;voix
[State 1040, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 0
value = 12, 3

;flam
[State 1040, 1]
type = PlaySnd
trigger1 = Time = 0
value = S5, 1

;traverser P2
[State 1040, PushOff]
type = PlayerPush
trigger1 = Anim = 1040
value = 0

;vel feux
[State 1040, Vel]
type = VelSet
trigger1 = Anim = 1040
trigger1 = AnimElem = 6
X = 7
Y = 7

[State 1040, FEUX]
type = HitDef
triggerall = Anim = 1040
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
animtype = Medium
damage = 80,8
pausetime = 8,12
guard.pausetime = 12,12
sparkno = s7002 ;0;s8146
sparkxy = 0,-10
guard.sparkno = s7000
hitsound = s1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 1

;Axe de  fin para pore au sol
[State 1040, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1041

;===========================================================================
; atérisage du Plongeon du phénix
[Statedef 1041]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1053
velset = 0,0
juggle = 7

[State 1053,1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1041, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
; Medium Plongeon du phénix
[Statedef 1042]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1040
velset = 0,0
juggle = 7
poweradd = 100

;voix
[State 1042, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 0
value = 12, 3

;flam
[State 1042, 1]
type = PlaySnd
trigger1 = Time = 0
value = S5, 1

;traverser P2
[State 1042, PushOff]
type = PlayerPush
trigger1 = Anim = 1040
value = 0

;vel feux
[State 1042, Vel]
type = VelSet
trigger1 = Anim = 1040
trigger1 = AnimElem = 6
X = 7
Y = 7

[State 1042, FEUX]
type = HitDef
triggerall = Anim = 1040
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
animtype = Medium
damage = 85,8
pausetime = 8,12
guard.pausetime = 12,12
sparkno = s7002 ;0;s8146
guard.sparkno = s7000
sparkxy = 0,-10
hitsound = s1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 1

;Axe de  fin para pore au sol
[State 1042, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1041

;===========================================================================
; Strong Plongeon du phénix
[Statedef 1043]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1040
velset = 0,0
juggle = 7
poweradd = 100

;voix
[State 1043, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 0
value = 12, 3

;flam
[State 1043, 1]
type = PlaySnd
trigger1 = Time = 0
value = S5, 1

;traverser P2
[State 1043, PushOff]
type = PlayerPush
trigger1 = Anim = 1040
value = 0

;vel feux
[State 1043, Vel]
type = VelSet
trigger1 = Anim = 1040
trigger1 = AnimElem = 6
X = 7
Y = 7

[State 1043, FEUX]
type = HitDef
triggerall = Anim = 1040
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
animtype = Medium
damage = 90,9
pausetime = 8,12
guard.pausetime = 12,12
sparkno = s7002 ;0;s8146
guard.sparkno = s7000
sparkxy = 0,-10
hitsound = s1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 1

;Axe de  fin para pore au sol
[State 1043, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1041
;===========================================================================
; les Serres du phénix
;===========================================================================

; les Serres du phénix Light
[Statedef 1050]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1050
velset = 0,0
juggle = 7
poweradd = 100

;kik snd
[State 1050, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem = 1
value = 12, 7
channel = -1

[State 1050, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

;traverser P2
[State 1050, PushOff]
type = PlayerPush
trigger1 = Anim = 1050
value = 0

;vel kik
[State 1050, Vel]
type = VelSet
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
X = 9
Y = 9

[State 1050, flach kik]
type = Explod
trigger1 = AnimElem = 4
anim = 8124
ID = 8124
pos = 85,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 1050,kik]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
animtype = Medium
damage = 80,8
pausetime = 15,15
guard.pausetime = 12,12
sparkno = s7001 ;0;s8146
guard.sparkno = s7000
sparkxy = 0,-25
hitsound = S1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1

;Axe de  fin para pore au sol
[State 1050, end axe]
type = ChangeState
trigger1 = MoveContact= 1
;trigger2 = Pos Y >= 3
value = 1055

;Axe de  fin para pore au sol
[State 1050, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1053
;===========================================================================

;médium les Serres du phénix
[Statedef 1051]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1050
velset = 0,0
juggle = 7
poweradd = 100

;kik snd
[State 1051, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem = 1
value = 12, 7
channel = -1

[State 1051, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

;traverser P2
[State 1051, PushOff]
type = PlayerPush
trigger1 = Anim = 1050
value = 0

;vel kik
[State 1051, Vel]
type = VelSet
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
X = 9
Y = 9



[State 1051, flach kik]
type = Explod
trigger1 = AnimElem = 4
anim = 8124
ID = 8124
pos = 85,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 1051, kik]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
animtype = Medium
damage = 85,8
pausetime = 20,20
guard.pausetime = 12,12
sparkno = s7001 ;0;s8146
guard.sparkno = s7000
sparkxy = 0,-25
hitsound = S1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1


;;Axe de  fin para pore au sol
[State 1051, end axe]
type = ChangeState
trigger1 = MoveContact= 1
;trigger2 = Pos Y >= 3
value = 1055

;Axe de  fin para pore au sol
[State 1051, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1053

;===========================================================================
; hard les Serres du phénix
[Statedef 1052]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1050
velset = 0,0
juggle = 7
poweradd = 100

;kik snd
[State 1052, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = AnimElem = 1
value = 12, 7
channel = -1

[State 1052, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

;traverser P2
[State 1052, PushOff]
type = PlayerPush
trigger1 = Anim = 1050
value = 0

;vel kik
[State 1052, Vel]
type = VelSet
trigger1 = Anim = 1050
trigger1 = AnimElem = 2
X = 9
Y = 9

[State 1052, flach kik]
type = Explod
trigger1 = AnimElem = 4
anim = 8124
ID = 8124
pos = 85,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 1051, kik]
type = HitDef
triggerall = Anim = 1050
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
animtype = Medium
damage = 90,9
pausetime = 25,25
guard.pausetime = 12,12
sparkno = s7001 ;0;s8146
guard.sparkno = s7000
sparkxy = 0,-25
hitsound = S1,2
guardsound = s1,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,5
airguard.velocity = -3,-3
air.velocity = -5,5
down.velocity = 0,0
fall = 1

;Axe de  fin para pore au sol
[State 1052, end axe]
type = ChangeState
trigger1 = MoveContact= 1
;trigger2 = Pos Y >= 3
value = 1055

;Axe de  fin para pore au sol
[State 1052, end axe]
type = ChangeState
;trigger1 = AnimTime = 0
trigger1 = Pos Y >= 3
value = 1053

;===========================================================================
; atérire
[Statedef 1053]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1053
velset = 0,0
juggle = 7

[State 1053,1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1053, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
; rebon sur p2
[Statedef 1055]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1055
velset = 0,0
juggle = 7

[State 1055,1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1055, 1]
type = VelSet
trigger1 = Anim = 1055
trigger1 = AnimElem = 1
x = -10
y = -7

[State 1055, 1]
type = VelSet
trigger1 = Anim = 1055
trigger1 = AnimElem = 6
x = 0
y = 0

[State 1055, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;===========================================================================
; Multi Punch
;===========================================================================
; Multi Punch
[Statedef 1061]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1060
sprpriority = 2
poweradd = 100

[State 1061, 1]
type = HitDef
trigger1 = Anim = 1060
attr = S, SA
damage = 9, 1
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3, 3
sparkno = s7000 ;0;s8146
sparkxy = -10, -90
guard.sparkno = s7000
hitsound = s1,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4.4,-3
air.hittime = 12

[State 1061, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 1060, 7]
type = ChangeState
trigger1 = Time = 30
value = 0
ctrl = 1
;===========================================================================
; Stand Wings
;===========================================================================
;Light Stand Wings
[Statedef 1070]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1070
sprpriority = 2
poweradd = 100

[State 1070]
type = PlaySnd
trigger1 = Time = 0
value = 1070, 0

;voix
[State 1070, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 0
value = 12, 5

[State 1070, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
damage = 15, 1
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
guard.sparkno = s7000
sparkno = 0
sparkxy = -10, -76
hitsound = 5, 0
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12


[State 1070, Wings]
type = Projectile
trigger1 = Time = 13
projanim = 3412
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =S8104;s8146
sparkxy = 45,-125 ;100
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 6,0
supermovetime = 900
pausemovetime = 900
attr = S, SP
damage = 25,2
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15 
envshake.freq = 10
envshake.ampl = 5  
envshake.phase = 5

[State 1070, Wings]
type = Projectile
trigger1 = Time = 14
projanim = 3413
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =S8104;s8146
sparkxy = 45,-115 ;or-80
guard.sparkno = s7000
velocity = 7,0
supermovetime = 900
pausemovetime = 900
attr = S, SP
damage = 25,2
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound   =s1,3 ;5,0
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15 
envshake.freq = 10
envshake.ampl = 5  
envshake.phase = 5

[State 1070, 1]
type = PlaySnd
trigger1 = Time = 1
value = 5, 10

[State 1070, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==============================================================================
; Médium Stand Wings
[Statedef 1071]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1070
sprpriority = 2
poweradd = 100

[State 1071]
type = PlaySnd
trigger1 = Time = 0
value = 1070, 0

;voix
[State 1071, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 0
value = 12, 5

[State 1071, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
damage = 20, 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
sparkxy = -10, -76
guard.sparkno = s7000
hitsound = 5, 0
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12


[State 1071, Wings]
type = Projectile
trigger1 = Time = 12
projanim = 3411
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =S8104;s8146
sparkxy = 45,-135 ;or120
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 7,0
supermovetime = 900
pausemovetime = 900
attr = S, SP
damage = 20,2
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1071, Wings]
type = Projectile
trigger1 = Time = 13
projanim = 3412
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =S8104;s8146
sparkxy = 45,-125;or100
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 8,0
supermovetime = 900
pausemovetime = 900
attr = S, SP
damage = 20,2
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1071, Wings]
type = Projectile
trigger1 = Time = 14
projanim = 3413
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =S8104;s8146
sparkxy = 45,115;-80
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 8,0
supermovetime = 900
pausemovetime = 900
attr = S, SP
damage = 20,2
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1071, 1]
type = PlaySnd
trigger1 = Time = 1
value = 5, 10

[State 1071, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==============================================================================
; Strong Stand Wings
[Statedef 1072]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1070
sprpriority = 2
poweradd = 100

[State 1072]
type = PlaySnd
trigger1 = Time = 0
value = 1070, 0

;voix
[State 1072, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 0
value = 12, 5

[State 1072, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
damage = 20, 2
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
guard.sparkno = s7000
sparkxy = -10, -76
hitsound = 5, 0
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 1072, Wings]
type = Projectile
trigger1 = Time = 11
projanim = 3410
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =S8104;s8146
sparkxy = 45,-155 ;or140
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 5,0
supermovetime = 900
pausemovetime = 900
attr = S, SP
damage = 14,1
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1072, Wings]
type = Projectile
trigger1 = Time = 12
projanim = 3411
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =S8104;s8146
sparkxy = 45,-145 ;or130
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 6,0
supermovetime = 900
pausemovetime = 900
attr = S, SP
damage = 14,1
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1072, Wings]
type = Projectile
trigger1 = Time = 13
projanim = 3412
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =S8104;s8146
sparkxy = 45,-135 ;or120
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 7,0
supermovetime = 900
pausemovetime = 900
attr = S, SP
damage = 14,1
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1072, Wings]
type = Projectile
trigger1 = Time = 14
projanim = 3413
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =S8104;s8146
sparkxy = 45,-125;or100
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 8,0
supermovetime = 900
pausemovetime = 900
attr = S, SP
damage = 14,1
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1072, Wings]
type = Projectile
trigger1 = Time = 15
projanim = 3414
projhits = 1
projhitanim = -1
offset = 0,0
sparkno =S8104;s8146
sparkxy =  45,115;-80
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 9,0
supermovetime = 900
pausemovetime = 900
attr = S, SP
damage = 14,1
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1072, 1]
type = PlaySnd
trigger1 = Time = 1
value = 5, 10

[State 1072, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;=============================================================================
;explosion du phénix
;=============================================================================
[Statedef 1080]
type = S
movetype = A
physics = N
anim = 1080
velset = 0,0
poweradd = 100
juggle = 0
ctrl = 0

[State 1080, 3]
type = EnvShake
trigger1 = Time = 0
time = 50

[State 1080]
type = ChangeState
trigger1 = AnimTime = 0
value = 1081
ctrl = 1

;----------------------------------------------------------------
[Statedef 1081]
type = S
movetype = A
physics = N
anim = 1081
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 1081, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 190, 2

[State 1081, Snd]
type = PlaySnd
trigger1 = Time = 10
value = 5, 8

[State 1081, EXPLOS Cosmos]
type = Explod
;triggerall = NumExplod(2002) = 0
trigger1 = AnimElem = 1
anim = 8108
ID = 2002
pos = 0,0
postype = p1
sprpriority = 2
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = 700

[State 1081, Tux]
type = Explod
trigger1 = AnimElem = 1
anim = 1082
ID = 1082
pos = 20,-10
postype = p1
sprpriority = 1
removetime = 42
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = 42

[State 1081, 3]
type = EnvShake
trigger1 = Time = 0
time = 50

[State 1081, 1]
type = Projectile
triggerall = Anim = 1081
trigger1 = AnimElem = 1
;trigger1 = Time%20 = 0
projID = 8107
projanim = 8107
projhits = 20
projhitanim = 80110
projmisstime = 5
projpriority = 1
projremove = 1
projremovetime = 120
projedgebound = 120
attr = S, SP
guardflag = MA
guard.velocity = 2
guard.hittime = 3
guard.slidetime = 5
guard.pausetime = 3,3
hitflag = MAFD
animtype = Up
damage = 26,3
postype = p1
offset = 0,35
velocity = 0,-10
pausetime = 3,9
supermovetime = 140
hitsound = s1,2
guardsound = 6,0
sparkno = -1
sparkxy = 0,0
ground.type = Low
ground.cornerpush.veloff = 0
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = 0,-10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;air.animtype = Back
air.velocity = -10,-10
;air.juggle = 0
air.fall = 1
down.velocity = -4,-3.5
down.hittime = 15
down.bounce = 0
fall = 1
fall.damage = 10

[State 1081]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==============================================================================
; Trencdimention
;==============================================================================
; Trencdimention1
[Statedef 1084]
type = S
movetype = A
physics = N
anim = 1084
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 1084, 1]
type = PlaySnd
trigger1 = Time = 1
value = 12, 12

[State 1084, 1]
type = PlaySnd
trigger1 = Time = 1
value = S180, 1

[State 1084]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================
;Trencdimention2
;===========================================================
[Statedef 1085]
type = S
movetype = A
physics = N
anim = 1085
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 1084, 1]
type = PlaySnd
trigger1 = Time = 1
value = 12, 12

[State 1084, 1]
type = PlaySnd
trigger1 = Time = 1
value = S180, 1

[State 1085]
type = Explod
trigger1 = AnimElem = 10
anim = 8506
pos = 200,-30
postype = p1
sprpriority = -2
removetime = 18
bindtime = -1
ownpal = 1
removeongethit = 1

[State 1084]
type = ChangeState
trigger1 = AnimTime = 0
value = 1086
ctrl = 0
;==========================
;suit
;=========================
[Statedef 1086]
type = S
movetype = A
physics = N
anim = 1086
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = 290
y = 0

[State 1084]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
; Air Wings
;===========================================================================
;Light air Wings
[Statedef 1090]
type = A
movetype = A
physics = N
anim = 1090
velset = 0,0
poweradd = 100
juggle = 0
ctrl = 0

[State 1090, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1090, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 2, 1

;voix
[State 1090, 1]
type = PlaySnd
triggerall = random <= 250
trigger1 = Time = 0
value = 12, 5

[State 1090, Snd]
type = PlaySnd
trigger1 = Time = 15
value = 5, 10

[State 1090, Wings]
type = Projectile
trigger1 = AnimElem = 3
projanim = 3511
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8104
sparkxy = 45,-80
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 5,2
supermovetime = 900
pausemovetime = 900
attr = A, SP
damage = 25,2
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15 
envshake.freq = 10
envshake.ampl = 5  
envshake.phase = 5

[State 1090, Wings]
type = Projectile
trigger1 = AnimElem = 3
projanim = 3512
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8104
sparkxy = 90,-80
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 6,3
supermovetime = 900
pausemovetime = 900
attr = A, SP
damage = 25,2
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

;[State 3502]
;type = ChangeState
;trigger1 = Time = 20
;value = 50
;ctrl = 1

[State 1090]
type = ChangeState
trigger1 = AnimTime = 0
value = 105
ctrl = 1

;===========================================================================
;Médium air Wings
[Statedef 1091]
type = A
movetype = A
physics = N
anim = 1090
velset = 0,0
poweradd = 100
juggle = 0
ctrl = 0

[State 1091, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1091, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 2, 1

;voix
[State 1091, 1]
type = PlaySnd
triggerall = random <= 500
trigger1 = Time = 0
value = 12, 5

[State 1091, Snd]
type = PlaySnd
trigger1 = Time = 15
value = 5, 10

[State 1091, Wings]
type = Projectile
trigger1 = AnimElem = 3
projanim = 3511
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8104
sparkxy = 45,-80
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 5,2
supermovetime = 900
pausemovetime = 900
attr = A, SP
damage = 20,2
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1091, Wings]
type = Projectile
trigger1 = AnimElem = 3
projanim = 3512
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8104
sparkxy = 90,-80
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 6,3
supermovetime = 900
pausemovetime = 900
attr = A, SP
damage = 20,2
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1091, Wings]
type = Projectile
trigger1 = AnimElem = 3
projanim = 3513
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8104
sparkxy = 90,-50
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 7,4
supermovetime = 900
pausemovetime = 900
attr = A, SP
damage = 20,2
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

;[State 3502]
;type = ChangeState
;trigger1 = Time = 20
;value = 50
;ctrl = 1

[State 1091]
type = ChangeState
trigger1 = AnimTime = 0
value = 105
ctrl = 1

;===========================================================================
;Strong air Wings
[Statedef 1092]
type = A
movetype = A
physics = N
anim = 1090
velset = 0,0
poweradd = 100
juggle = 5
ctrl = 0

[State 1092, Turn]
type = Turn
trigger1 = P2Dist X < 0

[State 1092, Snd]
type = PlaySnd
trigger1 = Time = 0
value = 2, 1

;voix
[State 1092, 1]
type = PlaySnd
triggerall = random <= 750
trigger1 = Time = 0
value = 12, 5

[State 1092, Snd]
type = PlaySnd
trigger1 = Time = 15
value = 5, 10

[State 1092, Wings]
type = Projectile
trigger1 = AnimElem = 3
projanim = 3510
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8104
sparkxy = 45,-90
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 4,1
supermovetime = 900
pausemovetime = 900
attr = A, SP
damage = 14,1
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1092, Wings]
type = Projectile
trigger1 = AnimElem = 3
projanim = 3511
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8104
sparkxy = 90,-70
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 5,2
supermovetime = 900
pausemovetime = 900
attr = A, SP
damage = 14,1
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1092, Wings]
type = Projectile
trigger1 = AnimElem = 3
projanim = 3512
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8104
sparkxy = 90,-40
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 6,3
supermovetime = 900
pausemovetime = 900
attr = A, SP
damage = 14,1
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1092, Wings]
type = Projectile
trigger1 = AnimElem = 3
projanim = 3513
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8104
sparkxy = 90,-20
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 7,4
supermovetime = 900
pausemovetime = 900
attr = A, SP
damage = 14,1
animtype = Hard
guardflag = MA
pausetime = 0,9
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 1092, Wings]
type = Projectile
trigger1 = AnimElem = 3
projanim = 3514
projhits = 1
projhitanim = -1
offset = 0,0
sparkno = S8104
sparkxy = 90,-10
guard.sparkno = s7000
hitsound   =s1,3 ;5,0
velocity = 8,5
supermovetime = 900
pausemovetime = 900
attr = A, SP
damage = 14,1
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound = 5,0
guardsound = 6,0
ground.type = low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -1,0
air.velocity = -1,0
air.animtype = light
air.juggle = 3
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

;[State 1092]
;type = ChangeState
;trigger1 = Time = 20
;value = 50
;ctrl = 1

[State 1092]
type = ChangeState
trigger1 = AnimTime = 0
value = 105
ctrl = 1

;===========================================================================
;===========================================================================
;auto garde (désactivé)
;===========================================================================
;===========================================================================
; Super Guard 1
[Statedef 1100]
type = S
movetype = A
physics = S
juggle  = 2
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = 2

[State 1100, nohit]
type = VarSet
trigger1 = Time = 0
value = 1
v = 23

[State 1100, rev]
type = ReversalDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3
reversal.attr = SAC,NA,SA,HA,SP
pausetime = 0,0
p1stateno = 1101

[State 1100, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==============================================

[Statedef 1101]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1101
poweradd = 0
ctrl = 0

[State 1101,env]
type = EnvColor
trigger1 = Time = 0
value = 255,255,255
time = 3

[State 1101, nohit]
type = NotHitBy
trigger1 = Time = 0
value = SCA,NA,SA,HA
time = 1

[State 1101, nohit]
type = poweradd
trigger1 = Time = 0
value = 250

[State 1101,fire]
type = Explod
triggerall = NumExplod(1990) = 0
triggerall = stateno = 1101
trigger1 = Time = 20
anim = 1990
ID = 1990
pos = 0,0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 1101, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S,SA
animtype  = Hard
hitflag = MA
guardflag = MA 
animtype = Hard
damage = 80,0
sparkno = 1
guard.sparkno = -1
sparkxy = 0,-100
hitsound = s1000,0
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 1
fall.recover = 0
fall.damage = 75

[State 1101, 6]
type = ChangeState
trigger1 = Time = 100
value = 1102
ctrl = 0

;==============================================

[Statedef 1102]
type = S
movetype = A
physics = S
velset = -12,0
anim = 1101
poweradd = 0
ctrl = 0

[State 1102, nohit]
type = VarSet
trigger1 = Time = 0
value = 0
v = 23

[State 1102, 6]
type = ChangeState
trigger1 = Time = 2
value = 0
ctrl = 1

;===========================================================================
;auto garde (désactivé)
;===========================================================================
; Super Guard 2
[Statedef 1200]
type = S
movetype = A
physics = S
juggle  = 2
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200, nohit]
type = VarSet
trigger1 = Time = 0
value = 1
v = 23

[State 1200, rev]
type = ReversalDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3
reversal.attr = SAC,NA,SA,HA,SP
pausetime = 0,0
p1stateno = 1201

[State 1200, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;==============================================

[Statedef 1201]
type = S
movetype = A
physics = S
velset = 0,0
anim = 1201
poweradd = 0
ctrl = 0

[State 1201,env]
type = EnvColor
trigger1 = Time = 0
value = 255,255,255
time = 3

[State 1201, nohit]
type = NotHitBy
trigger1 = Time = 0
value = SCA,NA,SA,HA
time = 1

[State 1201, nohit]
type = poweradd
trigger1 = Time = 0
value = 250

[State 1201, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S,SA
animtype  = Hard
hitflag = MA
guardflag = MA 
animtype = Hard
damage = 80,0
sparkno = 1
guard.sparkno = -1
sparkxy = 0,-80
hitsound = s1000,0
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime = 24
ground.velocity = -7,-5
air.velocity = -7,-5
fall = 1
fall.recover = 0
fall.damage = 75

[State 1201, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 1202
ctrl = 0

;==============================================

[Statedef 1202]
type = S
movetype = A
physics = S
velset = -12,0
anim = 1201
poweradd = 0
ctrl = 0

[State 1202, nohit]
type = VarSet
trigger1 = Time = 0
value = 0
v = 23

[State 1202, 6]
type = ChangeState
trigger1 = Time = 2
value = 0
ctrl = 1

;===========================================================================
;Light Hô yoku ten shô
;===========================================================================
;Hô yoku ten shô
[Statedef 3000]
type = S
movetype = A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 3000
poweradd = -2000
;===============================
;SND
;===============================
[State  3000 , Cri de phénix]
type = PlaySnd
trigger1 = animelem = 1
value = 190, 0

[State  3000 , Hô yoku ten shô]
type = PlaySnd
trigger1 = animelem = 1
value = 3000, 0
channel = 0

[State  3000 , son flam]
type = PlaySnd
triggerall  = anim = 3000
trigger1 = animelem = 13
;loop = 1
value = S5, 3
;===============================
;paramétre spétial
;===============================
;(SuperPause)
[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 1
anim = 3000
Time = 100
movetime = 100
darken = 5
;===============================
;EXPLOD
;===============================
[State 3000, petit explosion de magma]
type = Explod
trigger1 = animelem = 1
anim = 8038
ID = 8038
pos = 0,0
postype = p1
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
supermovetime = 140
;===============================
[State 3000,explosion demagma 2]
type = Explod
trigger1 = animelem = 1
anim = 8100
ID = 8100
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
supermovetime = 140
;===============================
[State 3000, phoenix cosmo gauche]
type = Explod
trigger1 = animelem = 1
trigger1 = Pos X < 0
anim = 8032
ID = 8032
pos = -320,0
postype = front
sprpriority = -1
removetime = 126
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermovetime = 140
removeongethit = 1
;===============================
[State 3000, phoenix cosmo droit]
type = Explod
trigger1 = animelem = 1
trigger1 = Pos X > 0
anim = 8032
ID = 8032
pos = 0,0
postype = back
sprpriority = -1
removetime = 126
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermovetime = 140
removeongethit = 1
;===============================
[State 3000, atmosphere Flamme]
type = Explod
trigger1 = animelem = 7
anim = 4107
pos = -320,0
postype = right
sprpriority = 9998
removetime = 220
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.3, 1.3
supermovetime = 140
removeongethit = 1
;===============================
[State 3000  fon]
type = Explod
trigger1 = animelem = 1; anim = 3000
anim = 8025
pos = -187,65
postype = right ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = 280
scale = 1.3, 1.3
sprpriority = 0
ownpal = 1
removeongethit = 1
supermovetime = 140
;===============================
[State 3000,tunell de feux]
type = Explod
trigger1 = animelem = 13
anim = 8080
ID = 8080
pos = 90,0
postype = p1
sprpriority = 5
removetime = 180
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermovetime = 140
removeongethit = 1
;===============================
;HIT ATTAQUE
;===============================
;(porogectil°°°
[State 3000, 1]
type = Projectile
triggerall = Anim = 3000
triggerall = time >= 110 && time <= 260
trigger1 = (time%5) = 0
projID = 8010
projanim = 8000
projhits = 20
projhitanim = -1
projmisstime = 5
projpriority = 1
projremove = 1
projremovetime = 5
projedgebound = 500
attr = S, HP
guardflag = MA
guard.velocity = -2
guard.hittime = 3
guard.slidetime = 5
guard.pausetime = 3,3
hitflag = MAFD
animtype = hard
damage = 12,1
postype = p1
;pos = 150,-35
offset = 125,-35
velocity = 0,0
pausetime = 3,9
supermovetime = 140
hitsound = s5,6
guardsound = s5,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
ground.type = Low
ground.cornerpush.veloff = 0
ground.slidetime = 0
ground.hittime  = 1
ground.velocity = -10,0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
;air.animtype = Back
air.velocity = -10,0
;air.juggle = 0
air.fall = 1
down.velocity = -4,-3.5
down.hittime = 15
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 1

[State 3000, Var]
type = VarSet
triggerall = Time <= 260
trigger1 = projhit8010 = 1
v = 11
value = 1

[State 3000, Exp]
type = Explod
triggerall = NumExplod(4310) = 0
triggerall = Time = 280
trigger1 = Var(11) > 0
postype = p2
pos = 0,-30
anim = 4310
ID = 4310
sprpriority = 10
ownpal = 1
bindtime = -1
removetime = 20
ignorehitpause = 1
persistent = 1

[State 3000, Var]
type = VarSet
triggerall = Var(11) > 0
trigger1 = Time = 280
v = 11
value = 0

;===============================
;(fin)
[State 3000 , change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;Strong Hô yoku ten shô
;===========================================================================
;Hô yoku ten shô
[Statedef 3002]
type = S
movetype = A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 3001
poweradd = -3000

;===============================
;SND
;===============================
[State 3002, Snd]
type = PlaySnd
trigger1 = animelem = 3
value = 3000, 6

;===============================
;paramétre spétial
;===============================

;SuperPause
[State 3002, SuperPause]
type = SuperPause
trigger1 = Time = 0
anim = -1
time = 270
movetime = 270
darken = 5

[State 3002, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 410
mul = 90,90,90
add = 5,5,5
invertall = 0

;===============================
;SND
;===============================
[State 3002, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 13
value = S0, 1

[State 3002, 1]
type = PlaySnd
trigger1 = AnimElem = 15
value = S0, 2

[State 3002, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S3030,5

[State 3002, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S4300, 2

;===============================
;EXPLOD
;===============================

[State 3002,explosion demagma 2]
type = Explod
trigger1 = animelem = 1
anim = 8100
ID = 8100
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
supermovetime = 140

[State 3002, oiseau BG droite]
type = Explod
trigger1 = AnimElem = 4
pos = 0,0
anim = 8032
ID = 8022
postype = back
facing = 1
vfacing = 1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 384
supermovetime = 700

[State 3002, font de flamme droit]
type = Explod
trigger1 = AnimElem = 4
pos = 320,0
anim = 8031
ID = 8022
postype = left
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
removetime = 384
supermovetime = 700

[State 3002, mure de flamme droit]
type = Explod
trigger1 = AnimElem = 4
pos = -150,230
anim = 8033
ID = 8022
postype = back
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 384
supermovetime = 700

[State 3002, foudre]
type = Explod
trigger1 = AnimElem = 13
pos = -50,-200
anim = 8034
ID = 8022
postype = p1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 281
supermovetime = 700

[State 3002, VENT]
type = Projectile
trigger1 = animelem = 15
projanim = 8036
projhits = 8
projID = 8010
projscale =  1.5,1.5
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound = 120
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = S, HP
damage = 6
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 3,5
hitsound = s5,6
guardsound = s5,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1,0
air.animtype = Back
air.velocity = -1,0
air.juggle = 1
air.fall = 0
air.hittime = 5
down.velocity = -1,0
down.hittime = 5
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 0
supermovetime = 700

[State 3002, VENT]
type = Projectile
trigger1 = animelem = 24
projanim = 8036
projhits = 8
projID = 8010
projscale =  1.5,1.5
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound = 120
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = S, HP
damage = 6
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 3,20
hitsound = s5,6
guardsound = s5,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1,0
air.animtype = Back
air.velocity = -1,0
air.juggle = 1
air.fall = 0
air.hittime = 5
down.velocity = -1,0
down.hittime = 5
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 0
supermovetime = 700

[State 3002, change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3003
ctrl = 0

;==================================================================
;SUIT °°°°Strong Hô yoku ten shô state 3003
;==================================================================
;Hô yoku ten shô
[Statedef 3003]
type = S
movetype = A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3002
poweradd = 0

;===============================
;SND
;===============================
[State 3003, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S0, 1

[State 3003, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = S0, 2

;===============================
;HIT ATTAQUE
;===============================
[State 3003, VENT]
type = Projectile
trigger1 = animelem = 4
projanim = 8036
projhits = 8
projID = 8010
projscale =  1.5,1.5
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound = 120
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = S, HP
damage = 6
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 3,5
hitsound = s5,6
guardsound = s5,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1,0
air.animtype = Back
air.velocity = -1,0
air.juggle = 1
air.fall = 0
air.hittime = 5
down.velocity = -1,0
down.hittime = 5
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 0
supermovetime = 700

[State 3003, VENT]
type = Projectile
trigger1 = animelem = 13
projanim = 8036
projhits = 8
projID = 8010
projscale =  1.5,1.5
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound = 120
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = S, HP
damage = 6
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 3,20
hitsound = s5,6
guardsound = s5,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1,0
air.animtype = Back
air.velocity = -1,0
air.juggle = 1
air.fall = 0
air.hittime = 5
down.velocity = -1,0
down.hittime = 5
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 0
supermovetime = 700
;===============================
[State 3003, PHOENIX]
type = Projectile
trigger1 = animelem = 26
projanim = 4208
projID = 4208
projhits = 1
projhitanim = -1
postype = back
offset = 0,-75
sparkno = -1
guard.sparkno = 0
velocity = 6,0
attr = S, HP
damage = 350, 35
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound = S1,5
guardsound = S1,5
ground.type = low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -10,0
air.velocity = -10,0
air.animtype = Back
air.juggle = 1
air.fall = 1
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5
fall = 1
palfx.time = 120
palfx.mul = 240,192,128
palfx.sinadd = 96,128,160,16
palfx.add = 224,128,64
supermovetime = 700

;===============================
;EXPLOD
;===============================
[State 3003, inpacte]
type = Explod
trigger1 = ProjContact4208 = 1
anim = 8119
ID = 8119
pos = 0,0
postype = p2
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 3003]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;Light AIRE Hô yoku ten shô
;===========================================================================
[Statedef 3007]
type = S
movetype = A
physics = S
anim = 3007
velset = 0,0
poweradd = -2000
juggle = 0
ctrl = 0
;===============================
;SND
;===============================
[State 3007, Snd]
type = PlaySnd
trigger1 = animelem = 1
value = 3000, 1
channel = 0
;===============================
;paramétre spétial
;===============================
[State 3007, SuperPause]
type = SuperPause
trigger1 = Time = 0
anim = 3000
time = 70
movetime = 70
darken = 20

[State 3007, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 200
mul = 90,90,90
add = 5,5,5
invertall = 0

;===============================
;EXPLOD
;===============================
[State 3007,prépa phonix]
type = Explod
trigger1 = AnimElem = 43
pos = 0,0
anim = 8022
ID = 8022
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = -2
supermovetime = 700

[State 3007,prépa phonix]
type = Explod
trigger1 = AnimElem = 45
pos = 15,-100
anim = 8021
ID = 8022
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = -2
supermovetime = 700

;===============================
[State 3007, foudre]
type = Explod
trigger1 = AnimElem = 1
pos = 0,-100
anim = 8034
ID = 8022
postype = p1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 300
supermovetime = 700
;===============================
[State 3007, foudre asard]
type = Explod
trigger1 = ProjContact = 1
trigger1 = Time
trigger1 = Time%5 = 0
pos = -200,-100
random = 320,240
anim = 8034
ID = 8022
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
removetime = 50
supermovetime = 700
;===============================
[State 3007, oiseau BG droite]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X < 0
pos = -350,-2
anim = 8032
ID = 8022
postype = front
facing = 1
vfacing = 1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 350
supermovetime = 700

[State 3007, oiseau BG droite]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X > 0
pos = 0,0
anim = 8032
ID = 8022
postype = back
facing = 1
vfacing = 1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 350
supermovetime = 700
;===============================
[State 3007, font de flamme droit]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X > 0
pos = 320,0
anim = 8031
ID = 8022
postype = left
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
removetime = 350
supermovetime = 700

[State 3007, font de flamme gauche]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X < 0
pos = -320,0
anim = 8030
ID = 8022
postype = right
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 350
supermovetime = 700
;===============================
[State 3007, mure de flamme gauche]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X   < 0
pos = -350,230
anim = 8033
ID = 8022
postype = front
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 350
supermovetime = 700

[State 3007, mure de flamme droit]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X > 0
pos = -150,230
anim = 8033
ID = 8022
postype = back
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 350
supermovetime = 700
;===============================
[State 3007, inpacte]
type = Explod
trigger1 = ProjContact4206 = 1
anim = 8119
ID = 8119
pos = 0,0
postype = p2
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;===============================
;HIT ATTAQUE
;===============================
[State 3007, VENT]
type = Projectile
trigger1 = animelem = 12
projanim = 8036
projhits = 8
projID = 8010
projscale =  1.5,1.5
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound = 120
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = A, HP
damage = 6
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 3,5
hitsound = s5,6
guardsound = s5,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1,0
air.animtype = Back
air.velocity = -1,0
air.juggle = 3
air.fall = 0
air.hittime = 5
down.velocity = -1,0
down.hittime = 5
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 0
supermovetime = 700

[State 3007, VENT]
type = Projectile
trigger1 = animelem = 20
projanim = 8036
projhits = 8
projID = 8010
projscale =  1.5,1.5
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound = 120
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = A, HP
damage = 6
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 3,5
hitsound = s5,6
guardsound = s5,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1,0
air.animtype = Back
air.velocity = -1,0
air.juggle = 3
air.fall = 0
air.hittime = 5
down.velocity = -1,0
down.hittime = 5
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 0
supermovetime = 700

[State 3007, VENT]
type = Projectile
trigger1 = animelem = 28
projanim = 8036
projhits = 8
projID = 8010
projscale =  1.5,1.5
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound = 120
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = A, HP
damage = 6
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 3,5
hitsound = s5,6
guardsound = s5,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1,0
air.animtype = Back
air.velocity = -1,0
air.juggle = 3
air.fall = 0
air.hittime = 5
down.velocity = -1,0
down.hittime = 5
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 0
supermovetime = 700

[State 3007, VENT]
type = Projectile
trigger1 = animelem = 40
projanim = 8036
projhits = 1
projID = 8010
projscale =  1.5,1.5
projmisstime = 5
projremove = 1
projremovetime = 120
projedgebound = 120
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = A, HP
damage = 6
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 3,90
hitsound = s5,6
guardsound = s5,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1,0
air.animtype = Back
air.velocity = -1,0
air.juggle = 3
air.fall = 0
air.hittime = 5
down.velocity = -1,0
down.hittime = 5
down.bounce = 0
Palfx.time = 90
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 0
supermovetime = 700
;===============================
[State 3007, PHOENIX]
type = Projectile
trigger1 = animelem = 52
projanim = 4206
projID = 4206
projhits = 1
projhitanim = -1
offset = 0,-40
sparkno = s8119
sparkxy = 80,80
guard.sparkno = s8119
velocity = 6,2
attr = A, HP
damage = 250, 25
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound = S1,5
guardsound = S1,5
ground.type = low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -5,1
air.velocity = -5,1
air.animtype = Back
air.juggle = 3
air.fall = 1
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5
fall = 1
palfx.time = 120
palfx.mul = 240,192,128
palfx.sinadd = 96,128,160,16
palfx.add = 224,128,64
supermovetime = 700

;===============================
;(fin)
[State 3007]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;===========================================================================
;Strong AIRE Hô yoku ten shô
;===========================================================================
;AIRE Hô yoku ten shô PREPARATION
[Statedef 3008]
type = S
movetype = A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 3003
poweradd = -3000

[State 0, 1]
type = Varset
trigger1 = Time = 0
v = 49
value = 0

;===============================
;paramétre spétial
;===============================

;SuperPause
[State 3008, SuperPause]
type = SuperPause
trigger1 = Time = 1
anim = 3000
time = 270
movetime = 270
darken = 5

;éffait rouge
[State 3038, 1]
type = AfterImage
trigger1 = Time = 0
time = 214
FrameGap = 1
palcolor = 256
PalBright =   0,  0,  0
PalContrast = 255,128,64
PalAdd  =   0,  0,  0
PalMul  =  1,1,1
length = 25
Trans = Add1
;===============================
;SND
;===============================
[State 3008, 1]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 11
trigger5 = AnimElem = 17
value = S0, 1

[State 3008, 1]
type = PlaySnd
trigger1 = AnimElem = 20
value = S0, 2

[State 3008, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S3030,5

[State 3008, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S4300, 2

;===============================
;EXPLOD
;===============================
;fon de feux
[State 3008 fontde feux]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = 0,0
anim = 8136
ID = 8136
scale = 2,2
postype = left
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = -1
removetime = 198
supermovetime = 700

[State 3008 , change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3009
ctrl = 0

;==================================================================
;SUIT °°°°Strong AIR Hô yoku ten shô state 3009
;==================================================================
[Statedef 3009]
type = S
movetype = A
physics = S
anim = 3008
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0
;===============================
;SND
;===============================
[State 3009, Snd]
type = PlaySnd
trigger1 = animelem = 1
value = 3000, 3
channel = 0

[State 3009, Snd]
type = PlaySnd
trigger1 = AnimElem = 40
value = 3000, 5
channel = 0
;===============================
;paramétre spétial
;===============================
[State 3009, SuperPause]
type = SuperPause
trigger1 = Time = 0
anim = 3000
time = 70
movetime = 70
darken = 20

[State 3009, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 200
mul = 90,90,90
add = 5,5,5
invertall = 0
;===============================
;EXPLOD
;===============================

[State 3009,prépa phonix]
type = Explod
trigger1 = AnimElem = 75
pos = 0,0
anim = 8022
ID = 8022
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = -2
supermovetime = 700

[State 3009,prépa phonix]
type = Explod
trigger1 = AnimElem = 79
pos = 15,-100
anim = 8021
ID = 8022
postype = p1
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = -2
supermovetime = 700

;===============================
[State 3009, tron asard]
type = Explod
trigger1 = Time
trigger1 = Time%40 = 0
pos = -350,-30
random = 220,240
anim =  8026
ID = 8022
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 5,0
removetime = 200
supermovetime = 700
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;===============================
[State 3009, branche asard]
type = Explod
trigger1 = Time
trigger1 = Time%30 = 0
pos = -350,-30
random = 220,240
anim =  8027
ID = 8022
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 5,0
removetime = 200
supermovetime = 700
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;===============================
[State 3009, sol]
type = Explod
trigger1 = Time
trigger1 = Time%20 = 0
pos = -10,160
random = 190,0
anim = 8050
ID = 8022
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-3
removetime = 200
supermovetime = 700
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;===============================
[State 3009, roché asard petit]
type = Explod
trigger1 = Time
trigger1 = Time%50 = 0
pos = -350,-30
random = 220,240
anim =  8020
ID = 8022
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 5,0
removetime = 200
supermovetime = 700
scale = 0.5,0.5
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;===============================
[State 3009, roché asard]
type = Explod
trigger1 = Time
trigger1 = Time%40 = 0
pos = -350,-30
random = 220,240
anim =  8020
ID = 8022
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 5,0
removetime = 200
supermovetime = 700
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;===============================
[State 3009, foudre asard]
type = Explod
trigger1 = Time
trigger1 = Time%20 = 0
;trigger1 = Pos X < 0
pos = -200,-100
random = 320,240
anim = 8034
ID = 8022
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
removetime = 130
supermovetime = 700
;===============================
[State 3009, foudre 1]
type = Explod
trigger1 = AnimElem = 1
;trigger1 = Pos X < 0
pos = 0,-100
anim = 8034
ID = 8022
postype = p1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = -1
supermovetime = 700
;===============================
[State 3009, oiseau BG droite]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X < 0
pos = -350,-2
anim = 8032
ID = 80220
postype = front
facing = 1
vfacing = 1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 485
supermovetime = 700

[State 3009, oiseau BG droite]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X > 0
pos = 0,0
anim = 8032
ID = 80220
postype = back
facing = 1
vfacing = 1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 485
supermovetime = 700
;===============================
[State 3009, fon de flamme]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X > 0
pos = 320,0
anim = 8031
ID = 80220
postype = left
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
removetime = 485
supermovetime = 700
;===============================
[State 3009,fon de flamme]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X < 0
pos = -320,0
anim = 8030
ID = 80220
postype = right
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 485
supermovetime = 700
;===============================
[State 3009, mur de flamme]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X   < 0
pos = -350,230
anim = 8033
ID = 80220
postype = front
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 485
supermovetime = 700
;===============================
[State 3009, mur de flamme]
type = Explod
trigger1 = AnimElem = 1
trigger1 = Pos X > 0
pos = -150,230
anim = 8033
ID = 80220
postype = back
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 485
supermovetime = 700

;===============================
[State 3009, inpacte]
type = Explod
trigger1 = ProjContact4206 = 1
anim = 8119
ID = 8119
pos = 0,0
postype = p2
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;===============================
;HIT ATTAQUE
;===============================
;bat
[State 3009, VENT]
type = Projectile
trigger1 = animelem = 12
trigger2 = animelem = 26
trigger3 = animelem = 40
trigger4 = animelem = 54
trigger5 = animelem = 68
projanim = 8036
projhits = 8
projID = 8010
projscale = 1.5,1.5
projmisstime = 9
projremove = 1
projremovetime = 250
projedgebound = 250
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = A, HP
damage = 6
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 3,5
hitsound = s5,6
guardsound = s5,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 15
ground.velocity = -1,0
air.animtype = Back
air.velocity = -1,0
air.juggle = 3
air.fall = 0
air.hittime = 5
down.velocity = -1,0
down.hittime = 5
down.bounce = 0
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 0
supermovetime = 700

[State 3009, VENT]
type = Projectile
trigger1 = animelem = 76
projanim = 8036
projhits = 1
projID = 8010
projscale = 1.5,1.5
projmisstime = 20
projremove = 1
projremovetime = 250
projedgebound = 250
projpriority = 10
postype = front
offset = -320,-210
velocity = 0,0
attr = A, HP
damage = 6
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 3,90
hitsound = s5,6
guardsound = s5,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -1,0
air.animtype = Back
air.velocity = -1,0
air.juggle = 3
air.fall = 0
air.hittime = 5
down.velocity = -1,0
down.hittime = 5
down.bounce = 0
Palfx.time = 160
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20
fall = 0
supermovetime = 700
;===============================
[State 3009, PHOENIX]
type = Projectile
trigger1 = animelem = 83
projanim = 4206
projID = 4206
projhits = 1
projhitanim = -1
offset = 0,-40
sparkno = s8119
sparkxy = 80,80
guard.sparkno = s8119
velocity = 6,2
attr = A, HP
damage = 300, 30
animtype = Hard
guardflag = MA
pausetime = 0,9
hitsound = S1,5
guardsound = S1,5
ground.type = low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -5,1
air.velocity = -5,1
air.animtype = Back
air.juggle = 3
air.fall = 1
envshake.time =  15
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5
fall = 1
palfx.time = 120
palfx.mul = 240,192,128
palfx.sinadd = 96,128,160,16
palfx.add = 224,128,64
supermovetime = 700

;===============================
;(fin)
[State 3009]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;===========================================================================
; Hôô Genmaken
;===========================================================================
;(préparation)
[Statedef 3030]
type = S
movetype = A
physics = S
anim = 3030
velset = 0,0
poweradd = ifelse(Var(9) = 0, -1000, 0)
juggle = 0
ctrl = 0
;===============================
;SND
;===============================
[State 3030, Snd]
type = PlaySnd
trigger1 = animelem = 1
value = 3030, 0
channel = 0
;===============================
;paramétre spétial
;===============================
[State 3030 , pause]
type = SuperPause
trigger1 = Time = 0
time = 120
anim = -1
darken = 1
movetime = 120

;(trainé rouge)
[State 3030, 1]
type = AfterImage
trigger1 = Time = 0
time = 214
FrameGap = 1
palcolor = 256
PalBright   =   0,  0,  0
PalContrast = 255,128,64
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
length = 25
Trans = Add1
;===============================
;paramétre posture et vitesse
;===============================
;(déplasmen ver l'avent)
[State 3030, VelAdd]
type = VelAdd
trigger1 = AnimElem = 17
x = 5
y = 0
;===============================
;EXPLOD
;===============================
;avatard
[State 3030, Explod2]
type = Explod
trigger1 = AnimElem = 17
anim = 8145
ID = 8015
pos = 152,190
postype =back
facing = 1
vfacing = 1
bindtime = -1
accel = 0,0
random = 0,0
removetime = 27
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 3030, Explod2]
type = Explod
trigger1 = AnimElem = 17
anim = 5350
ID = 5350
pos = 152,190
postype =back
facing = 1
vfacing = 1
bindtime = -1
accel = 0,0
random = 0,0
removetime = 27
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

;===============================
[State 3030, cosmos]
type = Explod
triggerall = Anim = 3030
trigger1 = animelem = 1
anim = 8002
ID = 8002
pos = 5,0
postype = p1
facing = 1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = -1
;===============================
[State 3030, fon]
type = Explod
trigger1 = animelem = 1; anim = 3000
anim = 8025
pos = -187,65
postype = right ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 280
ID = 8025
scale = 1.3, 1.3
sprpriority = -2
ownpal = 1
removeongethit = 1
supermovetime = 140
;===============================
[State 3030, petit explosion de magma]
type = Explod
trigger1 = animelem = 1
anim = 8038
ID = 8038
pos = 0,0
postype = p1
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
supermovetime = 140
;===============================
[State 3000,explosion demagma 2]
type = Explod
trigger1 = animelem = 1
anim = 8100
ID = 8100
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
supermovetime = 140
;===============================
[State 3030,jin gauche]
type = Explod
trigger1 = AnimElem = 1
;trigger1 = Pos X   < 0
pos = 0,0
anim = 8041
ID = 4209
postype = left
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 100
supermovetime = 700
;===============================
[State 3030, 11]
type = ChangeState
trigger1 = animtime = 0
value = 3031
ctrl = 1

;===============================
;state d'attaque
;===============================
[Statedef 3031]
type = S
movetype = A
physics = S
anim = 3031
velset = 0,0
juggle = 0
ctrl = 0

;===============================
;paramétre posture et vitesse
;===============================
;(déplasmen ver l avent)
[State 3030, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
x = 40
y = 0
;===============================
;EXPLOD
;===============================
;(COMOSE de feux)
[State 3031,cosmos]
type = Explod
triggerall = Anim = 3031
trigger1 = animelem = 1
anim = 8004
ID = 8004
pos = 0,0
postype = p1
facing = 1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = -1
;===============================
;(Si P1 est du côté droite)
[State  3031, cervo]
type = Explod
triggerall = anim = 3031
trigger1 = p2stateno = 30340;[5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos =  320,0
postype = front
anim = 8040
ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700

;(Si P1 est du côté gauche)
[State  3031, cervo]
type = Explod
triggerall = anim = 3031
trigger1 = p2stateno = 30340;[5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X > 0
pos = 0,0
postype = back
anim = 8039
ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700
;===============================
;Si P1 est du côté droite
[State  3031, électic cérvo]
type = Explod
triggerall = anim = 3031
trigger1 = p2stateno = 30340;[5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos = 320,-0
postype = front
anim = 8016
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700

;Si P1 est du côté gauche
[State  3031, électic cérvo]
type = Explod
triggerall = anim = 3031
trigger1 = p2stateno = 30340;[5000,5300]
trigger1 = MoveContact = 1
pos = -1,-0
postype = back
anim = 8015
scale = 1,1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700
;===============================
;HIT ATTAQUE
;================================
[State 3031, 3]
type = HitDef
triggerall = Anim = 3031
trigger1 = AnimElem = 1
attr = S, HA
hitflag = MAFD
damage = 0
animtype = hard
guardflag = MA
pausetime = 0,0 
sparkno = S7000
sparkxy = 0, -100
hitsound = S3030,4
guard.pausetime = 1, 130
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = -0,0
p2facing = 1
ID = 3031
p2stateno = 30340

;================================
[State 3031 , transition si il est touchez]
type = ChangeState
triggerall = Var(9) = 0
triggerall = MoveContact = 1
trigger1 = p2stateno = 30340
trigger2 = p2stateno = [5000,5300]
;trigger1 = Time = 10
value = 3032
ctrl = 0

[State 3031 , transition si il est touchez]
type = ChangeState
triggerall = Var(9) = 1
triggerall = MoveContact = 1
trigger1 = p2stateno = 30340
trigger2 = p2stateno = [5000,5300]
;trigger1 = Time = 10
value = 3149
ctrl = 0

[State 3031 , 11]
type = ChangeState
trigger1 = animtime = 0
value = 3033
ctrl = 0

;=======================================
;state de comment
;=======================================
;(si p2 est en fall)
[Statedef 3032]
type = S
movetype = A
physics = S
anim = 3032
velset = 0,0
juggle = 0
ctrl = 0

[State 3032]
type = varadd
triggerall = var(48) < 3
trigger1 = Time = 0
v = 48
value = 1
ignorehitpause = 1

[State 3031]
type = AssertSpecial
trigger1 = Time > 10
trigger1 = NumExplod(8032) > 0
flag = noFG
ignorehitpause = 1

;===============================
;SND
;===============================
[State 3032, batment Coeur Snd]
type = PlaySnd
trigger1 = Anim = 3032
trigger1 = Time
trigger1 = Time%80 = 0
value = 3100, 4

[State 3032, provoc Snd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3030, 2
channel = 0
;===============================
;paramétre spétial
;===============================
;traverser P2
[State 3032, PushOff]
type = PlayerPush
trigger1 = Anim = 3032
value = 0
;trigger1 = p2stateno = 3034;[5000,5017]
;loop%80 = 0
;Time%80 = 0

[State 3033 , 11]
type = PosAdd
triggerall = p2bodydist x = [0,50]
trigger1 = Time = 0
x = 150

[State 3033 , 11]
type = PosAdd
triggerall = p2bodydist x = [51,100]
trigger1 = Time = 0
x = 200

[State 3033 , 11]
type = PosAdd
triggerall = p2bodydist x >= 101
trigger1 = Time = 0
x = 250

;(trainé rouge)
[State 3032, 2]
type = BGPalfx
;triggerall = p2life > 0
trigger1 = AnimElem = 23
ignorehitpause = 1
time = 50
mul = 128,128,128
add = 128,128,128
invertall = 1

;(trainé rouge)
[State 3032, 2]
type = BGPalfx
trigger1 = AnimElem = 1
ignorehitpause = 1
time = 50
mul = 128,128,128
add = 128,128,128
invertall = 1

;(arnaké la bar liv)
[State 3032, Hurt]
type = TargetLifeAdd
triggerall = P2Life > 200
trigger1 = AnimElem = 26
value = -200
ID = 3031

;===============================
;EXPLOD
;===============================
[State 3002,cosmos]
type = Explod
trigger1 = animelem = 1
anim = 7005
ID = 7005
pos = 0,0
postype = p1
facing = 1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
;===============================
;divert las
[State 3032, las]
type = Explod
;trigger1 = MoveContact = 3
trigger1 = AnimElem = 1
trigger1 = p2name!= "cassios"
;trigger1 = Pos X > 0
pos = 220,-25
anim = 8101
ID = 8025;4209
;facing = 1
;vfacing = -1
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 150
supermovetime = 700

;cassios las
[State 3032, las]
type = Explod
;triggerall = p2life > 0
;trigger1 = MoveContact = 3
trigger1 = AnimElem = 1
trigger1 = p2name= "cassios"
;trigger1 = Pos X > 0
pos = 220,-80
anim = 8101
ID = 8025;4209
;facing = 1
;vfacing = -1
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 150
supermovetime = 700
;===============================
[State 3032, arc électrique]
type = Explod
trigger1 = AnimElem = 23
trigger1 = p2name= "cassios"
anim = 8063
ID = 8063
pos = 15,-150
postype = p2
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 20
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 3032, arc électrique]
type = Explod
trigger1 = AnimElem = 23
trigger1 = p2name!= "cassios"
anim = 8063
ID = 8063
pos = 30,-90
postype = p2
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 20
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;===============================
[State 3032 , 11]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;===========================================================================
; alternative state p2 touché
;===========================================================================
;(si p2  en gard   plus utille)
[Statedef 3033]
type = S
movetype = A
physics = S
anim = 3033
velset = 0,0
juggle = 0
ctrl = 0

;===============================
;paramétre spétial
;===============================
;traverser P2
[State 3033, PushOff]
type = PlayerPush
trigger1 = Anim = 3032
value = 0
trigger1 = p2stateno = 30340 ;[5000,5017]
;;;loop%80 = 0
;;;Time%80 = 0

;===============================
[State 3033 , 11]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;===============================
[Statedef 30340]
type = S
physics = S
anim = 5005
velset = 0,0
juggle = 0
ctrl = 0
Poweradd = -1000

[State 3033 , 11]
type = lifeadd
trigger1 = Time = 445
value = -200

[State 3033 , 11]
type = SelfState
trigger1 = Time = 445
value = 0
ctrl = 1

;===========================================================================
; Hôô Genmaken 1 - Giant Punch (by Tux)
;===========================================================================
[Statedef 3046]
type = S
movetype = A
physics = S
anim = 3030
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0

[State 3046, 0]
type = PlaySnd
trigger1 = animelem = 1
value = 3030, 1
channel = 0

[State 3046, 1]
type = NotHitBy
trigger1 = Anim = 3030
value = SCA

[State 3046, 2]
type = SuperPause
trigger1 = Time = 0
time = 95
anim = -1
darken = 100
movetime = 95

[State 3046, 3]
type = AfterImage
trigger1 = Time = 0
time = 214
FrameGap = 1
palcolor = 256
PalBright = 0,0,0
PalContrast = 255,128,64
PalAdd = 0,0,0
PalMul = 1,1,1
length = 25
Trans = Add1

[State 3046, 4]
type = VelAdd
trigger1 = AnimElem = 17
x = 5
y = 0

[State 3046, 5]
type = Explod
triggerall = Anim = 3030
trigger1 = animelem = 1
anim = 8002
ID = 8002
pos = 5,0
postype = p1
facing = 1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = -1

[State 3046, 6]
type = Explod
trigger1 = animelem = 1
anim = 8025
pos = -187,65
postype = right
facing = 1
vfacing = 1
bindtime = -1
removetime = 280
scale = 1.3, 1.3
sprpriority = -2
ownpal = 1
removeongethit = 1
supermovetime = 140

[State 3046, 7]
type = Explod
trigger1 = animelem = 1
anim = 8038
ID = 8038
pos = 0,0
postype = p1
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
supermovetime = 140

[State 3046, 8]
type = Explod
trigger1 = animelem = 1
anim = 8100
ID = 8100
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
supermovetime = 140

[State 3046, 9]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
anim = 8041
ID = 4209
postype = left
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 100
supermovetime = 700

[State 3046, 10]
type = ChangeState
trigger1 = animtime = 0
value = 3047
ctrl = 1

;============================================
[Statedef 3047]
type = S
movetype = A
physics = S
anim = 3031
velset = 0,0
juggle = 0
ctrl = 0

[State 3047, 0]
type = VarSet
triggerall = stateno = 3047
trigger1 = Time = 0
value = 0
v = 48

[State 3047, 1]
type = VelAdd
trigger1 = AnimElem = 1
x = 40
y = 0

[State 3047, 2]
type = Explod
triggerall = Anim = 3031
trigger1 = animelem = 1
anim = 8004
ID = 8004
pos = 0,0
postype = p1
facing = 1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = -1

[State 3047, 3]
type = Explod
triggerall = Anim = 3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
pos = 320,0
postype = front
anim = 8040
ID = 8032
scale = 1,1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700

[State 3047, 4]
type = Explod
triggerall = Anim = 3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
pos = 0,0
postype = back
anim = 8039
ID = 8032
scale = 1,1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700

[State 3047, 5]
type = Explod
triggerall = Anim = 3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
pos = 320,-0
postype = front
anim = 8016
scale = 1,1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700

[State 3047, 6]
type = Explod
triggerall = Anim = 3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
pos = -1,-0
postype = back
anim = 8015
scale = 1,1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700

[State 3047, 7]
type = HitDef
triggerall = Anim = 3031
trigger1 = AnimElem = 1
attr = S, HA
hitflag = MAF
damage = 0
animtype = hard
pausetime = 0,130
sparkno = S7000
sparkxy = 0, -100
guard.sparkno = -1
hitsound = S3030,4
guard.pausetime = 1, 130
mindist = -50 ,0
maxdist = -50,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 299
ground.velocity = 0
air.velocity = -0,0
p2facing = 1
givepower = -3000
ID = 3047

[State 3047, 8]
type = ChangeState
trigger1 = MoveContact = 1
trigger1 = p2stateno = [5000,5300]
value = 3049
ctrl = 0

[State 3047, 9]
type = ChangeState
trigger1 = animtime = 0
value = 3033
ctrl = 0

;============================================
[Statedef 3049]
type = S
movetype = A
physics = S
anim = 3034
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = -8

[State 3049]
type = AssertSpecial
trigger1 = Time > 10
trigger1 = NumExplod(8032) > 0
flag = noFG
ignorehitpause = 1

[State 3049]
type = PlayerPush
trigger1 = Anim = 3034
value = 0

[State 3049]
type = PosAdd
triggerall = P2BodyDist X = [0,50]
trigger1 = Time = 0
x = 150

[State 3049]
type = PosAdd
triggerall = P2BodyDist X = [51,100]
trigger1 = Time = 0
x = 200

[State 3049]
type = PosAdd
triggerall = P2BodyDist X >= 101
trigger1 = Time = 0
x = 250

[State 3049, batment Coeur Snd]
type = PlaySnd
trigger1 = Anim = 3034
trigger1 = Time
trigger1 = Time%80 = 0
value = 3100, 4

[State 3049, 0]
type = Explod
trigger1 = animelem = 1
anim = 7005
ID = 7005
pos = 0,0
postype = p1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3049, 1]
type = Explod
trigger1 = AnimElem = 1
trigger1 = p2name != "cassios"
pos = 220,-25
anim = 8101
ID = 4209
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 150
supermovetime = 700

[State 3049, 2]
type = Explod
trigger1 = AnimElem = 1
trigger1 = p2name = "cassios"
pos = 220,-80
anim = 8101
ID = 4209
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 150
supermovetime = 700

[State 3049, 3]
type = ChangeState
trigger1 = animtime = 0
value = 3050
ctrl = 0

;============================================
[Statedef 3050]
type = S
movetype = A
physics = S
anim = 3035
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = -8

[State 3050, 0]
type = TargetState
trigger1 = Time = 0
value = 3051
ID = 3047

[State 3050, 1.1]
type = AssertSpecial
trigger1 = Time < 200
flag = invisible
flag2 = noBG
flag3 = noFG

[State 3050, 1.2]
type = AssertSpecial
trigger1 = Time < 200
flag = nobardisplay

[State 3050, 2]
type = Turn
trigger1 = Time = 0

[State 3050, 3]
type = PlaySnd
trigger1 = Time = 0
value = 5, 5

[State 3050, 3.1]
type = Explod
trigger1 = Time = 0
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.0,1.0
ownpal = 1

[State 3050, 3.2]
type = Explod
trigger1 = Time = 8
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.1,1.1
ownpal = 1

[State 3050, 3.3]
type = Explod
trigger1 = Time = 16
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.2,1.2
ownpal = 1

[State 3050, 3.4]
type = Explod
trigger1 = Time = 24
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.3,1.3
ownpal = 1

[State 3050, 3.5]
type = Explod
trigger1 = Time = 32
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.4,1.4
ownpal = 1

[State 3050, 3.5]
type = Explod
trigger1 = Time = 40
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.5,1.5
ownpal = 1

[State 3050, 3.6]
type = Explod
trigger1 = Time = 48
anim = 4057
ID = 4057
postype = back
pos = 160,160
bindtime = -1
removetime = 8
scale = 1.6,1.6
ownpal = 1

[State 3050, 4]
type = Projectile
trigger1 = Time = 56
ProjID = 4056
projanim = 4056
projremove = 0
projremovetime = 60
velocity = -2,0
projsprpriority = 5
postype = p2
offset = 150,-50
ID = 3050
attr = S,HP
animtype = up
pausetime = 0,10
sparkno = S8104
sparkxy = 50,-80
hitsound = S5,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -5,-5
kill = 1
fall = 1
envshake.time = 10
envshake.freq = 5
envshake.ampl = 20
p2stateno = 3052

[State 3050, 5]
type = EnvColor
trigger1 = Time = 90
value = 255,255,255
under = 0
time = 4

[State 3050, 6]
type = Explod
trigger1 = Time = 94
anim = 2100
ID = 2100
postype = back
pos = 0,0
bindtime = -1
removetime = 34
ownpal = 1

[State 3050, 7]
type = Turn
trigger1 = Time = 200

[State 3050, 8]
type = PosSet
trigger1 = Time = 200
x = ifelse((Facing = 1), (enemy,Pos X - 250), (enemy,Pos X + 250))

[State 3050, 9]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3050, 10]
type = ChangeState
trigger1 = Time = 300
value = 3060
ctrl = 0

;============================================
[Statedef 3060]
type = S
movetype = I
physics = S
anim = 20
velset = 0,0
juggle = 0
ctrl = 0

[State 3060, 0]
type = PlaySnd
triggerall = Anim = 20
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
value = S100, 1
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 3060, 1]
type = VelSet
trigger1 = P2BodyDist X > 5
x = const(velocity.walk.fwd.x)

[State 3060, 2]
type = VelSet
trigger1 = P2BodyDist X <= 5
x = 0

[State 3060, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3060, 4]
type = ChangeState
trigger1 = P2BodyDist X <= 5
value = 3061
ctrl = 0

;============================================
[Statedef 3061]
type = S
movetype = A
physics = S
anim = 3046
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = 5

[State 3061, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 183, 0
channel = 0

[State 3061, 2]
type = HitDef
trigger1 = AnimElem = 37
ID = 3061
attr = S, HA
hitflag = MAF
animtype = hard
pausetime = 0,10
sparkno = -1
hitsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 0,0
fall = 1

[State 3061, 3]
type = TargetLifeAdd
trigger1 = MoveHit = 1
value = -100000
kill = 1
ID = 3061

[State 3061, 4]
type = ChangeState
trigger1 = Time = 360
value = 0
ctrl = 1

;============================================
[Statedef 3051]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0

[State 3051, 0]
type = AssertSpecial
trigger1 = Time = [0, 56]
flag = invisible

[State 3051, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120

[State 3051, 2]
type = PosSet
trigger1 = Time = 0
x = 0

[State 3051, 3]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

;============================================
[Statedef 3052]
type = S
movetype = H
physics = N
velset = 0,0

[State 3052, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 3052, 1]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 3052, 2]
type = ChangeState
trigger1 = HitShakeOVer
value = 3053

;============================================
[Statedef 3053]
type = A
movetype = H
physics = N
ctrl = 0

[State 3053, 0]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 3053, 1]
type = VelSet
trigger1 = Time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 3053, 2]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 10
value = 3054

;============================================
[Statedef 3054]
type = A
movetype = H
physics = N

[State 3054, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 3054, 1]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 3054, 2]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 25
value = 3055

;============================================
[Statedef 3055]
type = L
movetype = H
physics = N

[State 3055, 0]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 3055, 1]
type = FallEnvShake
trigger1 = Time = 0

[State 3055, 2]
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 3055, 3]
type = ChangeAnim
trigger1 = Time = 0
value = 5100

[State 3055, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3055, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3055, 6]
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 3055, 7]
type = Explod
trigger1 = Time = 1
anim = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 3055, 8]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 3055, 9]
type = PosFreeze
trigger1 = 1

[State 3055, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 3056

;============================================
[Statedef 3056]
type = L
movetype = H
physics = N

[State 3056, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 5160

[State 3056, 1]
type = HitFallVel
trigger1 = Time = 0

[State 3056, 2]
type = PosSet
trigger1 = Time = 0
y = 20

[State 3056, 3]
type = VelAdd
trigger1 = 1
y = .4

[State 3056, 4]
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 3057

[Statedef 3057]
type = L
movetype = H
physics = N

[State 3057, 0]
type = FallEnvShake
trigger1 = Time = 0

[State 3057, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5170

[State 3057, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3057, 3]
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 3057, 4]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 3057, 5]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 3057, 6]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3057, 7]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 3057, 8]
type = VelMul
trigger1 = 1
x = 0.85

[State 3057, 9]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110
persistent = 0

[State 3057, 10]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
trigger3 = Anim = [5110,5119]
value = 3058

[Statedef 3058]
type = L
movetype = H
physics = N
sprpriority = -3

[State 3058, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 5110

[State 3058, 1]
type = VelMul
trigger1 = 1
x = 0.85

[State 3058, 2]
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 3058, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3058, 4]
type = ChangeState
trigger1 = Time = 40
value = 3059

[Statedef 3059]
type = S
movetype = I
physics = N

[State 3059, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 5000

[State 3059, 1]
type = ChangeAnim
trigger1 = Time > 0
value = anim

;===========================================================================
; Hôô Genmaken 4 - Falsa morte
;===========================================================================
[Statedef 3149]
type = S
movetype = A
physics = S
anim = 3149
velset = 0,0
ctrl = 0

[State 3149]
type = VarAdd
triggerall = var(48) < 3
trigger1 = Time = 0
v = 48
value = 1
ignorehitpause = 1

[State 3149]
type = EnvColor
trigger1 = Time = 30
value = 0,0,0
time = 60

[State 3149]
type = RemoveExplod
trigger1 = Time = 30
ID = 8025

[State 3149]
type = ChangeState
trigger1 = AnimTime = 0
value = 3150
ctrl = 0

;===============================
;illusione cammina
;===============================
[Statedef 3150]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3150
ctrl = 0
juggle = 15

[State 3150, sfondo start]
type = Explod
trigger1 = Time = 1
anim = 3155
ID = 3155
pos = 0,0
postype = back
sprpriority = -9
removetime = 760
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3150, 1]
type = VelSet
trigger1 = 100
x = 5

[State 3150, 2]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn

[State 3150, 4]
type = ChangeState
;triggerall = Time = 20
trigger1 = p2bodydist x <= 20
value = 3151

[State 3150,, 4]
type = ChangeState
triggerall = Time = 20
trigger1 = p2bodydist x > 1000
value = 0
ctrl = 1

;===============================
;illusione attacca
;===============================
[Statedef 3151]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3151
ctrl = 0
juggle = 15

[State 3151, 2]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage = 0
guardflag = MA
pausetime = 0,20
getpower = 0
sparkno = S7008
sparkxy = -20,-90
hitsound = S200,0
guardsound = S200,1
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -6,0
guard.velocity = -4
air.velocity = -6,0
airguard.velocity = -6,0
p1stateno = 3152
p2stateno = 3160
fall = 0
Kill = 0
fall.damage = 0

[State 3151, connect]
type = ChangeState
triggerall = animtime = 0
trigger1 = p2stateno = [5000,5030]
;trigger1 = movehit = 1
value = 3152
ctrl = 1

[State 3151, failed]
type = ChangeState
trigger1 = animtime = 0
;trigger1 = movecontact = 0
value = 0
ctrl = 1

;===============================
;illusione senza testa
;===============================
[Statedef 3152]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3152
ctrl = 0
juggle = 15
poweradd = -500

[State 3152, blood]
type = Explod
trigger1 = Time = 10
anim = 8103
postype = p1
sprpriority = 1
pos = -30,-150

[State 3152, Head]
type = Explod
trigger1 = animelem = 1
anim = 3153
postype = p1
sprpriority = 1
pos = 0,0

[State 3152, K.O.]
type = Explod
trigger1 = animelem = 1
anim = 3158
postype = back
sprpriority = 10
pos = 40,40
removetime = 50
scale = 0.5,0.5

[State 3152, sound]
type = PlaySnd
trigger1 = Time = 0
value = 3100, 3

[State 3152, sound]
type = PlaySnd
trigger1 = Time = 50
value = 2, 3

[State 3152, sound]
type = PlaySnd
trigger1 = Time = 0
value = 3150, 0

[State 3152, sound]
type = PlaySnd
trigger1 = Time = 90
value = 3150, 1

[State 3152, sound]
type = PlaySnd
trigger1 = Time = 350
value = 4500, 0
channel = 0

[State 3152, PalFX]
type = BGPalFX
trigger1 = Time = 350
time = 180
add = 40,-70,-200
mul = 256,256,256
sinadd = 40,30,0,10
invertall = 1
color = 0

[State 3152, sfondo end]
type = Explod
trigger1 = Time = 350
anim = 3156
pos = -80,-20
postype = p1
sprpriority = -9
removetime = 120
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3152, sfondo end]
type = Explod
trigger1 = Time = 350
anim = 3156
pos = -80,0
postype = p1
sprpriority = -9
removetime = 120
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3152, sfondo end]
type = Explod
trigger1 = Time = 350
anim = 3157
pos = -80,-20
postype = p1
sprpriority = -9
removetime = 120
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3152, sfondo end]
type = Explod
trigger1 = Time = 350
anim = 3157
pos = 20,-20
postype = p1
sprpriority = -9
removetime = 120
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3152, sfondo end]
type = Explod
trigger1 = Time = 350
anim = 8036
pos = 0,0
postype = back
sprpriority = -9
removetime = 180
ignorehitpause = 1
bindtime = -1
persistent = 0

[State 3152,ht]
type = HitDef
trigger1 = AnimElem = 3
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2,1
pausetime = 4,4
sparkno = s3156
sparkxy = 0,-120
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3152,ht2]
type = HitDef
trigger1 = AnimElem = 4
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Medium
priority = 5,Hit
damage = 3,1
pausetime = 3,3
sparkno = s3156
sparkxy = 0,-60
hitsound = S1,0
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3152,ht]
type = HitDef
trigger1 = AnimElem = 4
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = light
priority = 5,Hit
damage = 4,1
pausetime = 3,3
sparkno = s3157
sparkxy = -20,-20
hitsound = S1,0
guardsound = S6,0
ground.type = low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3152, explosion]
type = Explod
trigger1 = Time = 450
anim = 8121
ID = 5010
pos = -15,-55
postype = p2
facing = 1
vfacing = 1
bindtime = 99999
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0  

[State 3152, sound]
type = PlaySnd
trigger1 = Time = 450
value = 4050, 2

[State 3152, PalFX]
type = BGPalFX
trigger1 = Time = 449
time = 1
add = 0,0,0
mul = 256,256,256
sinadd = 1,1,1,1
invertall = 0
color = 256

[State 3152,end]
type = ChangeState
trigger1 = Time = 450
value = 3154 
ctrl = 0

;===============================
;illusione sparisce
;===============================
[Statedef 3154]
type = S
movetype = A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0
anim = 3154
sprpriority = 2

[State 3154]
type = RemoveExplod
triggerall = NumExplod(315) > 0
trigger1 = Time = 0
ID = 3155

[State 3154, PalFX]
type = BGPalFX
trigger1 = Time = 0
time = 1
add = 0,0,0
mul = 256,256,256
sinadd = 1,1,1,1
invertall = 0
color = 256

[State 3154, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
animtype  = Medium
damage = 150,15
guardflag = MA
pausetime = 15,5
sparkno = s408
sparkxy = -10,-80
hitsound = S220,0
guardsound = S200,1
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.hittime = 12
air.velocity = -2.2,-3.2
fall = 1

[State 3154, 3]
type = VarSet
trigger1 = AnimTime = 0
v = 9
value = 0
 
[State 3154, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===============================
;pugno p2
;===============================
[Statedef 3160]
type = S
movetype = A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 3

[State 3160, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1, 0

[State 3160, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 0

;===========================================================================
; Hôô Genmaken 2 - Sight of Hell
;===========================================================================
[Statedef 3034]
type = S
movetype = A
physics = S
anim = 3030
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0

;===============================
;SND
;===============================
;voix
[State 3034, Snd]
type = PlaySnd
trigger1 = animelem = 1
value = 3030, 3
channel = 0
;===============================
;paramétre spétial
;===============================
[State 3034, NoHit]
type = NotHitBy
trigger1 = Anim = 3030
value = SCA

[State 3034 , pause]
type = SuperPause
trigger1 = Time = 0
time = 95
anim = -1
darken = 100
movetime = 95

;éffait rouge
[State 3034, 1]
type = AfterImage
trigger1 = Time = 0
time = 214
FrameGap = 1
palcolor = 256
PalBright =   0,  0,  0
PalContrast = 255,128,64
PalAdd  =   0,  0,  0
PalMul  =  1,1,1
length = 25
Trans = Add1
;===============================
;paramétre posture et vitesse
;===============================
 ;déplasmen ver l avent
[State 3034, VelAdd]
type = VelAdd
trigger1 = AnimElem = 17
x = 5
y = 0
;===============================
;EXPLOD
;===============================
;(cosmos flam)
[State 3034,cosmos]
type = Explod
triggerall = Anim = 3030
trigger1 = animelem = 1
anim = 8002
ID = 8002
pos = 5,0
postype = p1
facing = 1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = -1
;===============================
;(FON)
[State 3034  fon]
type = Explod
trigger1 = animelem = 1; anim = 3000
anim = 8025
pos = -187,65
postype = right ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 280
scale = 1.3, 1.3
sprpriority = -2
ownpal = 1
removeongethit = 1
supermovetime = 140
;===============================
;(PETIT EXPLOSION)
[State 3034, petit explosion de magma]
type = Explod
trigger1 = animelem = 1
anim = 8038
ID = 8038
pos = 0,0
postype = p1
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
supermovetime = 140
;===============================
;(grande explosion)
[State 3034,explosion demagma 2]
type = Explod
trigger1 = animelem = 1
anim = 8100
ID = 8100
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
supermovetime = 140
;===============================
[State 3034,jin]
type = Explod
trigger1 = AnimElem = 1
;trigger1 = Pos X   < 0
pos = 0,0
anim = 8041
ID = 4209
postype = left
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 100
supermovetime = 700
;===============================
[State 3034 , 11]
type = ChangeState
trigger1 = animtime = 0
value = 3035
ctrl = 1

;===============================
;state attaque
;===============================
[Statedef 3035]
type = S
movetype = A
physics = S
anim = 3031
velset = 0,0
juggle = 0
ctrl = 0

;===============================
;paramétre posture et vitesse
;===============================
[State 3035]
type = VarSet
triggerall = stateno = 3035
trigger1 = Time = 0
value = 0
v = 48

;===============================
;(déplasmen ver l'avent)
[State 3035, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
x = 40
y = 0
;===============================
;EXPLOD
;===============================
;(COMOSE de feux)
[State 3035,cosmos]
type = Explod
triggerall = Anim = 3031
trigger1 = animelem = 1
anim = 8004
ID = 8004
pos = 0,0
postype = p1
facing = 1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = -1
;===============================
;(Si P1 est du côté droite)
[State  3035, cervo]
type = Explod
triggerall = anim = 3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
pos = 320,0
postype = front
anim = 8040
ID = 8032
scale = 1,1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700

;(Si P1 est du côté gauche)
[State  3035, cervo]
type = Explod
triggerall = anim = 3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X > 0
pos = 0,0
postype = back
anim = 8039
ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700
;===============================
;(Si P1 est du côté droite)
[State  3035, électic cérvo]
type = Explod
triggerall = anim = 3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos = 320,-0
postype = front
anim = 8016
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700
;===============================
;(Si P1 est du côté gauche)
[State  3035, électic cérvo]
type = Explod
triggerall = anim = 3031
trigger1 = p2stateno = [5000,5300]
trigger1 = MoveContact = 1
pos = -1,-0
postype = back
anim = 8015
scale = 1,1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700
;===============================
;HIT ATTAQUE
;===============================
[State 3035, 3]
type = HitDef
triggerall = Anim = 3031
trigger1 = AnimElem = 1
attr = S, HA
hitflag = MAF
damage = 0
animtype = hard
pausetime = 0,130
sparkno = S7000
sparkxy = -30, -100
guard.sparkno = -1
hitsound = S3030,4
guard.pausetime = 1, 130
mindist = -50 ,0
maxdist = -50,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 299
ground.velocity = 0
air.velocity = -0,0
p2facing = 1
givepower = -3000
;===============================
[State 3035 , transition si il est touchez]
type = ChangeState
trigger1 = MoveContact = 1
trigger1 = p2stateno = [5000,5300]
;trigger1 = Time = 10
value = 3036
ctrl = 0
;===============================
[State 3035 , 11]
type = ChangeState
trigger1 = animtime = 0
value = 3033
ctrl = 0

;======================================
;transition
;======================================
[Statedef 3036]
type = S
movetype = A
physics = S
anim = 3034
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = -8

[State 3036]
type = AssertSpecial
trigger1 = Time > 10
trigger1 = NumExplod(8032) > 0
flag = noFG
ignorehitpause = 1

[State 3036]
type = PlayerPush
trigger1 = Anim = 3034
value = 0

[State 3036]
type = PosAdd
triggerall = P2BodyDist X = [0,50]
trigger1 = Time = 0
x = 150

[State 3036]
type = PosAdd
triggerall = P2BodyDist X = [51,100]
trigger1 = Time = 0
x = 200

[State 3036]
type = PosAdd
triggerall = P2BodyDist X >= 101
trigger1 = Time = 0
x = 250

[State 3036, batment Coeur Snd]
type = PlaySnd
trigger1 = Anim = 3034
trigger1 = Time
trigger1 = Time%80 = 0
value = 3100, 4

;===============================
;EXPLOD
;===============================
[State 3036,cosmos]
type = Explod
trigger1 = animelem = 1
anim = 7005
ID = 7005
pos = 0,0
postype = p1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
;===============================

;divert las
[State 3032, las]
type = Explod
;trigger1 = MoveContact = 3
trigger1 = AnimElem = 1
trigger1 = p2name!= "cassios"
;trigger1 = Pos X > 0
pos = 220,-25
anim = 8101
ID = 4209
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 150
supermovetime = 700

;cassios las
[State 3032, las]
type = Explod
trigger1 = AnimElem = 1
trigger1 = p2name = "cassios"
pos = 220,-80
anim = 8101
ID = 4209
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 150
supermovetime = 700
;===============================
[State 3036 , allez ver illusion]
type = ChangeState
trigger1 = animtime = 0
value = 3037
ctrl = 0

;===========================================================================
;illusion
;===========================================================================
;(illusion)
[Statedef 3037]
type = S
movetype = A
physics = S
anim = 3035
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = -8

[State 3037, NOFG]
type = AssertSpecial
trigger1 = 1
flag = noFG
ignorehitpause = 1

;===============================
;SND
;===============================
[State  3037 , son flam]
type = PlaySnd
triggerall  = anim = 3035
;trigger1 = animelem = 1
trigger1 = Time
trigger1 = Time%20 = 0
;loop = 1
value = S5, 3

[State 3037,cri de téreur1 entré]
type = PlaySnd
trigger1 = Time = 0
value = 4200, 2

[State 3037, Voice]
type = PlaySnd
trigger1 = Time = 60
value = 184, 0
channel = 0

[State 3037, cri de téreur 2 cri]
type = PlaySnd
trigger1 = Time
trigger1 = Time%300 = 0
value = 4200, 0

[State 3037,cri de téreur3 ame]
type = PlaySnd
trigger1 = Time
trigger1 = Time%250 = 0
value = 4200, 3

[State 3037, batment Coeur Snd]
type = PlaySnd
trigger1 = Anim = 3035
trigger1 = p2stateno = [5000,5300]
;trigger1 = MoveContact = 1
trigger1 = Time
trigger1 = Time%80 = 0
value = 3100, 4
;===============================
;paramétre spétial
;===============================
;traverser P2
[State 3037, PushOff]
type = PlayerPush
trigger1 = Anim = 3035
value = 0

[State 3037, NoHit]
type = NotHitBy
trigger1 = Anim = 3035
value = SCA
;===============================
;EXPLOD
;===============================
[State 3037, la mort]
type = Explod
;trigger1 = Time
trigger1 = Time%50 = 0
anim = 8010
ID = 8010
pos = -150,180
postype = back ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 5,0
accel = 0,0
random = 80,130
removetime = 700
scale = 1,1
sprpriority = 10
removeongethit = 1
;===============================
[State 3037, visage]
type = Explod
trigger1 = Anim =  3035
;trigger1 = Pos X > 0
pos = -40,-30
anim = 8066;8068
ID = 4208
scale = 2,2
postype = p2
sprpriority = 11
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = -1
removetime = 700
supermovetime = 700
;==========================
;explod (flame)
;==========================
[State 3037,prem,p flamme au sol gauche]
type = Explod
trigger1 = Anim =  3035
trigger1 = Pos X  < 0
pos = -330,230
anim = 8033
ID = 4209
postype = front
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;=================================
[State 3037,prem,p flamme au sol droit]
type = Explod
trigger1 = Anim =  3035
trigger1 = Pos X > 0
pos = -150,230
anim = 8033
ID = 4209
postype = back
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;================================
[State 3037,ar,p flamme au sol gauche]
type = Explod
trigger1 = Anim =  3035
trigger1 = Pos X  < 0
pos = -330,180
anim = 8033
ID = 4209
postype = front
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;=================================
[State 3037,ar,p flamme au sol droit fon]
type = Explod
trigger1 = Anim =  3035
trigger1 = Pos X > 0
pos = -150,180
anim = 8033
ID = 4209
postype = back
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;================================
;sol
;=================================
[State 3037, sol]
type = Explod
trigger1 = Anim =  3035
;trigger1 = Pos X > 0
pos = 0,-30
anim = 8069
ID = 4208
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;================================
;sol de magma santre
;=================================
[State 3037, sol de magma santre]
type = Explod
trigger1 = Time =  1
;trigger1 = Pos X > 0
pos = 100,-40
anim = 8070
ID = 4208
postype = p2
;scale = 1.5,1.5
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;=================================
[State 3037, sol de magma]
type = Explod
trigger1 = Anim =  3035
;trigger1 = Pos X > 0
pos = -300,-40
anim = 8070
ID = 4208
postype = p2
;scale = 1.5,1.5
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;=================================
[State 3037, sol de magma]
type = Explod
trigger1 = Anim =  3035
;trigger1 = Pos X > 0
pos = -100,-40
anim = 8070
ID = 4208
postype = p2
;scale = 1.5,1.5
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;================================
;JIN
;=================================
[State 3037,jin gauche]
type = Explod
trigger1 = AnimElem = 1
;trigger1 = Pos X   < 0
pos = 0,0
anim = 8041
ID = 4209
postype = left
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;==============================
;NUAGE
;==============================
[State 3037, nuage droit]
type = Explod
trigger1 = Anim =  3035
trigger1 = Pos X > 0
pos = 330,0
anim = 8082
ID = 4208
postype = left
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;===============================
[State 3037, nuage gauche]
type = Explod
trigger1 = Anim =  3035
trigger1 = Pos X < 0
pos = -320,0
anim = 8081
ID = 4208
postype = right
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;==============================
;victim
;==============================
[State 3037,l'homme accroupi]
type = Explod
trigger1 = Anim =  3035
pos = 290,250
anim = 8084
ID = 4208
postype = left ;p2,front,back,left,right
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;==============================
[State 3037, la femme accroupi]
type = Explod
trigger1 = Anim =  3035
pos = 41,250
anim = 8085
ID = 4208
postype = left ;p2,front,back,left,right
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;==============================
[State 3037,l'homme prostré]
type = Explod
trigger1 = Anim =  3035
pos = 190,280
anim = 8086
ID = 4208
postype = left ;p2,front,back,left,right
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;==============================
[State 3037, la femme qui tend le bra]
type = Explod
trigger1 = Anim =  3035
pos = 150,280
anim = 8060
ID = 4208
postype = left ;p2,front,back,left,right
sprpriority = 8
ignorehitpause = 4
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;==============================
;les asayant
;==============================
[State 3037, l'homme qui sort du sol]
type = Explod
trigger1 = Anim =  3035
pos = -15,0
anim = 8087
ID = 4208
postype = p2 ;p2,front,back,left,right
sprpriority = 0
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700
;==============================
[State 3037, la femme qui sort du sol]
type = Explod
trigger1 = Anim =  3035
pos = 30,0
anim =  8089
ID = 4208
postype = p2 ;p2,front,back,left,right
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 700
supermovetime = 700

;==============================
;les helper (chargé)
;==============================
[State 3037, squelette qui sort du sol]
type = Helper
trigger1 = Time = 130 ;AnimElem = 1
;time = 80
ID = 8062
pos = 70,0
postype = p2
stateno = 8062
name = "mort1"
ownpal = 1
supermovetime =  700
;==============================
[State 3037, l' asayant qui transperce]
type = Helper
trigger1 = Time = 205 ;AnimElem = 1
trigger1 = p2name!= "cassios"
;time = 80
ID = 8061
pos = 0,-5
postype = p2
stateno = 8061
name = "zonbi"
ownpal = 1
supermovetime =  700

[State 3037, l' asayant qui transperce]
type = Helper
trigger1 = Time = 205 ;AnimElem = 1
trigger1 = p2name= "cassios"
;time = 80
ID = 8061
pos = 0,-50
postype = p2
stateno = 8061
name = "zonbi"
ownpal = 1
supermovetime =  700
;==============================
[State 3037, squelette a l'épé]
type = Helper
trigger1 = Time = 330 ;AnimElem = 1
;time = 80
ID =  8102
pos = -50,-5
postype = p2
stateno = 8102
name = "mort a l'épé"
ownpal = 1
supermovetime =  700
;==============================
[State 3037, la mort]
type = Helper
trigger1 = Time = 300 ;AnimElem = 1
trigger1 = p2name!= "cassios"
;time = 80
ID =  8019
pos = -300,-5
postype = p2;p2,front,back,left,right
stateno = 8019
name = "voleur d'ame"
ownpal = 1
supermovetime =  700

[State 3037, la mort]
type = Helper
trigger1 = Time = 300 ;AnimElem = 1
trigger1 = p2name= "cassios"
;time = 80
ID =  8019
pos = -300,-90
postype = p2;p2,front,back,left,right
stateno = 8019
name = "voleur d'ame"
ownpal = 1
supermovetime =  700

;==============================
;fin du Statedef
;==============================
[State 3037 , 11]
type = ChangeState
trigger1 = animtime = 0
value = 3048
ctrl = 0

;===========================================================================
;fin
[Statedef 3048]
type = S
movetype = A
physics = S
anim = 3048
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = -8

[State 3048, NOFG]
type = AssertSpecial
trigger1 = Time < 300
flag = noFG
ignorehitpause = 1

[State 3048, Tux]
type = Turn
trigger1 = Time = 0

;LifeAddp2
[State 3048, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 200
value = -1000000
kill = 1

[State 3048, Priority]
type = SprPriority
trigger1 = Time = 300
value = 1

[State 3048 , 11]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;===========================================================================
;===========================================================================
;les helper
;===========================================================================
;===========================================================================
;==============================
;squelette qui sort du sol
;==============================
[Statedef 8062]
type = A
movetype = A
physics = S
juggle = 0
anim = 8062
ctrl = 0
sprpriority = 5

[State 8062 , 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
damage = 0, 0
animtype = light
guardflag = MA
hitflag = MAF
priority = 3, Dodge
pausetime = 1,100
sparkno = s8103
sparkxy = 0, -76
hitsound = s1,4
guardsound = s1,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 100
ground.velocity = 0,0
 numhits = 0
;==============================
; destruktion du helper squelette qui sort du sol
;==============================
[State 8062]
type = DestroySelf
trigger1 = AnimTime = 0
;===========================================================================
;l'asayant qui transperce
;==============================
;air ataque
[Statedef 8061]
type = A
movetype = A
physics = S
juggle = 0
anim = 8061
ctrl = 0
sprpriority = 0

[State 8061, insulte]
type = PlaySnd
trigger1 = Anim = 8061
trigger1 = AnimElem = 2
value = 4200, 1

[State 8061, insulte]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
value = 1, 3

[State 8061, BRAT]
type = Explod
;trigger1 = anim = 3036
trigger1 = AnimElem = 1
trigger1 = p2name!= "cassios"
anim = 8065
ID =  8065
pos = 0,-5
postype = p2
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 8
removeongethit = 1

[State 8061, BRAT]
type = Explod
trigger1 = AnimElem = 1
trigger1 = p2name= "cassios"
anim = 8065
ID =  8065
pos = 0,-50
postype = p2
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 8
removeongethit = 1

[State 0, SAND]
type = Explod
trigger1 = AnimElem = 6
trigger1 = p2name!= "cassios"
anim = 8105
ID = 8105
pos = 0,-100
postype = p2
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 190
scale = 1,1
sprpriority = 9
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, SAND]
type = Explod
trigger1 = AnimElem = 6
trigger1 = p2name= "cassios"
anim = 8105
ID = 8105
pos = 0,-150
postype = p2
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 190
scale = 1,1
sprpriority = 9
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;==============================
; destruktion du helper l' asayant qui transperce
;==============================
[State 8061]
type = DestroySelf
trigger1 = AnimTime = 0
;===========================================================================
;Squelette a l'épé
;===========================================================================
[Statedef 8102]
type = A
movetype = A
physics = S
juggle = 0
anim = 8102
ctrl = 0
sprpriority = 8

;hite def de l'attaque
[State 8102 , 1]
type = HitDef
trigger1 = anim = 8102
attr = S, HA
damage = 0, 0
animtype = light
guardflag = MA
hitflag = MAF
priority = 3, Dodge
pausetime = 1,100
sparkno = s8104
sparkxy = 0, -100
hitsound = s1,4
guardsound = s1,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 100
ground.velocity = 0,0
numhits = 0
;==============================
; destruktion du helper squelette a l'épé
;==============================
[State 8102]
type = DestroySelf
trigger1 = AnimTime = 0
;===========================================================================
; la mort
;======================
[Statedef 8019]
type = A
movetype = A
physics = S
juggle = 0
anim = 8019
ctrl = 0
sprpriority = 8

[State 8108 , VelAdd]
type = VelAdd
trigger1 = Anim = 8019
x = 1
y = 0

[State 8019 , 1]
type = HitDef
trigger1 = anim = 8019
attr = S, HA
damage = 0, 0
animtype = light
guardflag = MA
hitflag = MAF
priority = 3, Dodge
pausetime = 1,100
sparkno = 0
sparkxy = -10, -76
hitsound = 0,5
guardsound = s1,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 100
ground.velocity = 0,0
numhits = 0
;==========================================================
;la mort  parti(hit state)
;=================================
[State 8018, la mortparti2]
type = Helper
trigger1 = MoveContact = 1
trigger1 = p2name!= "cassios"
ID = 8018
pos = 0,-30
postype = p2
stateno = 8018
name = "zonbi"
ownpal = 1
supermovetime =  700

[State 8018, la mortparti2]
type = Helper
trigger1 = MoveContact = 1
trigger1 = p2name= "cassios"
ID = 8018
pos = 0,-90
postype = p2
stateno = 8018
name = "zonbi"
ownpal = 1
supermovetime =  700
;=================================================
; destruktion du helper la mort
;=================================================
[State 8018]
type = DestroySelf
trigger1 = MoveContact = 1
;==============================
;hit state) la mort
;==============================
[Statedef 8018]
type = A
movetype = A
physics = S
juggle = 0
anim = 8018
ctrl = 0
sprpriority = 8

[State 0, 1]
type = PlaySnd
trigger1 = Time
trigger1 = Time%8= 0
value = S1, 7

[State 8018 , 1]
type = HitDef
;triggerall = AnimElem != 18
trigger1 = anim = 8018
attr = S, HA
damage = 0, 0
animtype = light
guardflag = MA
hitflag = MAF
priority = 3, Dodge
pausetime = 1,100
sparkno = s8063
sparkxy = -50, -40
hitsound = 0,5
guardsound = s1,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 100
ground.velocity = 0,0
numhits = 0
fall = 0

[State 8018 , 1]
type = HitDef
triggerall = AnimElem = 18
trigger1 = anim = 8018
attr = S, HA
damage = 0, 0
animtype = light
guardflag = MA
hitflag = MAF
priority = 3, Dodge
pausetime = 1,100
sparkno = s8063
sparkxy = -50, -40
hitsound = 0,5
guardsound = s1,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 100
ground.velocity = 0,0
numhits = 0
fall = 1
fall.recover = 0

;========================================================
; destruktion du helper la mort qui punit (hit state) fin
;========================================================
[State 8018]
type = DestroySelf
trigger1 = AnimTime = 0

;===========================================================================
; Hôô Genmaken 3 - Burnt Alive
;===========================================================================
[Statedef 3038]
type = S
movetype = A
physics = S
anim = 3030
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0
;===============================
;SND
;===============================
;voix
[State 3038, Snd]
type = PlaySnd
trigger1 = animelem = 1
value = 3030, 3
channel = 0
;===============================
;paramétre posture et vitesse
;===============================
;(éffait rouge)
[State 3038, 1]
type = AfterImage
trigger1 = Time = 0
time = 214
FrameGap = 1
palcolor = 256
PalBright   =   0,  0,  0
PalContrast = 255,128,64
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
length = 25
Trans = Add1

[State 3038 , pause]
type = SuperPause
trigger1 = Time = 0
time = 95
anim = -1
darken = 100
movetime = 95

[State 3038, NoHit]
type = NotHitBy
trigger1 = Anim = 3030
value = SCA
;===============================
;paramétre posture et vitesse
;===============================
;(déplasmen ver l avent)
[State 3038, VelAdd]
type = VelAdd
trigger1 = AnimElem = 17
x = 5
y = 0
;==============================
;Explod
;==============================
;cosmos flam
[State 3038,cosmos]
type = Explod
triggerall = Anim = 3030
trigger1 = animelem = 1
anim = 8002
ID = 8002
pos = 5,0
postype = p1
facing = 1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = -1
;==============================
;FON
[State 3038  fon]
type = Explod
trigger1 = animelem = 1; anim = 3000
anim = 8025
pos = -187,65
postype = right ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 280
scale = 1.3, 1.3
sprpriority = -2
ownpal = 1
removeongethit = 1
supermovetime = 140
;==============================
;PETIT EXPLOSION
[State 3038, petit explosion de magma]
type = Explod
trigger1 = animelem = 1
anim = 8038
ID = 8038
pos = 0,0
postype = p1
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
removeongethit = 1
supermovetime = 140
;==============================
;grande explosion
[State 3038,explosion demagma 2]
type = Explod
trigger1 = animelem = 1
anim = 8100
ID = 8100
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
supermovetime = 140
;==============================
[State 3037,jin gauche]
type = Explod
trigger1 = AnimElem = 1
trigger1 = AnimElem = 1
;trigger1 = Pos X   < 0
pos = 0,0
anim = 8041
ID = 4209
postype = left
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 100
supermovetime = 700
;==============================
[State 3038, 11]
type = ChangeState
trigger1 = animtime = 0
value = 3039
ctrl = 1

;===========================================================================
;state d'attaque
;===========================================================================
[Statedef 3039]
type = S
movetype = A
physics = S
anim = 3031
velset = 0,0
juggle = 0
ctrl = 0

[State 3039]
type = AssertSpecial
trigger1 = Time > 10
trigger1 = NumExplod(8032) > 0
flag = noFG
ignorehitpause = 1

;===============================
;paramétre spétial
;===============================
[State 3039]
type = VarSet
triggerall = stateno = 3039
trigger1 = Time = 0
value = 0
v = 48
;===============================
;paramétre posture et vitesse
;===============================
;déplasmen ver l avent
[State 3039, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
x = 60
y = 0
;===============================
;EXPLOD
;===============================
;COMOSE de feux
[State 3039,cosmos]
type = Explod
triggerall = Anim = 3031
trigger1 = animelem = 1
anim = 8004
ID = 8004
pos = 0,0
postype = p1
facing = 1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = -1
;===============================
;Si P1 est du côté droite
[State  3039, cervo]
type = Explod
triggerall = anim = 3031
trigger1 = p2stateno = 3043  ;[5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos = 320,0
postype = front
anim = 8040
ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700

;Si P1 est du côté gauche
[State  3039, cervo]
type = Explod
triggerall = anim = 3031
trigger1 = p2stateno = 3043  ;[5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X > 0
pos = 0,0
postype = back
anim = 8039
ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10000
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700
;===============================
;Si P1 est du côté droite
[State  3039, électic cérvo]
type = Explod
triggerall = anim = 3031
trigger1 = p2stateno = 3043  ;[5000,5300]
trigger1 = MoveContact = 1
;trigger1 = Pos X < 0
pos = 320,-0
postype = front
anim = 8016
;ID = 8032
scale = 1,1
;facing = 1
;vfacing = 1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700

;Si P1 est du côté gauche
[State  3039, électic cérvo]
type = Explod
triggerall = anim = 3031
trigger1 = p2stateno = 3043 ;[5000,5300]
trigger1 = MoveContact = 1
pos = -1,-0
postype = back
anim = 8015
scale = 1,1
sprpriority = 10001
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 40
supermovetime = 700
;===============================
;HIT ATTAQUE chop
;===============================
[State 3039, 3]
type = HitDef
triggerall = Anim = 3031
trigger1 = AnimElem = 1
attr = S, HA
hitflag = MAF
damage = 0
animtype = hard
pausetime = 0,130
sparkno = S7000
sparkxy = -30, -100
guard.sparkno = -1
hitsound = S3030,4
guard.pausetime = 1, 130
ground.slidetime = 0
ground.hittime  = 350
ground.velocity = 0
air.velocity = -0,0
p2facing = 1
givepower = -3000
p2stateno = 3043
;===============================
 ;ChangeState si p2 touché
[State 4001 , 3]
type = ChangeState
trigger1 = p2stateno = 3043
trigger1 = Time = 15
;trigger1 = AnimTime = 0
value = 3040
ctrl = 0

;===============================
 ;ChangeState si p2 manqué
[State 3035 , 11]
type = ChangeState
trigger1 = animtime = 0
value = 3033
ctrl = 0

;[State 4001 , 3]
;type = ChangeState
;trigger1 = AnimTime = 0
;value = 3040
;ctrl = 0

;===============================
;transition
;===============================
[Statedef 3040]
type = S
movetype = A
physics = S
anim = 3034
velset = 0,0
juggle = 0
ctrl = 0
sprpriority = -8

[State 3040]
type = AssertSpecial
trigger1 = NumExplod(8032) > 0
flag = noFG
ignorehitpause = 1

[State 3040]
type = PlayerPush
trigger1 = Anim = 3034
value = 0

[State 3040]
type = PosAdd
triggerall = P2BodyDist X = [0,50]
trigger1 = Time = 0
x = 150

[State 3040]
type = PosAdd
triggerall = P2BodyDist X = [51,100]
trigger1 = Time = 0
x = 200

[State 3040]
type = PosAdd
triggerall = P2BodyDist X >= 101
trigger1 = Time = 0
x = 250

[State 3040, batment Coeur Snd]
type = PlaySnd
trigger1 = Anim = 3034
trigger1 = Time
trigger1 = Time%80 = 0
value = 3100, 4
;===============================
;EXPLOD
;===============================
[State 3040, cosmos]
type = Explod
trigger1 = animelem = 1
anim = 7005
ID = 7005
pos = 0,0
postype = p1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
;===============================
;divert las
[State 3032, las]
type = Explod
trigger1 = AnimElem = 1
trigger1 = p2name!= "cassios"
pos = 220,-25
anim = 8101
ID = 4209
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 150
supermovetime = 700

;cassios las
[State 3032, las]
type = Explod
trigger1 = AnimElem = 1
trigger1 = p2name= "cassios"
pos = 220,-80
anim = 8101
ID = 4209
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 150
supermovetime = 700
;===============================
[State 3040 , allez ver illusion]
type = ChangeState
trigger1 = animtime = 0
value = 3041
ctrl = 1

;===============================
;illusion
;===============================
[Statedef 3041]
type = S
movetype = A
physics = N
anim = 199
velset = 0,0
ctrl = 0

;===============================
;SND
;===============================
[State 3041, insulte]
type = PlaySnd
trigger1 = Time = 0
value = 180, 0
channel = 0

[State 3041, Tux1]
type = PlaySnd
triggerall = Anim = 199
trigger1 = Time % 90 = 0
value = 5, 3
channel = 6

[State 3041, Tux2]
type = StopSnd
trigger1 = Time = 500
channel = 6
;===============================
;paramétre spétial
;===============================
[State -2, Invisible]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noFG
ignorehitpause = 1

[State 3041, Tux]
type = Turn
trigger1 = Time = 0
;===============================
;EXPLOD
;===============================
[State 3041 font]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = -40,-30
anim = 8066;8068
ID = 4208
scale = 2,2
postype = p2
sprpriority = 11
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 700
 ;=====================
;arbre au pabdu]
[State 3030, arbre au pabdu]
type = Explod
trigger1 =  Time =  1
trigger1 = Pos X   < 0
pos = -330,-25
anim = 8114
ID = 4209
postype = front
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 700
;==================================
;(arbre au pandu)
[State 3030, arbre au pabdu]
type = Explod
trigger1 = Time =  1
trigger1 = Pos X > 0
pos = -10,-25
anim = 8114
ID = 4209
facing = 1
;vfacing = -1
postype = back
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 700
;==================================
[State 3037, nuage droit]
type = Explod
trigger1 = Anim = 199
trigger1 = Pos X > 0
pos = 330,0
anim = 8082
ID = 4208
postype = left
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 700
;==================================
[State 3037, nuage gauche]
type = Explod
trigger1 = Anim = 199
trigger1 = Pos X < 0
pos = -320,0
anim = 8081
ID = 4208
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 700
;==================================
[State 3041, explod]
type = Explod
triggerall = NumExplod(8001) = 0
triggerall = stateno = 3041
trigger1 = Time = 0
anim = 8001
ID = 8001
pos = 0,0
postype = Left
sprpriority = 1
removetime = 57
bindtime = -1
ownpal = 1
removeongethit = 1
;==================================
;Cadavre
[State 3041, image]
type = Explod
trigger1 = Time = 30
anim = 4005
pos = -30,0
postype = p2
facing = -1
sprpriority = 2
removetime = -2
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0

;Cadavre
[State 3041, image]
type = Explod
trigger1 = Time = 40
anim = 4006
pos = -30,0
postype = p2
facing = -1
sprpriority = 2
removetime = 400
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

;Cadavre fin
[State 3041, image]
type = Explod
trigger1 = Time = 440
anim = 4007
pos = -30,0
postype = p2
facing = -1
sprpriority = 2
removetime = -2
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
;===================================
[State 3041, flamme au sol gauche premié plan]
type = Explod
trigger1 = Time =  30
trigger1 = Pos X  < 0
pos = -330,230
anim = 8033
ID = 4209
postype = front
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 450
supermovetime = 500
;==================================
[State 3041, flamme au sol droitpremié plan]
type = Explod
trigger1 =   Time =  30
trigger1 = Pos X > 0
pos = -150,230
anim = 8033
ID = 4209
postype = back
sprpriority = 9
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 450
supermovetime = 700
;====================================
[State 3041,arp flamme au sol gauche fon]
type = Explod
trigger1 =   Time =  30
trigger1 = Pos X  < 0
pos = -330,180
anim = 8033
ID = 4209
postype = front
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 450
supermovetime = 700
;==================================
[State 3041,arp flamme au sol droit fon]
type = Explod
trigger1 =   Time =  30
trigger1 = Pos X > 0
pos = -150,180
anim = 8033
ID = 4209
postype = back
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 450
supermovetime = 700
;==================================
 ;sol crane
;==================================
[State 3041, so l]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = -100,30
anim = 8113
ID = 4208
postype = p2
;scale = 2,1.5
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 700

[State 3041, sol 2]
type = Explod
trigger1 =  Time =  1
pos = -50,30
anim = 8113
ID = 4208
postype = p2
;scale = 2,1.5
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 700
;==================================
;solmagma  droit
;==================================
[State 3037, sol droit]
type = Explod
trigger1 = Time =  1
;trigger1 = Pos X > 0
pos = 100,-30
anim = 8070
ID = 4208
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 700
;==================================
[State 3037, sol santre]
type = Explod
trigger1 = Time =  1
pos = -100,-30
anim = 8070
ID = 4208
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 700
;==================================
[State 3037, sol gauche]
type = Explod
trigger1 = Time =  1
pos = -300,-30
anim = 8070
ID = 4208
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 700
;==================================
[State 3000, petit explosion de magma]
type = Explod
trigger1 = Time = 1
anim = 8038
ID = 8038
pos = 0,0
postype = p2
;facing = 1
;vfacing = 1
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
removeongethit = 1
supermovetime = 140
;==================================
[State 3000,explosion demagma 2]
type = Explod
trigger1 = Time = 1
anim = 8100
ID = 8100
pos = 0,0
postype = p2
;facing = 1
;vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
supermovetime = 140
;==================================
;cadavre  explod
;==================================
[State 3037, cadavre enpalé1]
type = Explod
trigger1 = Time = 1
;trigger1 = AnimElem = 1
;trigger1 = Pos X > 0
pos = 280,250
anim = 8112
ID = 8112
postype = left ;p2,front,back,left,right
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 700

[State 3041 , 2]
type = ChangeState
trigger1 = Time = 500
value = 0
ctrl = 1
;==================================
[State 3037, cadavre enpalé2]
type = Explod
trigger1 = Time = 1
;trigger1 = AnimElem = 1
;trigger1 = Pos X > 0
pos = 150,250
anim = 8117
ID = 8117
postype = left ;p2,front,back,left,right
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 700

[State 3041 , 2]
type = ChangeState
trigger1 = Time = 500
value = 0
ctrl = 1
;==================================
[State 3037, avant bra]
type = Explod
trigger1 = Time = 1
;trigger1 = AnimElem = 1
;trigger1 = Pos X > 0
pos = 45,250
anim = 8118
ID = 8117
postype = left ;p2,front,back,left,right
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 500
supermovetime = 700

[State 3041 , 2]
type = ChangeState
trigger1 = Time = 500
value = 0
ctrl = 1

;===========================================================================
;p2 inpact lasserre
;===========================================================================
[Statedef 3043]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0

[State 3043, 0]
type = ChangeAnim2
trigger1 = Time = 0
value = 4098

;[State 3043, 1]
;type = velset
;trigger1 = AnimElem = 1
;x = 0
;y = 0

[State 3043, 8]
type = ChangeState
trigger1 = Time = 245
value = 3044
ctrl = 0
;===========================================================================
;p2 brule
;===========================================================================
[Statedef 3044]
type = S
movetype = I
physics = N
velset = 0,0
ctrl = 0

[State 3044, 3]
type = ChangeAnim2
trigger1 = Time = 0
value = 4099

[State -2, Invisible]
type = AssertSpecial
trigger1 = Time < 490
flag = invisible

[State 3044 , 4]
type = ChangeState
trigger1 = Time = 500
value = 3045
ctrl = 0
;===========================================================================
;p2 fin
;===========================================================================
;p2 fin
[Statedef 3045]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0

[State 0, LifeSet]
type = LifeSet
trigger1 = Time = 0
value = -100000

[State 3045 , 4]
type = SelfState
trigger1 = Time = 0
value = 5000

;===========================================================
; Esmeralda's Memory
;===========================================================
[Statedef 4400]
type = S
movetype = A
physics = S
anim = 5301
poweradd = -3000
juggle = 5
ctrl = 0

[State 4400]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG
flag3 = nobardisplay

[State 4400]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 4400 , pause]
type = SuperPause
trigger1 = Time = 0
time = 1220
anim = -1
darken = 0
movetime = 1220

[State 4400, NoHit]
type = NotHitBy
trigger1 =anim = 5301
value = SCA

[State 4400, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4400, 1
channel = 0

[State 4400, esméralda]
type = Explod
trigger1 = Time = 180
;trigger1 = Pos X > 0
pos = - 40,-180
anim = 8122
ID = 4208
postype = p1 ;left p2,front,back,left,right
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 270
supermovetime = 270

[State 4400, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1160
trigger1 = Anim = 5301
value = 4400

[State 4400, Cosmos]
type = Explod
trigger1 = Anim = 4400
trigger1 = AnimElem = 4
anim = 904
pos = 0,2
postype = p1
sprpriority = -5
removetime = 35
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = -1

[State 4400, EXPLOSion consmos]
type = Explod
trigger1 = anim = 4400
trigger1 = AnimElem = 1
anim = 8108
pos = 0,10
postype = p1
sprpriority = 2
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = 760

[State 4400, 1]
type = PlaySnd
trigger1 = Anim = 4400;Elem= 1
trigger1 = AnimElem = 1
value = 2, 1

[State 4400, 1]
type = EnvShake
;triggerall = power >= 3000
trigger1 = AnimElem = 1
time = 50
freq = 60

[State 4400 , 11]
type = ChangeState
trigger1 = AnimTime = 0
value = 4401
ctrl = 1
;===========================================================
;preparation
;===========================================================
;Hô yoku ten shô
[Statedef 4401]
type = S
movetype = A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 30010
poweradd = -1500

;===============================
;paramétre spétial
;===============================

;SuperPause
[State 4401, SuperPause]
type = SuperPause
trigger1 = Time = 0
anim = -1
Time = 270
movetime = 270
darken = 1

;éffait rouge
[State 4401, 1]
type = AfterImage
trigger1 = Time = 0
time = 214
FrameGap = 1
palcolor = 256
PalBright =   0,  0,  0
PalContrast = 255,128,64
PalAdd  =   0,  0,  0
PalMul  =  1,1,1
length = 25
Trans = Add1
;===============================
;SND
;===============================
[State 4401, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3000, 4
channel = 0

[State 4401, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
trigger5 = AnimElem = 14
value = S0, 1

[State 4401, 1]
type = PlaySnd
trigger1 = AnimElem = 17
value = S0, 2

[State 4401, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S3030,5

[State 4401, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S4300, 2

[State 4401, 1]
type = PlaySnd
trigger1 = AnimElem = 15
value = S3, 1

;===============================
;EXPLOD
;===============================
;fon de feux
[State 4401 fontde feux]
type = Explod
trigger1 =  Time =  0
;trigger1 = Pos X > 0
pos = 0,0
anim = 8136
ID = 8136
scale = 2,2
postype = left
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = 1
removetime = 198
supermovetime = 700

[State 4401 , change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 4402
ctrl = 0

;===========================================================
;attaque
;===========================================================
[Statedef 4402]
type = S
movetype = A
physics = S
anim = 3036
velset = 0,0
poweradd = -1500
juggle = 0
ctrl = 0

[State 4402 , Cri de phénix]
type = PlaySnd
trigger1 = animelem = 1
value = 190, 0

;déplasmen ver l avent
[State 4402, VelAdd]
type = VelAdd
trigger1 = AnimElem = 5
x = 5
y = 0

 ;cosmos flam
[State 4402,cosmos]
type = Explod
triggerall = Anim = 3036
trigger1 = animelem = 1
anim = 8003
ID = 8002
pos = 0,0
postype = p1
facing = 1
sprpriority = -10
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = -1
ignorehitpause = 1

[State 4402, NoHit]
type = NotHitBy
triggerall = Anim = 3036
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
value = SCA

;FON
[State 4402  fon]
type = Explod
trigger1 = animelem = 1; anim = 3000
anim = 8025
ID = 8025
pos = -187,65
postype = right ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = 280
scale = 1.3, 1.3
sprpriority = -2
ownpal = 1
removeongethit = 1
supermovetime = 140

;petit explosion
[State 4402, petit explosion de magma]
type = Explod
trigger1 = animelem = 1
anim = 8038
ID = 8038
pos = 0,0
postype = p1
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
supermovetime = 140

;grand explosion
[State 4402,explosion demagma 2]
type = Explod
trigger1 = animelem = 1
anim = 8100
ID = 8100
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
supermovetime = 140

[State 4402, phoenix cosmo gauche]
type = Explod
trigger1 = animelem = 1
trigger1 = Pos X < 0
anim = 8032
ID = 8032
pos = -320,0
postype = front
sprpriority = -1
removetime = 126
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermovetime = 140

[State 4402, phoenix cosmo droit]
type = Explod
trigger1 = animelem = 1
trigger1 = Pos X > 0
anim = 8032
ID = 8032
pos = 0,0
postype = back
sprpriority = -1
removetime = 126
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermovetime = 140

[State 4402, 11]
type = ChangeState
trigger1 = animtime = 0
value = 4403
ctrl = 1

;===========================================================
;hit attaque
;===========================================================
[Statedef 4403]
type = S
movetype = A
physics = S
anim = 3037
velset = 0,0
poweradd = -1500
juggle = 0
ctrl = 0

[State 4403, NoHit]
type = NotHitBy
trigger1 = Anim = 3037
value = SCA

;cosmos flam
[State 4402,cosmos]
type = Explod
triggerall = Anim = 3037
trigger1 = animelem = 1
anim = 8005
ID = 8004
pos = 0,0
postype = p1
facing = 1
sprpriority = -10
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = -1

;déplasmen ver l avent
[State 4403, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
x = 40
y = 0

[State 4403, 3]
type = HitDef
trigger1 = anim = 3037
attr = S, HA
damage = 20
animtype = hard
pausetime = 0,130
sparkxy = 0, 0
sparkno = -1
guard.sparkno = -1
hitsound = s5,1
guard.pausetime = 1, 130
mindist = -100 ,-1
maxdist = -100,-1
;guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 130
ground.velocity = 0
air.velocity = -0,0
p2facing = 1
givepower = -3000
fall = 1
Palfx.time = ifelse(P2StateType = A , 40 ,30)
Palfx.add = 210,10,-200
Palfx.mul = 200,200,200
Palfx.sinadd = 60,40,50,20

[State 4403, Tux]
type = RemoveExplod
triggerall = NumExplod(8004) > 0
trigger1 = AnimTime = 0
ID = 8004

[State 4403, transition si il est touchez]
type = ChangeState
trigger1 = animtime = 0
trigger1 = MoveHit
value = 4404
ctrl = 0

[State 4403, Tux]
type = RemoveExplod
triggerall = NumExplod(8025) > 0
trigger1 = AnimTime = 0
trigger1 = !MoveHit
ID = 8025

[State 4403, Tux]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = !MoveHit
value = 0
ctrl = 1

;===========================================================
;fin de l'attaque
;===========================================================
[Statedef 4404]
type = S
movetype = A
physics = S
anim = 4403
velset = 0,0
juggle = 0
ctrl = 0

[State 4404 , explosion]
type = PlaySnd
trigger1 = P2StateNo = 5000
trigger1 = Time = 35
value = 190, 2

[State 4404, Cri de phénix]
type = PlaySnd
trigger1 = P2StateNo = 5000
trigger1 = Time = 15
value = 190, 0

[State 4404 , 3]
type = EnvShake
trigger1 = P2StateNo = 5000
trigger1 = Time = 35
time = 50

;traverser P2
[State 4404, PushOff]
type = PlayerPush
trigger1 = Anim = 3032
value = 0

[State 4404, TargetVelAdd]
type = TargetVelAdd
trigger1 = P2StateNo = 5000
trigger1 = animelem = 1 ;Time
trigger1 = Time%80 = 0
x = -1
y = -1
ID = -1

[State 4404, TargetVelAdd]
type = TargetVelAdd
trigger1 = P2StateNo = 5000
trigger1 = Time = 35
x = 1
y = 1
ID = -1

 ;arnaké la bar liv
[State 4404, Hurt]
type = TargetLifeAdd
trigger1 = P2StateNo = 5000
trigger1 = Time = 35
value = -50000

[State 4084, win fon]
type = Explod
trigger1 = P2StateNo = 5000
trigger1 = Time = 45
anim = 31000
pos = -320,0
postype = right
sprpriority = -3
removetime = 80
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.3, 1.3
supermovetime = 40

[State 4404,cosmos]
type = Explod
trigger1 = animelem = 1
anim = 8006
ID = 8006
pos = 0,0
postype = p1
facing = 1
sprpriority = -10
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = -1

[State 4404, explosion]
type = Explod
;trigger1 = MoveContact = 1
trigger1 = P2StateNo = 5000;[5000,5999]
trigger1 = Time = 35
pos = -30,-55
anim = 8121
ID = 4209
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = -2
supermovetime = 700

[State 4404, phénix de fin]
type = Explod
trigger1 = P2StateNo = 5000
trigger1 = Time = 15
pos = -100,-55
anim = 8120
ID = 4209
postype = p2
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 20
supermovetime = 700

[State 4404, Tux]
type = Turn
trigger1 = AnimElem = 5

[State 4404, Voice]
type = PlaySnd
trigger1 = Time = 127
value = 4400, 3
channel = 0

[State 4404 , 11]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===================================================================
 ;Ultime Phoenix
;===================================================================
[Statedef 4050]
type = S
movetype = I
physics = S
anim = 4000
poweradd = -3000
velset = 0,0
ctrl = 0

[State 4050, TuxSP]
type = SuperPause
trigger1 = Time = 0
time = 35
movetime = 35
darken = 0
anim = -1
sound = -1

[State 4050, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 8
channel = 0

[State 4050, Tux1]
type = PlaySnd
trigger1 = (Time != 0) && (Time % 45 = 0)
value = 5, 3

;bg flamme
[State 4050, explod]
type = Explod
triggerall = NumExplod(2101) = 0
triggerall = stateno = 999
trigger1 = Time = 0
anim = 2101
ID = 2101
pos = 0,0
postype = Left
sprpriority = -4
removetime = 60
bindtime = -1
ownpal = 1
removeongethit = 1

;sign
[State 4050, 0]
type = Explod
triggerall = NumExplod(1980) = 0
triggerall = stateno = 999
trigger1 = Time = 0
anim = 1980
ID = 1980
pos = 0,0
postype = p1
sprpriority = -3
removetime = 50
bindtime = -1
ownpal = 1
removeongethit = 1

[State 4050, EXPLOS Cosmos]
type = Explod
trigger1 = AnimElem = 1
anim = 8108
ID = 2002
pos = 0,10
postype = p1
sprpriority = 2
removetime = -2
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = 700

;7ème sens
[State 4050, 7sens]
type = Explod
triggerall = NumExplod(2104) = 0
triggerall = stateno = 999
trigger1 = Time = 0
anim = 2104
ID = 2104
pos = 0,0
postype = left
sprpriority = -2
removetime = 210
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

;[State 4050, armor]
;type = Explod
;trigger1 = Time = 56
;pos = 40,0
;postype = p1
;anim = 4001
;sprpriority = -3

[State 4050, effect]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
postype = p1
anim = 8513
sprpriority = -2

;cosmo standing remove
[State 4050,2]
type = RemoveExplod
trigger1 = 1
ID = 2

[State 4050, 0]
type = AssertSpecial
trigger1 = Time = [0,9000]
flag = nomusic
persistent = 1

[State 4050 , 3]
type = EnvShake
trigger1 = Time = 0
time = 400

[State 4050 , 7]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2, 1

[State 4050, Tux2]
type = EnvColor
trigger1 = AnimElem = 8, = 3
value = 255,255,255
under = 0
time = 5

[State 4050 , 12.1]
type = ChangeState
trigger1 = AnimTime = 0
value = 4054
ctrl = 0

;===========================================================
[Statedef 4054]
type = S
movetype = A
physics = S
anim = 8125
velset = 0,0
juggle = 0
ctrl = 0

[State 4054]
type = Explod
trigger1 = Time = 1
anim = 8515
pos = 0,-50
postype = p1
sprpriority = 2
removetime = 9
bindtime = -1
ownpal = 1
removeongethit = 0

[State 4054]
type = ChangeState
trigger1 = AnimTime = 0
value = 4055
ctrl = 0

;===========================================================
[Statedef 4055]
type = S
movetype = A
physics = S
anim = 8126
velset = 0,0
juggle = 0
ctrl = 0

[State 4050, Tux1]
type = PlaySnd
trigger1 = Time = 0
value = 5, 3

[State 4050, Tux2]
type = PlaySnd
trigger1 = Time = 0
value = 3000, 2

[State 4055, Explod]
type = Explod
trigger1 = Time = 9
anim = 8131
ID = 8131
pos = 0,-35
postype =back
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 80
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 4055, foudre asard]
type = Explod
;trigger1 = ProjContact = 1
trigger1 = Time = 1
pos = 80,-200
random = 5000,0
anim = 8034
ID = 8050
postype = p1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = 1
removetime = 130
supermovetime = 700

[State 4055, sol]
type = Explod
trigger1 = Time = 1
pos = 80,70
random = 200,0
anim = 8050
ID = 8050
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-3
removetime = 700
supermovetime = 700
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 4055, Projectile]
type = Projectile
trigger1 = AnimElem = 1
ProjID = 8129
projanim = 8129
projhitanim = -1
projscale = 1,1
projremove = 0
projremovetime = 100
velocity = 0,0
remvelocity = 0,0
accel = 0,0
velmul = 1,0
projhits = 1
projpriority = 1
projsprpriority = 3
projedgebound = 100
projstagebound = 100
projheightbound = -240,0
offset = 0,-50
postype = p1       
projshadow = 0,0,0
supermovetime = 7000
pausemovetime = 7000
attr = S,HP
hitflag = MAF
getpower = 0,0
givepower = 0,0
animtype = light
air.animtype = light
priority = 4,Hit
damage = 0,0
pausetime = 0,115
sparkno = -1
sparkxy = 0,0
hitsound = 0,0
guardsound = 0,0
ground.type = High
air.hittime = 20
ground.hittime = 150
ground.velocity = 0,0
air.velocity = 0,0
;=============================
;si touchez
[State 4055 , 11]
type = ChangeState
trigger1 = Time = 100
trigger1 = p2stateno = [5000,5300];trigger1 = ProjContact8129 = 1, < 100
value = 4056
ctrl = 0
;=============================
;si manqué
[State 4055 , 11]
type = ChangeState
trigger1 = Time = 100
trigger1 = ProjContact8129 = 0, < 100
value = 4060
ctrl = 0

;===========================================================
;p2 state 1
[Statedef 4082]
type = S
movetype = I
physics = S
ctrl = 0
;anim = 4082

[State 4082, 0]
type = ChangeAnim2
trigger1 = Time = 0
value = 4082

[State 4082 , 11]
type = ChangeState
trigger1 = Time = 150
value = 4081
ctrl = 0

;===========================================================
;p2 state 2 décolage
[Statedef 4081]
type = S
movetype = I
physics = S
ctrl = 0
;anim = 4081

[State 4082, 0]
type = ChangeAnim2
trigger1 = Time = 0
value = 4081

[State 4082, 1]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = -10

[State 4082 , 11]
type = ChangeState
trigger1 = Time = 100
value = 4083
ctrl = 0

;===========================================================
;p2 state 3 dans les étoille
[Statedef 4083]
type = A
movetype = H
physics = N
velset = 0,0

[State 4083, 0]
type = ChangeAnim2
trigger1 = Time = 0
value = 4083

[State 4083, 1]
type = PosSet
trigger1 = AnimElem = 1
x = 0
y = 200

[State 4083, 1]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = -1

[State 4083, palfx]
type = PalFX
trigger1 = Time = 0
time = 279
add = 0,0,0
sinadd = 255,255,255,1000

[State 4083, LifeSet]
type = LifeSet
trigger1 = Time = 279
value = 0

[State 4083]
type = AssertSpecial
trigger1 = Time >= 279
flag = invisible
flag2 = noshadow

[State 4083]
type = VelSet
trigger1 = Time = 279
y = 10000

[State 4083]
type = VarSet
trigger1 = Time = 279
v = 58
value = 1

[State 4083]
type = SelfState
trigger1 = Time = 980
value = 5150

;===========================================================
;foncé
[Statedef 4056]
type = S
movetype = A
physics = S
anim = 8127
velset = 0,0
juggle = 0
ctrl = 0

[State 4056, Tux0]
type = Turn
trigger1 = Time = 0
trigger1 = P2BodyDist X <= 0

[State 4056, Tux1]
type = PlaySnd
trigger1 = Time = 0
value = 5, 3

[State 4056, Tux2]
type = PlaySnd
trigger1 = Time = 30
value = 3000, 2

[State 4056, afterimage]
type = AfterImage
trigger1 = AnimElem = 2
time = 30
palbright = 50,50,50
palcontrast = 255,128,64
PalMul = 1,1,1
palpostbright = 0,0,0
PalAdd = 0, 0, 0
trans = Add1

[State 4056, PlayerPush]
type = PlayerPush
trigger1 = AnimElem = 2
value = 0

[State 4056, 1]
type = PlaySnd
trigger1 = MoveContact = 1
value = S1, 6
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 4056, voix]
type = PlaySnd
trigger1 = Time = 0
value = 4050, 0
channel = 0

[State 4056, fxf]
type = PlaySnd
trigger1 = Time = 0
value = S9, 2
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 4056, 1]
type = VelSet
trigger1 = AnimElem = 2
x = 70
y = 0

[State 4056, 2]
type = HitDef
trigger1 = 1
hitflag = MAF
attr = S,HT
animtype  = Medium
damage = 0
guardflag = MA
pausetime = 0,12
mindist = -1 ,-1
maxdist = -1,-1
snap = 15,0
sparkno =S500000
guard.sparkno = 0
sparkxy = 0,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0,0
p2stateno = 4082

[State 4056 , 11]
type = ChangeState
trigger1 = MoveContact = 1
trigger1 = p2stateno = [4082,4083]
value = 4057
ctrl = 0

[State 4056 , 11]
type = ChangeState
trigger1 = AnimTime = 0
value = 4060
ctrl = 0

;===========================================================
;décolage
[Statedef 4057]
type = S
movetype = A
physics = S
sprpriority = -2
anim = 8128
velset = 0,0
juggle = 0
ctrl = 0

[State 4057, Tux1]
type = PlaySnd
trigger1 = (Time != 0) && (Time % 45 = 0)
value = 5, 3

[State 4057, Tux2]
type = PlaySnd
trigger1 = Time = (Time != 0) && (Time % 60 = 0)
value = 3000, 2
channel = 4

[State 4057, Tux3]
type = PlaySnd
trigger1 = Time = ((Time % 60 = 0) + 90)
value = 3000, 2
channel = 5

[State 4057, BindToTarget]
type = BindToTarget
triggerall = P2Name != "cassios"
trigger1 = 1
time = 1
ID = -1
pos = 1,0,Foot

[State 4057, BindToTarget]
type = BindToTarget
triggerall = P2Name = "cassios"
trigger1 = 1
time = 1
ID = -1
pos = -10,-20,Foot

[State 4057, 1]
type = PlaySnd
trigger1 = Time = 150
value = 12, 7
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 4057,fxfd]
type = PlaySnd
trigger1 = Time = 150
value = S4300, 2
channel = -1
freqmul = 1.0
loop = 0
pan = 0

;Bg effect flache de lumier
[State 4057, 2]
type = BGPalfx
;trigger1 = Time = 10
trigger1 = AnimElem = 3
ignorehitpause = 1
time = 20
mul =  255,255,255
add =  255,255,255
invertall = -1

[State 4057, PlayerPush]
type = PlayerPush
trigger1 = AnimElem = 2
value = 0

[State 4057, afterimage]
type = AfterImage
trigger1 = AnimElem = 3
time = 30
palbright = 50,50,50
palcontrast = 255,128,64
PalMul = 1,1,1
palpostbright = 0,0,0
PalAdd = 0, 0, 0
trans = Add1

;brat
[State 4057, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8130
ID = 8130
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = 200
scale = 1,1
sprpriority = 6
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 4057, pousier]
type = Explod
trigger1 = AnimElem = 4
anim = 8137
ID = 2002
pos = 0,10
postype = p1
sprpriority = 2
bindtime = 1
ownpal = 1
removeongethit = 1
supermovetime = 700

[State 4057, foudre asard]
type = Explod
trigger1 = Time = 25 = 0
pos = 80,-200
random = 5000,0
anim = 8034
ID = 8050
postype = p1
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = 1
removetime = 130
supermovetime = 700

[State 4057, sol]
type = Explod
trigger1 = Time%25= 0
pos = 80,300
random = 200,0
anim = 8050
ID = 8050
postype = left
facing = 1
vfacing = 1
bindtime = 1
vel = 0,-3
removetime = 80
supermovetime = 700
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1

[State 4057, EXPLOS Cosmos]
type = Explod
trigger1 = AnimElem = 1
anim = 8143
ID = 2002
pos = 0,10
postype = p1
sprpriority = -3
removetime = 130
bindtime = -1
ownpal = 1
removeongethit = 1
supermovetime = 700

[State 4057, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = 70
y = 0

[State 4057, 1]
type = VelSet
trigger1 = Time = 150
x = 0
y = -20

[State 4057, 10]
type = AssertSpecial
trigger1 = time>= 200
flag = invisible

[State 4057, 1]
type = VelSet
trigger1 = time>= 200
x = 0
y = 0

[State 4057 , 11]
type = ChangeState
trigger1 = AnimTime = 0
value = 4058;5030
ctrl = 1

;===========================================================
;dans les étoille
[Statedef 4058]
type =A
movetype =I
physics = S
sprpriority = -1
anim = 8132
velset = 0,0
juggle = 0
ctrl = 0

[State 4058, Tux] 
type = AssertSpecial
trigger1 = 1
flag = noFG
flag2 = nokoslow

[State 4058, voix]
type = PlaySnd
trigger1 = Time = 30
value = 4050, 1
channel = 0

[State 4058, 1]
type = PosSet
triggerall = P2Name != "cassios"
trigger1 = AnimElem = 1
x = 0
y = 200

[State 4058, 1]
type = PosSet
triggerall = P2Name = "cassios"
trigger1 = AnimElem = 1
x = -8
y = 200

[State 4058, 1]
type = VelSet
trigger1 = AnimElem = 1
x = 0
y = -1

[State 4058, 1]
type = VelSet
trigger1 = time>= 200
x = 0
y = -1

[State 4058, 1]
type = PlaySnd
trigger1 = Time = 15
value = S5, 4
channel = -1
freqmul = 1.0
pan = 0

[State 4058, StopSnd]
type = StopSnd
trigger1 = Time = 279
channel = -1

[State 4058 comet]
type = Explod
trigger1 =  Time =  1
pos = 0,90
anim = 8135
ID = 8135
scale = 1,1
postype = p1
sprpriority = 6
ignorehitpause = 3
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = -1
removetime = 300
supermovetime = 700

;fon de feux
[State 4058 fontde feux]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = 0,0
anim = 8136
ID = 8136
scale = 2,2
postype = left
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = -1
removetime = 300
supermovetime = 700

;rey1
[State 4058 rey1]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = 0,0
anim = 8134
ID = 8134
scale = 2,2
postype = left
sprpriority = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = -1
removetime = 300
supermovetime = 700

;rey2
[State 4058 rey2]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = 0,0
anim = 8134
ID = 8134
scale = 2,2
postype = left
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = -1
removetime = 300
supermovetime = 700

[State 4058, palfx]
type = PalFX
trigger1 = Time = 0
time = 279
add = 0,0,0
sinadd = 255,255,255,1000

[State 4058 font]
type = Explod
trigger1 =  Time =  1
;trigger1 = Pos X > 0
pos = 0,50
anim = 8133
ID = 8133
scale = 1,1
postype = left
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
removeongethit = -1
removetime = 300
supermovetime = 700 

[State 4058, explosion]
type = Explod
trigger1 = Time = 279
anim = 31000
pos = -160,-240
postype = back
sprpriority = -2
removetime = 21
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
scale = 2, 2
supermovetime = 21

[State 4058]
type = PlaySnd
trigger1 = Time = 279
value = 4050, 2

[State 4058, Tux] 
type = AssertSpecial
trigger1 = Time >= 279
flag = invisible

[State 4058]
type = VelSet
trigger1 = Time = 279
y = 10000

[State 4058]
type = PosSet
trigger1 = Time = 300
y = 0

[State 4058 , 11]
type = ChangeState
trigger1 = Time = 300
value = 4059
ctrl = 0

;===========================================================
[Statedef 4059]
type =A
movetype =A
physics = N
anim = 8138
velset = 0,0
juggle = 0
ctrl = 0

[State 4059]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = nomusic
flag3 = timerfreeze

[State 4059, armor]
type = Explod
trigger1 = Time = 0
pos = 0,10
postype = p1
anim = 4002
sprpriority = -3
ownpal = 0

[State 4083, palfx]
type = PalFX
trigger1 = Time = 0
time = 75
add = 0,0,0
sinadd = 255,255,255,1000

[State 4059]
type = PlaySnd
trigger1 = Time = 60
value = 5, 1

[State 4059]
type = PlaySnd
trigger1 = Time = 60
value = 190, 4

[State 4059]
type = PlaySnd
trigger1 = Time = 100
value = 4050, 4

[State 4059]
type = Explod
trigger1 = Time = 330
anim = 8514
pos = 160,230
postype = back
sprpriority = -2
removetime = 1012
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 4059]
type = ChangeState
trigger1 = Time = 680
value = 0
ctrl = 1

;===========================================================
;fail
[Statedef 4060]
type = S
movetype = I
physics = S
anim = 4301
juggle = 0
velset = 0,0
ctrl = 0

[State 4060]
type = EnvShake
trigger1 = Time = 0
time = 60

[State 4060, NoHit]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 100

[State 4060]
type = SuperPause
trigger1 = Time = 0
time = 226
anim = -1
sound = S2,1
darken = 1
movetime = 226

[State 4060]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2

[State 4060]
type = PlaySnd
trigger1 = AnimElem = 8
value = 4300, 2

[State 4060]
type = PlaySnd
trigger1 = AnimElem = 10
value = 190, 0

[State 4060]
type = Explod
trigger1 = AnimElem = 10
anim = 4305
pos = 0,0
postype = p1
sprpriority = -3
supermovetime = 80
removetime = 80
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 4060]
type = Explod
trigger1 = AnimElem = 23
anim = 8144
pos = 0,0
postype = p1
sprpriority = -3
supermovetime = -1
removetime = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 4060]
type = ChangeState
trigger1 = AnimTime = 0
value = 4061
ctrl = 0

;----------------------------------------------------------------
[Statedef 4061]
type = S
movetype = I
physics = S
anim = 4302
juggle = 0
velset = 0,0
ctrl = 0

[State 4061]
type = SuperPause
trigger1 = Time = 0
time = 10
anim = -1
sound = S2,4
darken = 1
movetime = 10

[State 4061]
type = ChangeState
trigger1 = AnimTime = 0
value = 4062
ctrl = 0

;---------------------------------------------------------------
[Statedef 4062]
type = S
movetype = I
physics = S
anim = 4304
juggle = 0
velset = 0,0
ctrl = 0

[State 4062]
type = ChangeState
trigger1 = Time = 10
value = 50
ctrl = 1


;===================================================================
 ;Phoenix no Ken by Tux
;===================================================================
[Statedef 3100]
type = S
movetype = A
physics = S
anim = 3100
poweradd = -3000
velset = 0,0
ctrl = 0

[State 3100, 1]
type = SuperPause
trigger1 = Time = 0
time = 120
anim = -1
sound = -1
darken = 1
movetime = 120

[State 3100, Steam1]
type = Explod
trigger1 = TimeMod= 4,0 
trigger1 = Time = 0
anim = 4
pos = 0, -50 
postype = p1
bindtime = -1 
vel = 0, -2 
random = 40, 100 
removetime = -2
supermovetime = 99999
ontop = 1
ownpal = 1
shadow = 0,0,0
removeongethit = 0

[State 3100, Steam2]
type = Explod
trigger1 = TimeMod= 4,0 
trigger2 = TimeMod= 2,0
trigger1 = Time = 0
anim = 4
pos = 0, -50 
postype = p1
bindtime = -1 
vel = 0, -4 
random = 50, 100 
removetime = -2
supermovetime = 99999
ontop = 1
ownpal = 1
shadow = 0,0,0
removeongethit = 0

[State 3100, Steam3]
type = Explod
trigger1 = TimeMod= 4,0 
trigger1 = Time = 0
anim = 4
pos = 0, -50 
postype = p1
bindtime = -1 
vel = 0, -4 
random = 20, 100
removetime = -2 
supermovetime = 99999
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3100, Steam4]
type = Explod
trigger1 = TimeMod= 4,0 
trigger1 = Time = 0
anim = 4
pos = 0, 0 
postype = p1
bindtime = -1 
vel = 0, -4 
random = 120, 10
removetime = -2
supermovetime = 99999
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 3100, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100, 0
channel = 0

[State 3100, 3]
type = Explod
trigger1 = AnimElem = 1
ID = 20000
anim = 20000
postype = back
sprpriority = -5
removetime = 120
supermovetime = 120
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3100, 4]
type = Explod
trigger1 = AnimElem = 1
ID = 6000
anim = 6000
postype = back
pos = 200,200
sprpriority = -4
removetime = 120
supermovetime = 120
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 3100, 5]
type = VelSet
trigger1 = AnimElem = 2
x = 55

[State 3100, 6]
type = AfterImage
trigger1 = AnimElem = 2
time = 10
FrameGap = 1
length = 20
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 3100, 7]
type = HitDef
triggerall = P2StateType = S
trigger1 = AnimElem = 3
ID = 3100
attr = S, HA
damage = 0
priority = 4
pausetime = 0,0
sparkno = -1
hitsound = S3100,3
animtype = Hard
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -5,0
p1stateno = 3101
p2stateno = 3102

[State 3100, 8]
type = VelSet
triggerall = !MoveHit
;trigger1 = AnimElem = 4
trigger1 = p2dist x <= 60
x = 0

[State 3100, 9]
type = PlaySnd
trigger1 = AnimElem = 14
value = 0, 2

[State 3100, 10]
type = ChangeState
triggerall = !MoveHit
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===================================================================
[Statedef 3101]
type = S
movetype = A
physics = S
ctrl = 0

[State 3101, 1a]
type = ChangeAnim
triggerall = Time = 0
trigger1 = abs(EnemyNear, Const(size.mid.pos.y)) < 70
trigger2 = p2name = "shiryu"
trigger3 = p2name = "shiryu2"
trigger4 = p2name = "shiryu3"
trigger5 = p2name = "shiryuD"
trigger6 = p2name = "shiryuC"
trigger7 = p2name = "shiryuT"
trigger8 = p2name = "shiryuL"
trigger9 = p2name = "ankokuDragon"
value = 3101

[State 3101, 1b]
type = ChangeAnim
triggerall = abs(EnemyNear, Const(size.mid.pos.y)) >= 70 && abs(EnemyNear, Const(size.mid.pos.y)) < 100
triggerall = p2name != "shiryu"
triggerall = p2name != "shiryu2"
triggerall = p2name != "shiryu3"
triggerall = p2name != "shiryuD"
triggerall = p2name != "shiryuT"
triggerall = p2name != "shiryuC"
triggerall = p2name != "shiryuL"
triggerall = p2name != "ankokuDragon"
trigger1 = Time = 0
value = 3102

[State 3101, 1c]
type = ChangeAnim
triggerall = abs(EnemyNear, Const(size.mid.pos.y)) >= 100
trigger1 = Time = 0
value = 3103

[State 3101, 2]
type = TargetBind
trigger1 = Time = 0
pos = 45,0

[State 3101, 3a]
type = Explod
triggerall = p2name != "skeleton"
triggerall = p2name != "skeletons"
triggerall = anim = 3101
trigger1 = Time = 0
ID = 3104
anim = 3104
pos = 0,0
postype = p1
sprpriority = 5
removetime = 280
supermovetime = 280
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0

[State 3101, 3b]
type = Explod
triggerall = p2name != "skeleton"
triggerall = p2name != "skeletons"
triggerall = anim = 3102
trigger1 = Time = 0
ID = 3104
anim = 3104
pos = 6,-9
postype = p1
sprpriority = 5
removetime = 280
supermovetime = 280
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0

[State 3101, 3c]
type = Explod
triggerall = p2name != "skeleton"
triggerall = p2name != "skeletons"
triggerall = anim = 3103
trigger1 = Time = 0
ID = 3104
anim = 3104
pos = 0,-27
postype = p1
sprpriority = 5
removetime = 280
supermovetime = 280
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0

[State 3101, 4]
type = Explod
triggerall = p2name != "skeleton"
triggerall = p2name != "skeletons"
trigger1 = Time = 0
ID = 3105
anim = 3105
pos = 0,0
postype = p1
sprpriority = 5
removetime = 280
supermovetime = 280
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0

[State 3101, 5]
type = EnvColor
trigger1 = Time = 0
value = 255,0,0
under = 0
time = 7

[State 3101, 6]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 3101, 7]
type = PlaySnd
triggerall = Time = 42
trigger1 = var(2) = [0,49]
value = 3100, 1
channel = 0

[State 3101, 8]
type = PlaySnd
triggerall = Time = 42
trigger1 = var(2) = [50,99]
value = 3100, 5
channel = 0

[State 3101, 9]
type = ChangeState
triggerall = Time = 280
trigger1 = var(2) = [0,49]
value = 3103
ctrl = 0

[State 3101, 10]
type = ChangeState
triggerall = Time = 240
trigger1 = var(2) = [50,99]
value = 3103
ctrl = 0

;===================================================================
[Statedef 3102]
type = S
movetype = H
physics = S
ctrl = 0

[State 3102, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3107

;--------------------------

[State 3102, 2]
type = PosAdd
triggerall = Time = 1
trigger1 = name = "seiya"
trigger2 = name = "seiya2"
trigger3 = name = "seiya3"
trigger4 = name = "seiyaD"
trigger5 = name = "seiyaTM"
trigger6 = name = "seiyaC"
trigger7 = name = "seiyaS"
trigger8 = name = "seiyaO"
trigger9 = name = "ikki"
trigger10 = name = "ikkiE"
trigger11 = name = "ikki2"
trigger12 = name = "ikki3"
trigger13 = name = "ikkiD"
trigger14 = name = "ikkiT"
trigger15 = name = "ikkiC"
trigger16 = name = "ikkiL"
trigger17 = name = "ankokuPegasus"
trigger18 = name = "ankokuPhoenix"
trigger19 = name = "phoenixShadow"
trigger20 = name = "sho"
trigger21 = name = "algethi"
trigger22 = name = "algethiS"
trigger23 = name = "algethiH"
trigger24 = name = "aldebaran"
trigger25 = name = "fenrir"
x = -10

[State 3102, 2]
type = PosAdd
triggerall = Time = 1
trigger1 = name = "seiyaT"
trigger2 = name = "jabu"
trigger3 = name = "cassios"
trigger4 = name = "shaina"
trigger5 = name = "dio"
trigger6 = name = "dioS"
trigger7 = name = "dioH"
x = 10

;--------------------------

[State 3102, 2]
type = PosAdd
triggerall = Time = 1
trigger1 = name = "tethys"
y = -20

;--------------------------

[State 3102, 3]
type = ChangeAnim2
triggerall = Time != 0
trigger1 = name = "cassios"
trigger2 = name = "aldebaran"
value = anim

;--------------------------

[State 3102, 4]
type = ChangeState
trigger1 = Time = 280
value = 3104
ctrl = 0

;===================================================================
[Statedef 3103]
type = S
movetype = I
physics = S
ctrl = 0
anim = 3106

[State 3103, 1]
type = PlaySnd
trigger1 = Time = 0
value = 3100, 3

[State 3103, 2]
type = TargetLifeAdd
trigger1 = Time = 0
value = -1000000000
kill = 1
ID = 3100

[State 3103, 3]
type = Explod
triggerall = p2name != "skeleton"
triggerall = p2name != "skeletons"
trigger1 = Time = 0
ID = 8106
anim = 8106
pos = -25, ifelse (abs(EnemyNear, Const(size.mid.pos.y)) >= 100,-110,-80)
postype = p2
sprpriority = 5
supermovetime = 8
removetime = 8
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
scale = 0.5,0.5

[State 3103, 4]
type = Explod
triggerall = p2name != "skeleton"
triggerall = p2name != "skeletons"
trigger1 = Time = 0
ID = 7070
anim = 7070
pos = 37,0
postype = p1
sprpriority = -1
supermovetime = -1
removetime = -1
ignorehitpause = 1
ownpal = 0
bindtime = 1
persistent = 1

[State 3103, 5]
type = Explod
triggerall = p2name != "skeleton"
triggerall = p2name != "skeletons"
trigger1 = Time = 6
ID = 7071
anim = 7071
pos = -45,0
postype = p1
sprpriority = -1
supermovetime = -1
removetime = -1
ignorehitpause = 1
ownpal = 0
bindtime = 1
persistent = 1

[State 3103, 6]
type = TargetDrop
trigger1 = AnimTime = 0
keepone = 0

[State 3103, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 3106
ctrl = 0

;============================================
[Statedef 3104]
type = A
movetype = H
physics = N
ctrl = 0
velset = -10,0.35

[State 3104, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5070

[State 3104, 2]
type = ScreenBound
trigger1 = 1
value = 0

[State 3104, 3]
type = ChangeState
trigger1 = Time = 10
value = 3105
ctrl = 0

;============================================
[Statedef 3105]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 3105, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5080

[State 3105, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3105, 3]
type = ScreenBound
trigger1 = 1
value = 0

[State 3105, 4]
type = PlaySnd
trigger1 = Time = 0
value = F7, 2

[State 3105, 5]
type = SelfState
trigger1 = Time = 400
value = 5150
ctrl = 0

;============================================
[Statedef 3106]
type = A
movetype = I
physics = A
ctrl = 0
velset = 0,0
anim = 105

[State 3106, 1]
type = AfterImage
trigger1 = Time = 0
time = 10
FrameGap = 2
length = 10
PalBright = 0,0,0
PalContrast = 128,128,128
PalAdd = 0,0,0
PalMul = 1,1,1
Trans = Add1

[State 3106, 2]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x) * 1.5
y = const(velocity.run.back.y)

[State 3106, 3]
type = ChangeState
trigger1 = Time = 10
;trigger1 = Vel Y > 0
;trigger1 = Pos Y >= 0
value = 3107
ctrl = 0

;============================================
[Statedef 3107]
type = S
movetype = I
physics = S
ctrl = 0
anim = 47
velset = 0,0

[State 3107, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3107, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = S3, 1
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 3107, 3]
type = Explod
trigger1 = Time = 2
pos = -5,-2
anim = 7080

[State 3107, 4]
type = ChangeState
trigger1 = Time = 7
value = 3108
ctrl = 0

;============================================
[Statedef 3108]
type = S
movetype = I
physics = S
ctrl = 0
anim = 3108
velset = 0,0

[State 3108, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3108, 2]
type = Explod
trigger1 = Time = 30
anim = 7072
ID = 7072
postype = p2
pos = 25,0
bindtime = -1
removetime = -1
sprpriority = -1

[State 3108, 3]
type = ChangeAnim
trigger1 = Time = 70
value = 186

[State 3108, 4]
type = PlaySnd
trigger1 = Time = 70
value = 3100, 2
channel = 0

[State 3108, 5]
type = AllPalFX
trigger1 = Time = 380
time = 5
add = 0,0,0
sinadd = -255,-255,-255,10

[State 3108, 6]
type = BGPalFX
trigger1 = Time = 380
time = 5
add = 0,0,0
sinadd = -255,-255,-255,10

[State 3108, 7]
type = AllPalFX
trigger1 = Time = 385
time = 1000
add = -255,-255,-255

[State 3108, 8]
type = BGPalFX
trigger1 = Time = 385
time = 1000
add = -255,-255,-255

[State 3108, 9] 
type = AssertSpecial
trigger1 = Time >= 385
flag = NoBarDisplay

[State 3108, 10]
type = Explod
trigger1 = Time = 400
ID = 2200
anim = 2200
pos = 0,0
postype = back
sprpriority = 5
removetime = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
ontop = 1

[State 3108, 11]
type = ChangeState
trigger1 = Time = 400
value = 0
ctrl = 1

;===================================================================
; Renaissance
;===================================================================
;state of renaissance
[Statedef 4301]
type = S
movetype = I
physics = S
anim = 4300
poweradd = -1000
juggle = 5
velset = 0,0
ctrl = 0

[State 4301, Tux1]
type = VarSet
trigger1 = Time = 0
v = 50
value = RoundNo

[State 4301, Tux2]
type = VarSet
trigger1 = Time = 0
v = 48
value = 0

[State 4301, Tux3]
type = ScreenBound
trigger1 = (300 - Time)
value = 0
movecamera = 0,0

[State 4301, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4301, Tux3]
type = SuperPause
trigger1 = P2MoveType != A
time = (300 - Time)
anim = -1
sound = -1
darken = 1
movetime = (300 - Time)
persistent = 0

;armure explod
[State 4301, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4300, 1

[State 4301, 1]
type = VelSet
trigger1 = AnimElem = 6
x = -25

[State 4301, Tux4]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1, 2

[State 4301, SND]
type = PlaySnd
trigger1 = AnimElem = 20
value = 190, 0

[State 4301, atmosphere Flamme]
type = Explod
trigger1 = animelem = 20
anim = 4107
pos = -320,0
postype = right
sprpriority = 9998
supermovetime = 128
removetime = 128
ignorehitpause = 0
ownpal = 1
bindtime = -1
persistent = 0
scale = 1.3, 1.3

[State 4301, 1]
type = VelSet
trigger1 = AnimElem = 21
x = 0

;renaissance
[State 4301, 2]
type = PlaySnd
trigger1 = AnimElem = 22
value = 4300, 2
channel = 1

[State 4301 , 3]
type = LifeAdd
trigger1 = AnimElem = 22
value = 500

[State 4301 , Flash]
type = EnvColor
trigger1 = AnimElem = 23
value = 200,130,0
time = 5

[State 4301, Exp]
type = Explod
trigger1 = AnimElem = 23
anim = 8511
ID = 8511
pos = 0,0
postype = p1
sprpriority = -2
supermovetime = 107
removetime = 107
ignorehitpause = 1
ownpal = 1
bindtime = 1

[State 4301, Exp]
type = Explod
trigger1 = AnimElem = 23
anim = 8512
ID = 8512
pos = 100,-50
postype = p1
sprpriority = 3
supermovetime = 107
removetime = 107
ignorehitpause = 1
ownpal = 1
bindtime = 1

[State 4301, Vel]
type = VelSet
trigger1 = Time >= 189
x = 1

[State 4301, 2]
type = PlaySnd
trigger1 = AnimElem = 23
value = 4300, 3
channel = 0

[State 4301]
type = Explod
trigger1 = animelem = 32
anim = 8510
pos = 0,0
postype = p1
sprpriority = 3
supermovetime = 20
removetime = 20
ignorehitpause = 0
ownpal = 1
bindtime = -1

[State 4301]
type = VarSet
trigger1 = AnimTime = 0
var(11) = 2

[State 4301, Stop]
type = StopSnd
trigger1 = AnimTime = 0
channel = 1

[State 4301 , 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------

[State -2, Display]
type = DisplayToClipboard
trigger1 = 1
text = "var(11) = %d"
params = var(11)

[State -2, Get P2 Distance]
type = VarSet
trigger1 = p2dist x != 0
var(11) = floor(p2dist x)

[State -2, ScreenBound]
type = ScreenBound
trigger1 = stateno = 5150
value = 0
movecamera = 0,0

[State -2, Reprise]
type = AssertSpecial
trigger1 = var(11) < 2          
trigger1 = enemy,life > 0
flag = noko                     
ignorehitpause = 1

[State -2, Reprise]
type = VarSet
trigger1 = life < 1 && var(11) = 0
var(11) = 1                     

[State -2, Reprise]         
type = VelAdd
triggerall = pos y < 0
trigger1 = var(11) = 1
y = 0.5                    

[State -2, Reprise]
type = ChangeState
triggerall = var(11) = 1
triggerall = stateno = 5110
trigger1 = Time = 10
value = 4301

[State -2, Moves List]
type = Helper
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

[State -2, Evil Version]
type = RemapPal
triggerall = name = "ikki" && palno = 10
trigger1 = 1
source = 1,1
dest = 1,13

[State -2, Evil Version]
type = RemapPal
triggerall = name = "ikki" && palno = 11
trigger1 = 1
source = 1,1
dest = 1,16

[State -2, Evil Version]
type = RemapPal
triggerall = name = "ikki" && palno = 12
trigger1 = 1
source = 1,1
dest = 1,19

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

[State -2, 7th Sense Right]
type = Explod
triggerAll = var(51) = 1
trigger1 = stateno = 999
trigger1 = Time = 15
anim = 7099
pos = 65,75
postype = left
sprpriority = -5
ownpal = 1
removeongethit = 0
persistent = 0

[State -2, 7th Sense Left]
type = Explod
triggerAll = var(51) = 2
trigger1 = stateno = 999
trigger1 = Time = 15
anim = 7099
pos = -65,75
postype = right
sprpriority = -5
ownpal = 1
removeongethit = 0
persistent = 0

[State -2, 7th Sense]
type = VarSet
triggerall = var(8) = 1
trigger1 = power = 0
var(8) = 0

[State -2, 7th Sense]
type = PowerAdd
trigger1 = var(8) = 1
value = -5

[State -2, 7th Sense]
type = PalFX
triggerall = StateNo != [3149,3154]
triggerall = var(8) = 1
triggerall = power >= 1
triggerall = life >= 1
trigger1 = anim != 6666666
trigger1 = animelem = 2
time = 200
add = 5,5,5
sinadd = 200,200,10,4

[State -2, 7th Sense]
type = AttackMulSet
triggerall = var(8) = 1
triggerall = power >= 1
triggerall = life >= 1
trigger1 = anim != 6666666
trigger1 = animelem = 2
value = 2

[State -2, 7th Sense]
type = AttackMulSet
triggerall = var(8) != 1
triggerall = var(8) = 0
triggerall = power < 1
triggerall = life >= 1
trigger1 = anim != 6666666
trigger1 = animelem = 2
value = 1

;===============================
;Hit Voices
;===============================
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = Time = 1
triggerall = stateno = 5000
trigger1 = Anim = 5000
trigger2 = Anim = 5001
trigger3 = Anim = 5010
trigger4 = Anim = 5011
value = 10, 0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = Time = 1
triggerall = stateno = 5010
trigger1 = Anim = 5020
trigger2 = Anim = 5021
value = 10, 0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = Time = 1
triggerall = stateno = 5020
trigger1 = Anim = 5000
trigger2 = Anim = 5001
trigger3 = Anim = 5010
trigger4 = Anim = 5011
value = 10, 0

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = Time = 1
triggerall = stateno = 5000
trigger1 = Anim = 5002
trigger2 = Anim = 5012
value = 10, 1

[State -2]
type = PlaySnd
trigger1 = random < 500
trigger1 = Time = 1
trigger1 = stateno = 5010
trigger1 = Anim = 5022
value = 10, 1

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = Time = 1
triggerall = stateno = 5020
trigger1 = Anim = 5002
trigger2 = Anim = 5012
value = 10, 1

[State -2]
type = PlaySnd
trigger1 = Time = 1
trigger1 = stateno = 5030
trigger1 = Alive = 1
value = 10, 2

;===============================
;Crane mode
;===============================
;Face Left
[State -2, faceVar] 
type = VarSet
triggerall = Var(40) != 2
trigger1 = Facing = 1
v = 40
value = 1

;Face Right
[State -2, faceVar] 
type = VarSet
triggerall = Var(40) != 1
trigger1 = Facing = -1
v = 40
value = 2

;Crane Remove
[State -2 , Remove]
type = RemoveExplod
triggerall = NumExplod(8109) != 0
trigger1 = stateno = 5150
trigger2 = stateno = 4301
trigger3 = stateno = 3046
trigger4 = stateno = 3034
trigger5 = stateno = 3038
ID = 8109

;Crane Remove
[State -2 , Remove]
type = RemoveExplod
triggerall = NumExplod(8119) != 0
trigger1 = stateno = 5150
trigger2 = stateno = 4301
trigger3 = stateno = 3046
trigger4 = stateno = 3034
trigger5 = stateno = 3038
ID = 8119

;Crane Remove
[State -2 , Remove]
type = RemoveExplod
triggerall = NumExplod(8129) != 0
trigger1 = stateno = 5150
trigger2 = stateno = 4301
trigger3 = stateno = 3046
trigger4 = stateno = 3034
trigger5 = stateno = 3038
ID = 8129

;Crane Left 1
[State -2 ,2]
type = Explod
triggerall = NumExplod(8109) = 0
triggerAll = Var(40) = 1
triggerall = var(48) = 1
trigger1 = stateno = 3032
trigger2 = stateno = 3149
anim = 8109
ID = 8109
postype = left
pos = 75,35
sprpriority = -6
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
removetime = -1

;Crane Left 1 Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8109) != 0
triggerAll = Var(40) = 1
triggerall = var(48) >= 1
triggerall = Power >= 3000
trigger1 = (p2life > 0) && (p2life <= 100)
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = stateno != 3046
trigger1 = stateno != 3034
trigger1 = stateno != 3038
ID = 8109
trans = addalpha
alpha = 150,0

;Crane Left 1 No-Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8109) != 0
triggerAll = Var(40) = 1
triggerall = var(48) >= 1
triggerall = life > 0
triggerall = stateno != 5150
triggerall = stateno != 4301
triggerall = stateno != 3046
triggerall = stateno != 3034
triggerall = stateno != 3038
trigger1 = p2life > 100
trigger2 = Power < 3000
ID = 8109
trans = none

;Crane Left 2
[State -2 ,2]
type = Explod
triggerall = NumExplod(8119) = 0
triggerAll = Var(40) = 1
triggerall = var(48) = 2
trigger1 = stateno = 3032
trigger2 = stateno = 3149
anim = 8110
ID = 8119
postype = left
pos = 90,35
sprpriority = -6
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
removetime = -1

;Crane Left 2 Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8119) != 0
triggerAll = Var(40) = 1
triggerall = var(48) >= 2
triggerall = Power >= 3000
trigger1 = (p2life > 0) && (p2life <= 250)
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = stateno != 3046
trigger1 = stateno != 3034
trigger1 = stateno != 3038
ID = 8119
trans = addalpha
alpha = 150,0

;Crane Left 2 No-Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8119) != 0
triggerAll = Var(40) = 1
triggerall = var(48) >= 2
triggerall = life > 0
triggerall = stateno != 5150
triggerall = stateno != 4301
triggerall = stateno != 3046
triggerall = stateno != 3034
triggerall = stateno != 3038
trigger1 = p2life > 250
trigger2 = Power < 3000
ID = 8119
trans = none

;Crane Left 3
[State -2 ,2]
type = Explod
triggerall = NumExplod(8129) = 0
triggerAll = Var(40) = 1
triggerall = var(48) = 3
trigger1 = stateno = 3032
trigger2 = stateno = 3149
anim = 8111
ID = 8129
postype = left
pos = 105,35
sprpriority = -6
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
removetime = -1

;Crane Left 3 Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8129) != 0
triggerAll = Var(40) = 1
triggerall = var(48) = 3
triggerall = Power >= 3000
trigger1 = (p2life > 0) && (p2life <= 400)
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = stateno != 3046
trigger1 = stateno != 3034
trigger1 = stateno != 3038
ID = 8129
trans = addalpha
alpha = 150,0

;Crane Left 3 No-Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8129) != 0
triggerAll = Var(40) = 1
triggerall = var(48) = 3
triggerall = life > 0
triggerall = stateno != 5150
triggerall = stateno != 4301
triggerall = stateno != 3046
triggerall = stateno != 3034
triggerall = stateno != 3038
trigger1 = p2life > 400
trigger2 = Power < 3000
ID = 8129
trans = none

;Crane Right 1
[State -2 ,2]
type = Explod
triggerall = NumExplod(8109) = 0
triggerAll = Var(40) = 2
triggerall = var(48) = 1
trigger1 = stateno = 3032
trigger2 = stateno = 3149
anim = 8109
ID = 8109
postype = right
pos = -110,35
sprpriority = -6
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
removetime = -1

;Crane Right 1 Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8109) != 0
triggerAll = Var(40) = 2
triggerall = var(48) >= 1
triggerall = Power >= 3000
trigger1 = (p2life > 0) && (p2life <= 100)
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = stateno != 3046
trigger1 = stateno != 3034
trigger1 = stateno != 3038
ID = 8109
trans = addalpha
alpha = 150,0

;Crane Right 1 No-Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8109) != 0
triggerAll = Var(40) = 2
triggerall = var(48) >= 1
triggerall = life > 0
triggerall = stateno != 5150
triggerall = stateno != 4301
triggerall = stateno != 3046
triggerall = stateno != 3034
triggerall = stateno != 3038
trigger1 = p2life > 100
trigger2 = Power < 3000
ID = 8109
trans = none

;Crane Right 2
[State -2 ,2]
type = Explod
triggerall = NumExplod(8119) = 0
triggerAll = Var(40) = 2
triggerall = var(48) = 2
trigger1 = stateno = 3032
trigger2 = stateno = 3149
anim = 8110
ID = 8119
postype = right
pos = -95,35
sprpriority = -6
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
removetime = -1

;Crane Right 2 Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8119) != 0
triggerAll = Var(40) = 2
triggerall = var(48) >= 1
triggerall = Power >= 3000
trigger1 = (p2life > 0) && (p2life <= 250)
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = stateno != 3046
trigger1 = stateno != 3034
trigger1 = stateno != 3038
ID = 8119
trans = addalpha
alpha = 150,0

;Crane Right 2 No-Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8119) != 0
triggerAll = Var(40) = 2
triggerall = var(48) >= 1
triggerall = life > 0
triggerall = stateno != 5150
triggerall = stateno != 4301
triggerall = stateno != 3046
triggerall = stateno != 3034
triggerall = stateno != 3038
trigger1 = p2life > 250
trigger2 = Power < 3000
ID = 8119
trans = none

;Crane Right 3
[State -2 ,2]
type = Explod
triggerall = NumExplod(8129) = 0
triggerAll = Var(40) = 2
triggerall = var(48) = 3
trigger1 = stateno = 3032
trigger2 = stateno = 3149
anim = 8111
ID = 8129
postype = right
pos = -80,35
sprpriority = -6
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 0
removetime = -1

;Crane Right 3 Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8129) != 0
triggerAll = Var(40) = 2
triggerall = var(48) >= 1
triggerall = Power >= 3000
trigger1 = (p2life > 0) && (p2life <= 400)
trigger1 = life > 0
trigger1 = stateno != 5150
trigger1 = stateno != 4301
trigger1 = stateno != 3046
trigger1 = stateno != 3034
trigger1 = stateno != 3038
ID = 8129
trans = addalpha
alpha = 150,0

;Crane Right 3 No-Fatality
[State -2 ,Tux]
type = ModifyExplod
triggerall = NumExplod(8129) != 0
triggerAll = Var(40) = 2
triggerall = var(48) >= 1
triggerall = life > 0
triggerall = stateno != 5150
triggerall = stateno != 4301
triggerall = stateno != 3046
triggerall = stateno != 3034
triggerall = stateno != 3038
trigger1 = p2life > 400
trigger2 = Power < 3000
ID = 8129
trans = none

;Crane Dead
[State -2 , Remove]
type = RemoveExplod
triggerall = NumExplod(8109) != 0
trigger1 = (Life <= 0) || (P2Life <= 0)
ID = 8109

;Crane Dead
[State -2 , Remove]
type = RemoveExplod
triggerall = NumExplod(8119) != 0
trigger1 = (Life <= 0) || (P2Life <= 0)
ID = 8119

;Crane Dead
[State -2 , Remove]
type = RemoveExplod
triggerall = NumExplod(8129) != 0
trigger1 = (Life <= 0) || (P2Life <= 0)
ID = 8129

[State -2, Var]
type = VarSet
trigger1 = (Life <= 0) || (P2Life <= 0)
v = 48
value = 0

;===============================
;COSMOS
;===============================

;COSMOS CHARGE
[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(903) = 1
trigger1 = stateno != 901
trigger1 = anim != 901
ID = 903

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(903) = 1
trigger1 = stateno = [5000,5999]
ID = 903

;========================================

;COSMOS CHARGE éffet
[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8123) = 1
trigger1 = stateno != 901
trigger1 = anim!= 901
ID = 8123

[State -2,remove]
type = RemoveExplod
triggerall = NumExplod(8123) = 1
trigger1 = stateno = [5000,5999]
ID =  8123

;========================================

[State -2,remove]
type = RemoveExplod
;triggerall =anim = 3037;NumExplod( 8010) = 1
triggerall = numexplod(8010)
trigger1 = Time = 500
ID = 8010

;========================================

;COSMOS genmaken
[State -2,remove]
type = RemoveExplod
trigger1 = anim = 3037
ID = 8002

;[State -2,remove]
;type = RemoveExplod
;triggerall = NumExplod(8002) = 1
;trigger1 = stateno = [5000,5999]
;ID = 8004

;COSMOS genmaken
[State -2,remove]
type = RemoveExplod
trigger1 = stateno = 198
ID = 903

;========================================

;remouve Ultime Phoenix
; brat
[State -2,remove]
type = RemoveExplod
trigger1 = stateno = 4059
ID = 8130

; roché
[State -2,remove]
type = RemoveExplod
trigger1 = stateno = 4058
ID = 8050

;========================================
;Serres du phénix
;========================================
[State -2,remove]
type = RemoveExplod
triggerall = numexplod(8124) = 1
;trigger1 = Pos Y >= 29
trigger1 = Time = 1
ID = 8124

;===============================
;remove EXplod 3007 AIRE Hô yoku ten shô
;===============================
; aire lingt hoyoku remouve explod
[State -2,remove]
type = RemoveExplod
trigger1 = stateno = 50
trigger2 = stateno = 0
ID = 8022

;===============================
;remove EXplod 3008 AIRE Hô yoku ten shô
;===============================
; aire lingt hoyoku remouve explod
[State -2,remove]
type = RemoveExplod
trigger1 = animelem = 83
ID = 8022

;===============================
;No Music in Fatality Nightmares
;===============================
[State -2, TuxAssSpec]
type = AssertSpecial
trigger1 = stateno = 3037
trigger2 = stateno = 3048
trigger3 = stateno = 3041
trigger4 = stateno = 3050
trigger5 = stateno = 3060
trigger6 = stateno = 3061
flag = nomusic

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
trigger2 = Anim = 5
trigger3 = life <= 250
ID = 2

[State -3, Cosmo 2]
type = RemoveExplod
triggerall = numexplod(3) >= 1
trigger1 = stateno != 0
trigger2 = Anim = 5
trigger3 = life > 250
ID = 3

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9

[State -3, Shun]
type = RemoveExplod
triggerall = NumExplod(4139) != 0
trigger1 = Life <= 0
ID = 4139

;---------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = Anim = 20
trigger1 = animelem = 4
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = Anim = 20
trigger1 = animelem = 4
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = Anim = 20
trigger1 = animelem = 8
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = Anim = 20
trigger1 = animelem = 8
value = F3, 1

[State -3, Walk]
type = PlaySnd
triggerall = Anim = 21
trigger1 = animelem = 4
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = Anim = 21
trigger1 = animelem = 4
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = Anim = 21
trigger1 = animelem = 8
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = Anim = 21
trigger1 = animelem = 8
value = F3, 1

;---------------------------------------

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = Time = 1
value = 2, 0

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = Time = 1
value = F2, 0

[State -3, Air Jump]
type = AfterImage
triggerall = stateno = 45
trigger1 = Time = 1
time = 20
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
trans = add1

[State -3, Air Jump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = Time = 1
value = 2, 1

[State -3, Air Jump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = Time = 1
value = F2, 1

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = Time = 1
value = 2, 2

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = Time = 1
value = F2, 3

;---------------------------------------

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = Time = 1
time = 25
palbright = 10,10,10
palcontrast = 98,98,98
trans = add1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = Time = 1
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
trigger1 = Time = 1
value = 2, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Time = 1
value = F2, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 2
trigger2 = animelem = 6
value = 3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 2
trigger2 = animelem = 6
value = F3, 0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 4
trigger2 = animelem = 8
value = 3, 1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 4
trigger2 = animelem = 8
value = F3, 1

;---------------------------------------

[State -3, Run Back]
type = AfterImage
triggerall = stateno = 105
trigger1 = Time = 1
time = 15
palbright = 10,10,10
palcontrast = 98,98,98
trans = add1

[State -3, Run Back]
type = Explod
triggerall = stateno = 105
trigger1 = Time = 5
pos = -5,15
anim = 70841
sprpriority = 5
removeongethit = 1
scale = 0.8,0.8
ownpal = 1

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = Time = 1
value = 2, 0

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = Time = 1
value = F2, 0

[State -3, Run Back Land]
type = PlaySnd
triggerall = stateno = 106
trigger1 = Time = 1
value = 2, 2

[State -3, Run Back Land]
type = PlaySnd
triggerall = stateno = 106
trigger1 = Time = 1
value = F2, 3

;---------------------------------------

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = Anim = 5140
trigger1 = Time = 1
trigger2 = Time = 10
trigger3 = Time = 20
value = 11, 1

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9