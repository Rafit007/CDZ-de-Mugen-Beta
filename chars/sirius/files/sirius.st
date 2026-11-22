; CANIS MAIOR SIRIUS ST File by Tux, Squall y SeiyaDivin

;---------------------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = AssertSpecial
trigger1 = time = [0,240]
flag = roundnotover

;Dio (jump in)
[State 170, 1]
type = Explod
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
trigger1 = time = 0
anim = 1813
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 32
removetime = 32
ownpal = 1
shadow = 5,5,5

[State 170, 1]
type = PlaySnd
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
trigger1 = time = 32
value = 2, 3

;Dio (defeat)
[State 170, 1]
type = Explod
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
trigger1 = time = 33
anim = 1816
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 550
removetime = 550
ownpal = 1
shadow = 5,5,5

;Algethi (jump in)
[State 170, 1]
type = Explod
triggerall = p2name != "algethi"
triggerall = p3name != "algethi"
triggerall = p4name != "algethi"
triggerall = p2name != "algethiS"
triggerall = p3name != "algethiS"
triggerall = p4name != "algethiS"
triggerall = p2name != "algethiH"
triggerall = p3name != "algethiH"
triggerall = p4name != "algethiH"
trigger1 = time = 20  
anim = 1823
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 32
removetime = 32
ownpal = 1
shadow = 5,5,5

[State 170, 1]
type = PlaySnd
triggerall = p2name != "algethi"
triggerall = p3name != "algethi"
triggerall = p4name != "algethi"
triggerall = p2name != "algethiS"
triggerall = p3name != "algethiS"
triggerall = p4name != "algethiS"
triggerall = p2name != "algethiH"
triggerall = p3name != "algethiH"
triggerall = p4name != "algethiH"
trigger1 = time = 52
value = 2, 4

;Algethi (defeat)
[State 170, 1]
type = Explod
triggerall = p2name != "algethi"
triggerall = p3name != "algethi"
triggerall = p4name != "algethi"
triggerall = p2name != "algethiS"
triggerall = p3name != "algethiS"
triggerall = p4name != "algethiS"
triggerall = p2name != "algethiH"
triggerall = p3name != "algethiH"
triggerall = p4name != "algethiH"
trigger1 = time = 53
anim = 1826
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 550
removetime = 550
ownpal = 1
shadow = 5,5,5

[State 170, 2]
type = PlaySnd
trigger1 = time = 32
value = 13, 0
channel = 0

[State 170, 3]
type = PlaySnd
trigger1 = time = 0
value = 10, 0
channel = 0

[State 170, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

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
trigger1 = time = [0,180]
flag = RoundNotOver

[State 181, Mouth]
type = Explod
trigger1 = time = 0
anim = 186
ID = 186
pos = -1,0
postype = p1
bindtime = 70
sprpriority = 10
removetime = 70
removeongethit = 1
ignorehitpause = 1

[State 181, 2]
type = PlaySnd
trigger1 = time = 0
value = 13, 1

[State 181, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win pose 2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, 1]
type = AssertSpecial
trigger1 = time = [0,360]
flag = RoundNotOver

[State 182, 2]
type = ChangeState
triggerall = time = 0
trigger1 = name = "sirius" && palno = 5 || name = "sirius" && palno = 11
trigger2 = name = "siriusH"
value = 183

[State 182, 3]
type = PlaySnd
trigger1 = animelem = 2
value = 13, 2

[State 182, Mouth]
type = Explod
trigger1 = animelem = 2
anim = 186
ID = 186
pos = -1,0
postype = p1
bindtime = 250
sprpriority = 10
removetime = 250
removeongethit = 1

[State 182, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

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
flag = RoundNotOver

[State 184, 1]
type = RemoveExplod
triggerall = numexplod(1802) >= 1
trigger1 = time = 0
ID = 1802

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

;Dio (intro/win)
[State 184, 1]
type = Explod
trigger1 = time = 0
anim = 1814
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 500
removetime = 500
ownpal = 1
shadow = 5,5,5

;Algethi (intro/win)
[State 184, 1]
type = Explod
trigger1 = time = 0
anim = 1824
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 500
removetime = 500
ownpal = 1
shadow = 5,5,5

[State 184, 2]
type = PlaySnd
trigger1 = time = 30
value = 13, 8

[State 184, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Intro state decider
[Statedef 190]
type = s
ctrl = 0
velset = 0,0

[State 190, 1]
type = ChangeState
trigger1 = p2name = "seiya" || p4name = "seiya"
value = 196

[State 190, 1]
type = ChangeState
trigger1 = p2name = "aiolia" || p4name = "aiolia"
value = 195

[State 190, 2]
type = VarRandom
trigger1 = time = 0
v = 2
range = 0,99

[State 190, 3]
type = ChangeState
trigger1 = Var(2) = [0,33]
value = 191

[State 190, 4]
type = ChangeState
trigger1 = Var(2) = [34,66]
value = 192

[State 190, 4]
type = ChangeState
trigger1 = Var(2) = [67,99]
value = 193

;---------------------------------------------------------------------------
;Intro 1
[Statedef 191]
type = s
ctrl = 0
anim = 191
velset = 0,0

[State 191, 1] 
type = AssertSpecial
trigger1 = time = [0,450]
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 191, 1]
type = ChangeState
trigger1 = name = "sirius" && palno = 5 || name = "sirius" && palno = 11
trigger2 = name = "siriusH"
value = 194

[State 191, 1]
type = PlaySnd
trigger1 = time = 13
value = 12, 1

[State 191, sfondo]
type = Explod
trigger1 = time = 0
scale = 0.65, 0.65
pos = -100,-170
anim = 8060
ID = 8060
postype = p1
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
removetime = 250

[State 191, box]
type = Explod
trigger1 = time = 0
pos = 65,0
anim = 1910
sprpriority = -2
ownpal = 1

[State 191, box light 1]
type = Explod
trigger1 = time = 73
pos = 65,8
anim = 7040+var(22)
sprpriority = -1
ownpal = 1

[State 191, box light 2]
type = Explod
trigger1 = time = 110
pos = 67,4
anim = 7050+var(22)
sprpriority = -3
ownpal = 1

[State 191, 6]
type = Explod
trigger1 = time = 150
anim = 1911
sprpriority = 1
postype = p1
pos = -27,-3
bindtime = 1
ownpal = 1

[State 191, 6]
type = PlaySnd
trigger1 = time = 80
value = 4,0

[State 191, 6]
type = PlaySnd
trigger1 = time = 105
value = 2,1

[State 191, 6]
type = PlaySnd
trigger1 = time = 220
value = 5,2

[State 191, 7]
type = Explod
trigger1 = time = 235
anim = 7009+var(22)
sprpriority = -1
postype = p1
pos = 70,-150
bindtime = 1
supermove = 1
ownpal = 1

[State 191, Brilla]
type = PalFX
trigger1 = time = 240
time = 5
add = 150,150,250
sinadd = 200,200,200,3

[State 191, 8]
type = Explod
trigger1 = time = 235
anim = 1912
sprpriority = -1
postype = p1
pos = -40,100
bindtime = 1
supermove = 1
ownpal = 1

[State 191, 8]
type = Explod
trigger1 = time = 235
anim = 1913
sprpriority = -1
postype = p1
pos = -50,100
bindtime = 1
supermove = 1
ownpal = 1

[State 191, 8]
type = Explod
trigger1 = time = 235
anim = 1914
sprpriority = -1
postype = p1
pos = -10,80
bindtime = 1
supermove = 1
ownpal = 1

[State 191, 8]
type = Explod
trigger1 = time = 235
anim = 1915
sprpriority = -1
postype = p1
pos = -55,80
bindtime = 1
supermove = 1
ownpal = 1

[State 191, 8]
type = Explod
trigger1 = time = 235
anim = 1916
sprpriority = -1
postype = p1
pos = -155,140
bindtime = 1
supermove = 1
ownpal = 1

[State 191, 8]
type = Explod
trigger1 = time = 235
anim = 1917
sprpriority = -1
postype = p1
pos = -115,70
bindtime = 1
supermove = 1
ownpal = 1

[State 191, 8]
type = Explod
trigger1 = time = 235
anim = 1918
sprpriority = -1
postype = p1
pos = -60,70
bindtime = 1
supermove = 1
ownpal = 1

[State 191, 8]
type = Explod
trigger1 = time = 235
anim = 1919
sprpriority = -1
postype = p1
pos = 20,90
bindtime = 1
supermove = 1
ownpal = 1

[State 191, 8]
type = Explod
trigger1 = time = 235
anim = 1920
sprpriority = -1
postype = p1
pos = -75,100
bindtime = 1
supermove = 1
ownpal = 1

[State 191, 8]
type = PlaySnd
trigger1 = time = 250
value = 4,1

[State 191, 8]
type = PlaySnd
trigger1 = time = 285
value = 4,1

[State 191, 8]
type = PlaySnd
trigger1 = time = 295
value = 4,0

[State 191, 8]
type = PlaySnd
trigger1 = time = 305
value = 4,0

[State 191, 8]
type = PlaySnd
trigger1 = time = 315
value = 4,1

[State 191, 8]
type = PlaySnd
trigger1 = time = 325
value = 4,1

[State 191, 8]
type = PlaySnd
trigger1 = time = 335
value = 4,0

[State 191, 8]
type = PlaySnd
trigger1 = time = 345
value = 4,3

[State 191, 9]
type = PlaySnd
trigger1 = animelem = 16
value = 3, 0

[State 191, 10]
type = Explod
trigger1 = animelem = 15
anim = 8000+var(22)
ID = 8000
pos = 0,-50
postype = p1
bindtime = 60
removetime = 60
sprpriority = -4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

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

[State 191, 11]
type = ChangeState
trigger1 = time = 450
value = 0

;---------------------------------------------------------------------------
;Intro 2
[Statedef 192]
type = s
ctrl = 0
anim = 192
velset = 0,0

[State 192, 1] 
type = AssertSpecial
trigger1 = time = [0,60]
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 192, 2]
type = PlaySnd
trigger1 = time = 0
value = 13, 3
channel = 0

[State 192, 3]
type = Explod
trigger1 = animelem = 6
anim = 8034+var(22)
sprpriority = 5
postype = p1
pos = -60,-80
bindtime = 10
removetime = 5
supermove = 1
ownpal = 1

[State 192, 4]
type = PlaySnd
trigger1 = animelem = 6
value = 0, 4

[State 192, 5]
type = PlaySnd
trigger1 = time = 60
value = 3, 0

[State 191, 6]
type = Explod
trigger1 = animelem = 6
anim = 8000+var(22)
ID = 8000
pos = 0,-50
postype = p1
bindtime = 60
removetime = 60
sprpriority = -4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

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

[State 192, 7]
type = ChangeState
trigger1 = time = 60
value = 0

;---------------------------------------------------------------------------
;Intro 3
[Statedef 193]
type = s
ctrl = 0
anim = 193
velset = 0,0

[State 193, 1] 
type = AssertSpecial
trigger1 = time = [0,600]
flag = intro
flag2 = nomusic
flag3 = nobardisplay

;Dio (intro/win)
[State 193, 1]
type = Explod
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
trigger1 = time = 0
anim = 1814
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 525
removetime = 525
ownpal = 1
shadow = 5,5,5

;Dio (jump out)
[State 193, 1]
type = Explod
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
trigger1 = time = 525
anim = 1815
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 60
removetime = 60
ownpal = 1
shadow = 5,5,5

[State 193, 1]
type = PlaySnd
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
trigger1 = time = 524
value = 2, 0

;Algethi (intro/win)
[State 193, 1]
type = Explod
triggerall = p2name != "algethi"
triggerall = p3name != "algethi"
triggerall = p4name != "algethi"
triggerall = p2name != "algethiS"
triggerall = p3name != "algethiS"
triggerall = p4name != "algethiS"
triggerall = p2name != "algethiH"
triggerall = p3name != "algethiH"
triggerall = p4name != "algethiH"
trigger1 = time = 0
anim = 1824
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 545
removetime = 545
ownpal = 1
shadow = 5,5,5

;Algethi (jump out)
[State 193, 1]
type = Explod
triggerall = p2name != "algethi"
triggerall = p3name != "algethi"
triggerall = p4name != "algethi"
triggerall = p2name != "algethiS"
triggerall = p3name != "algethiS"
triggerall = p4name != "algethiS"
triggerall = p2name != "algethiH"
triggerall = p3name != "algethiH"
triggerall = p4name != "algethiH"
trigger1 = time = 545  
anim = 1825
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 60
removetime = 60
ownpal = 1
shadow = 5,5,5

[State 193, 1]
type = PlaySnd
triggerall = p2name != "algethi"
triggerall = p3name != "algethi"
triggerall = p4name != "algethi"
triggerall = p2name != "algethiS"
triggerall = p3name != "algethiS"
triggerall = p4name != "algethiS"
triggerall = p2name != "algethiH"
triggerall = p3name != "algethiH"
triggerall = p4name != "algethiH"
trigger1 = time = 544
value = 2, 0

[State 193, 3]
type = PlaySnd
trigger1 = animelem = 1
value = 13, 4
channel = 0

[State 193, 4]
type = PlaySnd
trigger1 = time = 95
value = 13, 5
channel = 0

[State 193, 5]
type = PlaySnd
trigger1 = time = 300
value = 14, 2
channel = 0

[State 193, Mouth]
type = Explod
trigger1 = animelem = 1
anim = 186
ID = 186
pos = -1,0
postype = p1
bindtime = 230
sprpriority = 10
removetime = 230
removeongethit = 1
ignorehitpause = 1

[State 193, Mouth]
type = Explod
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
trigger1 = time = 300
anim = 186
ID = 186
pos = 44,17
postype = p1
bindtime = 80
sprpriority = 10
removetime = 140
removeongethit = 1
supermovetime = 140
ignorehitpause = 1
scale = 1.5,1

[State 193, 6]
type = PlaySnd
trigger1 = time = 600
value = 3, 0

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

[State 193, 7]
type = ChangeState
trigger1 = time = 600
value = 0

;---------------------------------------------------------------------------
; Intro 4 (Hades)
[Statedef 194]
type = S
ctrl = 0
anim = 194
velset = 0,0

[State 194, 1]
type = AssertSpecial
trigger1 = time = [0,274]
flag = Intro

[State 194, 2]
type = PlaySnd
trigger1 = time = 0
value = 13,8
channel = 0

[State 194, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 6
channel = 0

[State 194, 4]
type = PlaySnd
trigger1 = AnimElem = 28
value = 0, 0

[State 194, 5]
type = PlaySnd
trigger1 = AnimElem = 32
value = 0, 1

[State 194, mantle]
type = Explod
trigger1 = AnimElem = 33
pos = 0,0
anim = 1940
ID = 1940
sprpriority = -5
ownpal = 1
supermove = 1

[State 194, 6]
type = PlaySnd
trigger1 = time = 240
value = 3, 0

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

[State 194, 6]
type = ChangeState
trigger1 = time = 274
value = 0

;---------------------------------------------------------------------------
;Intro vs Aiolia
[Statedef 195]
type = s
ctrl = 0
anim = 195
velset = 0,0

[State 195, 1] 
type = AssertSpecial
trigger1 = time = [0,240]
flag = intro
flag2 = nomusic
flag3 = nobardisplay

[State 195, 2]
type = PlaySnd
trigger1 = time = 0
value = 13, 7
channel = 0

[State 195, 3]
type = PlaySnd
trigger1 = animelem = 6
value = 0, 4

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

[State 195, 4]
type = ChangeState
trigger1 = time = 240
value = 0

;---------------------------------------------------------------------------
;Intro vs Seiya
[Statedef 196]
type = s
ctrl = 0
anim = 196
velset = 0,0

[State 196, 1] 
type = AssertSpecial
trigger1 = time = [0,400]
flag = intro
flag2 = nomusic
flag3 = nobardisplay

;Dio (jump in)
[State 196, 1]
type = Explod
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
trigger1 = time = 0
anim = 1813
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 32
removetime = 32
ownpal = 1
shadow = 5,5,5

[State 196, 1]
type = PlaySnd
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
trigger1 = time = 32
value = 2, 3

;Dio (intro/win)
[State 196, 1]
type = Explod
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
trigger1 = time = 33
anim = 1814
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 293
removetime = 293
ownpal = 1
shadow = 5,5,5

;Dio (jump out)
[State 196, 1]
type = Explod
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
trigger1 = time = 325
anim = 1815
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 60
removetime = 60
ownpal = 1
shadow = 5,5,5

[State 196, 1]
type = PlaySnd
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
trigger1 = time = 0
trigger2 = time = 324
value = 2, 0

;Algethi (jump in)
[State 196, 1]
type = Explod
triggerall = p2name != "algethi"
triggerall = p3name != "algethi"
triggerall = p4name != "algethi"
triggerall = p2name != "algethiS"
triggerall = p3name != "algethiS"
triggerall = p4name != "algethiS"
triggerall = p2name != "algethiH"
triggerall = p3name != "algethiH"
triggerall = p4name != "algethiH"
trigger1 = time = 20  
anim = 1823
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 32
removetime = 32
ownpal = 1
shadow = 5,5,5

[State 196, 1]
type = PlaySnd
triggerall = p2name != "algethi"
triggerall = p3name != "algethi"
triggerall = p4name != "algethi"
triggerall = p2name != "algethiS"
triggerall = p3name != "algethiS"
triggerall = p4name != "algethiS"
triggerall = p2name != "algethiH"
triggerall = p3name != "algethiH"
triggerall = p4name != "algethiH"
trigger1 = time = 51
value = 2, 4

;Algethi (intro/win)
[State 196, 1]
type = Explod
triggerall = p2name != "algethi"
triggerall = p3name != "algethi"
triggerall = p4name != "algethi"
triggerall = p2name != "algethiS"
triggerall = p3name != "algethiS"
triggerall = p4name != "algethiS"
triggerall = p2name != "algethiH"
triggerall = p3name != "algethiH"
triggerall = p4name != "algethiH"
trigger1 = time = 52
anim = 1824
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 293
removetime = 293
ownpal = 1
shadow = 5,5,5

;Algethi (jump out)
[State 196, 1]
type = Explod
triggerall = p2name != "algethi"
triggerall = p3name != "algethi"
triggerall = p4name != "algethi"
triggerall = p2name != "algethiS"
triggerall = p3name != "algethiS"
triggerall = p4name != "algethiS"
triggerall = p2name != "algethiH"
triggerall = p3name != "algethiH"
triggerall = p4name != "algethiH"
trigger1 = time = 345  
anim = 1825
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 60
removetime = 60
ownpal = 1
shadow = 5,5,5

[State 196, 1]
type = PlaySnd
triggerall = p2name != "algethi"
triggerall = p3name != "algethi"
triggerall = p4name != "algethi"
triggerall = p2name != "algethiS"
triggerall = p3name != "algethiS"
triggerall = p4name != "algethiS"
triggerall = p2name != "algethiH"
triggerall = p3name != "algethiH"
triggerall = p4name != "algethiH"
trigger1 = time = 20
trigger2 = time = 344
value = 2, 0

[State 196, 3]
type = PlaySnd
trigger1 = animelem = 1
value = 2, 0

[State 196, 3]
type = PlaySnd
trigger1 = animelem = 17
value = 2, 2

[State 196, 3]
type = PlaySnd
trigger1 = animelem = 21
value = 13, 6
channel = 0

[State 196, Mouth]
type = Explod
trigger1 = animelem = 21
anim = 186
ID = 186
pos = -1,0
postype = p1
bindtime = 230
sprpriority = 10
removetime = 230
removeongethit = 1
ignorehitpause = 1

[State 196, 6]
type = PlaySnd
trigger1 = time = 400
value = 3, 0

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

[State 196, 7]
type = ChangeState
trigger1 = time = 400
value = 0

;---------------------------------------------------------------------------
; Taunt
[Statedef 199]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 199, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 13, 8
channel = 0

[State 199, 2]
type = ChangeState
trigger1 = time = 100
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing LP
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 200

[State 200, 1]
type = PlaySnd
trigger1 = time = 1
value = 0, 1

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 30
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,9
sparkno = S7000+var(22)
sparkxy = -10,-80
hitsound   = s1,0
guardsound = s6,0
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing MP
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 210
poweradd = 50
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = time = 3
value = 0, 0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  =  Medium
damage    = 30
guardflag = MA
pausetime = 10,10
sparkno = S7001+var(22)
sparkxy = -10, -75
hitsound = s1,1
guardsound =s6,0
ground.type = Low
ground.slidetime = 9
ground.hittime = 9
guard.ctrltime = 20
ground.velocity = -4.5
air.velocity = -2,-3
airguard.velocity = -3,-2.5
air.cornerpush.veloff = 0
getpower = 0
givepower = 0

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing HP
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 220

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 0, 3

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = S7002+var(22)
sparkxy = -10,-70
hitsound   = s1,2
guardsound = s6,0
animtype = hard			;light,medium,hard,back,up,diagup
air.animtype = back
ground.type = high		;  high,middle,low,trip
air.type = high
ground.slidetime=16
ground.hittime=16
ground.velocity=-13
air.hittime=12
air.velocity=-5,-7
ground.cornerpush.veloff = -17
guard.cornerpush.veloff = -17
air.cornerpush.veloff = -11
yaccel= 0.55
persistent=0
fall = 0
air.fall = 0
fall.recover = 1
envshake.time = 5
envshake.freq = 110
envshake.ampl = 4
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 4	;strong weak

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing HP (close)
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 225
poweradd = 50
sprpriority = 2

[State 225, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 40
getpower = 0
givepower = 0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,10
sparkno = S7002+var(22)
sparkxy = -10,-80
hitsound   = s1,2
guardsound = s6,0
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

[State 225, 2]
type = PlaySnd
trigger1 = time = 1
value = 0, 2

[State 225, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing LK
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 230

[State 230, 1]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 12, 0

[State 230, 2]
type = PlaySnd
trigger1 = time = 2
value = 0, 0

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Light
damage    = 20
getpower = 0
givepower = 0
guardflag = MA
pausetime = 10,10
sparkno = S7000+var(22)
sparkxy = 0,-30
hitsound   = s1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 13
ground.velocity = -5.5
air.velocity = -2.5,-4

[State 230, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing MK
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

[State 240, 0]
type = ChangeState
trigger1 = P2BodyDist X < 20
value = 245
ctrl = 0

[State 240, 1]
type = PlaySnd
trigger1 = time = 2
value = 0, 1

[State 240, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 30
getpower = 0
givepower = 0
guardflag = MA
pausetime = 10,10
sparkno = S7001+var(22)
sparkxy = -10,-80
hitsound   = s1,1
guardsound = s6,0
animtype = Medium
ground.type=High
ground.slidetime=11
ground.hittime=11
ground.velocity=-3
air.type=Low
air.velocity=-3,-2
ground.cornerpush.veloff = -13
guard.cornerpush.veloff = -13
air.cornerpush.veloff = -9
envshake.time = 0
envshake.freq = 100
envshake.ampl = 6
fall.envshake.time = 0
fall.envshake.freq = 100
fall.envshake.ampl = 6
fall=0
air.fall=0
fall.recover=1

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing MK (close)
[StateDef 245]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 245
sprpriority = 2

[State 245, 1]
type = PlaySnd
trigger1 = Animelem = 1
value = 0,2

[State 245, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = s7001+var(22)
sparkxy = -10,-50
hitsound   = s1,1
guardsound = s6,0
animtype = Medium
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
getpower = 0
givepower = 0

[State 245, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing HK
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
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Diagup
damage    = 40
getpower = 0
givepower = 0
guardflag = MA
pausetime = 12,12
sparkno = S7002+var(22)
sparkxy = -10,-100
hitsound   = s1,2
guardsound = s6,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -3,-3
air.velocity = -4,-4
air.animtype = Back
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 250, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching LP
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
guardflag = L
pausetime = 11,11
sparkno = S7000+var(22)
sparkxy = -10,-52
hitsound   = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 18
guard.ctrltime = 18
ground.velocity = -4
air.velocity = -2, -3
air.cornerpush.veloff = 0
getpower = 0
givepower = 0

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching MP
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
trigger1 = time = 1
value = 0, 1

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 30
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = S7001+var(22)
sparkxy = -10,-55
hitsound   = s1,1
guardsound = s6,0
animtype = Medium
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
getpower = 0
givepower = 0

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------------------
; Crouching HP
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

[State 420, 3]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 40
getpower = 0
givepower = 0
animtype  = hard
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = S7002+var(22)
sparkxy = -10,-63
hitsound   = s1,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7,-4
envshake.time =  15
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching LK
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
getpower = 0
givepower = 0
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = S7000+var(22)
sparkxy = -10,-8
hitsound   = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -4
guard.velocity = -4
air.velocity = -1,-4
airguard.velocity = -1,-4
ground.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
down.velocity = -5,0
down.hittime = 20
air.juggle = 1
fall.envshake.time = 12
fall.envshake.freq = 100
fall.envshake.ampl = -2

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching MK
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
trigger1 = time = 2
value = 0, 1

[State 440, 3]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 30			;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0
givepower = 0
guardflag = MA			;Flags on how move is to be guarded against
hitflag = MAF			;Flags of conditions that move can hit
priority = 3, Hit
pausetime = 12,12
sparkno = S7001+var(22)
sparkxy = -5,-10
hitsound   = s1,1
guardsound = s6,0
animtype = Medium
ground.type=Low
ground.slidetime=13
ground.hittime=13
ground.velocity=-6
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -7
air.velocity = -1.5,-4
airguard.velocity = -1.5,-4
ground.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
guard.velocity = -5
air.juggle = 1
fall.envshake.time = 12
fall.envshake.freq = 100
fall.envshake.ampl = -2

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------------------
; Crouching HK
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
trigger1 = time = 2
value = 0, 2

[State 450, 3]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 40
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = S7002+var(22)
sparkxy = -5,-10
hitsound   = s1,2
guardsound = s6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-1
air.velocity = 0,0
guard.velocity = -5
fall = 1
air.juggle = 1
fall.envshake.time = 12
fall.envshake.freq = 100
fall.envshake.ampl = -2

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------------------
; Jumping LP
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
getpower = 0
givepower = 0
animtype = Light
guardflag = HA
priority = 3
pausetime = 12,12
sparkno = S7000+var(22)
sparkxy = -10,-45
hitsound   = s1,0
guardsound = s6,0
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

;---------------------------------------------------------------------------
; Jumping MP
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
trigger1 = time = 2
value = 0, 1

[State 610, 3]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage = 30
getpower = 0
givepower = 0
animtype = Medium
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S7001+var(22)
sparkxy = -10,-50
hitsound   = s1,1
guardsound = s6,0
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -3,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

;--------------------------------------------------------------------------
; Jumping HP
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
trigger1 = time = 2
value = 0, 2

[State 620, 3]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage = 40
getpower = 0
givepower = 0
animtype = Heavy
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S7002+var(22)
sparkxy = -10,-55
hitsound   = s1,2
guardsound = s6,0
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -5,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -2.7,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

;--------------------------------------------------------------------------
; Jumping LK
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
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 12,12
sparkno = S7000+var(22)
sparkxy = -15,-25
hitsound   = s1,0
guardsound = s6,0
animtype = Light
air.animtype = light
ground.type = low
air.type = Low
ground.slidetime=9
ground.hittime=12
ground.velocity=-3
yaccel = 0.55
ground.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
air.cornerpush.veloff = -4
air.velocity=-1.5,((vel y)-.2)
envshake.time=9
envshake.ampl=1
fall = 0
air.fall = 0
fall.recover = 1

;---------------------------------------------------------------------------
; Jumping MK
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
trigger1 = time = 2
value = 0, 1

[State 640, 3]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 30
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S7001+var(22)
sparkxy = -10,-50
hitsound   = s1,1
guardsound = s6,0
animtype = medium			;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup".
air.animtype = medium
ground.type = low			;  high,middle,low,trip
air.type = Low
ground.slidetime = 9
guard.slidetime = 9
ground.hittime = 10
guard.hittime = 20
guard.ctrltime = 20
ground.velocity = -5
yaccel = 0.55
air.velocity = -3,-4
airguard.velocity = -3,-2.5
ground.cornerpush.veloff = -8
guard.cornerpush.veloff = -8
air.cornerpush.veloff = -5
envshake.time = 0
envshake.freq = 110
envshake.ampl = 4
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 4	;strong weak
fall = 0
air.fall = 0
fall.recover = 1

;--------------------------------------------------------------------------
; Jumping HK
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 650
sprpriority = 2

[State 650, 2]
type = PlaySnd
trigger1 = time = 2
value = 0, 2

[State 650, 3]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage    = 40
getpower = 0
givepower = 0
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S7002+var(22)
sparkxy = -10,-80
hitsound   = s1,2
guardsound = s6,0
animtype = hard			;light,medium,hard,back,up,diagup
air.animtype = back
ground.type = low		;  high,middle,low,trip
air.type = high
ground.slidetime = 17
ground.hittime = 18
guard.ctrltime = 10
ground.velocity = -6
yaccel = 0.55
air.velocity = -3, -4
ground.cornerpush.veloff = -10
guard.cornerpush.veloff = -10
air.cornerpush.veloff = -6
envshake.time = 5
envshake.freq = 110
envshake.ampl = 4
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 4	;strong weak
fall = 0
air.fall = 0

;---------------------------------------------------------------------------
; Throw
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
velset = 0,0
poweradd = 50
anim = 800

[State 800, 2]
type = PlaySnd
trigger1 = time = 0
value = 0, 2

[State 800, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NT
getpower = 0
givepower = 0
hitflag = M-
hitsound = s8, 0
priority = 2, Miss
snap = 24, 0
sparkno = -1
ground.type = High
p2facing = 1
p1stateno = 810
p2stateno = 820

[State 800, end1]
type = ChangeState
trigger1 = var(59) >= 1
trigger1 = animtime = 0
value = 105
ctrl = 1

[State 800, end2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 810]
type = S
movetype = I
physics = N
ctrl = 0
anim = 810

[State 810, 0]
type = Sprpriority
trigger1 = Animelem >= 3
value = -1

[State 810, POWER]
type = Explod
trigger1 = animelem = 3
anim = 7000+var(22)
pos = 20,-70
postype = p1
sprpriority = 2
removetime = 15

[State 810, POWER]
type = Explod
trigger1 = time = 23
anim = 7001+var(22)
pos = 20,-40
postype = p1
sprpriority = 2
removetime = 15

[State 810, 1]
type = Width
trigger1 = AnimElem = 1
edge = 40, 0

[State 810, 2]
type = PlaySnd
trigger1 = Animelem = 6
value = 1,0

[State 810, 2]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 810, 2]
type = PlaySnd
trigger1 = animelem = 5
value = 0,1

[State 810, 2]
type = PlaySnd
trigger1 = animelem = 7
value = 0,2

[State 810, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 820]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 820, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 820

[State 820, 2] 
type = Width
trigger1 = AnimElem = 1, >= 0
edge = 0, 0

[State 820, 3]
type = LifeAdd
trigger1 = AnimElem = 4
value = -60

[State 820, 4]
type = SelfState
trigger1 = animtime = 0
value = 5100
ctrl = 0

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
value = 12, 0
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
triggerall = numexplod(8000) = 0
trigger1 = animelem = 1
anim = 8000+var(22)
ID = 8000
pos = 0,-50
postype = p1
bindtime = -1
sprpriority = -4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 901]
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

[State 901]
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
bindtime = -1
removetime = -1
sprpriority = -1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1

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
physics = S
anim = 902

[State 902]
type = VarSet
trigger1 = time = 0
var(10) = 0

[State 902]
type = RemoveExplod
triggerall = numexplod(8000) >= 1
trigger1 = time = 0
ID = 8000

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

[State 902]
type = RemoveExplod
triggerall = numexplod(7010) >= 1
trigger1 = time = 0
ID = 7010

[State 902]
type = RemoveExplod
triggerall = numexplod(7020) >= 1
trigger1 = time = 0
ID = 7020

[State 902]
type = RemoveExplod
triggerall = numexplod(903) >= 1
trigger1 = time = 0
ID = 903

[State 902]
type = PalFX
triggerall = power >= 3000
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

;===================================================
;Specials
;===================================================

;---------------------------------------------------------------------------
; Fireball
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
anim = 1000
ctrl = 0
velset = 0,0
poweradd = 100

[State 1000, 1]
type = Explod
trigger1 = animelem = 1
anim = 7060+var(22)
pos = 20,-80
postype = p1
sprpriority = 2
removetime = 10

[State 1000, 2]
type = PlaySnd
triggerall = random < 500
trigger1 = time = 0
value = 12, 0

[State 1000, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 4

[State 1000, 4]
type = Projectile
trigger1 = AnimElem = 3
projanim = 8001+var(22)
projhitanim = 8002+var(22)
projpriority = 2
projshadow = 68,68,68
offset = 0,-30
velocity = 10,0
attr = S, SP
damage = 30,8
animtype = Light
hitflag = MAF
guardflag = MA
pausetime = 3,3
sparkno = -1
guard.sparkno = -1
sparkxy = 35, -75
hitsound   = s1,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -10
air.velocity = -2.5,-5
projscale = 0.7,0.7
getpower = 0
givepower = 0
palfx.time = 15
palfx.add = 50,50,50
palfx.mul = 150,150,250
palfx.sinadd = 150,150,250,3
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10

[State 1000, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; player 2 state
[Statedef 1025]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, anim] 
type = ChangeAnim2
trigger1 = time >= 0
value = 1025

[State 1025, state]
type = ChangeState
trigger1 = hitshakeover = 1
value = 1026

;---------------------------------------------------------------------------
; player2 on air
[Statedef 1026]
type    = A
movetype= H
physics = N

[State 1026, velocity]
type = VelSet
trigger1 = time = 0
x = gethitvar(xvel)*facing
y = gethitvar(yvel)

[State 1026, gravity]
type = VelAdd
trigger1 = time >= 0
y = .45

[State 1026, no scroll]
type = screenbound
triggerall = pos y < -15
trigger1 = backedgebodydist < 65
trigger2 = Frontedgebodydist < 65
value = 1
movecamera = 0,1

[State 1026, hit wall]
type = ChangeState
triggerall = pos y < -15
trigger1 = backedgebodydist <= 20
trigger2 = Frontedgebodydist <= 20
value = 1027

[State 1026, hit ground]
type = selfstate
trigger1 = (vel y > 0) && (pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; player2 hit on wall
[Statedef 1027]
type    = A
movetype= H
physics = N

[State 1027, turn]
type = Turn
trigger1 = (time = 0) && (frontedgebodydist <= 30)

[State 1027, pos]
type = PosAdd
trigger1 = time = 0
x = 15 - backedgebodydist

[State 1027, stop moving]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 1027, no scroll]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, spark]
type = Explod
trigger1 = time = 0
anim = F72
pos = 0, Floor (screenpos y) - 50
postype = back
sprpriority = 3
ownpal = 1

[State 1027, anim]
type = ChangeAnim2
trigger1 = time = 0
value = 1026

[State 1027, sound]
type = PlaySnd
trigger1 = time = 1
value = 240,0

[State 1027, state]
type = ChangeState
trigger1 = animtime = 0
value = 1028

;---------------------------------------------------------------------------
; hit on wall
[Statedef 1028]
type    = A
movetype= H
physics = N

[State 1028, 1]
type = nothitby
trigger1 = time >= 0
value = , na, np

[State 1028, vel y]
type = VelSet
trigger1 = time = 0
y = -6

[State 1028, vel x]
type = VelSet
trigger1 = time = 0
x = 1.6

[State 1028, turn]
type = Turn
trigger1 = (time = 0) && (backedgedist < 30)

[State 1028, gravity]
type = VelAdd
trigger1 = time >= 0
y = .35

[State 1028, anim 5050] ;self Falling animation
type = ChangeAnim
trigger1 = time = 0
trigger1 = !selfanimexist(5052)
value = 5050

[State 1028, anim 5052] ;self Falling animation (diagup type)
type = ChangeAnim
trigger1 = time = 0
trigger1 = selfanimexist(5052)
value = 5052

[State 1028, anim 5060] ;coming Down - normal
type = ChangeAnim
trigger1 = vel y > -2
trigger1 = anim = 5050
trigger1 = selfanimexist(5060)
persistent = 0
value = 5060

[State 1028, anim 5062] ;coming Down - Diagup type
type = ChangeAnim
trigger1 = vel y > -2
trigger1 = anim = 5052
trigger1 = selfanimexist(5062)
persistent = 0
value = 5062

[State 1028, hit ground]
type = selfstate
trigger1 = (vel y > 0) && (pos y >= 0)
value = 5100

;--------------------------------------------------------------------------
; Fireball (air)
[Statedef 1100]
type = A
movetype = A
physics = A
juggle  = 5
anim = 1100
ctrl = 0
velset = 0,-8
poweradd= 100

[State 1100, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 2

[State 1100, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5, 4

[State 1100]
type = Explod
trigger1 = AnimElem = 2
anim = 7060+var(22)
sprpriority = 2
postype = p1
removetime = 15
pos = 40,-80
supermove = 1
bindtime = 1
ownpal = 1
removeongethit = 1

[State 1100, vel]
type = VelSet
trigger1 = time = [1,54]
x = 0
y = 0

[State 1100, projetil 1]
type = Projectile
trigger1 = AnimElem = 2
projID = 8011
projanim = 8011+var(22)
projHitanim = -1
projRemanim = -1
velocity = 9,9
accel = 0,0
offset = 35,-90
postype = p1
attr = A, SP
damage = 60,6
animtype = Light
hitflag = MAF
guardflag = MA
pausetime = 3,3
sparkno = S8012+var(22)
sparkxy = 25, 5
guard.sparkno = S8012+var(22)
hitsound = S1,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -10
air.velocity = -2.5,-5
projscale = 0.7,0.7
getpower = 0
givepower = 0
palfx.time = 15
palfx.add = 50,50,50
palfx.mul = 150,150,250
palfx.sinadd = 150,150,250,3
envshake.time = 15
envshake.freq = 178
envshake.ampl = 15
envshake.phase = 10

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 1101
ctrl = 1

[Statedef 1101]
type = A
movetype = A
physics = A
anim = 1101
velset = 0, 0
juggle = 2
ctrl = 0

[State 1101, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Smasher
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 1200

[State 1200, 5]
type = AfterImage
trigger1 = AnimElem = 3
time = 30
framegap = 2
length = 10
palbright = 10,10,10
palcontrast= 98,98,98
trans = Add1

[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
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

[State 1200, Run Forward]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
postype = p1
pos = 5,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 1200, var]
type = VarSet
trigger1 = time = 0
var(0) = 0

[State 1200, 3]
type = VelSet
trigger1 = AnimElem = 3
x = 28

[State 1200, 4]
type = VelMul
trigger1 = AnimElem = 4
x = 1.2

[State 1200, 5]
type = VelMul
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = 1.5

[State 1200, 6]
type = VelMul
trigger1 = AnimElem = 7
x = 1.7

[State 1200, 7]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,4

[State 1200, 8]
type = VelMul
trigger1 = AnimElem = 8
x = 2

[State 1200, 9]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Hard
damage    = 50
getpower = 0
givepower = 0
guardflag = MA
pausetime = 0,35
sparkno = S7009+var(22)
sparkxy = -10,-80
hitsound   = s1,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 6
ground.velocity = 0
air.velocity = -2.5,-4
fall = 1
air.fall= 1
fall.recover=0

[State 1200, 10]
type = ChangeState
trigger1 = MoveHit
value = 1201
ctrl = 1

[State 1200, 11]
type = ChangeState
trigger1 = MoveGuarded
value = 0
ctrl = 1

[State 1200, 12]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

[Statedef 1201]
type = S
movetype = I
physics = S
anim = 1201
ctrl = 0

[State 1201, 1]
type = PlaySnd
trigger1 = time = 2
value = 0, 4

[State 1201, Explod]
type = Explod
trigger1 = AnimElem = 1
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

[State 1201, Super B]
type = AfterImage
trigger1= time = 0
time = 35
framegap = 4
length = 12
palbright = 10,10,10
palcontrast= 98,98,98
trans = Add1

[State 1201,1]
type = PosAdd
trigger1 = time = 0
x = 120

[State 1201,2]
type = ChangeState
trigger1 = animtime = 0
value = 1202
ctrl = 1

[Statedef 1202]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1201
sprpriority = 8

[State 1202, cosmo]
type = RemoveExplod
triggerall = NumExplod(2) != 0
trigger1 = stateno != 2
ID = 2

[State 1202, cosmo]
type = RemoveExplod
triggerall = NumExplod(3) != 0
trigger1 = stateno != 0
ID = 3

[State 1202, Explod]
type = Explod
trigger1 = time = 1
anim = F12
postype = p2
pos = 0, -80

[State 1202, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 1202, 5]
type = ChangeState
trigger1 = time = 70
value = 0
ctrl = 1

[State 1202, 6.1]
type = VelSet
trigger1 = AnimElem = 1
x = 8

[State 1202, nothittableanything]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1202, 7]
type = ChangeState
trigger1 = time = 40
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; Smasher (air)
[Statedef 1300]
type = A
movetype = A
physics = A
anim = 1300
juggle = 1
ctrl = 0
poweradd = 100
velset = 0,-5

[State 1300]
type = Explod
trigger1 = time = 1
anim = 7060+var(22)
ID = 7060
pos = -12,-82
postype = p1
sprpriority = 3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 12
removeongethit = 1

[State 1300]
type = PlaySnd
trigger1 = time = 2
value = 0, 4

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12, 0
channel = 0

[State 1300]
type = AfterImage
trigger1 = AnimElem = 2
time = 8
framegap = 2
length = 10
palbright = 10,10,10
palcontrast= 98,98,98
trans = Add1

[State 1300]
type = VelSet
trigger1 = AnimElem = 2
x = 20
y = 15

[State 1300]
type = Explod
trigger1 = AnimElem = 2
anim = 8010+var(22)
ID = 8010
pos = -33,-75
postype = p1
sprpriority = 3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = -1
removeongethit = 1

[State 1300]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,3

[State 1300]
type = HitDef
trigger1 = AnimElem = 2
priority = 6
attr = A, SA
damage = 70,8
getpower = 0
givepower = 0
animtype = hard
guardflag = HA
sparkno = s7002+var(22)
sparkxy = 5,-10
hitsound = s1,2
guardsound = s6,0
pausetime = 12,12
ground.hittime = 13
ground.type = low
ground.slidetime = 9
ground.velocity = -10
air.velocity = -3,-3
envshake.time = 15           
envshake.ampl = 7
envshake.freq = 176
fall = 1   
fall.damage = 10            
fall.envshake.ampl = 6       
fall.envshake.freq = 125
fall.envshake.time = 15

[State 1300]
type = RemoveExplod
triggerall = NumExplod(8010) >= 1
trigger1 = MoveContact
trigger2 = Pos Y >= -20
ID = 8010

[State 1300]
type = ChangeState
trigger1 = Pos Y >= 0
trigger2 = time = 80
value = 51
ctrl = 1

;---------------------------------------------------------------------------
; Cosmic Counterattack
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 2
velset = 0,0
anim = 1400
ctrl = 0
sprpriority = 2

[State 1400, nohit]
type = VarSet
trigger1 = time = 0
var(23) = 1

[State 1400, 1]
type = PlaySnd
trigger1 = time = 0
value = 3, 0

[State 1400, 1]
type = PlaySnd
trigger1 = time = 10
value = 0, 2

[State 1400, 1]
type = ReversalDef
trigger1 = time = 0
reversal.attr = SCA, NA, SA, HA
p1stateno = 1401
hitsound = S1,3
sparkno = s7005+var(22)
sparkxy = 50,20
pausetime = 10,50

[State 1400]
type = ChangeState
trigger1 = time = 20
value = 1402
ctrl = 0

[Statedef 1401]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1401
poweradd = 0
ctrl = 0

[State 1400, 2]
type = PlaySnd
trigger1 = time = 0
value = 0,4

[State 1400]
type = PlaySnd
trigger1 = time = 10
value = 12, 0

[State 1400, 1]
type = Explod
trigger1 = time = 0
pos = -15,3
anim = F120

[State 1400, 2]
type = VelAdd
trigger1 = time = 0
trigger2 = time = 10
x = -3

[State 1400]
type = ChangeState
triggerall = random = [0,332]
trigger1 = time = 20
value = 1200
ctrl = 0

[State 1400]
type = ChangeState
triggerall = random = [333,662]
trigger1 = time = 20
value = 1500
ctrl = 0

[State 1400]
type = ChangeState
triggerall = random = [663,999]
trigger1 = time = 20
value = 1600
ctrl = 0

[State 1400]
type = ChangeState
trigger1 = time = 21
value = 1700
ctrl = 0

[Statedef 1402]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1402
poweradd = 0
ctrl = 0

[State 1402, 1]
type = VarSet
trigger1 = time = 0
var(23) = 0

[State 1402, 2]
type = ChangeState
trigger1 = time = 2
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Super Uppercut
[Statedef 1500]
type = s
movetype = i
physics = s
poweradd= 100
anim = 100
velset = 0, 0
sprpriority = 1
ctrl = 0

[State 1500, afterimage]
type = AfterImage
trigger1= time = 0
time= 15
framegap = 2
length = 10
palbright = 10,10,10
palcontrast= 98,98,98
trans = Add1

[State 1500, Explod]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
anim = 8006
pos = -15,-20
postype = p1
ID = 8006
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1500, Run Forward]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
pos = 0,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 1500, 1]
type = VelAdd
trigger1 =1
x = 4

[State 1500, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 4

[State 1500, 1]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 6
value = 3, 0

[State 1500, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 3, 1

[State 1500, 3]
type = ChangeState
trigger1 = p2bodydist x < 40
value = 1501
ctrl = 0

[State 1500, 5] ; Caso não acerte o P2, voltar a animação Stand.
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1501]
type = S
movetype = A
physics = N
anim = 1500
velset = 0,0
ctrl = 0
poweradd = 100
juggle = 1

[State 1501, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
ID = 8006

[State 1501, EXPLOD1]
type = Explod
trigger1 = AnimElem = 1
anim = 8021+var(22)
postype = p1
pos = 0,0
bindtime = -1
removetime = 8
ownpal = 1
sprpriority = 4
removeongethit = 1

[State 1501, 2]
type = PlaySnd
trigger1 = time = 0
value = 12, 0

[State 1501, 1]
type = VelSet
trigger1 = time = 1
X = 1

[State 1501, 9]
type = ChangeState
triggerall = prevstateno = 3102
trigger1 = AnimTime = 0
value = 3103

[State 1501, 9]
type = ChangeState
triggerall = prevstateno != 3102
trigger1 = AnimTime = 0
value = 1502

[Statedef 1502]
type = A
movetype = A
physics = N
anim = 1501
velset = 3,-12.4
juggle = 1

[State 1502, 1]
type = VelAdd
trigger1 = time = [1,18]
trigger2 = Time >= 18
Y = 0.45

[State 1502, 2]
type = VelSet
trigger1 = time = 18
X = 1

[State 1502, EXPLOD1]
type = Explod
trigger1 = AnimElem = 1
anim = 8020+var(22)
postype = p1
pos = 5,-15
bindtime = -1
removetime = 45
ownpal = 1
sprpriority = 4
removeongethit = 1

[State 1502, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
attr = A, SA
damage    = 14,1
getpower = 0
givepower = 0
animtype = Heavy
getpower = 0
givepower = 0
guardflag = MA
hitflag = MAF
hitsound   = S1,2
guardsound = s6,0
sparkno = S7000+var(22)
guard.sparkno = 70
sparkxy = -8,-80
ground.type = High
ground.slidetime = 18
ground.hittime  = 21
ground.velocity = -3,-8
air.velocity = -3,-8
air.hittime = 36
fall = 1
air.fall = 1
yaccel = 0.4

[State 1502, 9]
type = ChangeState
trigger1 = Time > 0 && Pos Y >= 0
value = 1503

[Statedef 1503]
type = S
movetype = I
physics = S
anim = 1502
velset = 0,0

[State 1503, 1]
type = PosSet
trigger1 = time = 0
Y = 0

[State 1503, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Super Kick
[Statedef 1600]
type    = S
movetype= I
physics = S
juggle  = 8
velset = 10,0
anim = 100
poweradd = 100
ctrl = 0
sprpriority = 2

[State 1600, afterimage]
type = AfterImage
trigger1= time = 0
time= 15
framegap = 2
length = 10
palbright = 10,10,10
palcontrast= 98,98,98
trans = Add1

[State 1600, Explod]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
anim = 8006
pos = -15,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1600, Run Forward]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
pos = 0,0
anim = 7085
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 1600, 1]
type = VelAdd
trigger1 =1
x = 4

[State 1600, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0,4

[State 1600, 1]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 6
value = 3, 0

[State 1600, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 3, 1

[State 1600, 3]
type = VelSet
trigger1 = p2bodydist X <= 80
x = 30

[State 1600, 1]
type = Changestate
trigger1 = p2bodydist X <= 20
value = 1601

[Statedef 1601]
type    = A
movetype= A
physics = A
juggle  = 8
;velset = 0,0
anim = 1600
ctrl = 0
sprpriority = 2

[State 1601]
type = Explod
trigger1 = animelem = 1
anim = 7089
ID =3004
sprpriority = -2
postype =p1
pos =0, 10
ignorehitpause = 1
bindtime = 1
supermove = 1
ontop = 1
ownpal = 1
removetime = 26
removeongethit = 1

[State 1601, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 12, 0

[State 1601, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,5

[State 1601, 1]
type = VarSet
trigger1 = AnimElem = 1
var(23) = 0

;[State 1601, 1]
;type = VarSet
;trigger1 = AnimElem = 3
;var(23) = 1

[State 1601, 2]
type = PlaySnd
triggerall = random < 250
trigger1 = time = 0
value = 1000,0

[State 1601, 3]
type = VelSet
trigger1 = AnimElem = 1
x = 1
y = -6

;[State 1601, 4]
;type = VelSet
;trigger1 = AnimElem = 3
;x = 15
;y = 0.65

;[State 1601, 4]
;type = Veladd
;trigger1 = AnimElem = 6
;y = 2.65

[State 1601, 5]
type = HitDef
trigger1 = AnimElem = 4
attr = a, sa
animtype  = Up
damage = 70,8
getpower = 0
givepower = 0
priority  = 5
guardflag = maF
pausetime = 13,13
sparkno = S7002+var(22)
sparkxy = -30,-120
guard.sparkno = S7004+var(22)
hitsound   = s1,3
guardsound = s6,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5,-12
guard.velocity = -7
air.velocity = -3,-11
fall = 1
fall.recover = 0
fall.damage = 10

[State 1601, 6]
type = ChangeState
triggerall = time >= 22
triggerall = var(23) = 1
trigger1 = pos Y >= 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Wild Combo
[Statedef 1700]
type    = S
movetype= I
physics = S
anim = 100
juggle  = 8
velset = 10,0
poweradd = 100
ctrl = 0
sprpriority = 2

[State 1700, afterimage]
type = AfterImage
trigger1= time = 0
time= 15
framegap = 4
length = 15
palbright = 10,10,10
palcontrast= 98,98,98
trans = Add1

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
anim = 8006
pos = -15,-20
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1700, Run Forward]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
pos = 0,0
anim = 7085
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 1700, 1]
type = VelAdd
trigger1 =1
x = 5

[State 1700, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 0, 4

[State 1700, 1]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 6
value = 0, 3

[State 1700, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 3, 1

[State 1700, 1]
type = VelSet
trigger1 = p2bodydist X <= 80
x = 30

[State 1700, 1]
type = Changestate
trigger1 = p2bodydist X <= 40
value = 1701

[Statedef 1701]
type    = S
movetype= A
physics = S
juggle  = 8
;velset = 0,0
anim = 1700
ctrl = 0
sprpriority = 2

[State 1701, 1]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 5
value = 0, 3

[State 1701, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 20,2
getpower = 0
givepower = 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,11
sparkno = S7001+var(22)
sparkxy = -10,-50
hitsound   = s1,1
guardsound = s6,0
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

[State 1701, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 20,3
getpower = 0
givepower = 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 9,14
sparkno = S7001+var(22)
sparkxy = -10,-70
hitsound   = s1,2
guardsound = s6,0
ground.type = High		;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5		;Time that the opponent slides back
ground.hittime  = 12		;Time opponent is in hit state
ground.velocity = -4		;Velocity at which opponent is pushed
airguard.velocity = -1,0	;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High			;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3		;X-velocity at which opponent is pushed,					;Y-velocity at which opponent is pushed
air.hittime = 12

[State 1701, 4]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 30,3
getpower = 0
givepower = 0
animtype  = hard
air.animtype = Back
fall.animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 13,13
sparkno = S7002+var(22)
sparkxy = -40,-10
hitsound   = s1,3
guardsound = s6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 19
ground.velocity = -11
guard.velocity = -11
air.velocity = -2,-4
airguard.velocity = -2,-4
fall = 1
fall.recover =0
fall.damage = 10
ground.cornerpush.veloff = -13
guard.cornerpush.veloff = -13
air.type = low
fall.envshake.time = 12
fall.envshake.freq = 100
fall.envshake.ampl = -2

[State 1701, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Dio
[Statedef 1800]
type = S
ctrl = 0
anim = 1800
velset = 0,0
poweradd = 100

[State 1800, camera]
type = helper
trigger1 = time = 1
name = "caméra"
postype = left
pos = 50, 0
stateno = 9999
;supermovetime = -1
keyctrl = 0
ownpal = 1

[State 1800, 1]
type = helper
trigger1 = animelem = 3
trigger1 = numhelper(1810) = 0
ID = 1810
name = "dio"
postype = p1
pos =-200,5
stateno = 1810
keyctrl = 0
ownpal = 1

[State 1800, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 3, 0

[State 1800, 3]
type = ChangeState
trigger1 = time = 50
value = 1801
ctrl = 0

;---------------------------------------------------------------------------

[Statedef 1801]
type = S
movetype = A
physics = S
ctrl = 0
juggle = 15
anim = 0

[State 1801,st ]
type = ChangeState
trigger1 = time = 70
trigger2 = numhelper(1810) = 0 || numhelper(1820) = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Algethi
[Statedef 1802]
type = S
ctrl = 0
anim = 1800
velset = 0,0
poweradd = 100

[State 1802, camera]
type = helper
trigger1 = time = 1
name = "caméra"
postype = left
pos = 50, 0
stateno = 9999
;supermovetime = -1
keyctrl = 0
ownpal = 1

[State 1802, 1]
type = helper
trigger1 = animelem = 3
trigger1 = numhelper(1820) = 0
ID = 1820
name = "algethi"
postype = p1
pos =-200,5
stateno = 1820
keyctrl = 0
ownpal = 1

[State 1800, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 3, 0

[State 1800, 3]
type = ChangeState
trigger1 = time = 50
value = 1801
ctrl = 0

;---------------------------------------------------------------------------
; Dio (helper)
[Statedef 1810]
type = S
movetype = I
physics = S
anim = 1810
velset = 0, 0
sprpriority = 1
ctrl = 0

[State 1810, 1]
type = AfterImage
trigger1 = AnimElem = 3
time = 5
framegap = 2
length = 10
palbright = 10,10,10
palcontrast= 98,98,98
trans = Add1

[State 1810, Explod]
type = Explod
trigger1 = AnimElem = 3
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

[State 1810, Run Forward]
type = Explod
trigger1 = AnimElem = 3
postype = p1
pos = 5,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 1810, 2]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1812
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
ignorehitpause = 1

[State 1810, 3]
type = VelAdd
trigger1 = 1
x = 3

[State 1810, 4]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 6
value = 3, 0

[State 1810, 5]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 8
value = 3, 1

[State 1810, 6]
type = ChangeState
trigger1 = p2bodydist x < 50
value = 1811
ctrl = 0

;---------------------------------------------------------------------------

[Statedef 1811]
type = S
movetype = A
physics = S
anim = 1811
velset = 0, 0
sprpriority = 1
ctrl = 0

[State 1811, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1812
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
ignorehitpause = 1

[State 1811, 1]
type = VarSet
trigger1 = animelem = 1
var(15) = 0

[State 1811, 1]
type = VarSet
trigger1 = movehit
var(15) = 1

;[State 1811, sp]
;type = superpause
;trigger1 = time = 0
;darken = -1
;anim = -1
;time = 65

[State 1811, 1]
type = HitDef
trigger1 = animelem = 7
forcestand = 1
attr = s, sp
damage = 20,2
sparkno = s7002+parent,var(22)
sparkxy = 0,-70
getpower = 0
givepower = 0
guardflag = ma
hitsound   = s1,4
guardsound = s6,0
pausetime = 0,12
palfx.time = 120

[State 1811, 1]
type = HitDef
trigger1 = animelem = 8
forcestand = 1
attr = s, sp
damage = 20,2
sparkno = s7002+parent,var(22)
sparkxy = 0,-70
getpower = 0
givepower = 0
guardflag = ma
hitsound   = s1,4
guardsound = s6,0
pausetime = 0,12
palfx.time = 120
ground.type = low
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -8
air.animtype = light
air.velocity = -4,-5
air.juggle = 2
fall = 1
fall.recover = 0

[State 1811, snd]
type = PlaySnd
trigger1 = animelem = 1
value = 14,0

[State 1811, 3]
type = ChangeState
trigger1 = animtime = 0
value = 1812
ctrl = 0

[State 1811, 3]
type = ChangeState
trigger1 = moveguarded
value = 1812
ctrl = 0

[State 1811, 3]
type = ChangeState
triggerall = animelem = 14
trigger1 = var(15) = 0
value = 1812
ctrl = 0

;---------------------------------------------------------------------------

[Statedef 1812]
type = S
movetype = A
physics = S
anim = 1810
velset = 0, 0
sprpriority = 1
ctrl = 0

[State 1812, 1]
type = Turn
trigger1 = time = 0

[State 1812, 2]
type = nothitby
trigger1 =1
value = SCA

[State 1812, 3]
type = VelAdd
trigger1 = 1
x = 2

[State 1812, 4]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 6
value = 3, 0

[State 1812, 5]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 8
value = 3, 1

[State 1812, byebye]
type = Destroyself
trigger1 = time =80

;---------------------------------------------------------------------------
; Algethi (helper)
[Statedef 1820]
type = S
movetype = A
physics = S
anim = 1820
velset = 0, 0
sprpriority = 3
ctrl = 0

[State 1820, 1]
type = AfterImage
trigger1 = AnimElem = 2
time = 10
framegap = 2
length = 10
palbright = 10,10,10
palcontrast= 98,98,98
trans = Add1

[State 1820, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 8006
pos = -35,-20
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

[State 1820, Run Forward]
type = Explod
trigger1 = AnimElem =3
postype = p1
pos = 5,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 1820, 2]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1822
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
ignorehitpause = 1

[State 1820, 3]
type = VelAdd
trigger1 = 1
x = 2

[State 1820, 4]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 6
value = 3, 0

[State 1820, 5]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 8
value = 3, 1

[State 1820, 6]
type = ChangeState
trigger1 = ParentDist X < 0
value = 1821
ctrl = 0

;---------------------------------------------------------------------------

[Statedef 1821]
type = S
movetype= A
physics = S
poweradd= 100
anim = 1821
ctrl = 0

[State 1821, 1]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1812
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
ignorehitpause = 1

[State 1821, snd]
type = playsnd
trigger1 = time = 0
value = 15,0
channel = 0

[State 1821, dust]
type = Explod
trigger1 = time = 0
anim = 7084
supermovetime = 22
ontop = 1
removeongethit = 1

[State 1821,helper]
type = Helper
trigger1 = StateNo = 1821
trigger1 = animelem = 2
ID = 8016
postype = P1
pos = 50,0
name = "tornadostrong"
stateno = 8016
sprpriority = 4
facing = 1
;pausemovetime = 1

[State 1821, changestate]
type = Changestate
trigger1 = AnimTime = 0
value = 1822
ctrl = 1

;---------------------------------------------------------------------------

[Statedef 1822]
type = S
movetype = A
physics = S
anim = 1820
velset = 0, 0
sprpriority = 1
ctrl = 0

[State 1822, 1]
type = Turn
trigger1 = time = 0

[State 1822, 2]
type = nothitby
trigger1 = 1
value = SCA

[State 1822, 3]
type = VelAdd
trigger1 = 1
x = 2

[State 1822, 4]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 6
value = 3, 0

[State 1822, 5]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 8
value = 3, 1

[State 1822, byebye]
type = Destroyself
trigger1 = time =80

;===================================================
;Supers
;===================================================

;---------------------------------------------------------------------------
;Great Mountain Smasher 1
[Statedef 3000]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3000
velset = 0,0
poweradd = -1000

[State 3000, sfondo]
type = Explod
trigger1 = time = 0
scale = 0.6, 0.6
pos = -90,-140
anim = 8060
ID = 8060
postype = p1
removetime = 80
supermove = 1
sprpriority = -2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3000, 1]
type = Superpause
trigger1 = time = 1
anim = s7008+var(22)
sound = s9,1
pos = 0,-58
time = 60
movetime = 60
pausebg = 0
darken = 1

[State 3000, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 10
channel = 0

[State 3000, Explod]
type = Explod
trigger1 = time = 0
anim = 8071
postype = back
pos = 0, 0
sprpriority = -5
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 120
removetime = 120

[State 3000, Explod]
type = Explod
trigger1 = time = 0
anim = 8070
postype = back
pos = 0, 0
sprpriority = -4
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 110
supermove = 110

[State 3000, Sol1]
type = Explod
trigger1 = time = 0
anim = 8030+var(22)
pos = 0,0
postype = p1
supermovetime = 54
bindtime = 54
sprpriority = -2
removetime = 54
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3000, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 0

[Statedef 3001]
type = S
movetype = A
physics = S
ctrl = 0
anim = ifelse(var(25) = 1,3002,3001)

[State 3001, Explod]
type = Explod
trigger1 = AnimElem = 1
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

[State 3001, Run Forward]
type = Explod
trigger1 = AnimElem = 1
postype = p1
pos = 5,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 3001, 2]
type = PosAdd
triggerall = var(25) = 1
trigger1 = movecontact
x = p2bodydist X -15

[State 3001, 2]
type = VelSet
trigger1 = time >= 0
x = 10

[State 3001, 2]
type = VelSet
trigger1 = movecontact
x = 0

[State 3001, 2]
type = ChangeAnim
triggerall = Animelem != 3
trigger1 = movecontact
value = ifelse(var(25) = 1,3002,3001)
elem = 3

[State 3001, hit]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
guardflag = ma
animtype = hard
air.animtype = hard
fall.animtype = back
damage = 100,10
pausetime = 0,5
sparkno = S7003+var(22)
sparkxy = -30,-95
hitsound   = s1,4
guardsound = s6,0
ground.slidetime = 0
ground.velocity = -12,-9
air.velocity = -12,-9
fall = 1
fall.recover = 0
p2stateno = 1025
getpower = 0
givepower = 0
palfx.time = 50
palfx.mul = 255,255,255
palfx.add = (0+var(22)*2),127,255
palfx.sinadd = 150,50,50,15
palfx.color = 1
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

[State 3001, 2]
type = Projectile
triggerall = var(25) != 1
trigger1 = AnimElem = 1
projanim = 8035+var(22)
projhitanim = -1
projpriority = 2
projshadow = 68,68,68
offset = 20,-10
velocity = 8,0
guardflag = Ma
attr = S, SP
damage = 100,10
getpower = 0
givepower = 0
animtype = hard
hitflag = MAF
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 35, -75
hitsound   = -1
guardsound = -1
ground.type = low
ground.slidetime = 34
ground.hittime  = 20
ground.velocity = -9
air.animtype = light
air.velocity = 0,0
air.juggle = 2
fall = 1
fall.recover = 0

[State 3001, end state]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Great Mountain Smasher 2
[Statedef 3100]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3100
velset = 0,0
poweradd = -2000

[State 3100, sfondo]
type = Explod
trigger1 = time = 0
scale = 0.6, 0.6
pos = -90,-140
anim = 8060
ID = 8060
postype = p1
removetime = 80
supermove = 1
sprpriority = -2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3100, 1]
type = Superpause
trigger1 = time = 1
anim = s7008+var(22)
sound = s9,1
pos = 0,-58
time = 60
movetime = 60
pausebg = 0
darken = 1

[State 3100, snd]
type = PlaySnd
trigger1 = time = 0
value = 13, 10
channel = 0

[State 3100, Explod]
type = Explod
trigger1 = time = 0
anim = 8071
postype = back
pos = 0, 0
sprpriority = -5
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 180
removetime = 180

[State 3100, Explod]
type = Explod
trigger1 = time = 0
anim = 8070
postype = back
pos = 0, 0
sprpriority = -4
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 170
supermove = 170

[State 3100, Sol1]
type = Explod
trigger1 = time = 0
anim = 8030+var(22)
pos = 0,0
postype = p1
supermovetime = 54
bindtime = 54
sprpriority = -2
removetime = 54
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3100, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101
ctrl = 0

[Statedef 3101]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3101

[State 3101, Explod]
type = Explod
trigger1 = AnimElem = 1
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

[State 3101, Run Forward]
type = Explod
trigger1 = AnimElem = 1
postype = p1
pos = 5,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 3101, 2]
type = VelSet
trigger1 = animelem = 3
x = 20

[State 3101, 2]
type = VelAdd
trigger1 = movehit
x = 1

[State 3101, hit]
type = HitDef
trigger1 = 1
attr = S,HA
hitflag = MAF
guardflag = ma
animtype = hard
air.animtype = back
fall.animtype = back
damage = 20,2
pausetime = 2,2
sparkno = S7003+var(22)
sparkxy = -30,-95
hitsound   = s1,1
guardsound = s6,0
ground.slidetime = 0
ground.velocity = -2,-4
air.velocity = -2,-3
fall = 1
fall.recover = 0
getpower = 0
givepower = 0
palfx.time = 50
palfx.mul = 255,255,255
palfx.add = (0+var(22)*2),127,255
palfx.sinadd = 150,50,50,15
palfx.color = 1

[State 3101, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 3203
pos = 100,-15
postype = p1
facing = 1
vfacing = 1
bindtime = 45
removetime = 45
scale = 0.5,0.5
sprpriority = 3
ontop = 1
ownpal = 1
removeongethit = 1

[State 3101, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Great Mountain Smasher 3 (by Squall)
;Esce di scena
[Statedef 3200]
type = S
movetype = I
physics = S
ctrl = 0
anim = 3200
velset = 0,0
poweradd = -3000

[State 3200, VarSet]
type = VarSet
trigger1 = time = 0
var(14) = 0

[State 3200, sound]
type = PlaySnd
trigger1 = time = 0
value = 3, 0

[State 3200, sound]
type = PlaySnd
trigger1 = time = 0
value = 13, 8
channel = 0

[State 3200, SuperPause]
type = SuperPause
trigger1 = time = 1
time = 245
movetime = 245
darken = 1
anim = s7009+var(22)
sound = s9,1
pos = 0,-58

[State 3200, sound]
type = PlaySnd
trigger1 = Animelem = 15
value = 2,1

[State 3200, VelSet]
type = VelAdd
trigger1 = Time > 150
trigger2 = Animelem = 15
x = -3
y = -0.5

[State 3200, VelSet]
type = VelAdd
triggerall = backedgebodydist <= 25
trigger1 = Animelem = 16
x = -3
y = 1.5

;[State 3200, ScreenBound]
;type = ScreenBound
;trigger1 time >= 0;321
;value = 0
;movecamera = 0,0

[State 3200, ChangeAnim]
type = ChangeAnim
triggerall = Time >= 105
trigger1 = backedgebodydist <= 25
value = 3200
elem = 17

[State 3200, ChangeState]
type = ChangeState
trigger1 = Animelem = 17
value = 3201
ctrl = 0

;-------------------------------------------------
;
[Statedef 3201]
type = s
movetype = i
physics = s
ctrl = 0
anim = 3201
velset = 0,0
sprpriority = 4

[State 3201, Explod]
type = Explod
trigger1 = time = 0
anim = 8072
postype = back
pos = 0, 0
sprpriority = 3
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 142
removetime = 142

[State 3201, Explod]
type = Explod
trigger1 = time = 0
anim = 8070
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

[State 3201, ScreenBound]
type = ScreenBound
trigger1 = time = 1
value = 0
movecamera = 0,0

[State 3201, SuperPause]
type = SuperPause
trigger1 = time = 1
time = 142
movetime = 142
darken = 1
anim = -1

[State 3201, VelSet]
type = PosSet
trigger1 = Animelem = 1
y = 0
x = ifelse(facing = 1,-160,160)

[State 3201, sound]
type = PlaySnd
trigger1 = time = 0
value = 2, 2

[State 3201, sound]
type = PlaySnd
trigger1 = time = 60
value = 13, 11
channel = 0

[State 3201, Run Forward]
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

[State 3201, light]
type = Explod
trigger1 = AnimElem = 20
postype = p1
pos = -20,-60
anim = 8032+var(22)
ID = 8032
sprpriority = 5
supermove = 1
removetime = 50
removeongethit = 1
ownpal = 1
scale = 1,1

[State 3201, sound]
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

[State 3201, sound]
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

[State 3201, ChangeState]
type = ChangeState
trigger1 = time = 142
value = 3202
ctrl = 0

;-------------------------------------------------
;
[Statedef 3202]
type = s
movetype = a
physics = s
ctrl = 0
anim = 3205
velset = 0,0

[State 3202, sound]
type = PlaySnd
trigger1 = time = 0
value = 5, 5

[State 3202, proj]
type = Projectile
trigger1 = time = 5
projanim = 3203
projhitanim = 3204
projpriority = 8
projshadow = 0,0,0
projhits = 1
projscale = 0.5, 0.5
offset = -10,0
velocity = 12,0
guardflag = MA
attr = S, SP
damage = 600,180
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
palfx.add = (0+var(22)*2),127,255
palfx.sinadd = 150,50,50,15
p2stateno = 3203

[State 3202, VarSet]
type = VarSet
trigger1 = Projcontact = 1
var(14) = 1

[State 3202, ChangeAnim]
type = ChangeAnim
trigger1 = var(14) = 1 && anim != 3202
trigger2 = time = 60   && anim != 3202
value = 3202

[State 3202, Explod]
type = Explod
trigger1 = anim = 3202
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

[State 3202, VelSet]
type = PosAdd
triggerall = anim = 3202 && p2life > 0
trigger1 = var(14) = 1
x = p2bodydist X -60
y = 0

[State 3202, VelSet]
type = PosAdd
triggerall = anim = 3202 && p2life > 0
triggerall = var(14) = 0
trigger1 = time = 60
x = frontedgedist
y = 0

[State 3202, ChangeState]
type = ChangeState
triggerall = anim = 3202
trigger1 = time = 150
value = 0
ctrl = 1

;-------------------------------------------------------------
;
[Statedef 3203]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 3203, 1]
type = Turn
trigger1 = time = 0
trigger1 = p2dist x <= 0

[State 3203, 2]
type = VelSet
trigger1 = time = 25
x = -26

[State 3203, snd]
type = PlaySnd
trigger1 = time = 0
value = 5000, 0

[State 3203, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3203, push]
type = PlayerPush
trigger1 = 1
value = 0

[State 3203, anim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 3203, snd]
type = PlaySnd
trigger1 = time > 5
trigger1 = backedgedist <= 20
value = 5100, 0

[State 3203, shake]
type = EnvShake
trigger1 = time > 5
trigger1 = backedgedist <= 20
time = 10
ampl = 4

[State 3203, end]
type = ChangeState
trigger1 = time > 5
trigger1 = backedgedist <= 20
value = 3204

[Statedef 3204]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 3204, nothit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3204, anim]
type = ChangeAnim
trigger1 = time < 7
value = 5030

[State 3204, anim]
type = ChangeAnim
trigger1 = time = 7
value = 5050

[State 3204, vel]
type = VelSet
trigger1 = time = 7
persistent = 0
x =  0.75
y = -6

[State 3204, vel]
type = VelAdd
trigger1 = time >= 7
y = 0.45

[State 3204, shake]
type = EnvShake
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
time = 10
ampl = 3

[State 3204, anim]
type = ChangeAnim
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
value = 5050

[State 3204, end]
type = SelfState
triggerall = time > 7
trigger1 = Vel Y > 0
trigger1 = Pos Y > 15
value = 5100

;---------------------------------------------------------------------------
; Great Mountain Smasher (air)
[Statedef 3300]
type = A
movetype = A
physics = N
juggle = 1
ctrl = 0
anim = 43
velset = 0,0
poweradd = 0

[State 3300]
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

[State 3300]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

[State 3300]
type = VelSet
trigger1 = animelem = 2
trigger1 = BackEdgeBodyDist = [0,20]
x = 0
y = -10

[State 3300]
type = VelSet
trigger1 = animelem = 2
trigger1 = BackEdgeBodyDist = [20,70]
x = 0
y = -11

[State 3300]
type = VelSet
trigger1 = animelem = 2
trigger1 = BackEdgeBodyDist >= 70
x = 0
y = -10

[State 3300]
type = Veladd
trigger1 = time = [10,30]
y = 0.5

[State 3300]
type = ChangeState
trigger1 = time >= 30
value = 3301
ctrl = 1

;--------------------------------------------------------------------------
; 
[Statedef 3301]
type = A
movetype = A
physics = A
juggle = 1
ctrl = 0
anim = 3300
velset = 0,-5
poweradd = -1000

[State 3301, sfondo]
type = Explod
trigger1 = time = 0
scale = 0.6, 0.6
pos = -90,-140
anim = 8060
ID = 8060
postype = p1
removetime = 60
supermove = 1
sprpriority = -2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3301, 1]
type = Superpause
trigger1 = time = 0
anim = s7008+var(22)
sound = s9,1
pos = 0,-58
pausebg = 0
darken = 1

[State 3301, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 13, 10
channel = 0

[State 3301, Explod]
type = Explod
trigger1 = time = 0
anim = 8071
postype = back
pos = 0, 0
sprpriority = -5
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 60
removetime = 60

[State 3301, Explod]
type = Explod
trigger1 = time = 0
anim = 8070
postype = back
pos = 0, 0
sprpriority = -4
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 60
supermove = 60

[State 3301]
type = Explod
trigger1 = AnimElem = 1
anim = 7060+var(22)
ID = 7060
pos = -12,-82
postype = p1
sprpriority = 3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 30
removeongethit = 1

[State 3301]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 4

[State 3301]
type = AfterImage
trigger1 = AnimElem = 2
time = 8
framegap = 2
length = 10
palbright = 10,10,10
palcontrast= 98,98,98
trans = Add1

[State 3301]
type = VelSet
trigger1 = AnimElem = 2
x = 20
y = 15

[State 3301]
type = Explod
trigger1 = AnimElem = 2
anim = 8010+var(22)
ID = 8010
pos = -33,-75
postype = p1
sprpriority = 3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = -1
removeongethit = 1
scale = 2,2

[State 3301]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,3

[State 3301]
type = HitDef
trigger1 = AnimElem = 2
priority = 6
attr = A, HA
damage = 200,20
getpower = 0
givepower = 0
animtype = hard
guardflag = HA
sparkno = s7002+var(22)
sparkxy = 5,-10
hitsound = s1,4
guardsound = s6,0
pausetime = 12,12
ground.hittime = 13
ground.type = low
ground.slidetime = 9
ground.velocity = -10
air.velocity = -3,-3
palfx.time = 50
palfx.mul = 255,255,255
palfx.add = (0+var(22)*2),127,255
palfx.sinadd = 150,50,50,15
palfx.color = 1
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall = 1
fall.recover = 0
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

[State 3301]
type = RemoveExplod
triggerall = NumExplod(8010) >= 1
trigger1 = MoveContact
trigger2 = Pos Y >= -20
ID = 8010

[State 3301]
type = ChangeState
trigger1 = pos Y >= 0
value = 50

;---------------------------------------------------------------------------
;Infernal Great Mountain Smasher
[Statedef 3400]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3400
velset = 0,0
poweradd = -2000

[State 3400, sfondo]
type = Explod
trigger1 = time = 0
scale = 0.6, 0.6
pos = -90,-140
anim = 8060
ID = 8060
postype = p1
removetime = 274
supermove = 1
sprpriority = -2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3400, 1]
type = Superpause
trigger1 = time = 1
anim = s7008+var(22)
sound = s9,1
pos = 0,-58
time = 275
pausebg = 0
darken = 1

[State 3401, envshake]
type = EnvShake
trigger1 = time = 0
time = 274

[State 3400, 1]
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
removetime = 274
supermovetime = 274

[State 3400, 1]
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
removetime = 274
supermovetime = 274

[State 3400, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 9, 3
loop = 1
channel = 8

[State 3400, 4]
type = StopSnd
trigger1 = AnimElem = 2
channel = 8

[State 3400, snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 0
channel = 0

[State 3400, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13, 10
channel = 0

[State 3400, Explod]
type = Explod
trigger1 = time = 0
anim = 8071
postype = back
pos = 0, 0
sprpriority = -5
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 335
removetime = 335

[State 3400, Explod]
type = Explod
trigger1 = time = 0
anim = 8070
postype = back
pos = 0, 0
sprpriority = -4
ownpal = 1
scale = 1,1
ignorehitpause = 1
bindtime = -1
persistent = 0
removeongethit = 1
removetime = 325
supermove = 325

[State 3400, Sol1]
type = Explod
trigger1 = time = 0
anim = 8030+var(22)
pos = 0,0
postype = p1
supermovetime = 269
bindtime = 269
sprpriority = -2
removetime = 269
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3400, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3401
ctrl = 0

[Statedef 3401]
type = S
movetype = A
physics = S
ctrl = 0
anim = ifelse(var(25) = 1,3002,3001)

[State 3401, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
ID = 7010

[State 3401, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
ID = 7020

[State 3401, Explod]
type = Explod
trigger1 = AnimElem = 2
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

[State 3401, Run Forward]
type = Explod
trigger1 = AnimElem = 2
postype = p1
pos = 5,0
anim = 7085
sprpriority = 5
supermove = 1
removetime = 15
removeongethit = 1
ownpal = 1

[State 3401, 2]
type = PosAdd
triggerall = var(25) = 1
trigger1 = movecontact
x = p2bodydist X -15

[State 3401, 2]
type = VelSet
trigger1 = time >= 0
x = 12

[State 3401, 2]
type = VelSet
trigger1 = movecontact
x = 0

[State 3401, 2]
type = ChangeAnim
triggerall = Animelem != 3
trigger1 = movecontact
value = ifelse(var(25) = 1,3002,3001)
elem = 3

[State 3401, hit]
type = HitDef
trigger1 = time = 10
attr = S,HA
hitflag = MAF
guardflag = ma
animtype = hard
air.animtype = hard
fall.animtype = back
damage = 200,20
pausetime = 0,5
sparkno = S7003+var(22)
sparkxy = -30,-95
hitsound   = s1,4
guardsound = s6,0
ground.slidetime = 0
ground.velocity = -12,-9
air.velocity = -12,-9
fall = 1
fall.recover = 0
p2stateno = 1025
getpower = 0
givepower = 0
palfx.time = 50
palfx.mul = 255,255,255
palfx.add = (0+var(22)*2),127,255
palfx.sinadd = 150,50,50,15
palfx.color = 1
envshake.time = 20
envshake.freq = 60
envshake.ampl = -7
envshake.phase = 10
fall.envshake.time = 8
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 10

[State 3401, 2]
type = Projectile
triggerall = var(25) != 1
trigger1 = AnimElem = 2
projanim = 8033+var(22)
projhitanim = -1
projpriority = 2
projshadow = 68,68,68
projscale = 1.5,1.5
offset = 20,30
velocity = 10,0
guardflag = Ma
attr = S, SP
damage = 200,20
getpower = 0
givepower = 0
animtype = hard
hitflag = MAF
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 35, -75
hitsound   = -1
guardsound = -1
ground.type = low
ground.slidetime = 34
ground.hittime  = 20
ground.velocity = -9
air.animtype = light
air.velocity = 0,0
air.juggle = 2
fall = 1
fall.recover = 0

[State 3401, end state]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------
;Dio and Algethi Combo Attack (Silver)
[Statedef 3600]
type = S
movetype = A
physics = S
juggle = 4
ctrl = 0
anim = 1800
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

[State 3600, 1]
type = Superpause
trigger1 = time = 1
anim = s7009+var(22)
sound = s9,1
pos = 0,-58
time = 610
movetime = 610
pausebg = 0
darken = 1

;Dio (jump in)
[State 3600, 1]
type = Explod
trigger1 = time = 0
anim = 1813
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 32
removetime = 32
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3600, 1]
type = PlaySnd
trigger1 = time = 32
value = 2, 3

;Dio (super)
[State 3600, 1]
type = Explod
trigger1 = time = 33
anim = 1817
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 578
removetime = 578
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3600, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

;Algethi (jump in)
[State 3600, 1]
type = Explod
trigger1 = time = 20  
anim = 1823
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 32
removetime = 32
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3600, 1]
type = PlaySnd
trigger1 = time = 51
value = 2, 4

;Algethi (super)
[State 3600, 1]
type = Explod
trigger1 = time = 52
anim = 1827
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 568
removetime = 568
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
pos = -1,0
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
pos = 45,18
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
pos = -27,-16
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
anim = 1828

[State 3601, 1]
type = PosAdd
trigger1 = time = 0
x = -45
y = 0

;Sirius (stand)
[State 3601, 1]
type = Explod
trigger1 = time = 0
anim = 0
ID = 0
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
anim = 1812
ID = 1810
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
value = 15, 2
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
value = 15, 0
channel = 0

[State 3601, explode]
type = Explod
trigger1 = time = -0
anim = 8042+var(22)
ID = 8042
pos = 0,0
postype = left
supermovetime=260
bindtime = -1
removetime = 260
removeongethit = 1
sprpriority = -5
supermovetime = 525

[State 3601, sfondo]
type = Explod
trigger1 = time = 255
pos = -320,0
anim = 8045
ID = 8045
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
ID = 1810

;Sirius (jump out)
[State 3602, 1]
type = Explod
trigger1 = time = 0
anim = 1805
ID = 1805
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
anim = 1815
ID = 1815
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
anim = 1825
ID = 1825
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
ID = 1805
anim = 1805
pos = 0,540-(time-60)
postype = p2
facing = -1
shadow = 0,0,0

;Dio (jump)
[State 3602, 2]
type = ModifyExplod
trigger1 = time >= 60
ID = 1815
anim = 1815
pos = -240,540-(time-60)
postype = p2
shadow = 0,0,0

;Algethi (jump)
[State 3602, 2]
type = ModifyExplod
trigger1 = time >= 60
ID = 1825
anim = 1825
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
anim = 8045
ID = 8045
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

;Dio (jump in)
[State 3603, 1]
type = Explod
trigger1 = time = 100
anim = 1813
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 32
removetime = 32
ownpal = 1
shadow = 5,5,5

[State 3603, 1]
type = PlaySnd
trigger1 = time = 131
value = 2, 3

;Dio (stand)
[State 3603, 1]
type = Explod
trigger1 = time = 131
anim = 1812
ID = 1812
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 447
removetime = 447
supermove = 1
ownpal = 1
shadow = 5,5,5

;Algethi (jump in)
[State 3603, 1]
type = Explod
trigger1 = time = 100
anim = 1823
sprpriority = -3
postype = p1
pos = -45,0
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
anim = 1822
ID = 1822
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 426
removetime = 426
supermove = 1
ownpal = 1
shadow = 5,5,5

;Sirius (jump in)
[State 3603, 1]
type = Explod
trigger1 = time = 100
anim = 1803
sprpriority = -3
postype = p1
pos = 0,0
bindtime = 32
removetime = 32
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
;Dio and Algethi Combo Attack (Specter)
[Statedef 3700]
type = S
movetype = A
physics = S
juggle = 4
ctrl = 0
anim = 1800
sprpriority = 2
poweradd = -3000

[State 3700, 1]
type = VarSet
trigger1 = time = 0
var(24) = 0

[State 3700, 1]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = noFG
flag3 = nobardisplay

[State 3700, 1]
type = Superpause
trigger1 = time = 1
anim = s7009+var(22)
sound = s9,1
pos = 0,-58
time = 610
movetime = 610
pausebg = 0
darken = 1

;Dio (jump in)
[State 3700, 1]
type = Explod
trigger1 = time = 0
anim = 1813
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 32
removetime = 32
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3700, 1]
type = PlaySnd
trigger1 = time = 32
value = 2, 3

;Dio (super)
[State 3700, 1]
type = Explod
trigger1 = time = 32
anim = 1817
sprpriority = -3
postype = p1
pos = 30,0
bindtime = 447
removetime = 447
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3700, 1]
type = PlaySnd
trigger1 = time = 0
value = 2, 0

;Algethi (jump in)
[State 3700, 1]
type = Explod
trigger1 = time = 20  
anim = 1823
sprpriority = -3
postype = p1
pos = -45,0
bindtime = 32
removetime = 32
supermove = 1
ownpal = 1
shadow = 5,5,5

[State 3700, 1]
type = PlaySnd
trigger1 = time = 51
value = 2, 4

;Algethi (super)
[State 3700, 1]
type = Explod
trigger1 = time = 52
anim = 1827
sprpriority = -3
postype = p1
pos = -45,0
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
pos = 45,18
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
pos = -27,-16
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
anim = 1822

[State 3701, 1]
type = PosAdd
trigger1 = time = 0
x = -45
y = 0

;Sirius (jump out)
[State 3701, 1]
type = Explod
trigger1 = time = 0
anim = 1805
ID = 1805
sprpriority = 3
postype = p1
pos = 45,0
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
anim = 1810
ID = 1810
sprpriority = -3
postype = p1
pos = 75,0
bindtime = 568
removetime = 568
supermove = 1
ownpal = 1
shadow = 5,5,5

;Dio (run)
[State 3701, 1]
type = ModifyExplod
trigger1 = time >= 0
ID = 1810
anim = 1810
pos = 75+(10*time+1),0
postype = p1
shadow = 0,0,0

[State 3701, 1]
type = RemoveExplod
trigger1 = time = 30
ID = 1810

[State 3701, 1]
type = PlaySnd
triggerall = NumExplod(1810) > 0
trigger1 = animelem = 1
trigger2 = animelem = 3
value = 3, 0

[State 3701, 1]
type = PlaySnd
triggerall = NumExplod(1810) > 0
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
anim = s7009
time = 30
darken = 1
sound = S9,1
movetime = 30

;Dio (super1)
[State 3701, 2]
type = Explod
trigger1 = time = 30
anim = 1818
ID = 1818
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
value = 14,1
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
anim = 1827

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
anim = 1829

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
value = 15,1
channel = 0

[State 3703, 1]
type = PlaySnd
trigger1= Animelem = 6
value = 5,8

[State 3703, 1]
type = Explod
trigger1 = AnimElem = 6
pos = -50,0
anim = 8045
ID = 8045
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

[State 3703, 1]
type = Explod
trigger1 = AnimElem = 6
anim = 8046
postype = p1
pos = -20,-250

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

[State 3703, 2]
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
anim = 3201
velset = 0,0
sprpriority = 4

[State 3704, 1]
type = RemoveExplod
trigger1 = time = 0
ID = 1818

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
anim = 8042+var(22)
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
value = 2, 2

[State 3704, sound]
type = PlaySnd
trigger1 = time = 60
value = 13, 11
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
anim = 8032+var(22)
ID = 8032
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
anim = 3205
velset = 0,0

[State 3705, VarSet]
type = VarSet
trigger1 = time = 0
var(24) = 1

;Dio (stand)
[State 3705, 1]
type = Explod
trigger1 = time = 0
anim = 1812
ID = 1812
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
anim = 1822
ID = 1822
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
projanim = 3203
projhitanim = 3204
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
palfx.add = (0+var(22)*2),127,255
palfx.sinadd = 150,50,50,15
p2stateno = 3711

[State 3705, VarSet]
type = VarSet
trigger1 = Projcontact = 1
var(14) = 1

[State 3705, ChangeAnim]
type = ChangeAnim
trigger1 = var(14) = 1 && anim != 3202
trigger2 = time = 60   && anim != 3202
value = 3202

[State 3705, Explod]
type = Explod
trigger1 = anim = 3202
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
triggerall = anim = 3202 && p2life > 0
trigger1 = var(14) = 1
x = p2bodydist X -60
y = 0

[State 3705, VelSet]
type = PosAdd
triggerall = anim = 3202 && p2life > 0
triggerall = var(14) = 0
trigger1 = time = 60
x = frontedgedist
y = 0

[State 3705, ChangeState]
type = ChangeState
triggerall = anim = 3202
trigger1 = time = 150
value = 0
ctrl = 1

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

;---------------------------------------------------------------------------
; Tornado (helper)
[Statedef 8016]
type = S
movetype = A
physics = N
juggle  = 10
ctrl = 0
anim = 8016
sprpriority = 4

[State 8016, 3]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 8016, 4]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 8010
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 8016, 5]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 8016, shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8016, snd]
type = playsnd
trigger1 = time = 0
value = 5,6

[State 8016, tornadostrong]
type = HitDef
trigger1 = time = 0
attr = S,SA
damage = 80,8
getpower = 0
givepower = 0
animtype  = Medium
hitflag= MAF
guardflag = MA
hitsound = S1, 2
guardsound = S6, 0
ground.velocity = -4, -10
air.velocity = -4, -10
pausetime = 1,5
guard.pausetime = 1,35
sparkno = -1
sparkxy = -10,-55
fall = 1
fall.recover = 0

[State 8016, snd]
type = playsnd
trigger1 = movehit = 1 || moveguarded = 1
value = 5,6

[State 8016, destroy]
type = Destroyself
trigger1 = time = 52

;-------------------------------------------------------------
;
[Statedef 9999]
type = s
movetype = a
physics = s
anim = 9999
juggle = 0
velset = 0,0
ctrl = 0

[State 9999, 1]
type = Destroyself
trigger1 = time = 1

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
triggerall = name = "siriusS" && palno = 5
trigger1 = 1
source = 1,1
dest = 1,13

[State -2, Silver Version]
type = RemapPal
triggerall = name = "siriusS" && palno = 11
trigger1 = 1
source = 1,1
dest = 1,14

[State -2, Silver Version]
type = VarSet
triggerall = roundno >= 1
trigger1 = name = "sirius" && palno != 5 || name = "sirius" && palno != 11
trigger2 = name = "siriusS"
var(22) = 0

[State -2, Specter Version]
type = VarSet
triggerall = roundno >= 1
trigger1 = name = "sirius" && palno = 5 || name = "sirius" && palno = 11
trigger2 = name = "siriusH"
var(22) = 100

[State -2, Constants]
type = AttackMulSet
trigger1 = name = "siriusH"
value = 1.09

[State -2, Constants]
type = DefenceMulSet
trigger1 = name = "siriusH"
value = 1.09

;---------------------------------------

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
value = 10,0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5010
value = 10,0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5011
trigger2 = anim = 5012
value = 10,0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 10,0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5022
value = 10,0

[State -2, Random sound]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5100
trigger1 = Alive = 1
value = 10,0

[State -2, Helper]
type = ChangeState
triggerall = stateno != [1810,1812]
trigger1 = ishelper(1810)
value = 1812

;---------------------------------------

;stand combo
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220)
trigger1 = (movecontact)
value = 240
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 220) && (movecontact)
value = 200
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 240) && (movecontact)
value = 210
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact)
value = 1501

;stand combo
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210)
trigger1 = (movecontact)
value = 230
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 210) && (movecontact)
value = 200
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 230) && (movecontact)
value = 1200

;stand combo
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
value = 200
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 250) && (movecontact)
trigger1 = power >= 1000
value = 3000

;stand combo
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200)
trigger1 = (movecontact)
value = 240
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 200) && (movecontact)
value = 230
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 240) && (movecontact)
trigger1 = power >= 1000
value = 3000

;3 punches 
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
value = 220

;3 punches 
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 210
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 210) && (movecontact) 
value = 220

;3 punches 
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
value = 220

;3 punches 
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 200
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 200) && (movecontact) 
value = 210

;3 punches 
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 200
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 210) && (movecontact) 
value = 220

;3 punches 
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220) 
trigger1 = (movecontact)
value = 210
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 220) && (movecontact) 
value = 210

;3 punches 
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
value = 210

;3 punches 
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

;3 kicks 
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 250) 
trigger1 = (movecontact)
value = 240

;3 kicks 
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230) 
trigger1 = (movecontact)
value = 240
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 230) && (movecontact) 
value = 250

;3 kicks 
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 250) 
trigger1 = (movecontact)
value = 240
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 251) && (movecontact) 
value = 250

;3 kicks 
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

;---------------------------------------

;crouch punches
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400) 
trigger1 = (movecontact)
value = 410
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 400) && (movecontact) 
value = 420

;crouch punches
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 410) 
trigger1 = (movecontact)
value = 410
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 410) && (movecontact) 
value = 420

;crouch kicks
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

;crouch kicks
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 440

;crouch kicks
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 450

;---------------------------------------

;air combos
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 610

;air combos
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 620

;air combos
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 610

;air combos
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 640

;air combos
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 650

;air combos
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 650) 
trigger1 = (movecontact)
value = 610

;air combos
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 600

;air combos
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 610
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 600) && (movecontact) 
value = 620

;air combos
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 600
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 610) && (movecontact) 
value = 620

;air combos
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 600
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 620) && (movecontact) 
value = 610

;air combos
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 610
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 610) && (movecontact) 
value = 620

;air combos
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 600
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 600) && (movecontact) 
value = 620

;air combos
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600) 
trigger1 = (movecontact)
value = 640

;===================================================
;Specials
;===================================================

;Cosmo Charge
[State -2]
type = ChangeState
value = 900
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0,89])
trigger1 = (P2bodydist X >= 150) &&  (power <= 2999) && (prevstateno != 5120) && (p2movetype != H)

;Throw
[State -2]
type = ChangeState
value = 800
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = S)
trigger1 = (p2bodydist X <= 30) && (P2MoveType !=A) && (random = [90,134])

;Smasher
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (p2movetype != H)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [135, 179])
trigger1 = (P2bodydist X >= 80) && (P2bodydist X <= 170) && (prevstateno != 5120)
value = 1000

;Fireball (air)
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [180, 224])
trigger1 = (P2bodydist X >= 70) &&  (p2bodydist X <= 170) && (prevstateno != 5120)
value = 1100

;Smasher
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (p2movetype != H)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [225, 269])
trigger1 = (P2bodydist X >= 80) && (P2bodydist X <= 170) && (prevstateno != 5120)
value = 1200

;Smasher (air)
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (p2movetype != H)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (p2statetype != A) && (ctrl) && (random = [270, 314])
trigger1 = (P2bodydist X >= 60) && (P2bodydist X <= 90) && (Pos Y <= -75) && (prevstateno != 5120)
value = 1300

;Cosmic Counterattack
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [315, 359])
trigger1 = (P2bodydist X <= 60) && (prevstateno != 5120) && (p2movetype = A)
value = 1400

;Super Uppercut
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (p2movetype != H)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [360, 404])
trigger1 =(P2bodydist X > 60) && (P2bodydist X <= 200) && (prevstateno != 5120)
value = 1500

;Super Kick
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (p2movetype != H)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [405, 449])
trigger1 = (P2bodydist X >= 60) && (prevstateno != 5120)
value = 1600

;Wild Combo
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (p2movetype != H)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [450, 494])
trigger1 = (P2bodydist X >= 80) && (prevstateno != 5120)
value = 1700

;Dio
[State -2]
type = ChangeState
triggerall = p2name != "dio"
triggerall = p3name != "dio"
triggerall = p4name != "dio"
triggerall = p2name != "dioS"
triggerall = p3name != "dioS"
triggerall = p4name != "dioS"
triggerall = p2name != "dioH"
triggerall = p3name != "dioH"
triggerall = p4name != "dioH"
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [495, 539])
trigger1 = (P2bodydist X <= 100) && (P2BodyDist X > 60) && (prevstateno != 5120)
value = 1800

;Algethi
[State -2]
type = ChangeState
triggerall = p2name != "algethi"
triggerall = p3name != "algethi"
triggerall = p4name != "algethi"
triggerall = p2name != "algethiS"
triggerall = p3name != "algethiS"
triggerall = p4name != "algethiS"
triggerall = p2name != "algethiH"
triggerall = p3name != "algethiH"
triggerall = p4name != "algethiH"
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != A) && (ctrl) && (random = [540, 584])
trigger1 = (P2bodydist X <= 110) && (P2BodyDist X > 60) && (BackEdgeBodyDist > 10) && (prevstateno != 5120)
value = 1803

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [585,629])
value = 199

;===================================================
;Supers
;===================================================

;Great Mountain Smasher 1
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (p2statetype != L) && (ctrl) && (random = [630, 674])
trigger1 = (P2bodydist X < 160) &&  (P2bodydist X >= 80) && (prevstateno != 5120) && (power >= 1000) && (power <= 2500)
value = 3000

;Great Mountain Smasher 2
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [675, 719])
trigger1 = (P2bodydist X >= 75) && (prevstateno != 5120) && (power >= 2000)
value = 3100

;Great Mountain Smasher 3
[State -2]
type = ChangeState
triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 60) &&(power >= 3000) && (random = [720,764])
value = 3200

;Great Mountain Smasher (air)
[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [765, 809])
trigger1 = (p2bodydist X >= 100) && (prevstateno != 5120) && (power >= 1000)
value = 3300

[State -2]
type = changestate
triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [810, 854])
trigger1 = (p2bodydist X >= 100) && (prevstateno != 5120) && (power >= 1000)
value = 3301

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

[State -3, ScreenBound]
type = ScreenBound
triggerall = Time >= 0
trigger1 = Stateno = [3201,3202]
value = 0
movecamera = 0,1

[State -3, ScreenBound]
type = ScreenBound
triggerall = Time >= 0
trigger1 = Stateno = 3200
value = 1
movecamera = 0,1

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

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 5
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 5
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 10
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 10
value = F3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 5
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 5
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 10
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 10
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
trigger1 = time = 0
time = 20
framegap = 2
length = 10
palbright = 10,10,10
palcontrast= 98,98,98
trans = Add1

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
palcontrast= 98,98,98
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
trigger1 = AnimElem = 2
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

;---------------------------------------

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
type = PlaySnd
triggerall = Var(58) = 0
triggerall = Life <= 0
triggerall = anim = 5148
trigger1 = time = 1
trigger2 = time = 10
trigger3 = time = 20
value = 11, 1

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9