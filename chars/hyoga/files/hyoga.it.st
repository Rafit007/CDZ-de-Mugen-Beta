;---------------------------------------------
;---------------------------------------------
;Cristal 1°Cloth states File By TonyADV
;---------------------------------------------
;---------------------------------------------
;Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
velset = 0,0

[State 170]
type = ChangeAnim
triggerall = Anim != 3403
trigger1 = Time = 0
value = 170

[State 170]
type = ChangeAnim
triggerall = Anim = 3403
trigger1 = Time = 0
value = 3403

[State 170]
type     = AssertSpecial
trigger1 = Time = [0,170]
flag     = roundnotover

[State 170]
type = PlaySnd
triggerall = Anim != 3403
trigger1 = AnimElem = 2
value = 2,2

;-----------------------------
[State 170, VarSnd]
type = VarRandom
triggerall = Anim != 3403
trigger1 = Time = 0
v = 6
range = 1,2

[State 170, VarSnd]
type = PlaySnd
triggerall = Anim != 3403
trigger1 = AnimElem = 1
trigger1 = Var(6) = 1
value = 19,0
channel = 0

[State 170, VarSnd]
type = PlaySnd
triggerall = Anim != 3403
trigger1 = AnimElem = 2
trigger1 = Var(6) = 2
value = 19,1
channel = 0
;-----------------------------

[State 170]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Win state decider
[Statedef 180]
type = S

[State 180]
type = ChangeState
trigger1 = Anim = 3403
value = 170
ctrl = 0

[State 180]
type = ChangeState
triggerall = (Anim != 3302) && (Anim != 3401)
trigger1 = Var(4) = 1
value = 183

[State 180]
type = ChangeState
triggerall = Anim != 3401
triggerall = Var(4) = 0
trigger1 = Anim = 3302
value = 185

[State 180]
type = ChangeState
triggerall = Anim != 3302
triggerall = Var(4) = 0
trigger1 = Anim = 3401
value = 186

[State 180]
type = VarRandom
triggerall = Var(4) = 0
triggerall = (Anim != 3302) && (Anim != 3401)
trigger1 = Time = 0
v = 2
range = 0,99

[State 180]
type = ChangeState
triggerall = Var(4) = 0
triggerall = (Anim != 3302) && (Anim != 3401)
trigger1 = Var(2) = [0,32] 
value = 181

[State 180]
type = ChangeState
triggerall = Var(4) = 0
triggerall = (Anim != 3302) && (Anim != 3401)
trigger1 = Var(2) = [33,65] 
value = 182

[State 180]
type = ChangeState
triggerall = Var(4) = 0
triggerall = (Anim != 3302) && (Anim != 3401)
trigger1 = Var(2) = [66,99] 
value = 184

;-----------------------------------------
;-----------------------------------------
;Win pose 1 
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 181]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 181]
type = PlaySnd
trigger1 = AnimElem = 3
value = 6,0

[State 181, Voce]
type = PlaySnd
trigger1 = AnimElem = 4
value = 17,4
channel = 0

[State 181, Cosmo]
type = Explod
trigger1 = AnimElem = 2
pos = 3,11
anim = 8006
ID = 8006
sprpriority = -2
removetime = -1
ownpal = 1

[State 181]
type     = AssertSpecial
trigger1 = Time = [0,220]
flag     = roundnotover

[State 181]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;-----------------------------------------
;-----------------------------------------
;Win pose 2 - mamma xkè si na puttan?
[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 182]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 182]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0

[State 182, Voce]
type = PlaySnd
trigger1 = AnimElem = 21
value = 18,0
channel = 0

[State 182, Darken]
type = BGPalfx
trigger1 = AnimElem = 2
ignorehitpause = 1
time = 9999
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 182]
type = Explod
trigger1 = AnimElem = 20
anim = 8052
ID = 8052
pos = 10,-200
postype = p1
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 182, sfondo]
type = Explod
trigger1 = AnimElem = 3
pos = -320,0
anim = 6017
ID = 6017
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 182]
type     = AssertSpecial
trigger1 = Time = [0,300]
flag     = roundnotover

[State 182]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Win pose 3
[Statedef 183]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 183]
type = Explod
trigger1 = AnimElem = 2
anim = 8051
ID = 8051
pos = 100,-240
postype = p1
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 183]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 183]
type = PlaySnd
trigger1 = AnimElem = 3
value = 6,0

[State 183, Voce]
type = PlaySnd
trigger1 = time = 1
value = 35,4
channel = 0

[State 183, Cosmo]
type = Explod
trigger1 = AnimElem = 2
pos = 3,11
anim = 8006
ID = 8006
sprpriority = -2
removetime = -1
ownpal = 1

[State 183]
type     = AssertSpecial
trigger1 = Time = [0,200]
flag     = roundnotover

[State 183]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Win pose 4
[Statedef 184]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 184, stelle]
type = Explod
trigger1 = Time = 0
postype = back
pos = 0,0
anim = 6016
ID = 6016
sprpriority = -5
removetime = -1

[State 184, costellazione]
type = Explod
trigger1 = Time = 0
postype = back
pos = 100,100
anim = 6015
ID = 6015
sprpriority = -4
removetime = -1

[State 184, sfondo neve]
type = Explod
trigger1 = Time = 0
pos = -320,0
anim = 6017
ID = 6017
postype = right
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 184]
type = PlaySnd
trigger1 = AnimElem = 2
value = 17,3
channel = 0

[State 184]
type     = AssertSpecial
trigger1 = Time = [0,500]
flag     = roundnotover
flag2	 = nomusic
flag3	 = nobardisplay

[State 184]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;WinPose Fatality
[Statedef 185]
type = S
ctrl = 0
velset = 0,0

[State 185]
type = AssertSpecial
trigger1 = Time = [0,520]
flag = roundnotover

[State 185]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 185]
type = Explod
trigger1 = Time = 30
anim = 8025
id = 8025
pos = 150,-220
postype = p1
removetime = 490
sprpriority = -1
bindtime = -1
ownpal = 1

[State 185]
type = PlaySnd
trigger1 = Time = 63
value = 18,1

[State 185]
type = AssertSpecial
trigger1 = Time = [63,470]
flag = nomusic

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;WinPose Desperate
[Statedef 186]
type = S
ctrl = 0
velset = 0,0
anim = 3402

[State 186]
type = AssertSpecial
triggerall = Life > 0
triggerall = (!WinTime) && (!LoseTime) && (!DrawGame)
trigger1 = Time = [0,410]
flag = roundnotover

[State 186]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 186]
type = RemoveExplod
trigger1 = Time = 0
ID = 8033

[State 186]
type = PlaySnd
triggerall = Life > 0
triggerall = (!WinTime) && (!LoseTime) && (!DrawGame)
trigger1 = Time = 0
value = 10,6

[State 186]
type = Explod
triggerall = Life > 0
triggerall = (!WinTime) && (!LoseTime) && (!DrawGame)
trigger1 = Time = 0
pos = -320,0
anim = 6017
ID = 6017
postype = right
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = -1

[State 186]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,3

[State 186]
type = EnvShake
trigger1 = AnimElem = 4
time = 10
freq = 50
ampl = 2

[State 186]
type = ChangeState
triggerall = Time = 80
trigger1 = Life <= 0
trigger2 = (WinTime) || (LoseTime) || (DrawGame)
value = 5150
ctrl = 0

[State 186]
type = Explod
triggerall = Life > 0
triggerall = (!WinTime) && (!LoseTime) && (!DrawGame)
trigger1 = Time = 80
anim = 8032
ID = 8032
pos = 150,-220
postype = p1
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
facing = -1

[State 186]
type = PlaySnd
triggerall = Life > 0
triggerall = (!WinTime) && (!LoseTime) && (!DrawGame)
trigger1 = Time = 115
value = 35,5

[State 186]
type = AssertSpecial
triggerall = Life > 0
triggerall = (!WinTime) && (!LoseTime) && (!DrawGame)
trigger1 = Time = [115,390]
flag = nomusic

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;intro state decider
[Statedef 191]
type = S
ctrl = 0
velset = 0,0

[State 191, VS Bronze]
type = ChangeState
trigger1 = p2name = "shun" || p4name = "shun"
trigger2 = p2name = "seiya" || p4name = "seiya"
trigger3 = p2name = "shiryu" || p4name = "shiryu"
trigger4 = p2name = "ikki" || p4name = "ikki"
trigger5 = p2name = "ichi" || p4name = "ichi"
trigger6 = p2name = "jabu" || p4name = "jabu"
trigger7 = p2name = "ban" || p4name = "ban"
trigger8 = p2name = "geki" || p4name = "geki"
trigger9 = p2name = "nachi" || p4name = "nachi"
value = 193

[State 191, VS Bronze]
type = ChangeState
trigger1 = p2name = "aldebaran" || p4name = "aldebaran"
value = 194

[State 191]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 191]
type = ChangeState
trigger1 = Var(2) = [0,49]
value = 192

[State 191]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 194

;------------------------------------
; Intro
[Statedef 192]
type = S
ctrl = 0
anim = 197
velset = 0,0

[State 192]
type = AssertSpecial
trigger1 = Time = [0,497]
flag = Intro

[State 192] 
type = AssertSpecial
trigger1 = time = [0,497]
flag = nobardisplay

[State 192]
type = PlaySnd
trigger1 = AnimElem = 15
value = 12,0

[State 192]
type = PlaySnd
trigger1 = AnimElem = 18
value = 0,2

[State 192]
type = PlaySnd
trigger1 = AnimElem = 48
value = 4,1

[State 192]
type = PlaySnd
trigger1 = AnimElem = 52
value = 4,2

[State 192]
type = PlaySnd
trigger1 = AnimElem = 57
value = 4,3

[State 192]
type = PlaySnd
trigger1 = AnimElem = 61
value = 4,1

[State 192]
type = PlaySnd
trigger1 = AnimElem = 69
value = 4,3

[State 192]
type = PlaySnd
trigger1 = AnimElem = 73
value = 4,4

[State 192]
type = PlaySnd
trigger1 = AnimElem = 77
value = 4,5

[State 192]
type = PlaySnd
trigger1 = AnimElem = 82
value = 4,6

[State 192]
type = PlaySnd
trigger1 = AnimElem = 86
value = 4,5

[State 192]
type = PlaySnd
trigger1 = AnimElem = 91
value = 4,6

[State 192]
type = PlaySnd
trigger1 = AnimElem = 101
value = 2,2

[State 192, scrigno1]
type = Explod
trigger1 = AnimElem = 1
pos = 55,3
anim = 192
sprpriority = 5

[State 192, scrigno2]
type = Explod
trigger1 = AnimElem = 1
pos = 55,3
anim = 193
sprpriority = -2

[State 192]
type = PlaySnd
trigger1 = Time = 80
value = 5,7

[State 192, stelle]
type = Explod
trigger1 = AnimElem = 14
postype = back
pos = 0,0
anim = 6016
ID = 6016
sprpriority = -5
removetime = 353

[State 192, costellazione]
type = Explod
trigger1 = AnimElem = 14
postype = back
pos = 100,100
anim = 6015
ID = 6015
sprpriority = -4
removetime = 353

[State 192]
type = PlaySnd
trigger1 = time = 130
value = 2,1

[State 192, scrigno luce]
type = Explod
trigger1 = time = 85
pos = 55,3
anim = 194
sprpriority = 6

[State 192]
type = PlaySnd
trigger1 = time = 144
value = 5,0

[State 192, luce Cloth1]
type = Explod
trigger1 = time = 144
pos = 56,2
anim = 1951
sprpriority = 4

[State 192, luce Cloth2]
type = Explod
trigger1 = time = 144
pos = 56,2
anim = 1952
sprpriority = 2

[State 192, cloth1]
type = Explod
trigger1 = time = 144
pos = 55,3
anim = 1911
ID = 1911
sprpriority = 3
removetime = 96

[State 192, cloth2]
type = Explod
trigger1 = time = 240
pos = 55,-108
anim = 1912
ID = 1912
sprpriority = 5
removetime = 100

[State 192]
type = PlaySnd
trigger1 = time = 240
value = 4,0

[State 192, removeEX]
type = RemoveExplod
triggerall = NumExplod(1912) >= 1
trigger1 = AnimElem = 47
ID = 1912

[State 192, cloth3]
type = Explod
trigger1 = AnimElem = 47
pos = 55,-108
anim = 1913
ID = 1913
sprpriority = 5

[State 192, Spause]
type = Explod
trigger1 = AnimElem = 41
pos = 0,-150
anim = 6000
sprpriority = -8

[State 192, Darken]
type = BGPalfx
triggerAll = time >= 100
triggerAll = time <= 490
trigger1 = 1
ignorehitpause = 1
time = 5
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 192]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;------------------------------------
;------------------------------------
;------------------------------------
; Intro vs Bronze Saints
[Statedef 193]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 193]
type = AssertSpecial
trigger1 = Time = [0,880]
flag = Intro

[State 193] 
type = AssertSpecial
trigger1 = time = [0,560]
flag = nobardisplay

[State 193]
type = PlaySnd
trigger1 = AnimElem = 106
value = 17,1
channel = 0

[State 193, Cosmo]
type = Explod
trigger1 = AnimElem = 105
pos = -3,1
anim = 8005
ID = 8005
sprpriority = -1
removetime = 270

[State 192]
type = PlaySnd
trigger1 = AnimElem = 15
value = 12,0

[State 193]
type = PlaySnd
trigger1 = AnimElem = 18
value = 0,2

[State 193]
type = PlaySnd
trigger1 = AnimElem = 48
value = 4,1

[State 193]
type = PlaySnd
trigger1 = AnimElem = 52
value = 4,2

[State 193]
type = PlaySnd
trigger1 = AnimElem = 57
value = 4,3

[State 193]
type = PlaySnd
trigger1 = AnimElem = 61
value = 4,1

[State 193]
type = PlaySnd
trigger1 = AnimElem = 69
value = 4,3

[State 193]
type = PlaySnd
trigger1 = AnimElem = 73
value = 4,4

[State 193]
type = PlaySnd
trigger1 = AnimElem = 77
value = 4,5

[State 193]
type = PlaySnd
trigger1 = AnimElem = 82
value = 4,6

[State 193]
type = PlaySnd
trigger1 = AnimElem = 86
value = 4,5

[State 193]
type = PlaySnd
trigger1 = AnimElem = 91
value = 4,6

[State 193]
type = PlaySnd
trigger1 = AnimElem = 103
value = 2,2

[State 192]
type = PlaySnd
trigger1 = Time = 80
value = 5,7

[State 193, scrigno1]
type = Explod
trigger1 = AnimElem = 1
pos = 55,3
anim = 192
sprpriority = 5

[State 193, scrigno2]
type = Explod
trigger1 = AnimElem = 1
pos = 55,3
anim = 193
sprpriority = -2

[State 193]
type = PlaySnd
trigger1 = time = 130
value = 2,1

[State 193, scrigno luce]
type = Explod
trigger1 = time = 85
pos = 55,3
anim = 194
sprpriority = 6

[State 193]
type = PlaySnd
trigger1 = time = 144
value = 5,0

[State 193, luce Cloth1]
type = Explod
trigger1 = time = 144
pos = 56,2
anim = 1951
sprpriority = 4

[State 193, luce Cloth2]
type = Explod
trigger1 = time = 144
pos = 56,2
anim = 1952
sprpriority = 2

[State 193, cloth1]
type = Explod
trigger1 = time = 144
pos = 55,3
anim = 1911
ID = 1911
sprpriority = 3
removetime = 96

[State 193, cloth2]
type = Explod
trigger1 = time = 240
pos = 55,-108
anim = 1912
ID = 1912
sprpriority = 5
removetime = 100

[State 193]
type = PlaySnd
trigger1 = time = 240
value = 4,0

[State 193, removeEX]
type = RemoveExplod
triggerall = NumExplod(1912) >= 1
trigger1 = AnimElem = 47
ID = 1912

[State 193, cloth3]
type = Explod
trigger1 = AnimElem = 47
pos = 55,-108
anim = 1913
ID = 1913
sprpriority = 5

[State 193, Spause]
type = Explod
trigger1 = AnimElem = 41
pos = 0,-150
anim = 6000
sprpriority = -8

[State 193, Fulmini]
type = Explod
trigger1 = AnimElem = 104
anim = 8015
pos = -3,-2
postype = p1
bindtime = -1
removetime = 33
sprpriority = 2
ownpal = 1

[State 193, SND Fulmini]
type = PlaySnd
trigger1 = AnimElem = 104
value = 5,15

[State 193, Cigno]
type = Explod
trigger1 = AnimElem = 105
pos = -150,-200
anim = 70402
ID = 70402
sprpriority = -5

[State 193, Darken]
type = BGPalfx
triggerAll = time >= 100
triggerAll = time <= 520
trigger1 = 1
ignorehitpause = 1
time = 5
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 193, Croce]
type = Explod
trigger1 = AnimElem = 96
anim = 8017
pos = -3,-28
postype = p1
bindtime = -1
sprpriority = -2
removetime = 54
ownpal = 1

[State 193, Stelle]
type = Explod
trigger1 = AnimElem = 96
anim = 6016
pos = 0,0
postype = back
bindtime = -1
sprpriority = -3
removetime = 54
ownpal = 1

[State 193, SND Croce]
type = PlaySnd
trigger1 = animelem = 96
value = 5,13

[State 193, Flash]
type = EnvColor
trigger1 = AnimElem = 97
value = 255,255,255
under = 0
time = 2

;------------------------------------
;------------------------------------
;------------------------------------
; Intro
[Statedef 194]
type = S
ctrl = 0
anim = 196
velset = 0,0

[State 194]
type = AssertSpecial
trigger1 = Time = [0,142]
flag = Intro

[State 194]
type = PlaySnd
trigger1 = AnimElem = 2
value = 17,5
channel = 0

[State 192, Cosmo]
type = Explod
trigger1 = AnimElem = 2
pos = 1,2
anim = 8016
ID = 8005
sprpriority = -1
removetime = 180

[State 192, Cigno]
type = Explod
trigger1 = AnimElem = 2
pos = -150,-200
anim = 70401
ID = 704021
sprpriority = -5
removetime = 177

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;provocazione state decider
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
trigger1 = Var(2) = [0,49]
value = 198

[State 199]
type = ChangeState
trigger1 = Var(2) = [50,99]
value = 1982

;provocazione 1
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
value = 0,1

[State 198]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0

[State 198,Voce]
type = PlaySnd
trigger1 = AnimElem = 4
value = 17,2
channel = 0

[State 198]
type = ChangeState
trigger1 = Time = 200
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 1981
ctrl = 1

;--------------------------------
;provocazione 2
[Statedef 1982]
type = S
ctrl = 0
anim = 198
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 1982]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 1982]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0

[State 1982,Voce]
type = PlaySnd
trigger1 = time = 25
value = 17,6
channel = 0

[State 1982]
type = ChangeState
trigger1 = Time = 80
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 1981
ctrl = 1

;--------------------------------
;provocazione END
[Statedef 1981]
type = S
ctrl = 0
anim = 199
velset = 0,0
movetype = I
physics = S
sprpriority = 2
poweradd = 0

[State 1981]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Pugno leggero
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
trigger1 = Time = 2
value = 0,0

[State 200]
type = HitDef
trigger1 = time = 0
attr = S, NA                     
damage = 25                  
animtype = Light                 
guardflag = MA                   
hitflag = MAF                    
priority = 3, Hit                
pausetime = 2,9
sparkno = S6010                     
sparkxy = -15, -82              
hitsound   = S1,0
guardsound = S6,0              
ground.type = High               
ground.slidetime = 5             
ground.hittime  = 12             
ground.velocity = -7             
air.velocity = -6,-2
air.type = High                  
air.hittime = 12                 
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 200]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno medio
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
trigger1 = Time = 2
value = 0,1

[State 210]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 35
guardflag = MA
pausetime = 2,9
sparkno = S6011
sparkxy = -15,-80
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -3,-2
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

[State 210]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno forte
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

[State 220]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 220]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 50
guardflag = MA
pausetime = 2,9
sparkno = S6012
sparkxy = -15,-90
hitsound   = S1,2
guardsound = S6,0
ground.type = High 
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7,-2
envshake.time =  15 
envshake.freq = 15     
envshake.ampl = 5  
envshake.phase = 5

[State 220]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno fortissimo
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

[State 225, Velset]
type = VelSet
trigger1 = AnimElem = 6
x = 12

[State 225]
type = Explod
trigger1 = AnimElem = 6
anim = 7025
ID = 7025
pos = 112,-80
postype = p1
sprpriority = 3
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 225]
type = RemoveExplod
triggerall = NumExplod(7025) >= 0
trigger1 = AnimElem = 7
ID = 7025

[State 225]
type = helper
trigger1 = AnimElem = 6
stateno = 6580
ID = 6580
postype = p1
pos = 50,-0
persistent = 0
ownpal = 1
ignorehitpause = 1

[State 225]
type = Explod
trigger1 = AnimElem = 6
pos = 0,0
anim = 6004
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 225]
type = PlaySnd
trigger1 = Time = 8
value = 5,12

[State 225]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Hard
damage    = 45
guardflag = MA
pausetime = 2,9
sparkno = S6014
sparkxy = -15,-80
hitsound   = S1,2
guardsound = S6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7,-2
envshake.time =  15 
envshake.freq = 45    
envshake.ampl = 6 
envshake.phase = 6
Palfx.time          = 6
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200

[State 225]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Calcio leggero
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 235
sprpriority = 2

[State 230]
type = PlaySnd
trigger1 = Time = 5
value = 0,0

[State 230]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = light
damage    = 25
guardflag = MA
pausetime = 0,8
sparkno = S6010
sparkxy = -10,-90
hitsound   = S1,0
guardsound = S6,0
ground.type = High 
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -7
air.velocity = -3,-2
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 230]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Calcio leggero V
[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 235]
type = PlaySnd
trigger1 = Time = 5
value = 0,0

[State 235]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = light
damage    = 20
guardflag = MA
pausetime = 0,8
sparkno = S6010
sparkxy = -10,-55
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -6
air.velocity = -3,-2
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5 
envshake.phase = 5

[State 235]
type = ChangeState
triggerall = PrevStateNo = 144000
trigger1 = AnimTime = 0
value = 144002
ctrl = 0

[State 235]
type = ChangeState
triggerall = PrevStateNo != 144000
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio medio
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
value = 0,1

[State 240]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 35
guardflag = MA
pausetime = 2,9
sparkno = S6011
sparkxy = -10,-90
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3,-2
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

[State 240]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio medio V
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
type = PlaySnd
trigger1 = Time = 5
value = 0,1

[State 245]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 2,9
sparkno = S6010
sparkxy = -10,-55
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -5,-2
envshake.time =  10 
envshake.freq = 10     
envshake.ampl = 5  
envshake.phase = 5

[State 245]
type = ChangeState
triggerall = PrevStateNo = 144002
trigger1 = AnimTime = 0
value = 144003
ctrl = 0

[State 245]
type = ChangeState
triggerall = PrevStateNo != 144002
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio forte
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
value = 0,2

[State 250]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = hard
damage    = 45
guardflag = MA
pausetime = 2,9
sparkno = S6012
sparkxy = -10,-58
hitsound   = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15 
envshake.freq = 45    
envshake.ampl = 6 
envshake.phase = 6

[State 250]
type = Explod
trigger1 = AnimElem = 3
pos = -20,2
anim = 6005
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1
facing = -1

[State 250]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio forte lontano
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

[State 255, Velset]
type = VelSet
trigger1 = AnimElem = 3
x = 5

[State 255]
type = Explod
trigger1 = AnimElem = 4
anim = 7025
ID = 7025
pos = 130,-74
postype = p1
sprpriority = 3
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 255]
type = RemoveExplod
triggerall = NumExplod(7025) >= 0
trigger1 = AnimElem = 5
ID = 7025

[State 255]
type = helper
trigger1 = AnimElem = 4
stateno = 6580
ID = 6580
postype = p1
pos = 80,10
persistent = 0
ownpal = 1
ignorehitpause = 1

[State 255]
type = PlaySnd
trigger1 = Time = 5
value = 5,12

[State 255]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = hard
damage    = 40
guardflag = MA
pausetime = 2,9
sparkno = S6012
sparkxy = -10,-62
hitsound   = S1,2
guardsound = S6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7
air.velocity = -7,-2
envshake.time =  15 
envshake.freq = 45    
envshake.ampl = 6 
envshake.phase = 6
Palfx.time          = 6
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200

[State 225]
type = Explod
trigger1 = AnimElem = 3
pos = 35,0
anim = 6004
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1
scale = .8, .8

[State 255]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno leggero abbasato
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
value = 0,0

[State 400]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 25
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = S6010
sparkxy = -10,-55
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -5
air.velocity = -5,-1
envshake.time =  5 
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

[State 400]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno medio abbasato
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 420
sprpriority = 2

[State 410]
type = PlaySnd
trigger1 = Time = 5
value = 0,1

[State 410]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 35
priority  = 3
animtype  = medium
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = S6011
sparkxy = -10,-55
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -6
air.velocity = -6,-1
envshake.time =  10
envshake.freq = 10    
envshake.ampl = 5  
envshake.phase = 5

[State 410]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno forte abbasato
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

[State 420]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 420]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
animtype  = hard
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = S6012
sparkxy = -10,-48
hitsound   = S1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -7
air.velocity = -7,-1
envshake.time =  15 
envshake.freq = 15    
envshake.ampl = 5  
envshake.phase = 5

[State 420]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio leggero abbasato
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 50
ctrl = 0
anim = 450
sprpriority = 2

[State 430]
type = PlaySnd
trigger1 = Time = 5
value = 0,0

[State 430, Velset]
type = VelSet
trigger1 = AnimElem = 3
x = 10

[State 430]
type = Explod
trigger1 = AnimElem = 3
pos = 55,-2
anim = 6006
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 430]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = S6010
sparkxy = 0,-10
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -3
air.velocity = -1,0
down.velocity = -1,0
down.hittime = 20
envshake.time =  5 
envshake.freq = 5    
envshake.ampl = 5  
envshake.phase = 5

[State 430]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio medio abbasato
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
type = PlaySnd
trigger1 = Time = 5
value = 0,1

[State 440]
type = Explod
trigger1 = AnimElem = 3
anim = 6007
pos = 60,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermove = 0
removeongethit = 1

[State 440]
type = Explod
trigger1 = AnimElem = 3
anim = 700810
ID = 700810
pos = 60,0
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermove = 0
removeongethit = 1

[State 99, removeEX]
type = RemoveExplod
triggerall = NumExplod(700810) >= 1
trigger1 = AnimElem = 6
ID = 700810

[State 440]
type = Explod
trigger1 = AnimElem = 6
anim = 700811
ID = 700811
pos = 60,0
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermove = 0
removeongethit = 1

[State 440]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,8

[State 440]
type = PlaySnd
trigger1 = AnimElem = 6
value = 5,9

[State 440]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
attr = C, NA
damage    = 10
animtype  = medium
hitflag = MAFD
guardflag = L
pausetime = 6,12
sparkno = S6011
sparkxy = -5,-40
hitsound   = S1,3
guardsound = S5,7
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -4
air.velocity = -4,-3
down.velocity = -5,0
down.hittime = 20
envshake.time =  15
envshake.freq = 36     
envshake.ampl = 6
envshake.phase = 6
Palfx.time          = 15
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200

[State 440]
type = HitDef
trigger1 = AnimElem = 5
attr = C, NA
damage    = 20
animtype  = medium
hitflag = MAFD
guardflag = L
pausetime = 6,12
sparkno = S6011
sparkxy = -10,-70
hitsound   = S1,3
guardsound = S5,7
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -4
air.velocity = -4,-2
down.velocity = -5,0
down.hittime = 20
envshake.time =  15 
envshake.freq = 36     
envshake.ampl = 6
envshake.phase = 6
Palfx.time          = 15
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200

[State 440]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio forte abbasato
[Statedef 450]
type    = C
movetype= A
physics = C
velset = 0,0
juggle  = 7
poweradd= 50
ctrl = 0
anim = 430
sprpriority = 2

[State 450]
type = PlaySnd
trigger1 = Time = 5
value = 0,2

[State 450]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 50
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = S6012
sparkxy = 0,-8
hitsound   = S1,2
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -2
air.velocity = -2,-1
guard.velocity = -5
envshake.time =  15 
envshake.freq = 35     
envshake.ampl = 6  
envshake.phase = 6
fall.recover = 0             
fall.damage = 0             
fall.envshake.ampl = 6       
fall.envshake.freq = 50
fall.envshake.time = 15
Fall = 1

[State 450]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Pugno leggero in salto
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 50
ctrl = 0
anim = 610
sprpriority = 2

[State 600]
type = PlaySnd
trigger1 = Time = 2
value = 5,13

[State 600]
type = helper
trigger1 = AnimElem = 3
stateno = 6580
ID = 6580
postype = p1
pos = 80,10
persistent = 0
ownpal = 1
ignorehitpause = 1

[State 600]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
attr = A, NA
damage    = 10
guardflag = HA
priority = 3
pausetime = 2,8
sparkno = S6010
sparkxy = -10,-80
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
envshake.time =  5
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno medio in salto 
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 50
ctrl = 0
anim = 600
sprpriority = 2

[State 610]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 35
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S6011
sparkxy = -10,-75
hitsound   = S1,1
guardsound = S6,0
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


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;pugno forte in salto 
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
value = 0,2

[State 620]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 45
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S6012
sparkxy = 0,-100
hitsound   = S1,2
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -1
air.velocity = -1,0
envshake.time =  15
envshake.freq = 35    
envshake.ampl = 6
envshake.phase = 6
fall.recover = 0             
fall.damage = 0             
fall.envshake.ampl = 6       
fall.envshake.freq = 50
fall.envshake.time = 15
Fall = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio leggero in salto 
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 640
sprpriority = 2

[State 630]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 25
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = S6010
sparkxy = -10,-80
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -3,-3
envshake.time =  5
envshake.freq = 5     
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio medio in salto 
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 50
ctrl = 0
anim = 630
sprpriority = 2

[State 640]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 35
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = S6011
sparkxy = -20,-44
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -4,-3
envshake.time =  10
envshake.freq = 10    
envshake.ampl = 5  
envshake.phase = 5

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;calcio forte in salto
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
value = 0,2

[State 650]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 45
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S6012
sparkxy = 0,-80
hitsound   = S1,2
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -5,-2
envshake.time =  15
envshake.freq = 25   
envshake.ampl = 6  
envshake.phase = 6



;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;Furia del Cigno
[Statedef 709]
type = S
movetype = A
physics = S
anim = 1400
juggle = 5
velset = 0,0
ctrl = 0

[State 709]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 709]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NT
animtype = light
damage = 0
hitflag = M
sparkno = -1
priority = 3 
pausetime = 1,50
p2facing = 1
hitsound = S8,0
p1stateno = 710
palfx.time = 25
palfx.add = 50,50,50

[State 709]
type = Explod
triggerall = NumExplod(8007) = 0
trigger1 = AnimElem = 2
anim = 8007
ID = 8007
pos = -4,10
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 24

[State 710]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------
;stato del p1 se la presa ha successo
[Statedef 710]
type = S
movetype = A
anim = 710
physics = S
velset = 0,0
ctrl = 0

[State 710]
type = Explod
trigger1 = AnimElem = 1
anim = 7006
ID = 7006
pos = 10,-80
postype = p1
sprpriority = 3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 30

[State 710]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,14

[State 710]
type = PlaySnd
trigger1 = AnimElem = 3
value = 12,4
channel = 0

[State 710 Velset]
type = VelSet
trigger1 = AnimElem = 19
x = 12

[State 710]
type = Explod
trigger1 = AnimElem = 19
anim = 7025
ID = 7025
pos = 112,-80
postype = p1
sprpriority = 3
supermove = 0
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1

[State 710]
type = helper
trigger1 = AnimElem = 19
stateno = 6580
ID = 6580
postype = p1
pos = 50,-0
persistent = 0
ownpal = 1
ignorehitpause = 1

[State 710]
type = Explod
trigger1 = AnimElem = 19
pos = 0,0
anim = 6004
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

[State 710]
type = PlaySnd
trigger1 = Time = 19
value = 5,12

[State 710]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = light
damage    = 20
guardflag = MA
pausetime = 0,20
sparkno = S6010
sparkxy = -10,-55
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -6
air.velocity = -3,-2
envshake.time =  5
envshake.freq = 5
envshake.ampl = 5
envshake.phase = 5

[State 245]
type = HitDef
trigger1 = AnimElem = 11
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 2,20
sparkno = S6010
sparkxy = -10,-55
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6
air.velocity = -5,-2
envshake.time =  10
envshake.freq = 10
envshake.ampl = 5
envshake.phase = 5

[State 710]
type = HitDef
trigger1 = AnimElem = 19
attr = S, NA
animtype  = Hard
damage    = 30
guardflag = MA
pausetime = 2,9
sparkno = S6014
sparkxy = -15,-80
hitsound   = S1,3
guardsound = S6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -9,-6
air.velocity = -9,-6
envshake.time =  25
envshake.freq = 45
envshake.ampl = 15
envshake.phase = 6
Palfx.time          = 6
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200
p2stateno = 1025
fall.damage = 10
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15

[State 710]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Cosmo Charge
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
value = 9,1

[State 900, voce]
type = PlaySnd
trigger1 = Animelem = 1
value = 35,2
channel = 0

[State 900]
type = EnvShake
trigger1 = animelem = 1
time = 40

[State 900]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

;---------------------------------------
;Cosmo Charge - charging
[Statedef 901]
type = S
movetype = I
physics = S
anim = 901

[State 901]
type = PlaySnd
trigger1 = AnimElem = 1
value = 9,2

[State 901, POLVERE]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = 1
pos = 1,0
anim = 6001
ID = 131
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1

[State 901, POLVERE]
type = Explod
triggerall = NumExplod(170) = 0
trigger1 = 1
pos = 0,0
anim = 6002
ID = 170
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1
scale = .9, .9

[State 901, cosmo]
type = Explod
triggerall = NumExplod(80011) = 0
trigger1 = 1
pos = -58,12
anim = 80011
ID = 80011
sprpriority = -1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
removeongethit = 1

[State 192, Cigno]
type = Explod
trigger1 = NumExplod(6018) = 0
pos = -150,-200
anim = 6018
ID = 6018
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
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

[State 901]
type = PowerAdd
trigger1 = time > 0
value = 5

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
trigger1 = AnimTime= 0
value = 901

;--------------------------------
[State 901, Helper]
type = Helper
trigger1 = AnimElem = 2
stateno = 6556
ID = 6556
postype = p1
pos = 0,0
;size.xscale = .8
;size.yscale = .8
ownpal = 1

[State 901, Helper]
type = Helper
trigger1 = AnimElem = 3
stateno = 6555
ID = 6555
postype = p1
pos = 10,-60
size.xscale = .4
size.yscale = .4
ownpal = 1

[State 901, Helper]
type = Helper
trigger1 = AnimElem = 3
stateno = 6555
ID = 6555
postype = p1
pos = 0,-10
size.xscale = .3
size.yscale = .3
ownpal = 1

;---------------------------------------
;Cosmo Charge - end
[Statedef 902]
type = S
movetype = I
physics = S
anim = 902

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(131) >= 1
trigger1 = time = 0
ID = 131

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(170) >= 1
trigger1 = time = 0
ID = 170

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(80011) >= 1
trigger1 = time = 0
ID = 80011

[State 902, removeEX]
type = RemoveExplod
triggerall = NumExplod(6018) >= 1
trigger1 = time = 0
ID = 6018

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

[State 902, stopSND]
type = StopSnd
triggerall = Power < 3000
trigger1 = Time = 0
channel = 0

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
triggerAll = Power >= 3000
trigger1 = Time = 1
value = 9,3

[State 902]
type = ChangeState
trigger1 = AnimTime= 0
value =0
ctrl = 1

;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------
;settimo senso
[Statedef 999]
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
trigger1 = Time = 100
flag = nomusic
persistent = 1

[State 999]
type = SuperPause
trigger1 = Time = 15
time = 20
movetime = 20
anim = S6000
pos = 6, -65
darken = 1

[State 999]
type = EnvShake
trigger1 = Time = 5
time = 50

[State 999]
type = PlaySnd
trigger1 = Time = 15
value = 9,4

[State 999]
type = PlaySnd
trigger1 = Time = 15
value = 5,2

[State 999]
type = LifeAdd
trigger1 = time = 15
value = 100

[State 999]
type = VarSet
trigger1 = time = 1
v = 8
value = 1

[State 999]
type = VarSet
trigger1 = command = "Sacro Aquarius"
v = 9
value = 1

;-----------------------
[State 999, polvere]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 2
pos = -3,0
anim = 6001
ID = 131
sprpriority = -3
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 50

[State 999, polvere]
type = Explod
triggerall = NumExplod(7010) = 0
trigger1 = AnimElem = 2
pos = -3,10
anim = 7014
ID = 7014
sprpriority = 3
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 50

[State 999, polverone]
type = Explod
trigger1 = AnimElem = 5
pos = -12,11
anim = 6003
sprpriority = 5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 999, polverone]
type = Explod
trigger1 = AnimElem = 5
pos = 5,11
anim = 60031
sprpriority = 5
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1

[State 999, cosmo]
type = Explod
triggerall = NumExplod(8008) = 0
trigger1 = AnimElem = 3
pos = -6,10
anim = 8008
ID = 8008
sprpriority = -2
ignorehitpause = 1
ownpal = 1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 50

[State 999]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,5

[State 999,voce]
type = PlaySnd
trigger1 = Time = 0
value = 12,3

;--------------------------------
[State 999, Helper]
type = Helper
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
stateno = 6556
ID = 6556
postype = p1
pos = 0,0
;size.xscale = .8
;size.yscale = .8
ownpal = 0

[State 999, Helper]
type = Helper
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
stateno = 6556
ID = 6556
postype = p1
pos = -10,-30
;size.xscale = .6
;size.yscale = .6
ownpal = 0

[State 999, Helper]
type = Helper
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
stateno = 6555
ID = 6555
postype = p1
pos = 10,-60
size.xscale = .4
size.yscale = .4
ownpal = 0

[State 999, Helper]
type = Helper
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
stateno = 6555
ID = 6555
postype = p1
pos = 0,-10
size.xscale = .5
size.yscale = .5
ownpal = 0

;--------------------------------

[State 999]
type = ChangeState
trigger1 = AnimTime = 0
value = 997
ctrl = 1

;---------------
[Statedef 997]
type    = S
movetype = I
physics = S
anim = 997
velset = 0,0
poweradd = 0
juggle = 0
ctrl = 0

[State 997, removeEX]
type = RemoveExplod
triggerall = NumExplod(7014) >= 1
trigger1 = AnimElem = 3
ID = 7014

[State 997, removeEX]
type = RemoveExplod
triggerall = NumExplod(131) >= 1
trigger1 = AnimElem = 3
ID = 131

[State 997, removeEX]
type = RemoveExplod
triggerall = NumExplod(8008) >= 1
trigger1 = AnimElem = 3
ID = 8008

[State 997]
type = ChangeState
triggerall = var(9) = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 997]
type = ChangeState
triggerall = var(9) = 1
trigger1 = AnimTime = 0
value = 3200
ctrl = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Ali del cigno
[Statedef 1300]
type = A
movetype = A
physics = A
anim = 660
juggle = 5
velset = 0,0
poweradd= 100
sprpriority = 2
ctrl = 0

[State 1300,voce]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,12

[State 1300,voce]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12,0

[State 1300]
type = velset
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
x = 8
y = 5

[State 1300]
type = AfterImage
trigger1 = time = 1
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add

[State 650]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
attr = A, SA
damage    = 50
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = S6013
sparkxy = -20,-75
hitsound =   S1,3
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -2
air.velocity = -2,-2
envshake.time =  15
envshake.freq = 55    
envshake.ampl = 6
envshake.phase = 6
fall.recover = 0             
fall.damage = 0             
fall.envshake.ampl = 6       
fall.envshake.freq = 50
fall.envshake.time = 15

[State 1300, NoHit]
type = NotHitBy
trigger1 = AnimElem >= 3
value = SCA

[State 1300]
type = ChangeState
trigger1 = Pos Y > -10
value = 1301

;-----------------------------
; Ali del cigno - atteraggio
[Statedef 1301]
type    = S
physics = S
ctrl = 0
anim = 661
velset = 0,0
sprpriority = 2
ctrl = 0

[State 1301]
type = PlaySnd
trigger1 = time = 0
value = 1,3

[State 1301, polvere]
type = MakeDust
trigger1 = Time = 0
trigger2 = Time = 3
pos = 15,0
pos2 = 22,3
spacing = 1

[State 1301]
type = AfterImage
trigger1 = time = 0
time = 20
FrameGap = 2
length = 10
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1

[State 1301]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1301]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1301]
type = VelSet
trigger1 = AnimElem = 1
x = 12

[State 1301]
type = VelSet
trigger1 = AnimElem = 5
x = 0

[State 1301]
type = ChangeState
trigger1 = command = "a"
value = 420
ctrl = 1

[State 1301]
type = ChangeState
trigger1 = command = "b"
value = 420
ctrl = 1

[State 1301]
type = ChangeState
trigger1 = command = "c"
value = 420
ctrl = 1

[State 1301]
type = ChangeState
trigger1 = command = "x"
value = 430
ctrl = 1

[State 1301]
type = ChangeState
trigger1 = command = "y"
value = 440
ctrl = 1

[State 1301]
type = ChangeState
trigger1 = command = "z"
value = 250
ctrl = 1

[State 1301]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Special presa
[Statedef 1200]
type = S
movetype = A
physics = S
anim = 661
velset = 0,0
poweradd = 50
juggle = 16
sprpriority = 2
ctrl = 0

[State 1200, polvere]
type = MakeDust
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
pos = 15,0
spacing = 1

[State 1200]
type = PlaySnd
trigger1 = time = 0
value = 0,1

[State 1200, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1200]
type = VelSet
trigger1 = AnimElem = 1
x = 14

[State 1200]
type = HitDef
trigger1 = Time = 0
attr = S, ST
guardflag = M
hitflag = MAF
pausetime = 1,0
sparkno = -1
sparkxy = 0,0
hitsound =  S5,11
guardsound = S6,0
p1stateno = 1201
p2stateno = 1203
ground.type = Low
guard.slidetime = 12
guard.hittime  = 16
guard.ctrltime = 18
guard.velocity = -13.0
air.velocity = -3.5,-6
air.cornerpush.veloff = 0
yaccel = .5

[State 1200]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;------------------------
[Statedef 1201]
type     = S
movetype = I
physics  = S
velset   = 0,0
anim = 1000
sprpriority = 5
ctrl = 0

[State 1201, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1201,PosFreeze]
type = PosFreeze
trigger1 = 1

[State 1201,BindtoTarget]
type = BindtoTarget
trigger1 = Time = 0
pos = 15,0,Head

[State 1201]
type = PlaySnd
trigger1 = Time = 20
value = 5,0

[State 1201, spause]
type = Explod
trigger1 = Time = 20
triggerall = NumExplod(7032) = 0
anim = 7032
ID = 7032
pos = 35,-40
postype = p1
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
Scale = .6, .6

[State 1201, cristal]
type = Explod
trigger1 = Time = 0
triggerall = NumExplod(1001) = 0
anim = 1001
ID = 1001
pos = 0,0
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500

[State 1201, gabbia di ghiaccio]
type = Explod
trigger1 = Time = 30
triggerall = NumExplod(701010) = 0
anim = 701010
ID = 701010
pos = -2,5
postype = p2
sprpriority = 2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermove = 1
removetime = -1
facing = -1
Scale = .9, .8

[State 1201, polvere]
type = Explod
trigger1 = Time = 30
triggerall = NumExplod(131) = 0
anim = 6001
ID = 131
pos = 35,-2
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500

[State 1201, cosmo]
type = Explod
trigger1 = AnimElem = 3
triggerall = NumExplod(8003) = 0
anim = 8003
ID = 8003
pos = -1,10
postype = p1
sprpriority = -4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500

[State 1201, Brilla]
type = PalFX
trigger1 = AnimElem = 3
time = 500
add = 110,130,160
sinadd = -112,-122,-112,3
mul = 150,150,200

;--------------------------------
[State 1201, Helper]
type = Helper
triggerall = Numhelper(6556) <= 6
trigger1 = Time >= 30
trigger1 = Timemod = 20,0
stateno = 6556
ID = 6556
postype = p2
pos = 0,0
;size.xscale = .8
;size.yscale = .8
ownpal = 1

[State 1201, Helper]
type = Helper
triggerall = Numhelper(6556) <= 6
trigger1 = Time >= 30
trigger1 = Timemod = 20,0
stateno = 6556
ID = 6556
postype = p2
pos = 15,-20
;size.xscale = .4
;size.yscale = .4
ownpal = 1

[State 1201, Helper]
type = Helper
triggerall = Numhelper(6556) <= 6
trigger1 = Time >= 30
trigger1 = Timemod = 20,0
stateno = 6556
ID = 6556
postype = p2
pos = -20,-55
;size.xscale = .3
;size.yscale = .3
ownpal = 1
;--------------------------------

[State 1201, Darken]
type = BGPalfx
trigger1 = AnimElem = 3
ignorehitpause = 1
time = 250
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 1201]
type = PlaySnd
trigger1 = Time = 0
value = 30,0
channel = 0

[State 1201,ChangeState]
type = ChangeState
trigger1 = Time = 100
value = 1202
ctrl = 1

;------------------------
[Statedef 1202]
type     = S
movetype = I
physics  = S
velset   = 0,0
anim = 1002
sprpriority = -1
ctrl = 0

[State 1201, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1202, Darken]
type = BGPalfx
trigger1 = Time = 0
ignorehitpause = 1
time = 25
mul = 90,90,90
add = 5,5,5
invertall = 0

[State 1202, Brilla]
type = PalFX
trigger1 = Time = 0
time = 5
add = 110,130,160
sinadd = -112,-122,-112,3
mul = 150,150,200

[State 1202, removeEX]
type = RemoveExplod
triggerall = NumExplod(131) >= 1
trigger1 = Time = 0
ID = 131

[State 1202, removeEX]
type = RemoveExplod
triggerall = NumExplod(1001) >= 1
trigger1 = Time = 0
ID = 1001

[State 1202, removeEX]
type = RemoveExplod
triggerall = NumExplod(8003) >= 1
trigger1 = Time = 0
ID = 8003

[State 1202]
type = ChangeState
trigger1 = AnimTime = 0
value = 1000
ctrl = 1

;------------------------
[Statedef 1203]
type     = S
movetype = H
physics  = N
ctrl = 0
sprpriority = -1

[State 1203, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 120512

[State 1203]
type = LifeAdd
trigger1 = time >= 35
trigger1 = time <= 80
value = -1
kill = 0

[State 1203, Brilla]
type = PalFX
trigger1 = Time = 20
time = 35
add = 110,130,160
sinadd = -112,-122,-112,3
mul = 150,150,200

[State 1203, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1203, NoHit]
type = NotHitBy
trigger1 = Time = 0
value = SCA
Time = 110

[State 1203,selfState]
type = selfState
trigger1 = Time = 400
value = 5101


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Tornado Forte
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1100
sprpriority = 2

[State 1000, voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,2

[State 1000]
type = PlaySnd
trigger1 = Time = 5
value = 5,19

[State 1000, polvere]
type = Explod
trigger1 = AnimElem = 4
triggerall = NumExplod(131) = 0
anim = 6001
ID = 131
pos = 9,1
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1000, polvere]
type = Explod
trigger1 = AnimElem = 4
triggerall = NumExplod(7014) = 0
anim = 7014
ID = 7014
pos = 9,11
postype = p1
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1000, cosmo]
type = Explod
trigger1 = AnimElem = 5
triggerall = NumExplod(8002) = 0
anim = 8002
ID = 8002
pos = -42,12
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 300

[State 1000, Brilla]
type = PalFX
trigger1 = AnimElem = 4
time = 50
add = 110,130,160
sinadd = -112,-122,-112,3
mul = 150,150,200

[State 1000, cintilla]
type = Explod
trigger1 = AnimElem = 5
triggerall = NumExplod(7006) = 0
anim = 7012
ID = 7006
pos = 30,-118
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1000, tornado]
type = Explod
trigger1 = AnimElem = 4
triggerall = NumExplod(7028) = 0
anim = 7028
ID = 7028
pos = 40,10
postype = p1
sprpriority = 7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

;--------------------------------
[State 1000, Helper]
type = Helper
triggerall = Numhelper(6556) <= 6
trigger1 = Time >= 1
trigger1 = Time <= 40
trigger1 = Timemod = 20,0
stateno = 6556
ID = 6556
postype = p1
pos = 40,-10
;size.xscale = .8
;size.yscale = .8
ownpal = 1

[State 1000, Helper]
type = Helper
triggerall = Numhelper(6556) <= 6
trigger1 = Time >= 2
trigger1 = Time <= 42
trigger1 = Timemod = 20,0
stateno = 6556
ID = 6556
postype = p1
pos = 60,-35
;size.xscale = .4
;size.yscale = .4
ownpal = 1

[State 1000, Helper]
type = Helper
triggerall = Numhelper(6556) <= 6
trigger1 = Time >= 3
trigger1 = Time <= 45
trigger1 = Timemod = 20,0
stateno = 6556
ID = 6556
postype = p1
pos = 50,-60
;size.xscale = .3
;size.yscale = .3
ownpal = 1
;--------------------------------

[State 1000]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,16

[State 1000, polvtornado]
type = Explod
trigger1 = AnimElem = 4
triggerall = NumExplod(127) = 0
anim = 6003
ID = 127
pos = 35,8
postype = p1
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .5, .5

[State 1000, polvtornado]
type = Explod
trigger1 = AnimElem = 4
triggerall = NumExplod(128) = 0
anim = 60031
ID = 128
pos = 35,9
postype = p1
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .5, .5

[State 1000]
type = PlaySnd
triggerall = prevstateno = 1202
trigger1 = movehit = 1
value = 5,9

[State 1000, gabbia di ghiaccio]
type = Explod
triggerall = prevstateno = 1202
triggerall = NumExplod(701011) = 0
trigger1 = movehit = 1
anim = 701011
ID = 701011
pos = -2,5
postype = p2
sprpriority = 2
ignorehitpause = 1
ownpal = 1
persistent = 0
supermove = 1
facing = -1
Scale = .9, .8
;bindtime = -1
;removetime = -1

[State 1000, vortice]
type = Explod
trigger1 = movehit = 1
triggerall = NumExplod(7005) = 0
anim = 7005
ID = 7005
pos = -10,45
postype = p2
sprpriority = 2
ignorehitpause = 1
ownpal = 1
persistent = 0
supermove = 1
facing = -1
bindtime = -1
removetime = 70

[State 1000]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Hard
damage    = 70
guardflag = MA
pausetime = 2,9
sparkno = S6011
sparkxy = -20,-90
hitsound   = S5,5
guardsound = S5,12
ground.type = High 
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3
air.velocity = -7,0
p2stateno = 1095
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
p2facing = 1                 
fall.recover = 0
fall.damage = 10             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 80
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200

[State 1000, lampi]
type = BGPalfx
trigger1 = AnimElem = 4
ignorehitpause = 1
time = 30
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 1000]
type = ChangeState
trigger1 = Time = 60
value = 1001
ctrl = 1

[Statedef 1001]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1101
sprpriority = 2

[State 1001, removeEX]
type = RemoveExplod
triggerall = NumExplod(8002) >= 1
trigger1 = Time = 0
ID = 8002

[State 1001]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------
;------------------------------------
;Air launch
[Statedef 1095]
type = A
movetype = H
physics = N

[State 1095, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1095]
type = VelSet
trigger1 = Time = 0
x = 0
y = -5

[State 1095]
type = ChangeAnim2
Trigger1 = Time >= 0
value = 1095

[State 1095]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1096

[State 1095, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[Statedef 1096]
type = A
movetype = H
physics = N
velset = -1,-11

[State 1096]
type = VelAdd
trigger1 = Time > 0
y = .4

[State 1096]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------


;Tornado Debole
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1100
sprpriority = 2

[State 1100, voce]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,0

[State 1100]
type = PlaySnd
trigger1 = Time = 5
value = 5,19

[State 1100, polvere]
type = Explod
trigger1 = AnimElem = 4
triggerall = NumExplod(131) = 0
anim = 6001
ID = 131
pos = 9,1
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1100, polvere]
type = Explod
trigger1 = AnimElem = 4
triggerall = NumExplod(7014) = 0
anim = 7014
ID = 7014
pos = 9,11
postype = p1
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1100, cosmo]
type = Explod
trigger1 = AnimElem = 5
triggerall = NumExplod(8002) = 0
anim = 8002
ID = 8002
pos = -42,12
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 300

[State 1100, Brilla]
type = PalFX
trigger1 = AnimElem = 4
time = 50
add = 110,130,160
sinadd = -112,-122,-112,3
mul = 150,150,200

[State 1100, cintilla]
type = Explod
trigger1 = AnimElem = 5
triggerall = NumExplod(7006) = 0
anim = 7012
ID = 7006
pos = 30,-118
postype = p1
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .6, .6

[State 1100, tornado]
type = Explod
trigger1 = AnimElem = 4
triggerall = NumExplod(7028) = 0
anim = 7028
ID = 7028
pos = 40,10
postype = p1
sprpriority = 7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .6, .8

;--------------------------------
[State 1100, Helper]
type = Helper
triggerall = Numhelper(6556) <= 6
trigger1 = Time >= 1
trigger1 = Time <= 35
trigger1 = Timemod = 20,0
stateno = 6556
ID = 6556
postype = p1
pos = 50,-10
;size.xscale = .8
;size.yscale = .8
ownpal = 1

[State 1100, Helper]
type = Helper
triggerall = Numhelper(6556) <= 6
trigger1 = Time >= 2
trigger1 = Time <= 37
trigger1 = Timemod = 20,0
stateno = 6556
ID = 6556
postype = p1
pos = 60,-35
;size.xscale = .4
;size.yscale = .4
ownpal = 1

[State 1100, Helper]
type = Helper
triggerall = Numhelper(6556) <= 6
trigger1 = Time >= 3
trigger1 = Time <= 39
trigger1 = Timemod = 20,0
stateno = 6556
ID = 6556
postype = p1
pos = 40,-60
;size.xscale = .3
;size.yscale = .3
ownpal = 1
;--------------------------------

[State 1100]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,5

[State 1100, polvtornado]
type = Explod
trigger1 = AnimElem = 4
triggerall = NumExplod(121) = 0
anim = 6004
ID = 121
pos = 45,7
postype = p1
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .6, .6

[State 1100, polvtornado]
type = Explod
trigger1 = AnimElem = 4
triggerall = NumExplod(122) = 0
anim = 60041
ID = 122
pos = 35,8
postype = p1
sprpriority = 6
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .6, .6

[State 1100, vortice]
type = Explod
trigger1 = movehit = 1
triggerall = NumExplod(7005) = 0
anim = 7005
ID = 7005
pos = -12,25
postype = p2
sprpriority = 2
ignorehitpause = 1
ownpal = 1
persistent = 0
supermove = 1
facing = -1
bindtime = -1
removetime = 70
scale = .8, .6

[State 1100]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Hard
damage    = 55
guardflag = MA
pausetime = 2,9
sparkno = S6011
sparkxy = -20,-90
hitsound   = s5,5
guardsound = S5,12
ground.type = High 
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3
air.velocity = -7,0
p2stateno = 1095
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
p2facing = 1                 
fall.recover = 0             
fall.damage = 10             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 80
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200

[State 1100, lampi]
type = BGPalfx
trigger1 = AnimElem = 4
ignorehitpause = 1
time = 30
sinadd = 90,90,90,8
add = 5,5,5
invertall = 0

[State 1100]
type = ChangeState
trigger1 = Time = 60
value = 1001
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Mini-Diamond Dust by Tux
[Statedef 1700]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1700
velset = 0,0
sprpriority = 1

[State 1700]
type = PlaySnd
trigger1 = Time = 3
value = 12,0

[State 1700]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,10

[State 1700]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = AnimElem = 3
pos = 68,-82
anim = 7020
ID = 7020
sprpriority = 5
supermove = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
scale = 1,0.5
removetime = 45

[State 1700]
type = Projectile
trigger1 = AnimElem = 3
projanim = 7023
projID = 7023
projhits = 8
projmisstime = 3
projpriority = -2
projsprpriority = 4
projremove = 0
projremovetime = 45
projscale = 1,0.5
offset = 82, -82
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 9
animtype = Heavy
guardflag = MA
guard.sparkno = -1
pausetime = 0,9
hitsound   = -1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3
air.animtype = Back
air.velocity = -3,-2
air.juggle = 3
;PalFX
Palfx.time          = 60
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200

[State 1700]
type = Explod
triggerall = NumExplod(7009) = 0
trigger1 = projhit7023 = 1
pos = -10,-80
anim = 7009
ID = 7009
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 1700]
type = Explod
triggerall = NumExplod(7009) = 0
trigger1 = projguarded7023 = 1
pos = -10,-80
anim = F40
ID = 7009
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 1700]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Cygnus Kick by Tux
[Statedef 1600]
type = A
movetype = A
physics = A
anim = 1600
juggle = 1
ctrl = 0
poweradd = 100

[State 1600]
type = PlaySnd
trigger1 = Time = 2
value = 5,14

[State 1600]
type = Helper
trigger1 = AnimElem = 3
stateno = 6580
ID = 6580
postype = p1
pos = 80,10
persistent = 0
ownpal = 1
ignorehitpause = 1

[State 1600]
type = PlaySnd
trigger1 = AnimElem = 5 
value = 12,3
channel = 0

[State 1600]
type = AfterImage
trigger1 = AnimElem = 6
time = 8
trans = add
PalContrast = 88, 184, 248
PalBright = 0,0,0

[State 1600]
type = VelSet
trigger1 = AnimElem = 6
x = 20
y = 15

[State 1600]
type = Explod
trigger1 = AnimElem = 6
anim = 6019
ID = 6019
pos = 86,-39
postype = p1
sprpriority = 3
supermove = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removetime = 8
removeongethit = 1
scale = 0.5,0.5

[State 1600]
type = PlaySnd
trigger1 = AnimElem = 6
value = 5,4

[State 1600]
type = HitDef
trigger1 = AnimElem = 6
priority = 6
attr = A, SA
damage = 80
animtype = hard
guardflag = HA
sparkno = s6012
sparkxy = -10,-40
hitsound = S1,3
guardsound = S6,0
pausetime = 12,12
ground.hittime = 13
ground.type = high
ground.slidetime = 9
ground.velocity = -10
air.velocity = -3,-3
envshake.time = 15           
envshake.ampl = 7
envshake.freq = 176
fall = 1   
fall.damage = 5            
fall.envshake.ampl = 6       
fall.envshake.freq = 125
fall.envshake.time = 15

[State 1600]
type = RemoveExplod
triggerall = NumExplod(6019) >= 1
trigger1 = MoveContact
trigger2 = Pos Y >= -20
ID = 6019

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Anelli di Ghiaccio
[Statedef 1500]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 2

[State 1500]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 1500]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1

[State 1500]
type = PlaySnd
trigger1 = AnimElem = 2
value = 31,0
channel = 0

[State 1500]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5,0

[State 1500, cosmo]
type = Explod
trigger1 = AnimElem = 2
triggerall = NumExplod(80041) = 0
anim = 80041
ID = 80041
pos = 2,15
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 300

[State 1500, removeEX]
type = RemoveExplod
triggerall = NumExplod(80041) >= 1
trigger1 = AnimElem = 14
ID = 80041

[State 1500, cosmo]
type = Explod
trigger1 = AnimElem = 14
triggerall = NumExplod(80042) = 0
anim = 80042
ID = 80042
pos = 2,15
postype = p1
sprpriority = -2
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1500, polvere]
type = Explod
trigger1 = AnimElem = 4
triggerall = NumExplod(131) = 0
anim = 6001
ID = 131
pos = 8,-1
postype = p1
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .8, .8

[State 1500, polvere]
type = Explod
trigger1 = AnimElem = 4
triggerall = NumExplod(7014) = 0
anim = 7014
ID = 7014
pos = 7,7
postype = p1
sprpriority = 3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
scale = .8, .8

[State 1500, scintilla]
type = Explod
trigger1 = AnimElem = 5
triggerall = NumExplod(7006) = 0
anim = 7006
ID = 7006
pos = 58,-99
postype = p1
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1

[State 1500, Brilla]
type = PalFX
trigger1 = AnimElem = 5
time = 8
add = 110,130,160
sinadd = -112,-122,-112,3
mul = 150,150,200

[State 1500, vortice]
type = Explod
trigger1 = movehit = 1
triggerall = NumExplod(7007) = 0
anim = 7007
ID = 7007
pos = -8,-60
postype = p2
sprpriority = 2
ignorehitpause = 1
ownpal = 1
persistent = 0
supermove = 1
facing = -1
bindtime = -1
removetime = -1

[State 1500]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype  = Hard
damage    = 50
guardflag = MA
pausetime = 2,9
sparkno = -1
sparkxy = -20,-60
hitsound   = S5,11
guardsound = S6,1
ground.type = High 
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0
air.velocity = 0,0
p2stateno = 1501
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 76

[State 1500]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------
; paralisi state
[Statedef 1501]
type = S
movetype= H
physics = N
velset = 0,0

[State 1501, attempt]
type = Varset
trigger1 = time = 0
V = 23
Value = Anim

[State 1501, freeze in anim]
type = Changeanim
trigger1 = time != 0
value = Var(23)

[State 1501, Frosty color]
type = palFX
trigger1 = 1
add = 110,130,160
mul = 150,150,200 
sinadd = -112,-122,-112,3
time = 6

[State 99, PosSet]
type = PosSet
trigger1 = time = 0
Y = 0

[State 1501, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 1501]
type = SelfState
trigger1 = time = 150
trigger1 = Pos Y >= 0
value = 0
ctrl = 1

[State 1501]
type = SelfState
trigger1 = time = 150
trigger1 = Pos Y < 0
value = 52


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
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Polvere di Diamanti
[Statedef 3030]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 3030
sprpriority = 2

[State 3030] 
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3030]
type = SuperPause
trigger1 = time = 0
time = 330
movetime = 330
anim = -1
pos = 0, 0
darken = 0

[State 3030]
type = PlaySnd
trigger1 = time = 0
value = 5,2

[State 3030, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 5
mul = 80,80,80
add = 5,5,5
invertall = 0

[State 3030]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0

[State 3030]
type = PlaySnd
trigger1 = AnimElem = 9
value = 0,2

[State 3030]
type = PlaySnd
trigger1 = AnimElem = 18
value = 0,1

;[State 3030]
;type = PlaySnd
;trigger1 = AnimElem = 24
;value = 0,0

[State 3030]
type = PlaySnd
trigger1 = AnimElem = 27
value = 2,0

[State 3030]
type = PlaySnd
trigger1 = AnimElem = 36
value = 2,1

;---------------------------------------
[State 3030, cosmo]
type = Explod
trigger1 = time = 0
pos = -60,-175
anim = 303033
ID = 303033
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3030, removeEX]
type = RemoveExplod
triggerall = NumExplod(303033) >= 1
trigger1 = AnimElem = 33
ID = 303033

[State 3030, cosmo]
type = Explod
trigger1 = AnimElem = 33
pos = -60,-175
anim = 303034
ID = 303034
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3030, removeEX]
type = RemoveExplod
triggerall = NumExplod(303034) >= 1
trigger1 = AnimElem = 39
ID = 303034
;---------------------------------------

;---------------------------------------
[State 3030, Croce]
type = Explod
trigger1 = AnimElem = 1
pos = 25,-100
anim = 704022
ID = 704022
sprpriority = -5
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3030, removeEX]
type = RemoveExplod
triggerall = NumExplod(704022) >= 1
trigger1 = AnimElem = 32
ID = 704022

[State 3030, Cigno]
type = Explod
trigger1 = AnimElem = 31
pos = -120,-210
anim = 704021
ID = 704021
sprpriority = -4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3030, removeEX]
type = RemoveExplod
triggerall = NumExplod(704021) >= 1
trigger1 = AnimElem = 33
ID = 704021

[State 3030]
type = PlaySnd
trigger1 = AnimElem = 31
value = 5,17

;---------------------------------------

;---------------------------------------
;---------------------------------------
[State 3030, Helper]
type = Helper
triggerall = Numhelper(6563) = 0
trigger1 = Time >= 25
trigger1 = Time <= 160
stateno = 6563
ID = 6563
postype = p1
pos = 200, 30
ignorehitpause = 1
ownpal = 1
supermovetime = 500

[State 3030, Helper]
type = Helper
triggerall = Numhelper(6565) = 0
trigger1 = Time >= 35
trigger1 = Time <= 170
stateno = 6565
ID = 6565
postype = p1
pos = 160, 35
ignorehitpause = 1
ownpal = 1
supermovetime = 500

[State 3030, Helper]
type = Helper
triggerall = Numhelper(6564) = 0
trigger1 = Time >= 45
trigger1 = Time <= 180
stateno = 6564
ID = 6564
postype = p1
pos = 100, 40
ignorehitpause = 1
ownpal = 1
supermovetime = 500

[State 3030, Helper]
type = Helper
triggerall = Numhelper(6561) = 0
trigger1 = Time >= 30
trigger1 = Time <= 170
stateno = 6561
ID = 6561
postype = p1
pos = -100, 30
ignorehitpause = 1
ownpal = 1
supermovetime = 500

[State 3030, Helper]
type = Helper
triggerall = Numhelper(6567) = 0
trigger1 = Time >= 40
trigger1 = Time <= 180
stateno = 6567
ID = 6567
postype = p1
pos = 40, 40
ignorehitpause = 1
ownpal = 1
supermovetime = 500

[State 3030, Helper]
type = Helper
triggerall = Numhelper(6566) = 0
trigger1 = Time >= 45
trigger1 = Time <= 180
stateno = 6566
ID = 6566
postype = p1
pos = -40, 35
ignorehitpause = 1
ownpal = 1
supermovetime = 500

[State 3030, Helper]
type = Helper
triggerall = Numhelper(6562) = 0
trigger1 = Time >= 55
trigger1 = Time <= 190
stateno = 6562
ID = 6562
postype = p1
pos = -110, 40
ignorehitpause = 1
ownpal = 1
supermovetime = 500

;---------------------------------------
;---------------------------------------

;---------------------------------------
[State 3030, sfondo]
type = Explod
trigger1 = AnimElem = 2
pos = -320,0
triggerall = NumExplod(70403) = 0
anim = 70403
ID = 70403
postype = right
sprpriority = -8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500

[State 3030, removeEX]
type = RemoveExplod
triggerall = NumExplod(70403) >= 1
trigger1 = AnimElem = 40
ID = 70403


[State 3030, sfondo]
type = Explod
trigger1 = AnimElem = 37
pos = -320,0
triggerall = NumExplod(70405) = 0
anim = 70405
ID = 70405
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 200

[State 3030, removeEX]
type = RemoveExplod
triggerall = NumExplod(70405) >= 1
trigger1 = AnimElem = 40
ID = 70405
;---------------------------------------

;---------------------------------------
[State 3030, POLVERE]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 38
pos = 5,0
anim = 6001
ID = 131
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 200

[State 3030, removeEX]
type = RemoveExplod
triggerall = NumExplod(131) >= 1
trigger1 = AnimElem = 39
ID = 131
;---------------------------------------

;---------------------------------------
[State 3030, hit]
type = Explod
triggerall = NumExplod(7009) = 0
trigger1 = projhit7023 = 1
pos = -20,-65
anim = 7009
ID = 7009
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3030, guardspark]
type = Explod
triggerall = NumExplod(7009) = 0
trigger1 = projguarded7023 = 1
pos = -10,-65
anim = F40
ID = 7009
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3030, hit]
type = Explod
triggerall = NumExplod(7022) = 0
trigger1 = projhit7023 = 1
pos = -15,10
anim = 7022
ID = 7022
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3030, rayo]
type = Explod
triggerall = NumExplod(7020) = 0
trigger1 = AnimElem = 38
pos = 68,-71
anim = 7020
ID = 7020
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
scale = 1, 1
removetime = 64
;---------------------------------------

[State 3030, Voce]
type = PlaySnd
trigger1 = AnimElem = 34
value = 32,0
channel = 0

[State 3030, rayo]
type = PlaySnd
trigger1 = AnimElem = 38
value = 5,4

[State 3030, rayo]
type = Projectile
trigger1 = AnimElem = 38
projanim = 7023
projID = 7023
projhits = 1000
projmisstime = 3
projpriority = -2
projsprpriority = -2
projremovetime = 76
offset = 75, -71
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 7
animtype = Heavy
guardflag = MA
guard.sparkno = -1
pausetime = 0,9
hitsound   = -1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3
air.animtype = Back
air.velocity = -3,-2
air.juggle = 3
envshake.time =  10 
envshake.time = 30           
envshake.ampl = 7
envshake.freq = 75
;PalFX
Palfx.time          = 60
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200
fall = 1
fall.recover = 0             
fall.damage = 10             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 3030, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3030]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Aurora del Nord
[Statedef 3020]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -2000
ctrl = 0
velset = 0,0
anim = 3010
sprpriority = 2

[State 3020] 
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3020]
type = SuperPause
trigger1 = time = 0
time = 445
movetime = 445
anim = S6000
pos = 25, -95
darken = 0

[State 3020, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 5
mul = 50,50,150
add = 5,5,5
invertall = 0

[State 3020]
type = PlaySnd
trigger1 = time = 0
value = 5,2

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,0

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 9
value = 0,2

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 18
value = 0,1

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 27
value = 2,0

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 63
value = 0,0

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 54
trigger2 = AnimElem = 57
value = 0,2

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 67
trigger2 = AnimElem = 73
trigger3 = AnimElem = 78
value = 0,1

;---------------------------------------
[State 3020, cosmo]
type = Explod
trigger1 = time = 0
pos = -60,-175
anim = 303033
ID = 303033
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3020, removeEX]
type = RemoveExplod
triggerall = NumExplod(303033) >= 1
trigger1 = AnimElem = 33
ID = 303033

[State 3020, cosmo]
type = Explod
trigger1 = AnimElem = 33
pos = -60,-175
anim = 301011
ID = 301011
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3020, removeEX]
type = RemoveExplod
triggerall = NumExplod(301011) >= 1
trigger1 = AnimElem = 45
ID = 301011

[State 3020, cosmo]
type = Explod
trigger1 = AnimElem = 45
pos = -60,-175
anim = 301012
ID = 301012
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3020, removeEX]
type = RemoveExplod
triggerall = NumExplod(301012) >= 1
trigger1 = AnimElem = 52
ID = 301012

[State 3020, cosmo]
type = Explod
trigger1 = AnimElem = 52
pos = -60,-175
anim = 301013
ID = 301013
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3020, removeEX]
type = RemoveExplod
triggerall = NumExplod(301013) >= 1
trigger1 = AnimElem = 57
ID = 301013

[State 3020, cosmo]
type = Explod
trigger1 = AnimElem = 57
pos = -60,-175
anim = 301014
ID = 301014
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3020, removeEX]
type = RemoveExplod
triggerall = NumExplod(301014) >= 1
trigger1 = AnimElem = 59
ID = 301014

[State 3020, cosmo]
type = Explod
trigger1 = AnimElem = 59
pos = -60,-175
anim = 301015
ID = 301015
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3020, removeEX]
type = RemoveExplod
triggerall = NumExplod(301015) >= 1
trigger1 = AnimElem = 84
ID = 301015

;---------------------------------------
[State 3020, Croce]
type = Explod
trigger1 = AnimElem = 1
pos = 25,-100
anim = 704022
ID = 704022
sprpriority = -5
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3020, removeEX]
type = RemoveExplod
triggerall = NumExplod(704022) >= 1
trigger1 = AnimElem = 32
ID = 704022

[State 3020, Cigno]
type = Explod
trigger1 = AnimElem = 31
pos = -120,-210
anim = 704021
ID = 704021
sprpriority = -4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3020, removeEX]
type = RemoveExplod
triggerall = NumExplod(704021) >= 1
trigger1 = AnimElem = 33
ID = 704021

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 31
value = 5,17
;---------------------------------------

;---------------------------------------
;---------------------------------------
[State 3020, Helper]
type = Helper
triggerall = Numhelper(6563) = 0
trigger1 = Time >= 25
trigger1 = Time <= 160
stateno = 6563
ID = 6563
postype = p1
pos = 200, 30
ignorehitpause = 1
ownpal = 1
supermovetime = 500

[State 3020, Helper]
type = Helper
triggerall = Numhelper(6565) = 0
trigger1 = Time >= 35
trigger1 = Time <= 170
stateno = 6565
ID = 6565
postype = p1
pos = 160, 35
ignorehitpause = 1
ownpal = 1
supermovetime = 500

[State 3020, Helper]
type = Helper
triggerall = Numhelper(6564) = 0
trigger1 = Time >= 45
trigger1 = Time <= 180
stateno = 6564
ID = 6564
postype = p1
pos = 100, 40
ignorehitpause = 1
ownpal = 1
supermovetime = 500

[State 3020, Helper]
type = Helper
triggerall = Numhelper(6561) = 0
trigger1 = Time >= 30
trigger1 = Time <= 170
stateno = 6561
ID = 6561
postype = p1
pos = -100, 30
ignorehitpause = 1
ownpal = 1
supermovetime = 500

[State 3020, Helper]
type = Helper
triggerall = Numhelper(6567) = 0
trigger1 = Time >= 40
trigger1 = Time <= 180
stateno = 6567
ID = 6567
postype = p1
pos = 40, 40
ignorehitpause = 1
ownpal = 1
supermovetime = 500

[State 3020, Helper]
type = Helper
triggerall = Numhelper(6566) = 0
trigger1 = Time >= 45
trigger1 = Time <= 180
stateno = 6566
ID = 6566
postype = p1
pos = -40, 35
ignorehitpause = 1
ownpal = 1
supermovetime = 500

[State 3020, Helper]
type = Helper
triggerall = Numhelper(6562) = 0
trigger1 = Time >= 55
trigger1 = Time <= 190
stateno = 6562
ID = 6562
postype = p1
pos = -110, 40
ignorehitpause = 1
ownpal = 1
supermovetime = 500

;---------------------------------------
;---------------------------------------

;---------------------------------------

[State 3020, sfondo stelle]
type = Explod
trigger1 = AnimElem = 31
pos = -320,0
triggerall = NumExplod(70403) = 0
anim = 70403
ID = 70403
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 700

[State 3020, removeEX]
type = RemoveExplod
triggerall = NumExplod(70403) >= 1
trigger1 = AnimElem = 33
ID = 70403

[State 3020, sfondo neve]
type = Explod
trigger1 = AnimElem = 41
pos = -320,0
triggerall = NumExplod(7041) = 0
anim = 7041
ID = 7041
postype = right
sprpriority = 8
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 700

[State 3020, removeEX]
type = RemoveExplod
triggerall = NumExplod(7041) >= 1
trigger1 = AnimElem = 83
ID = 7041

[State 3020, sfondo striscie]
type = Explod
trigger1 = AnimElem = 55
pos = -320,-115
triggerall = NumExplod(8054) = 0
anim = 8054
ID = 8054
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500

[State 3020, removeEX]
type = RemoveExplod
triggerall = NumExplod(8054) >= 1
trigger1 = AnimElem = 83
ID = 8054

;---------------------------------------

;---------------------------------------
[State 3020, POLVERE]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 41
trigger2 = AnimElem = 48
pos = 4,0
anim = 6001
ID = 131
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 1

[State 3020, POLVERE]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 56
trigger2 = AnimElem = 58
pos = 4,0
anim = 6001
ID = 131
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 1

[State 3020, POLVERE]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 69
trigger2 = AnimElem = 74
trigger3 = AnimElem = 80
pos = 39,-2
anim = 6001
ID = 131
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 1
removetime = 45

[State 3020, POLVERE]
type = Explod
triggerall = NumExplod(7014) = 0
trigger1 = AnimElem = 69
trigger2 = AnimElem = 74
trigger3 = AnimElem = 80
pos = 40,5
anim = 7014
ID = 7014
sprpriority = 6
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 1

;---------------------------------------

;---------------------------------------
[State 3020, rayo1]
type = Explod
triggerall = NumExplod(7003) = 0
trigger1 = AnimElem = 42
pos = 10,-105
anim = 7003
ID = 7003
sprpriority = -4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
scale = .8, 1

[State 3020, rayo2]
type = Explod
triggerall = NumExplod(7003) = 0
trigger1 = AnimElem = 49
pos = -12,-105
anim = 7003
ID = 7003
sprpriority = -4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
scale = .8, 1

[State 3020, flash]
type = EnvColor
trigger1 = AnimElem = 42
trigger2 = AnimElem = 49
value = 255,255,255
under = 0
time = 3

[State 3020, envshake]
type = EnvShake
trigger1 = AnimElem = 42
trigger2 = AnimElem = 49
time = 10

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 42
trigger2 = AnimElem = 49
value = 5,12

[State 3020]
type = PlaySnd
trigger1 = AnimElem = 40
trigger2 = AnimElem = 47
value = 0,0

[State 3020, voce]
type = PlaySnd
trigger1 = AnimElem = 40
value = 12,2

[State 3020, voce]
type = PlaySnd
trigger1 = AnimElem = 47
value = 12,3

;---------------------------------------
[State 3020, voce]
type = PlaySnd
trigger1 = AnimElem = 53
value = 33,0
channel = 0

;---------------------------------------
[State 3020, hit]
type = Explod
triggerall = NumExplod(7009) = 0
trigger1 = projhit7004 = 1
pos = -20,-65
anim = 7009
ID = 7009
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3020, hit]
type = Explod
triggerall = NumExplod(7011) = 0
trigger1 = projhit7004 = 1
pos = -20,-65
anim = 7011
ID = 7011
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3020, guardspark]
type = Explod
triggerall = NumExplod(7009) = 0
trigger1 = projguarded7004 = 1
pos = -10,-65
anim = F40
ID = 7009
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3020, rayo]
type = PlaySnd
trigger1 = AnimElem = 56
trigger2 = AnimElem = 58
value = 5,6

[State 3020, rayo]
type = PlaySnd
trigger1 = AnimElem = 69
trigger2 = AnimElem = 75
trigger3 = AnimElem = 81
value = 5,4

;---------------------------------------
[State 3020, rayo]
type = Explod
trigger1 = AnimElem = 56
pos = 75,-78
anim = 7025
sprpriority = 4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3020, rayo1]
type = Projectile
trigger1 = AnimElem = 56
projanim = 7004
projID = 7004
projhits = 1000
projmisstime = 3
projpriority = -2
projsprpriority = -3
projremovetime = 44
projscale = .8 ,.8
offset = 55, -80
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 5
animtype = Heavy
guardflag = MA
guard.sparkno = -1
pausetime = 0,50
hitsound   = -1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3
air.animtype = Back
air.velocity = -3,-2
air.juggle = 3
envshake.time =  10 
envshake.time = 30           
envshake.ampl = 7
envshake.freq = 75
;PalFX
Palfx.time          = 60
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200
;---------------------------------------

[State 3020, rayo]
type = Explod
trigger1 = AnimElem = 58
pos = 70,-74
anim = 7025
sprpriority = -4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3020, rayo2]
type = Projectile
trigger1 = AnimElem = 58
projanim = 7004
projID = 7004
projhits = 1000
projmisstime = 3
projpriority = -2
projsprpriority = -3
projremovetime = 44
projscale = .8 ,.8
offset = 40, -74
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 5
animtype = Heavy
guardflag = MA
guard.sparkno = -1
pausetime = 0,50
hitsound   = -1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3
air.animtype = Back
air.velocity = -3,-2
air.juggle = 3
envshake.time =  10 
envshake.time = 30           
envshake.ampl = 7
envshake.freq = 75
;PalFX
Palfx.time          = 60
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200
;---------------------------------------

[State 3020, rayo]
type = Explod
trigger1 = AnimElem = 68
trigger2 = AnimElem = 74
trigger3 = AnimElem = 81
pos = 55,-74
anim = 7025
sprpriority = 4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3020, rayo]
type = Explod
trigger1 = AnimElem = 68
trigger2 = AnimElem = 74
trigger3 = AnimElem = 81
pos = 25,-74
anim = 7026
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3020, rayo3-4]
type = Projectile
trigger1 = AnimElem = 69
trigger2 = AnimElem = 75
projanim = 7004
projID = 7004
projhits = 1000
projmisstime = 3
projpriority = -2
projsprpriority = -3
projremovetime = 44
projscale = .8 ,.8
offset = 40, -74
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 5
animtype = Heavy
guardflag = MA
guard.sparkno = -1
pausetime = 0,50
hitsound   = -1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3
air.animtype = Back
air.velocity = -3,-2
air.juggle = 3
envshake.time =  10 
envshake.time = 30           
envshake.ampl = 7
envshake.freq = 75
;PalFX
Palfx.time          = 60
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200
;---------------------------------------

[State 3020, rayo5]
type = Projectile
trigger1 = AnimElem = 81
projanim = 7004
projID = 7004
projhits = 1000
projmisstime = 3
projpriority = -2
projsprpriority = -3
projremovetime = 40
projscale = .8 ,.8
offset = 40, -74
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 6
animtype = Heavy
guardflag = MA
guard.sparkno = -1
pausetime = 2,9
hitsound   = S5,16
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3
air.animtype = Hard
air.velocity = -3,-2
air.juggle = 3
p2stateno = 1095
envshake.time = 35           
envshake.ampl = 7
envshake.freq = 176
fall.recover = 0
fall.damage = 50             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 100
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200

[State 3020, hit]
type = Explod
triggerall = NumExplod(7005) = 0
trigger1 = p2stateno = 1095
anim = 7005
ID = 7005
pos = -10,45
postype = p2
sprpriority = 6
ignorehitpause = 1
ownpal = 1
persistent = 0
supermove = 1
facing = -1
bindtime = -1
removetime = 90
;---------------------------------------

[State 3020, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3020]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Vortice Fulminante dell'Aurora
[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -2000
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 2

[State 3000] 
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3000]
type = SuperPause
trigger1 = time = 0
time = 265
movetime = 265
anim = S6000
pos = 25, -95
darken = 0

[State 3000, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 5
mul = 55,55,155
add = 5,5,5
invertall = 0

[State 3000]
type = PlaySnd
trigger1 = time = 0
value = 5,2

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,0

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2,1

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 14
value = 0,0

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 34
trigger2 = AnimElem = 37
value = 0,2

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 46
trigger2 = AnimElem = 53
trigger3 = AnimElem = 59
value = 0,1

;---------------------------------------
[State 3000, cosmo]
type = Explod
trigger1 = time = 0
pos = -60,-175
anim = 300011
ID = 300011
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(300011) >= 1
trigger1 = AnimElem = 12
ID = 300011

[State 3000, cosmo]
type = Explod
trigger1 = AnimElem = 12
pos = -60,-175
anim = 301011
ID = 301011
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(301011) >= 1
trigger1 = AnimElem = 24
ID = 301011

[State 3000, cosmo]
type = Explod
trigger1 = AnimElem = 24
pos = -60,-175
anim = 301012
ID = 301012
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(301012) >= 1
trigger1 = AnimElem = 31
ID = 301012

[State 3000, cosmo]
type = Explod
trigger1 = AnimElem = 31
pos = -60,-175
anim = 301013
ID = 301013
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(301013) >= 1
trigger1 = AnimElem = 36
ID = 301013

[State 3000, cosmo]
type = Explod
trigger1 = AnimElem = 36
pos = -60,-175
anim = 301014
ID = 301014
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(301014) >= 1
trigger1 = AnimElem = 38
ID = 301014

[State 3000, cosmo]
type = Explod
trigger1 = AnimElem = 38
pos = -60,-175
anim = 301015
ID = 301015
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(301015) >= 1
trigger1 = AnimElem = 63
ID = 301015

;---------------------------------------
[State 3000, Croce]
type = Explod
trigger1 = AnimElem = 1
pos = 25,-100
anim = 704022
ID = 704022
sprpriority = -5
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(704022) >= 1
trigger1 = AnimElem = 11
ID = 704022

[State 3000, Cigno]
type = Explod
trigger1 = AnimElem = 10
pos = -130,-220
anim = 704021
ID = 704021
sprpriority = -4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(704021) >= 1
trigger1 = AnimElem = 20
ID = 704021

;---------------------------------------
;---------------------------------------
;---------------------------------------

[State 3000]
type = PlaySnd
trigger1 = Time = 250
trigger2 = Time = 390
trigger3 = Time = 510
value = 5,17

[State 3000, Helper]
type = Helper
trigger1 = Time = 240
trigger2 = Time = 265
trigger3 = Time = 290
trigger4 = Time = 310
trigger5 = Time = 325
trigger6 = Time = 340
trigger7 = Time = 345
trigger8 = Time = 370
trigger9 = Time = 290
trigger10 = Time = 405
trigger11 = Time = 435
trigger12 = Time = 460
trigger13 = Time = 469
trigger14 = Time = 478
trigger15 = Time = 492
trigger16 = Time = 518
trigger17 = Time = 544
stateno = 6590
ID = 6590
postype = p1
pos = -300, -100
ignorehitpause = 1
ownpal = 1
supermovetime = 500

;---------------------------------------
;---------------------------------------
;---------------------------------------
;---------------------------------------
[State 3000, Helper cristalli]
type = Helper
trigger1 = time = 20
stateno = 8057
id = 8057
sprpriority = 5
pos = 5,-65
postype = p1
keyctrl = 0          
ownpal = 1
size.xscale = 1
size.yscale = 1
supermovetime = 1000

[State 3000, Helper cristalli]
type = Helper
trigger1 = time = 15
stateno = 8058
id = 8058
sprpriority = 6
pos = 20,-65
postype = p1
keyctrl = 0          
ownpal = 1
size.xscale = 1.7
size.yscale = 1.7
supermovetime = 1000

[State 3000, Helper cristalli]
type = Helper
trigger1 = time = 10
stateno = 8059
id = 8059
sprpriority = 7
pos = 30,-70
postype = p1
keyctrl = 0          
ownpal = 1
size.xscale = 2.2
size.yscale = 2.2
supermovetime = 1000

[State 3000, sfondo neve]
type = Explod
trigger1 = AnimElem = 23
pos = -320,0
triggerall = NumExplod(7041) = 0
anim = 7041
ID = 7041
postype = right
sprpriority = 7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 700

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(7041) >= 1
trigger1 = AnimElem = 83
ID = 7041

[State 3000, sfondo aurora]
type = Explod
trigger1 = AnimElem = 22
pos = -320,0
triggerall = NumExplod(70444) = 0
anim = 70444
ID = 70444
postype = right
sprpriority = -7
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500
scale = 1, .5

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(70444) >= 1
trigger1 = AnimElem = 63
ID = 7041

[State 3000, sfondo striscie]
type = Explod
trigger1 = AnimElem = 32
pos = -320, -125
triggerall = NumExplod(8054) = 0
anim = 8054
ID = 8054
postype = right
sprpriority = -9
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
removeongethit = 1
supermove = 1
removetime = 500

[State 3000, removeEX]
type = RemoveExplod
triggerall = NumExplod(8054) >= 1
trigger1 = AnimElem = 63
ID = 8054
;---------------------------------------

;---------------------------------------
[State 3000, POLVERE]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 20
trigger2 = AnimElem = 27
pos = 4,0
anim = 6001
ID = 131
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 1

[State 3000, POLVERE]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 35
trigger2 = AnimElem = 37
pos = 4,0
anim = 6001
ID = 131
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 1

[State 3000, POLVERE]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 48
trigger2 = AnimElem = 54
trigger3 = AnimElem = 60
pos = 39,-2
anim = 6001
ID = 131
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 1
removetime = 45

[State 3000, POLVERE]
type = Explod
triggerall = NumExplod(7014) = 0
trigger1 = AnimElem = 48
trigger2 = AnimElem = 54
trigger3 = AnimElem = 60
pos = 40,5
anim = 7014
ID = 7014
sprpriority = 6
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
persistent = 1

;---------------------------------------

;---------------------------------------
[State 3000, rayo1]
type = Explod
triggerall = NumExplod(7003) = 0
trigger1 = AnimElem = 20
pos = 10,-105
anim = 7003
ID = 7003
sprpriority = 4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
scale = .8, 1

[State 3000, rayo2]
type = Explod
triggerall = NumExplod(7003) = 0
trigger1 = AnimElem = 27
pos = -12,-105
anim = 7003
ID = 7003
sprpriority = 4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
scale = .8, 1

[State 3000, flash]
type = EnvColor
trigger1 = AnimElem = 20
trigger2 = AnimElem = 27
value = 255,255,255
under = 0
time = 3

[State 3000, envshake]
type = EnvShake
trigger1 = AnimElem = 20
trigger2 = AnimElem = 27
time = 10

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 20
trigger2 = AnimElem = 27
value = 5,12

[State 3000]
type = PlaySnd
trigger1 = AnimElem = 18
trigger2 = AnimElem = 25
value = 0,0

;---------------------------------------

[State 3000, voce]
type = PlaySnd
trigger1 = AnimElem = 18
value = 34,0
channel = 0

[State 3000, voce]
type = PlaySnd
trigger1 = AnimElem = 25
value = 34,1
channel = 0

[State 3000, voce]
type = PlaySnd
trigger1 = AnimElem = 34
value = 34,2
channel = 0

[State 3000, voce]
type = PlaySnd
trigger1 = AnimElem = 48
value = 12,3
channel = 0

;[State 3000, voce]
;type = PlaySnd
;trigger1 = AnimElem = 54
;value = 12,4
;channel = 0

;---------------------------------------
[State 3000, hit]
type = Explod
triggerall = NumExplod(7009) = 0
trigger1 = projhit7004 = 1
pos = -20,-65
anim = 7009
ID = 7009
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3000, hit]
type = Explod
triggerall = NumExplod(7011) = 0
trigger1 = projhit7004 = 1
pos = -20,-65
anim = 7011
ID = 7011
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3000, hit]
type = Explod
triggerall = NumExplod(7009) = 0
trigger1 = projguarded7004 = 1
pos = -10,-65
anim = F40
ID = 7009
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3000, rayo]
type = PlaySnd
trigger1 = AnimElem = 35
trigger2 = AnimElem = 37
value = 5,6

[State 3000, rayo]
type = PlaySnd
trigger1 = AnimElem = 48
trigger2 = AnimElem = 54
trigger3 = AnimElem = 60
value = 5,4

;---------------------------------------
[State 3000, rayo]
type = Explod
trigger1 = AnimElem = 35
pos = 75,-78
anim = 7025
sprpriority = 4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3000, rayo1]
type = Projectile
trigger1 = AnimElem = 35
projanim = 7004
projID = 7004
projhits = 1000
projmisstime = 3
projpriority = -2
projsprpriority = -3
projremovetime = 44
projscale = .8 ,.8
offset = 55, -80
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 4
animtype = Heavy
guardflag = MA
guard.sparkno = -1
pausetime = 0,50
hitsound   = -1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3
air.animtype = Back
air.velocity = -3,-2
air.juggle = 3
envshake.time =  10 
envshake.time = 30           
envshake.ampl = 7
envshake.freq = 75
;PalFX
Palfx.time          = 60
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200
;---------------------------------------

[State 3000, rayo]
type = Explod
trigger1 = AnimElem = 37
pos = 70,-74
anim = 7025
sprpriority = -4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3000, rayo2]
type = Projectile
trigger1 = AnimElem = 37
projanim = 7004
projID = 7004
projhits = 1000
projmisstime = 3
projpriority = -2
projsprpriority = -3
projremovetime = 44
projscale = .8 ,.8
offset = 40, -74
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 4
animtype = Heavy
guardflag = MA
guard.sparkno = -1
pausetime = 0,50
hitsound   = -1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3
air.animtype = Back
air.velocity = -3,-2
air.juggle = 3
envshake.time =  10 
envshake.time = 30           
envshake.ampl = 7
envshake.freq = 75
;PalFX
Palfx.time          = 60
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200
;---------------------------------------

[State 3000, rayo]
type = Explod
trigger1 = AnimElem = 48
trigger2 = AnimElem = 54
trigger3 = AnimElem = 60
pos = 55,-74
anim = 7025
sprpriority = 4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3000, rayo]
type = Explod
trigger1 = AnimElem = 48
trigger2 = AnimElem = 54
trigger3 = AnimElem = 60
pos = 25,-74
anim = 7026
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3000, rayo3-4]
type = Projectile
trigger1 = AnimElem = 48
trigger2 = AnimElem = 54
projanim = 7004
projID = 7004
projhits = 1000
projmisstime = 3
projpriority = -2
projsprpriority = -3
projremovetime = 44
projscale = .8 ,.8
offset = 40, -74
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 6
animtype = Heavy
guardflag = MA
guard.sparkno = -1
pausetime = 0,50
hitsound   = -1
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3
air.animtype = Back
air.velocity = -3,-2
air.juggle = 3
envshake.time =  10 
envshake.time = 30           
envshake.ampl = 7
envshake.freq = 75
;PalFX
Palfx.time          = 60
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200
;---------------------------------------

[State 3000, rayo5]
type = Projectile
trigger1 = AnimElem = 60
projanim = 7004
projID = 7004
projhits = 1000
projmisstime = 3
projpriority = -2
projsprpriority = -3
projremovetime = 40
projscale = .8 ,.8
offset = 40, -74
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 7
animtype = Heavy
guardflag = MA
guard.sparkno = -1
pausetime = 2,9
hitsound   = S5,16
guardsound = S6,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3
air.animtype = Hard
air.velocity = -3,-2
air.juggle = 3
p2stateno = 1095
envshake.time = 35           
envshake.ampl = 7
envshake.freq = 176
fall.recover = 0
fall.damage = 75             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 100
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200

[State 3000, hit]
type = Explod
triggerall = NumExplod(7005) = 0
trigger1 = p2stateno = 1095
anim = 7005
ID = 7005
pos = -10,45
postype = p2
sprpriority = 6
ignorehitpause = 1
ownpal = 1
persistent = 0
supermove = 1
facing = -1
bindtime = -1
removetime = 90

;---------------------------------------

[State 3000, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3000]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 8057]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 8057
ctrl = 0
sprpriority = -5

[State 8057, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8057] 
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 8057, afterimage]
type = AfterImage
trigger1 = time = 20
time = 30
PalContrast = 250,250,250
trans = Add

[State 8057]
type = AngleAdd
trigger1 = Time >= 1
value = -2.5

[State 8057]
type = AngleDraw
trigger1 = Time >= 1

[State 8057]
type = DestroySelf
trigger1 = time = 100

;----------------------
;----------------------
[Statedef 8058]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 8058
ctrl = 0
sprpriority = -6

[State 8058, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8058] 
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 8058, afterimage]
type = AfterImage
trigger1 = time = 10
time = 30
PalContrast = 250,250,250
trans = Add

[State 8058]
type = AngleAdd
trigger1 = Time >= 1
value = -1.8

[State 8058]
type = AngleDraw
trigger1 = Time >= 1

[State 8058]
type = DestroySelf
trigger1 = time = 100

;----------------------
;----------------------
[Statedef 8059]
type    = A
movetype= A
physics = N
juggle  = 6
anim = 8059
ctrl = 0
sprpriority = -7

[State 8059, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8059] 
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 8059, afterimage]
type = AfterImage
trigger1 = time = 1
time = 30
PalContrast = 250,250,250
trans = Add1

[State 8059]
type = AngleAdd
trigger1 = Time >= 1
value = -1

[State 8059]
type = AngleDraw
trigger1 = Time >= 1

[State 8059]
type = DestroySelf
trigger1 = time = 100

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

;---------------------------------
;Sacro Aquarius con Armatura d'Oro 
;---------------------------------
[Statedef 3100]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -3000
ctrl = 0
velset = 0,0
anim = 3100
sprpriority = 2

[State 3100, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3100] 
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3100]
type = SuperPause
trigger1 = time = 0
time = 470
movetime = 470
anim = S6000
pos = 7, -75
darken = 0

[State 3100, Darken]
type = BGPalfx
trigger1 = 1
ignorehitpause = 1
time = 5
mul = 65,65,55
add = 5,5,5
invertall = 0

[State 3100, Voce]
type = PlaySnd
trigger1 = time = 70
value = 35,3
channel = 0

[State 3100]
type = PlaySnd
trigger1 = time = 0
value = 5,2

[State 3100]
type = PlaySnd
trigger1 = time = 50
value = 2,1

[State 3100]
type = PlaySnd
trigger1 = time = 90
value = 9,0

[State 3100]
type = PlaySnd
trigger1 = Time = 100
value = 5,9

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 15
value = 4012,1

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 18
value = 5,1

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 26
value = 4010,1

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 28
value = 4010,0

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 30
value = 4010,3

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 34
value = 4010,5

[State 3100]
type = PlaySnd
trigger1 = AnimElem = 43
value = 2,2

;---------------------------------
[State 3100, camus cloth]
type = Explod
trigger1 = time = 50
pos = 70,0
anim = 3104
ID = 3104
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3100, removeEX]
type = RemoveExplod
triggerall = NumExplod(3104) >= 1
trigger1 = AnimElem = 25
ID = 3104

[State 3102, flash]
type = EnvColor
trigger1 = AnimElem = 17
value = 255,255,255
under = 0
time = 3

[State 3100, cignus cloth]
type = Explod
trigger1 = AnimElem = 16
pos = 0,0
anim = 31031
ID = 31031
sprpriority = 4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3100, ccloth light]
type = Explod
trigger1 = time = 100
pos = 71,0
anim = 7034
ID = 7034
sprpriority = -4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
scale = 1.2,1.2

[State 3100, ccloth cosmo]
type = Explod
trigger1 = time = 50
pos = 71,4
anim = 8020
ID = 8020
sprpriority = -3
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
;---------------------------------

;---------------------------------
[State 3100, polvere]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 18
pos = -7,-2
anim = 6001
ID = 131
sprpriority = -3
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 400

[State 3100, polvere]
type = Explod
triggerall = NumExplod(7014) = 0
trigger1 = AnimElem = 17
pos = -8,0
anim = 7014
ID = 7014
sprpriority = 4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 400
facing = -1

[State 3100, removeEX]
type = RemoveExplod
triggerall = NumExplod(131) >= 1
trigger1 = AnimElem = 43
ID = 131

[State 3100, removeEX]
type = RemoveExplod
triggerall = NumExplod(7014) >= 1
trigger1 = AnimElem = 43
ID = 7014
;---------------------------------

[State 3100]
type = ChangeState
trigger1 = animTime = 0
value = 3101
ctrl = 1

;---------------------------------
;---------------------------------
;---------------------------------
[Statedef 3101]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3101
sprpriority = 2

[State 3101, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3101] 
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 3101, Darken]
type = BGPalfx
trigger1 = time = 0
ignorehitpause = 1
time = 250
mul = 65,65,55
add = 5,5,5
invertall = 0

[State 3101, Darken]
type = BGPalfx
trigger1 = AnimElem = 9
ignorehitpause = 1
time = 500
mul = 175,175,165
add = 5,5,5
invertall = 1

[State 3101, Snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 35,0
channel = 0

[State 3101]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1

[State 3101]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4010,2

[State 3101]
type = PlaySnd
trigger1 = AnimElem = 9
value = 5,4

[State 3101]
type = PlaySnd
trigger1 = time = 30
value = 5,0

[State 3101, camus fac'e cazz!]
type = Explod
trigger1 = AnimElem = 1
pos = -100,-225
anim = 8051
ID = 8051
sprpriority = -6
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

;---------------------------------------
[State 3101, spause]
type = Explod
trigger1 = AnimElem = 4
pos = 15,-125
anim = 7032
ID = 7032
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3101, spause]
type = Explod
trigger1 = AnimElem = 4
pos = 15,-125
anim = 6008
ID = 111
sprpriority = 6
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
;---------------------------------------

;---------------------------------------
[State 3101, polvere]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 4
pos = 18,-1
anim = 6001
ID = 131
sprpriority = -3
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 70

[State 3101, polvere]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 8
pos = 28,0
anim = 6001
ID = 131
sprpriority = -3
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 400

[State 3101, polvere]
type = Explod
triggerall = NumExplod(7014) = 0
trigger1 = AnimElem = 8
pos = 28,-2
anim = 7014
ID = 7014
sprpriority = 3
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 400
;---------------------------------------

;---------------------------------------
[State 3101, cosmo]
type = Explod
trigger1 = time = 0
pos = -3,1
anim = 8021
ID = 8021
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 300

[State 3101, removeEX]
type = RemoveExplod
triggerall = NumExplod(8021) >= 1
trigger1 = AnimElem = 5
ID = 8021

[State 3101, cosmo]
type = Explod
trigger1 = AnimElem = 5
pos = -10,0
anim = 8022
ID = 8022
sprpriority = -2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 500
;---------------------------------------

;---------------------------------------
[State 3101, RayoFX]
type = Explod
trigger1 = AnimElem = 8
pos = 40,-74
anim = 7012
ID = 7012
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3101, envshake]
type = EnvShake
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
time = 50
;---------------------------------------

;---------------------------------------
[State 3101, hit]
type = Explod
triggerall = NumExplod(7009) = 0
trigger1 = projhit7033 = 1
pos = -20,-65
anim = 7009
ID = 7009
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3101, hit]
type = Explod
triggerall = NumExplod(7011) = 0
trigger1 = projhit7033 = 1
pos = -20,-65
anim = 7011
ID = 7011
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

;---------------------------------------

[State 3101, rayo]
type = Projectile
trigger1 = AnimElem = 9
projanim = 7033
projID = 7033
projhits = 1000
projmisstime = 3
projpriority = -2
projsprpriority = 5
projremovetime = 85
projscale = 1 ,1
offset = 85, -73
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 80
animtype = hard
pausetime = 0,50
hitsound   = S1,1
guardsound = S6,1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -7,-3
air.animtype = Back
air.velocity = -7,-3
air.juggle = 3
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
fall = 1
fall.recover = 0             
fall.damage = 100             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
;PalFX
Palfx.time          = 90
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200

[State 2100]
type = VarSet
triggerall = p2life < 1
trigger1 = 1
var(4) = 1

[State 3101]
type = ChangeState
trigger1 = Time = 210
value = 3102
ctrl = 1

;---------------------------------
;---------------------------------
;---------------------------------
[Statedef 3102]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 3102
sprpriority = 2

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(8022) >= 1
trigger1 = time = 0
ID = 8022

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(131) >= 1
trigger1 = time = 0
ID = 131

[State 3102, removeEX]
type = RemoveExplod
triggerall = NumExplod(7014) >= 1
trigger1 = time = 0
ID = 7014

[State 3102, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3102] 
type = AssertSpecial
trigger1 = Time = [0,130]
flag = noFG

[State 3102, Darken]
type = BGPalfx
trigger1 = time = 20
ignorehitpause = 1
time = 110
mul = 125,125,115
add = 5,5,5
invertall = 0

;---------------------------------
[State 3102, camus cloth]
type = Explod
trigger1 = AnimElem = 20
pos = -5,-130
anim = 3105
ID = 3105
sprpriority = 2
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
facing = -1

[State 3102, ccloth cosmo]
type = Explod
trigger1 = AnimElem = 20
pos = -5,-126
anim = 802011
ID = 802011
sprpriority = 1
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
facing = -1

[State 3102, cignus cloth]
type = Explod
trigger1 = AnimElem = 21
pos = 0,0
anim = 3103
ID = 3103
sprpriority = 4
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
;---------------------------------

[State 3102, flash]
type = EnvColor
trigger1 = AnimElem = 21
value = 255,255,255
under = 0
time = 3

[State 3102]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1

[State 3102]
type = PlaySnd
trigger1 = AnimElem = 10
value = 4010,5

[State 3102]
type = PlaySnd
trigger1 = AnimElem = 12
value = 4010,2

[State 3102]
type = PlaySnd
trigger1 = AnimElem = 15
value = 4010,0

[State 3102]
type = PlaySnd
trigger1 = AnimElem = 17
value = 4010,5

[State 3102]
type = PlaySnd
trigger1 = AnimElem = 19
value = 4010,1

[State 3102]
type = PlaySnd
trigger1 = AnimElem = 20
value = 4010,3

[State 3102]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

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

;--------------------------------------------
;Sacro Aquarius con Armatura del Cigno by Tux
;--------------------------------------------
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -3000
ctrl = 0
velset = 0,0
anim = 3200
sprpriority = 2

[State 3200, SND Aria]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,1

[State 3200, SND Gelo]
type = PlaySnd
trigger1 = AnimElem = 4
value = 5,0

[State 3200, Voce]
type = PlaySnd
trigger1 = AnimElem = 4
value = 35,1
channel = 0

[State 3200, Urlo]
type = PlaySnd
trigger1 = Time = 80
value = 35,2
channel = 0

[State 3200, Donna SX]
type = Explod
triggerall = Facing = 1
trigger1 = AnimElem = 5
anim = 8018
pos = -320,0
postype = right
sprpriority = -6
supermovetime = 70
removetime = 177
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3200, Donna DX]
type = Explod
triggerall = Facing = -1
trigger1 = AnimElem = 5
anim = 80180
pos = 0,0
postype = right
sprpriority = -6
supermovetime = 70
removetime = 177
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3200, Cosmo Donna SX]
type = Explod
triggerall = Facing = 1
trigger1 = AnimElem = 5
anim = 8019
pos = -320,0
postype = right
sprpriority = -7
supermovetime = 70
removetime = 177
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3200, Cosmo Donna DX]
type = Explod
triggerall = Facing = -1
trigger1 = AnimElem = 5
anim = 80190
pos = 0,0
postype = right
sprpriority = -7
supermovetime = 70
removetime = 177
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3200, Pausa]
type = SuperPause
trigger1 = AnimElem = 5
time = 70
anim = -1
darken = 1

[State 3200, FX]
type = Explod
trigger1 = AnimElem = 5
pos = 32,-148
anim = 7032
ID = 7032
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3200, Explod]
type = Explod
trigger1 = AnimElem = 5
pos = 32,-148
anim = 6000
ID = 111
sprpriority = 6
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3200, Polvere GIU]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 5
pos = 23,0
anim = 6001
ID = 131
sprpriority = -3
supermovetime = 70
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 80

[State 3200, Cosmo]
type = Explod
trigger1 = AnimElem = 1
anim = 8013
ID = 8013
pos = -70,-175
postype = p1
sprpriority = -3
removetime = -1
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0
supermove = 1

[State 3200, RemEx]
type = RemoveExplod
trigger1 = AnimElem = 6
ID = 8013

[State 3200, Cosmo]
type = Explod
trigger1 = AnimElem = 6
anim = 8023
pos = -70,-175
postype = p1
sprpriority = -3
removetime = 97
removeongethit = 1
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 0

[State 3200, SND Occhi]
type = PlaySnd
trigger1 = AnimElem = 6
value = 5,2

[State 3200, Polvere GIU]
type = Explod
triggerall = NumExplod(131) = 0
trigger1 = AnimElem = 9
pos = 23,0
anim = 6001
ID = 131
sprpriority = -3
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 90

[State 3200, Polvere SU]
type = Explod
triggerall = NumExplod(7014) = 0
trigger1 = AnimElem = 9
pos = 33,0
anim = 7014
ID = 7014
sprpriority = 3
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 90

[State 3200, Partenza Colpo]
type = Explod
trigger1 = AnimElem = 9
pos = 55,-72
anim = 7012
ID = 7012
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3200, Shake]
type = EnvShake
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
time = 50

[State 3200, Spark]
type = Explod
triggerall = NumExplod(7009) = 0
trigger1 = projhit7033 = 1
pos = -20,-65
anim = 7009
ID = 7009
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3200, Spark]
type = Explod
triggerall = NumExplod(7011) = 0
trigger1 = projhit7033 = 1
pos = -20,-65
anim = 7011
ID = 7011
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3200, Spark]
type = Explod
triggerall = NumExplod(7009) = 0
trigger1 = projguarded7033 = 1
pos = -10,-65
anim = F40
ID = 7009
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3200, Raggio]
type = Projectile
trigger1 = AnimElem = 10
projanim = 7033
projID = 7033
projhits = 25
projmisstime = 3
projpriority = -2
projsprpriority = 5
projremovetime = 85
projscale = 1 ,1
offset = 95, -71
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 20
animtype = hard
guardflag = MA
guard.sparkno = -1
pausetime = 0,50
hitsound   = S1,1
guardsound = S6,1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -7,-3
air.animtype = Back
air.velocity = -7,-3
air.juggle = 3
envshake.time = 25           
envshake.ampl = 7
envshake.freq = 176
fall = 1
fall.recover = 0             
fall.damage = 100             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 90
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200

[State 3200] 
type = varset
trigger1 = var(9) = 1
v = 9
value = 0

[State 3200] 
type = varset
trigger1 = var(8) = 1
v = 8
value = 0

[State 3200, Fine]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

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

;-----------------------------------------
;Polvere di Diamanti senza Armatura by Tux
;-----------------------------------------
[Statedef 3300]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -3000
ctrl = 0
velset = 0,0
anim = 3300
sprpriority = 2

[State 3300]
type = SuperPause
trigger1 = Time = 0
time = 150
movetime = 150
anim = -1
darken = 1
sound = S5,6

[State 3300]
type = PlaySnd
trigger1 = AnimElem = 1, = 5
value = 12,2
channel = 0

[State 3300]
type = Explod
trigger1 = AnimElem = 1, = 10
pos = 0,-50
postype = p1
anim = 6000
ID = 6000
sprpriority = 6
supermovetime = 9999
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3300]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5,2

[State 3300]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,1

[State 3300]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,3

[State 3300]
type = Helper
trigger1 = AnimElem = 6
stateno = 3301
id = 3301
sprpriority = 3
pos = 0,0
postype = p1
keyctrl = 0          
ownpal = 1
supermovetime = 9999

[State 3300]
type = PlaySnd
trigger1 = AnimElem = 7
value = 5,5

[State 3300]
type = EnvShake
trigger1 = AnimElem = 7
time = 94
freq = 70
ampl = 3

[State 3300]
type = Helper
trigger1 = AnimElem = 7
stateno = 3302
id = 3302
sprpriority = 3
pos = -13,-62
postype = p1
keyctrl = 0          
ownpal = 1
supermovetime = 9999

[State 3300]
type = Explod
trigger1 = AnimElem = 7
pos = 1,0
postype = p1
anim = 6001
ID = 6001
sprpriority = -3
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermovetime = 9999
removetime = 94

[State 3300]
type = Explod
trigger1 = AnimElem = 7
pos = 0,0
postype = p1
anim = 6002
ID = 6002
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermovetime = 9999
removetime = 94
scale = .9, .9

[State 3300]
type = Explod
trigger1 = AnimElem = 7
pos = 0,0
postype = back
anim = 7042
ID = 7042
sprpriority = -5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermovetime = 9999
removetime = 223

[State 3300]
type = PlaySnd
trigger1 = AnimElem = 7, = 30
value = 32,0
channel = 0

[State 3300]
type = EnvColor
trigger1 = AnimElem = 8, = 3
value = 255,255,255
under = 0
time = 2

[State 3300]
type = Explod
trigger1 = AnimElem = 9
pos = 0,0
postype = back
anim = 8027
ID = 8027
sprpriority = -6
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 129

[State 3300]
type = PlaySnd
trigger1 = AnimElem = 11
value = 5,4

[State 3300]
type = Explod
trigger1 = AnimElem = 12
pos = 0,0
postype = p1
anim = 8028
ID = 8028
sprpriority = -2
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 120

[State 3300]
type = Projectile
trigger1 = AnimElem = 12
projanim = 8026
projID = 8026
projhits = 1000
projmisstime = 3
projpriority = -2
projsprpriority = 1
projremovetime = 120
offset = 62, -93
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 9999
getpower = 0
givepower = 0
animtype = Hard
guard.sparkno = -1
pausetime = 0,9
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4
air.animtype = Back
air.velocity = -4,-2
air.juggle = 3
envshake.time =  10 
envshake.time = 30           
envshake.ampl = 7
envshake.freq = 75
Palfx.time          = 60
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200
fall = 1
fall.recover = 0             
fall.damage = 999             
fall.envshake.ampl = 6       
fall.envshake.freq = 178
fall.envshake.time = 15

[State 3300]
type = Explod
triggerall = NumExplod(7009) = 0
trigger1 = projhit8026 = 1
pos = -20,-90
anim = 7009
ID = 7009
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3300]
type = VarSet
trigger1 = projhit8026 = 1
v = 5
value = 1

[State 3300]
type = ChangeState
triggerall = Var(5) = 0
trigger1 = AnimElem = 13
value = 3303
ctrl = 0

[State 3300]
type = Explod
triggerall = Var(5) = 1
triggerall = P2Life <= 0
trigger1 = AnimElem = 13
pos = 0,0
postype = p1
anim = 8029
ID = 8029
sprpriority = -2
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = -1

[State 3300]
type = ChangeState
triggerall = Var(5) = 1
triggerall = P2Life <= 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 3300]
type = ChangeState
triggerall = P2Life > 0
trigger1 = AnimTime = 0
value = 3303
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 3301]
type    = S
movetype= I
physics = N
juggle  = 6
anim = 3301
ctrl = 0
sprpriority = 3

[State 3301]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3301]
type = DestroySelf
trigger1 = parent,StateNo = 3303
trigger1 = parent,AnimElem = 2

;---------------------------------------------------------------------------
[Statedef 3302]
type    = S
movetype= I
physics = N
juggle  = 6
anim = 8024
ctrl = 0
sprpriority = 3

[State 3302]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3302] 
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3302]
type = PalFX
trigger1 = 1
time = -1
add = 255,255,255

[State 3302]
type = AngleAdd
trigger1 = Time >= 1
value = -1

[State 3302]
type = AngleDraw
trigger1 = Time >= 1

[State 3302]
type = DestroySelf
trigger1 = time = 94

;---------------------------------------------------------------------------
[Statedef 3303]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 3303
sprpriority = 2

[State 3303]
type = VarSet
trigger1 = Time = 0
v = 5
value = 0

[State 3303]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4,4

[State 3303]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

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

;------------------------------------
;Sacro Aquarius senza Armatura by Tux
;------------------------------------
[Statedef 3400]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -3000
ctrl = 0
velset = 0,0
anim = 3400
sprpriority = 2

[State 3400]
type = SuperPause
trigger1 = Time = 0
time = 290
movetime = 290
anim = -1
darken = 1

[State 3400]
type = PlaySnd
trigger1 = AnimElem = 1, = 10
value = 10,1
channel = 0

[State 3400]
type = PalFX
trigger1 = AnimElem = 8, = 5
time = 30
sinadd = 255,255,255,5

[State 3400]
type = PlaySnd
trigger1 = AnimElem = 8, = 5
value = 6,1

[State 3400]
type = EnvColor
trigger1 = AnimElem = 9
value = 255,255,255
under = 0
time = 2

[State 3400]
type = Explod
trigger1 = AnimElem = 9
pos = 0,-90
postype = p1
anim = 8030
ID = 8030
sprpriority = 6
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3400]
type = Explod
trigger1 = AnimElem = 9
anim = 8033
id = 8033
pos = 0,0
postype = p1
sprpriority = -2
ownpal = 1
ignorehitpause = 1
bindtime = -1
supermove = 1
removetime = -1

[State 3400]
type = PlaySnd
trigger1 = AnimElem = 10
value = 5,8

[State 3400]
type = PlaySnd
trigger1 = AnimElem = 16
value = 0,1

[State 3400]
type = PlaySnd
trigger1 = AnimElem = 17
value = 5,0

[State 3400]
type = PlaySnd
trigger1 = AnimElem = 18
value = 35,0
channel = 0

[State 3400]
type = Explod
trigger1 = AnimElem = 18
pos = 7,-148
anim = 7032
ID = 7032
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3400]
type = Explod
trigger1 = AnimElem = 18
pos = 7,-148
anim = 6000
ID = 6000
sprpriority = 6
supermove = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3400]
type = Explod
triggerall = NumExplod(6001) = 0
trigger1 = AnimElem = 18
pos = -2,0
anim = 6001
ID = 6001
sprpriority = -3
supermovetime = 80
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 80

[State 3400]
type = Explod
triggerall = NumExplod(6001) = 0
trigger1 = AnimElem = 22
pos = -2,0
anim = 6001
ID = 6001
sprpriority = -3
supermove = 0
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 180

[State 3400]
type = Explod
triggerall = NumExplod(7014) = 0
trigger1 = AnimElem = 22
pos = 8,0
anim = 7014
ID = 7014
sprpriority = 3
supermove = 0
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = 180

[State 3400]
type = Explod
trigger1 = AnimElem = 22
pos = 48,-72
anim = 7012
ID = 7012
sprpriority = 5
supermove = 0
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3400]
type = EnvShake
trigger1 = AnimElem = 18
trigger2 = AnimElem = 22
time = 50

[State 3400]
type = ModifyExplod
triggerall = NumExplod(8033)
trigger1 = AnimElem = 23
ID = 8033
supermovetime = 0

[State 3400]
type = Explod
trigger1 = AnimElem = 23
anim = 8040
pos = -3,-3
postype = back
sprpriority = -6
supermove = 0
removeongethit = 1
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 3400]
type = Projectile
trigger1 = AnimElem = 23
projanim = 8031
projID = 8031
projhits = 50
projmisstime = 3
projpriority = -2
projsprpriority = 5
projremovetime = 170
projscale = 1 ,1
offset = 88, -73
sparkno = -1
velocity = 0,0 
attr = S, HP
damage    = 50
animtype = hard
guard.sparkno = -1
pausetime = 0,50
hitsound   = S1,1
guardsound = S6,1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -7,-3
air.animtype = Back
air.velocity = -7,-3
air.juggle = 3
envshake.time = 25
envshake.ampl = 7
envshake.freq = 176
fall = 1
fall.recover = 0             
fall.damage = 200             
fall.envshake.ampl = 6
fall.envshake.freq = 178
fall.envshake.time = 15
Palfx.time          = 90
Palfx.add           = 110,130,160
Palfx.sinadd        = -112,-122,-112,3
Palfx.mul           = 150,150,200

[State 3400]
type = Explod
triggerall = NumExplod(7009) = 0
trigger1 = projhit8031 = 1
pos = -20,-65
anim = 7009
ID = 7009
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3400]
type = Explod
triggerall = NumExplod(7011) = 0
trigger1 = projhit8031 = 1
pos = -20,-65
anim = 7011
ID = 7011
postype = p2
sprpriority = 4
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermove = 1

[State 3400]
type = ChangeState
triggerall = P2Life <= 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 3400]
type = AssertSpecial
triggerall = P2Life > 0
trigger1 = AnimTime = 0
flag = nokosnd
flag2 = nokoslow

[State 3400]
type = LifeSet
triggerall = P2Life > 0
trigger1 = AnimTime = 0
value = 0

[State 3400]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = WinTime
trigger2 = LoseTime
trigger3 = DrawGame
value = 186
ctrl = 0

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

;helper cristal di ghiaccio
[Statedef 6555]
type    = A
movetype= I
physics = N
juggle  = 6
anim = 7021
ctrl = 0
sprpriority = 0

[State 6581]
type = assertspecial
trigger1 = Time >= 0
flag = noshadow

[State 6555, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6555, afterimage]
type = AfterImage
trigger1 = time = 1
time = 100
PalContrast = 250,250,250
trans = Add1

;-----------------------------
[State 99, Velset]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,3

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 1
x = 0
y = -4

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 2
x = -1
y = -3

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 3
x = 1
y = -5
;-----------------------------

[State 6555]
type = DestroySelf
trigger1 = time = 70

;-------------------------------------------
;-------------------------------------------
;helper stelle di ghiaccio
[Statedef 6556]
type    = A
movetype= I
physics = N
juggle  = 6
anim = 7027
ctrl = 0
sprpriority = 0

[State 6581]
type = assertspecial
trigger1 = Time >= 0
flag = noshadow

[State 6555, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6555, afterimage]
type = AfterImage
trigger1 = time = 1
time = 100
PalContrast = 250,250,250
trans = Add1

;-----------------------------
[State 99, Velset]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,3

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 1
x = -1
y = -3

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 2
x = 1
y = -5

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 3
x = 0
y = -4

;-----------------------------

[State 6555]
type = DestroySelf
trigger1 = time = 70


;-------------------------------------------
;-------------------------------------------
;helper cristal di ghiaccio
[Statedef 6560]
type    = A
movetype= I
physics = N
juggle  = 6
anim = 70471
ctrl = 0
sprpriority = 0

[State 6581]
type = assertspecial
trigger1 = Time >= 0
flag = noshadow

[State 6555, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6555, afterimage]
type = AfterImage
trigger1 = time = 1
time = 100
PalContrast = 150,150,150
trans = Add1

[State 6555]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 6555]
type = AngleAdd
trigger1 = Time >= 1
value = -10

[State 6555]
type = AngleDraw
trigger1 = Time >= 1 && Pos Y <= 10

;-----------------------------
[State 99, Velset]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,3

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 1
x = 0
y = -4

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 2
x = -1
y = -3

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 3
x = 1
y = -5
;-----------------------------

[State 6555]
type = DestroySelf
trigger1 = time = 70


;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;helper cristal di ghiaccio
[Statedef 6561]
type    = A
movetype= I
physics = N
juggle  = 6
anim = 70471
ctrl = 0
sprpriority = 5

[State 6581]
type = assertspecial
trigger1 = Time >= 0
flag = noshadow

[State 6555, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6555]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 6555]
type = AngleAdd
trigger1 = Time >= 1
value = -5

[State 6555]
type = AngleDraw
trigger1 = Time >= 1 && Pos Y <= 10

;-----------------------------
[State 99, Velset]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,3

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 1
x = 0
y = -4

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 2
x = -1
y = -6

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 3
x = 1
y = -5
;-----------------------------

[State 6555]
type = DestroySelf
trigger1 = time = 70


;-------------------------------------------
;-------------------------------------------
;helper cristal di ghiaccio
[Statedef 6562]
type    = A
movetype= I
physics = N
juggle  = 6
anim = 70472
ctrl = 0
sprpriority = 6

[State 6581]
type = assertspecial
trigger1 = Time >= 0
flag = noshadow

[State 6555, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6555]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 6555]
type = AngleAdd
trigger1 = Time >= 1
value = -6

[State 6555]
type = AngleDraw
trigger1 = Time >= 1 && Pos Y <= 10

;-----------------------------
[State 99, Velset]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,3

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 1
x = 0
y = -4

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 2
x = -1
y = -6

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 3
x = 1
y = -5
;-----------------------------

[State 6555]
type = DestroySelf
trigger1 = time = 70


;-------------------------------------------
;-------------------------------------------
;helper cristal di ghiaccio
[Statedef 6563]
type    = A
movetype= I
physics = N
juggle  = 6
anim = 70473
ctrl = 0
sprpriority = 7

[State 6581]
type = assertspecial
trigger1 = Time >= 0
flag = noshadow

[State 6555, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6555]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 6555]
type = AngleAdd
trigger1 = Time >= 1
value = -4

[State 6555]
type = AngleDraw
trigger1 = Time >= 1 && Pos Y <= 10

;-----------------------------
[State 99, Velset]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,3

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 1
x = 0
y = -4

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 2
x = -1
y = -5

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 3
x = 1
y = -5
;-----------------------------

[State 6555]
type = DestroySelf
trigger1 = time = 70


;-------------------------------------------
;-------------------------------------------
;helper cristal di ghiaccio
[Statedef 6564]
type    = A
movetype= I
physics = N
juggle  = 6
anim = 70474
ctrl = 0
sprpriority = 6

[State 6581]
type = assertspecial
trigger1 = Time >= 0
flag = noshadow

[State 6555, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6555]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 6555]
type = AngleAdd
trigger1 = Time >= 1
value = -6

[State 6555]
type = AngleDraw
trigger1 = Time >= 1 && Pos Y <= 10

;-----------------------------
[State 99, Velset]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,3

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 1
x = 0
y = -4

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 2
x = -1
y = -6

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 3
x = 1
y = -5
;-----------------------------

[State 6555]
type = DestroySelf
trigger1 = time = 70


;-------------------------------------------
;-------------------------------------------
;helper cristal di ghiaccio
[Statedef 6565]
type    = A
movetype= I
physics = N
juggle  = 6
anim = 70475
ctrl = 0
sprpriority = 5

[State 6581]
type = assertspecial
trigger1 = Time >= 0
flag = noshadow

[State 6555, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6555]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 6555]
type = AngleAdd
trigger1 = Time >= 1
value = -5

[State 6555]
type = AngleDraw
trigger1 = Time >= 1 && Pos Y <= 10

;-----------------------------
[State 99, Velset]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,3

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 1
x = 0
y = -4

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 2
x = -1
y = -5

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 3
x = 1
y = -5
;-----------------------------

[State 6555]
type = DestroySelf
trigger1 = time = 70

;-------------------------------------------
;-------------------------------------------
;helper cristal di ghiaccio
[Statedef 6566]
type    = A
movetype= I
physics = N
juggle  = 6
anim = 70476
ctrl = 0
sprpriority = 7

[State 6581]
type = assertspecial
trigger1 = Time >= 0
flag = noshadow

[State 6555, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6555]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 6555]
type = AngleAdd
trigger1 = Time >= 1
value = -4

[State 6555]
type = AngleDraw
trigger1 = Time >= 1 && Pos Y <= 10

;-----------------------------
[State 99, Velset]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,3

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 1
x = 0
y = -4

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 2
x = -1
y = -5

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 3
x = 1
y = -5
;-----------------------------

[State 6555]
type = DestroySelf
trigger1 = time = 70

;-------------------------------------------
;-------------------------------------------
;helper cristal di ghiaccio
[Statedef 6567]
type    = A
movetype= I
physics = N
juggle  = 6
anim = 70477
ctrl = 0
sprpriority = 4

[State 6581]
type = assertspecial
trigger1 = Time >= 0
flag = noshadow

[State 6555, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6555]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 6555]
type = AngleAdd
trigger1 = Time >= 1
value = -6

[State 6555]
type = AngleDraw
trigger1 = Time >= 1 && Pos Y <= 10

;-----------------------------
[State 99, Velset]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,3

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 1
x = 0
y = -4

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 2
x = -1
y = -6

[State 99, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 3
x = 1
y = -5
;-----------------------------

[State 6555]
type = DestroySelf
trigger1 = time = 70




;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;-------------------------------------------

;Helper effetto cristalli di ghiaccio
[Statedef 6580]
type = A
movetype = I
physics = N
anim = 7036
ctrl = 0
velset = 0,0

[State 6580, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6581]
type = assertspecial
trigger1 = Time >= 0
flag = noshadow

[State 6580]
type = Posset
trigger1 = Pos x != root,Pos x
x = root,Pos x

[State 6580]
type = Varset
trigger1 = Time = 0
var(25) = 1

[State 6580]
type = Varset
trigger1 = Time = 1
var(25) = 0

[State 6580]
type = velset
trigger1 = Time = [3,10]
x = 9

[State 6580]
type = VarRandom
trigger1 = Time <= 10
v = 5
range = -50, 20

[State 6580]
type = VarRandom
trigger1 = Time <= 10
v = 6
range = -50, 20

[State 6580]
type = VarRandom
trigger1 = Time <= 10
v = 7
range = -100, -50

[State 6580]
type = helper
;triggerall= Numhelper + Enemy,numHelper <= 15
triggerall = Numhelper(6581) <= 5
trigger1 = Time <= 17
trigger1 = Timemod = 3,0
ignorehitpause = 1
pos = Var(5),Var(7)
ownpal = 1
postype = p1
;size.xscale=0.7
;size.yscale=0.7
stateno = 6581
ID = 6581

[State 6580]
type = helper
;triggerall= Numhelper + Enemy,numHelper <= 15
triggerall = Numhelper(6581) <= 5
trigger1 = Time <= 17
trigger1 = Timemod = 3,0
ignorehitpause = 1
pos = Var(6),Var(7)
ownpal = 1
postype = p1
;size.xscale=0.5
;size.yscale=0.5
stateno = 6581
ID = 6581

[State 6580]
type = destroyself
trigger1 = Time = 17

;-------------------------------------------
;-------------------------------------------
[Statedef 6581]
type = A
movetype = I
physics = N
anim = 7037
ctrl = 0
velset = 0,0

[State 6581, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6581]
type = assertspecial
trigger1 = Time >= 0
flag = noshadow

[State 6581]
type = sprpriority
Trigger1 = Time >= 0 
value = 9 

[State 6581]
type = Varset
triggerall= Ishelper(6581) = 1
trigger1 = Time = 0
ignorehitpause = 1
var(20) = 0

[State 6581]
type = Varadd
triggerall= Ishelper(6581) = 1
trigger1 = Time > 2
ignorehitpause = 1
var(20) = -12

[State 6581]
type = PalFX
triggerall= Ishelper(6581) = 1
trigger1 = Time > 2
add = Var(20)-1,Var(20)-1,Var(20)-1
time = 1

[State 6581]
type = VarRandom
triggerall= Ishelper(6581) = 1
trigger1 = Time >= 0
v = 12
range = 0, 5

[State 6581]
type = Velset
trigger1 = var(12) = 0
trigger1 = Time = 0
x = 0.1

[State 6581]
type = Velset
trigger1 = var(12) = 1
trigger1 = Time = 0
x = 0.3

[State 6581]
type = Velset
trigger1 = var(12) = 2
trigger1 = Time = 0
x = 0.6

[State 6581]
type = Velset
trigger1 = var(12) = 3
trigger1 = Time = 0
x = 0.9

[State 6581]
type = Velset
trigger1 = var(12) = 4
trigger1 = Time = 0
x = 1

[State 6581]
type = Velset
trigger1 = var(12) = 5
trigger1 = Time = 0
x = 1.5

[State 6581]
type = Veladd
trigger1 = var(20) < -155
trigger1 = Vel x > 1
x = -0.5

[State 6581]
type = VarRandom
trigger1 = Time = 0
trigger2 = var(20) = [-155,-145]
v = 11
range = 0, 5

[State 6581]
type = Velset
trigger1 = var(11) = 1
y = 0.3

[State 6581]
type = Velset
trigger1 = var(11) = 2
y = -0.3

[State 6581]
type = Velset
trigger1 = var(11) = 3
y = 0.7

[State 6581]
type = Velset
trigger1 = var(11) = 4
y = -0.7

[State 6581]
type = destroyself
trigger1 = time = 30


;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------

;helper cigni
[Statedef 6590]
type    = A
movetype= I
physics = N
juggle  = 6
anim = 8050
ctrl = 0
sprpriority = -3

[State 6590]
type = assertspecial
trigger1 = Time >= 0
flag = noshadow

[State 6590, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA

;-----------------------------
[State 6590, Velset]
type = VarRandom
trigger1 = Time = 0
v = 6
range = 1,4

[State 6590, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 1
x = 4
y = 0

[State 6590, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 2
x = 5
y = 0


[State 6590, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 3
x = 6
y = -1

[State 6590, Velset]
type = Velset
trigger1 = time >= 1
trigger1 = Var(6) = 4
x = 5
y = 1
;-----------------------------

[State 6590]
type = DestroySelf
trigger1 = time = 150



;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
;--------------------------------------------------------------------
; player 2 state
[Statedef 1025]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] 
type = ChangeAnim2
trigger1 = Time >= 0
value = 1025

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1026

;----------------------------------
;player2 on air
[Statedef 1026]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

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
value = F7, 0

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 1028

;------------------------------------------
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
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------

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

;------------------------------------------

;Face Right
[State -2, faceVar] 
type = VarSet
triggerall = Var(51) != 2
trigger1 = Facing = 1
v = 51
value = 1

;Face Left
[State -2, faceVar] 
type = VarSet
triggerall = Var(51) != 1
trigger1 = Facing = -1
v = 51
value = 2

;------------------------------------------

;Right
[State -2 ,2]
type = Explod
triggerAll = Var(51) = 1
trigger1 = StateNo = 999
trigger1 = Time = 15
anim = 6009
postype = left
pos = 65,175
sprpriority = -5
ownpal = 1
persistent = 0
removeongethit = 0
supermove = 1

;Left 
[State -2 ,2]
type = Explod
triggerAll = Var(51) = 2
trigger1 = StateNo = 999
trigger1 = Time = 15
anim = 6009
postype = right
pos = -65,175
sprpriority = -5
ownpal = 1
persistent = 0
removeongethit = 0
supermove = 1

;------------------------------------------

[State -2, VarSet]
type = VarSet
triggerall = var(9) = 0
triggerall = var(8) = 1
trigger1 = power = 0
v = 8
value = 0

[State -2, powerAdd]
type = powerAdd
trigger1 = var(8) = 1
value = -5

[State -2, Brilla]
type = PalFX
triggerall = var(8) = 1
triggerall = power >= 1
triggerall = life >= 1
trigger1  = anim != 6666666
trigger1 = AnimElem = 2
time = 100
add = 5,5,5
sinadd = 200,200,10,4

[State -2]
type = AttackMulSet
triggerall = var(8) = 1
triggerall = power >= 1
triggerall = life >= 1
trigger1 = anim != 6666666
trigger1 = AnimElem = 2
value = 2
 
[State -2]
type = AttackMulSet
triggerall = var(8) != 1
triggerall = var(8) = 0
triggerall = power < 1
triggerall = life >= 1
trigger1 = anim != 6666666
trigger1 = AnimElem = 2
value = 1

[State -2, STAND]
type = Explod
triggerall = life > 250
triggerall = stateno = 0
triggerall = var(8) = 1
triggerall = NumExplod(2) = 0
trigger1 = time = 1
anim = 2
id = 2
pos = 0,0
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
supermove = 0
removeongethit = 1

[State -2, STAND]
type = Explod
triggerall = life <= 250
triggerall = stateno = 0
triggerall = var(8) = 1
triggerall = NumExplod(3) = 0
trigger1 = time = 1
anim = 3
id = 3
pos = 0,-1
postype = p1
sprpriority = -2
removetime = -1
bindtime = -1
ownpal = 1
supermove = 0
removeongethit = 1

;--------------------------------

[State -2, Helper]
type = Helper
triggerall = var(8) = 1
triggerall = stateno = 0
triggerall = NumHelper(6556) <= 2
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
stateno = 6556
ID = 6556
postype = p1
pos = 15,-50
;size.xscale = .8
;size.yscale = .8
ownpal = 1

[State 99, Helper]
type = Helper
triggerall = var(8) = 1
triggerall = stateno = 0
triggerall = NumHelper(6555) <= 2
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
stateno = 6555
ID = 6555
postype = p1
pos = 25,-60
size.xscale = .4
size.yscale = .4
ownpal = 0

[State -2, Helper]
type = Helper
triggerall = var(8) = 1
triggerall = stateno = 0
triggerall = NumHelper(65567) <= 2
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
stateno = 6556
ID = 65567
postype = p1
pos = -30,-70
;size.xscale = .7
;size.yscale = .7
ownpal = 1

[State -2, Helper]
type = Helper
triggerall = var(8) = 1
triggerall = stateno = 0
triggerall = NumHelper(65555) <= 2
trigger1 = AnimElem = 5
trigger2 = AnimElem = 10
stateno = 6555
ID = 65555
postype = p1
pos = -15,-80
size.xscale = .3
size.yscale = .3
ownpal = 0

[State -2, Helper]
type = Helper
triggerall = var(8) = 1
triggerall = stateno = 0
triggerall = NumHelper(65566) <= 2
trigger1 = AnimElem = 6
trigger2 = AnimElem = 11
stateno = 6556
ID = 65566
postype = p1
pos = -10,-70
;size.xscale = .6
;size.yscale = .6
ownpal = 1

;------------------------------------------

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 40
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 45
trigger1 = time = 1
value = 12,2

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 255
trigger1 = time = 1
value = 12,3

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 225
trigger1 = time = 1
value = 12,2

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 440
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 450
trigger1 = time = 1
value = 12,2

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 430
trigger1 = time = 1
value = 12,2

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 620
trigger1 = time = 1
value = 12,2

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 600
trigger1 = time = 1
value = 12,0

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = stateno = 640
trigger1 = time = 1
value = 12,0

;---------- Hit ------------
[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5000
trigger2 = anim = 5001
trigger3 = anim = 5010
trigger4 = anim = 5011
value = 10,5

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5010
trigger1 = anim = 5020
trigger2 = anim = 5021
value = 10,6

[State -2]
type = PlaySnd
triggerall = random < 250
triggerall = time = 1
triggerall = stateno = 5000
trigger1 = anim = 5002
trigger2 = anim = 5012
value = 10,0

[State -2]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10,2

[State -2]
type = PlaySnd
trigger1 = random < 250
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 10,3

;---------------------------------------------------------------------------
;Combo 
;---------------------------------------------------------------------------

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 1100

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235) 
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 235) && (movecontact) 
value = 1100

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 245) 
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 245) && (movecontact) 
value = 1100

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 1000

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 1000

;Combo
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

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 1200

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235) 
trigger1 = (movecontact)
value = 1200

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 245) 
trigger1 = (movecontact)
value = 1200

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240) 
trigger1 = (movecontact)
value = 255
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 255) && (prevstateno = 240) && (movecontact) 
value = 1000

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 200) 
trigger1 = (movecontact)
value = 235
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 200) && (movecontact) 
value = 245
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 245) && (prevstateno = 235) && (movecontact) 
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 245) && (movecontact) 
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 230) && (movecontact) 
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 210) && (movecontact) 
value = 225

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235) 
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 235) && (prevstateno = 200) && (movecontact) 
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
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 220) && (prevstateno = 230) && (movecontact) 
value = 255

;Combo
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

;Combo
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
value = 225

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 210) 
trigger1 = (movecontact)
value = 225

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235) 
trigger1 = (movecontact)
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 235) && (movecontact) 
value = 245
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 245) && (prevstateno = 230) && (movecontact) 
value = 240
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 240) && (prevstateno = 245) && (movecontact) 
value = 250

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 235) 
trigger1 = (movecontact)
value = 245
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 245) && (prevstateno = 235) && (movecontact) 
value = 230

;Combo
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

;Combo
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 240) 
trigger1 = (movecontact)
value = 255
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 255) && (prevstateno = 240) && (movecontact) 
value = 250

;---------------------------------------------------------------------------

;Combo abbasato
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

;Combo abbasato
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

;Combo abbasato
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 420) 
trigger1 = (movecontact)
value = 430

;Combo abbasato
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400) 
trigger1 = (movecontact)
value = 430
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 430) && (prevstateno = 400) && (movecontact) 
value = 420

;---------------------------------------------------------------------------

;Combo in aria
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640) 
trigger1 = (movecontact)
value = 1300

;Combo in aria
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 610) 
trigger1 = (movecontact)
value = 1300

;Combo in aria
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 650

;Combo in aria
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 610
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 610) && (prevstateno = 630) && (movecontact) 
value = 640

;---------------------------------------------------------------------------
;Special Moves
;---------------------------------------------------------------------------

;carika cosmo
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 99])
trigger1 = (P2bodydist X >= 150) && (power < 3000) && (prevstateno != 5120)
trigger1 = var(8) = 0
value = 900

;Furia del Cigno
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (p2statetype = S) && (ctrl) && (random = [100, 149])
trigger1 = (P2bodydist X <= 10) && (prevstateno != 5120)
value = 709

;Kolodny Smerch debole
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [150, 199])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120)
value = 1100

;Kolodny Smerch Forte
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [200, 249])
trigger1 = (P2bodydist X <= 50) && (prevstateno != 5120) 
value = 1000

;Kolodny Smerch + Congelamento
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [250, 299])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120) 
value = 1200

;Anelli di Ghiaccio
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [300, 349])
trigger1 = (P2bodydist X >= 200) && (prevstateno != 5120) && (P2StateNo != 1501)
value = 1500

;Cignus Fly
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = A) && (ctrl) && (random = [350, 399])
trigger1 = (P2bodydist X <= 200) && (prevstateno != 5120) 
value = 1300

;Cygnus Kick
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = A) && (p2statetype != A) && (ctrl) && (random = [400, 449])
trigger1 = (P2bodydist X >= 50) && (P2bodydist X <= 150) && (Pos Y <= -75) && (prevstateno != 5120)
value = 1600

;Mini-Polvere di Diamanti
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype != A) && (ctrl) && (random = [450, 499])
trigger1 = (P2bodydist X >= 80) && (prevstateno != 5120)
value = 1700

;---------------------------------------------------------------------------
;Super Moves
;---------------------------------------------------------------------------

;Polvere di Diamanti
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 160) && (power >= 1000) && (power < 3000) && (random = [500,549])
value = 3030

;Aurora del Nord
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 150) && (power >= 2000) && (random = [550,599])
value = 3020

;Vortice Fulminate Dell'Aurora
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 150) && (power >= 2000) && (random = [600,649])
value = 3000

;Sacro Aquarius
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 80) && (power >= 3000) && (random = [650,699])
value = 3200

;Polvere di Diamanti senza Armatura
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (p2life <= 250) && (ctrl)
trigger1 = (p2bodydist X >= 160) && (power >= 3000) && (random = [700,749])
value = 3300

;Sacro Aquarius senza Armatura
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(59) != 0) && (statetype = S) && (life <= 250) && (ctrl)
trigger1 = (p2bodydist X >= 80) && (P2StateType != A) && (power >= 3000) && (random = [750,799])
value = 3400

;settimo senso
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = var(8) = 0
triggerall = (var(59) != 0) && (statetype = S) && (life <= 250) && (ctrl)
trigger1 = (p2bodydist X >= 100) && (power >= 3000) && (random = [800,849])
value = 999

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

[State -3, remove]
type = RemoveExplod
triggerall = NumExplod(701010) >= 1
trigger1 = p2stateno != 1203
ID = 701010

[State -3, remove]
type = RemoveExplod
triggerall = NumExplod(7007) >= 1
trigger1 = p2stateno != 1501
ID = 7007

;---------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Anim = 20
trigger1 = Animelem = 2
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Anim = 20
trigger1 = Animelem = 6
value = 3,1

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Anim = 21
trigger1 = Animelem = 4
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Anim = 21
trigger1 = Animelem = 7
value = 3,1

;---------------------------------------

[State -3, Jump]
type = PlaySnd
triggerall = stateno = 40
trigger1 = time = 1
value = 2,0

[State -3, Air Jump]
type = PlaySnd
triggerall = stateno = 45
trigger1 = time = 1
value = 2,1

[State -3, Air Jump]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = time = 1
value = 2,2

;---------------------------------------

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = time = 1
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add

[State -3, Run Forward]
type = Explod
triggerall = stateno = 100
trigger1 = AnimElem = 2
pos = 25,0
anim = 6006
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
trigger1 = Animelem = 2
value = 3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = Animelem = 5
value = 3,1

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = time = 1
value = 2,1

[State -3, Run Back]
type = Explod
triggerall = stateno = 105
trigger1 = time = 5
pos = -10,12
anim = 60041
sprpriority = 5
supermove = 1
removeongethit = 1
scale = .8, .8
ownpal = 1

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 106
trigger1 = time = 1
value = 2,2

;-------------------------------------

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = var(58) = 0
triggerall = life <= 0
triggerall = anim = 5150
trigger1 = time = 30
trigger2 = time = 35
trigger3 = time = 40
value = 6, 1

;---------------------------------------

[State -3, StopSnd]
type = StopSnd
trigger1 = stateno != 0
channel = 9