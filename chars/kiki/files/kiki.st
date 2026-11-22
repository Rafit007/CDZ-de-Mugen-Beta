;---------------------------------------------------------------------------
; KIKI DEF FILE by TonyAdv
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 170, 2]
type = AssertSpecial
trigger1 = time <= 80
flag = roundnotover

[State 170]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 0
channel = 0

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Matchover = 0
value = 181

[State 180, 1]
type = ChangeState
trigger1 = Matchover = 1
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
trigger1 = time <= 100
flag = roundnotover

[State 181, 2]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 181, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 8
channel = 0

;---------------------------------------------------------------------------
; Win pose 2
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, 1]
type = AssertSpecial
trigger1 = time <= 120
flag = roundnotover

[State 182, 2]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 182, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 1
channel = 0

;---------------------------------------------------------------------------
;Intro state decider
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,99

[State 190, friends]
type = ChangeState
trigger1 = p2name = "seiya" || p4name = "seiya"
trigger2 = p2name = "seiya2" || p4name = "seiya2"
trigger3 = p2name = "seiya3" || p4name = "seiya3"
trigger4 = p2name = "shiryu" || p4name = "shiryu"
trigger5 = p2name = "shiryu2" || p4name = "shiryu2"
trigger6 = p2name = "shiryu3" || p4name = "shiryu3"
trigger7 = p2name = "shun" || p4name = "shun"
trigger8 = p2name = "shun2" || p4name = "shun2"
trigger9 = p2name = "shun3" || p4name = "shun3"
trigger10 = p2name = "hyoga" || p4name = "hyoga"
trigger11 = p2name = "hyoga2" || p4name = "hyoga2"
trigger12 = p2name = "hyoga3" || p4name = "hyoga3"
trigger13 = p2name = "ikki" || p4name = "ikki"
trigger14 = p2name = "ikki2" || p4name = "ikki2"
trigger15 = p2name = "ikki3" || p4name = "ikki3"
trigger16 = p2name = "athena" || p4name = "athena"
trigger17 = p2name = "shaina" || p4name = "shaina"
trigger18 = p2name = "marin" || p4name = "marin"
trigger19 = p2name = "jabu" || p4name = "jabu"
trigger20 = p2name = "ichi" || p4name = "ichi"
trigger21 = p2name = "nachi" || p4name = "nachi"
trigger22 = p2name = "ban" || p4name = "ban"
trigger23 = p2name = "geki" || p4name = "geki"
trigger24 = p2name = "kiki" || p4name = "kiki"
value = 191

[State 190, asgard]
type = ChangeState
trigger1 = p2name = "toll" || p4name = "toll"
trigger2 = p2name = "hagen" || p4name = "hagen"
trigger3 = p2name = "fenril" || p4name = "fenril"
trigger4 = p2name = "mime" || p4name = "mime"
trigger5 = p2name = "sigfried" || p4name = "sigfried"
trigger6 = p2name = "cyd" || p4name = "cyd"
trigger7 = p2name = "bud" || p4name = "bud"
trigger8 = p2name = "alberich" || p4name = "alberich"
trigger9 = p2name = "hylda" || p4name = "hylda"
value = 192

[State 190, poseidon]
type = ChangeState
trigger1 = p2name = "kanon" || p4name = "kanon"
trigger2 = p2name = "tethys" || p4name = "tethys"
trigger3 = p2name = "baian" || p4name = "baian"
trigger4 = p2name = "io" || p4name = "io"
trigger5 = p2name = "poseidon" || p4name = "poseidon"
trigger6 = p2name = "kaysa" || p4name = "kaysa"
trigger8 = p2name = "krishna" || p4name = "krishna"
trigger8 = p2name = "sorrento" || p4name = "sorrento"
trigger9 = p2name = "isaac" || p4name = "isaac"
value = 193

[State 190, 2]
type = ChangeState
trigger1 = Var(2) = [0,39]
value = 191

[State 190, 3]
type = ChangeState
trigger1 = Var(2) = [40,79]
value = 192

[State 190, 3]
type = ChangeState
trigger1 = Var(2) = [80,99]
value = 193

;---------------------------------------------------------------------------
; Intro 1
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 190, begin]
type = AssertSpecial
trigger1 = time = [0,20]
flag = intro

[State 190, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

[State 190]
type = PlaySnd
trigger1 = AnimElem = 13
value = 2, 2
channel = 0

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
; Intro 2 (Asgard)
[Statedef 192]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 190, 1]
type = AssertSpecial
trigger1 = time = [0,480]
flag = intro

;flare
[State 191, 2]
type = Explod
trigger1 = time = 0
anim = 1910
shadow = -1
pos = -25,0
postype = p1
sprpriority = 3
supermovetime = 610
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1

[State 190, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 2
channel = 0

[State 190, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

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
; Intro 3 (Poseidon)
[Statedef 193]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 190, 1]
type = AssertSpecial
trigger1 = time = [0,205]
flag = intro

[State 190, 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 12, 3
channel = 0

[State 190, 3]
type = PlaySnd
trigger1 = AnimElem = 38
value = 5, 3

[State 190, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

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
movetype = I
physics = S
anim = 195
velset = 0,0
ctrl = 0
poweradd = 200

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 4
channel = 0

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing LP
[Statedef 200]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 1                      
velset = 0,0                 
ctrl = 0                     
anim = 200                   
poweradd = 50                

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     
damage    = 20,0                  
animtype = Light                 
guardflag = MA                   
hitflag = MAF                    
priority = 3, Hit                                           
pausetime = 7,8                  
numhits = 1                      
sparkno = s7000
sparkxy = -10,-35             
hitsound = s1,0
guardsound = s6,0
ground.type = High                 
ground.slidetime = 5             
ground.hittime  = 11             
ground.velocity = -4             
airguard.velocity = -1.9,0
air.velocity = -1.3,-3
getpower = 0
givepower = 0  

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 0

[State 200, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------
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

[State 210, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     
damage    = 30,0                 
animtype = Medium                 
guardflag = MA                   
hitflag = MAF                    
priority = 3, Hit                                           
pausetime = 7,8                  
numhits = 1                      
sparkno = s7001
sparkxy = -10,-35             
hitsound = s1,1
guardsound = s6,0
ground.type = High                 
ground.slidetime = 5             
ground.hittime  = 11             
ground.velocity = -4             
airguard.velocity = -1.9,0
air.velocity = -1.3,-3           
getpower = 0
givepower = 0  

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 210, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------
; Standing HP
[Statedef 220]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 1                      
velset = 0,0                  
ctrl = 0                    
anim = 220                   
poweradd = 50                  

[State 220, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     
damage    = 40,0                  
animtype = Hard                 
guardflag = MA                   
hitflag = MAF                    
priority = 3, Hit                                           
pausetime = 7,8                  
numhits = 1                      
sparkno = s7002
sparkxy = -10,-35             
hitsound = s1,2
guardsound = s6,0
ground.type = High                 
ground.slidetime = 5             
ground.hittime  = 11             
ground.velocity = -4             
airguard.velocity = -1.9,0
air.velocity = -1.3,-3  
getpower = 0
givepower = 0         

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 220, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------
; Standing LK
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 230
poweradd= 50

[State 230, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Light
damage    = 20,0
guardflag = MA
pausetime = 11,11
sparkno = s7000
sparkxy = 0,-40
hitsound = s1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 230]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 0

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------
; Standing MK
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 240
poweradd= 50

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 30,0
guardflag = MA
pausetime = 11,11
sparkno = s7001
sparkxy = 0,-40
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 240]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------
; Standing HK
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
anim = 250
poweradd= 50

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Hard
damage    = 40,0
guardflag = MA
pausetime = 11,11
sparkno = s7002
sparkxy = -10,-35
hitsound = s1,2
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0

[State 250]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

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
juggle  = 6
ctrl = 0
anim = 400
poweradd = 50

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 20,0
animtype  = Light
hitflag = MAFD
guardflag = LA
pausetime = 10,12
sparkno = s7000 
sparkxy = -2,-41
hitsound = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20
getpower = 0
givepower = 0

[State 400, 3]
type = CtrlSet
trigger1 = Time = 4
value = 1

[State 400, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 0

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
; Crouching MP
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
ctrl = 0
anim = 410
poweradd = 50

[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30,0
animtype  = Medium
hitflag = MAFD
guardflag = LA
pausetime = 10,12
sparkno = s7001
sparkxy = -2,-41
hitsound = s1,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20
getpower = 0
givepower = 0

[State 410, 3]
type = CtrlSet
trigger1 = Time = 4
value = 1

[State 410, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
; Crouching HP
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
ctrl = 0
anim = 420
poweradd = 50

[State 420, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40,0
animtype  = Hard
hitflag = MAFD
guardflag = LA
pausetime = 10,12
sparkno = s7002
sparkxy = -2,-41
hitsound = s1,2
guardsound = s6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20
getpower = 0
givepower = 0

[State 420, 3]
type = CtrlSet
trigger1 = Time = 4
value = 1

[State 420, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
; Crouching LK
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 7
ctrl = 0
anim = 430
poweradd = 50

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 20,0
animtype  = Light
hitflag = MAFD
guardflag = LA
pausetime = 10,12
sparkno = s7000
sparkxy = -10,-10
hitsound = s1,0
guardsound = s6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -3.5
air.velocity = -3.5,-3
getpower = 0
givepower = 0

[State 430, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 0

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 11

;---------------------------------------------------------------------------
; Crouching MK
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
ctrl = 0
anim = 440
poweradd = 50

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 30,0
animtype  = Medium
hitflag = MAFD
guardflag = LA
pausetime = 10,12
sparkno = s7001
sparkxy = -10,-30
hitsound = s1,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -3.5
air.velocity = -3.5,-3
getpower = 0
givepower = 0

[State 440, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 11

;---------------------------------------------------------------------------
; Crouching HK
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
ctrl = 0
anim = 430
poweradd = 50
velset = 10,0

[State 450, POLVERE]
type = Explod
trigger1 = AnimElem = 2
pos = 50,0
anim = 7085
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 450, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 40,0
animtype  = Hard
hitflag = MAFD
guardflag = LA
pausetime = 10,12
sparkno = s7002
sparkxy = -10,-10
hitsound = s1,2
guardsound = s6,0
ground.type = Trip
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -3.5,-3
air.velocity = -3.5,-3
fall = 1
fall.damage = 0
getpower = 0
givepower = 0

[State 450, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 11

;-------------------------------------------------
; Jumping LP
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 600
poweradd = 50

[State 600, 1]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20,0
animtype  = Light
guardflag = MA
priority = 3
pausetime = 7,8
sparkno = s7000
sparkxy = -10,-16
hitsound = s1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 600, 2]
type = CtrlSet
trigger1 = Time = 17
value = 1

[State 600, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 0

[State 600, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;-------------------------------------------------
; Jumping MP
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 610
poweradd = 50

[State 610, 1]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 30,0
animtype  = Medium
guardflag = MA
priority = 3
pausetime = 7,8
sparkno = s7001
sparkxy = -10,-25
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 610, 2]
type = CtrlSet
trigger1 = Time = 17
value = 1

[State 610, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 610, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;-------------------------------------------------
; Jumping HP
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 620
poweradd = 50

[State 620, 1]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 40,0
animtype  = Hard
guardflag = MA
priority = 3
pausetime = 7,8
sparkno = s7002
sparkxy = -10,-20
hitsound = s1,2
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 620, 2]
type = CtrlSet
trigger1 = Time = 17
value = 1

[State 620, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 620, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Jumping LK
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
ctrl = 0
anim = 630
poweradd= 50

[State 630, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 630, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20,0
animtype  = Light
guardflag = MA
priority = 3
pausetime = 9,10
sparkno = s7000
sparkxy = -10,-13
hitsound = s1,0
guardsound = s6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 630, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jumping MK
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 3
ctrl = 0
anim = 640
poweradd= 50

[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 30,0
animtype  = Medium
guardflag = MA
priority = 3
pausetime = 9,10
sparkno = s7001
sparkxy = -10,-20
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 640, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jumping HK
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 3
ctrl = 0
anim = 650
poweradd= 50

[State 650, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 650, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 40,0
animtype  = Hard
guardflag = MA
priority = 3
pausetime = 9,10
sparkno = s7002
sparkxy = -10,0
hitsound = s1,2
guardsound = s6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4
air.velocity = -1.3,-3
getpower = 0
givepower = 0

[State 650, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;-------------------------------------------------------------------------
; Throw (start)
[Statedef 800]
type = S
movetype = A
physics = S
anim = 800
velset = 0,0
ctrl = 0
poweradd = 50

[State 1600, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, ST
priority = 2, miss
sparkno = -1
snap = 32,0
p1stateno = 810
p2stateno = 820

[State 1600, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
; (p1 state)
[Statedef 810]
type = S
movetype = A
physics = S
anim = 810
velset = 0,0

[State 810, Invincibility]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 810, SFX1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10, 0

[State 810, Push]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 810, Damage]
type = TargetLifeAdd
trigger1 = animtime = 0
value = -25

[State 810, Bind1]
type = TargetBind
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 2, < 0
pos = 10,0

[State 810, Bind2]
type = TargetBind
trigger1 = AnimElem = 2, >= 0
trigger1 = AnimElem = 3, < 0
pos = 10,0

[State 810, Bind2]
type = TargetBind
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 4, < 0
pos = 10,0

[State 810, 12]
type = TargetState
trigger1 = AnimElem = 4
value = 821

[State 810, Turn]
type = Turn
trigger1 = AnimElem = 5

[State 810, State]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; (p2 state 1)
[Statedef 820]
type    = A
movetype= H ;Get hit
physics = N
velset = 0,0
ctrl = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 820, 2]
type = HitBy
Trigger1 = Time >= 0
value = SCA
time = 1

;-------------------------------------------------------------------------
; (p2 state 2)
[Statedef 821]
type    = A
movetype= H ;Get hit
physics = N
velset = 3.5,-8
anim = 5050
ctrl = 0

[State 821, 1]
type = PosAdd
Trigger1 = Time = 0
x =  10
y = -20

[State 821, 2] ;Gravity
type = VelAdd
Trigger1 = Time > 0
y = .4

[State 821, 3]
type = LifeAdd
Trigger1 = Time = 0
value = -25

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
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
value = 10, 0
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

[State 901, Constellation]
type = Explod
trigger1 = animelem = 1
anim = 6000
ID = 6000
pos = 0,-50
postype = p1
bindtime = -1
sprpriority = -4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 901, Constellation Cosmo]
type = Explod
trigger1 = animelem = 1
anim = 6001
ID = 6001
pos = 0,-50
postype = p1
bindtime = -1
removetime = 32
sprpriority = -5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 901]
type = Explod
triggerall = numexplod(7010) = 0
trigger1 = 1
anim = 7010
ID = 7010
pos = 0,0
bindtime = 1
scale = 0.5,0.5
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
scale = 0.5,0.5
sprpriority = 2
ownpal = 1
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
scale = 0.3,0.3
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
scale = 0.3,0.3
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
anim = 903
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
physics = S
anim = 902

[State 902]
type = VarSet
trigger1 = time = 0
var(10) = 0

[State 902]
type = RemoveExplod
triggerall = numexplod(6000) >= 1
trigger1 = time = 0
ID = 6000

[State 902]
type = RemoveExplod
triggerall = numexplod(6001) >= 1
trigger1 = time = 0
ID = 6001

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

;---------------------------------------------------------------------------
; Fireball
[Statedef 1000]
type    = S
movetype= A
physics = S
velset = 0,0
juggle = 4
ctrl = 0
anim = 1000
poweradd= 100

[State 1010, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 1000, Ha!]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 0

[State 191, explod]
type = Explod
trigger1 = AnimElem = 2
anim = 1009
pos = 19,-47
postype = p1
sprpriority = 5
supermovetime = 20
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1

[State 1000, dan]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1005
projhitanim = 1009
projshadow = -1
projpriority = 4
projremovetime = 100
projid = 1001
velocity = 6,0
accel = .2,0
offset = 10,-51
attr = S, SP
damage   = 60,6
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 0,3
hitsound = s1,0
sparkno = -1
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.animtype = Light
air.velocity = -1,-1
air.juggle = 2
getpower = 0
givepower = 0  

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------
; Triple Fireball 1
[Statedef 1010]
type    = S
movetype= A
physics = S
poweradd= 100
ctrl = 0
anim = 1010
velset = 0,0

[State 1010, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 1

[State 191, explod]
type = Explod
trigger1 = AnimElem = 2
anim = 1009
pos = 19,-47
postype = p1
sprpriority = 5
supermovetime = 20
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1

[State 1000, dan]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1005
projhitanim = 1009
projshadow = -1
projpriority = 4
projremovetime = 100
projid = 1001
velocity = 6,0
accel = .2,0
offset = 10,-51
attr = S, SP
damage   = 20,2
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 0,3
hitsound = s1,0
sparkno = s1009
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.animtype = Light
air.velocity = -1,-1
air.juggle = 2
getpower = 0
givepower = 0  

[State 1010, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 1011
ctrl = 1

;------------------------------------------
; Triple Fireball 2
[Statedef 1011]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1011
velset = 0,0

[State 1011, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 0

[State 191, explod]
type = Explod
trigger1 = AnimElem = 2
anim = 1009
pos = 19,-47
postype = p1
sprpriority = 5
supermovetime = 20
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1

[State 1000, dan]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1005
projhitanim = 1009
projshadow = -1
projpriority = 4
projremovetime = 100
projid = 1001
velocity = 6,0
accel = .2,0
offset = 10,-51
attr = S, SP
damage   = 20,2
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 0,3
hitsound = s1,0
sparkno = s1009
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.animtype = Light
air.velocity = -1,-1
air.juggle = 2
getpower = 0
givepower = 0  

[State 1011, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 1012
ctrl = 1

;------------------------------------------
; Triple Fireball 3
[Statedef 1012]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 1012
velset = 0,0

[State 1012, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 0

[State 191, explod]
type = Explod
trigger1 = AnimElem = 2
anim = 1009
pos = 19,-47
postype = p1
sprpriority = 5
supermovetime = 20
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1

[State 1000, dan]
type = Projectile
trigger1 = AnimElem = 2
projanim = 1005
projhitanim = 1009
projshadow = -1
projpriority = 4
projremovetime = 100
projid = 1001
velocity = 6,0
accel = .2,0
offset = 10,-51
attr = S, SP
damage   = 20,2
animtype = hard
guardflag = MA
hitflag = MAF
pausetime = 0,3
hitsound = s1,0
sparkno = s1009
guardsound = s6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.animtype = Light
air.velocity = -1,-1
air.juggle = 2
getpower = 0
givepower = 0  

[State 1012, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Elbow Dash
[Statedef 1040]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd = 100
ctrl = 0
velset = 0,0
anim = 1040

[State 1040, 13]
type = EnvShake
trigger1 = AnimElem = 1
time = 25
ampl = -5
freq = 90
phase = 90

[State 1040, 2]
type = veladd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 1
x = 20

[State 1040, 1]
type = PlaySnd
trigger1 = Time = 2
value = 10, 0

[State 1040, 2]
type=AfterImage
trigger1= AnimElem = 1 
time=9
trans = add
PalContrast =  255, 200, 255
PalBright = 0,0,0

[State 1040, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Medium
damage    = 80,8
guardflag = MA
pausetime = 11,11
sparkno = s7004
sparkxy = -10,-50
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2
getpower = 0
givepower = 0  

[State 1040, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Combo
[Statedef 1050]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 100
ctrl = 0
velset = 0,0
anim = 1050

[State 1050, 2]
type=AfterImage
trigger1= AnimElem = 1 
time=70
trans = add
PalContrast =  255, 200, 255
PalBright = 0,0,0

[State 1050, 1]
type = VelSet
trigger1 = time >= 0
trigger1 = time <= 48
x = 0
y = 0

[State 1050, 13]
type = EnvShake
trigger1 = AnimElem = 18
time = 25
ampl = -5
freq = 90
phase = 90

[State 1050, 1] 
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 0

[State 1050, 1] 
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 1
trigger2 = AnimElem = 6 
value = 0, 0
trigger3 = AnimElem = 8
value = 0, 1
trigger4 = AnimElem = 10
value = 0, 0
trigger5 = AnimElem = 12
value = 0, 1
trigger6 = AnimElem = 14
value = 0, 0
trigger7 = AnimElem = 16
value = 0, 1
trigger8 = AnimElem = 18
value = 0, 0

[State 1050, 2]
type = veladd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 0

[State 1050, 3]
type = veladd
trigger1 = AnimElem = 3
x = 0

[State 1050, 4]
type = veladd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
x = 4

[State 1050, 5]
type = veladd
trigger1 = AnimElem = 5
x = -4

[State 1050, 6]
type = veladd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
x = 4

[State 1050, 7]
type = veladd
trigger1 = AnimElem = 7
x = -4

[State 1050, 8]
type = veladd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9
x = 4

[State 1050, 9]
type = veladd
trigger1 = AnimElem = 9
x = -4

[State 1050, 10]
type = veladd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
x = 4

[State 1050, 11]
type = veladd
trigger1 = AnimElem = 11
x = -4

[State 1050, 12]
type = veladd
trigger1 = AnimElem = 12
trigger2 = AnimElem = 13
x = 4

[State 1050, 13]
type = veladd
trigger1 = AnimElem = 13
x = -4

[State 1050, 14]
type = veladd
trigger1 = AnimElem = 14
trigger2 = AnimElem = 15
x = 4

[State 1050, 15]
type = veladd
trigger1 = AnimElem = 15
x = -4

[State 1050, 12]
type = veladd
trigger1 = AnimElem = 16
trigger2 = AnimElem = 17
x = 4

[State 1050, 13]
type = veladd
trigger1 = AnimElem = 17
x = -4

[State 1050, 14]
type = veladd
trigger1 = AnimElem = 18
x = 4

[State 1050, 15]
type = veladd
trigger1 = AnimElem = 18
x = -4

[State 1050, 16]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 2,6
sparkno = s7000
sparkxy = -10,-50
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 10
ground.velocity = .1
air.type = Low
air.velocity = 0,0
guard.velocity = -0.1
airguard.velocity = 0,0   
fall = 0
getpower = 0
givepower = 0  

[State 1050, 17]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 2,6
sparkno = s7001
sparkxy = -10,-50
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 10
ground.velocity = .1
air.type = Low
air.velocity = 0,0
guard.velocity = -0.1
airguard.velocity = 0,0   
fall = 0
getpower = 0
givepower = 0  

[State 1050, 18]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 2,6
sparkno = s7000
sparkxy = -10,-50
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 10
ground.velocity = .1
air.type = Low
air.velocity = 0,0
guard.velocity = -0.1
airguard.velocity = 0,0  
fall = 0
getpower = 0
givepower = 0  

[State 1050, 19]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 2,6
sparkno = s7001
sparkxy = -10,-50
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 10
ground.velocity = .1
air.type = Low
air.velocity = 0,0
guard.velocity = -0.1
airguard.velocity = 0,0   
fall = 0
getpower = 0
givepower = 0  

[State 1050, 20]
type = HitDef
trigger1 = AnimElem = 9
attr = S, SA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 2,6
sparkno = s7000
sparkxy = -10,-50
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 10
ground.velocity = .1
air.type = Low
air.velocity = 0,0
guard.velocity = -0.1
airguard.velocity = 0,0   
fall = 0
getpower = 0
givepower = 0  

[State 1050, 21]
type = HitDef
trigger1 = AnimElem = 10
attr = S, SA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 2,6
sparkno = s7001
sparkxy = -10,-50
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 10
ground.velocity = .1
air.type = Low
air.velocity = 0,0
guard.velocity = -0.1
airguard.velocity = 0,0   
fall = 0
getpower = 0
givepower = 0  

[State 1050, 22]
type = HitDef
trigger1 = AnimElem = 12
attr = S, SA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 2,6
sparkno = s7000
sparkxy = -10,-50
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 10
ground.velocity = .1
air.type = Low
air.velocity = 0,0
guard.velocity = -0.1
airguard.velocity = 0,0  
fall = 0
getpower = 0
givepower = 0  

[State 1050, 23]
type = HitDef
trigger1 = AnimElem = 13
attr = S, SA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 2,6
sparkno = s7001
sparkxy = -10,-50
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 10
ground.velocity = .1
air.type = Low
air.velocity = 0,0
guard.velocity = -0.1
airguard.velocity = 0,0   
fall = 0
getpower = 0
givepower = 0  

[State 1050, 24]
type = HitDef
trigger1 = AnimElem = 14
attr = S, SA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 2,6
sparkno = s7000
sparkxy = -10,-50
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 10
ground.velocity = .1
air.type = Low
air.velocity = 0,0
guard.velocity = -0.1
airguard.velocity = 0,0   
fall = 0
getpower = 0
givepower = 0  

[State 1050, 25]
type = HitDef
trigger1 = AnimElem = 17
attr = S, SA
animtype  = Hard
damage    = 10,1
guardflag = MA
pausetime = 2,6
sparkno = s7001
sparkxy = -10,-50
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 10
ground.velocity = .1
air.type = Low
air.velocity = 0,0
guard.velocity = -0.1
airguard.velocity = 0,0   
fall = 1
fall.damage = 0
getpower = 0
givepower = 0  

[State 1050, 26]
type = HitDef
trigger1 = AnimElem = 18
attr = S, SA
animtype  = Hard
damage    = 20,2
guardflag = MA
pausetime = 2,6
sparkno = s7002
sparkxy = -10,-50
hitsound = s1,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 10
ground.velocity = .1
air.type = Low
air.velocity = 0,0
guard.velocity = -0.1
airguard.velocity = 0,0   
fall = 1
fall.damage = 0
getpower = 0
givepower = 0  

[State 1050, 27]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Flying Kick
[Statedef 1060]
type    = A
movetype= A
physics = A
anim = 1060
ctrl = 0
poweradd = 100

[State 1060, 1]
type = VelSet
trigger1 = Time = 0
x = 10
y = 5

[State 1060, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0,3

[State 1060, 3]
type = AfterImage
trigger1= AnimElem = 1 
time=15
trans = add
PalContrast =  255, 200, 255
PalBright = 0,0,0

[State 1060, 4]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage    = 90,9
guardflag = MA
pausetime = 12,12
sparkno = s7003
sparkxy = -5,0
hitsound = s1,2
guardsound = s6,0
ground.type = High
air.type = low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5   
air.velocity = -2.8,-2.1
air.fall = 1
fall = 1
fall.damage = 0
getpower = 0
givepower = 0

[State 1060, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Pos Y < 0
value = 47

[State 1060, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52

;---------------------------------------
; Teleport
[Statedef 2000]
type = A
movetype = A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 2000
poweradd = 50

;[State 2000, Turn]
;type = Turn
;triggerall = prevstateno = 1203
;trigger1 = time = 0
;ignorehitpause = 0
;persistent = 1

[State 2000]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2000]
type = PlayerPush
trigger1 = 1
value = 0

[State 2000]
type = AfterImage
trigger1 = animelem = 4
time = 50
length = 10
palbright = 0,0,0
palcontrast = 98,98,98
paladd = 0,0,0
palmul = 1,1,1
framegap = 2
trans = add1

[State 2000]
type = PlaySnd
trigger1 = animelem = 7
value = 5, 3

[State 2000]
type = ChangeState
trigger1 = animtime = 0
value = 2001
ctrl = 1

;---------------------------------------
; Teleport (end)
[Statedef 2001]
type = A
movetype = A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 2001
poweradd = 50

[State 2001]
type = PlaySnd
trigger1 = time = 0
value = 5, 3

[State 2001]
type = Turn
trigger1 = p2dist x < 0

[State 7001]
type = PosAdd
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = command = "holdup"
trigger1 = command = "holdback"
trigger1 = time = 0
x = -150 ;-150 for Low-Rank Saints, -200 for High-Rank Saints
y = -100 ;-100 for Low-Rank Saints, -150 for High-Rank Saints

[State 7001]
type = PosAdd
triggerall = command != "holdback"
triggerall = command != "holddown"
trigger1 = command = "holdup"
trigger1 = command = "holdfwd"
trigger1 = time = 0
x = 150 ;150 for Low-Rank Saints, 200 for High-Rank Saints
y = -100 ;-100 for Low-Rank Saints, -150 for High-Rank Saints

[State 7001]
type = PosAdd
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = command = "holdup"
trigger1 = time = 0
x = 0
y = -100 ;-100 for Low-Rank Saints, -150 for High-Rank Saints

[State 7001]
type = PosAdd
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "holdback"
trigger1 = time = 0
x = -150 ;-150 for Low-Rank Saints, -200 for High-Rank Saints
y = 0

[State 7001]
type = PosAdd
triggerall = command != "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = command = "holdfwd"
trigger1 = time = 0
x = 150 ;150 for Low-Rank Saints, 200 for High-Rank Saints
y = 0

[State 7001]
type = PosAdd
triggerall = command != "holdback"
triggerall = command != "holdfwd"
triggerall = command != "holdup"
trigger1 = command = "holddown"
trigger1 = time = 0
x = 0
y = 0

[State 2001]
type = PlayerPush
trigger1 = 1
value = 0

[State 2001]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2001]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------
; Stones Burst
[Statedef 3000]
type    = S
movetype= A
physics = S
poweradd= -1000
ctrl = 0
anim = 3000
velset = 0,0

[State 3000, 1]
type = SuperPause
trigger1 = AnimElem = 1
pos = 0, -40
anim = s7008
darken = 1
sound = s9,1

[State 3000, 2]
type = VelSet
trigger1 = time >= 0
trigger1 = time <= 48
x = 0
y = 0

[State 3000, 4]
type = PlaySnd
trigger1 = Time = 1
value = 12, 5
channel = 0

[State 3000, 5]
type = Explod
trigger1 = projhit = 1
anim = 7004
facing = 1
pos = 0,-50
postype = p2
sprpriority = 2
bindtime = 50
ownpal = 1
supermovetime = 10
removetime = 14
scale = 0.5,0.5
[State 3000, 5]
type = Explod
trigger1 = projhit = 1
anim = 7004
facing = 1
pos = -10,-30
postype = p2
sprpriority = 2
bindtime = 50
ownpal = 1
supermovetime = 10
removetime = 14
scale = 0.5,0.5

[State 3000, 5]
type = Explod
trigger1 = projhit = 1
anim = 7004
facing = 1
pos = 20,-70
postype = p2
sprpriority = 2
bindtime = 50
ownpal = 1
supermovetime = 10
removetime = 14
scale = 0.5,0.5
[State 3000, 5]
type = Explod
trigger1 = projhit = 1
anim = 7004
facing = 1
pos = -5,-58
postype = p2
sprpriority = 2
bindtime = 50
ownpal = 1
supermovetime = 10
removetime = 14
scale = 0.5,0.5

[State 3000, 5]
type = Explod
trigger1 = projhit = 1
anim = 7004
facing = 1
pos = 0,-18
postype = p2
sprpriority = 2
bindtime = 50
ownpal = 1
supermovetime = 10
removetime = 14
scale = 0.5,0.5
[State 3000, 5]
type = Explod
trigger1 = projhit = 1
anim = 7004
facing = 1
pos = -15,-42
postype = p2
sprpriority = 2
bindtime = 50
ownpal = 1
supermovetime = 10
removetime = 14
scale = 0.5,0.5

[State 3000, 6]
type = PlaySnd
trigger1 = AnimElem = 34
value = 10, 0
trigger2 = AnimElem = 34
value = 0, 1

[State 3000, 7]
type = Projectile
trigger1 = AnimElem = 34
projanim = 3005
projhitanim = 7004
;ProjRemAnim = 1009
;ProjEdgeBound = 50   
;ProjHeightBound = -240, 5
offset = 10, -42
velocity = 6.5, 0
remvelocity = .7, 0
projhits = 30
accel = 0, .00
; HitDef part of projectile info
attr = S, HP
damage    = 16,2
animtype  = Hard
getpower  = 0
givepower = 5
pausetime = 0,12
sparkno = -1
sparkxy = 0, 0
hitsound = s1,4
guardflag = MA 
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.type = Low
air.velocity = -2.5,-1.75
air.juggle = 3
fall.animtype = Hard
air.fall = 1
fall = 1

[State 1200, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3000, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; (helper)
[Statedef 3005]
type    = A
movetype= A
physics = N
poweradd= -2000
ctrl = 0
anim = 3005

[State 3005, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3005, 2]
type = VelMul
trigger1 = Time = 0
x = .025

[State 3005, 3]
type = VelAdd
trigger1 = Time >= 0
trigger1 = Pos Y < 0
y = .00

[State 3005, 4]
type = PosSet
trigger1 = Pos Y >= -1
y = 0

[State 3005, 5]
type = VelSet
trigger1 = Pos Y >= -1
y = 0

[State 3005, 8]
type = Projectile
trigger1 = Time = 80
projanim = 3005
projhitanim = 1009
;ProjRemAnim = 1009
;ProjEdgeBound = 50   
;ProjHeightBound = -240, 5
offset = 10, -42
velocity = 6.5, 0
remvelocity = .7, 0
projhits = 30
accel = 0, 0
; HitDef part of projectile info
attr = S, HP
damage    = 40
animtype  = Hard
getpower  = 0
givepower = 5
pausetime = 0,12
sparkno = s7082
sparkxy = 0, 0
hitsound = s1,0
guardflag = MA
guardsound = s6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
air.type = Low
air.velocity = -3.5,-2.75
air.juggle = 3
fall.animtype = Hard
air.fall = 1
fall = 1
;PalFX
palfx.time = 15
palfx.add = 32,0,0
palfx.mul = 300,192,192

[State 3005, 9]
type = CtrlSet
trigger1 = AnimTime = 0
value = 1

[State 3005, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;----------------------------------------------------------
; Telekinesis
[Statedef 3300]
type    = S
movetype= A
physics = S
velset = 0,0
poweradd = -2000
juggle = 0
ctrl = 0
anim = 3300

[State 3300, 1]
type = SuperPause
trigger1 = AnimElem = 1
pos = 1,-33
anim = s7009
darken = 1
sound = s9,1

[State 3300, 2]
type = Explod
trigger1 = AnimElem = 1
anim = 9004
pos = 0,0
postype = back
sprpriority = -2
bindtime = -1
ownpal = 1
supermovetime = 85
removetime = 50

[State 3300, 3]
type = EnvShake
trigger1 = AnimElem = 13
time = 70

[State 3300, 4]
type = Projectile
trigger1 = AnimElem = 14
projanim = 3305
projhits = 20
projmisstime = 3
projpriority = 4
projremovetime = 70
projid = 3305
offset = 0,-45
priority = 4
attr = S, HP
damage = 18,2
getpower = 0
givepower = 0
animtype = hard
guardflag = MA
pausetime = 0,60
sparkno = -1
sparkxy = 0,-30
hitsound = S1,3
ground.type = high
guardsound = S1,3
pausetime = 12,50
ground.hittime = 120
ground.type = low
ground.slidetime = 40
ground.velocity = -15,-15
air.velocity = -25,-25
palfx.time = 65
palfx.add = 115,200,255
palfx.mul = 100,150,300
palfx.sinadd = 40,0,256,6
fall = 1
fall.damage = 50

[State 3300, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3300, 5]
type = Explod
triggerall = NumExplod(7004) = 0
trigger1 = projhit3305 = 1
pos = -10,-80
anim = 7004
ID = 7004
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermovetime = 10

[State 3300, 6]
type = Explod
triggerall = NumExplod(7004) = 0
trigger1 = projguarded3305 = 1
pos = -10,-80
anim = 7006
ID = 7006
postype = p2
sprpriority = 5
ignorehitpause = 1
ownpal = 1
bindtime = -1
persistent = 1
supermovetime = 12

[State 3300, 7]
type = PlaySnd
trigger1 = AnimElem = 29
value = 12, 7

[State 3300, 8]
type = ChangeState
triggerall = projguarded3305 = 1
trigger1 = AnimElem = 17
value = 0
ctrl = 1

[State 3300, 9]
type = ChangeState
trigger1 = Time = 180
value = 0
ctrl = 1

;-------------------
;Rocks Rain
[Statedef 3600]
type    = S
movetype= A
physics = S
velset = 0,0
poweradd = -3000
juggle = 0
ctrl = 0
anim = 3600

[State 3600, 5]
type = SuperPause
trigger1 = AnimElem = 1
pos = 1,-53
anim = s7009
time = 128
movetime = 128
darken = 1
sound = s9,0

[State 3600, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12, 6
channel = 0

[State 3600, 2]
type = PlaySnd
trigger1 = AnimElem = 16
trigger2 = AnimElem = 19
value = 0, 3

[State 3600, 3]
type = PlaySnd
trigger1 = Time = 128
value = 10, 1

[State 3600, 4]
type = PlaySnd
trigger1 = Time = 178
value = 12, 7

[State 3600, white fadeout]
type = BGPalFx
trigger1 = p2life = 0
add = 255,255,255
sinadd = 300,300,300,60
time= 40
ignorehitpause = 1
persistent= 0

[State 3600, envshake]
type = EnvShake
trigger1 = AnimElem = 13;Time = 60
time = 70

[State 3600, 6]
type = helper
trigger1 = Time = 128
id = 3610
name ="stone1"
postype = p2
pos = 0,-200
stateno = 3610
keyctrl = 0
ownpal = 1

[State 3600, 7]
type = helper
trigger1 = Time = 150
id = 3611
name ="stone2"
postype = p2
pos = -70,-200
stateno = 3611
keyctrl = 0
ownpal = 1

[State 3600, 8]
type = helper
trigger1 = Time = 140
id = 3612
name ="stone3"
postype = p2
pos = 50,-200
stateno = 3612
keyctrl = 0
ownpal = 1

[State 3600, 9]
type = helper
trigger1 = Time = 135
id = 3613
name ="stone4"
postype = p2
pos = -30,-210
stateno = 3613
keyctrl = 0
ownpal = 1

[State 3600, 10]
type = helper
trigger1 = Time = 128
id = 3614
name ="stone5"
postype = p2
pos = 30,-220
stateno = 3614
keyctrl = 0
ownpal = 1

[State 3600, 11]
type = VarSet
triggerall = P2Life <= 0
trigger1 = Time = 300
v = 30
value = 1

[State 3600, 12]
type = ChangeState
trigger1 = Time = 300
value = 0
ctrl = 1

;-------------------
; Stone 1 (helper)
[Statedef 3610]
type    = S
movetype= A
physics = N
velset = 0,10
juggle = 0
ctrl = 0
anim = 3610
sprpriority = 3

[State 3610, supsnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 3

[State 3610, VarSet]
type = VarSet
trigger1 = movecontact
v = 3
value = 1

[State 3610, 1]
type = HitDef
triggerall = time <= 15
triggerall = var(3) != 1
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage    = 150,15
getpower = 0
givepower = 0  
priority  = 6
affectteam = B
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkxy = -10,60
sparkno = S7003
hitsound   = s1,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = 0
air.velocity = 0,0
fall.animtype = Hard
fall = 1
p2stateno = 3615

[State 3610, VelSet]
type = VelSet
trigger1 = pos Y >= 0
x = 0
y = 0

[State 3610]
type = ChangeAnim
triggerall = P2Life <= 0
trigger1 = Time >= 240
value = 1710

[State 3610, DestroySelf]
type = DestroySelf
triggerall = P2Life > 0
trigger1 = Time >= 250

;-------------------
; Stone 2 (helper)
[Statedef 3611]
type    = S
movetype= A
physics = N
velset = 0,10
juggle = 0
ctrl = 0
anim = 3611
sprpriority = 4

[State 3611, supsnd]
type = PlaySnd
trigger1 = Time = 10
value = 1, 1

[State 3611, supsnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 3

[State 3611, VelSet]
type = VelSet
trigger1 = pos Y >= 0
x = 0
y = 0

[State 3611]
type = ChangeAnim
triggerall = P2Life <= 0
trigger1 = Time >= 240
value = 1711

[State 3611, DestroySelf]
type = DestroySelf
triggerall = P2Life > 0
trigger1 = Time >= 250

;-------------------
; Stone 3 (helper)
[Statedef 3612]
type    = S
movetype= A
physics = N
velset = 0,10
juggle = 0
ctrl = 0
anim = 3612
sprpriority = 3

[State 3612, supsnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 3

[State 3612, supsnd]
type = PlaySnd
trigger1 = Time = 10
value = 1, 1

[State 3612, VarSet]
type = VarSet
trigger1 = movecontact
v = 4
value = 1

[State 3612, 1]
type = HitDef
triggerall = time <= 15
triggerall = var(4) != 1
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage    = 150,15
getpower = 0
givepower = 0  
priority  = 6
affectteam = B
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkxy = -10,60
sparkno = S7003
hitsound   = s1,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = 0
air.velocity = 0,0
fall.animtype = Hard
fall = 1
p2stateno = 3615

[State 3612, VelSet]
type = VelSet
trigger1 = pos Y >= 0
x = 0
y = 0

[State 3612]
type = ChangeAnim
triggerall = P2Life <= 0
trigger1 = Time >= 240
value = 1712

[State 3612, DestroySelf]
type = DestroySelf
triggerall = P2Life > 0
trigger1 = Time >= 250

;-------------------
; Stone 4 (helper)
[Statedef 3613]
type    = S
movetype= A
physics = N
velset = 0,10
juggle = 0
ctrl = 0
anim = 3613
sprpriority = 3

[State 3613, supsnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 3

[State 3613, supsnd]
type = PlaySnd
trigger1 = Time = 10
value = 1, 1

[State 3613, VarSet]
type = VarSet
trigger1 = movecontact
v = 5
value = 1

[State 3613, 1]
type = HitDef
triggerall = time <= 15
triggerall = var(5) != 1
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage    = 150,15
getpower = 0
givepower = 0  
priority  = 6
affectteam = B
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkxy = -10,60
sparkno = S7003
hitsound   = s1,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = 0
air.velocity = 0,0
fall.animtype = Hard
fall = 1
p2stateno = 3615

[State 3613, VelSet]
type = VelSet
trigger1 = pos Y >= 0
x = 0
y = 0

[State 3613]
type = ChangeAnim
triggerall = P2Life <= 0
trigger1 = Time >= 240
value = 1713

[State 3613, DestroySelf]
type = DestroySelf
triggerall = P2Life > 0
trigger1 = Time >= 250

;-------------------
; Stone 5 (helper)
[Statedef 3614]
type    = S
movetype= A
physics = N
velset = 0,10
juggle = 0
ctrl = 0
anim = 3614
sprpriority = 2

[State 3614, supsnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 3

[State 3614, supsnd]
type = PlaySnd
trigger1 = Time = 10
value = 1, 1

[State 3614, VarSet]
type = VarSet
trigger1 = movecontact
v = 6
value = 1

[State 3614, 1]
type = HitDef
triggerall = time <= 15
triggerall = var(6) != 1
trigger1 = Time = 0
attr = S, HA
animtype  = Hard
damage    = 150,15
getpower = 0
givepower = 0  
priority  = 6
affectteam = B
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkno = S7003
sparkxy = -10,60
hitsound   = s1,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = 0
air.velocity = 0,0
fall.animtype = Hard
fall = 1
p2stateno = 3615

[State 3614, VelSet]
type = VelSet
trigger1 = pos Y >= 0
x = 0
y = 0

[State 3614]
type = ChangeAnim
triggerall = P2Life <= 0
trigger1 = Time >= 240
value = 1714

[State 3614, DestroySelf]
type = DestroySelf
triggerall = P2Life > 0
trigger1 = Time >= 250

;------------------------
; (p2 state)
[Statedef 3615]
type    = L
movetype= H ;Get hit
physics = N
anim = 5110
ctrl = 0

[State 3615, 1]
type = velSet
trigger1 = pos Y <= -5
y = 7

[State 3615, 2]
type = velSet
trigger1 = pos Y >= 0
y = 0

[State 3615, 3] ;Hit ground
type = SelfState
triggerall = life > 0
trigger1 = Time >= 250
value = 5120

[State 3616, 4] ;Hit ground
type = SelfState
triggerall = life <= 0
trigger1 = Time >= 250
value = 5150

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
; Combos
;---------------------------------------------------------------------------

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
value = 1010

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
value = 1040

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 220) 
trigger1 = (movecontact)
value = 200
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 200) && (prevstateno = 220) && (movecontact) 
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S) &&  (power >= 100)
trigger1 = (stateno = 210) && (prevstateno = 200) && (movecontact) 
value = 1050

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
trigger1 = (stateno = 220) && (prevstateno = 200) && (movecontact) 
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 220) && (movecontact) 
value = 200

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
value = 1000

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
trigger1 = (stateno = 250) && (prevstateno = 240) && (movecontact) 
value = 1010

;-------------------------------------------------------
;-------------------------------------------------------

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

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 430) 
trigger1 = (movecontact)
value = 400
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 400) && (prevstateno = 430) && (movecontact) 
value = 410
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 410) && (prevstateno = 400) && (movecontact) 
value = 420

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 440) 
trigger1 = (movecontact)
value = 450

;-------------------------------------------------------
;-------------------------------------------------------

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

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630) 
trigger1 = (movecontact)
value = 600
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 600) && (prevstateno = 630) && (movecontact) 
value = 620

[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 620) 
trigger1 = (movecontact)
value = 660

;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------

; Cosmo Charge
[State -2]
type = ChangeState
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 149])
trigger1 = (P2bodydist X >= 150) &&  (power <= 2999) && (prevstateno != 5120)
value = 900

; Fireball
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) &&(var(59) != 0) && (statetype = S) && (ctrl) && (random = [150, 224])
trigger1 = (P2bodydist X >= 180) && (prevstateno != 5120) 
value = 1000

; Fireball x 3
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) &&(var(59) != 0) && (statetype = S) && (ctrl) && (random = [225, 299])
trigger1 = (P2bodydist X >= 210) && (prevstateno != 5120) 
value = 1010

; Elbow dash
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) &&(var(59) != 0) && (statetype = S) && (ctrl) && (random = [300, 374])
trigger1 = (P2bodydist X <= 100) && (prevstateno != 5120) 
value = 1040

; Combo
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) &&(var(59) != 0) && (statetype = S) && (ctrl) && (random = [375, 449])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120) 
value = 1050

; Flying Kick
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) &&(var(59) != 0) && (statetype = A) && (p2statetype = A) && (ctrl) && (random = [450, 524])
trigger1 = (P2bodydist X <= 150) && (prevstateno != 5120)
value = 1060

; Teleport
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) &&(var(59) != 0) && (statetype = S) && (ctrl) && (random = [525, 599])
trigger1 = (P2bodydist X >= 100) && (prevstateno != 5120) 
value = 2000

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [600,674])
value = 195

;---------------------------------------------------------------------------
; Super Moves
;---------------------------------------------------------------------------

; Stones Burst
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) &&(var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X >= 150) && (power >= 1000) && (random = [675,749])
value = 3000

; Telekinesis
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) &&(var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 320) && (power >= 2000) && (random = [750,824])
value = 3300

; Stones Rain
[State -2]
type = ChangeState
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) &&(var(59) != 0) && (statetype = S) && (ctrl)
trigger1 = (p2bodydist X <= 320) && (power >= 3000) && (random = [825,899])
value = 3600

;---------------------------------------------------------------------------

[State -2, Remove Explod]
type = RemoveExplod
trigger1 = stateno = 0
trigger2 = stateno = 10
trigger3 = stateno = 20
trigger4 = stateno = 21
trigger5 = stateno = 40
trigger6 = stateno = 50
trigger7 = stateno = 1000
trigger8 = stateno = 1020
trigger9 = stateno = 1030
trigger10 = stateno = 1050
trigger11 = stateno = 1060
trigger12 = stateno = 2000
trigger13 = stateno = 1010
trigger14 = stateno = 5000
trigger15 = stateno = 5001
trigger16 = stateno = 5010
trigger17 = stateno = 5011
trigger18 = stateno = 5020
trigger19 = stateno = 5030
trigger20 = stateno = 5035
trigger21 = stateno = 5040
trigger22 = stateno = 5050
trigger23 = stateno = 5070
trigger24 = stateno = 5071
trigger25 = stateno = 5080
trigger26 = stateno = 5081
ID = 6050

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

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 2
value = 3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 2
value = F3, 0

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 3
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 20
trigger1 = animelem = 3
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
trigger1 = animelem = 3
value = 3, 1

[State -3, Walk]
type = PlaySnd
triggerall = anim = 21
trigger1 = animelem = 3
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