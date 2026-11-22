; SAGA SPECTER ST FILE by carmorion, Tux & Squall

; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 170, 2]
type = PlaySnd
trigger1 = AnimElem = 1 ; para que se escuche la voz de saga en la time over lose
value = 170,0
channel = 0

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

;Galassia
[State 180, 1]
type = ChangeState
triggerall = var(36) != 1
triggerall = var(37) != 1
triggerall = !MatchOver
trigger1 = Time = 0
value = 182
 
;Pianto
[State 180, 2]
type = ChangeState
triggerall = var(36) != 1
triggerall = var(37) != 1
triggerall = MatchOver
trigger1 = Time = 0
value = 181

;Fatality
[State 180, 3]
type = ChangeState
triggerall = var(36) = 1
trigger1 = Time = 0
value = 184

;Desperate
[State 180, 3]
type = ChangeState
triggerall = var(37) = 1
trigger1 = Time = 0
value = 185

;---------------------------------------------------------------------------
; WinPose  MatchOver
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 180,2
channel = 0

[State 181, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 191,0

[State 181, 4]
type = Explod
triggerall = NumExplod(183) = 0
trigger1 = AnimElem = 2
anim = 183
ID = 183
postype = p1
pos = 0,0
sprpriority = -1
removetime = -1
bindtime = -1
ownpal = 1
scale=0.95,0.95

;---------------------------------------------------------------------------
; WinPose MatchNotOver
[Statedef 182]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 182, 1]
type = AssertSpecial
trigger1 = Time = [0, 320]
flag = RoundNotOver   ; round no terminara hasta cuando sea necesario en la animacion

[State 182, 2]
type = PlaySnd
trigger1 = AnimElem = 4 ; para que se escuche la voz de saga en la WinPose MatchNotOver
value = 180,0
channel = 0

[State 182, 3] ; este explod muestra una luz encima del animelem = 4 de la animacion 180 y usa la animacion 7061 que es la luz
type = Explod
trigger1 = AnimElem = 4
anim = 7061
postype = p1
pos = -9, -97
bindtime = -1 ; para que la luz se mueva con saga o se quede en el lugar de saga

[State 182, 4]
type = PlaySnd
trigger1 = AnimElem = 4 ; para que se escuche el sonido de la luz encima del dedo de saga
value = 180,1
channel = 1

[State 182, 5] ; este estado invoca el helper que muestra la galaxia giratoria encima del dedo de saga
type = helper
trigger1 = AnimElem = 5
ID = 183
postype = P1
pos = -9,-160
stateno = 183

[State 182, 6]     ; este controler cambia a la animacion con boca cerrada para que no se mueva la boca para siempre
type = ChangeAnim
trigger1 = time > 225
value = 182
elem = 1

;---------------------------------------------------------------------------
;Galaxy (helper)
[Statedef 183]
type = A
movetype = I ; La galaxia no debe golpear al enemigo, pues no es un estato de Ataque (A). debe ser I (Idle, osea que no hace nada).
physics = S
sprpriority = 2
anim = 8003

[State 183,0]
type = Trans ; Para solucionar el bug del MUGEN que quita la transparencia del archivo AIR al usar el AngleDraw
trigger1 = 1 ; significa "siempre" 
trans = add

[State 183,1]
type = AngleDraw
trigger1 = Time = [0, 5] ; Debe ser 0 porque cuando el Helper empieza la galaxia debe aparecer pequenita de repente
value = 0
scale = 0.1,0.1

[State 183,2]
type = AngleDraw
trigger1 = Time = [6, 11] ; Despuès de 6 ticks la galaxia empieza a agrandarse. El pròximo AngleDraw trendrà Time = 12, y asì adelante
value = 0
scale = 0.2,0.2

[State 183,3]
type = AngleDraw
trigger1 = Time = [12, 17]
value = 0
scale = 0.3,0.3

[State 183,4]
type = AngleDraw
trigger1 = Time = [18, 23]
value = 0
scale = 0.4,0.4

[State 183,5]
type = AngleDraw
trigger1 = Time = [24, 29]
value = 0
scale = 0.5,0.5

[State 183,6]
type = AngleDraw
trigger1 = Time = [30, 35]
value = 0
scale = 0.6,0.6

[State 183,7]
type = AngleDraw
trigger1 = Time = [36, 41]
value = 0
scale = 0.7,0.7

[State 183,8]
type = AngleDraw
trigger1 = Time = [42, 47]
value = 0
scale = 0.8,0.8

[State 183,9]
type = AngleDraw
trigger1 = Time = [48, 53]
value = 0
scale = 0.9,0.9

[State 183,10]
type = AngleDraw
trigger1 = Time = [54, 59]
value = 0
scale = 1,1

[State 183,11]
type = AngleDraw
trigger1 = Time = [60, 69]
value = 0
scale = 1,1

[State 183,12]
type = AngleDraw
trigger1 = Time = [70, 79]
value = 0
scale = 1,1

[State 183,13]
type = AngleDraw
trigger1 = Time = [80, 81]
value = -15 ;La galaxia empieza su rotaciòn, dos giros
scale = 1,1

[State 183,14]
type = AngleDraw
trigger1 = Time = [82, 83]
value = -30
scale = 1,1

[State 183,15]
type = AngleDraw
trigger1 = Time = [84, 85]
value = -45
scale = 1,1

[State 183,16]
type = AngleDraw
trigger1 = Time = [86, 87]
value = -60
scale = 1,1

[State 183,17]
type = AngleDraw
trigger1 = Time = [88, 89]
value = -75
scale = 1,1

[State 183,18]
type = AngleDraw
trigger1 = Time = [90, 91]
value = -90
scale = 1,1

[State 183,19]
type = AngleDraw
trigger1 = Time = [92, 93]
value = -105
scale = 1,1

[State 183,20]
type = AngleDraw
trigger1 = Time = [94, 95]
value = -120
scale = 1,1

[State 183,21]
type = AngleDraw
trigger1 = Time = [96, 97]
value = -135
scale = 1,1

[State 183,22]
type = AngleDraw
trigger1 = Time = [98, 99]
value = -150
scale = 1,1

[State 183,23]
type = AngleDraw
trigger1 = Time = [100, 101]
value = -165
scale = 1,1

[State 183,24]
type = AngleDraw
trigger1 = Time = [102, 103]
value = -180
scale = 1,1

[State 183,25]
type = AngleDraw
trigger1 = Time = [104, 105]
value = -195
scale = 1,1

[State 183,26]
type = AngleDraw
trigger1 = Time = [106, 107]
value = -210
scale = 1,1

[State 183,27]
type = AngleDraw
trigger1 = Time = [108, 109]
value = -225
scale = 1,1

[State 183,28]
type = AngleDraw
trigger1 = Time = [110, 111]
value = -240
scale = 1,1

[State 183,29]
type = AngleDraw
trigger1 = Time = [112, 113]
value = -255
scale = 1,1

[State 183,30]
type = AngleDraw
trigger1 = Time = [114, 115]
value = -270
scale = 1,1

[State 183,31]
type = AngleDraw
trigger1 = Time = [116, 117]
value = -285
scale = 1,1

[State 183,32]
type = AngleDraw
trigger1 = Time = [118, 119]
value = -300
scale = 1,1

[State 183,33]
type = AngleDraw
trigger1 = Time = [120, 121]
value = -315
scale = 1,1

[State 183,34]
type = AngleDraw
trigger1 = Time = [122, 123]
value = -330
scale = 1,1

[State 183,35]
type = AngleDraw
trigger1 = Time = [124, 125]
value = -345
scale = 1,1

[State 183,36]
type = AngleDraw
trigger1 = Time = [126, 127]
value = -360
scale = 1,1

[State 183,37]
type = AngleDraw
trigger1 = Time = [128, 129]
value = -15 ;Empieza el segundo giro
scale = 1,1

[State 183,38]
type = AngleDraw
trigger1 = Time = [130, 131]
value = -30
scale = 1,1

[State 183,39]
type = AngleDraw
trigger1 = Time = [132, 133]
value = -45
scale = 1,1

[State 183,40]
type = AngleDraw
trigger1 = Time = [134, 135]
value = -60
scale = 1,1

[State 183,41]
type = AngleDraw
trigger1 = Time = [136, 137]
value = -75
scale = 1,1

[State 183,42]
type = AngleDraw
trigger1 = Time = [138, 139]
value = -90
scale = 1,1

[State 183,43]
type = AngleDraw
trigger1 = Time = [140, 141]
value = -105
scale = 1,1

[State 183,44]
type = AngleDraw
trigger1 = Time = [142, 143]
value = -120
scale = 1,1

[State 183,45]
type = AngleDraw
trigger1 = Time = [144, 145]
value = -135
scale = 1,1

[State 183,46]
type = AngleDraw
trigger1 = Time = [146, 147]
value = -150
scale = 1,1

[State 183,47]
type = AngleDraw
trigger1 = Time = [148, 149]
value = -165
scale = 1,1

[State 183,48]
type = AngleDraw
trigger1 = Time = [150, 151]
value = -180
scale = 1,1

[State 183,49]
type = AngleDraw
trigger1 = Time = [152, 153]
value = -195
scale = 1,1

[State 183,50]
type = AngleDraw
trigger1 = Time = [154, 155]
value = -210
scale = 1,1

[State 183,51]
type = AngleDraw
trigger1 = Time = [156, 157]
value = -225
scale = 1,1

[State 183,52]
type = AngleDraw
trigger1 = Time = [158, 159]
value = -240
scale = 1,1

[State 183,53]
type = AngleDraw
trigger1 = Time = [160, 161]
value = -255
scale = 1,1

[State 183,54]
type = AngleDraw
trigger1 = Time = [162, 163]
value = -270
scale = 1,1

[State 183,55]
type = AngleDraw
trigger1 = Time = [164, 165]
value = -285
scale = 1,1

[State 183,56]
type = AngleDraw
trigger1 = Time = [166, 167]
value = -300
scale = 1,1

[State 183,57]
type = AngleDraw
trigger1 = Time = [168, 169]
value = -315
scale = 1,1

[State 183,58]
type = AngleDraw
trigger1 = Time = [170, 171]
value = -330
scale = 1,1

[State 183,59]
type = AngleDraw
trigger1 = Time = [172, 173]
value = -345
scale = 1,1

[State 183,60]
type = AngleDraw
trigger1 = Time = [174, 175]
value = 0
scale = 1,1

[State 183,61]
type = PlaySnd
trigger1 = AnimElem = 5 ; para que se escuche el sonido de la explosión de la galaxia
value = 7000,0
channel = 0

[State 183,62]
type = EnvShake
trigger1 = AnimElem = 5 ; temblor al explotar la galaxia
time = 50
freq = 60
ampl = 3
phase = 0

[State 183,63]
type = AssertSpecial
trigger1 = 1
flag = noShadow

[State 183,64]
type = DestroySelf ; se autodestruye el helper para sacarlo de memoria su tiempo de animación ha terminado
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; WinPose Fatality
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 180,3
channel = 0

;---------------------------------------------------------------------------
; WinPose Desperate
[Statedef 185]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 185, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 185, 2]
type = AssertSpecial
trigger1 = Time = [0, 239]
flag = RoundNotOver

[State 185, 3]
type = PlaySnd
trigger1 = Time = 0
value = 180,4
channel = 0

;---------------------------------------------------------------------------
; Introduction
[Statedef 190]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 1]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

;Vestizione
[State 190, 2]
type = ChangeState
trigger1 = Var(2) = [0,24]
value = 191

;Cube
[State 190, 2]
type = ChangeState
trigger1 = Var(2) = [25,49]
value = 192

;Mantello
[State 190, 3]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 193

;---------------------------------------------------------------------------
; Intro Vestizione
[Statedef 191]
type = S
ctrl = 0
anim = 196
velset = 0,0

[State 192, 1] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = noMusic

;Sfondo
[State 191, 3]
type = Explod
trigger1 = Time = 0
anim = 3104
sprpriority = -4
postype = Back
pos = 0,0
Scale = 1,1
removetime = 300
bindtime = -1
ownpal = 1
removeongethit = 1

[State 191, Costellazione]
type = Explod
trigger1 = NumExplod(6000) = 0
anim = 6000
ID = 6000
pos = -70,-205
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 120
scale = 0.5,0.5

;Bara
[State 192, 3]
type = Explod
trigger1 = Time = 0
anim = 198
ID = 198
postype = p1
pos = 0,5
sprpriority = 3
removetime = 155
ownpal = 1

;Effetto bara
[State 192, 3]
type = Explod
trigger1 = Time = 55
anim = 7040
ID = 7040
postype = p1
pos = 0,-5
sprpriority = 4
removetime = 20
ownpal = 1

;Luce
[State 192, 3]
type = Explod
trigger1 = Time = 75
anim = 7050
ID = 7050
postype = p1
pos = 0,5
sprpriority = 2
removetime = 50
ownpal = 1

;Armatura
[State 192, 3]
type = Explod
trigger1 = Time = 170
anim = 197
ID = 197
postype = p1
pos = 90,-80
sprpriority = 2
removetime = 140
ownpal = 1

;Cosmo
[State 192, 4]
type = Playsnd
trigger1 = time = 0
value = 191,0

;Arrivo Armatura
[State 192, 5]
type = Playsnd
trigger1 = Time = 170
value = 180,1

;Armatura
[State 192, 5]
type = Playsnd
trigger1 = Time = 200
value = 192,0
[State 192, 5]
type = Playsnd
trigger1 = Animelem = 3
trigger2 = Animelem = 5
trigger3 = Animelem = 11
value = 192,2
[State 192, 5]
type = Playsnd
trigger1 = Animelem = 7
value = 192,1
[State 192, 5]
type = Playsnd
trigger1 = Animelem = 13
trigger2 = Time = 50
value = 192,3

;Musica Bara
[State 192, 5]
type = Playsnd
trigger1 = Time = 0
value = 192,4

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

[State 192, 7] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
;Intro Cube
[Statedef 192] 
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 192, 1] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

;Sfondo
[State 192, 3]
type = Explod
trigger1 = Time = 0
anim = 3104
sprpriority = -4
postype = Back
pos = 0,0
Scale = 1,1
removetime = 200
bindtime = -1
ownpal = 1
removeongethit = 1

[State 192, Costellazione]
type = Explod
trigger1 = NumExplod(6000) = 0
anim = 6000
ID = 6000
pos = -70,-205
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 300
scale = 0.5,0.5

[State 192, 2]
type = Explod                    ; pone el cosmos del cube 
triggerall = NumExplod(191) = 0
trigger1 = Time = 0
removetime = 240
anim = 191
ID = 191
postype = p1
pos = 0,0
sprpriority = -1
ownpal = 1
scale=0.95,0.95

[State 192, 3]
type = Explod                    ; fx de ruptura del cube 
triggerall = NumExplod(192) = 0
trigger1 = AnimElem = 2 
anim = 192
ID = 192
postype = p1
pos = 0,-90
sprpriority = 3
ownpal = 1
scale=0.95,0.95

[State 192, 4]
type = Playsnd          ; sonido cosmos del cube 
triggerall = anim = 190
trigger1 = time = 0 
value = 191,0

[State 192, 5]
type = Playsnd          ; sonido cuando se rompe el cube 
triggerall = anim = 190
trigger1 = AnimElem = 2 
value = 191,1

[State 192, 6]
type = RemoveExplod
triggerall = NumExplod(7002) >= 1
trigger1 = AnimElem = 4    
ID = 7002

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

[State 192, 7] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
;Intro manto hades
[Statedef 193] 
type = S
ctrl = 0
anim = 193
velset = 0,0

[State 193, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 193

[State 193, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

;Galassia piccola
[State 193, 3]
type = Explod
trigger1 = Time = 180
anim = 194
sprpriority = 2
postype = p1
pos = 0,-80
sprpriority = -1
removetime = 5
bindtime = -1
ownpal = 1
scale = 0.1,0.1

;Galassia piccola
[State 193, 3]
type = Explod
trigger1 = Time = 185
anim = 194
sprpriority = 2
postype = p1
pos = 0,-80
sprpriority = -1
removetime = 5
bindtime = -1
ownpal = 1
scale = 0.2,0.2

;Galassia piccola
[State 193, 3]
type = Explod
trigger1 = Time = 190
anim = 194
sprpriority = 2
postype = p1
pos = 0,-80
sprpriority = -1
removetime = 5
bindtime = -1
ownpal = 1
scale = 0.3,0.3

;Galassia piccola
[State 193, 3]
type = Explod
trigger1 = Time = 195
anim = 194
sprpriority = 2
postype = p1
pos = 0,-80
sprpriority = -1
removetime = 5
bindtime = -1
ownpal = 1
scale = 0.4,0.4

;Galassia piccola
[State 193, 3]
type = Explod
trigger1 = Time = 200
anim = 194
sprpriority = 2
postype = p1
pos = 0,-80
sprpriority = -1
removetime = 5
bindtime = -1
ownpal = 1
scale = 0.5,0.5

;Galassia mediopiccola
[State 193, 3]
type = Explod
trigger1 = Time = 205
anim = 194
sprpriority = 2
postype = p1
pos = 0,-80
sprpriority = -1
removetime = 5
bindtime = -1
ownpal = 1
scale = 0.6,0.6

;Galassia mediopiccola
[State 193, 3]
type = Explod
trigger1 = Time = 210
anim = 194
sprpriority = 2
postype = p1
pos = 0,-80
sprpriority = -1
removetime = 5
bindtime = -1
ownpal = 1
scale = 0.7,0.7

;Galassia mediopiccola
[State 193, 3]
type = Explod
trigger1 = Time = 215
anim = 194
sprpriority = 2
postype = p1
pos = 0,-80
sprpriority = -1
removetime = 5
bindtime = -1
ownpal = 1
scale = 0.8,0.8

;Galassia media
[State 193, 3]
type = Explod
trigger1 = Time = 220
anim = 194
sprpriority = 2
postype = p1
pos = 0,-80
sprpriority = -1
removetime = 5
bindtime = -1
ownpal = 1
scale = 1,1

;Galassia mediopiccola
[State 193, 3]
type = Explod
trigger1 = Time = 225
anim = 194
sprpriority = 2
postype = p1
pos = 0,-80
sprpriority = -1
removetime = 5
bindtime = -1
ownpal = 1
scale = 1.3,1

;Galassia grande
[State 193, 3]
type = Explod
trigger1 = Time = 230
anim = 194
sprpriority = 2
postype = p1
pos = 0,-80
sprpriority = -1
removetime = 50;121
bindtime = -1
ownpal = 1
scale = 1.5,1

[State 193, 4]
type = PlaySnd
trigger1 = Time = 10
value = 191,0
channel = 1

[State 193, 4]
type = StopSnd
trigger1 = AnimElem = 19
channel = 1

[State 193, 4]
type = PlaySnd
trigger1 = Time = 235
value = 7000,0
channel = 2

[State 193, 4]
type = PlaySnd
trigger1 = AnimElem = 29
value = 190,0
channel = 0

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

[State 193, 5] ;Change to stand state when done
type = ChangeState
trigger1 = Time = 670
value = 0
;85

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

[State 195, 3]
type = PlaySnd
trigger1 = Time = 0
value = 195,1
channel = 0

[State 195, 5]
type = ChangeState
trigger1 = Time = 130
trigger2 = numhelper(8150) > 0
value = 0
ctrl = 1

;--------------------------------------------------------------
;--------------------------------------------------------------
;--------------------------------------------------------------
;--------------------------------------------------------------


;---------------------------------------------------------------------------
; Stand Light Punch
[Statedef 200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200                       ;Change animation (Def: no change)
poweradd = 50                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S7000
sparkxy = -10, -86
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
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
; Stand medium punch
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
value = 0,1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = S7001 
sparkxy = -10,-90
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 210, 3]
type = ChangeAnim
trigger1 = AnimElemTime(5) > 0 && AnimElemTime(6) <= 0
trigger1 = movecontact
ignorehitpause = 1
persistent = 0
value = 210
elem = 6

[State 210, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Stand Hard Punch
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = ifelse(prevstateno = 1000,221,220)
sprpriority = -1

[State 1000, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 1001

[State 220, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 220, 2]
type = HitDef
triggerall = prevstateno != 1000
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = S7002
sparkxy = -10,-80
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4
fall = 1
fall.recover = 1

[State 220, 2]
type = HitDef
triggerall = prevstateno = 1000
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Hard
damage    = 40
guardflag = MA
pausetime = 12,12
sparkno = S7004
sparkxy = -10,-80
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4
fall = 1
fall.recover = 0

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand light kick
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
value = 0,3

[State 230, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 20
guardflag = MA
pausetime = 12,12
sparkno = S7000 
sparkxy = -10,-37
hitsound   = S1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 11
ground.velocity = -5
air.velocity = -2.5,-3.5

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand medium kick
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

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0,4

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Hard
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = S7001 
sparkxy = -10,-70
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
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
; Stand hard kick
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
value = 0,5

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Up
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = S7002
sparkxy = -20,-110
hitsound   = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -3,-12
guard.velocity = -4
air.velocity = -3,-12
airguard.velocity = -6,-4
fall = 1
fall.damage = 10

[State 250, 3]
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
value = 0,0

[State 400, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 20
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = S7000 
sparkxy = -10,-50
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 10
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, 3]
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
value = 0,1

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 30
animtype  = Medium
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = S7001
sparkxy = -10,-55
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-4

[State 410, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching hard punch
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
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
attr = C, NA
damage    = 30
animtype  = Up
hitflag = MAF
guardflag = M
pausetime = 5,5
sparkno = S7002
sparkxy = 0,-115
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -3,-12
guard.velocity = -4
air.velocity = -3,-12
airguard.velocity = -6,-4
fall = 1
fall.damage = 10

[State 420, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
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
value = 0,3

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = S7000 
sparkxy = -10,-8
hitsound   = S1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 10
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
;Crouch medium kick
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
value = 0,4

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = S7001
sparkxy = -5,-10
hitsound   = S1,4
guardsound = S6,0
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
;Crouch hard kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 450
sprpriority = 2

[State 450, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0,5

[State 450, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage = 40
hitflag = MAF
guardflag = L
pausetime = 8,8
sparkno = S7002
sparkxy = -5,-17
hitsound = S1,5
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -3,0
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
trigger1 = Time = 1
value = 0,0

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage    = 20
guardflag = HA
priority = 3
pausetime = 12,12
sparkno = S7000 
sparkxy = -10,-48
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 600, 3]
type = CtrlSet
trigger1 = Time = 17
value = 1

;---------------------------------------------------------------------------
;Jump medium Punch
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
value = 0,1

[State 610, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage = 30
guardflag = HA
priority = 4
pausetime = 4,4
sparkno = S7001
sparkxy = -10,-27
hitsound = S1,1
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

;---------------------------------------------------------------------------
;Jump Hard Punch
[Statedef 620]
type = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 620
sprpriority = 2

[State 620, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 40
guardflag = HA
priority = 4
pausetime = 4,4
sparkno = S7002
sparkxy = -10,-95
hitsound   = S1,6
guardsound = S6,0
animtype = Hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4
fall = 1

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
value = 0,3

[State 630, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 20
guardflag = HA
priority = 3
pausetime = 4,4
sparkno = S7000 
sparkxy = -5,-35
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3

;---------------------------------------------------------------------------
;Jump medium kick
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
value = 0,4

[State 640, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage    = 30
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = S7001
sparkxy = -10,-95
hitsound   = S1,4
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4

;---------------------------------------------------------------------------
;Jump Hard kick
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
value = 0,5

[State 650, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage    = 40
guardflag = HA
priority = 4
pausetime = 8,8
sparkno = S7002
sparkxy = -10,-50
hitsound   = S1,6
guardsound = S6,0
animtype = Hard
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4
fall = 1

;===========================================================================
;---------------------------------------------------------------------------
;SPECIAL MOVES
;---------------------------------------------------------------------------
;===========================================================================
;Presa
[Statedef 800]
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
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
p1sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 801
p2stateno = 802
guard.dist = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------
[Statedef 801]
type    = S
movetype= A
physics = N
anim = 801
poweradd = 50

[State 801, POLVERE]
type = Explod
trigger1 = Animelem = 2
trigger2 = Animelem = 4
pos = 10,-70
postype = p1
anim = 7004
sprpriority = 3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1

[State 801, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = Animelem = 4
value = 1, 1

[State 801, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 800, 0

[State 801, Bind 1]
type = TargetBind
trigger1 = Time > 0 && Time <= 32
pos = 28, 0

[State 801, Width 2-11]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
edge = 60,0

[State 801, Bind 2-4]
type = TargetBind
trigger1 = Time > 32 && Time <= 40
pos = 10, -10

[State 801, Bind 5]
type = TargetBind
trigger1 = Time > 40 && Time <= 46
pos = 5, -15

[State 801, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------

[Statedef 802]
type    = A
movetype= H
physics = N
velset = 0,0

[State 810, State End]
type = ChangeAnim2
trigger1 = Time = 0
value = 802

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = Time = 46
y = -3
X = 7

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = Time >= 56
y = 0.3

[State 821, 1] ;Gravity
type = Lifeadd
Trigger1 = Time = 5
Trigger2 = Time = 21
Value = -30

[State 821, 4] ;Hit ground
type = SelfState
triggerall = Time > 46
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

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
value = 900, 0
channel = 0

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

[State 901, Costellazione]
type = Explod
trigger1 = NumExplod(6000) = 0
anim = 6000
ID = 6000
pos = -70,-205
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = -1
scale = 0.5,0.5

[State 901, cosmo]
type = Explod
triggerall = NumExplod(903) = 0
trigger1 = 1
pos = 2,0
postype = p1
anim = 903
ID = 903
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1

[State 901, POLVERE]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = 1
pos = 1,0
postype = p1
anim = 7010
ID = 7010
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1

[State 901, POLVERE]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = 1
pos = 0,1
postype = p1
anim = 7020
ID = 7020
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = .8, .8

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

[State 901]
type = ChangeState
triggerall = Var(59) = 0
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
physics = S
anim = 902

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(6000) >= 1
trigger1 = time = 0
ID = 6000

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

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7030) >= 1
trigger1 = time = 0
ID = 7030

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(7031) >= 1
trigger1 = time = 0
ID = 7031

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(903) >= 1
trigger1 = time = 0
ID = 903

[State 902, Var]
type = VarSet
trigger1 = Time = 0
v = 10
value = 0

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
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Mille pugni
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1000
sprpriority = 2

[State 3200]
type = PlaySnd
triggerall = prevstateno = 3303
trigger1 = Time = 0
value = 900,0

[State 250, 1]
type = PlaySnd
trigger1 = Animelem = 2
trigger2 = Animelem = 8
value = 0,2
[State 250, 1]
type = PlaySnd
trigger1 = Animelem = 3
trigger2 = Animelem = 10
value = 0,3
[State 250, 1]
type = PlaySnd
trigger1 = Animelem = 5
trigger2 = Animelem = 6
value = 0,4

;KonChoKen
[State 193, 3]
type = Explod
trigger1 = Time = 3
anim = 1001
ID = 1001
sprpriority = 5
postype = p1
pos = 50,-70
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1

[State 250, 2]
type = HitDef
trigger1 = Time%6 = 0
attr = S, SA
animtype  = Hard
damage    = 5
guardflag = MA
pausetime = 3,20
sparkno = S7000
sparkxy = -20,-90
hitsound   = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -3,0
guard.velocity = -4
air.velocity = -3,0
airguard.velocity = -6,-4
fall = 0

[State 250, 2]
type = HitDef
trigger1 = Time%6 = 3
attr = S, SA
animtype  = Hard
damage    = 4
guardflag = MA
pausetime = 3,20
sparkno = S7001
sparkxy = -20,-60
hitsound   = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -3,0
guard.velocity = -4
air.velocity = -3,0
airguard.velocity = -6,-4
fall = 0

[State 250, 3]
type = ChangeState
triggerall = movecontact
trigger1 = Time = 32
value = 220
ctrl = 0

[State 1000, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 32
ID = 1001

[State 250, 3]
type = ChangeState
triggerall = movecontact = 0
trigger1 = Time = 32
value = 0
ctrl = 1

;---------------------------------------
;player2 hit
[Statedef 1025]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 5

[State 1025, Anim]
type = ChangeAnim2
trigger1 = Time >= 0
value = 1025

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1026

;------------------
;player2 on air
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

;------------------
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
value = 240,0

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;------------------
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
; Esplosione di Cosmo
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1100
sprpriority = 2

[State 250, 1]
type = PlaySnd
trigger1 = Animelem = 4
value = 7000,0

[State 250, 1]
type = PlaySnd
trigger1 = Animelem = 1
value = 1100,0
channel = 1

;Esplosione
[State 193, 3]
type = Explod
trigger1 = Time = 0
anim = 7009
sprpriority = 2
postype = p1
pos = 0,-80
removetime = 29
bindtime = -1
ownpal = 1
removeongethit = 1

;Charge piedi
[State 193, POLVERE]
type = Explod
trigger1 = Animelem = 1
pos = 1,0
postype = p1
anim = 7010
ID = 131
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 35

;Charge Vento
[State 193, POLVERE]
type = Explod
trigger1 = Animelem = 1
pos = 0,1
postype = p1
anim = 7020
ID = 170
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = .8, .8
removetime = 35

[State 250, 2]
type = HitDef
trigger1 = Animelem = 4
attr = S, SA
animtype  = Hard
damage    = 70
guardflag = MA
pausetime = 3,6
sparkno = S7007
sparkxy = -20,-90
hitsound   = S1,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -6,-9
guard.velocity = -4
air.velocity = -6,-9
airguard.velocity = -6,-8
fall = 1
fall.damage = 10

[State 250, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;--------------------------
; Fireball forte
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 1

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = 0,5

;Lampo
[State 3200, POLVERE]
type = Explod
trigger1 = Animelem = 2
pos = 30,-100
postype = p1
anim = 7007
ID = 7007
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 11

;Lampo
[State 3200, POLVERE]
type = Explod
trigger1 = Animelem = 3
pos = 95,-88
postype = p1
anim = 7007
ID = 7007
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 11

;Vermicello
[State 3101]
type = Projectile
trigger1 = Animelem = 3
attr = S, SP
projanim = 1401
projhitanim = -1
projedgebound = 240
projstagebound = 240
projscale = 1.5,1.5
projpriority = 2
projID = 14001
offset = 0, -90
velocity = 8,0
damage = 60
animtype = Hard
guardflag = MA
pausetime = 7,15
sparkno = S7001
sparkxy =  30,0
hitsound   = s7000,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5,-3
air.velocity = -2.5,0
fall = 1
fall.recover = 0
;afterimage.time = -1
;afterimage.trans = Add1

;;Pianeta
;[State 3101]
;type = Projectile
;trigger1 = Animelem = 3
;attr = S, SP
;projanim = 1201
;projhitanim = 3115
;projedgebound = 240
;projstagebound = 240
;projscale = 0.5,0.5
;projID = 1200
;offset = 50, -88
;velocity = 10
;damage = 60
;animtype = Hard
;guardflag = MA
;pausetime = 7,15
;sparkno = S7005
;sparkxy =  30,18
;hitsound   = s7000,0
;guardsound = s7000,0
;ground.type = Low
;ground.slidetime = 14
;ground.hittime  = 5
;ground.velocity = -5,0
;air.velocity = -2.5,0
;p2stateno = 1025
;afterimage.time = -1
;afterimage.trans = Add1
;fall = 1
;fall.recover = 0

[State 3200]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;--------------------------
; Fireball Aerea
[Statedef 1300]
type    = A
movetype= A
physics = A
juggle  = 5
poweradd= 100
ctrl = 0
velset = 0,-5
anim = 1300
sprpriority = 1

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 1
value = 0,5

;Lampo
[State 3200, POLVERE]
type = Explod
trigger1 = Animelem = 1
pos = 60,-25
postype = p1
anim = 7007
ID = 7007
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 11

[State 3101]
type = Projectile
trigger1 = Animelem = 2
attr = S, SP
projanim = 1301
projhitanim = 1302
projedgebound = 240
projstagebound = 240
;projscale = 0.3,0.3
projID = 1300
offset = 60, -25
velocity = 4,7
damage = 60
animtype = Hard
guardflag = MA
pausetime = 7,15
sparkno = -1;S7005
sparkxy =  30,18
hitsound   = s7000,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -1,-4
air.velocity = -1,-4
;afterimage.time = -1
;afterimage.trans = Add1
fall = 1
fall.recover = 1

[State 3200]
type = ChangeState
trigger1 = Animtime = 0
value = 50
ctrl = 0

;--------------------------
; Fireball debole/media
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1400
sprpriority = 1

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 1
value = 0,5

;Lampo
[State 3200, POLVERE]
type = Explod
trigger1 = Animelem = 2
pos = 50,-90
postype = p1
anim = 7007
ID = 7007
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 10

;Vermicello
[State 3101]
type = Projectile
trigger1 = Animelem = 2
attr = S, SP
projanim = 1401
projhitanim = -1
projedgebound = 240
projstagebound = 240
projscale = 1,1
projpriority = 2
projID = 14001
offset = 0, -90
velocity = 8,0
damage = 60
animtype = Hard
guardflag = MA
pausetime = 7,15
sparkno = S7001
sparkxy =  30,0
hitsound   = s7000,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5,0
air.velocity = -2.5,0
;afterimage.time = -1
;afterimage.trans = Add1

;;Pianeta
;[State 3101]
;type = Projectile
;trigger1 = Animelem = 2
;attr = S, SP
;projanim = 1201
;projhitanim = 3115
;projedgebound = 240
;projstagebound = 240
;projscale = 0.3,0.3
;projsprpriority = 3
;projID = 1400
;offset = 50, -90
;velocity = 5
;damage = 60
;animtype = Hard
;guardflag = MA
;pausetime = 7,15
;sparkno = S7001
;sparkxy =  30,18
;hitsound   = s7000,0
;guardsound = s7000,0
;ground.type = Low
;ground.slidetime = 14
;ground.hittime  = 5
;ground.velocity = -5,0
;air.velocity = -2.5,0
;afterimage.time = -1
;afterimage.trans = Add1

[State 3200]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;--------------------------
; Fireball gemella
[Statedef 1500]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1500
sprpriority = 1

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 1
value = 0,5

;Lampo
[State 3200, POLVERE]
type = Explod
trigger1 = Animelem = 2
pos = 50,-90
postype = p1
anim = 7007
ID = 7007
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 11

[State 3101]
type = Projectile
trigger1 = Animelem = 2
attr = S, SP
projanim = 1201
projhitanim = 3115
projedgebound = 240
projstagebound = 240
projscale = 0.3,0.3
projID = 1500
offset = 50, -90
velocity = 10,0
damage = 30
animtype = Hard
guardflag = MA
pausetime = 7,30
sparkno = S7001
sparkxy =  30,8
hitsound   = s7000,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5,0
air.velocity = -2.5,0
afterimage.time = -1
afterimage.trans = Add1

;Lampo
[State 3200, POLVERE]
type = Explod
trigger1 = Animelem = 4
pos = 30,-100
postype = p1
anim = 7007
ID = 7007
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 11

;Lampo
[State 3200, POLVERE]
type = Explod
trigger1 = Animelem = 5
pos = 95,-88
postype = p1
anim = 7007
ID = 7007
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 11

[State 3101]
type = Projectile
trigger1 = Animelem = 5
attr = S, SP
projanim = 1201
projhitanim = 3115
projedgebound = 240
projstagebound = 240
projscale = 0.5,0.5
projID = 1501
offset = 50, -88
velocity = 10,0
damage = 30
animtype = Hard
guardflag = MA
pausetime = 7,15
sparkno = S7005
sparkxy =  30,8
hitsound   = s7000,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5,-3
air.velocity = -2.5,-3
p2stateno = 1025
afterimage.time = -1
afterimage.trans = Add1
fall = 1
fall.recover = 0

[State 3200]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;------------------
;Galassie
;------------------

;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 0
pos = 90,-140
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermovetime = 200
removeongethit = 1
scale = 2, 2
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 5
pos = 80,-130
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermovetime = 200
scale = 1.8, 1.8
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 10
pos = 75,-110
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.6, 1.6
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 15
pos = 60,-100
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.4, 1.4
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 20
pos = 45,-90
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.2, 1.2
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 25
pos = 30,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1, 1
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 30
pos = 15,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.8, 0.8
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 35
pos = 0,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 5

;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 0
pos = -90,-20
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermovetime = 200
removeongethit = 1
scale = 2, 2
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 5
pos = -80,-30
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermovetime = 200
scale = 1.8, 1.8
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 10
pos = -75,-50
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.6, 1.6
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 15
pos = -60,-60
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.4, 1.4
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 20
pos = -45,-70
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.2, 1.2
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 25
pos = -30,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1, 1
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 30
pos = -15,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.8, 0.8
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 35
pos = 0,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 5

;------------------
;Fine Galassie
;------------------

;Esplosione
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 30
pos = 0,-80
postype = p1
anim = 7009
ID = 7009
sprpriority = 3
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 29

;Cosmo
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 40
pos = 0,0
postype = p1
anim = 7016
ID = 7016
sprpriority = -2
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 60

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 3000,1
Channel = 0

[State 3200]
type = PlaySnd
trigger1 = Time = 40
value = 1,6

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 191,0

[State 3200, RemoveExplod]
type = RemoveExplod
trigger1 = time = 91
ID = 7016

[State 3200]
type = EnvShake
trigger1 = Time = 40
time = 50

[State 3200, State]
type = ChangeState
trigger1 = Time = 92
value = 0
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;HYPER MOVES
;---------------------------------------------------------------------------
;===========================================================================

; Esplosione della Galassia Lvl2
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -2000
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 1

[State 1000]
type = AssertSpecial
trigger1 = 1
flag = noFG

;Sfondo
[State 3000, 3]
type = Explod
trigger1 = Time = 0
anim = 3103
sprpriority = -4
postype = Back
pos = -5,-5
Scale = 1.2,1.2
removetime = 120
supermovetime = 200
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3000]
type = PlaySnd
trigger1 = Animelem = 6
value = 191,0

[State 3000]
type = SuperPause
trigger1 = Time = 1
time = 50
movetime = 50
anim = -1
darken = 1

[State 3000]
type = PlaySnd
trigger1 = Time = 0
value = 3000,0
Channel = 0

[State 3000]
type = PlaySnd
trigger1 = Time = 48
value = 3000,1
Channel = 0


[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta0"
ID = 3010
stateno = 3010
;size.xscale = 0.7
;size.yscale = 0.7
pos = -200,-40
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta1"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3011
pos = -170,-130
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta2"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3012
pos = -160,-160
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta3"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3013
pos = -300,-170
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta4"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3014
pos = 540,-160
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta5"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3015
pos = 340,-70
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta6"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3016
pos = 495,-120
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta7"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3017
pos = 435,-40
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta8"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3018
pos = 390,-10
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta9"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3019
pos = -225,-190
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta10"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3020
pos = -95,0
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta11"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3021
pos = -70,-15
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta12"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3019
pos = -75,-105
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta13"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3015
pos = 545,-180
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta14"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3015
pos = 700,-40
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta15"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3017
pos = 735,-120
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta16"
ID = 3010
;size.xscale = 0.7
;size.yscale = 0.7
stateno = 3016
pos = 695,-180
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200


[State 3000]
type = ChangeState
trigger1 = Time = 50
value = 3001
ctrl = 0

;---------------------------------
; Colpo
[Statedef 3001]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0,0
anim = 3001
sprpriority = 1

[State 3001]
type = SuperPause
trigger1 = Time = 1
time = 7
movetime = 7
anim = -1
darken = 1

[State 3001]
type = PlaySnd
trigger1 = Time = 0
value = 191,0

;Cosmo
[State 181, 4]
type = Explod
triggerall = NumExplod(183) = 0
trigger1 = AnimElem = 6
anim = 903
ID = 903
postype = p1
pos = 0,0
sprpriority = -1
removetime = 51
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1
scale=0.95,0.95

;EffettoPugno
[State 181, 4]
type = Explod
Trigger1 = Time = 11
Trigger2 = Time = 16
Trigger3 = Time = 21
Trigger4 = Time = 26
Trigger5 = Time = 31
Trigger6 = Time = 36
anim = 70092
ID = 70092
postype = p1
pos = 20,-60
sprpriority = -1
removetime = 12
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1
scale=0.95,0.95

[State 3200, 2]
type = HitDef
trigger1 = Time = 11
trigger2 = Time = 31
attr = S, HA
animtype  = Hard
damage    = 50
guardflag = MA
pausetime = 5,0
sparkno = S7004
sparkxy = -20,-60
hitsound   = S1,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 10
ground.velocity = -6,0
guard.velocity = -4
air.velocity = -6,0
airguard.velocity = -6,0
fall = 0
fall.damage = 0

[State 3200, 2]
type = HitDef
trigger1 = Time = 16
trigger2 = Time = 26
attr = S, HA
animtype  = Hard
damage    = 50
guardflag = MA
pausetime = 5,0
sparkno = S7004
sparkxy = -20,-90
hitsound   = S7000,0
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 10
ground.velocity = -6,0
guard.velocity = -4
air.velocity = -6,0
airguard.velocity = -6,0
fall = 0
fall.damage = 0

[State 3200, 2]
type = HitDef
trigger1 = Time = 21
trigger2 = Time = 36
attr = S, HA
animtype  = Hard
damage    = 50
guardflag = MA
pausetime = 5,0
sparkno = S7004
sparkxy = -20,-30
hitsound   = S7000,0
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 10
ground.velocity = -6,0
guard.velocity = -4
air.velocity = -6,0
airguard.velocity = -6,0
fall = 0
fall.damage = 0

[State 3200, 2]
type = HitDef
trigger1 = Time = 41
attr = S, HA
animtype  = Hard
damage    = 80
guardflag = MA
pausetime = 3,0
sparkno = S7007
sparkxy = -20,-70
hitsound   = S191,1
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -6,-6
guard.velocity = -4
air.velocity = -6,-6
airguard.velocity = -6,0
p2stateno = 1025
fall = 1
fall.damage = 20

[State 3001, EnvColor]
type = EnvColor
trigger1 = Time = 41
value = 143,0,255
time = 10

[State 3000]
type = ChangeState
trigger1 = Time = 42
value = 0
ctrl = 1

;---------------------------------
; Pianeta0
[Statedef 3010]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3010
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 5
x = 40.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 5
x = 0.2

;Esplosione
[State 181, 4]
type = Explod
Trigger1 = Time = 81
anim = 1302
ID = 1302
postype = p1
scale = 2,2
pos = 0,0
sprpriority = 2
removetime = 20
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 91

;---------------------------------
; Pianeta1
[Statedef 3011]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3011
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 8
x = 40.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 8
x = 0.2

;Esplosione
[State 181, 4]
type = Explod
Trigger1 = Time = 106
anim = 1302
ID = 1302
postype = p1
scale = 2,2
pos = 0,0
sprpriority = 2
removetime = 20
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 116

;---------------------------------
; Pianeta2
[Statedef 3012]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3012
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 8
x = 40.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 8
x = 0.2

;Esplosione
[State 181, 4]
type = Explod
Trigger1 = Time = 71
anim = 1302
ID = 1302
postype = p1
scale = 2,2
pos = 0,0
sprpriority = 2
removetime = 20
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 81

;---------------------------------
; Pianeta3
[Statedef 3013]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3013
sprpriority = -3

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 8
x = 40.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 8
x = 0.2

;Esplosione
[State 181, 4]
type = Explod
Trigger1 = Time = 91
anim = 1302
ID = 1302
postype = p1
scale = 2,2
pos = 0,0
sprpriority = 2
removetime = 20
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 101

;---------------------------------
; Pianeta4
[Statedef 3014]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = -0.2,0
anim = 3014
sprpriority = -3

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 8
x = -40.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 8
x = -0.2

;Esplosione
[State 181, 4]
type = Explod
Trigger1 = Time = 86
anim = 1302
ID = 1302
postype = p1
scale = 2,2
pos = 0,0
sprpriority = 2
removetime = 20
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 96

;---------------------------------
; Pianeta5
[Statedef 3015]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = -0.2,0
anim = 3015
sprpriority = -3

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 8
x = -40.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 8
x = -0.2

;Esplosione
[State 181, 4]
type = Explod
Trigger1 = Time = 66
anim = 1302
ID = 1302
postype = p1
scale = 2,2
pos = 0,0
sprpriority = 2
removetime = 20
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 76

;---------------------------------
; Pianeta6
[Statedef 3016]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = -0.2,0
anim = 3016
sprpriority = -3

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 8
x = -40.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 8
x = -0.2

;Esplosione
[State 181, 4]
type = Explod
Trigger1 = Time = 71
anim = 1302
ID = 1302
postype = p1
scale = 2,2
pos = 0,0
sprpriority = 2
removetime = 20
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 81

;---------------------------------
; Pianeta7
[Statedef 3017]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = -0.2,0
anim = 3017
sprpriority = -3

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 8
x = -40.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 8
x = -0.2

;Esplosione
[State 181, 4]
type = Explod
Trigger1 = Time = 96
anim = 1302
ID = 1302
postype = p1
scale = 2,2
pos = 0,0
sprpriority = 2
removetime = 20
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 106

;---------------------------------
; Pianeta8
[Statedef 3018]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = -0.2,0
anim = 3018
sprpriority = -3

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 8
x = -40.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 8
x = -0.2

;Esplosione
[State 181, 4]
type = Explod
Trigger1 = Time = 81
anim = 1302
ID = 1302
postype = p1
scale = 2,2
pos = 0,0
sprpriority = 2
removetime = 20
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 91

;---------------------------------
; Pianeta9
[Statedef 3019]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3017
sprpriority = -3

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 8
x = 40.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 8
x = 0.2

;Esplosione
[State 181, 4]
type = Explod
Trigger1 = Time = 86
anim = 1302
ID = 1302
postype = p1
scale = 2,2
pos = 0,0
sprpriority = 2
removetime = 20
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 96

;---------------------------------
; Pianeta10
[Statedef 3020]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3012
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 8
x = 40.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 8
x = 0.2

;Esplosione
[State 181, 4]
type = Explod
Trigger1 = Time = 71
anim = 1302
ID = 1302
postype = p1
scale = 2,2
pos = 0,0
sprpriority = 2
removetime = 20
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 81

;---------------------------------
; Pianeta11
[Statedef 3021]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3015
sprpriority = 4

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 8
x = 40.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 8
x = 0.2

;Esplosione
[State 181, 4]
type = Explod
Trigger1 = Time = 86
anim = 1302
ID = 1302
postype = p1
scale = 2,2
pos = 0,0
sprpriority = 2
removetime = 20
removeongethit = 1
supermovetime = 200
bindtime = -1
ownpal = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 96

;-----------------------------------------------------------------------------
; Esplosione della Galassia Lvl3
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -3000
ctrl = 0
velset = 0,0
anim = 3100
sprpriority = 2

[State 1000]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3200]
type = SuperPause
trigger1 = Time = 1
time = 350
movetime = 350
anim = -1
darken = 1

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 3100,0
Channel = 0

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 191,0

;Sfondo
[State 3200, 3]
type = Explod
trigger1 = Time = 0
anim = 3103
sprpriority = -4
postype = Back
pos = -5,-5
Scale = 1.2,1.2
removetime = 200
bindtime = -1
ownpal = 1
removeongethit = 1

;Charge piedi
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 0
pos = 1,0
postype = p1
anim = 7010
ID = 131
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
supermovetime = 200
persistent = 1
removeongethit = 1
removetime = 200

;--------------------------
;Effetti Galassie
;--------------------------
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 20
pos = 0,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermovetime = 200
removeongethit = 1
scale = 2, 2
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 25
pos = 0,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermovetime = 200
scale = 1.8, 1.8
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 30
pos = 0,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.6, 1.6
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 35
pos = 0,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.4, 1.4
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 40
pos = 0,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.2, 1.2
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 45
pos = 0,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1, 1
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 50
pos = 0,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.8, 0.8
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 55
pos = 0,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 5

;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 95
pos = 90,-140
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermovetime = 200
removeongethit = 1
scale = 2, 2
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 100
pos = 80,-130
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermovetime = 200
scale = 1.8, 1.8
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 105
pos = 75,-110
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.6, 1.6
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 110
pos = 60,-100
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.4, 1.4
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 115
pos = 45,-90
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.2, 1.2
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 120
pos = 30,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1, 1
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 125
pos = 15,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.8, 0.8
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 130
pos = 0,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 200
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 5

;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 175
pos = -90,0
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermovetime = 300
removeongethit = 1
scale = 2, 2
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 180
pos = -80,-10
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermovetime = 300
scale = 1.8, 1.8
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 185
pos = -75,-30
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.6, 1.6
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 190
pos = -60,-45
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.4, 1.4
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 195
pos = -45,-60
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.2, 1.2
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 200
pos = -30,-75
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1, 1
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 205
pos = -15,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.8, 0.8
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 210
pos = 0,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 5

;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 255
pos = 70,-40
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermovetime = 300
removeongethit = 1
scale = 2, 2
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 260
pos = 60,-40
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
supermovetime = 300
scale = 1.8, 1.8
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 265
pos = 50,-40
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.6, 1.6
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 270
pos = 40,-50
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.4, 1.4
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 275
pos = 30,-60
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1.2, 1.2
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 280
pos = 20,-65
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1, 1
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 285
pos = 10,-70
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.8, 0.8
removetime = 5
;Galassia
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 290
pos = 0,-80
postype = p1
anim = 3102
ID = 3102
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 5
;---------------------

[State 3200]
type = ChangeState
trigger1 = Time = 352
value = 3101
ctrl = 0

;---------------------------
; Colpo
[Statedef 3101]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3101

[State 1000]
type = AssertSpecial
trigger1 = 1
flag = noFG

;Lampo
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 5
pos = 93,-82
postype = p1
anim = 7007
ID = 7007
sprpriority = 4
ignorehitpause = 1
ownpal = 1
supermovetime = 300
bindtime = -1
persistent = 1
removeongethit = 1
scale = 0.6, 0.6
removetime = 199

[State 3101]
type = Projectile
trigger1 = Time = 5
trigger2 = Time = 50
trigger3 = Time = 95
attr = S, HP
projanim = 3110
projhitanim = 3120
projremovetime = 400
projedgebound = 240
projstagebound = 240
offset = -100, -98
velocity = 25,0
damage = 20
animtype = Hard
guardflag = MA
pausetime = 0,0
sparkno = S7000
sparkxy =  30,8
hitsound   = s7000,0
guardsound = s7000,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5
air.velocity = -2.5,0
afterimage.time = -1
afterimage.trans = Add1

[State 3101]
type = Projectile
trigger1 = Time = 15
trigger2 = Time = 60
trigger3 = Time = 100
attr = S, HP
projanim = 3111
projhitanim = 3121
projedgebound = 240
projstagebound = 240
offset = -130, -58
velocity = 25,0
damage = 20
animtype = Hard
guardflag = MA
pausetime = 0,0
sparkno = S7000
sparkxy =  30,-18
hitsound   = s7000,0
guardsound = s7000,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5
air.velocity = -2.5,0
afterimage.time = -1
afterimage.trans = Add1

[State 3101]
type = Projectile
trigger1 = Time = 25
trigger2 = Time = 70
trigger3 = Time = 105
attr = S, HP
projanim = 3112
projhitanim = 3122
projedgebound = 240
projstagebound = 240
offset = -100, -138
velocity = 25,0
damage = 20
animtype = Hard
guardflag = MA
pausetime = 0,0
sparkno = S7000
sparkxy =  30,20
hitsound   = s7000,0
guardsound = s7000,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5
air.velocity = -2.5,0
afterimage.time = -1
afterimage.trans = Add1

[State 3101]
type = Projectile
trigger1 = Time = 35
trigger2 = Time = 80
trigger3 = Time = 110
attr = S, HP
projanim = 3113
projhitanim = 3123
projedgebound = 240
projstagebound = 240
offset = -100, -18
velocity = 25,0
damage = 20
animtype = Hard
guardflag = MA
pausetime = 0,0
sparkno = S7000
sparkxy =  30,-18
hitsound   = s7000,0
guardsound = s7000,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5
air.velocity = -2.5,0
afterimage.time = -1
afterimage.trans = Add1

[State 3101]
type = Projectile
trigger1 = Time = 45
trigger2 = Time = 90
trigger3 = Time = 115
attr = S, HP
projanim = 3114
projhitanim = 3124
projedgebound = 240
projstagebound = 240
offset = -80, -118
velocity = 25,0
damage = 20
animtype = Hard
guardflag = MA
pausetime = 0,0
sparkno = S7000
sparkxy =  30,0
hitsound   = s7000,0
guardsound = s7000,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5
air.velocity = -2.5,0
afterimage.time = -1
afterimage.trans = Add1

[State 3101]
type = Projectile
trigger1 = Time = 55
trigger2 = Time = 10
trigger3 = Time = 120
attr = S, HP
projanim = 3115
projhitanim = 3125
projedgebound = 240
projstagebound = 240
offset = -100, -98
velocity = 25,0
damage = 20
animtype = Hard
guardflag = MA
pausetime = 0,0
sparkno = S7000
sparkxy =  30,-8
hitsound   = s7000,0
guardsound = s7000,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5
air.velocity = -2.5,0
afterimage.time = -1
afterimage.trans = Add1

[State 3101]
type = Projectile
trigger1 = Time = 65
trigger2 = Time = 20
trigger3 = Time = 125
attr = S, HP
projanim = 3116
projhitanim = 3126
projedgebound = 240
projstagebound = 240
offset = -100, -18
velocity = 25,0
damage = 20
animtype = Hard
guardflag = MA
pausetime = 0,0
sparkno = S7000
sparkxy =  30,-18
hitsound   = s7000,0
guardsound = s7000,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5
air.velocity = -2.5,0
afterimage.time = -1
afterimage.trans = Add1

[State 3101]
type = Projectile
trigger1 = Time = 75
trigger2 = Time = 30
trigger3 = Time = 130
attr = S, HP
projanim = 3117
projhitanim = 3127
projedgebound = 240
projstagebound = 240
offset = -80, -58
velocity = 25,0
damage = 20
animtype = Hard
guardflag = MA
pausetime = 0,0
sparkno = S7000
sparkxy =  30,-38
hitsound   = s7000,0
guardsound = s7000,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5
air.velocity = -2.5,0
afterimage.time = -1
afterimage.trans = Add1

[State 3101]
type = Projectile
trigger1 = Time = 85
trigger2 = Time = 40
trigger3 = Time = 135
attr = S, HP
projanim = 3118
projhitanim = 3128
projedgebound = 240
projstagebound = 240
offset = -100, -98
velocity = 25,0
damage = 20
animtype = Hard
guardflag = MA
pausetime = 0,20
sparkno = S7000
sparkxy =  30,-18
hitsound   = s7000,0
guardsound = s7000,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5
air.velocity = -2.5,0
afterimage.time = -1
afterimage.trans = Add1

[State 3101]
type = Projectile
trigger1 = Time = 150
attr = S, HP
projanim = 3115
projhitanim = 3125
projedgebound = 240
projstagebound = 240
projscale = 1.8,1.8
offset = -100, -98
velocity = 25,0
damage = 40
animtype = Hard
guardflag = MA
pausetime = 0,15
sparkno = S7005
sparkxy =  30,18
hitsound   = s7000,0
guardsound = s7000,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5,-4
air.velocity = -2.5,-4
afterimage.time = -1
afterimage.trans = Add1
p2stateno = 1025
fall = 1
fall.damage = 20

[State 3200]
type = ChangeState
trigger1 = Time = 204
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Dimensione Oscura
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3200
sprpriority = 2

[State 1000]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3200]
type = SuperPause
trigger1 = Time = 1
time = 10
movetime = 0
anim = -1
darken = 1

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 3200,0
Channel = 0

[State 3200]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 60
trigger3 = Time = 120
value = 4002,1

;Sfondo 1
[State 3200]
type = Explod
trigger1 = Time = 20
pos = -320,0
anim = 3201
ID = 3201
postype = right
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 85

;Sfondo2
[State 3200, 3]
type = Explod
trigger1 = Time = 20
anim = 3206
sprpriority = -2
postype = Back
pos = -5,-5
Scale = 1.2,1.2
removetime = 85
bindtime = -1
ownpal = 1
removeongethit = 1

;Sfondo3
[State 3200, 3]
type = Explod
trigger1 = Time = 20
anim = 3207
sprpriority = -4
postype = Back
pos = -5,-5
Scale = 1.5,1.5
removetime = 85
bindtime = -1
ownpal = -1
removeongethit = 1

;Charge piedi
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 2
pos = 1,0
postype = p1
anim = 7010
ID = 131
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 35

;Charge Vento
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 2
pos = 0,1
postype = p1
anim = 7020
ID = 170
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = .8, .8
removetime = 35

;Effetto sfera
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 22
pos = -12,-165
postype = p1
anim = 3202
ID = 3202
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = 1, 1
removetime = 82

[State 3200, 12]
type = Explod
trigger1 = Time = 30
pos = -160,-180
anim = 3205
ID = 3205
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = 20
persistent = 0
removeongethit = 1
removetime = 20

[State 3200, 2]
type = HitDef
trigger1 = Time >= 0 && Time < 30
attr = S, HA
animtype  = Hard
damage    = 20
guardflag = MA
pausetime = 6,300
sparkno = -1 ;S7008
sparkxy = -20,-90
hitsound   = S1,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -6,0
guard.velocity = -4
air.velocity = -6,0
airguard.velocity = -6,0
fall = 0
fall.damage = 0
kill = 0

[State 3200, 2]
type = HitDef
triggerall = p2life > 20
trigger1 = Time = 50
attr = S, HA
animtype  = Hard
damage    = 0
guardflag = MA
pausetime = 3,0
sparkno = S7008
sparkxy = -20,-90
hitsound   = S1,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -6,0
guard.velocity = -4
air.velocity = -6,0
airguard.velocity = -6,0
p2stateno = 3202
fall = 1
fall.damage = 20

[State 3200, 2]
type = HitDef
triggerall = p2life <= 20
trigger1 = Time = 50
attr = S, HA
animtype  = Hard
damage    = 0
guardflag = MA
pausetime = 3,0
sparkno = S7008
sparkxy = -20,-90
hitsound   = S1,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -6,0
guard.velocity = -4
air.velocity = -6,0
airguard.velocity = -6,0
p2stateno = 3203
fall = 1
fall.damage = 20

[State 3200]
type = ChangeState
triggerall = p2stateno != 3202
triggerall = p2stateno != 3203
trigger1 = Time = 104
value = 0
ctrl = 1

[State 3200]
type = ChangeState
trigger2 = p2stateno = 3202
trigger1 = p2stateno = 3203
triggerall = Time = 104
value = 3201
ctrl = 0

;---------------------------------------------------------------------------
; Dimensione Oscura P1
[Statedef 3201]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3203
sprpriority = 2

[State 3200]
type = SuperPause
trigger1 = Time = 1
time = 160
movetime = 160
anim = -1
darken = 1

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 3200,1
Channel = 0

;Effetto sfera
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 160
pos = 0,-90
anim = 3202
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 1
removeongethit = 1
removetime = 24

[State 3200]
type = PlaySnd
trigger1 = Time = 160
value = 180,1

[State 3200]
type = ChangeState
trigger1 = Time = 160
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Dimensione Oscura P2
[Statedef 3202]
type    = S
movetype= H
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3200]
type = ChangeAnim2
trigger1 = Time = 0
value = 3204

[State 3200]
type = Posadd
trigger1 = Time = 20
Y = -20

[State 3200]
type = Selfstate
trigger1 = Time = 64
value = 5050
ctrl = 0

;---------------------------------------------------------------------------
; Dimensione Oscura P2-2
[Statedef 3203]
type    = A
movetype= H
physics = N
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
sprpriority = 2

[State 3200]
type = ChangeAnim2
trigger1 = Time = 0
value = 3204

[State 3200]
type = Veladd
trigger1 = Time = 20
Y = 2000

[State 3200]
type = Lifeadd
trigger1 = Time = 60
Value = -200

[State 3200]
type = Selfstate
trigger1 = Time = 164
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
; Genromaken
[Statedef 3300]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3300
sprpriority = 1

[State 3200]
type = SuperPause
trigger1 = Time = 1
time = 54
movetime = 54
anim = -1
darken = 1

[State 3200]
type = Velset
trigger1 = Time >= 56
X = 20

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 3300,0
Channel = 0

[State 3200]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 60
trigger3 = Time = 120
value = 4002,1

;Charge piedi
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 2
pos = 1,0
postype = p1
anim = 7010
ID = 131
sprpriority = -3
ignorehitpause = 1
supermovetime = 54
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 48

;Charge Vento
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 2
pos = 0,1
postype = p1
anim = 7020
ID = 170
sprpriority = 4
ignorehitpause = 1
supermovetime = 54
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = .8, .8
removetime = 48

[State 3200, 2]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage    = 247
guardflag = MA
pausetime = 0,20
getpower = 0
sparkno = S7008
sparkxy = -20,-90
hitsound   = S1,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -6,0
guard.velocity = -4
air.velocity = -6,0
airguard.velocity = -6,0
p1stateno = 3302
p2stateno = 3310
fall = 0
Kill = 0
fall.damage = 0

[State 3300, 1]
type = AfterImage
trigger1 = Time = 56
time = 20
Trans = Add1

[State 3200]
type = ChangeState
trigger1 = Animtime = 0
value = 3301
ctrl = 0

;--------------------------
; Genromaken Finish mancato
[Statedef 3301]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3301
sprpriority = 1

[State 3200]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;--------------------------
; Genromaken Colpito p1
[Statedef 3302]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3302
sprpriority = 1

[State 3300, 1]
type = AfterImage
trigger1 = Time = 41
time = 19
Trans = Add1

[State 3200]
type = Posadd
trigger1 = Time = 1
X = p2bodydist X + 10

[State 3300, PlayerPush]
type = PlayerPush
trigger1 = Time <= 90
value = 0

[State 3200]
type = PlaySnd
trigger1 = Time = 70
value = 3300,1
Channel = 0

[State 3200]
type = SuperPause
trigger1 = Time = 1
time = 60
movetime = 40
anim = -1
darken = 1

;Effetto Genromaken
[State 3200, POLVERE]
type = Explod
triggerall = p2name != "Cassios" && p2name != "Docrates" && p2name != "Geki" && p2name != "Aldebaran"
trigger1 = Time = 0
pos = 0,-110
postype = p1
anim = 3309
ID = 170
sprpriority = 4
ignorehitpause = 1
supermovetime = 54
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 44

;Effetto Genromaken
[State 3200, POLVERE]
type = Explod
triggerall = Time = 0
trigger1 = p2name = "Cassios"
trigger2 = p2name = "Docrates"
pos = 20,-170
postype = p1
anim = 3309
ID = 170
sprpriority = 4
ignorehitpause = 1
supermovetime = 54
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 44

;Effetto Genromaken
[State 3200, POLVERE]
type = Explod
triggerall = Time = 0
trigger1 = p2name = "Aldebaran"
pos = 20,-140
postype = p1
anim = 3309
ID = 170
sprpriority = 4
ignorehitpause = 1
supermovetime = 54
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 44

;Effetto Genromaken
[State 3200, POLVERE]
type = Explod
triggerall = Time = 0
trigger1 = p2name = "Geki"
pos = 0,-140
postype = p1
anim = 3309
ID = 170
sprpriority = 4
ignorehitpause = 1
supermovetime = 54
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 44

[State 3200]
type = Velset
trigger1 = Time = 41
X = 40

[State 3200]
type = Velset
trigger1 = Time = 60
X = 0

[State 0, Turn]
type = Turn
trigger1 = Time = 141

;Passi
[State 3200]
type = PlaySnd
triggerall = p2bodydist X > 40
trigger1 = Time = 266
trigger2 = Time = 306
trigger3 = Time = 346
value = 3, 0
[State 3200]
type = PlaySnd
triggerall = p2bodydist X > 40
trigger1 = Time = 286
trigger2 = Time = 326
trigger3 = Time = 366
value = 3, 1

;Random Combo
[State 3200]
type = ChangeState
triggerall = random = [0,333]
triggerall = p2bodydist X <= 40
trigger1 = time >= 275
value = 3303
ctrl = 0
[State 3200]
type = ChangeState
triggerall = random = [334,666]
triggerall = p2bodydist X <= 40
trigger1 = time >= 275
value = 3304
ctrl = 0
[State 3200]
type = ChangeState
triggerall = random = [667,999]
triggerall = p2bodydist X <= 40
trigger1 = time >= 275
value = 3305
ctrl = 0

[State 3200]
type = ChangeState
trigger1 = time = 600
value = 0
ctrl = 1

;--------------------------
; Genromaken Combo1 - Pugni
[Statedef 3303]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3303
sprpriority = 1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = Animelem = 6
attr = S, HA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 3, 10
sparkno = S7000
sparkxy = -10, -86
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -1
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = Animelem = 8
attr = S, HA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 3,10
sparkno = S7001
sparkxy = -10,-90
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -1
air.velocity = -2.5,-4

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 10
attr = S, HA
animtype  = Medium
damage    = 40
guardflag = MA
pausetime = 0,10
sparkno = S7002
sparkxy = -10,-90
hitsound   = S1,6
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -1,-6
air.velocity = -2.5,-4
Fall = 1
Fall.recover = 0

[State 3200]
type = ChangeState
triggerall = p2life >= 1
trigger1 = Animtime = 0
value = 1000
ctrl = 0

[State 3200]
type = ChangeState
triggerall = p2life <= 0
trigger1 = Animtime = 0
value = 0
ctrl = 1

;--------------------------
; Genromaken Combo2 - Pianeta
[Statedef 3304]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3304
sprpriority = 1

[State 250, 1]
type = PlaySnd
trigger1 = Animelem = 4
value = 7000,0

[State 250, 1]
type = PlaySnd
trigger1 = Animelem = 1
value = 1100,0
channel = 0

[State 250, 1]
type = PlaySnd
trigger1 = Animelem = 6
value = 900,0
channel = 0

;Esplosione
[State 193, 3]
type = Explod
trigger1 = Time = 0
anim = 7009
sprpriority = 2
postype = p1
pos = 0,-80
removetime = 29
bindtime = -1
ownpal = 1
removeongethit = 1

;Charge piedi
[State 193, POLVERE]
type = Explod
trigger1 = Animelem = 1
pos = 1,0
postype = p1
anim = 7010
ID = 131
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 35

;Charge Vento
[State 193, POLVERE]
type = Explod
trigger1 = Animelem = 1
pos = 0,1
postype = p1
anim = 7020
ID = 170
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = .8, .8
removetime = 35

[State 250, 2]
type = HitDef
trigger1 = Animelem = 4
attr = S, HA
animtype  = Hard
damage    = 98
guardflag = MA
pausetime = 3,6
sparkno = S7007
sparkxy = -20,-90
hitsound   = S1,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -6,-8
guard.velocity = -4
air.velocity = -6,-8
airguard.velocity = -6,-8
fall = 1
fall.damage = 10
fall.recover = 0

[State 3101]
type = Projectile
trigger1 = Animelem = 9
attr = S, HP
projanim = 3115
projhitanim = 3125
projedgebound = 240
projstagebound = 240
projscale = 1,1
offset = -100, -98
velocity = 25,0
damage = 100
animtype = Hard
guardflag = MA
pausetime = 0,15
sparkno = S7005
sparkxy =  30,18
hitsound   = s7000,0
guardsound = s7000,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5,-4
air.velocity = -2.5,-4
afterimage.time = -1
afterimage.trans = Add1
p2stateno = 1025
fall = 1
fall.damage = 20

[State 3200]
type = ChangeState
trigger1 = time = 75
value = 0
ctrl = 1

;--------------------------
; Genromaken Combo3 - Calci
[Statedef 3305]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3305
sprpriority = 1

[State 250, 1]
type = PlaySnd
trigger1 = Animelem = 1
value = 900,0
channel = 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 20
sparkno = S7000
sparkxy = -10, -86
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -1
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 16
attr = S, HA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 4, 20
sparkno = S7000
sparkxy = -10, -36
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -1
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = Animelem = 8
attr = S, HA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 4,40
sparkno = S7001
sparkxy = -10,-90
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -1
air.velocity = -2.5,-4

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 23
attr = S, HA
animtype  = Up
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = S7002
sparkxy = -30,-120
hitsound   = S1,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -13,-5
guard.velocity = -4
air.velocity = -3,-12
airguard.velocity = -6,-4
p2stateno = 1025
fall = 1
fall.damage = 10

[State 3200]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;--------------------------
; Genromaken p2
[Statedef 3310]
type    = S
movetype= H
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 5000
sprpriority = 1

[State 0, Turn]
type = Posset
trigger1 = Time = 0
Y = 0

[State 0, Turn]
type = Posadd
triggerall = backedgedist <= 5
trigger1 = Time = 15
X = 50

[State 0, Turn]
type = Turn
trigger1 = Time = 232

[State 3300, 1]
type = AfterImage
trigger1 = Time = 0
time = 270
Trans = Add1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 30
value = 5300

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 232
value = 20

[State 0, VelSet]
type = VelSet
triggerall = p2bodydist X > 40
trigger1 = Time >= 232
x = 2

[State 0, VelSet]
type = VelSet
triggerall = p2bodydist X <= 40
trigger1 = Time >= 232
x = 0

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = p2bodydist X <= 40
trigger1 = Time >= 232
value = 0

[State 3200]
type = ChangeState
trigger1 = Time = 600
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; KonChoKen
[Statedef 3400]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3400
sprpriority = 1

[State 193, 3]
type = Explod
trigger1 = Time = 0
anim = 7008
ID = 7008
sprpriority = 2
postype = p1
pos = -10,-85
removetime = 24
Supermovetime = 25
bindtime = 1
ownpal = 1

[State 3200]
type = SuperPause
trigger1 = Time = 3
time = 25
movetime = 25
anim = -1
darken = 1

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 3400,0
Channel = 0

;KonChoKen
[State 193, 3]
type = Explod
trigger1 = Animelem = 4
anim = 3401
ID = 10010
sprpriority = 5
postype = Back
pos = 0,0
removetime = 50
bindtime = -1
ownpal = 1
removeongethit = 1
[State 193, 3]
type = Explod
trigger1 = Animelem = 4
anim = 3401
ID = 10010
sprpriority = 5
postype = Back
pos = 0,1
removetime = 50
bindtime = -1
ownpal = 1
removeongethit = 1

[State 250, 2]
type = HitDef
triggerall = Time <= 50
trigger1 = Time%6 = 0
attr = S, HA
animtype  = Hard
damage    = 20
guardflag = MA
pausetime = 3,20
sparkno = S7004
sparkxy = -20,-90
hitsound   = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -3,0
guard.velocity = -4
air.velocity = -3,0
airguard.velocity = -6,-4
fall = 0

[State 250, 2]
type = HitDef
triggerall = Time <= 50
trigger1 = Time%6 = 3
attr = S, HA
animtype  = Hard
damage    = 16
guardflag = MA
pausetime = 3,20
sparkno = S7004
sparkxy = -20,-60
hitsound   = S1,4
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -3,0
guard.velocity = -4
air.velocity = -3,0
airguard.velocity = -6,-4

[State 250, 2]
type = HitDef
trigger1 = time = 55
attr = S, HA
animtype  = Hard
damage    = 62
guardflag = MA
pausetime = 3,5
sparkno = S7004
sparkxy = -20,-60
hitsound   = S1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -7,-6
guard.velocity = -4
air.velocity = -7,-4
airguard.velocity = -6,-4
fall = 1
fall.damage = 10
fall.recover = 0

[State 3200]
type = ChangeState
trigger1 = Time = 80
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Raggio Galattico
[Statedef 3500]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3500
sprpriority = 1

[State 3200]
type = SuperPause
trigger1 = Animelem = 2
time = 65
movetime = 65
anim = -1
darken = 1

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 3000,2
Channel = 0

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 3500,1

;Raggio
[State 193, 3]
type = Explod
trigger1 = Animelem = 1
anim = 3501
ID = 10010
sprpriority = 5
postype = p1
pos = 10,-160
removetime = 65
supermovetime = 65
bindtime = -1
ownpal = 1
removeongethit = 1

[State 3200]
type = ChangeState
trigger1 = Time = 65
value = 3501
ctrl = 0

;----------------------
; Raggio Galattico
[Statedef 3501]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3502
sprpriority = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = Time = 27
time = 63
freq = 60
ampl = -4
phase = 90

;Buca
[State 193, 3]
type = Explod
triggerall = p2bodydist X <= 100
trigger1 = Time = 20
anim = 3506
ID = 100100
sprpriority = -5
postype = p1
pos = 80,0
removetime = 410
bindtime = 1
ownpal = 1
[State 193, 3]
type = Explod
triggerall = p2bodydist X <= 200  && p2bodydist X > 100
trigger1 = Time = 20
anim = 3506
ID = 100100
sprpriority = -5
postype = p1
pos = 150,0
removetime = 410
bindtime = 1
ownpal = 1
[State 193, 3]
type = Explod
triggerall = p2bodydist X > 200
trigger1 = Time = 20
anim = 3506
ID = 100100
sprpriority = -5
postype = p1
pos = 220,0
removetime = 410
bindtime = 1
ownpal = 1

;Polvere SX
[State 193, 3]
type = Explod
triggerall = p2bodydist X <= 100
trigger1 = Time = 20
anim = 7089
ID = 100100
sprpriority = 3
postype = p1
pos = 80,7
removetime = 22
bindtime = 1
ownpal = 1
[State 193, 3]
type = Explod
triggerall = p2bodydist X <= 200  && p2bodydist X > 100
trigger1 = Time = 20
anim = 7089
ID = 100100
sprpriority = 3
postype = p1
pos = 150,7
removetime = 22
bindtime = 1
ownpal = 1
[State 193, 3]
type = Explod
triggerall = p2bodydist X > 200
trigger1 = Time = 20
anim = 7089
ID = 100100
sprpriority = 3
postype = p1
pos = 220,7
removetime = 22
bindtime = 1
ownpal = 1

;Polvere DX
[State 193, 3]
type = Explod
triggerall = p2bodydist X <= 100
trigger1 = Time = 20
anim = 70891
ID = 100100
sprpriority = 3
postype = p1
pos = 80,7
removetime = 22
bindtime = 1
ownpal = 1
[State 193, 3]
type = Explod
triggerall = p2bodydist X <= 200  && p2bodydist X > 100
trigger1 = Time = 20
anim = 70891
ID = 100100
sprpriority = 3
postype = p1
pos = 150,7
removetime = 22
bindtime = 1
ownpal = 1
[State 193, 3]
type = Explod
triggerall = p2bodydist X > 200
trigger1 = Time = 20
anim = 70891
ID = 100100
sprpriority = 3
postype = p1
pos = 220,7
removetime = 22
bindtime = 1
ownpal = 1

[State 3200]
type = PlaySnd
trigger1 = Time = 2
value = 7000,0

[State 3101]
type = Projectile
triggerall = p2bodydist X <= 100
trigger1 = Time = 1
attr = S, HP
projanim = 3503
projremovetime = 63
projhitanim = 3504
projscale = 1.5,1.5
offset = 80, 0
velocity = 0,0
damage = 180
animtype = Hard
guardflag = MA
pausetime = 0,25
sparkno = S7003
sparkxy =  30,-58
hitsound   = s3500,2
guardsound = s3500,2
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5,-1
air.velocity = -2.5,4
fall = 1
fall.damage = 20

[State 3101]
type = Projectile
triggerall = p2bodydist X <= 200  && p2bodydist X > 100
trigger1 = Time = 1
attr = S, HP
projanim = 3503
projremovetime = 63
projhitanim = 3504
projscale = 1.5,1.5
offset = 150, 0
velocity = 0,0
damage = 180
animtype = Hard
guardflag = MA
pausetime = 0,25
sparkno = S7003
sparkxy =  30,-58
hitsound   = s3500,2
guardsound = s3500,2
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5,-1
air.velocity = -2.5,4
fall = 1
fall.damage = 20

[State 3101]
type = Projectile
triggerall = p2bodydist X > 200
trigger1 = Time = 1
attr = S, HP
projanim = 3503
projremovetime = 63
projhitanim = 3504
projscale = 1.5,1.5
offset = 220, 0
velocity = 0,0
damage = 180
animtype = Hard
guardflag = MA
pausetime = 0,25
sparkno = S7003
sparkxy =  30,-58
hitsound   = s3500,2
guardsound = s3500,2
ground.type = Low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -5,-1
air.velocity = -2.5,4
fall = 1
fall.damage = 20

[State 3200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Dimensione Oscura Fatality Intro
[Statedef 3600]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3600
sprpriority = 2

[State 3200]
type = SuperPause
trigger1 = Time = 1
time = 348
movetime = 348
anim = -1
darken = 1

;;Effetto sfera
;[State 3200, POLVERE]
;type = Explod
;trigger1 = Time = 2
;pos = 0,-90
;anim = 3202
;postype = p2
;sprpriority = 4
;ignorehitpause = 1
;ownpal = 1
;bindtime = 1
;persistent = 1
;removeongethit = 1
;removetime = 24

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 3600,0
Channel = 0

;[State 3200]
;type = PlaySnd
;trigger1 = Time = 5
;value = 180,1

[State 3200]
type = ChangeState
trigger1 = Time = 348
value = 3601
ctrl = 0

;---------------------------------------------------------------------------
; Dimensione Oscura Fatality
[Statedef 3601]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= -3000
ctrl = 0
velset = 0,0
anim = 3601
sprpriority = 2

[State 1000]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3200]
type = SuperPause
trigger1 = Time = 1
time = 10
movetime = 0
anim = -1
darken = 1

[State 3200]
type = PlaySnd
trigger1 = Time = 0
value = 3200,0
Channel = 0

[State 3200]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 60
trigger3 = Time = 120
value = 4002,1

;Sfondo 1-1
[State 3200, 3]
type = Explod
trigger1 = Time = 0
anim = 3603
ID = 3600
sprpriority = -2
postype = Back
pos = 0,168
Scale = 1,1
removetime = -1;224
bindtime = -1
supermove = 1
ownpal = 1
removeongethit = 1

;Sfondo 1-2
[State 3200, 3]
type = Explod
trigger1 = Time = 0
anim = 3604
ID = 3600
sprpriority = -2
postype = Back
pos = 0,0
Scale = 1,1
removetime = -1;224
bindtime = -1
supermove = 1
ownpal = 1
removeongethit = 1

;Sfondo2
[State 3200, 3]
type = Explod
trigger1 = Time = 0
anim = 3605
ID = 3600
sprpriority = -4
postype = Back
pos = 0,0
Scale = 1,1
removetime = -1;224
bindtime = -1
supermove = 1
ownpal = -1
removeongethit = 1

;Charge piedi
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 2
pos = 1,0
postype = p1
anim = 7010
ID = 131
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
removetime = 35

;Charge Vento
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 2
pos = 0,1
postype = p1
anim = 7020
ID = 170
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = .8, .8
removetime = 35

;Pulsazione
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 6
pos = -13,-170
anim = 3202
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = 1
persistent = 1
removeongethit = 1
removetime = 214

;Colpo fatale
[State 3200, POLVERE]
type = Explod
trigger1 = Time = 110
postype = p2
pos = 0,-80
anim = 7008
ID = 170
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
;scale = .8, .8
removetime = 24

[State 3200]
type = PlaySnd
trigger1 = Time = 110
value = 3600,1

;Pianeta0
[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta00"
ID = 3610
stateno = 3610
size.xscale = 0.5
size.yscale = 0.5
pos = 10,-20
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

;Pianeta1
[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta01"
ID = 3611
stateno = 3611
size.xscale = 0.5
size.yscale = 0.5
pos = 280,-10
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

;Pianeta2
[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta02"
ID = 3612
stateno = 3612
size.xscale = 0.5
size.yscale = 0.5
pos = 160, -5
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

;Pianeta3
[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta03"
ID = 3613
stateno = 3613
size.xscale = 0.5
size.yscale = 0.5
pos = 90,-240
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

;Pianeta4
[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta04"
ID = 3614
stateno = 3614
size.xscale = 0.5
size.yscale = 0.5
pos = 250,-190
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

;Pianeta5
[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta05"
ID = 3615
stateno = 3615
size.xscale = 0.5
size.yscale = 0.5
pos = 100,-130
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

;Pianeta6
[State 3000, Helper]
type = Helper
trigger1 = Time = 0
name = "pianeta06"
ID = 3616
stateno = 3616
size.xscale = 0.5
size.yscale = 0.5
pos = 320,-120
postype = Back
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 200

[State 3200, 2]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage    = 0
pausetime = 6,300
sparkno = -1;S7008
sparkxy = -20,-90
hitsound   = S3600,1
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 4
ground.velocity = -6,0
guard.velocity = -4
air.velocity = -6,0
airguard.velocity = -6,0
fall = 0
fall.damage = 0
kill = 0
p2stateno = 3602

[State -3, VarSet]
type = VarSet
trigger1 = Time = 220
v = 36
value = 1

[State 3200]
type = ChangeState
triggerall = p2stateno != 3602
trigger1 = Time = 224
value = 0
ctrl = 1

[State 3200]
type = ChangeState
trigger1 = p2stateno = 3602
triggerall = Time = 224
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Dimensione Oscura P2-2
[Statedef 3602]
type    = A
movetype= H
physics = N
juggle  = 5
poweradd= 0
ctrl = 0
velset = 0,0
anim = 130
sprpriority = 2

[State 3200]
type = Velset
trigger1 = Time < 120
X = 0.1
Y = -0.1

[State 3200]
type = ChangeAnim2
trigger1 = Time = 120
value = 3204

[State 3200]
type = Veladd
trigger1 = Time = 140
Y = 2000

[State 3200]
type = Lifeadd
trigger1 = Time = 180
Value = -600

[State 3200]
type = Selfstate
trigger1 = Time = 284
value = 5150
ctrl = 0

;---------------------------------
; Pianeta0-0
[Statedef 3610]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3020
sprpriority = -1
;scale = 0.1,0.1

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 120
x = 0.2
y = -0.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 120
x = 0
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 180;225

;---------------------------------
; Pianeta0-1
[Statedef 3611]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3021
sprpriority = -1
;scale = 0.1,0.1

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0  && Time < 120
x = -0.2
y = -0.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 120
x = 0
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 180;225

;---------------------------------
; Pianeta0-2
[Statedef 3612]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3022
sprpriority = -1
;scale = 0.1,0.1

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 120
x = 0
y = -0.1

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 120
x = 0
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 180;225

;---------------------------------
; Pianeta0-3
[Statedef 3613]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3023
sprpriority = -1
;scale = 0.1,0.1

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 120
x = 0.1
y = 0.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 120
x = 0
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 180;225

;---------------------------------
; Pianeta0-4
[Statedef 3614]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3024
sprpriority = -1
;scale = 0.1,0.1

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 120
x = -0.1
y = 0.2

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 120
x = 0
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 180;225

;---------------------------------
; Pianeta0-5
[Statedef 3615]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3025
sprpriority = -1
;scale = 0.1,0.1

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 120
x = 0.1
y = 0.1

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 120
x = 0
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 180;225

;---------------------------------
; Pianeta0-6
[Statedef 3616]
type    = S
movetype= A
physics = S
juggle  = 5
ctrl = 0
velset = 0.2,0
anim = 3026
sprpriority = -1
;scale = 0.1,0.1

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 0 && Time < 120
x = -0.1
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = Time >= 120
x = 0
y = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 180;225

;----------------------------------------------------------
; Urlo di Atena
[Statedef 3700]
type = S
movetype = A
physics = S
juggle = 5
poweradd = -3000
ctrl = 0
velset = 0,0
anim = 3700
sprpriority = 2

[State 3700, 1]
type = SuperPause
trigger1 = Time = 0
time = 200
anim = -1
darken = 0
movetime = 200

[State 3700, 2]
type = PlaySnd
trigger1 = Time = 0
value = 4002,1

[State 3700, cosmo]		
type = Explod
trigger1 = Time = 0
anim = 3702
ID = 3700
sprpriority = -2
postype = p1
pos = 0,0
scale = 1,1
bindtime = 1
supermove = 1
ownpal = 1

[State 3700,3];statue athena
type = Explod
trigger1 = time = 40
anim = 3703
ID = 3703
pos = 0,0
postype = p1
scale = 0.5,0.5
sprpriority = -3
supermove = 1
removetime = 550
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3700,3];sfondo galaxy
type = Explod
trigger1 = time = 0
anim = 3104
ID = 3104
pos = 0,0
postype = back
scale = 1,1
sprpriority = -4
supermove = 1
removetime = 570
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3700,4]
type = PlaySnd
trigger1 = Time = 0
value = 2110,1

[State 3700,4]
type = PlaySnd
trigger1 = Time = 50
value = 2110,2
channel = 0

[State 3700,5]
type = PlaySnd
trigger1 = Time = 220
value = 2110,3
channel = 1
loop = 1

[State 1700, envshake]
type = EnvShake
trigger1 = Time = 220
time = 300

[State 3700, rayo animacion]
type = Explod
trigger1 = time = 220
anim = 8011
sprpriority = 1
postype = p1
pos = -30,-30
scale= 1.5,1
bindtime = 1
supermove = 1
ownpal = 1
removetime = 320

[State 3700, 1]
type = Projectile
trigger1 = Time = 220
attr = A, SP
ignorehitpause = 1
projanim = 8014
projhitanim = 8014
offset = 0,0
velocity = 15,0
damage = 0
animtype = Hard
pausetime = 0,320
sparkno = -1
guard.sparkno = -1
hitsound   = S240,0
guardsound = S1000,2
ground.type = low
ground.slidetime = 320
ground.hittime  = 320
ground.velocity = 0
air.velocity = 0,0
palfx.time = 320
palfx.mul = 127,127,127
palfx.sinadd = 96,128,160,16
palfx.add = 255,255,255

[State 3700, Fatal blow]
type = HitDef
trigger1 = Time >= 520
attr = A, SA
damage = 999999999
animtype = Hard
hitflag = MAF
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
ground.type = low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
air.velocity = 0,0
p2stateno = 3701

[State 3700, WinPose]
type = VarSet
trigger1 = p2life <= 0
v = 37
value = 1

[State 3700, Boom]
type = PlaySnd
trigger1 = Time = 520
value = 7000,0

[State 3700, Brilla]
type = AllPalFX
trigger1 = Time = 520
time = 10
add = 255,255,255

[State 3700,6]
type = StopSnd
trigger1 = Time = 540
channel = 1

[State 3700, 3]
type = ChangeState
trigger1 = Time = 540
value = 0
ctrl = 0

;
[Statedef 3701]
type    = S
movetype= H
physics = N
velset = 0,0

[State 3701]
type = ChangeAnim2
trigger1 = Time = 0
value = 3701

[State 3200]
type = Veladd
trigger1 = Time = 0
Y = 2000

[State 3200]
type = Selfstate
trigger1 = Time = 100
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------

[State -2, Get P2 Distance]
type = VarSet
trigger1 = p2dist x != 0
var(11) = floor(p2dist x)

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

[State -2]
type = RemoveExplod    ; borrar
triggerall = NumExplod(2) >= 1 ;si en la pantalla el nùmero de explod con id=2 es por lo menos = 1 entonces lo borra
trigger1 = StateNo != 0 ;para que lo borre cuanto el estado sea diferente del 0 que es la stand ;trigger1 = 1 ; indica siempre
trigger2 = Anim = 5
ID = 2

[State -2]
type = RemoveExplod
triggerall = NumExplod(3) >= 1
trigger1 = StateNo != 0
trigger2 = Anim = 5
ID = 3

;---------------------------------------------------------------------------
; Casual Sounds
;---------------------------------------------------------------------------

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
value = 5000,1

[State -2]
type = PlaySnd
trigger1 = random < 750
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 5000,2

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Combo 
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------



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
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 210) && (movecontact) 
value = 220

;combo pugni 
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
value = 1000

;combo pugni 
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
value = 1100

;combo pugni-calci 
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
value = 250

;combo calci 
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

;calci combo
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

;calci combo
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
value = 220

;calci combo
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
trigger1 = (stateno = 230) && (prevstateno = 240) && (movecontact) 
value = 1100

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;3 pugni abbasato
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

;3 calci abbasato
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

;combo abbasato 1
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400) 
trigger1 = (movecontact)
value = 440
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 440) && (prevstateno = 400) && (movecontact) 
value = 420

;combo abbasato 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 410
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 430) && (movecontact) 
value = 450

;combo calci abbasato 1
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
trigger1 = (stateno = 450) && (prevstateno = 430) && (movecontact) 
value = 440

;combo calci abbasato 2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 440) 
trigger1 = (movecontact)
value = 450
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 450) && (prevstateno = 440) && (movecontact) 
value = 430
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;3 pugni in salto
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

;3 pugni in salto
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

;3 pugni in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 610
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 600) && (movecontact) 
value = 600

;3 CALCI in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 640
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 640) && (prevstateno = 630) && (movecontact) 
value = 650

;3 CALCI in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 650
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 650) && (prevstateno = 640) && (movecontact) 
value = 630

;3 CALCI in salto
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 650) 
trigger1 = (movecontact)
value = 630
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 630) && (prevstateno = 650) && (movecontact) 
value = 640

;---------------------------------------------------------------------------
;Special Moves
;---------------------------------------------------------------------------

;carica cosmo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 99])
trigger1 = (P2bodydist X >= 150) && (power < 3000) && (prevstateno != 5120)
trigger1 = var(8) = 0
value = 900

;MillePugni
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [100, 149])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120)
value = 1000

;Fireball debole
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [150, 199])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120)
value = 1400

;Fireball forte
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [200, 249])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120)
value = 1200

;Fireball aerea
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [250, 299])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120) && (Pos Y <= -80)
value = 1300

;Fireball gemella
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [300, 349])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120)
value = 1500

;Esplosione di Cosmo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [350, 399])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 1100

;Presa
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [400, 449])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120)
value = 800

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [450,499])
value = 195

;---------------------------------------------------------------------------
;Hyper Moves
;---------------------------------------------------------------------------

;Another Dimension
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [500, 549])
trigger1 = (P2bodydist X >= 100) && (power >= 1000) && (power < 3000) && (prevstateno != 5120)
value = 3200

;KonChoKen
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [550, 599])
trigger1 = (P2bodydist X >= 120) && (power >= 1000) && (power < 3000) && (prevstateno != 5120)
value = 3400

;Raggio Galattico
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [600, 649])
trigger1 = (P2bodydist X >= 150) && (power >= 1000) && (power < 3000) && (prevstateno != 5120)
value = 3500

;GenRoMaKen
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [650, 699])
trigger1 = (P2bodydist X >= 40) && (power >= 2000) && (prevstateno != 5120)
value = 3300

;Galaxian Explosion Lvl2
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [700, 749])
trigger1 = (P2bodydist X >= 100) && (power >= 2000) && (prevstateno != 5120)
value = 3000

;Galaxian Explosion Lvl3
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [750, 799])
trigger1 = (P2bodydist X >= 150) && (power >= 3000) && (prevstateno != 5120)
value = 3100

;Another Dimension Fatality
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [800, 849])
trigger1 = (P2bodydist X >= 150) && (power >= 3000) && (p2life <=250) && (prevstateno != 5120)
value = 3600

;Athena exclamation
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [850, 899])
trigger1 = (P2bodydist X >= 150) && (power >= 3000) && (p2life <=250) && (prevstateno != 5120)
value = 3700

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

[State -3, VarSet]
type = VarSet
triggerall = p2life > 0
trigger1 = stateno != 3601
v = 36
value = 0

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

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = Power < 3000
trigger2 = stateno != 0
trigger3 = anim != 0
ID = 4

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = p2life > 0
trigger1 = stateno != 3601
ID = 3600

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
trigger1 = animelem = 7
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 7
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
trigger1 = animelem = 7
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 7
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
type = AssertSpecial
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = 5150
trigger1 = time = [0,450]
flag = roundnotover
flag2 = nomusic

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = 5150
trigger1 = time = 128
value = 5150, 1

[State -3, Run Back Land]
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = 5150
trigger1 = time = 193
value = 5150, 0

[State -3, Run Back Land]
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = 5150
trigger1 = time = 193
value = 5150, 2

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9