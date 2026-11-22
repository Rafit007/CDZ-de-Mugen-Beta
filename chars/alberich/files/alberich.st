;---------------------------------------------------------------------------
; MEGREZ DELTA ALBERICH ST FILE by tallon
;---------------------------------------------------------------------------

; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 10170

[State 170, Assert]
type     = AssertSpecial
trigger1 = Time = [0,180]
flag     = roundnotover

[State 170]
type = PlaySnd
trigger1 = AnimElem = 2
value = 28,0

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win Pose (state decider)
[Statedef 180]
type = S

; Win Pose 1 (round win)
[State 180]
type = ChangeState
triggerall = Var(1) = 0
triggerall = Var(9) = 0
trigger1 = Time = 0
trigger1 = MatchOver = 0
value = 181

; Win Pose 1 sword mode (round win)
[State 180]
type = ChangeState
triggerall = Var(1) = 1
triggerall = Var(9) = 0
trigger1 = Time = 0
trigger1 = MatchOver = 0
value = 10181

; Win Pose 2 (match win)
[State 180]
type = ChangeState
triggerall = Var(1) = 0
triggerall = Var(9) = 0
trigger1 = Time = 0
trigger1 = MatchOver = 1
value = 182

; Win Pose 2 sword mode (match win)
[State 180]
type = ChangeState
triggerall = Var(1) = 1
triggerall = Var(9) = 0
trigger1 = Time = 0
trigger1 = MatchOver = 1
value = 10182

; Win Pose 3 (conditioned by in-game action)
[State 180]
type = ChangeState
triggerall = Var(9) = 1 ;The enemy was killed by Amethyst Shield 2
trigger1 = Time = 0
value = 183

; Win Pose 4 (conditioned by in-game action)
[State 180]
type = ChangeState
triggerall = Var(9) = 2 ;The enemy was killed by Nature Unity 3
trigger1 = Time = 0
value = ifelse (var(1) = 0, 184, 10184)

;---------------------------------------
; Win Pose 1 (round win)
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, Assert]
type     = AssertSpecial
trigger1 = Time = [0,480]
flag     = roundnotover

[State 181, Voice]
type = PlaySnd
trigger1 = Time = 30
value = 24,0

[State 181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win Pose 1 (round win) - Sword
[Statedef 10181]
type = S
ctrl = 0
anim = 10181
velset = 0,0

[State 10181, Assert]
type     = AssertSpecial
trigger1 = Time = [0,320]
flag     = roundnotover

[State 10181, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 24,1

[State 10181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win Pose 2 (match win)
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, Assert]
type     = AssertSpecial
trigger1 = Time = [0,400]
flag     = roundnotover

[State 182, Voice]
type = PlaySnd
trigger1 = Animelem = 1, 10
value = 24,2

[State 182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win Pose 2 (match win) - Sword
[Statedef 10182]
type = S
ctrl = 0
anim = 10182
velset = 0,0

[State 10182, Assert]
type = AssertSpecial
trigger1 = Time = [0,635]
flag = roundnotover

[State 10182, sword]
type = Explod
trigger1 = Time = 63
anim = 1820
pos = 0,0
postype = p1
sprpriority = 1
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 10182, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 20,9

[State 10182, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 24,3

[State 10182, Voice]
type = PlaySnd
trigger1 = Time = 490
value = 27,4

[State 10182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win Pose 3 (fatality)
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 183]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10183

[State 183, Land]
type = PlaySnd
trigger1 = Time = 5
value = 3,0

[State 183, Voice]
type = PlaySnd
trigger1 = Time = 5
value = 24,4

[State 183, Assert]
type     = AssertSpecial
trigger1 = Time = [0,300]
flag     = roundnotover

[State 183]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win Pose 4 (desperate)
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 184, Assert]
type     = AssertSpecial
trigger1 = Time = [0,470]
flag     = roundnotover

[State 184, Voice]
type = PlaySnd
trigger1 = Animelem = 1, 10
value = 24,5

[State 184]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Win Pose 4 (desperate) - Sword
[Statedef 10184]
type = S
ctrl = 0
anim = 10184
velset = 0,0

[State 10184, Assert]
type = AssertSpecial
trigger1 = Time = [0,705]
flag = roundnotover

[State 10184, sword]
type = Explod
trigger1 = Time = 63
anim = 1820
pos = 0,0
postype = p1
sprpriority = 1
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 10184, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 20,9

[State 10184, Voice]
type = PlaySnd
trigger1 = AnimElem = 10
value = 24,5

[State 10184, Voice]
type = PlaySnd
trigger1 = Time = 550
value = 27,4

[State 10184]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------
; Intro (state decider)
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190]
type = ChangeState
trigger1 = p2name = "marin" || p4name = "marin"
trigger2 = p2name = "seiya2" || p4name = "seiya2"
trigger3 = p2name = "hyoga2" || p4name = "hyoga2"
trigger4 = p2name = "shiryu2" || p4name = "shiryu2"
value = 196

[State 190]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

; Intro 1 (clothing)
[State 190]
type = ChangeState
trigger1 = Var(2) = [0,35]
value = 191

; Intro 2 (from above)
[State 190]
type = ChangeState
trigger1 = p2name = "megres" || p3name = "megres" || p4name = "megres" || p2name = "hilda" || p3name = "hilda" || p4name = "hilda"
trigger2 = p2name = "alberich" || p3name = "alberich" || p4name = "alberich" || p2name = "hilda de polaris" || p3name = "hilda de polaris" || p4name = "hilda de polaris"
triggerall = Var(2) = [36,67]
value = 192

; Intro 3 (Hilda)
[State 190]
type = ChangeState
trigger1 = p2name != "megres" && p3name != "megres" && p4name != "megres" && p2name != "hilda" && p3name != "hilda" && p4name != "hilda"
trigger1 = p2name != "alberich" && p3name != "alberich" && p4name != "alberich" && p2name != "hilda de polaris" && p3name != "hilda de polaris" && p4name != "hilda de polaris"
triggerall = Var(2) = [36,67]
value = 194

; Intro 4 (god warriors)
[State 190, 6]   
type = ChangeState
trigger1 = p2name != "megres" && p3name != "megres" && p4name != "megres" && p2name != "hilda" && p3name != "hilda" && p4name != "hilda"
trigger1 = p2name != "alberich" && p3name != "alberich" && p4name != "alberich" && p2name != "hilda de polaris" && p3name != "hilda de polaris" && p4name != "hilda de polaris"
triggerall = var(2) = [68,99]
value = 193

; Intro 5 (welcome)
[State 190, 6]   
type = ChangeState
trigger1 = p2name = "megres" || p3name = "megres" || p4name = "megres" || p2name = "hilda" || p3name = "hilda" || p4name = "hilda"
trigger2 = p2name = "alberich" || p3name = "alberich" || p4name = "alberich" || p2name = "hilda de polaris" || p3name = "hilda de polaris" || p4name = "hilda de polaris"
triggerall = var(2) = [68,99]
value = 195

;---------------------------------------
; Intro 1 (clothing)
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191]
type = AssertSpecial
trigger1 = Time = [0,780]
flag = Intro

[State 191]
type = AssertSpecial
trigger1 = Time = [0,420]
flag = nobardisplay

;[State 191]
;type = PlaySnd
;trigger1 = Time = 530
;value = 25,0

[State 191]
type = PlaySnd
trigger1 = Time = 0
value = 25,1

[State 191]
type = PlaySnd
trigger1 = Time = 40
value = 25,2

[State 191, EnvColor]
type = EnvColor
trigger1 = Time = 110
value = 255,255,255
time = 2

[State 191, BGPalFX]
type = BGPalFX
trigger1 = Time = 110
time = 405
add = 0,0,50
mul = 0,0,50
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 191, lighting]
type = Explod
trigger1 = Time = 110
anim = 1913
pos = 55,0
postype = p1
sprpriority = -1
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 191, lighting]
type = Explod
trigger1 = Time = 110
anim = 1913
pos = 55,0
postype = p1
sprpriority = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
facing = -1

[State 191, lighting]
type = Explod
trigger1 = Time = 90
anim = 7009
pos = 55,-10
postype = p1
sprpriority = 3
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 191, lighting]
type = Explod
trigger1 = Time = 160
anim = 7010
pos = 55,0
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 48

[State 191, box1]
type = Explod
trigger1 = Time = 0
anim = 1910
pos = 55,-2
postype = p1
sprpriority = -1
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 191, box opened]
type = PlaySnd
trigger1 = Time = 95
value = 4,0

[State 191, cloth1]
type = explod
trigger1 = Time = 0
anim = 1911
pos = 55,1
postype = p1
sprpriority = -1
ignorehitpause = 1
ownpal = 1
persistent = 0
removetime = 600

[State 191, totem sound broken]
type = PlaySnd
trigger1 = Time = 155
value = 7,2

[State 191, piece fly]
type = PlaySnd
trigger1 = Time = 170
value = 2,1

[State 191, Cloth sound1]
type = PlaySnd
trigger1 = AnimElem = 28
value = 4,1

[State 191, Cloth sound2]
type = PlaySnd
trigger1 = AnimElem = 31
trigger2 = AnimElem = 40
value = 4,2

[State 192, Cloth sound3]
type = PlaySnd
trigger1 = AnimElem = 43
value = 4,3

[State 191, Cloth sound4]
type = PlaySnd
trigger1 = AnimElem = 48
value = 4,4

[State 191, Cloth sound5]
type = PlaySnd
trigger1 = AnimElem = 34
value = 4,5

[State 191, Cloth sound6]
type = PlaySnd
trigger1 = AnimElem = 51
value = 4,6

[State 191, constellation]
type = Explod
trigger1 = Time = 515
anim = 6002
ID = 6002
pos = 0,-80
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
supermove = 1
removetime = -2
scale = .5,.5

[State 191, constellation]
type = Explod
trigger1 = Time = 515
anim = 6003
ID = 6003
pos = 4,-90
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
supermove = 1
removetime = -2
scale = .5,.5

[State 191, BGPalFX]
type = BGPalFX
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
time = 1
add = 0,0,50
mul = 0,0,50
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 191, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 191, Stand]
type = ChangeState
trigger1 = Time = 580;780
value = 0
ctrl = 0

;---------------------------------------
; Intro 2 (from above)
[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 192]
type = ChangeAnim
trigger1 = RoundState = 0
value = 192

[State 192, 1]
type = Explod
trigger1 = Time = 54
postype = p1
pos = 0,0
scale = 1,1
bindtime = 1
removetime = 16
sprpriority = 3
anim = 7081
ID = 7081

[State 192, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, Snd 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,5

[State 192, Snd 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,2

[State 192, voice]
type = PlaySnd
trigger1 = Time = 160
value = 26,0

[State 192, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 192, 3]
type = ChangeState
trigger1 = Time = 290
value = 0

;---------------------------------------
; Intro 3 (Hilda)
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, Hilda]
type = Explod
trigger1 = Time = 0
anim = 1930
ID = 1930
pos = -70,0
postype = p1
sprpriority = 0
ignorehitpause = 1
ownpal = 1
supermove = 1
removetime = -2
shadow = -1

[State 193, frase 1]
type = PlaySnd
trigger1 = Time = 0
value = 22,0

[State 193, frase 2]
type = PlaySnd
trigger1 = Time = 600
value = 22,1

[State 193, Snd 1]
type = PlaySnd
trigger1 = Time = 1020
value = 0,5

[State 193, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 193, 3]
type = ChangeState
trigger1 = Time = 1090
value = 0

;---------------------------------------------------------------------------
; Intro 4 (god warriors)
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 194]
type = AssertSpecial
trigger1 = Time = [0,425]
flag = intro
flag2= noshadow

[State 194, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 194, ursa maior]
type = Explod
triggerall = NumExplod(8055) = 0
trigger1 = AnimElem = 1
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
[State 194,2] ;cosmo
type = explod
trigger1 = Time = 0
pos = 0,0
anim = 1947
pos = 0, 0
removetime = 400
sprpriority = -2
ownpal = 1

; Hilda voice
[State 194, 1]
type = PlaySnd
trigger1 = Time = 0
value = 23, 0
channel = 1

; Hilda
[State 194,2]
type = explod
trigger1 = Time = 0
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
[State 194,2]
type = explod
trigger1 = Time = 0
ID = 1941
pos = 0,0
anim = 1941
removetime = 390
sprpriority = 0
ownpal = 1
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = Time = 0
ID = 1941
trigger1 = p2name = "sigfried" || p3name = "sigfried" || p4name = "sigfried"
trigger2 = p2name = "sigfried d'Alpha" || p3name = "sigfried d'Alpha" || p4name = "sigfried d'Alpha"
trigger3 = p2name = "sigfried de dubhe" || p3name = "sigfried de dubhe" || p4name = "sigfried de dubhe"
trigger4 = p2name = "orion" || p3name = "orion" || p4name = "orion"
trigger5 = p2name = "orion di Asgard" || p3name = "orion di Asgard" || p4name = "orion di Asgard"

; Hagen
[State 194,2]
type = explod
trigger1 = Time = 0
ID = 1942
pos = 0,0
anim = 1942
removetime = 390
sprpriority = 2
ownpal = 1
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = Time = 0
ID = 1942
trigger1 = p2name = "hagen" || p3name = "hagen" || p4name = "hagen"
trigger2 = p2name = "hagen de beta" || p3name = "hagen de beta" || p4name = "hagen de beta"
trigger3 = p2name = "hagen de Merak" || p3name = "hagen de Merak" || p4name = "hagen de Merak"
trigger4 = p2name = "artax" || p3name = "artax" || p4name = "artax"
trigger5 = p2name = "artax di Asgard" || p3name = "artax di Asgard" || p4name = "artax di Asgard"

; Fenrir
[State 194,2]
type = explod
trigger1 = Time = 0
ID = 1943
pos = 0,10
anim = 1943
removetime = 390
sprpriority = 1
ownpal = 1
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = Time = 0
ID = 1943
trigger1 = p2name = "fenril" || p3name = "fenril" || p4name = "fenril"
trigger2 = p2name = "fenril de Epsilon" || p3name = "fenril de Epsilon" || p4name = "fenril de Epsilon"
trigger3 = p2name = "fenril d'Alioth" || p3name = "fenril d'Alioth" || p4name = "fenril d'Alioth"
trigger4 = p2name = "luxor" || p3name = "luxor" || p4name = "luxor"
trigger5 = p2name = "luxor di Asgard" || p3name = "luxor di Asgard" || p4name = "luxor di Asgard"

; Mime
[State 194,2]
type = explod
trigger1 = Time = 0
ID = 1944
pos = 0,0
anim = 1944
removetime = 390
sprpriority = 2
ownpal = 1
scale= .90,.90
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = Time = 0
ID = 1944
trigger1 = p2name = "mime" || p3name = "mime" || p4name = "mime"
trigger2 = p2name = "mime de eta" || p3name = "mime de eta" || p4name = "mime de eta"
trigger3 = p2name = "mime de Benetosh" || p3name = "mime de Benetosh" || p4name = "mime de Benetosh"
trigger4 = p2name = "mime di Asgard" || p3name = "mime di Asgard" || p4name = "mime di Asgard"

; Cyd
[State 194,2]
type = explod
ID = 1945
trigger1 = Time = 0
pos = 0,0
anim = 1945
removetime = 390
sprpriority = -3
ownpal = 1
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = Time = 0
ID = 1945
trigger1 = p2name = "syd" || p3name = "syd" || p4name = "syd"
trigger2 = p2name = "syd de zeta" || p3name = "syd de zeta" || p4name = "syd de zeta"
trigger3 = p2name = "syd de mizar" || p3name = "syd de mizar" || p4name = "syd de mizar"
trigger4 = p2name = "mizar" || p3name = "mizar" || p4name = "mizar"
trigger5 = p2name = "mizar di Asgard" || p3name = "mizar di Asgard" || p4name = "mizar di Asgard"

; Tholl
[State 194,2]
type = explod
ID =1946
trigger1 = Time = 0
pos = 0,0
anim = 1946
removetime = 390
sprpriority = -3
ownpal = 1
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = Time = 0
ID = 1946
trigger1 = p2name = "tholl" || p3name = "tholl" || p4name = "tholl"
trigger2 = p2name = "tholl de gamma" || p3name = "tholl de gamma" || p4name = "tholl de gamma"
trigger3 = p2name = "tholl de Phecda" || p3name = "tholl de Phecda" || p4name = "tholl de Phecda"
trigger4 = p2name = "thor" || p3name = "thor" || p4name = "thor"
trigger5 = p2name = "thor di Asgard" || p3name = "thor di Asgard" || p4name = "thor di Asgard"

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

;-----------------------------------------------------------------------------
; Intro 5 (welcome)
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
sprpriority = 1

[State 195]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 195]
type = PlaySnd
trigger1 = Time = 0
value = 25,0

[State 195]
type = Explod
trigger1 = AnimElem = 27
pos = 20,0
anim = 5402
ID = 5402
removetime = 100
sprpriority = -2

[State 195, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 195, 6]
type = ChangeState
trigger1 = Time = 235
value = 0

;-----------------------------------------------------------------------------
; Intro 6 (vs Marin & Bronze Saints)
[Statedef 196]
type = S
ctrl = 0
anim = 196
velset = 0,0
sprpriority = 1

[State 196]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 196]
type = PlaySnd
triggerall = p2name = "marin" || p4name = "marin"
trigger1 = Time = 0
value = 32,0

[State 195]
type = Explod
triggerall = p2name = "marin" || p4name = "marin"
trigger1 = Time = 0
pos = -1,0
anim = 1960
ID = 1960
removetime = 80
sprpriority = 2

[State 195]
type = Explod
triggerall = p2name = "marin" || p4name = "marin"
trigger1 = Time = 150
pos = -1,0
anim = 1960
ID = 1960
removetime = 140
sprpriority = 2

[State 196]
type = PlaySnd
triggerall = p2name = "seiya2" || p4name = "seiya2"
trigger1 = Time = 0
value = 32,1

[State 196]
type = Explod
triggerall = p2name = "seiya2" || p4name = "seiya2"
trigger1 = Time = 0
pos = -1,0
anim = 1960
ID = 1960
removetime = 280
sprpriority = 2

[State 196]
type = PlaySnd
triggerall = p2name = "hyoga2" || p4name = "hyoga2"
trigger1 = Time = 0
value = 32,2

[State 196]
type = Explod
triggerall = p2name = "hyoga2" || p4name = "hyoga2"
trigger1 = Time = 150
pos = -1,0
anim = 1960
ID = 1960
removetime = 210
sprpriority = 2

[State 196]
type = Explod
triggerall = p2name = "hyoga2" || p4name = "hyoga2"
trigger1 = Time = 890
pos = -1,0
anim = 1960
ID = 1960
removetime = 256
sprpriority = 2

[State 196]
type = PlaySnd
triggerall = p2name = "shiryu2" || p4name = "shiryu2"
trigger1 = Time = 0
value = 32,3

[State 196]
type = Explod
triggerall = p2name = "shiryu2" || p4name = "shiryu2"
trigger1 = Time = 160
pos = -1,0
anim = 1960
ID = 1960
removetime = 180
sprpriority = 2

[State 196, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
channel = -1

[State 196, 6]
type = ChangeState
triggerall = p2name = "shiryu2" || p4name = "shiryu2"
trigger1 = Time = 340
value = 0

[State 196, 6]
type = ChangeState
triggerall = p2name = "marin" || p4name = "marin"
trigger1 = Time = 432
value = 0

[State 196, 6]
type = ChangeState
triggerall = p2name = "seiya2" || p4name = "seiya2"
trigger1 = Time = 636
value = 0

[State 196, 6]
type = ChangeState
triggerall = p2name = "hyoga2" || p4name = "hyoga2"
trigger1 = Time = 1146
value = 0

;---------------------------------------
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

; Provoking 1
[State 199]
type = ChangeState
trigger1 = Var(2) = [0,30]
value = 197

; Provoking 2
[State 199]
type = ChangeState
trigger1 = Var(2) = [31,60]
value = 198

; Provoking 3
[State 199]
type = ChangeState
trigger1 = Var(2) = [61,99]
value = ifelse (var(1) = 0, 1999, 10199)

;---------------------------------------
; Provoking 1
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
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10197

[State 197, voce]
type = PlaySnd
trigger1 = AnimElem = 2
value = 27,(0+(random%2))
channel = 0

[State 197]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3,1

[State 197]
type = ChangeState
trigger1 = Time = 170
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------
; Provoking 2
[Statedef 198]
type = S
ctrl = 0
anim = 198
velset = 0,0
movetype = I
physics = S
sprpriority = 2
poweradd = 0

[State 198]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10198

[State 198, Snd]
type = PlaySnd
trigger1 = Time = 10
value = 27,(2+(random%2))
channel = 0

[State 198]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3,1

[State 198]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------
; Provoking 3
[Statedef 1999]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2
poweradd = 0

[State 1999, Snd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 27,4
channel = 0

[State 1999]
type = ChangeState
trigger1 = Time = 145
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------
; Provoking 3 Sword
[Statedef 10199]
type = S
ctrl = 0
anim = 10199
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 10199, voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 27,6
channel = 0

[State 10199]
type = PlaySnd
trigger1 = AnimElem = 1
value = 19,0

[State 10199]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
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
trigger1 = Time = 1
value = 0,0

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 3
priority = 3
attr = S, NA
damage = 20
animtype = light
guardflag = MA
sparkno = s7000
sparkxy = -10,-76
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

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Light Punch (close)
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 205
poweradd = 50
sprpriority = 2

[State 205]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10205

[State 205, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,0

[State 205, 2]
type = HitDef
trigger1 = AnimElem = 3
priority = 3
attr = S, NA
damage = 20
animtype = light
guardflag = MA
sparkno = s7000
sparkxy = -20,-80
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

[State 205, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Light Punch - Sword
[Statedef 10200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 10200
poweradd = 50
sprpriority = 2

[State 10200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 13,3

[State 10200, 2]
type = HitDef
trigger1 = AnimElem = 5
priority = 3
attr = S, NA
damage = 20
animtype = light
guardflag = MA
sparkno = s7071
sparkxy = -15,-86
hitsound = s1,9
guardsound = s6,1
pausetime = 8,8
ground.hittime = 10
ground.type = high
ground.slidetime = 5
ground.velocity = -4
air.velocity = -1.4,-3
getpower = 0
givepower = 0

[State 10200, 3]
type = ChangeState
trigger1 = AnimTime = 0
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

[State 210, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 210, 3]
type = Explod
trigger1 = AnimElem = 4
pos = -1,-1
anim = 211
ID = 211
sprpriority = 7

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-90
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4
getpower = 0
givepower = 0

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Medium Punch (close)
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

[State 215]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10215

[State 215, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,1

[State 215, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = s7001
sparkxy = -10,-90
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4
getpower = 0
givepower = 0

[State 215, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Medium Punch - Sword
[Statedef 10210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 10210
sprpriority = 2

[State 10210, 1]
type = PlaySnd
trigger1 = Time = 4
value = 13,1

[State 10210, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = s7072
sparkxy = -10,-70
hitsound = s1,10
guardsound = s6,1
ground.type = low
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4
getpower = 0
givepower = 0

;elimina il frame n°8 per standpose affannata
[State 10210, 3]
type = ChangeState
triggerall = life <= 250
trigger1 = Time = 39
value = 0
ctrl = 1

[State 10210, 3]
type = ChangeState
trigger1 = AnimTime = 0
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
trigger1 = Time = 8
value = 0,2

[State 220, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-95
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

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
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

[State 225]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10225

[State 225, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,2

[State 225, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 15,15
sparkno = s7002
sparkxy = -2,-85
hitsound = s1,2
guardsound = s6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 17
ground.velocity = -8
air.velocity = -2,-5
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
air.fall = 1
getpower = 0
givepower = 0

[State 225, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Heavy Punch - Sword
[Statedef 10220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 10220
sprpriority = 2

[State 10220, 1]
type = PlaySnd
trigger1 = Time = 25
value = 13,2

[State 10220, 2]
type = HitDef
trigger1 = Animelem = 8
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = s7073
sparkxy = -30,-75
hitsound = s1,11
guardsound = s6,1
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

[State 10220, 3]
type = ChangeState
trigger1 = AnimTime = 0
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

[State 230]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10230

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
sparkxy = -2,-35
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
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10235

[State 235, 1]
type = PlaySnd
trigger1 = Time = 3
value = 0,0

[State 235, 2]
type = PosAdd
trigger1 = AnimElem = 3
x = 5

[State 235, 3]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = light
damage    = 20
guardflag = MA
pausetime = 2,9
sparkno = s7000
sparkxy = -10,-56
hitsound = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
getpower = 0
givepower = 0

[State 235, 4]
type = ChangeState
trigger1 = AnimTime = 0
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
velset = 0,0
anim = 240
sprpriority = 2

[State 240]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10240

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 240, 2]
type = PlaySnd
trigger1 = Time = 22
value = 3,0

[State 240, 3]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
pos = -1,-1
anim = 241
ID = 241
sprpriority = 7

[State 240, 4]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
animtype  = medium
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = s7001
sparkxy = -5,-60
hitsound = s1,2
guardsound = s6,0
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

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Standing Medium Kick (close)
[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
velset = 0,0
anim = 245
sprpriority = 2

[State 245]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10245

[State 245, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0,1

[State 245, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 9,9
sparkno = s7001
sparkxy = -10,-85
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -4,-2
getpower = 0
givepower = 0

[State 245, powter]
type = null ;Explod
trigger1 = AnimElem = 2
pos = 0,-6
anim = 7080
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 245, 4]
type = ChangeState
trigger1 = AnimTime = 0
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

[State 250]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10250

[State 250, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 250, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = hard
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -5,-110
hitsound = s1,2
guardsound = s6,0
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

[State 250, powter]
type = null ;Explod
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

[State 255]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10255

[State 255, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 255, 1]
type = PlaySnd
trigger1 = Time = 22
value = 0,2

[State 255, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = hard
damage    = 20
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -5,-75
hitsound = s1,2
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15
envshake.freq = 15
envshake.ampl = 5
envshake.phase = 5
getpower = 0
givepower = 0

[State 255, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
animtype  = hard
damage    = 10
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -15,-87
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

[State 255, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = hard
damage    = 10
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-35
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

[State 255, powter]
type = null ;Explod
trigger1 = AnimElem = 2
pos = 0,-6
anim = 7080
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 255, 4]
type = ChangeState
trigger1 = AnimTime = 0
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
; Crouching Light Punch - Sword
[Statedef 10400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 10400
sprpriority = 2

[State 10400, 1]
type = PlaySnd
trigger1 = Time = 0
value = 13,3

[State 10400, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 20
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = s7071
sparkxy = -10,-42
hitsound = s1,9
guardsound = s6,1
ground.type = Low
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -4
air.velocity = -1.5,-3
getpower = 0
givepower = 0

[State 10400, 3]
type = ChangeState
trigger1 = AnimTime = 0
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
; Crouching Medium Punch - Sword
[Statedef 10410]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 10410
sprpriority = 2

[State 10410, 1]
type = PlaySnd
trigger1 = Time = 0
value = 13,0

[State 10410, 2]
type = HitDef
trigger1 = AnimElem =4
attr = C, NA
damage    = 30
priority  = 3
animtype  = medium
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = s7073
sparkxy = -10,-50
hitsound = s1,11
guardsound = s6,1
ground.type = Low
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -4
air.velocity = -4,-1
getpower = 0
givepower = 0

[State 10410, 3]
type = ChangeState
trigger1 = AnimTime = 0
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
trigger1 = Time = 1
value = 0,2

[State 420, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 40
animtype = hard
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7002
sparkxy = -8,-63
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

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------
; Crouching Heavy Punch - Sword
[Statedef 10420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 10420
sprpriority = 2

[State 10420, 1]
type = PlaySnd
trigger1 = Time = 5
value = 13,2

[State 10420, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage = 40
animtype = hard
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = s7072
sparkxy = -10,-35
hitsound = s1,10
guardsound = s6,1
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

[State 10420, 4]
type = ChangeState
trigger1 = AnimTime = 0
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

[State 430]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10430

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

[State 440]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10440

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
sparkxy = -10,-7
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
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10450

[State 450, 1]
type = PlaySnd
trigger1 = Time = 6
value = 0,2

[State 450, powter]
type = Explod
trigger1 = AnimElem = 1
pos = 0,0
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
sparkxy = 0,-15
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
trigger1 = Time = 0
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
sparkxy = -10,-88
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
trigger1 = Time = 10
value = 1

;---------------------------------------
; Jumping Light Punch - Sword
[Statedef 10600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 50
ctrl = 0
anim = 10600
sprpriority = 2

[State 10600, 1]
type = PlaySnd
trigger1 = Time = 0
value = 13,0

[State 10600, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
damage = 20
animtype = Light
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s7072
sparkxy = -10,-78
hitsound = s1,10
guardsound = s6,1
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

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
sparkxy = -10,-85
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
trigger1 = Time = 16
value = 1

;---------------------------------------
; Jumping Medium Punch - Sword
[Statedef 10610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 10610
sprpriority = 2

[State 10610, 1]
type = PlaySnd
trigger1 = Time = 0
value = 13,3

[State 10610, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
damage = 30
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7071
sparkxy = -10,-85
hitsound = s1,9
guardsound = s6,1
animtype = Medium
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
getpower = 0
givepower = 0

[State 10610, 3]
type = CtrlSet
trigger1 = Time = 23
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
trigger1 = Time = 2
value = 0,2

[State 620, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7002
sparkxy = -8,-15
hitsound = s1,2
guardsound = s6,0
animtype = Hard
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
trigger1 = Time = 24
value = 1

;---------------------------------------
; Jumping Heavy Punch - Sword
[Statedef 10620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 10620
sprpriority = 2

[State 10620, 1]
type = PlaySnd
trigger1 = Time = 1
value = 13,2

[State 10620, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = A, NA
damage = 40
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = s7073
sparkxy = -13,-0
hitsound = s1,11
guardsound = s6,1
animtype = Hard
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

[State 630]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10630

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
sparkxy = -10,-72
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
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10640

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
sparkxy = -10,-50
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
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10650

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
sparkxy = -8,-8
hitsound = s1,2
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,2
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
; Jumping Heavy Kick (upper)
[Statedef 651]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 651
sprpriority = 2

[State 651]
type = ChangeAnim
triggerall = Var(1) = 1
trigger1 = Time = 0
value = 10651

[State 651, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0,2

[State 651, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
animtype = Hard
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = s7002
sparkxy = -8,-100
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

[State 651, 3]
type = CtrlSet
trigger1 = Time = 23
value = 1

;---------------------------------------
; Throw
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800

[State 800, 1]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 10800

[State 800, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = s, NT
getpower  = 50
givepower = 30
damage = 40
hitflag = M
sparkno = -1
sparkxy = -20, -70  
priority = 3, miss  
pausetime = 25,25
p2facing = 1
p2stateno = 810
hitsound = s8,0
fall.damage = 20

[State 800, 2]
type = ChangeState
triggerall = MoveHit
trigger1 = AnimTime = 0
value = 801
ctrl = 0

[State 800, 3]
type = ChangeState
triggerall = !MoveHit
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; (p1 state)
[Statedef 801]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
anim = 801
velset = 1,-8

[State 801, 1]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 10801

[State 801, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1,7

[State 801, 2]
type = Explod
trigger1 = AnimElem = 5
anim = 7000
pos = 60,-85
sprpriority = 7
scale = 0.5,0.5

[State 801, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA                     
damage = 90, 40                   
animtype = medium                 
guardflag = MA                   
hitflag = MAF                    
priority = 3, Hit                
pausetime = 8, 8                 
hitsound = -1                
guardsound = 6, 0                
ground.type = high               
ground.slidetime = 5             
ground.hittime  = 10             
ground.velocity = -2,-10             
airguard.velocity = -1.9,-.8     
air.type = High                  
air.velocity = -1.4,-3           
air.hittime = 12 
fall = 1

;----------------------------------------
; (p2 state 1)
[Statedef 810]
type    = A
movetype= H 
physics = N
velset = 0,0
ctrl = 0

[State 810, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 810

[State 810, 2]
type = hitby
trigger1 = 1
value = sca
time = 1

[State 810, 3]
type = sprpriority
trigger1 = AnimElem = 5
trigger1 = AnimElem = 7
value = 2

[State 810, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 820
ctrl = 0

;-----------------------------------------------
; (p2 state 2)
[Statedef 820]
type = A
movetype = H
physics = N

[State 820, 1]
type = VelSet
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

;---------------------------------------
; (p2 state 3)
[Statedef  821]
type = A
movetype = H
physics = N
velset = -1.7,-11

[State  821 , 1]
type = veladd
trigger1 = time > 0
y = .4

[State  821 , 2]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100

;---------------------------------------
; Combo
[Statedef 830]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd = 50
velset = 0,0
anim = 830
ctrl = 0
sprpriority = 2

[State 830, ChangeAnim]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 10830

[State 830, 1]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 4
trigger4 = AnimElem = 6
trigger5 = AnimElem = 8
trigger6 = AnimElem = 10
trigger7 = AnimElem = 12
trigger8 = AnimElem = 14
value = 0,2

[State 830, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
animtype  = Light
damage    = 10,1
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = s7000
sparkxy = -10,-56
hitsound   = S1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 0
air.velocity = -2.5,-5
fall = 0
getpower = 0
givepower = 0

[State 830, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = A, SA
animtype  = Light
damage    = 10,1
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = s7001
sparkxy = -10,-88
hitsound   = S1,1
guardsound = s6, 0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 1
air.velocity = -2.5,-5
fall = 0
getpower = 0
givepower = 0

[State 830, 4]
type = HitDef
trigger1 = AnimElem = 7
attr = A, SA
animtype  = Light
damage    = 10,1
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = s7000
sparkxy = -10,-56
hitsound   = S1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 0
air.velocity = -2.5,-5
fall = 0
getpower = 0
givepower = 0

[State 830, 5]
type = HitDef
trigger1 = AnimElem = 9
attr = A, SA
animtype  = Light
damage    = 10,1
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = s7001
sparkxy = -10,-88
hitsound   = S1,1
guardsound = s6, 0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 1
air.velocity = -2.5,-5
fall = 0
getpower = 0
givepower = 0

[State 830, 6]
type = HitDef
trigger1 = AnimElem = 11
attr = A, SA
animtype  = Light
damage    = 10,1
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = s7000
sparkxy = -10,-56
hitsound   = S1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 0
air.velocity = -2.5,-5
fall = 0
getpower = 0
givepower = 0

[State 830, 7]
type = HitDef
trigger1 = AnimElem = 13
attr = A, SA
animtype  = Light
damage    = 10,1
priority  = 5
guardflag = MA
pausetime = 5,12
sparkno = s7001
sparkxy = -10,-88
hitsound   = S1,1
guardsound = s6, 0
ground.type = High
ground.slidetime = 1
ground.hittime  = 3
ground.velocity = 2
air.velocity = -2.5,-5
fall = 1
getpower = 0
givepower = 0

[State 830, 8]
type = HitDef
trigger1 = AnimElem = 16
attr = A, SA
animtype  = Medium
damage    = 30,3
priority  = 5
guardflag = MA
pausetime = 5,8
sparkno = s7002
sparkxy = -10,-68
hitsound   = S1,2
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6,-5
guard.velocity = -6
air.velocity = -9,-5
airguard.velocity = -4.5,-5
envshake.time = 5
envshake.ampl = 7
envshake.freq = 566
p2facing = 1
fall = 0
getpower = 0
givepower = 0

[State 830, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Cosmo Charge (start)
[Statedef 900]
type = S
movetype = I
physics = S
anim = 900
velset = 0,0
ctrl = 0

[State 900, ChangeAnim]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 10900

[State 900, var]
type = VarSet
triggerall = var(59) = 1
trigger1 = Time = 0
var(10) = 1

[State 900]
type = PlaySnd
trigger1 = animelem = 1
value = 9,1

[State 900, voice]
type = PlaySnd
trigger1 = Animelem = 1
value = 30,1
channel = 0

[State 900, shake]
type = EnvShake
trigger1 = AnimElem = 1
time = 40

[State 900]
type = ChangeState
trigger1 = AnimTime= 0
value = 901

;---------------------------------------
; Cosmo Charge (charging)
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901

[State 900, ChangeAnim]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 10901

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
supermove = 1
removeongethit = 1
bindtime = 1
ownpal = 1
scale = .9, .9

[State 901, air charge]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = Time = 0
trigger2 = Time = 50
anim = 7020
ID = 7020
pos = 0,2
sprpriority = 2
supermove = 1
removeongethit = 1
bindtime = 1
ownpal = 1
scale = .9, .9

[State 901, constellation]
type = Explod
triggerall = AnimExist(901) = 1
triggerall = NumExplod(6000) = 0
trigger1 = Time = 5
anim = 6000
ID = 6000
pos = 0,-5
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
removeongethit = 1
supermove = 1
bindtime = -1
removetime = -2

[State 901, constellation grow]
type = Explod
triggerall = NumExplod(6000) = 0
trigger1 = Time = 0
anim = 6001
ID = 6001
pos = 0,-5
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
removeongethit = 1
supermove = 1
bindtime = -1
removetime = -2

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
triggerall = var(1) = 0
triggerall = NumExplod(903) = 0
trigger1 = 1
pos = 0,0
anim = 903
ID = 903
sprpriority = -1
supermove = 1
removeongethit = 1
bindtime = 1
ownpal = 1
removetime = -1

[State 901, cosmo]
type = Explod
triggerall = var(1) = 1
triggerall = NumExplod(10903) = 0
trigger1 = 1
pos = 0,0
anim = 10903
ID = 10903
sprpriority = -1
supermove = 1
removeongethit = 1
bindtime = 1
ownpal = 1
removetime = -1

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

[State 900, ChangeAnim]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 10902

[State 902, Var]
type = VarSet
trigger1 = Time = 0
var(10) = 0

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(6000) >= 1
trigger1 = Time = 0
ID = 6000

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(6001) >= 1
trigger1 = Time = 0
ID = 6001

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7030) >= 1
trigger1 = Time = 0
ID = 7030

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7031) >= 1
trigger1 = Time = 0
ID = 7031

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7010) >= 1
trigger1 = Time = 0
ID = 7010

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(7020) >= 1
trigger1 = Time = 0
ID = 7020

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(903) >= 1
trigger1 = Time = 0
ID = 903

[State 902, removeexplod]
type = RemoveExplod
triggerall = NumExplod(10903) >= 1
trigger1 = Time = 0
ID = 10903

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
; Fire Sword ON
[Statedef 905]
type = S
movetype = I
physics = S
anim = 905
ctrl = 0

[State 905, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 120
anim = -1
sound = -1
pos = -1
movetime = 120

[State 905]
type = PlaySnd
trigger1 = Animelem = 2
value = 29,0

[State 905, EnvColor]
type = EnvColor
trigger1 = AnimElem = 3
value = 255,255,255
time = 4

[State 905, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 15,3

[State 905, 1]
type = varset
trigger1 = AnimTime = 0
var(1) = 1

[State 905, 1]
type = varset
trigger1 = AnimTime = 0
var(3) = 1

[State 905, 1]
type = varset
trigger1 = AnimTime = 0
var(4) = 1

[State 905, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------
; Fire Sword OFF
[Statedef 906]
type = S
movetype = I
physics = S
anim = 906
ctrl = 0

[State 906, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 120
anim = -1
sound = -1
pos = -1
movetime = 120

[State 906, 1]
type = varset
trigger1 = Time = 9
var(1) = 0

[State 906, 1]
type = varset
trigger1 = Time = 9
var(3) = 0

[State 905, 1]
type = varset
trigger1 = Time = 9
var(4) = 0

[State 906, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 15,3

[State 906, EnvColor]
type = EnvColor
trigger1 = AnimElem = 8
value = 255,255,255
time = 4

[State 906, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
; Special Moves
;------------------------------------------------------------------------------

; Somersault Kick
[Statedef 1000]
type    = A
movetype= A
physics = N
poweradd= 100
juggle = 8
ctrl = 0
anim = 1000
velset = 0,0

[State 1000, 1]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 11000

[State 1000, afterimage]
type = AfterImage
trigger1 = AnimElem = 3
time = 40
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State 1000, Flash]
type = Explod
trigger1 = AnimElem = 5
pos = -25,-130
anim = 1001
ID = 1001
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1000, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,5

[State 1000, 3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 12,0
channel = 0

[State 1000, polvere]
type = Explod
trigger1 = AnimElem = 3
pos = 10,5
anim = 7089
scale = 0.5,0.5
sprpriority = 5

[State 1000, 4]
type = VelSet
trigger1 = AnimElem = 3
y = -7

[State 1000, 5]
type = VelAdd
trigger1 = Time >= 19
x = .1

[State 1000, 6] ;Gravity
type = VelAdd
trigger1 = Time >= 19
y = .3

[State 1000, 7] ;Gravity
type = VelAdd
trigger1 = Time >= 19
y = .3

[State 1000, 8]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
attr = S, SA
animtype  = Hard
damage    = 20,2
guardflag = MA
getpower = 0
givepower = 0
pausetime = 3,0
sparkno = s7001
sparkxy = 0,-50
hitsound   = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0.2,-5
air.velocity = 0.2,-5
envshake.time =  25
envshake.freq = 20
envshake.ampl = 6
envshake.phase = 5
fall = 1

[State 1000, 9]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Hard
damage    = 40,3
guardflag = MA
getpower = 0
givepower = 0
pausetime = 3,0
sparkno = s7002
sparkxy = 0,-50
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5,-6
air.velocity = -5,-9
envshake.time =  25
envshake.freq = 20
envshake.ampl = 6
envshake.phase = 5
fall = 1

[State 1000, 10] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52

;---------------------------------------
; Hammer Kick
[Statedef 1010]
type    = A
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1010
sprpriority = -1

[State 1010, 1]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 11010

[State 1010, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 1

[State 1010, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,1
channel = 0

[State 1010, afterImage]
type = AfterImage
trigger1 = Time = 0
time = 40
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State 1010, Flash]
type = Explod
trigger1 = AnimElem = 8
pos = 0,-150
anim = 1011
sprpriority = 5

[State 1010, polvere]
type = Explod
trigger1 = AnimElem = 2
pos = 10,5
anim = 7089
scale = 0.5,0.5
sprpriority = 5

[State 1010, 4]
type = VelAdd
trigger1 = AnimElem = 2
y = -.8

[State 1010, 5]
type = VelAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
x = 3

[State 1010, 6]
type = HitDef
trigger1 = AnimElem = 10
attr = S, SA
animtype  = Hard
damage    = 40,3
guardflag = MA
pausetime = 5,0
sparkno = s7001
sparkxy = 0,-75
hitsound   = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -5.5
air.velocity = -2.5,-4
envshake.time =  25
envshake.freq = 20
envshake.ampl = 6
envshake.phase = 5

[State 1010, 7]
type = HitDef
trigger1 = AnimElem = 11
attr = S, SA
animtype  = Hard
damage    = 50,4
guardflag = MA
pausetime = 8,0
sparkno = s7002
sparkxy = 0,-65
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4, -1
air.velocity = -4,8
envshake.time =  25
envshake.freq = 20
envshake.ampl = 5
envshake.phase = 5
p2stateno = 1025

[State 1010, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0

;---------------------------------------
; Powerful Combo
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
anim = 1020
sprpriority = -1
poweradd = 100
ctrl = 0

[State 1020, polvere]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
pos = 0,0
anim = 7080
sprpriority = 5

[State 1020, 2]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
value = 2,1

[State 1020, afterImage]
type = AfterImage
trigger1 = Time = 0
time = 64
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State 1020, 3]
type = VelSet
trigger1 = AnimElem = 5
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
x = 5

[State 1020, 4]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 12
attr = S, SA
animtype  = medium
damage    = 15,2
guardflag = MA
pausetime = 10,15
sparkno = s7001
sparkxy = 0,-85
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 21
ground.velocity = -5.5
air.velocity = -2.5,-4
envshake.time =  25
envshake.freq = 20
envshake.ampl = 5
envshake.phase = 5

[State 1020, 5]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = medium
damage    = 20,2
guardflag = MA
pausetime = 10,15
sparkno = s7001
sparkxy = 5,-25
hitsound   = S1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 26
ground.velocity = -5.5
air.velocity = -2.5,-4
envshake.time =  25
envshake.freq = 20
envshake.ampl = 5
envshake.phase = 5

[State 1020, 6]
type = PlaySnd
trigger1 = AnimElem = 10
value = 30,4

[State 1020, 7]
type = HitDef
trigger1 = AnimElem = 13
attr = S, SA
animtype  = Hard
damage    = 30,2
guardflag = MA
pausetime = 10,12
sparkno = s7002
sparkxy = -15,-95
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -15,-5
air.velocity = -13, -5
fall = 1
p2stateno = 1025
envshake.time =  35
envshake.freq = 20
envshake.ampl = 5
envshake.phase = 5

[State 1020, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Shaking from the hit
; (a custom gethit state)
[Statedef 1025]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] ;Custom animation
type = ChangeAnim2
triggerall = var(1) = 0
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

;---------------------------------------
; Sand Throw 1
[Statedef 1100]
type = C
movetype = A
physics = S
anim = 1100
juggle = 3
velset = 0,0
ctrl = 0
poweradd = 60

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 0,2

[State 1100, 2 Polvere per GIGANTI]
type = Projectile
triggerall = P2Name = "aldebaran" || P2Name = "cassios"
trigger1 = AnimElem = 9
projanim = 1105
projhitanim = 1105
projhits = 1
projpriority = 30
projremovetime = 21
velocity = 0,0
offset = 20,30
attr = C, SP
damage   = 0,0
animtype = light
guardflag = L
hitflag = L
pausetime = 0,60
getpower = 0
givepower = 0
sparkxy = 1000,1000
hitsound = S14,0
guardsound = S14,0
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = heavy
air.velocity = 0,0
air.juggle = 0
air.fall = 0
down.velocity = 0,0
down.hittime = 60
down.bounce = 1

[State 1100, 2 Polvere]
type = Projectile
triggerall = P2Name != "aldebaran"
triggerall = P2Name != "cassios"
trigger1 = AnimElem = 9
projanim = 1103
projhitanim = 1103
projhits = 1
projpriority = 30
projremovetime = 21
velocity = 0,0
offset = 20,30
attr = C, SP
damage   = 0,0
animtype = light
guardflag = L
hitflag = L
pausetime = 0,60
getpower = 0
givepower = 0
sparkxy = 1000,1000
hitsound = S14,0
guardsound = S14,0
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = heavy
air.velocity = 0,0
air.juggle = 0
air.fall = 0
down.velocity = 0,0
down.hittime = 60
down.bounce = 1

[State 1100, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Sand Throw 2
[Statedef 1101]
type = S
movetype = A
physics = S
anim = 1101
juggle = 3
velset = 0,0
ctrl = 0
poweradd = 60

[State 1101, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,2

[State 1101, 2 Polvere per GIGANTI]
type = Projectile
triggerall = P2Name = "aldebaran" || P2Name = "cassios" || P2Name = "algethiS" || P2Name = "algethiH"
trigger1 = AnimElem = 8
projanim = 1105
projhitanim = 1105
projhits = 1
projpriority = 30
projremovetime = 21
velocity = 0,0
offset = 0,0
attr = S, SP
damage   = 0,0
animtype = light
guardflag = H
hitflag = H
pausetime = 0,60
getpower = 0
givepower = 0
sparkxy = 1000,1000
hitsound = S14,0
guardsound = S14,0
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = heavy
air.velocity = 0,0
air.juggle = 0
air.fall = 0
down.velocity = 0,0
down.hittime = 60
down.bounce = 1

[State 1101, 2 Polvere]
type = Projectile
triggerall = P2Name != "aldebaran"
triggerall = P2Name != "cassios"
triggerall = P2Name != "algethiS"
triggerall = P2Name != "algethiH"
trigger1 = AnimElem = 8
projanim = 1103
projhitanim = 1103
projhits = 1
projpriority = 30
projremovetime = 21
velocity = 0,0
offset = 0,0
attr = S, SP
damage   = 0,0
animtype = light
guardflag = H
hitflag = H
pausetime = 0,60
getpower = 0
givepower = 0
sparkxy = 1000,1000
hitsound = S14,0
guardsound = S14,0
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = heavy
air.velocity = 0,0
air.juggle = 0
air.fall = 0
down.velocity = 0,0
down.hittime = 60
down.bounce = 1

[State 1101, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------
; Amethyst Shard
[Statedef 1110]
type = S
movetype = A
physics = S
anim = 1110
juggle = 3
velset = 0,0
ctrl = 0
poweradd = 60

[State 1110, 1]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 10110

[State 1110, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,2

[State 1110, light]
type = Explod
trigger1 = AnimElem = 2
anim = 1113
ID = 1113
pos = 50,-86
postype = p1
sprpriority = 5
removetime = 35
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 1110, pre-projectile]
type = Explod
trigger1 = AnimElem = 2,5
anim = 1114
ID = 1114
pos = 45,-85
postype = p1
sprpriority = 2
removetime = 15
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 1110, 3]
type = Projectile
trigger1 = AnimElem = 2, 20
attr = S, SP
ignorehitpause = 1
projanim = 1111
projhitanim = 1115 ;1112
offset = 45,-85
velocity = 8,0
ID = 1111
damage = 60,6
animtype = Hard
hitflag = MAF
guardflag = MA
getpower = 0
givepower = 0
pausetime = 0,0
sparkno = s7071
sparkxy = 60,0
guard.sparkno = -1
hitsound   = s1,9
guardsound = S6,1
ground.type = High
ground.slidetime = 6
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
projremove = 1
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10

[State 1110, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Acid Throw
[Statedef 1120]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1120
poweradd = 60

[State 1120, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,4

[State 1120, 2]
type = Helper
trigger1 = AnimElem = 4
name = "acid"
;postype = p1
pos = 10,-20
stateno = 1121
ownpal = 1
size.xscale = 0.5
size.yscale = 0.7

[State 1120, 3]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------
; (helper)
[Statedef 1121]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 1121
ctrl = 0
sprpriority = 1

[State 1121, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 8

[State 1121]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1121]
type = HitDef
trigger1 = Time = 0
damage = 60,30
getpower = 0,0
givepower = 0,0
pausetime = 2,3
attr = A,SP
hitflag = HA
guardflag = HA
animtype = Hard
air.animtype = back
priority = 4, hit
sparkno = -1
guard.sparkno = -1
sparkxy = 0, 0
guardsound = S0,7
ground.type = high
air.type = high
ground.slidetime = 20
ground.hittime = 24
ground.velocity = -6, 0
;air.velocity = -3-parent,fvar(1), -5+parent,fvar(1)
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
yaccel = .5
air.fall = 1
fall.recover = 0
fall.xvelocity = 0
fall.yvelocity = 0
p2facing = 1
envshake.time = 10           ;Parameters for shaking the screen on hit
envshake.ampl = 2
palfx.time = 20
palfx.add = 189,70,8
palfx.mul = 70,162,0
palfx.color = 60

[State 1121]
type = PlaySnd
trigger1 = movehit
value = 5,5
freqmul = 1.3
persistent = 0

[State 1121]
type = Explod
trigger1 = movecontact && !(time%10)
anim = 1126
vel = 0,-2
pos = 0,ceil(-105*const(size.xscale))
random = 10,10
ownpal = 1
ontop = 1

[State 1121, VelSet]
type = VelSet
trigger1 = movecontact
x = 1

[State 1121, ChangeAnim]
type = ChangeAnim
trigger1 = movecontact && root,var(12) <= 3
value = 1125
persistent = 0

[State 1121, PosSet]
type = PosSet
trigger1 = anim = 1125
x = floor(target,pos X)
persistent = 0

[State 1121]
type = DestroySelf
trigger1 = frontedgedist <= -150
trigger2 = anim = 1125 && !animtime
trigger3 = Time = 150

[State 1121, Land1]
type = Helper
trigger1 = animelemno(0) = [8,8]
pos = -18,15
stateno = 1122

[State 1121, Land2]
type = Helper
trigger1 = animelemno(0) = [8,8]
pos = -40,20
stateno = 1123

[State 1121, Land3]
type = Helper
trigger1 = animelemno(0) = [8,8]
pos = -35,30
stateno = 1124

;---------------------------------------
;
[Statedef 1122]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 1122
ctrl = 0
sprpriority = -4

[State 1122]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1122]
type = Explod
trigger1 = AnimElem = 1
anim = 1127
pos = 5,1

[State 1122]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
;
[Statedef 1123]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 1123
ctrl = 0
sprpriority = 1

[State 1123]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1123]
type = Explod
trigger1 = AnimElem = 1
anim = 1128
pos = 5,1

[State 1123]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
;
[Statedef 1124]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 1124
ctrl = 0
sprpriority = 1

[State 1124]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1124]
type = Explod
trigger1 = AnimElem = 1
anim = 1129
pos = 5,1

[State 1124]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
; Deception (counter)
[Statedef 1200]
type = S
movetype = I
physics = S
anim = 1200
juggle = 3
velset = 0,0
ctrl = 0

[State 1200, 1]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 11200

;[State 1200, polvere]
;type = Explod
;trigger1 = AnimElem = 2
;pos = 12,10
;anim = 7088
;scale = 0.5,0.5
;sprpriority = 5
;removetime = 40
;removeongethit = 1
;
;[State 1200, polvere]
;type = Explod
;trigger1 = AnimElem = 2
;pos = -12,10
;anim = 70881
;scale = 0.5,0.5
;sprpriority = 5
;removetime = 40
;removeongethit = 1

;[State 1200, polvere]
;type = Explod
;trigger1 = Time = 30
;pos = 12,10
;anim = 7088
;scale = 0.5,0.5
;sprpriority = 5
;removetime = 26
;removeongethit = 1
;
;[State 1200, polvere]
;type = Explod
;trigger1 = Time = 30
;pos = -12,10
;anim = 70881
;scale = 0.5,0.5
;sprpriority = 5
;removetime = 26
;removeongethit = 1

[State 1200, Afterimage]
type = AfterImage
trigger1 = AnimElem = 1
length = 20
PalBright= 0, 0,0
PalContrast= 98,98,98
PalAdd=0,  0,  0
PalMul      =  1,1,1
TimeGap  = 1
FrameGap = 2
Trans = Add1
time = 5

[State 1200, shine]
type = PalFX
trigger1 = AnimElem = 3
time = 15
add = 0,0,0
sinadd = 100,100,100,3

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 2
value = 9,3

[State 1200]
type = PlaySnd
trigger1 = AnimElem = 2
value = 27,3
channel = 0

[State 1200]
type = ReversalDef
trigger1 = Time = 0
reversal.attr = SCA,AA
p1stateno = 1201
hitsound = S7,2
pausetime = 10,20
pausetime = 20,30

[State 1200]
type = StopSnd
trigger1 = AnimTime = 0
channel = 0

[State 1200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; (p1 state 1)
[Statedef 1201]
type = S
movetype = A
physics = S
anim = 1201
juggle = 3
velset = 0,0
ctrl = 0
poweradd = 100

[State 1200, 1]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 11201

[State 1201, spark]
type = Explod
triggerall = NumExplod(70091) = 0
trigger1 = 1
anim = 70091
ID = 70091
pos = 0,-60
postype = p1
sprpriority = 2
supermove = 1
removetime = 40
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 1201, RemoveExplod]
type = RemoveExplod
trigger1 = time > 0
ID = 70091

[State 1201, 0 per eventuale voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 30,2

[State 1201, afterImage]
type = AfterImage
trigger1 = Time = 9
time = 67
length = 15
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State 1201, 1]
type = HitDef
triggerall = var(1) = 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
priority = 7
attr = S, SA
getpower = 0
givepower = 0
damage = 10
animtype = medium
pausetime = 0,0
sparkno = s7000
sparkxy = -10,-76
guard.sparkno = -1
hitsound   = S1,0
guardsound = -1
ground.type = high
ground.slidetime = 0
ground.hittime  = 80
ground.velocity = 0, 0
air.velocity = 0, 0
kill = 0

[State 1201, 1]
type = HitDef
triggerall = var(1) = 1
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
priority = 7
attr = S, SA
getpower = 0
givepower = 0
damage = 10
animtype = medium
pausetime = 0,0
sparkno = s7071
sparkxy = -15,-85
guard.sparkno = -1
hitsound   = S1,9
guardsound = -1
ground.type = high
ground.slidetime = 0
ground.hittime  = 80
ground.velocity = 0, 0
air.velocity = 0, 0
kill = 0

[State 1201, 2]
type = HitDef
triggerall = var(1) = 0
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
priority = 7
attr = S, SA
getpower = 0
givepower = 0
damage = 10
animtype = hard
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = S1,1
guardsound = -1
ground.type = low
ground.slidetime = 0
ground.hittime  = 80
ground.velocity = 0, 0
air.velocity = 0, 0
kill = 0

[State 1201, 2]
type = HitDef
triggerall = var(1) = 1
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
priority = 7
attr = S, SA
getpower = 0
givepower = 0
damage = 10
animtype = hard
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = S1,9
guardsound = -1
ground.type = low
ground.slidetime = 0
ground.hittime  = 80
ground.velocity = 0, 0
air.velocity = 0, 0
kill = 0

[State 1201, 3]
type = ChangeState
trigger1 = Time = 75
value = 1202
ctrl = 1

;---------------------------------------
; (p1 state 2)
[Statedef 1202]
type = S
movetype = A
physics = S
anim = 1202
juggle = 3
velset = 0,0
ctrl = 0

[State 1200, 1]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 11202

[State 1202, 2]
type = HitDef
trigger1 = AnimElem = 5
priority = 7
attr = S, SA
getpower = 0
givepower = 0
damage = 20
animtype = hard
pausetime = 0,6
sparkno = s7002
sparkxy = 0,-70
guard.sparkno = -1
hitsound   = S1,5
guardsound = -1
ground.type = high
ground.slidetime = 0
ground.hittime  = 330
ground.velocity = -3, -10
air.velocity = -1,-7
fall = 1
fall.recover = 0

[State 1202, 3]
type = ChangeState
trigger1 = Time = 50
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Deception (new)
[Statedef 1210]
type = L
movetype = I
physics = C
velset = 0,0

[State 1210]
type = ChangeAnim
trigger1 = time = 0
value = ifelse (var(1) = 0, 5110, 15110)

[State 1210, shine]
type = PalFX
trigger1 = time = 0
time = 15
add = 0,0,0
sinadd = 100,100,100,3

[State 1210]
type = ChangeState
triggerall = time >= 10
trigger1 = command = "a"
value = ifelse (var(1) = 0, 1211, 1214)

[State 1210]
type = ChangeState
triggerall = time >= 10
trigger1 = command = "b"
value = ifelse (var(1) = 0, 1212, 1214)

[State 1210]
type = ChangeState
triggerall = time >= 10
trigger1 = command = "c" 
value = ifelse (var(1) = 0, 1213, 1214)

[State 1210]
type = ChangeState
trigger1 = time = 180
value = 5120

;---------------------------------------
; Deception (new) - Sand Throw
[Statedef 1211]
type = S
movetype = A
physics = S
anim = 1211
juggle = 3
velset = 0,0
ctrl = 0
poweradd = 60

[State 1211, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 1211, 2 Polvere per GIGANTI]
type = Projectile
triggerall = P2Name = "aldebaran" || P2Name = "cassios" || P2Name = "algethiS" || P2Name = "algethiH"
trigger1 = AnimElem = 6
projanim = 1105
projhitanim = 1105
projhits = 1
projpriority = 30
projremovetime = 21
velocity = 0,0
offset = 0,0
attr = S, SP
damage   = 0,0
animtype = light
guardflag = H
hitflag = H
pausetime = 0,60
getpower = 0
givepower = 0
sparkxy = 1000,1000
hitsound = S14,0
guardsound = S14,0
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = heavy
air.velocity = 0,0
air.juggle = 0
air.fall = 0
down.velocity = 0,0
down.hittime = 60
down.bounce = 1

[State 1211, 2 Polvere]
type = Projectile
triggerall = P2Name != "aldebaran"
triggerall = P2Name != "cassios"
triggerall = P2Name != "algethiS"
triggerall = P2Name != "algethiH"
trigger1 = AnimElem = 8
projanim = 1103
projhitanim = 1103
projhits = 1
projpriority = 30
projremovetime = 21
velocity = 0,0
offset = 0,0
attr = S, SP
damage   = 0,0
animtype = light
guardflag = H
hitflag = H
pausetime = 0,60
getpower = 0
givepower = 0
sparkxy = 1000,1000
hitsound = S14,0
guardsound = S14,0
ground.type = high
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.animtype = heavy
air.velocity = 0,0
air.juggle = 0
air.fall = 0
down.velocity = 0,0
down.hittime = 60
down.bounce = 1

[State 1211, 3]
type = PlaySnd
triggerall = random < 250
trigger1 = AnimTime = 0
value = 31,0
channel = 0

[State 1211, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Deception (new) - Acid Throw
[Statedef 1212]
type = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 1212
poweradd = 60

[State 1212, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,4

[State 1212, 2]
type = Helper
trigger1 = AnimElem = 4
name = "acid"
;postype = p1
pos = 10,-20
stateno = 1121
ownpal = 1
size.xscale = 0.5
size.yscale = 0.7

[State 1212, 3]
type = PlaySnd
triggerall = random < 250
trigger1 = !AnimTime
value = 31,0
channel = 0

[State 1212, 4]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------
; Deception (new) - Punch
[Statedef 1213]
type = S
movetype = A
physics = S
juggle = 2
velset = 0,0
ctrl = 0
anim = 1213
poweradd = 50
sprpriority = 2

[State 1213]
type = PosFreeze
trigger1 = Time = 0
value = 3

[State 1213]
type = VelAdd
triggerall = animtime < 14
trigger1 = Time = 3
x = 8

[State 1213, 1]
type = PlaySnd
trigger1 = Time = 8
value = 0,2

[State 1213, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = s7002
sparkxy = -10,-95
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
fall = 1

[State 1213, 3]
type = PlaySnd
triggerall = random < 250
trigger1 = AnimTime = 0
value = 31,0
channel = 0

[State 1213, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Deception (new) - Sword
[Statedef 1214]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1214
sprpriority = 2

[State 1214, 1]
type = PlaySnd
trigger1 = Time = 4
value = 13,1

[State 1214, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = s7072
sparkxy = -10,-70
hitsound = s1,10
guardsound = s6,1
ground.type = low
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4
getpower = 0
givepower = 0

;elimina il frame n°8 per standpose affannata
[State 1214, 3]
type = ChangeState
triggerall = life <= 250
trigger1 = Time = 39
value = 0
ctrl = 1

[State 1214, 4]
type = PlaySnd
triggerall = random < 250
trigger1 = AnimTime = 0
value = 31,0
channel = 0

[State 1214, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Blade's Dance
[Statedef 1300]
type = S
movetype = A
physics = S
anim = 1300
juggle = 5
ctrl = 0
velset = 0,0
poweradd = 100

[State 1300, 1]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
priority = 7
attr = S, SA
getpower = 0
givepower = 0
damage = 8,1
hitflag = MAF
guardflag = MA
animtype = medium
pausetime = 0,0
sparkno = s7071
sparkxy = -15,-85
guardsound = S6,1
hitsound   = S1,9
ground.type = high
ground.slidetime = 3
ground.hittime  = 10
ground.velocity = -3, 0
air.velocity = -3,0

[State 1300, 2]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
priority = 7
attr = S, SA
getpower = 0
givepower = 0
damage = 8,1
hitflag = MAF
guardflag = MA
animtype = hard
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = S1,9
guardsound = -1
ground.type = low
ground.slidetime = 3
ground.hittime  = 10
ground.velocity = -3, 0
air.velocity = -3,0

[State 1300, stop sword]
type = PlaySnd
trigger1 = Time = 65
value = 19,0

[State 1300, voice]
type = PlaySnd
trigger1 = Time = 0
value = 30,2
channel = 0

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
value = 19,1

[State 1300]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Fire Trail
[Statedef 1310]
type = S
movetype = A
physics = S
anim = 1310
juggle = 5
ctrl = 0
velset = 0,0
poweradd = 60

[State 1310]
type = PlaySnd
trigger1 = AnimElem = 5, 3
value = 5,2

[State 1310]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,4

[State 1310]
type = PlaySnd
trigger1 = AnimElem = 7
value = 15,3

[State 1310]
type = PlaySnd
trigger1 = AnimElem = 3
value = 19,0

[State 1310, ground flame]
type = Explod
trigger1 = AnimElem = 5, 3
anim = 1316
ID = 1316
pos = 10,-100
scale = 0.6,0.6
postype = p1
sprpriority = 2
removetime = -2
ownpal = 1

[State 1310, ground flame]
type = Explod
trigger1 = AnimElem = 7
anim = 1312
ID = 1312
pos = 13,0
postype = p1
sprpriority = 2
removetime = -2
ownpal = 1

[State 1310, wave sound]
type = PlaySnd
trigger1 = Time = 40
trigger2 = Time = 65
value = 15,5

[State 1310, Helper]
type = Helper
trigger1 = Time = 65
name = "boxflame"
ID = 1311
stateno = 1311
pos = 0,0
postype = p1

[State 1310, flame wave1]
type = Explod
trigger1 = Time = 40
anim = 1314
ID = 1314
pos = 0,5
postype = p1
vel = 6,0
sprpriority = 2
removetime = -2
ownpal = 1

[State 1310, flame wave2]
type = Explod
trigger1 = Time = 45
anim = 1313
ID = 1313
pos = 6,20
postype = p1
vel = 5,0
sprpriority = 2
removetime = -2
ownpal = 1

[State 1310, flame wave3]
type = Explod
trigger1 = Time = 50
anim = 1313
ID = 1313
pos = 0,-20
postype = p1
vel = 6,0
sprpriority = 2
removetime = -2
ownpal = 1

[State 1310, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 30,3

[State 1310, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------
; (helper)
[Statedef 1311]
type = S
movetype = A
physics = N
anim = 1311
velset = 6,0

[State 1311, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SP
animtype  = up
damage    = 70,7
priority  = 4
getpower = 0
givepower = 0
hitflag = MF
guardflag = M
pausetime = 0,20
sparkno = s1315
sparkxy = -20,0
hitsound = S15,4
guardsound = S15,7
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -1,-10
guard.velocity = 0
air.velocity = -1,-0.3
airguard.velocity = 0,0
p2facing = 1
fall = 1
palfx.time = 80
palfx.mul = 250,224,120
palfx.add = 240,50,0

[State 1311, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Fire Dive
[Statedef 1320]
type = A
movetype = A
physics = A
anim = 1320
juggle = 1
ctrl = 0
poweradd = 100

[State 1320, AfterImage]
type = AfterImage
trigger1 = AnimElem = 3
time = 15
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State 1320, VelSet]
type = VelSet
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 0
y = -1

[State 1320, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 15,7

[State 1320, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,1

[State 1320, vel]
type = VelSet
trigger1 = AnimElem = 3,3
y = 10

[State 1320, 2]
type = HitDef
trigger1 = AnimElem = 3
priority = 5
attr = A, SA
damage   = 80,8
getpower = 0
givepower = 0
p1stateno = 1321
animtype = Hard
priority = 3
guardflag = MA
pausetime = 0,0
sparkno = -1
hitsound = S15,3
guardsound = s6,1
ground.type = High
ground.slidetime = 9
ground.hittime  = 20
ground.velocity = 0, 10
air.velocity = 0,100
airguard.velocity = 0, 20
fall = 1
fall.recover = 0
palfx.time = 30
palfx.mul = 250,224,120
palfx.add = 240,50,0
envshake.time = 150
envshake.freq = 50
envshake.ampl = 5
envshake.phase = 5
fall.envshake.ampl = 5
fall.envshake.freq = 50
fall.envshake.time = 15

[State 1320, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -15
value = 1321
ctrl = 0

;---------
; Fire Dive (end)
[Statedef 1321]
type = S
movetype = A
physics = S
anim = 1321
juggle = 1

[State 1321, spark]
type = Explod
triggerall = P2movetype = H
trigger1 = P2stateno = 5000
anim = 1322
ID = 1322
pos = 10,30
postype = p2
sprpriority = 5
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
ownpal = 1
scale = 1.5,1.5

[State 1321, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1321, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1321, ground powder]
type = Explod
trigger1 = AnimElem = 1
anim = 7081
ID = 7081
pos = 10,0
postype = p1
sprpriority = -3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
ownpal = 1
removeongethit = 0
scale = 1,1

[State 1321, left powder]
type = Explod
trigger1 = AnimElem = 1
anim = 7088
ID = 7088
pos = 4,5
postype = p1
sprpriority = 4
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
ownpal = 1
removeongethit = 0
scale = .5,.5

[State 1321, right powder]
type = Explod
trigger1 = AnimElem = 1
anim = 70881
ID = 70881
pos = 4,5
postype = p1
sprpriority = -3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 0
ownpal = 1
removeongethit = 0
scale = .5,.5

[State 1321, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,3

[State 1321, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Nature Fury 1
[Statedef 1400]
type    = S
movetype= I
physics = S
velset = 0,0
poweradd = 100
juggle = 0
ctrl = 0
anim = 1400
sprpriority = 2

[State 1400]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 11400

[State 1400, Voice]
type = PlaySnd
trigger1 = Time = 0
value = s3,0

[State 1400, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = s12,1

[State 1400, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0,5

[State 1400]
type = PlaySnd
trigger1 = Time = 0
value = 21,0

[State 1400, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 21,1
channel = 14

[State 1400, StopSnd]
type = StopSnd
trigger1 = Time = 62
trigger2 = anim != 1400
channel = 14

[State 1400]
type = Width
trigger1 = 1
value = 20,0

;[State 1400, SfondoDark]
;type = Explod
;trigger1 = AnimElem = 1
;pos = 0,0
;anim = 8000
;ID = 8000
;postype = back
;sprpriority = -9
;ownpal = 1
;supermovetime = 420
;removetime = -2
;bindtime = -1

[State 1400, eye1]
type = Explod
trigger1 = AnimElem = 6
anim = 3120
ID = 3120
pos = -40,0
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 62
scale = .8,.8
removeongethit = 1

[State 1400, eye2centrosotto]
type = Explod
trigger1 = AnimElem = 6
anim = 3120
ID = 3120
pos = 115,130
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 62
scale = .7,.7
facing = 1
removeongethit = 1

[State 1400, eye2centrosopra]
type = Explod
trigger1 = AnimElem = 6
anim = 3121
ID = 3120
pos = 100,-100
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 62
scale = .7,.7
facing = 1
removeongethit = 1

[State 1400, eye3]
type = Explod
trigger1 = AnimElem = 6
anim = 3122
ID = 3120
pos = 420, -20
postype = back
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 62
scale = .8,.8
facing = -1
removeongethit = 1

[State 1400, HelperHIT1Left]
type = Helper
trigger1 = Animelem = 7
ID = 1400
stateno = 1403
postype = back
pos = 60,45
keyctrl = 0
ownpal = 1

[State 1400]
type = ChangeState
trigger1 = AnimTime = 62
value = 1401
ctrl = 1

;---------------------------------------
; (end)
[Statedef 1401]
type    = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 1401
sprpriority = 2

[State 1401]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 11401

[State 1401, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3120) > 0
trigger1 = Time = 0
ID = 3120

[State 1401, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 14

[State 1401]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------------------
; (hit1 left)
[Statedef 1403]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 1403
sprpriority = 8

[State 1403]
type = HitDef
trigger1 = Time = 0
attr = S,HP
hitflag = MA
guardflag = MA
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 60,6
envshake.time =  15
envshake.freq = 5
envshake.ampl = 2
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0,-5
air.velocity = 0,-5
fall = 1
p1sprpriority = 3

[State 1403]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
; Nature Fury 2
[Statedef 1410]
type    = S
movetype= I
physics = S
velset = 0,0
poweradd = 100
juggle = 0
ctrl = 0
anim = 1400
sprpriority = 2

[State 1410]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 11400

[State 1410, Voice]
type = PlaySnd
trigger1 = Time = 0
value = s3,0

[State 1410, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = s12,1

[State 1410, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0,5

[State 1410]
type = PlaySnd
trigger1 = Time = 0
value = 21,0

[State 1410, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 21,2
channel = 14

[State 1410, StopSnd]
type = StopSnd
trigger1 = Time = 62
trigger2 = anim != 1400
channel = 14

[State 1410]
type = Width
trigger1 = 1
value = 20,0

;[State 1410, SfondoDark]
;type = Explod
;trigger1 = AnimElem = 1
;pos = 0,0
;anim = 8000
;ID = 8000
;postype = back
;sprpriority = -9
;ownpal = 1
;supermovetime = 420
;removetime = -2
;bindtime = -1

[State 1410, eye1]
type = Explod
trigger1 = AnimElem = 6
anim = 3120
ID = 3120
pos = -40,0
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 62
scale = .8,.8
removeongethit = 1

[State 1410, eye2centrosotto]
type = Explod
trigger1 = AnimElem = 6
anim = 3120
ID = 3120
pos = 115,130
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 62
scale = .7,.7
facing = 1
removeongethit = 1

[State 1410, eye2centrosopra]
type = Explod
trigger1 = AnimElem = 6
anim = 3121
ID = 3120
pos = 100,-100
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 62
scale = .7,.7
facing = 1
removeongethit = 1

[State 1410, eye3]
type = Explod
trigger1 = AnimElem = 6
anim = 3122
ID = 3120
pos = 420, -20
postype = back
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 62
scale = .8,.8
facing = -1
removeongethit = 1

[State 1410, HelperHIT1DownLeft]
type = Helper
trigger1 = Animelem = 7
trigger2 = Animelem = 8
ID = 1400
stateno = 1413
postype = back
pos = 60,45
keyctrl = 0
ownpal = 1

[State 1410]
type = ChangeState
trigger1 = AnimTime = 62
value = 1401
ctrl = 1

;----------------------------------------------------------------------------------------
; (hit1 down left)
[Statedef 1413]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 1413
sprpriority = 8

[State 1413, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 1

[State 1413, AngleSet]
type = AngleSet
trigger1 = Time >= 0
value = 45

[State 1413, PosAdd]
type = PosAdd
triggerall = numhelper(1400) > 1
trigger1 = Time = 0
x = 60
y = 30

[State 1413]
type = HitDef
trigger1 = Time = 0
attr = S,HP
hitflag = MA
guardflag = MA
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 60,6
envshake.time =  15
envshake.freq = 5
envshake.ampl = 2
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0,-5
air.velocity = 0,-5
fall = 1
p1sprpriority = 3

[State 1413]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
; Nature Fury 3
[Statedef 1420]
type    = S
movetype= I
physics = S
velset = 0,0
poweradd = 100
juggle = 0
ctrl = 0
anim = 1400
sprpriority = 2

[State 1420]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 11400

[State 1420, Voice]
type = PlaySnd
trigger1 = Time = 0
value = s3,0

[State 1420, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = s12,1

[State 1420, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0,5

[State 1420, Voice]
type = PlaySnd
triggerall = enemynear, movetype = H && enemynear, statetype = A
trigger1 = Time = 100
value = 0,5

[State 1420]
type = PlaySnd
trigger1 = Time = 0
value = 21,0

[State 1420, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 21,3
channel = 14

[State 1420, StopSnd]
type = StopSnd
trigger1 = Time = 240
trigger2 = anim != 1400 
channel = 14

[State 1420]
type = Width
trigger1 = 1
value = 20,0

;[State 1420, SfondoDark]
;type = Explod
;trigger1 = AnimElem = 1
;pos = 0,0
;anim = 8000
;ID = 8000
;postype = back
;sprpriority = -9
;ownpal = 1
;supermovetime = 620
;removetime = -2
;bindtime = -1

[State 1400, eye1]
type = Explod
trigger1 = AnimElem = 6
anim = 3120
ID = 3120
pos = -40,0
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 247
scale = .8,.8
removeongethit = 1

[State 1420, eye2centrosotto]
type = Explod
trigger1 = AnimElem = 6
anim = 3120
ID = 3120
pos = 115,130
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 247
scale = .7,.7
facing = 1
removeongethit = 1

[State 1420, eye2centrosopra]
type = Explod
trigger1 = AnimElem = 6
anim = 3121
ID = 3120
pos = 100,-100
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 247
scale = .7,.7
facing = 1
removeongethit = 1

[State 1420, eye3]
type = Explod
trigger1 = AnimElem = 6
anim = 3122
ID = 3120
pos = 420, -20
postype = back
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 247
scale = .8,.8
facing = -1
removeongethit = 1

[State 1420, HelperHIT1Down]
type = Helper
trigger1 = Animelem = 7
ID = 1420
stateno = 1423
postype = P2
pos = 15,0
keyctrl = 0
ownpal = 1

[State 1420, HelperHIT2Down]
type = Helper
trigger1 = Animelem = 8
ID = 1420
stateno = 1424
postype = P2
pos = 0,0
keyctrl = 0
ownpal = 1

[State 1420, HelperHIT3Down]
type = Helper
trigger1 = Animelem = 7
ID = 1420
stateno = 1423
postype = P2
pos = -18,0
keyctrl = 0
ownpal = 1

[State 1420, HelperHIT4Down]
type = Helper
trigger1 = Animelem = 8
ID = 1420
stateno = 1424
postype = P2
pos = -35,0
keyctrl = 0
ownpal = 1

[State 1420, HelperHIT5Right]
type = Helper
triggerall = enemynear, movetype = H && enemynear, statetype = A
trigger1 = Time = 104
ID = 1421
stateno = 1425
postype = p2
pos = -105,0
keyctrl = 0
ownpal = 1
facing = -1

[State 1420, HelperHIT6Right]
type = Helper
triggerall = enemynear, movetype = H && enemynear, statetype = A
trigger1 = Time = 106
ID = 1421
stateno = 1427
postype = p2
pos = -105,20
keyctrl = 0
ownpal = 1
facing = -1

[State 1420, HelperHIT7Right]
type = Helper
triggerall = enemynear, movetype = H && enemynear, statetype = A
trigger1 = Time = 100
ID = 1421
stateno = 1426
postype = p2
pos = -105,40
keyctrl = 0
ownpal = 1
facing = -1

[State 1420, HelperHI85Right]
type = Helper
triggerall = enemynear, movetype = H && enemynear, statetype = A
trigger1 = Time = 110
ID = 1421
stateno = 1425
postype = p2
pos = -105,50
keyctrl = 0
ownpal = 1
facing = -1

[State 1420]
type = PlaySnd
triggerall = enemynear, movetype = H && enemynear, statetype = A
trigger1 = Time = 140
value = 27,3
channel = 0

[State 1420]
type = ChangeState
triggerall = AnimTime >= 124
trigger1 = NumHelper(1421) = 0
trigger2 = AnimTime = 247
value = 1401
ctrl = 1

;----------------------------------------------------------------------------------------
; (p2 state 1)
[Statedef 1422]
type = U
movetype= H
physics = U
velset = 0,0
ctrl = 0

[State 1422, anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1422

;[State 1422, palfx]
;type = PalFX
;trigger1 = Time = 0
;time = 90
;add = 50,100,256
;mul = 256,200,256
;sinadd = 6,3,1,12
;invertall = 0
;color = 4

[State 1422, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 1

[State 1422, SelfState]
type = ChangeState
trigger1 = Time = 120
value = 1428
ctrl = 1

;----------------------------------------------------------------------------------------
; (hit1 down)
[Statedef 1423]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 1423
sprpriority = 8

[State 1423]
type = HitDef
trigger1 = Animelem = 4
attr = S,HA
guardflag = MA
animtype = Up
hitflag = MAFD
damage = 10,1
pausetime = 6,12
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
hitsound = s1,5
guardsound = s6,0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 0,-12
air.velocity = 0,-12
Fall = 1
Fall.recover = 0
Fall.recovertime = 60
;PalFX.time = 60
;PalFX.add = -200,-200,-200
;PalFX.mul = 256,256,256
;PalFX.sinadd = 50,50,50,50
;PalFX.invertall = 0
;PalFX.color = 256
getpower = 0,0
Numhits = 0
affectteam = E
p1sprpriority = 3

[State 1423]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------------------------
; (hit2 down)
[Statedef 1424]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 1424
sprpriority = 8

[State 1424]
type = HitDef
trigger1 = Animelem = 4
attr = S,HA
guardflag = MA
animtype = Up
hitflag = MAFD
damage = 10,1
pausetime = 6,12
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
hitsound = s1,5
guardsound = s6,0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 0,-12
air.velocity = 0,-12
Fall = 1
Fall.recover = 0
Fall.recovertime = 60
;PalFX.time = 60
;PalFX.add = -200,-200,-200
;PalFX.mul = 256,256,256
;PalFX.sinadd = 50,50,50,50
;PalFX.invertall = 0
;PalFX.color = 256
getpower = 0,0
Numhits = 0
affectteam = E
p1sprpriority = 3

[State 1424]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------------------------
; (hit1 right)
[Statedef 1425]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 1425
sprpriority = 8

[State 1425]
type = HitDef
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 40,10
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
p2stateno = 1422
p1sprpriority = 3

[State 1425]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------------------------
; (hit2 right)
[Statedef 1426]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 1426
sprpriority = 8

[State 1426]
type = HitDef
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 40,10
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
p2stateno = 1422
p1sprpriority = 3

[State 1426]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------------------------
; (hit3 right)
[Statedef 1427]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 1427
sprpriority = 8

[State 1427]
type = HitDef
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 40,10
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
p2stateno = 1422
p1sprpriority = 3

[State 1427]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------------------------
; (p2 state 2)
[Statedef 1428]
type    = U
movetype = H
physics = U
ctrl = 0
velset = 0,0
sprpriority = 0

[State 1428, 1]
type = SelfState
trigger1 = Time = 5
value = 5100

[State 1428, 2]
type = SelfState
trigger1 = Time = 5
value = 0
ctrl = 1

;---------------------------------------
; Nature Fury 4 (unused)
[Statedef 1430]
type    = S
movetype= I
physics = S
velset = 0,0
poweradd = 100
juggle = 0
ctrl = 0
anim = 1400
sprpriority = 2

[State 1430]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 11400

[State 1430, Voice]
type = PlaySnd
trigger1 = Time = 0
value = s3,0

[State 1430, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = s12,1

[State 1430, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
trigger1 = AnimElem = 7
value = 0,5

[State 1430, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 21,5
channel = 14

[State 1430, StopSnd]
type = StopSnd
trigger1 = Time = 120
trigger2 = anim != 1400
channel = 14

[State 1430]
type = Width
trigger1 = 1
value = 20,0

;[State 1430, SfondoDark]
;type = Explod
;trigger1 = AnimElem = 1
;pos = 0,0
;anim = 8000
;ID = 8000
;postype = back
;sprpriority = -9
;ownpal = 1
;supermovetime = 420
;removetime = -2
;bindtime = -1

[State 1430, eye1]
type = Explod
trigger1 = AnimElem = 6
anim = 3120
ID = 3120
pos = -40,0
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 124
scale = .8,.8
removeongethit = 1

[State 1430, eye2centrosotto]
type = Explod
trigger1 = AnimElem = 6
anim = 3120
ID = 3120
pos = 115,130
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 124
scale = .7,.7
facing = 1
removeongethit = 1

[State 1430, eye2centrosopra]
type = Explod
trigger1 = AnimElem = 6
anim = 3121
ID = 3120
pos = 100,-100
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 124
scale = .7,.7
facing = 1
removeongethit = 1

[State 1430, eye3]
type = Explod
trigger1 = AnimElem = 6
anim = 3122
ID = 3120
pos = 420, -20
postype = back
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 124
scale = .8,.8
facing = -1
removeongethit = 1

[State 1430, HelperHIT1Left]
type = Helper
trigger1 = Animelem = 7
ID = 1430
stateno = 1433
pos = 100,5
postype = p2
keyctrl = 0
ownpal = 1
facing = -1

[State 1430, HelperHIT2Left]
type = Helper
trigger1 = Animelem = 7
ID = 1430
stateno = 1434
pos = 100,-20
postype = p2
keyctrl = 0
ownpal = 1
facing = -1

[State 1430, HelperHIT3Left]
type = Helper
trigger1 = Animelem = 7
ID = 1430
stateno = 1433
pos = 100,20
postype = p2
keyctrl = 0
ownpal = 1
facing = -1

[State 1430, HelperHIT4Left]
type = Helper
trigger1 = Animelem = 7
ID = 1430
stateno = 1434
pos = 100,55
postype = p2
keyctrl = 0
ownpal = 1
facing = -1

[State 1430, HelperHIT1Right]
type = Helper
trigger1 = Animelem = 7
ID = 1430
stateno = 1435
pos = -100,1
postype = p2
keyctrl = 0
ownpal = 1
facing = -1

[State 1430, HelperHIT2Right]
type = Helper
trigger1 = Animelem = 7
ID = 1430
stateno = 1436
pos = -100,50
postype = p2
keyctrl = 0
ownpal = 1
facing = -1

[State 1430, HelperHIT3Right]
type = Helper
trigger1 = Animelem = 7
ID = 1430
stateno = 1435
pos = -100,-30
postype = p2
keyctrl = 0
ownpal = 1
facing = -1

[State 1430]
type = ChangeState
trigger1 = AnimTime = 124
value = 1401
ctrl = 1

;----------------------------------------------------------------------------------------
; (p2 state 1)
[Statedef 1432]
type = U
movetype= H
physics = U
velset = 0,0
ctrl = 0

[State 1432, anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1432

[State 1432, palfx]
type = PalFX
trigger1 = Time = 0
time = 90
add = 50,100,256
mul = 256,200,256
sinadd = 6,3,1,12
invertall = 0
color = 4

[State 1432, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 1

[State 1432, SelfState]
type = SelfState
trigger1 = pos y < 0
value = 52
ctrl = 1

[State 1432, SelfState]
type = ChangeState
trigger1 = Time = 120
value = 1437
ctrl = 1

;----------------------------------------------------------------------------------------
; (hit1 left)
[Statedef 1433]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 1433
sprpriority = 8

[State 1433]
type = HitDef
trigger1 = Animelem = 4
attr = S,HP
hitflag = MA
guardflag = MA
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 10,1
envshake.time =  15
envshake.freq = 5
envshake.ampl = 2
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
p2stateno = 1432
p1sprpriority = 3

[State 1433]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------------------------
; (hit2 left)
[Statedef 1434]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 1434
sprpriority = 8

[State 1434]
type = HitDef
trigger1 = Animelem = 4
attr = S,HP
hitflag = MA
guardflag = MA
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 10,1
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
p2stateno = 1432
p1sprpriority = 3

[State 1434]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------------------------
; (hit1 right)
[Statedef 1435]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 1435
sprpriority = 8

[State 1435]
type = HitDef
trigger1 = Animelem = 4
attr = S,HP
hitflag = MA
guardflag = MA
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 10,1
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
p2stateno = 1432
p1sprpriority = 3

[State 1435]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------------------------
; (hit2 right)
[Statedef 1436]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 1436
sprpriority = 8

[State 1436]
type = HitDef
trigger1 = Animelem = 4
attr = S,HP
hitflag = MA
guardflag = MA
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 10,1
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
p2stateno = 1432
p1sprpriority = 3

[State 1436]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------------------------
; (p2 state 2)
[Statedef 1437]
type    = U
movetype = H
physics = U
ctrl = 0
velset = 0,0
sprpriority = 0

[State 1437, 1]
type = SelfState
trigger1 = Time = 5
value = 5100

[State 1437, 2]
type = SelfState
trigger1 = Time = 5
value = 0
ctrl = 1

;---------------------------------------
; Roll (forward)
[Statedef 2050]
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
; Roll (back)
[Statedef 2150]
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
value = 12
ctrl = 1

;---------------------------------------
; Nature Unity 1
[Statedef 3000]
type    = S
movetype= A
physics = S
anim = 3000
velset = 0,0
poweradd = -1000
juggle = 0
ctrl = 0

[State 3000]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 13000

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 187
anim = -1
sound = -1
pos = -1
movetime = 187
darken = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 187
time = 20
anim = -1
sound = -1
pos = -1
movetime = 20
darken = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 17,2
channel = 0

[State 3000]
type = PlaySnd
trigger1 = Time = 187
value = 21,0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 35
value = 21,4
channel = 14

[State 3000, StopSnd]
type = StopSnd
trigger1 = Time = 326
trigger2 = anim != 3000
channel = 14

[State 3000, SfondoDark]
type = Explod
trigger1 = Time = 187
pos = 0,0
anim = 8000
ID = 8000
postype = back
sprpriority = -12
ownpal = 1
removetime = 138
supermovetime = 138
bindtime = -1
removeongethit = 1

[State 3000, cosmo]
type = Explod
triggerall = var(1) = 0
triggerall = NumExplod(3008) = 0
trigger1 = AnimElem = 7
ID = 3008
anim = 3008
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 265
supermovetime = 265
removeongethit = 1

[State 3000, cosmo]
type = Explod
triggerall = var(1) = 1
triggerall = NumExplod(13008) = 0
trigger1 = AnimElem = 7
ID = 13008
anim = 13008
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 265
supermovetime = 265
removeongethit = 1

;[State 3000, plant1]
;type = Explod
;trigger1 = Time = 191
;anim = 3109
;ID = 3109
;pos = 0,0
;postype = back
;sprpriority = 2
;ignorehitpause = 1
;ownpal = 1
;bindtime = -1
;persistent = 0
;removetime = 119
;ontop = 1
;removeongethit = 1

[State 3000, EnvColor]
type = EnvColor
trigger1 = Time = 187
trigger2 = Time = 325
value = 255,255,255
time = 4

[State 3000, eye1]
type = Explod
trigger1 = Time = 187
anim = 3120
ID = 3120
pos = -40,0
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 140
scale = .8,.8
supermovetime = 55
pausemovetime = 55
removeongethit = 1

[State 3000, eye2centrosotto]
type = Explod
trigger1 = Time = 187
anim = 3120
ID = 3120
pos = 115,130
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 140
scale = .7,.7
facing = 1
supermovetime = 55
pausemovetime = 55
removeongethit = 1

[State 3000, eye2centrosopra]
type = Explod
trigger1 = Time = 187
anim = 3121
ID = 3120
pos = 100,-100
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 140
scale = .7,.7
facing = 1
supermovetime = 55
pausemovetime = 55
removeongethit = 1

[State 3000, eye3]
type = Explod
trigger1 = Time = 187
anim = 3122
ID = 3120
pos = 420, -20
postype = back
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 140
scale = .8,.8
facing = -1
supermovetime = 55
pausemovetime = 55
removeongethit = 1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Time = 180
value = 21,1
channel = 1

[State 3000, Helper]
type = Helper
trigger1 = Time = 187
name = "branchray1"
ID = 3001
stateno = 3001
pos = -55,-80
postype = back
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5
supermovetime = 55
pausemovetime = 55

[State 3000, Helper]
type = Helper
trigger1 = Time = 187
name = "branchray2"
ID = 3002
stateno = 3002
pos = 390,-30
postype = back
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5
supermovetime = 55
pausemovetime = 55

[State 3000, Helper]
type = Helper
trigger1 = Time = 187
name = "branchray3"
ID = 3003
stateno = 3003
pos = 400,-280
postype = back
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = .5
size.yscale = .5
supermovetime = 55
pausemovetime = 55

[State 3000, ChangeState]
type = ChangeState
trigger1 = Time = 326
value = 3004
ctrl = 1

;-----------------------------
; (branch ray1)
[Statedef 3001]
type = S
movetype = A
physics = N
anim = 3005
velset = 0,0
sprpriority = 2

[State 3001, Projectile]
type = Projectile
trigger1 = AnimElem = 6, 8
trigger2 = AnimElem = 6, 14
trigger3 = AnimElem = 6, 20
trigger4 = AnimElem = 6, 26
trigger5 = AnimElem = 6, 32
trigger6 = AnimElem = 6, 38
trigger7 = AnimElem = 6, 44
trigger8 = AnimElem = 6, 50
trigger9 = AnimElem = 6, 56
trigger10 = AnimElem = 6, 62
trigger11 = AnimElem = 6, 68
trigger12 = AnimElem = 6, 74
trigger13 = AnimElem = 6, 80
trigger14 = AnimElem = 6, 86
trigger15 = AnimElem = 6, 92
ProjID = 3004
projanim = 3004
projscale = .7,.7
projhits = 1
projremove = 0
projremovetime = -1
velocity = 10,-.5
pausetime = 0,40
offset = 80,20
postype = p1
sparkno = s7000
attr = S,HP
hitflag = MAF
guardflag = MA
getpower = 0
givepower = 0
ground.type = Low
animtype = medium
air.animtype = medium
damage = 5,1
air.velocity = 0,0
air.fall = 1
fall.recover = 0
kill = 1

[State 3001, 2]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = movetype = H
trigger3 = parent,stateno != 3000

;---------------------------------------
; (branch ray2)
[Statedef 3002]
type = S
movetype = A
physics = N
anim = 3006
velset = 0,0
sprpriority = 2

[State 3002, Projectile]
type = Projectile
trigger1 = AnimElem = 6, 8
trigger2 = AnimElem = 6, 14
trigger3 = AnimElem = 6, 20
trigger4 = AnimElem = 6, 26
trigger5 = AnimElem = 6, 32
trigger6 = AnimElem = 6, 38
trigger7 = AnimElem = 6, 44
trigger8 = AnimElem = 6, 50
trigger9 = AnimElem = 6, 56
trigger10 = AnimElem = 6, 62
trigger11 = AnimElem = 6, 68
trigger12 = AnimElem = 6, 74
trigger13 = AnimElem = 6, 80
trigger14 = AnimElem = 6, 86
trigger15 = AnimElem = 6, 92
ProjID = 3002
projanim = 3002
projscale = .7,.7
projhits = 1
projremove = 0
projremovetime = -1
velocity = -10,-6
pausetime = 0,40
offset = -110,23
postype = p1
sparkno = s7000
attr = S,HP
hitflag = MAF
guardflag = MA
getpower = 0
givepower = 0
ground.type = Low
animtype = medium
air.animtype = medium
damage = 5,1
air.velocity = 0,0
air.fall = 1
fall.recover = 0
kill = 1

[State 3002, 2]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = movetype = H
trigger3 = parent,stateno != 3000

;---------------------------------------
; (branch ray3)
[Statedef 3003]
type = S
movetype = A
physics = N
anim = 3007
velset = 0,0
sprpriority = 2

[State 3003, Projectile]
type = Projectile
trigger1 = AnimElem = 6, 8
trigger2 = AnimElem = 6, 14
trigger3 = AnimElem = 6, 20
trigger4 = AnimElem = 6, 26
trigger5 = AnimElem = 6, 32
trigger6 = AnimElem = 6, 38
trigger7 = AnimElem = 6, 44
trigger8 = AnimElem = 6, 50
trigger9 = AnimElem = 6, 56
trigger10 = AnimElem = 6, 62
trigger11 = AnimElem = 6, 68
trigger12 = AnimElem = 6, 74
trigger13 = AnimElem = 6, 80
trigger14 = AnimElem = 6, 86
trigger15 = AnimElem = 6, 92
ProjID = 3003
projanim = 3003
projscale = .7,.7
projhits = 1
projremove = 0
projremovetime = -1
velocity = -10,4
pausetime = 0,40
offset = -90,110
postype = p1
sparkno = s7000
attr = S,HP
hitflag = MAF
guardflag = MA
getpower = 0
givepower = 0
ground.type = Low
animtype = medium
air.animtype = medium
damage = 5,1
air.velocity = 0,0
air.fall = 1
fall.recover = 0
kill = 1

[State 3003, 2]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = movetype = H
trigger3 = parent,stateno != 3000

;---------------------------------------
; (end)
[Statedef 3004]
type    = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 3001
sprpriority = 2

[State 3004]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 13001

[State 3004, BGPalFX]
type = BGPalFX
trigger1 = Time = 1
time = 1
add = 255,255,255
mul = 0,0,0
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 3004, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3008) > 0
trigger1 = Time = 0
ID = 3008

[State 3004, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(13008) > 0
trigger1 = Time = 0
ID = 13008

[State 3004, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3120) > 0
trigger1 = Time = 0
ID = 3120

[State 3004, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(8000) > 0
trigger1 = Time = 0
ID = 8000

[State 3004]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Amethyst Shield 1
[Statedef 3050]
type    = S
movetype= A
physics = S
anim = 3050
velset = 0,0
poweradd = -2000
juggle = 0
ctrl = 0

[State 3050]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 13050

[State 3050, no music]
type = AssertSpecial
trigger1 = Time = [0,9999]
flag = nomusic
persistent = 1

[State 3050, 0]
type = SuperPause
trigger1 = AnimElem = 1
time = 420
anim = -1
pos = 0,0
movetime = 420
darken = 1

[State 3050, BGPalFX]
type = BGPalFX
trigger1 = Time = 114
time = 855
add = 100,100,180
mul = 41,41,82
sinadd = 0,0,0,10
invertall = 0
color = 256
ignorehitpause = 1 
persistent = 1

[State 3050, SfondoCrystal]
type = Explod
trigger1 = AnimElem = 4
pos = 0,-80
anim = 8050
ID = 8050
postype = p1
sprpriority = -9
ownpal = 1
removetime = 885
supermovetime = 885
bindtime = -1
removeongethit = 1

[State 3050, 1]
type = PlaySnd
trigger1 = Time = 0
value = 27,4
channel = 0

[State 3050, 1]
type = PlaySnd
trigger1 = Time = 120
value = 16,0

[State 3050, 1]
type = PlaySnd
trigger1 = Time = 320
value = 16,1
channel = 0

[State 3050, 1]
type = PlaySnd
trigger1 = Time = 420
value = 5,4

[State 3050, spause1]
type = Explod
trigger1 = AnimElem = 5
anim = 3053
ID = 3053
pos = 0,-70
postype = p1
sprpriority = 2
supermovetime = 81
ownpal = 1
removetime = -2
removeongethit = 1

[State 3050, spause2]
type = Explod
trigger1 = AnimElem = 35
pos = 0,-70
anim = 3054
ID = 3054
sprpriority = 2
ownpal = 1
supermove = 1
removeongethit = 1

[State 3050, wave fx]
type = Helper
triggerall = Time >= 410
trigger1 = Time = 410
trigger2 = (GameTime % 10) = 0
ID = 3066
stateno = 3066
pos = 0,-65
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause = 1
pausemovetime = 855
supermovetime = 855

;[State 3050, wave fx]
;type = Explod
;trigger1 = Time = 420
;pos = 10,0
;anim = 3066
;ID = 3066
;postype = p1
;sprpriority = 5
;ownpal = 1
;removetime = 445
;removeongethit = 1
;scale = 1.5,1

[State 3050, amethyst shards]
type = Explod
trigger1 = Time = 420
pos = 0,-120
anim = 3056
ID = 3056
postype = p1
sprpriority = 8
ownpal = 1
removetime = -2
removeongethit = 1

[State 3050, 2]
type = HitDef
trigger1 = Time = 430
attr = S, HA
animtype = Medium
damage = 0,80
getpower = 0
givepower = 0
pausetime = 0,430
sparkno = -1
hitsound = S6,3
guardsound = S6,0
hitflag = MAF
guardflag = MA
fall = 1
p1stateno = 3051
p2stateno = 3052

[State 3050, dust fx]
type = Helper
trigger1 = Time = 0 
stateno = 3067 
ID = 3067
name = "dust"
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 411
pausemovetime = 411

[State 3050, body fx]
type = Explod
trigger1 = Time = 0
anim = 3068
pos = 0,0
sprpriority = 1
postype = p1
ownpal = 1
removeongethit = 1
bindtime = -1
removetime = 434
supermovetime = 434
ontop = 1

[State 3050, eye fx]
type = Explod
trigger1 = AnimElem = 38
anim = 3069
pos = 12,3
sprpriority = 2
postype = p1
ownpal = 1
removeongethit = 1
bindtime = -1
removetime = 445
supermovetime = 445
scale = 1,1
ontop = 1

[State 3050, cosmo]
type = Explod
triggerall = NumExplod(3070) = 0
trigger1 = AnimElem = 3
ID = 3070
anim = 3070
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 855
supermovetime = 855
removeongethit = 1

[State 3050, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3069) > 0
trigger1 = AnimElem = 58
ID = 3069

[State 3050, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3070) > 0
trigger1 = AnimElem = 58
ID = 3070

[State 3050, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(8050) > 0
trigger1 = AnimElem = 58
ID = 8050

[State 3050, BGPalFX]
type = BGPalFX
trigger1 = AnimTime = 0
time = 1
add = 255,255,255
mul = 0,0,0
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 3050, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; (p1 state)
[Statedef 3051]
type    = S
movetype= A
physics = S
anim = 3051
velset = 0,0
juggle = 0
ctrl = 0

[State 3051]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 13051

[State 3050, no music]
type = AssertSpecial
trigger1 = Time = [0,9999]
flag = nomusic
persistent = 1

[State 3051, wave fx]
type = Helper
triggerall = AnimElemTime (80) < 0
triggerall = Time >= 0
trigger1 = Time = 0
trigger2 = (GameTime % 10) = 0
ID = 3066
stateno = 3066
pos = 0,-65
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause = 1
pausemovetime = 855
supermovetime = 855

[State 3051, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3069) > 0
trigger1 = AnimElem = 80
ID = 3069

[State 3051, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3070) > 0
trigger1 = AnimElem = 80
ID = 3070

[State 3051, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(8050) > 0
trigger1 = AnimElem = 80
ID = 8050

[State 3051, ametista per GIGANTI]
type = Explod
triggerall = P2Name = "aldebaran" || P2Name = "cassios" || P2Name = "algethiS" || P2Name = "algethiH"
trigger1 = Time = 70
persistent = 0
anim = 3060
ID = 3060
pos = -8,-85
postype = p2
sprpriority = 9
bindtime = 12
ignorehitpause = 1
ownpal = 1
scale = 1.4,1.4

[State 3051, ametista]
type = Explod
triggerall = P2name != "cassios"
triggerall = P2name != "aldebaran"
triggerall = P2Name != "algethiS"
triggerall = P2Name != "algethiH"
trigger1 = Time = 70
persistent = 0
anim = 3060
ID = 3060
pos = -8,-85
postype = p2
sprpriority = 9
bindtime = 12
ignorehitpause = 1
ownpal = 1

[State 3051, 1]
type = HitDef
triggerall = p2stateno = 3052
trigger1 = AnimElem = 2
attr = S, HA
animtype  = Medium
damage  = 400
pausetime = 12,12
sparkno = s3062
sparkxy = 0,-100
hitsound   = S16,2
guardsound = -1
getpower = 0
givepower = 0
envshake.time =  30
envshake.freq = 20
envshake.ampl = 5
envshake.phase = 5
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -2,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 3051, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time = 10
ignorehitpause = 1
persistent = 0

[State 3051, BGPalFX]
type = BGPalFX
trigger1 = AnimTime = 0
time = 1
add = 255,255,255
mul = 0,0,0
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 3051, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
; (p2 state)
[Statedef 3052]
type    = S
movetype= A
physics = S
velset = 0,0

[State 3052, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3052

[State 3052, velset]
type = VelSet
trigger1 = Time = 0
X = 0
Y = 0

[State 3052, 3]
type = SelfState
trigger1 = Time = 2500
trigger1 = Pos Y > -1
value = 1
ctrl = 1

[State 3052, 4]
type = SelfState
trigger1 = Time = 2500
trigger1 = Pos Y < 0
value = 52

;-----------------------------
; (wave fx)
[Statedef 3066]
type = S
movetype = A
physics = N
anim = 9999
velset = 0,0
sprpriority = 2

[State 3066, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3066, VarSet]
type = VarSet
triggerall = Time > 0
trigger1 = (Time % 120) = 0
var(33) = 0

[State 3066, VarAdd]
type = VarAdd
trigger1 = (Time % 10) = 0
var(33) = 1

[State 3066, wave fx]
type = Explod
trigger1 = Time = 0
;trigger2 = (Time % 60) = 0
anim = 3066
ID = 3066
pos = 0,0
postype = p1
bindtime = 1
persistent = 855
removetime = 855
supermovetime = 855
ignorehitpause = 1
removeongethit = 1
scale = 0.1,0.1
vel = 1,0
accel = 0.1,0

[State 3066, wave fx]
type = ModifyExplod
trigger1 = Time > 0
anim = 3066
ID = 3066
scale = 0.1*var(33),0.1*var(33)

[State 3066, RemoveExplod]
type = RemoveExplod
trigger1 = root, movetype = H
trigger2 = root, stateno = 0
trigger3 = root, anim = 3051 && root, animelem = 80
trigger4 = root, anim = 3151 && root, animelem = 80
ID = 3066

[State 3066]
type = DestroySelf
trigger1 = root, movetype = H
trigger2 = root, stateno = 0
trigger3 = root, anim = 3051 && root, animelem = 80
trigger4 = root, anim = 3151 && root, animelem = 80

;-----------------------------
; (dust fx)
[Statedef 3067]
type = S
movetype = A
physics = N
anim = 3067
velset = 0,0
sprpriority = 2

[State 3067]
type = AfterImage
trigger1 = Time = 0
time = 320
FrameGap = 2
length = 20
PalBright = 10,10,10
PalContrast = 188,0,110
PalAdd = 0,0,0
PalMul = 1,1,1
trans = Add1

[State 3067]
type = DestroySelf
trigger1 = Time = 411
trigger2 = root, movetype = H

;---------------------------------------
; Nature Unity 2
[Statedef 3100]
type    = S
movetype= A
physics = S
anim = 3100
velset = 0,0
juggle = 0
ctrl = 0
poweradd = 0
sprpriority = -5

[State 3100]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 13100

[State 3100, 0]
type = SuperPause
trigger1 = AnimElem = 1
time = 200
anim = -1
pos = -1
movetime = 200
darken = 1

[State 3100]
type = PlaySnd
trigger1 = Time = 200
value = 21,0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Time = 20
value = 21,5
channel = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 17,1

[State 3100, SfondoDark]
type = Explod
trigger1 = Time = 200
pos = 0,0
anim = 8000
ID = 8000
postype = back
sprpriority = -12
ownpal = 1
removetime = 475
supermovetime = 475
bindtime = -1
removeongethit = 1

[State 3100, cosmo]
type = Explod
triggerall = var(1) = 0
triggerall = NumExplod(3008) = 0
trigger1 = AnimElem = 7
ID = 3008
anim = 3008
pos = 0,0
postype = p1
sprpriority = -6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 453
supermovetime = 453
removeongethit = 1

[State 3100, cosmo]
type = Explod
triggerall = var(1) = 1
triggerall = NumExplod(13008) = 0
trigger1 = AnimElem = 7
ID = 13008
anim = 13008
pos = 0,0
postype = p1
sprpriority = -6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 453
supermovetime = 453
removeongethit = 1

;[State 3100, plant1]
;type = Explod
;trigger1 = Time = 204
;anim = 3109
;ID = 3109
;pos = 0,0
;postype = back
;sprpriority = 2
;ignorehitpause = 1
;ownpal = 1
;bindtime = -1
;persistent = 0
;removetime = 520
;ontop = 1

;[State 3100, plant2]
;type = Explod
;trigger1 = Time = 200
;anim = 3110
;ID = 3110
;pos = 0,0
;postype = back
;sprpriority = -2
;ignorehitpause = 1
;ownpal = 1
;bindtime = -1
;persistent = 0
;removetime = 520
;scale = 1,1

[State 3100, EnvColor]
type = EnvColor
trigger1 = Time = 200
value = 255,255,255
time = 4

[State 3100, PowerAdd]
type = PowerAdd
trigger1 =  Time = 200
value = -3000

;[State 3100, branch down]
;type = Explod
;trigger1 = Time = 130
;anim = 3111
;ID = 3111
;pos = -80,0
;postype = back
;sprpriority = -9
;ignorehitpause = 1
;ownpal = 1
;bindtime = -1
;persistent = 0
;removetime = 475
;supermove = 1
;scale = .6,.6
;removeongethit = 1

;[State 3100, branch up]
;type = Explod
;trigger1 = Time = 130
;anim = 3112
;ID = 3112
;pos = 350,-150
;postype = p1
;sprpriority = -9
;ignorehitpause = 1
;ownpal = 1
;bindtime = -1
;persistent = 0
;removetime = 475
;supermove = 1
;scale = .6,.6

[State 3100, eye1]
type = Explod
trigger1 = Time = 200
anim = 3120
ID = 3120
pos = -40,0
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 475
scale = .8,.8
removeongethit = 1

[State 3100, eye2centrosotto]
type = Explod
trigger1 = Time = 200
anim = 3120
ID = 3120
pos = 115,130
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 475
scale = .7,.7
facing = 1
removeongethit = 1

[State 3100, eye2centrosopra]
type = Explod
trigger1 = Time = 200
anim = 3121
ID = 3120
pos = 100,-100
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 475
scale = .7,.7
facing = 1
removeongethit = 1

[State 3100, eye3]
type = Explod
trigger1 = Time = 200
anim = 3122
ID = 3120
pos = 420, -20
postype = back
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 475
scale = .8,.8
facing = -1
removeongethit = 1

[State 3100, Helper]
type = Helper
trigger1 = Time = 210
name = "branch1"
ID = 3101
stateno = 3101
pos = 320,0
postype = back
size.xscale = .5
size.yscale = .5

[State 3100, Helper]
type = Helper
trigger1 = Time = 250
name = "branch2"
ID = 3102
stateno = 3102
pos = 0,-170
postype = back
size.xscale = .7
size.yscale = .7

[State 3100, Helper]
type = Helper
trigger1 = Time = 280
name = "branch3"
ID = 3103
stateno = 3103
pos = 350,-140
postype = back
size.xscale = .5
size.yscale = .5

[State 3100, Helper]
type = Helper
trigger1 = Time = 315
name = "branch4"
ID = 3104
stateno = 3104
pos = 0,10
postype = back
size.xscale = .5
size.yscale = .5

[State 3100, Helper]
type = Helper
trigger1 = Time = 345
name = "branch5"
ID = 3105
stateno = 3105
pos = 320,-100
postype = back
size.xscale = .7
size.yscale = .7

[State 3100, Helper]
type = Helper
trigger1 = Time = 385
name = "branch6"
ID = 3106
stateno = 3106
pos = -30,-130
postype = back
size.xscale = .5
size.yscale = .5

[State 3100, Helper]
type = Helper
trigger1 = Time = 425
name = "branch7"
ID = 3107
stateno = 3107
pos = 330,-100
postype = back
size.xscale = .5
size.yscale = .5

[State 3100, Helper]
type = Helper
trigger1 = Time = 455
name = "branch8"
ID = 3108
stateno = 3108
pos = 200,-200
postype = back
size.xscale = .5
size.yscale = .5

[State 3100, EnvColor]
type = EnvColor
triggerall = Time >= 225
trigger1 = p2movetype != H
trigger2 = Time = 475
value = 255,255,255
time = 4

[State 3100, RemoveExplod]
type = RemoveExplod
triggerall = Time >= 225
trigger1 = p2movetype != H
trigger2 = Time = 475
ID = 3120

[State 3100, RemoveExplod]
type = RemoveExplod
triggerall = Time >= 225
trigger1 = p2movetype != H
trigger2 = Time = 475
ID = 3008

[State 3100, RemoveExplod]
type = RemoveExplod
triggerall = Time >= 225
trigger1 = p2movetype != H
trigger2 = Time = 475
ID = 13008

;[State 3100, RemoveExplod]
;type = RemoveExplod
;triggerall = Time >= 225
;trigger1 = p2movetype != H
;trigger2 = Time = 475
;ID = 3111

;[State 3100, RemoveExplod]
;type = RemoveExplod
;triggerall = Time >= 225
;trigger1 = p2movetype != H
;trigger2 = Time = 475
;ID = 3112

[State 3100, RemoveExplod]
type = RemoveExplod
triggerall = Time >= 225
trigger1 = p2movetype != H
trigger2 = Time = 475
ID = 8000

[State 3100, BGPalFX]
type = BGPalFX
triggerall = Time >= 225
trigger1 = p2movetype != H
trigger2 = Time = 475
time = 1
add = 255,255,255
mul = 0,0,0
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 3100, ChangeState]
type = ChangeState
triggerall = Time >= 225
trigger1 = p2movetype != H
trigger2 = Time = 476
value = 3109
ctrl = 1

;-----------------------------
; (branch1)
[Statedef 3101]
type = S
movetype = A
physics = N
anim = 3102
velset = 0,0
sprpriority = 2

[State 3101, branch1]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Hard
damage  = 75,180
hitflag = MAF
guardflag = MA
getpower = 0
givepower = 0
pausetime = 3,0
sparkno = s7002
sparkxy = 0,-70
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 5,-9
air.velocity = 5,-8
envshake.time =  25
envshake.freq = 20
envshake.ampl = 6
envshake.phase = 5
fall = 1
fall.recover = 0
kill = 0
guard.kill = 0

[State 3101, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
; (branch2)
[Statedef 3102]
type = S
movetype = A
physics = N
anim = 3106
velset = 0,0
sprpriority = 2

[State 3102, branch]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Hard
damage = 75
hitflag = MAF
getpower = 0
givepower = 0
pausetime = 3,0
sparkno = s7002
sparkxy = 0,20
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
air.velocity = -7,-5
envshake.time =  25
envshake.freq = 20
envshake.ampl = 6
envshake.phase = 5
fall = 1
kill = 0
fall.recover = 0

[State 3102, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
; (branch3)
[Statedef 3103]
type = S
movetype = A
physics = N
anim = 3104
velset = 0,0
sprpriority = 2

[State 3103, branch]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Hard
damage = 75
hitflag = MAF
getpower = 0
givepower = 0
pausetime = 3,0
sparkno = s7002
sparkxy = 0,10
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
air.velocity = 5,-5
envshake.time =  25
envshake.freq = 20
envshake.ampl = 6
envshake.phase = 5
fall = 1
p2facing = -1
kill = 0
fall.recover = 0

[State 3103, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
; (branch4)
[Statedef 3104]
type = S
movetype = A
physics = N
anim = 3103
velset = 0,0
sprpriority = 5

[State 3104, branch]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Hard
damage = 75
hitflag = MAF
getpower = 0
givepower = 0
pausetime = 3,0
sparkno = s7002
sparkxy = 0,-70
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
air.velocity = -6,-6
envshake.time =  25
envshake.freq = 20
envshake.ampl = 6
envshake.phase = 5
fall = 1
p2facing = 1
kill = 0
fall.recover = 0

[State 3104, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
; (branch5)
[Statedef 3105]
type = S
movetype = A
physics = N
anim = 3107
velset = 0,0
sprpriority = 2

[State 3105, branch]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Hard
damage = 75
hitflag = MAF
getpower = 0
givepower = 0
pausetime = 3,0
sparkno = s7002
sparkxy = 0,10
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
air.velocity = 5,-8
envshake.time =  25
envshake.freq = 20
envshake.ampl = 6
envshake.phase = 5
fall = 1
kill = 0
fall.recover = 0

[State 3105, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
; (branch6)
[Statedef 3106]
type = S
movetype = A
physics = N
anim = 3105
velset = 0,0
sprpriority = 5

[State 3106, branch]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Hard
damage = 75
hitflag = MAF
getpower = 0
givepower = 0
pausetime = 3,0
sparkno = s7002
sparkxy = -30,10
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
air.velocity = -5,-8
envshake.time =  25
envshake.freq = 20
envshake.ampl = 6
envshake.phase = 5
fall = 1
p2facing = -1
kill = 0
fall.recover = 0

[State 3106, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
; (branch7)
[Statedef 3107]
type = S
movetype = A
physics = N
anim = 3104
velset = 0,0
sprpriority = 2

[State 3107, branch]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Hard
damage = 75
hitflag = MAF
getpower = 0
givepower = 0
pausetime = 3,0
sparkno = s7002
sparkxy = 0,10
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
air.velocity = 5,-8
envshake.time =  25
envshake.freq = 20
envshake.ampl = 6
envshake.phase = 5
fall = 1
p2facing = 1
kill = 0
fall.recover = 0

[State 3107, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
; (branch8)
[Statedef 3108]
type = S
movetype = A
physics = N
anim = 3108
velset = 0,0
sprpriority = 2

[State 3108, branch]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Hard
damage = 75
hitflag = MAF
getpower = 0
givepower = 0
pausetime = 3,0
sparkno = s7002
sparkxy = -20,30
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
air.velocity = 0,20
envshake.time =  25
envshake.freq = 20
envshake.ampl = 6
envshake.phase = 5
fall = 1
kill = 1
fall.recover = 0

[State 3108, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------
; (end)
[Statedef 3109]
type    = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 3101
sprpriority = 2

[State 3109]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 13101

[State 3109, BGPalFX]
type = BGPalFX
trigger1 = Time = 1
time = 1
add = 255,255,255
mul = 0,0,0
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 3109, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3008) > 0
trigger1 = Time = 0
ID = 3008

[State 3109, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(13008) > 0
trigger1 = Time = 0
ID = 13008

[State 3109, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3120) > 0
trigger1 = Time = 0
ID = 3120

[State 3109, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(8000) > 0
trigger1 = Time = 0
ID = 8000

[State 3109]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------
; Amethys Shield 2 (fatality)
[Statedef 3150]
type    = S
movetype= A
physics = S
anim = 3050
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0

[State 3150]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 13050

[State 3150, no music]
type = AssertSpecial
trigger1 = Time = [0,9999]
flag = nomusic
persistent = 1

[State 3150, 0]
type = SuperPause
trigger1 = AnimElem = 1
time = 420
anim = -1
pos = 0,0
movetime = 420
darken = 1

[State 3150, BGPalFX]
type = BGPalFX
trigger1 = Time = 114
time = 855
add = 100,100,180
mul = 41,41,82
sinadd = 0,0,0,10
invertall = 0
color = 256
ignorehitpause = 1 
persistent = 1

[State 3150, SfondoCrystal]
type = Explod
trigger1 = AnimElem = 4
pos = 0,-80
anim = 8050
ID = 8050
postype = p1
sprpriority = -9
ownpal = 1
removetime = 885
supermovetime = 885
bindtime = -1
removeongethit = 1

[State 3150, 1]
type = PlaySnd
trigger1 = Time = 0
value = 16,3
channel = 0

[State 3150, 1]
type = PlaySnd
trigger1 = Time = 120
value = 16,0

[State 3150, 1]
type = PlaySnd
trigger1 = Time = 320
value = 16,1

[State 3150, 1]
type = PlaySnd
trigger1 = Time = 420
value = 5,4

[State 3150, EnvShake]
type = EnvShake
trigger1 = AnimElem = 3
time = 110
freq = 40
ampl = -4
phase = 90

[State 3150, spause1]
type = Explod
trigger1 = AnimElem = 5
anim = 3053
ID = 3053
pos = 0,-70
postype = p1
sprpriority = 2
supermovetime = 81
ownpal = 1
removetime = -2
removeongethit = 1

[State 3150, spause2]
type = Explod
trigger1 = AnimElem = 35
pos = 0,-70
anim = 3054
ID = 3054
sprpriority = 2
ownpal = 1
supermove = 1
removeongethit = 1

[State 3150, wave fx]
type = Helper
triggerall = Time >= 410
trigger1 = Time = 410
trigger2 = (GameTime % 10) = 0
ID = 3066
stateno = 3066
pos = 0,-65
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause = 1
pausemovetime = 855
supermovetime = 855

;[State 3150, wave fx]
;type = Explod
;trigger1 = Time = 420
;pos = 10,0
;anim = 3066
;ID = 3066
;postype = p1
;sprpriority = 5
;ownpal = 1
;removetime = 445
;removeongethit = 1
;scale = 1.5,1

[State 3150, amethyst shards]
type = Explod
trigger1 = Time = 420
pos = 0,-120
anim = 3056
ID = 3056
postype = p1
sprpriority = 8
ownpal = 1
removetime = -2
removeongethit = 1

[State 3150, 2]
type = HitDef
trigger1 = AnimElem = 39
attr = S, HA
animtype = Medium
damage = 0
getpower = 0
givepower = 0
pausetime = 0,0
sparkno = -1
hitsound = -1
guardsound = -1
hitflag = MAF
kill = 1
fall = 0
p1stateno = 3151
p2stateno = 3152

[State 3150, dust fx]
type = Helper
trigger1 = Time = 0 
stateno = 3067 
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 411
pausemovetime = 411

[State 3150, body fx]
type = Explod
trigger1 = Time = 0
anim = 3068
pos = 0,0
sprpriority = 5
postype = p1
ownpal = 1
removeongethit = 1
bindtime = -1
removetime = 434
supermovetime = 434
ontop = 1
removeongethit = 1

[State 3150, eye fx]
type = Explod
trigger1 = AnimElem = 38
anim = 3069
pos = 12,3
sprpriority = 7
postype = p1
ownpal = 1
removeongethit = 1
bindtime = -1
removetime = 445
supermovetime = 445
scale = 1,1
ontop = 1
removeongethit = 1

[State 3150, cosmo]
type = Explod
triggerall = NumExplod(3070) = 0
trigger1 = AnimElem = 3
ID = 3070
anim = 3070
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 855
supermovetime = 855
removeongethit = 1

[State 3150, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3069) > 0
trigger1 = AnimElem = 58
ID = 3069

[State 3150, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3070) > 0
trigger1 = AnimElem = 58
ID = 3070

[State 3150, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(8050) > 0
trigger1 = AnimElem = 58
ID = 8050

[State 3150, BGPalFX]
type = BGPalFX
trigger1 = AnimTime = 0
time = 1
add = 255,255,255
mul = 0,0,0
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 3150, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;---------------------------------------
; (p1 state)
[Statedef 3151]
type    = S
movetype= A
physics = S
anim = 3051
velset = 0,0
juggle = 0
ctrl = 0

[State 3151]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 13051

[State 3151, no music]
type = AssertSpecial
trigger1 = Time = [0,9999]
flag = nomusic
persistent = 1

[State 3151, wave fx]
type = Helper
triggerall = AnimElemTime (80) < 0
triggerall = Time >= 0
trigger1 = Time = 0
trigger2 = (GameTime % 10) = 0
ID = 3066
stateno = 3066
pos = 0,-65
postype = p1
facing = 1
keyctrl = 0
ownpal = 0
ignorehitpause = 1
pausemovetime = 855
supermovetime = 855

[State 3151, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3069) > 0
trigger1 = AnimElem = 80
ID = 3069

[State 3151, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(3070) > 0
trigger1 = AnimElem = 80
ID = 3070

[State 3151, RemoveExplod]
type = RemoveExplod
triggerall = numexplod(8050) > 0
trigger1 = AnimElem = 80
ID = 8050

[State 3051, ametista per GIGANTI]
type = Explod
triggerall = P2Name = "aldebaran" || P2Name = "cassios" || P2Name = "algethiS" || P2Name = "algethiH"
trigger1 = Time = 70
persistent = 0
anim = 3061
ID = 3061
pos = -8,-85
postype = p2
sprpriority = 9
bindtime = 12
ignorehitpause = 1
ownpal = 1
removetime = -1
scale = 1.4,1.4

[State 3151, ametista]
type = Explod
triggerall = P2name != "aldebaran"
triggerall = P2name != "cassios"
triggerall = P2Name != "algethiS"
triggerall = P2Name != "algethiH"
trigger1 = Time = 70
persistent = 0
anim = 3061
ID = 3061
pos = -8,-85
postype = p2
sprpriority = 9
bindtime = 12
ignorehitpause = 1
ownpal = 1
removetime = -1

[State 3151, white fadeout]
type = null ;BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 10
ignorehitpause = 1
persistent= 0

[State 3151, BGPalFX]
type = BGPalFX
trigger1 = AnimTime = 0
time = 1
add = 255,255,255
mul = 0,0,0
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 3151, 1]
type = VarSet
trigger1 = NumExplod(3061) >= 1
var(9) = 1

[State 3151, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
; (p2 state)
[Statedef 3152]
type = L
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 0

[State 3152, Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3052

[State 3152, LifeSet]
type = LifeSet
trigger1 = Time = 140
value = 0

[State 3152, velset]
type = VelSet
trigger1 = Time = 0
X = 0
Y = 0

;---------------------------------------
; Nature Unity 3 (desperate)
[Statedef 3200]
type    = S
movetype= A
physics = S
anim = 3100
velset = 0,0
juggle = 0
ctrl = 0
poweradd = 0
sprpriority = -5

[State 3200]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Time = 0
value = 13100

[State 3200, 0]
type = SuperPause
trigger1 = AnimElem = 1
time = 200
anim = -1
pos = -1
movetime = 200
darken = 1

[State 3200]
type = PlaySnd
trigger1 = Time = 200
value = 21,0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = Time = 20
value = 21,6
channel = 14

[State 3200, StopSnd]
type = StopSnd
triggerall = Time >= 355
trigger1 = Time = 675
trigger2 = anim != 3100
channel = 14

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 17,3

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = Time = 230
value = 17,2

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = Time = 240
trigger2 = Time = 260
trigger3 = Time = 280
trigger4 = Time = 300
value = 0,5

[State 3200, SfondoDark]
type = Explod
trigger1 = Time = 200
pos = 0,0
anim = 8000
ID = 8000
postype = back
sprpriority = -12
ownpal = 1
removetime = 475
supermovetime = 475
bindtime = -1
removeongethit = 1

[State 3200, cosmo]
type = Explod
triggerall = var(1) = 0
triggerall = NumExplod(3008) = 0
trigger1 = AnimElem = 7
ID = 3008
anim = 3008
pos = 0,0
postype = p1
sprpriority = -6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 675
supermovetime = 675
removeongethit = 1

[State 3200, cosmo]
type = Explod
triggerall = var(1) = 1
triggerall = NumExplod(13008) = 0
trigger1 = AnimElem = 7
ID = 13008
anim = 13008
pos = 0,0
postype = p1
sprpriority = -6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 675
supermovetime = 675
removeongethit = 1

[State 3200, EnvColor]
type = EnvColor
trigger1 = Time = 200
value = 255,255,255
time = 4

[State 3200, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7
time = 250
freq = 60
ampl = -4
ignorehitpause = 1 
persistent = 1

[State 3200, PowerAdd]
type = PowerAdd
trigger1 =  Time = 200
value = -3000

;[State 3200, branch down]
;type = Explod
;trigger1 = Time = 130
;anim = 3111
;ID = 3111
;pos = -80,0
;postype = back
;sprpriority = -9
;ignorehitpause = 1
;ownpal = 1
;bindtime = -1
;persistent = 0
;removetime = 475
;supermove = 1
;scale = .6,.6
;removeongethit = 1

;[State 3200, branch up]
;type = Explod
;trigger1 = Time = 130
;anim = 3112
;ID = 3112
;pos = 350,-150
;postype = p1
;sprpriority = -9
;ignorehitpause = 1
;ownpal = 1
;bindtime = -1
;persistent = 0
;removetime = 475
;supermove = 1
;scale = .6,.6

[State 3200, eye1]
type = Explod
trigger1 = Time = 200
anim = 3120
ID = 3120
pos = -40,0
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 475
scale = .8,.8
removeongethit = 1

[State 3200, eye2centrosotto]
type = Explod
trigger1 = Time = 200
anim = 3120
ID = 3120
pos = 115,130
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 475
scale = .7,.7
facing = 1
removeongethit = 1

[State 3200, eye2centrosopra]
type = Explod
trigger1 = Time = 200
anim = 3121
ID = 3120
pos = 100,-100
postype = back
sprpriority = -10
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 475
scale = .7,.7
facing = 1
removeongethit = 1

[State 3200, eye3]
type = Explod
trigger1 = Time = 200
anim = 3122
ID = 3120
pos = 420, -20
postype = back
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 475
scale = .8,.8
facing = -1
removeongethit = 1

[State 3200, HelperHIT1Down R]
type = Helper
trigger1 = Time = 240
ID = 3200
stateno = 3203
postype = P1
pos = 60,0
keyctrl = 0
ownpal = 1

[State 3200, HelperHIT1Down L]
type = Helper
trigger1 = Time = 240
ID = 3200
stateno = 3203
postype = P1
pos = -60,0
keyctrl = 0
ownpal = 1

[State 3200, HelperHIT2Down R]
type = Helper
trigger1 = Time = 260
ID = 3200
stateno = 3204
postype = P1
pos = 120,0
keyctrl = 0
ownpal = 1

[State 3200, HelperHIT2Down L]
type = Helper
trigger1 = Time = 260
ID = 3200
stateno = 3204
postype = P1
pos = -120,0
keyctrl = 0
ownpal = 1

[State 3200, HelperHIT3Down R]
type = Helper
trigger1 = Time = 280
ID = 3200
stateno = 3203
postype = P1
pos = 180,0
keyctrl = 0
ownpal = 1

[State 3200, HelperHIT3Down L]
type = Helper
trigger1 = Time = 280
ID = 3200
stateno = 3203
postype = P1
pos = -180,0
keyctrl = 0
ownpal = 1

[State 3200, HelperHIT4Down R]
type = Helper
trigger1 = Time = 300
ID = 3200
stateno = 3204
postype = P1
pos = 240,0
keyctrl = 0
ownpal = 1

[State 3200, HelperHIT4Down L]
type = Helper
trigger1 = Time = 300
ID = 3200
stateno = 3204
postype = P1
pos = -240,0
keyctrl = 0
ownpal = 1

[State 3200, HelperHIT1Left]
type = Helper
triggerall = numhelper(3200)
trigger1 = helper(3200), movehit
ID = 3205
stateno = 3205
pos = 100,0
postype = p2
keyctrl = 0
ownpal = 1
facing = -1
ignorehitpause = 1

[State 3200, HelperHIT2Left]
type = Helper
triggerall = numhelper(3200)
trigger1 = helper(3200), movehit
ID = 3206
stateno = 3206
pos = 100,20
postype = p2
keyctrl = 0
ownpal = 1
facing = -1
ignorehitpause = 1

[State 3200, HelperHIT3Left]
type = Helper
triggerall = numhelper(3200)
trigger1 = helper(3200), movehit
ID = 3207
stateno = 3207
pos = 100,40
postype = p2
keyctrl = 0
ownpal = 1
facing = -1
ignorehitpause = 1

[State 3200, HelperHIT1Right]
type = Helper
triggerall = numhelper(3200)
trigger1 = helper(3200), movehit
ID = 3208
stateno = 3208
pos = -100,5
postype = p2
keyctrl = 0
ownpal = 1
facing = -1
ignorehitpause = 1

[State 3200, HelperHIT2Right]
type = Helper
triggerall = numhelper(3200)
trigger1 = helper(3200), movehit
ID = 3209
stateno = 3209
pos = -100,25
postype = p2
keyctrl = 0
ownpal = 1
facing = -1
ignorehitpause = 1

[State 3200, HelperHIT3Right]
type = Helper
triggerall = numhelper(3200)
trigger1 = helper(3200), movehit
ID = 3210
stateno = 3210
pos = -100,45
postype = p2
keyctrl = 0
ownpal = 1
facing = -1
ignorehitpause = 1

[State 3200]
type = PlaySnd
triggerall = p2stateno = 3202
trigger1 = Time = 360
value = 27,5

[State 3200, EnvColor]
type = EnvColor
triggerall = Time >= 355
trigger1 = p2movetype != H
trigger2 = Time = 675
value = 255,255,255
time = 4

[State 3200, RemoveExplod]
type = RemoveExplod
triggerall = Time >= 355
trigger1 = p2movetype != H
trigger2 = Time = 675
ID = 3120

[State 3200, RemoveExplod]
type = RemoveExplod
triggerall = Time >= 355
trigger1 = p2movetype != H
trigger2 = Time = 675
ID = 3008

[State 3200, RemoveExplod]
type = RemoveExplod
triggerall = Time >= 355
trigger1 = p2movetype != H
trigger2 = Time = 675
ID = 13008

;[State 3200, RemoveExplod]
;type = RemoveExplod
;triggerall = Time >= 355
;trigger1 = p2movetype != H
;trigger2 = Time = 675
;ID = 3111

;[State 3200, RemoveExplod]
;type = RemoveExplod
;triggerall = Time >= 355
;trigger1 = p2movetype != H
;trigger2 = Time = 675
;ID = 3112

[State 3200, RemoveExplod]
type = RemoveExplod
triggerall = Time >= 355
trigger1 = p2movetype != H
trigger2 = Time = 675
ID = 8000

[State 3200, BGPalFX]
type = BGPalFX
triggerall = Time >= 355
trigger1 = p2movetype != H
trigger2 = Time = 675
time = 1
add = 255,255,255
mul = 0,0,0
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 3200, 7]
type = VarSet
triggerall = p2movetype = H
trigger1 = Time = 365
var(9) = 2

[State 3200, ChangeState]
type = ChangeState
triggerall = Time >= 355
trigger1 = p2movetype != H
trigger2 = Time = 676
value = 3109
ctrl = 1

;----------------------------------------------------------------------------------------
; (p2 state 1)
[Statedef 3202]
type = U
movetype= H
physics = U
velset = 0,0
ctrl = 0

[State 3202, anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3202

[State 3202, PosAdd]
type = PosAdd
triggerall = pos y < enemynear, pos y -50
trigger1 = time > 0
y = 5

;[State 3202, palfx]
;type = PalFX
;trigger1 = Time = 0
;time = 90
;add = 50,100,256
;mul = 256,200,256
;sinadd = 6,3,1,12
;invertall = 0
;color = 4

[State 3202, HitFallSet]
type = HitFallSet
trigger1 = 1
value = 1

[State 3202, SelfState]
type = ChangeState
trigger1 = Time = 316
value = 3211
ctrl = 1

;----------------------------------------------------------------------------------------
; (hit1 down)
[Statedef 3203]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 3203
sprpriority = 8

[State 3203]
type = HitDef
triggerall = numhelper(3200)
triggerall = helper(3200), movehit < 1
trigger1 = Animelem = 4
attr = S,HA
animtype = Up
hitflag = MAFD
damage = 150
pausetime = 6,12
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
hitsound = s1,5
guardsound = s6,0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 0,-10
air.velocity = 0,-10
Fall = 1
Fall.recover = 0
Fall.recovertime = 60
;PalFX.time = 60
;PalFX.add = -200,-200,-200
;PalFX.mul = 256,256,256
;PalFX.sinadd = 50,50,50,50
;PalFX.invertall = 0
;PalFX.color = 256
getpower = 0,0
Numhits = 0
affectteam = E
p1sprpriority = 3

[State 3203]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------------------------
; (hit2 down)
[Statedef 3204]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 3204
sprpriority = 8

[State 3204]
type = HitDef
triggerall = numhelper(3200)
triggerall = helper(3200), movehit < 1
trigger1 = Animelem = 4
attr = S,HA
animtype = Up
hitflag = MAFD
damage = 150
pausetime = 6,12
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
hitsound = s1,5
guardsound = s6,0
ground.type = High
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 0,-10
air.velocity = 0,-10
Fall = 1
Fall.recover = 0
Fall.recovertime = 60
;PalFX.time = 60
;PalFX.add = -200,-200,-200
;PalFX.mul = 256,256,256
;PalFX.sinadd = 50,50,50,50
;PalFX.invertall = 0
;PalFX.color = 256
getpower = 0,0
Numhits = 0
affectteam = E
p1sprpriority = 3

[State 3204]
type = DestroySelf
trigger1 = AnimTime = 0

;----------------------------------------------------------------------------------------
; (hit1 left)
[Statedef 3205]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 3205
sprpriority = 8

[State 3505, PosAdd]
type = PosAdd
triggerall = pos y < root, pos y-60
triggerall = time > 0
trigger1 = enemynear, stateno = 3202
y = 5 

[State 3205]
type = HitDef
trigger1 = Animelem = 4
attr = S,HP
hitflag = MAF
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 75
envshake.time =  15
envshake.freq = 5
envshake.ampl = 2
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
p2stateno = 3202
p1sprpriority = 3

[State 3205]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, numhelper(3205) > 1

;----------------------------------------------------------------------------------------
; (hit2 left)
[Statedef 3206]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 3206
sprpriority = 8

[State 3506, PosAdd]
type = PosAdd
triggerall = pos y < root, pos y-40
triggerall = time > 0
trigger1 = enemynear, stateno = 3202
y = 5

[State 3206]
type = HitDef
trigger1 = Animelem = 4
attr = S,HP
hitflag = MAF
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 75
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
p2stateno = 3202
p1sprpriority = 3

[State 3206]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, numhelper(3206) > 1

;----------------------------------------------------------------------------------------
; (hit3 left)
[Statedef 3207]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 3207
sprpriority = 8

[State 3507, PosAdd]
type = PosAdd
triggerall = pos y < root, pos y-20
triggerall = time > 0
trigger1 = enemynear, stateno = 3202
y = 5

[State 3207]
type = HitDef
trigger1 = Animelem = 4
attr = S,HP
hitflag = MAF
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 75
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
p2stateno = 3202
p1sprpriority = 3

[State 3207]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, numhelper(3207) > 1

;----------------------------------------------------------------------------------------
; (hit1 right)
[Statedef 3208]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 3208
sprpriority = 8

[State 3508, PosAdd]
type = PosAdd
triggerall = pos y < root, pos y-55
triggerall = time > 0
trigger1 = enemynear, stateno = 3202
y = 5

[State 3208]
type = HitDef
trigger1 = Animelem = 4
attr = S,HP
hitflag = MAF
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 75
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
p2stateno = 3202
p1sprpriority = 3

[State 3208]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, numhelper(3208) > 1

;----------------------------------------------------------------------------------------
; (hit2 right)
[Statedef 3209]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 3209
sprpriority = 8

[State 3509, PosAdd]
type = PosAdd
triggerall = pos y < root, pos y-45
triggerall = time > 0
trigger1 = enemynear, stateno = 3202
y = 5

[State 3209]
type = HitDef
trigger1 = Animelem = 4
attr = S,HP
hitflag = MAF
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 75
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
p2stateno = 3202
p1sprpriority = 3

[State 3209]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, numhelper(3209) > 1

;----------------------------------------------------------------------------------------
; (hit3 right)
[Statedef 3210]
type    = S
movetype= A
physics = S
juggle  = 6
poweradd = 0
ctrl = 0
velset = 0,0
anim = 3210
sprpriority = 8

[State 3510, PosAdd]
type = PosAdd
triggerall = pos y < root, pos y-25
triggerall = time > 0
trigger1 = enemynear, stateno = 3202
y = 5

[State 3210]
type = HitDef
trigger1 = Animelem = 4
attr = S,HP
hitflag = MAF
sparkno = s7002
sparkxy = -20,-60
guard.sparkno = s7006
getpower = 0,0
givepower = 0,0
animtype = medium
air.animtype = hard
priority = 4,Hit
damage = 75
pausetime = 3,3
hitsound = s1,5
guardsound = s6,0
ground.type = high
ground.hittime = 20
air.hittime = 10
ground.velocity = 0
air.velocity = 0,0
fall = 0
p2stateno = 3202
p1sprpriority = 3

[State 3210]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = root, numhelper(3210) > 1

;----------------------------------------------------------------------------------------
; (p2 state 2)
[Statedef 3211]
type    = U
movetype = H
physics = U
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3211, 1]
type = SelfState
trigger1 = Time = 5
value = 5100

[State 3211, 2]
type = SelfState
trigger1 = Time = 5
value = 0
ctrl = 1

;---------------------------------------
; Fire Slash
[Statedef 3300]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
poweradd = -1000
anim = 3300
velset = 0,0
sprpriority = 1

[State 3300, 1 suono voce]
type = PlaySnd
trigger1 = AnimElem = 11
value = 29,3

[State 3300, pause]
type = SuperPause
trigger1 = Time = 0
time = 160
darken = 1
movetime = 160
anim = -1

[State 3300, fiamma1]
type = PlaySnd
trigger1 = Time = 5
value = 15,4

[State 3300, sfondo]
type = Explod
triggerall = NumExplod(3058) = 0
trigger1 = AnimElem = 32
pos = 0,0
anim = 3058
ID = 3058
postype = back
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 65

[State 3300, 1 suono scatto]
type = PlaySnd
trigger1 = AnimElem = 32
value = 0,5

[State 3300, 2]
type = VelAdd
trigger1 = time > 160 && Time < 200
x = 3

[State 3300, 3]
type = Explod
trigger1 = AnimElem = 35, 4
anim = 3301
ID =3301
pos = 0,0
postype = p1
sprpriority = 4
supermove = 1
removetime = 29
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3300, 4]
type = PlaySnd
trigger1 = AnimElem = 35
value = 15,5

[State 3300, 5]
type =HitDef
trigger1 = Time = 0
priority = 7
attr = S, HA
animtype = up
damage  = 200,20
hitflag = MAF
guardflag = MA
getpower = 0
givepower = 0
priority = 7
pausetime = 15,15
sparkno = s7076
sparkxy = -40,-80
hitsound = S20,0
guardsound = S6,1
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -0.5,-9
air.hittime = 12
air.velocity = -0.7,-1.2
palfx.time = 50
palfx.sinadd = 48,50,32,16
palfx.add = 224,88,0
fall = 1
fall.recover = 0

[State 3300, 6]
type = ChangeState
trigger1 = Time = 210
value = 0
ctrl = 1

;---------------------------------------
; Fire Carillon    ;(in onore al maestro Richard Benson)
[Statedef 3350]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
poweradd = -2000
anim = 3350
velset = 0,0
sprpriority = 1

[State 3350, sfondo]
type = Explod
triggerall = NumExplod(3058) = 0
trigger1 = AnimElem = 1
pos = 0,0
anim = 3058
ID = 3058
postype = back
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 183

[State 3350, RemoveExplod]
type = RemoveExplod
triggerall = Time = 65
trigger1 = Stateno != 3351
ID = 3058

[State 3350, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 65
length = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State 3350, 0]
type = PlaySnd
trigger1 = Time = 0
value = 30,0
channel = 0

[State 3350, 1]
type = VelAdd
trigger1 = time <= 8
x = 2

[State 3350]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
value = 19,1

[State 3350, 2]
type =HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
priority = 7
attr = S, HA
getpower = 0
givepower = 0
animtype = medium
damage  = 25,10
hitflag = MAF
guardflag = MA
priority = 7
pausetime = 0,0
sparkno = s7071
sparkxy = -10,-80
hitsound   = S20,6
guardsound = S6,1
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1.5
air.hittime = 12
air.velocity = -0.7,-1.2

[State 3350, 2]
type =HitDef
trigger1 = AnimElem = 15
priority = 7
attr = S, HA
animtype = Hard
damage = 10,20
hitflag = MAF
guardflag = MA
priority = 7
pausetime = 12,50
getpower = 0
givepower = 0
sparkno = s7070
sparkxy = -10,-80
p1stateno = 3351
hitsound   = S20,7
guardsound = S6,1
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1.5
air.hittime = 12
air.velocity = -0.7,-1.2
palfx.time = 5
palfx.mul = 255,0,0
palfx.add = 50,50,50
envshake.time = 14
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 90

[State 3350, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------
; (p1 state)
[Statedef 3351]
type = S
physics = S
movetype = A
poweradd = 0
anim = 3351
velset = 0,0
sprpriority = 1
ctrl = 0

[State 3351, pause]
type = SuperPause
trigger1 = Time = 0
time = 65
darken = 1
movetime = 65
anim = -1

[State 3351, fiamma]
type = PlaySnd
trigger1 = Time = 17
value = 15,4

[State 3351, 0]
type = PlaySnd
trigger1 = AnimElem = 10
value = 30,4

[State 3351]
type = Explod
trigger1 = AnimElem = 16
anim = 3352
ID = 3352
pos = -10,0
postype = p1
sprpriority = 4
supermove = 1
removetime = 33
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3351, fiamma1]
type = PlaySnd
trigger1 = AnimElem = 24
value = 15,5

[State 3351, hit]
type = HitDef
trigger1 = Time = 0
attr = S, HA
forcestand = 1
priority = 7
hitflag = MAF
getpower = 0
givepower = 0
damage = 360
animtype = hard
pausetime = 0,0
sparkno = s7072
sparkxy = -10,-60
guard.sparkno = -1
hitsound   = S20,2
guardsound = S6000, 0
ground.type = high
ground.slidetime = 50
ground.hittime  = 580
ground.velocity = -5
air.velocity = -5,0
palfx.time = 50
palfx.sinadd = 48,50,32,16
palfx.add = 224,88,0
fall = 1
fall.recover = 0

[State 3351, end]
type = ChangeState
trigger1 = Time = 115
value = 0
ctrl = 1

;---------------------------------------
; Fire Explosion
[Statedef 3400]
type    = S
movetype= A
physics = S
anim = 3400
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0

[State 3400, 1]
type = SuperPause
trigger1 = AnimElem = 1
time = 334
anim = -1
movetime = 334
darken = 1

[State 3400, afterimage]
type = AfterImage
trigger1 = AnimElem = 8
time = 80
length = 20
PalBright = 10,10,10
PalContrast= 98,98,98
trans = Add1

[State 3400, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 29,2

[State 3400, 3]
type = PlaySnd
trigger1 = AnimElem = 7
value = 30,5
channel = 0

[State 3400, 3]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = Time = 120
trigger3 = Time = 170
value = 30,6

[State 3400, 3]
type = PlaySnd
trigger1 = AnimElem = 12
value = 30,6

[State 3400, light]
type = Explod
triggerall = NumExplod(3303) = 0
trigger1 = AnimElem = 3, 15
pos = 0,-5
anim = 3403
ID = 3403
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .6,.6

[State 3400, light2]
type = Explod
trigger1 = AnimElem = 3, 15
pos = 0,0
anim = 3406
ID = 3406
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .5,.5
removetime = 284

[State 3400, light2bis]
type = Explod
trigger1 = AnimElem = 9
pos = 0,0
anim = 3402
ID = 3402
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
scale = .5,.5
removetime = 92

[State 3400, light3]
type = Explod
triggerall = NumExplod(3304) = 0
trigger1 = AnimElem = 3, 15
pos = -55,-85
anim = 3404
ID = 3404
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .4,.4
removetime = 232

[State 3400, light3]
type = Explod
triggerall = NumExplod(3305) = 0
trigger1 = AnimElem = 8
pos = 13,-80
anim = 3405
ID = 3405
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 3400, sfondo]
type = Explod
triggerall = NumExplod(3058) = 0
trigger1 = AnimElem = 9
pos = 0,0
anim = 3058
ID = 3058
postype = back
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 124
removetime = 124

[State 3400, polvere1]
type = Explod
trigger1 = AnimElem = 3,15
pos = 0,5
anim = 7086
ID = 7086
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 42
removetime = 42
scale = .5,.5

[State 3400, polvere2]
type = Explod
trigger1 = AnimElem = 3,15
pos = 0,5
anim = 7086
ID = 7086
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermovetime = 42
removetime = 42
scale = .5,.5
facing = -1

[State 3400, 4]
type = PlaySnd
trigger1 = AnimElem = 3,15
value = 7, 1

[State 3400, 5]
type = PlaySnd
trigger1 = AnimElem = 8
value = 7,2

[State 3400, 6]
type = PlaySnd
trigger1 = AnimElem = 10
value = 0,5

[State 3400, projectile]
type = Projectile
trigger1 = AnimElem = 15
projanim = 3401
projhits = 14
projmisstime = 3
projpriority = 4
projremove = 0
projremovetime = 80
projID = 3401
offset = 14,0
attr = S, HP
damage = 44,13
getpower = 0
givepower = 0
animtype = heavy
guardflag = MA
hitflag = MAF
pausetime = 0,2
hitsound = s18,1
sparkno = -1
guard.sparkno = -1
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
fall = 1
fall.recover = 0
air.animtype = Back
air.velocity = -5,-8
air.juggle = 1
down.velocity = -10,0
down.hittime = 30
down.bounce = 0
;PalFX
palfx.time = 55
palfx.add = 255,215,70

[State 3400, 7]
type = PlaySnd
trigger1 = AnimElem = 15
value = 18,0

[State 3400, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3400, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------
; Sword (helper)
[Statedef 5400]
type    = A
movetype= H
physics = N
anim = 5400

[State 5400]
type = Velset
trigger1 = Time >= 0
y = 6
x = -2

[State 5400]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 5400]
type = AngleAdd
trigger1 = Time >= 1
value = 42.5

[State 5400]
type = AngleDraw
trigger1 = Time >= 1
trigger1 = Pos Y <= 10

[State 5400, VelSet]
type = VelSet
trigger1 = pos y >= 0
x = 0
y = 0

[State 5400]
type = ChangeState
trigger1 = pos y >= 0
value = 5401
ctrl = 1

;----
[Statedef 5401]
type    = A
movetype= H
physics = N
anim = 5401

[State 5401, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20,9

[State 5401, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;--------------------------
; Sword disappear (helper)
[Statedef 5402]
type    = A
movetype= H
physics = N
anim = 5400

[State 5402, DestroySelf]
type = DestroySelf
triggerall = NumHelper(5400) = 1
trigger1 = Time = 1

[State 5402]
type = Velset
trigger1 = Time >= 0
y = 6
x = -2

[State 5402]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 5402]
type = AngleAdd
trigger1 = Time >= 1
value = 42.5

[State 5402]
type = AngleDraw
trigger1 = Time >= 1
trigger1 = Pos Y <= 10

[State 5402, VelSet]
type = VelSet
trigger1 = pos y >= 0
x = 0
y = 0

[State 5402]
type = ChangeState
trigger1 = pos y >= 0
value = 5403
ctrl = 1

;----
[Statedef 5403]
type    = A
movetype= H
physics = N
anim = 5402

[State 5403, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 20,9

[State 5403, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
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

[State -2, Display]
type = DisplayToClipboard
trigger1 = 1
text = "var(33) = %d"
params = var(33)

;---------------------------------------

[State -2, ChangeAnim 11025]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Stateno = 1025
trigger2 = Anim = 1025
value = 11025

[State -2, ChangeAnim 11027]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Anim = 1027
value = 11027

[State -2, ChangeAnim 15050] ;Self falling animation
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Stateno = 1028
trigger1 = Anim = 5050
value = 15050

[State -2, ChangeAnim sword turn high]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = life > 250
trigger1 = Anim = 5
value = 10005

[State -2, ChangeAnim stand sword low]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = life <= 250
trigger1 = Anim = 5
value = 10051

[State -2, ChangeAnim crouch sword turn]
type = ChangeAnim
triggerall = var(1) = 1
trigger1 = Anim = 6
value = 10006

[State -2, ChangeAnim]
type = ChangeAnim
triggerall = var(1) = 1
triggerall = Life = 0
trigger1 = Anim = 15030
value = 5030
elem = 1

[State -2, ChangeAnim]
type = ChangeAnim
triggerall = var(1) = 1
triggerall = Life = 0
trigger1 = Anim = 15051
value = 5051

[State -2, VarSet]
type = VarSet
triggerall = var(1) = 1
triggerall = RoundNo >= 1
trigger1 = Life = 0
var(1) = 0

;---------------------------------------

[State -2, VarSet]
type = VarSet
triggerall = var(3) = 1
trigger1 = NumHelper(5400) = 1
var(3) = 0

[State -2, Helper Caduta Spada KO]
type = Helper
triggerall = var(3) = 1
triggerall = Life = 0
trigger1 = NumHelper(5400) = 0
name = "sword fall"
stateno = 5400
ID = 5400
pos = 0,-80
postype = p1
facing = 1
ownpal = 0

[State -2, VarSet]
type = VarSet
triggerall = var(1) = 1
triggerall = MoveType = H
trigger1 = GetHitVar(guarded) = 0
trigger1 = StateNo != [120,155]
trigger1 = StateNo != [1025,1028]
trigger1 = StateNo != [5000,5150]
var(1) = 0

[State -2, VarSet]
type = VarSet
triggerall = var(3) = 1
trigger1 = NumHelper(5402) = 1
var(3) = 0

[State -2, Helper Caduta Spada da Custom State]
type = Helper
triggerall = var(3) = 1
triggerall = MoveType = H
trigger1 = GetHitVar(guarded) = 0
trigger1 = StateNo != [120,155]
trigger1 = StateNo != [1025,1028]
trigger1 = StateNo != [5000,5150]
trigger1 = NumHelper(5402) = 0
name = "sword fall2"
stateno = 5402
ID = 5402
pos = 0,-80
postype = p1
facing = 1
ownpal = 0

;---------------------------------------

[State -2, EnvColor, per colpito in AnimeLV1]
type = EnvColor
trigger1 = Prevstateno = 3000
trigger1 = movetype = H
value = 255,255,255
time = 4

[State -2, BGPalFX, per colpito in AnimeLV1]
type = BGPalFX
trigger1 = Prevstateno = 3000
trigger1 = movetype = H
time = 5
add = 0,0,50
mul = 0,0,50
sinadd = 0,0,0,10
invertall = 0
color = 256

;---------------------------------------
; Constants Equalizer
;---------------------------------------

;[State -2, VarSet]
;type = VarSet
;triggerall = roundno = 1
;triggerall = stateno = 192 || stateno = 193 || stateno = 194 || stateno = 195 || stateno = 196
;triggerall = Time < 55
;trigger1 = command != "holdup"
;var(44) = 0

;[State -2, VarSet]
;type = VarSet
;triggerall = roundno = 1
;triggerall = stateno = 192 || stateno = 193 || stateno = 194 || stateno = 195 || stateno = 196
;triggerall = Time < 55
;trigger1 = command = "holdup"
;var(44) = 1

;[State -2, VarSet]
;type = VarSet
;triggerall = roundno > 1
;triggerall = stateno = 5900
;trigger1 = command != "holdup"
;var(44) = 0

;[State -2, VarSet]
;type = VarSet
;triggerall = roundno > 1
;triggerall = stateno = 5900
;trigger1 = command = "holdup"
;var(44) = 1

;[State -2, PalFX]
;type = PalFX
;triggerall = roundno = 1
;triggerall = stateno = 192 || stateno = 193 || stateno = 194 || stateno = 195 || stateno = 196
;triggerall = Var(44) = 1
;trigger1 = Time = 55
;time = 5
;add = 0,0,0
;sinadd = 150,150,150,3

;[State -2, PalFX]
;type = PalFX
;triggerall = roundno > 1
;triggerall = stateno = 5900
;triggerall = Var(44) = 1
;trigger1 = Time = 25
;time = 5
;add = 0,0,0
;sinadd = 150,150,150,3

;[State -2, AttackMulSet]
;type = AttackMulSet
;trigger1 = Var(44) = 1
;value = 1; 1 for 100, 0.9 for 110, 0.83 for 120

;[State -2, DefenceMulSet]
;type = DefenceMulSet
;trigger1 = Var(44) = 1
;value = 1; 1 for 100, 0.9 for 110, 0.83 for 120

;---------------------------------------

[State -2, VarSet]
type = VarSet
triggerall = var(8) = 1
trigger1 = power = 0
v = 8
value = 0

[State -2, powerAdd]
type = powerAdd
trigger1 = var(8) = 1
value = -5

[State -2, shine]
type = PalFX
triggerall = var(8) = 1
triggerall = power >= 1
triggerall = life >= 1
trigger1  = anim != 6666666
trigger1 = AnimElem = 2
time = 200
add = 5,5,5
sinadd = 200,200,10,4

[State -2]
type = AttackMulSet
triggerall = var(8) = 1
triggerall = power >= 1
triggerall = life >= 1
trigger1  = anim != 6666666
trigger1 = AnimElem = 2
value = 2

[State -2]
type = AttackMulSet
triggerall = var(8) != 1
triggerall = var(8) = 0
triggerall = power < 1
triggerall = life >= 1
trigger1  = anim != 6666666
trigger1 = AnimElem = 2
value = 1

;---------------------------------------------------------------------------
; Random Sounds
;---------------------------------------------------------------------------

; Medium Blows
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = Time = 5
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
triggerall = Time = 5
trigger1 = stateno = 215
trigger2 = stateno = 220
trigger3 = stateno = 250
trigger4 = stateno = 420
trigger5 = stateno = 450
trigger6 = stateno = 620
trigger7 = stateno = 650
value = 12,1
channel = 0

; Medium Blows Sword
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = Time = 5
trigger1 = stateno = 10210
trigger2 = stateno = 10240
trigger3 = stateno = 10410
trigger4 = stateno = 10440
trigger5 = stateno = 10610
trigger6 = stateno = 10640
value = 12,0
channel = 0

; Strong Blows Sword
[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = Time = 5
trigger1 = stateno = 10215
trigger2 = stateno = 10220
trigger3 = stateno = 10250
trigger4 = stateno = 10420
trigger5 = stateno = 10450
trigger6 = stateno = 10620
trigger7 = stateno = 10650
value = 12,1
channel = 0

; Hit
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = Time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 10,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = Time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 10,0

[State -2]
type = PlaySnd
triggerall = random < 500
triggerall = Time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10,0

[State -2]
type = PlaySnd
trigger1 = random < 500
trigger1 = Time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10,0

[State -2]
type = PlaySnd
trigger1 = random < 750
trigger1 = Time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 10,1

;---------------------------------------------------------------------------
; Combos
;---------------------------------------------------------------------------

; Supercombo
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200)
trigger1 = (movecontact)
value = 220
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 200) && (movecontact)
value = 230
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 220) && (movecontact)
value = 210
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 230) && (movecontact)
value = 230
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 210) && (movecontact)
value = 250
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 230) && (movecontact)
value = 240

; 4 Punches
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200)
trigger1 = (movecontact)
value = 210
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact)
value = 230
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 210) && (movecontact)
value = 220

; 3 Punches + Kung Fu Palm
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210)
trigger1 = (movecontact)
value = 220
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 210) && (movecontact)
value = 200
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 220) && (movecontact)
value = 1000

; 3 Punches + Kung Fu Upper
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210)
trigger1 = (movecontact)
value = 220
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 210) && (movecontact)
value = 200
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 220) && (movecontact)
value = 1100

; 3 Kicks
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230)
trigger1 = (movecontact)
value = 250
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 230) && (movecontact)
value = 240

; 3 Kicks
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 245)
trigger1 = (movecontact)
value = 250
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 245) && (movecontact)
value = 230

; 3 Kicks
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240)
trigger1 = (movecontact)
value = 230
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 240) && (movecontact)
value = 250

; 3 Crouch Punches
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400)
trigger1 = (movecontact)
value = 420
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 420) && (prevstateno = 400) && (movecontact)
value = 410

; 3 Crouch Kicks
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430)
trigger1 = (movecontact)
value = 440
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 440) && (prevstateno = 430) && (movecontact)
value = 450

; 3 Air Punches
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600)
trigger1 = (movecontact)
value = 620
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 620) && (prevstateno = 600) && (movecontact)
value = 610

; 3 Air Kicks
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640)
trigger1 = (movecontact)
value = 630
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 630) && (prevstateno = 640) && (movecontact)
value = 650

; 2 Air Kicks
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630)
trigger1 = (movecontact)
value = 650
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630)
trigger1 = (movecontact)
value = 640

;---------------------------------------------------------------------------
; 2\3 Button Combination
;---------------------------------------------------------------------------

; Cosmo Charge
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (var(8) = 0) && (statetype = S) && (ctrl) && (random = [101, 150])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120) && (power < 3000) 
value = 900

; Combo
[State -2]
type = ChangeState
triggerall = Var(1) = 0
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (stateno != 100) && (random = [151, 180])
trigger1 = (P2bodydist X < 40) && (prevstateno != 5120) && (p2movetype != H)
value = 830

; Throw
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && ((p2statetype = S) || (p2statetype = C))
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (stateno != 100) && (random = [181, 200])
trigger1 = (P2bodydist X < 40) && (prevstateno != 5120) && (p2movetype != H)
value = 800

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = var(8) = 0
triggerall = (var(10)=0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [201,250])
value = 199

;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------

; Fire Sword ON/OFF
[State -2]
type = ChangeState
triggerall = Var(1) = 0
triggerall = (roundstate = 2) && (Life <= 1000)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [251, 270])
trigger1 = (prevstateno != 5120)
value = 905

; Somersault Kick
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [271, 290])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 1000

; Hammer Kick
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [291, 310])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120)
value = 1010

; Powerful Combo
[State -2]
type = ChangeState
triggerall = Var(1) = 0
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [311, 330])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120)
value = 1020

; Sand Throw 1
[State -2]
type = ChangeState
triggerall = Var(1) = 0
triggerall = (roundstate = 2) && (P2StateType = L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [331, 350])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) && (P2Movetype != H)
value = 1100

; Sand Throw 2
[State -2]
type = ChangeState
triggerall = Var(1) = 0
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [331, 350])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) && (P2Movetype != H )
value = 1101

; Amethyst Shard
[State -2]
type = ChangeState
triggerall = Var(1) = 0
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [351, 370])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120)
value = 1110

; Acid Throw
[State -2]
type = ChangeState
triggerall = Var(1) = 0
triggerall = (roundstate = 2) && (P2StateType != L) && (movetype = A)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [351, 370])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120)
value = 1120

; Deception (counter)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [371, 390])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 1200
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = L) && (ctrl) && (random = [371, 390])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 1210

; Blade's Dance
[State -2]
type = ChangeState
triggerall = Var(1) = 1
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [311, 330])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 1300

; Fire Trail
[State -2]
type = ChangeState
triggerall = Var(1) = 1
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [351, 370])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120)
value = 1310

; Fire Dive
[State -2]
type = ChangeState
triggerall = Var(1) = 1
triggerall = (roundstate = 2) && (P2StateType != L) && (movetype = A)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [331, 350])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120)
value = 1320

; Nature Fury 1
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [391, 410])
triggerall = numhelper(1400) = 0 || numhelper(1410) = 0
trigger1 = (prevstateno != 5120)
value = 1400

; Nature Fury 2
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [391, 410])
triggerall = numhelper(1400) = 0 || numhelper(1410) = 0
trigger1 = (prevstateno != 5120)
value = 1410

; Nature Fury 3
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [391, 410])
triggerall = numhelper(1400) = 0 || numhelper(1410) = 0
trigger1 = (prevstateno != 5120)
value = 1420

; Roll (forward)
[State -2]
type = ChangeState
triggerall = Var(1) = 0
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [411, 430])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 2050

; Roll (back)
[State -2]
type = ChangeState
triggerall = Var(1) = 0
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [411, 430])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 2150

;---------------------------------------------------------------------------
; Super Moves
;---------------------------------------------------------------------------

; Nature Unity 1
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [431, 450])
trigger1 = (P2bodydist X >= 50) && (prevstateno != 5120) && (power >= 1000)
value = 3000

; Amethyst Shield 1
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [451, 470])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120) && (power >= 2000)
value = 3050

; Nature Unity 2
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [471, 500])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120) && (power >= 3000)
value = 3100

; Amethyst Shield 2 (fatality)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [501, 520])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120) && (power >= 3000) && (p2life <= 250)
value = 3150

; Fire Slash
[State -2]
type = ChangeState
triggerall = Var(1) = 1
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [521, 540])
trigger1 = (P2bodydist X >= 150) && (prevstateno != 5120) && (power >= 1000)
value = 3300

; Fire Carillon
[State -2]
type = ChangeState
triggerall = Var(1) = 1
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [541, 560])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120) && (power >= 2000)
value = 3350

; Fire Explosion
[State -2]
type = ChangeState
triggerall = Var(1) = 1
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl) && (random = [561, 580])
trigger1 = (P2bodydist X <= 70) && (prevstateno != 5120) && (power >= 3000)
value = 3400

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

; Cosmo 1
[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(2) >= 1
trigger1 = stateno != 0
ID = 2

[State -3, remove cosmo2]
type = RemoveExplod
triggerall = NumExplod(2) >= 1
trigger1 = anim = 5
ID = 2

; Cosmo 2 (Low Life)
[State -3, remove cosmo]
type = RemoveExplod
triggerall = NumExplod(3) >= 1
trigger1 = stateno != 0
ID = 3

[State -3, remove cosmo2]
type = RemoveExplod
triggerall = NumExplod(3) >= 1
trigger1 = anim = 5
ID = 3

;-------------------------------------

[State -3, Stand]
type = Explod
triggerall = Var(1) = 0
triggerall = stateno = 0
triggerall = power >= 3000
triggerall = NumExplod(2) >= 0
trigger1 = Time = 1
anim = 2
ID = 2
pos = 0,0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1

[State -3, Stand Sword]
type = Explod
triggerall = Var(1) = 1
triggerall = stateno = 0
triggerall = power >= 3000
triggerall = NumExplod(10002) >= 0
trigger1 = Time = 1
anim = 10002
ID = 10002
pos = 0,0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1

[State -3]
type = RemoveExplod
triggerall = Var(1) = 1
triggerall = NumExplod(10002) >= 1
trigger1 = anim != 10000
ID = 10002

[State -3, Stand]
type = Explod
triggerall = Var(1) = 0
triggerall = stateno = 0
triggerall = power >= 3000
triggerall = NumExplod(3) >= 0
trigger1 = Time = 1
anim = 3
ID = 3
pos = 0,0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1

[State -3, Stand Sword]
type = Explod
triggerall = Var(1) = 1
triggerall = stateno = 0
triggerall = power >= 3000
triggerall = NumExplod(10003) >= 0
trigger1 = Time = 1
anim = 10003
ID = 10003
pos = 0,0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1

[State -3]
type = RemoveExplod
triggerall = Var(1) = 1
triggerall = NumExplod(10003) >= 1
trigger1 = anim != 10001
ID = 10003

;---------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20 || anim = 10020
trigger1 = Animelem = 3
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20 || anim = 10020
trigger1 = Animelem = 6
value = 3,1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21 || anim = 10021
trigger1 = Animelem = 3
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21 || anim = 10021
trigger1 = Animelem = 6
value = 3,1

;---------------------------------------

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = Time = 1
value = 2,0

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = Time = 1
value = F2,0

[State -3, Air Jump]
type = AfterImage
triggerall = stateno = 45
trigger1 = Time = 1
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State -3, Air Jump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = Time = 1
value = 2,1

[State -3, Air Jump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = Time = 1
value = F2,1

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = Time = 1
value = 2,2

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = Time = 1
value = F2,3

;---------------------------------------

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = Time = 1
time = 25
PalBright = 10,10,10
PalContrast= 98,98,98
trans = Add1

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = Time = 1
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
trigger1 = Time = 1
value = 2,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Time = 1
value = F2,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 2
value = 3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 5
value = 3,1

;---------------------------------------

[State -3, Run Back]
type = AfterImage
triggerall = stateno = 105
trigger1 = Time = 1
time = 15
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State -3, Run Back]
type = Explod
triggerall = stateno = 105
trigger1 = Time = 5
pos = -5,15
anim = 70841
sprpriority = 5
removeongethit = 1
scale = .8, .8
ownpal = 1

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = Time = 1
value = 2,0

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = Time = 1
value = F2,0

[State -3, Run Back Land]
type = PlaySnd
triggerall = stateno = 106
trigger1 = Time = 1
value = 2,2

[State -3, Run Back Land]
type = PlaySnd
triggerall = stateno = 106
trigger1 = Time = 1
value = F2,3

;---------------------------------------

[State -3, Cloth Pieces]
type = Explod
triggerall = Life <= 0
triggerall = anim = 5150
triggerall = NumExplod(5250) = 0
trigger1 = Time = 15
pos = 0,0
anim = 5250
ID = 5250
bindtime = -1
sprpriority = -3
ownpal = 1

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = Var(58) = 0
triggerall = Life <= 0
triggerall = anim = 5150
trigger1 = Time = 1
trigger2 = Time = 10
;trigger3 = Time = 20
value = 11,1

[State -3, Lie Dead]
type = PalFX
triggerall = Life <= 0
triggerall = anim = 5150
trigger1 = Time = 1
time = 10
add = 0,0,0
sinadd = 200,200,200,3

[State -3, Sapphire]
type = PlaySnd
triggerall = Var(58) = 0
triggerall = Life <= 0
triggerall = anim = 5150
trigger1 = time = 90
value = 11,3

[State -3, Sapphire Light]
type = Explod
triggerall = anim = 5150
trigger1 = time = 60
anim = 5152
ID = 5152
pos = -3,9
sprpriority = 5
ownpal = 1

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9