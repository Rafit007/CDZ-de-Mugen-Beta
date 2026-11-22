;---------------------------------------
;Lose by Time Over
[Statedef 170]
type = S
anim = 170

[State 170, Mouth]
type = Explod
trigger1 = Time = 0
anim = 186
ID = 186
pos = 11,53
postype = p1
bindtime = 80
sprpriority = 10
removetime = 90
removeongethit = 1

[State 170, Mouth]
type = Explod
trigger1 = Time = 120
anim = 186
ID = 186
pos = 11,53
postype = p1
bindtime = 80
sprpriority = 10
removetime = 90
removeongethit = 1

[State 181, snd]
type = PlaySnd
trigger1 = Time = 0
value = 12,12
channel = 0

[State 170,add ]
type = AssertSpecial
trigger1 = time = [0,300]
flag = roundnotover

;---------------------------------------
;Winpose general controller
[Statedef 180]
type = S
velset = 0,0

[State 180, 1]
type = ChangeState
trigger1 = MatchOver = 1
value = 181

[State 180, 2]
type = ChangeState
trigger1 = MatchOver = 0
value = 182

;---------------------------------------
;Winpose 1
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 181, snd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,1

[State 181, snd]
type = PlaySnd
trigger1 = Time = 0
value = 12,8
channel = 0

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 181 , 1]
type = AssertSpecial
trigger1 = Time = [0,180]
flag = RoundNotOver

;---------------------------------------
;Winpose 2
[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 190]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 9
trigger3 = animelem = 12
trigger4 = animelem = 16
value = 5,3

[State 182, snd]
type = PlaySnd
trigger1 = Time = 0
value = 12,6
channel = 0

[State 182, 1]
type = AssertSpecial
trigger1 = Time = [0, 0]
flag = roundnotover

[State 182 , 2]
type = AssertSpecial
trigger1 = Time = [0,260]
flag = RoundNotOver

;--------------------------------------
;Intro state decider
[Statedef 190]
type = S

[State 200,st ]
type = ChangeState
trigger1 = p2name = "shun" || p4name = "shun"
value = 193

[State 200,st ]
type = ChangeState
trigger1 = p2name != "shun" && p4name != "shun"
trigger1 = random = [0,499]
value = 191

[State 200,st ]
type = ChangeState
trigger1 = p2name != "shun" && p4name != "shun"
trigger1 = random = [500,999]
value = 192

;--------------------------------------
;Intro 1
[Statedef 191]
type = S
anim = 190
ctrl = 0

[State 191, fx]
type = Explod
trigger1 = Time = 0
anim = 6000
sprpriority = -2
postype = p1
pos = -65,0
bindtime = 1
supermove = 1
ownpal = 1

[State 190]
type = PlaySnd
trigger1 = animelem = 2
value = 12,15

[State 190]
type = PlaySnd
trigger1 = animelem = 25
pan =120
value = 4,0

[State 190]
type = PlaySnd
trigger1 = animelem = 28
pan =120
value = 4,1

[State 190]
type = PlaySnd
trigger1 = animelem = 30
value = 4,2

;[State 190]
;type = PlaySnd
;trigger1 = animelem = 32
;pan <=120
;value = 4,3

[State 190]
type = PlaySnd
trigger1 = animelem = 34
pan =120
value = 4,4

[State 190]
type = PlaySnd
trigger1 = animelem = 35
pan =120
value = 4,5

[State 190]
type = PlaySnd
trigger1 = animelem = 37
value = 4,6

[State 190,colonna di luce ]
type = Helper
trigger1 = Animelem = 18
name = "colonna di luce"
stateno = 7190
ownpal = 1

[State 190, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 190,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0

[State 190,add ]
type = AssertSpecial
trigger1 = time > 0
flag = intro

;FX colonna
[Statedef 7190]
type = S
anim = 7050
ctrl = 0
sprpriority = 4

[State 7190,ass ]
type = AssertSpecial
trigger1 = time > 0
flag = invisible

[State 7190,aft ]
type = AfterImage
trigger1 = time = 0
time = 2
length = 20
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 180,120,220
palpostbright = 0,0,0
paladd = 18,10,25
palmul = .69,.65,.75
timegap = 1
framegap = 1
trans = add

[State 7190,aft ]
type = AfterImageTime
trigger1 = time < 20
time = 2

[State 7190,des ]
type = DestroySelf
trigger1 = animtime = 0

;--------------------------------------
;Intro 2
[Statedef 192]
type = S
anim = 195
ctrl = 0

[State 192, Mouth]
type = Explod
trigger1 = Time = 0
anim = 186
ID = 186
pos = 6,0
postype = p1
bindtime = 80
sprpriority = 10
removetime = 90
removeongethit = 1

[State 192, Mouth]
type = Explod
trigger1 = Time = 100
anim = 186
ID = 186
pos = 6,0
postype = p1
bindtime = 120
sprpriority = 10
removetime = 130
removeongethit = 1

[State 190]
type = PlaySnd
trigger1 = animelem = 1
value = 12,13
channel = 0

[State 190,add ]
type = AssertSpecial
trigger1 = time = [0,240]
flag = intro

[State 190]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 7
value = 5,3

[State 190, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 190,st ]
type = ChangeState
trigger1 = time = 240
value = 0

;--------------------------------------
;Intro vs Shun
[Statedef 193]
type = S
anim = 197
ctrl = 0

[State 190]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0

[State 190,add ]
type = AssertSpecial
trigger1 = time = [0,931]
flag = intro

[State 190, StopSnd]
type = StopSnd
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = command = "x"
trigger5 = command = "y"
trigger6 = command = "z"
trigger7 = command = "start"
channel = -1

[State 190,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0

;--------------------------------------
;Taunt
[Statedef 195]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 195
velset = 0,0
poweradd = 0

[State 195, Mouth]
type = Explod
trigger1 = Time = 0
anim = 186
ID = 186
pos = 6,0
postype = p1
bindtime = 110
sprpriority = 10
removetime = 120
removeongethit = 1

[State 195,sn ]
type = PlaySnd
trigger1 = time = 0
value = 12,14
channel = 0

[State 195, playsnd]
Type = PlaySnd
Trigger1 = Time = 30
Trigger2 = Time = 60
Channel = 8
Value = 10,10

[State 195,ctrl ]
type = changestate
trigger1 = time = 140
trigger2 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
value = 0
ctrl = 1

;-----------------
;NORMALI         |
;-----------------

;-----------------------------------------------
;Standing LP
[Statedef 200]
type = S
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 200
velset = 0,0
juggle = 5

[State 200,snd ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0

[State 200,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 20
pausetime = 10,9
sparkno = S7000
sparkxy = 0,-80
hitsound = s1,0
guardsound = S6,0
ground.type = High
air.type = High
ground.slidetime = 11
ground.hittime = 14
ground.velocity = -4,0
air.velocity = -4,-2
getpower = 0
givepower = 0

[State 200,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------
;Standing MP
[Statedef 210]
type = S
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 210
velset = 0,0
juggle = 7

[State 210,snd ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,1

[State 210,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 30
pausetime = 10,9
sparkno = S7001
sparkxy = 0,-60
hitsound = s1,1
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -7,0
air.velocity = -7,-2
getpower = 0
givepower = 0

[State 210,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------
;Standing HP
[Statedef 220]
type = S
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 220
velset = 0,0
juggle = 9

[State 220,vc ]
type = PlaySnd
trigger1 = animelem = 5
value = 12,2
channel = 0

[State 220,ex ]
type = Explod
trigger1 = animelem = 8
anim = 7084
pos = -46,0
sprpriority = 5
ownpal = 1

[State 220,ex ]
type = Explod
trigger1 = animelem = 8
anim = 8007
pos = 0,-10
sprpriority = 5
ownpal = 1

[State 220,vel ]
type = VelSet
trigger1 = time = [5,15]
x = 3

[State 220,vel ]
type = VelSet
trigger1 = animelem = 8
x = 12

[State 220,pos ]
type = PosAdd
trigger1 = animelem = 8
x = 22

[State 220,width ]
type = width
trigger1 = animelem = 7
value = 22,0

[State 220,snd ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 220,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 40
pausetime = 10,9
sparkno = S7002
sparkxy = -20,-60
hitsound = s1,3
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 13
ground.hittime = 15
ground.velocity = -7,0
air.velocity = -7,-2
getpower = 0
givepower = 0

[State 220,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------
;Standing LK
[Statedef 230]
type = S
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 230
velset = 0,0
juggle = 5

[State 200,snd ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,0

[State 200,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 20
pausetime = 10,9
sparkno = S7000
sparkxy = 0,-70
hitsound = s1,0
guardsound = S6,0
ground.type = high
air.type = low
ground.slidetime = 11
ground.hittime = 14
ground.velocity = -4,0
air.velocity = -4,-2
getpower = 0
givepower = 0

[State 200,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------
;Standing MK
[Statedef 240]
type = S
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 240
velset = 0,0
juggle = 6

[State 200,snd ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 200,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 30
pausetime = 10,9
sparkno = S7001
sparkxy = 0,-80
hitsound = s1,2
guardsound = S6,0
ground.type = high
air.type = low
ground.slidetime = 13
ground.hittime = 16
ground.velocity = -7,0
air.velocity = -4,-2
getpower = 0
givepower = 0

[State 200,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------
;Standing HK
[Statedef 250]
type = S
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 250
velset = 0,0
juggle = 9

[State 220,vc ]
type = PlaySnd
trigger1 = time = 0
value = 12,3
channel = 0

[State 200,snd ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 200,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 40
pausetime = 10,9
sparkno = S7002
sparkxy = 0,-80
hitsound = s1,3
guardsound = S6,0
ground.type = high
air.type = low
ground.slidetime = 15
ground.hittime = 17
ground.velocity = -9,0
air.velocity = -5,-2
getpower = 0
givepower = 0

[State 200,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------
;Crouching HK (close)
[Statedef 255]
type = S
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 255
velset = 0,0
juggle = 9

[State 220,vc ]
type = PlaySnd
trigger1 = time = 0
value = 12,2
channel = 0

[State 200,snd ]
type = PlaySnd
trigger1 = time = 0
value = 0,2

[State 200,hit ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Up
damage = 40
pausetime = 10,9
sparkno = S7002
sparkxy = 0,-60
hitsound = s1,4
guardsound = S6,0
ground.type = high
air.type = low
ground.slidetime = 15
ground.hittime = 29
air.hittime = 15
ground.velocity = -3,-9
air.velocity = -4,-9
getpower = 0
givepower = 0
fall = 1

[State 200,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------
;Crouching LP
[Statedef 400]
type = C
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 400
velset = 0,0
juggle = 5

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = LA
animtype = Light
damage = 20
pausetime = 10,9
sparkno = S7000
sparkxy = 0,-42
hitsound = s1,0
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 11
ground.hittime = 14
ground.velocity = -4,0
air.velocity = -4,-2
getpower = 0
givepower = 0

[State 400,sn ]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 400,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;-----------------------------------------------
;Crouching MP
[Statedef 410]
type = C
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 410
velset = 0,0
juggle = 7

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = LA
animtype = Medium
damage = 30
pausetime = 10,9
sparkno = S7001
sparkxy = 0,-32
hitsound = s1,2
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 11
ground.hittime = 14
ground.velocity = -6,0
air.velocity = -6,-2
getpower = 0
givepower = 0

[State 400,sn ]
type = PlaySnd
trigger1 = time = 0
value = 0,1

[State 400,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;-----------------------------------------------
;Crouching HP
[Statedef 420]
type = C
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 420
velset = 0,0
juggle = 9

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = M
animtype = Medium
damage = 40
pausetime = 10,9
sparkno = S7002
sparkxy = 0,-52
hitsound = s1,4
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 11
ground.hittime = 14
ground.velocity = -9,0
air.velocity = -9,-2
getpower = 0
givepower = 0

[State 400,sn ]
type = PlaySnd
trigger1 = time = 0
value = 0,2

[State 400,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;-----------------------------------------------
;Crouching LK
[Statedef 430]
type = C
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 430
velset = 0,0
juggle = 6

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = LA
animtype = Light
damage = 20
pausetime = 10,9
sparkno = S7000
sparkxy = 0,-2
hitsound = s1,0
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 11
ground.hittime = 11
ground.velocity = -5,0
air.velocity = -5,-2
getpower = 0
givepower = 0

[State 400,sn ]
type = PlaySnd
trigger1 = time = 0
value = 0,0

[State 400,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;-----------------------------------------------
;Crouching MK
[Statedef 440]
type = C
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 440
velset = 0,0
juggle = 7

[State 440,p ]
type = PosAdd
trigger1 = time = 0
x = 10

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = LA
animtype = Medium
damage = 30
pausetime = 10,9
sparkno = S7001
sparkxy = 0,-2
hitsound = s1,2
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -7,0
air.velocity = -7,-2
getpower = 0
givepower = 0

[State 400,sn ]
type = PlaySnd
trigger1 = time = 0
value = 0,1

[State 400,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;-----------------------------------------------
;Crouching HK
[Statedef 450]
type = C
movetype = A
physics =  S
poweradd = 50
ctrl = 0
anim = 450
velset = 0,0
juggle = 7

[State 450,v ]
type = VelSet
trigger1 = time = 4
x = 12

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = LA
animtype = Up
damage = 40
pausetime = 10,9
sparkno = S7002
sparkxy = 0,-2
hitsound = s1,4
guardsound = S6,0
ground.type = trip
air.type = low
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -1,-4
air.velocity = -1,-5
getpower = 0
givepower = 0
fall = 1
fall.recover = 0

[State 400, ]
type = Explod
trigger1 = time = 0
anim = 7084
pos = 10,0
bindtime = 1
sprpriority = 6
ownpal = 1

[State 400,sn ]
type = PlaySnd
trigger1 = time = 0
value = 0,2

[State 400,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;-----------------------------------------------
;Jumping LP
[Statedef 600]
type = A
movetype = A
physics =  A
poweradd = 50
ctrl = 0
anim = 600
juggle = 3

[State 600,hit ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = light
damage = 20
pausetime = 10,9
sparkno = S7000
sparkxy = 0,-80
hitsound = s1,0
guardsound = S6,0
ground.type = high
air.type = high
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -4,0
air.velocity = -1,0
getpower = 0
givepower = 0

[State 600,sn ]
type = PlaySnd
trigger1 = time = 0
value = 0,0

;-----------------------------------------------
;Jumping MP
[Statedef 610]
type = A
movetype = A
physics =  A
poweradd = 50
ctrl = 0
anim = 610
juggle = 5

[State 600,hit ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = medium
damage = 30
pausetime = 10,10
sparkno = S7001
sparkxy = -20,-100
hitsound = s1,2
guardsound = S6,0
ground.type = high
air.type = high
ground.slidetime = 12
ground.hittime = 14
ground.velocity = -6,0
air.velocity = -2,0
getpower = 0
givepower = 0

[State 600,sn ]
type = PlaySnd
trigger1 = time = 0
value = 0,0

;-----------------------------------------------
;Jumping HP
[Statedef 620]
type = A
movetype = A
physics =  A
poweradd = 50
ctrl = 0
anim = 620
juggle = 7

[State 600,hit ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = hard
damage = 40
pausetime = 10,9
sparkno = S7002
sparkxy = 0,-80
hitsound = s1,4
guardsound = S6,0
ground.type = high
air.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -7,0
air.velocity = -4,12
getpower = 0
givepower = 0
air.fall = 1
fall.recover = 0

[State 600,sn ]
type = PlaySnd
trigger1 = time = 0
value = 0,0

;-----------------------------------------------
;Jumping LK
[Statedef 630]
type = A
movetype = A
physics =  A
poweradd = 50
ctrl = 0
anim = 630
juggle = 3

[State 630,hit ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = light
damage = 20
pausetime = 10,9
sparkno = S7000
sparkxy = 0,-80
hitsound = s1,0
guardsound = S6,0
ground.type = high
air.type = high
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -4,0
air.velocity = -1,0
getpower = 0
givepower = 0

[State 630,sn ]
type = PlaySnd
trigger1 = time = 0
value = 0,1

;-----------------------------------------------
;Jumping MK
[Statedef 640]
type = A
movetype = A
physics =  A
poweradd = 50
ctrl = 0
anim = 640
juggle = 5

[State 640,hit ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = medium
damage = 30
pausetime = 10,9
sparkno = S7001
sparkxy = 0,-70
hitsound = s1,2
guardsound = S6,0
ground.type = high
air.type = high
ground.slidetime = 12
ground.hittime = 14
ground.velocity = -6,0
air.velocity = -2,0
getpower = 0
givepower = 0

[State 640,sn ]
type = PlaySnd
trigger1 = time = 0
value = 0,1

;-----------------------------------------------
;Jumping HK
[Statedef 650]
type = A
movetype = A
physics =  A
poweradd = 50
ctrl = 0
anim = 650
juggle = 7

[State 650,hit ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = hard
damage = 40
pausetime = 10,9
sparkno = S7002
sparkxy = 0,-70
hitsound = s1,4
guardsound = S6,0
ground.type = high
air.type = high
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -7,0
air.velocity = -8,6
getpower = 0
givepower = 0
air.fall = 1
fall.recover = 0

[State 650,sn ]
type = PlaySnd
trigger1 = time = 0
value = 0,2

;-----------------------------------------------
;Contrattacco dell'Unicorno
[Statedef 800]
type = S
physics =  S
ctrl = 0
anim = 800
poweradd = 100
velset = 0,0

[State 800,rev ]
type = ReversalDef
trigger1 = animelem = 2
reversal.attr = S, NA
pausetime = 0,0
hitsound = s1,3
p1stateno = 801
p2stateno = 802
sparkno = S80071
sparkxy = -93,70

[State 701,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Contrattatto dell'Unicorno (calcione)
[Statedef 801]
type = S
movetype = A
physics =  N
ctrl = 0
anim = 801
sprpriority = 1
velset = 0,0

[State 801]
type = VelSet
trigger1 = animelem = 3
x = 8

[State 801]
type = PlaySnd
trigger1 = animelem = 3
value = 5,6

[State 801]
type = PlaySnd
trigger1 = animelem = 4
value = 12,3
channel = 0

[State 801]
type = HitDef
trigger1 = Animelem = 5
attr = S, SA
damage = 40
getpower = 0
givepower = 0
animtype = Up
hitflag = HA
guardflag = MAFD
priority = 3
pausetime = 10,10
sparkno = S7004
sparkxy = -10,-110
hitsound   = s1,5
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -2, -12
air.velocity = -3,-14
air.fall = 1
envshake.time =  15
envshake.freq = 50    
envshake.ampl = 15
envshake.phase = 20
fall = 1
fall.recover = 0
fall.damage = 20
yaccel = .8 
p2stateno = 803

[State 801]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Contrattatto dell'Unicorno (P2)
[Statedef 802]
type = S
movetype = I
physics =  S
anim = 5000
ctrl = 0
velset = -3,0

[State 802]
type = ChangeAnim
trigger1 = 1
value = 5000

[State 802]
type = SelfState
trigger1 = Time = 20
value = 0
ctrl = 1

; P2 Explosion Spin
[Statedef 803]
type    = A
movetype= H 
physics = N

[State 803]
type = ChangeAnim2
trigger1 = 1
value = 802

[State 803]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 803]
type = VelAdd
Trigger1 = Time >= 0
y = .3

[State 803]
type = Offset
Trigger1 = Time >= 1
y = -50

[State 803]
type = AngleSet
trigger1 = Time = 1
value = 0

[State 803]
type = AngleAdd
trigger1 = Time >= 1
value = 22.5

[State 803]
type = AngleDraw
trigger1 = Time >= 1
trigger1 = Pos Y <= 10

[State 803] 
type = SelfState
Trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
trigger2 = time = 150
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
value = 12, 4
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
; Cosmo Charge - charging
[Statedef 901]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 901
velset = 0,0

[State 901]
type = PlaySnd
trigger1 = (GameTime % 30) = 0
value = 9, 2

[State 901,effetto COSMO ]
type = Helper
trigger1 = Time = 0
name = "effettocosmo"
ID = 3000
pos = 0,0
postype = p1
stateno = 30001
supermovetime = 30

[State 901, ex]
type = Explod
triggerall = numexplod(3106) = 0
trigger1 = animelem = 1
anim = 3106
id = 3106
pos = -20,0
postype = p1
sprpriority = -1
removetime = -1
bindtime = -1
ownpal = 1
removeongethit = 1
scale = 0.95,0.95

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
; Cosmo Charge - end
[Statedef 902]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 902
velset = 0,0

[State 902]
type = RemoveExplod
triggerall = numexplod(3106) >= 1
trigger1 = time = 0
ID = 3106

[State 902]
type = RemoveExplod
triggerall = numexplod(7020) >= 1
trigger1 = time = 0
ID = 7020

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

;-----------------
;SPECIALS        |
;-----------------

;Calcio dell'idiozia dell'unicorno (1000)
[Statedef 1000]
type = A
movetype = A
physics =  N
poweradd = 100
ctrl = 0
anim = 1000
velset = 3,-9
juggle = 10

[State 1000,hit ]
type = HitDef
trigger1 = time = 0
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
damage = 40,4
pausetime = 6,5
sparkno = S7002
sparkxy = 0,-67
hitsound = s1,3
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 7
ground.hittime = 12
ground.velocity = -3,-9
guard.velocity = -4
air.velocity = -3,-6
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
fall = 1
fall.recover = 0
getpower = 0
givepower = 0

[State 1001, ]
type = Explod
trigger1 = time = 0
anim = 7089
pos = -30,10
bindtime = 1
sprpriority = 6
ownpal = 1

[State 1001, ]
type = Explod
trigger1 = time = 0
anim = 8006
pos = 0,-150
vfacing = -1
bindtime = -1
sprpriority = 6
ownpal = 1
removeongethit = 1

[State 1001,vm ]
type = VelAdd
trigger1 = time > 0
y = .4

[State 1001,sm ]
type = PlaySnd
trigger1 = time = 0
value = 5,5

[State 1001,sm ]
type = PlaySnd
trigger1 = time = 2
value = 5,4

[State 1000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 1001

[Statedef 1001]
type = A
movetype = A
physics =  N
ctrl = 0
anim = 1001

[State 1001,hit ]
type = HitDef
trigger1 = time = 0
attr = A,SA
hitflag = MAF
guardflag = HA
animtype = hard
air.animtype = hard
damage = 40,4
pausetime = 6,5
sparkno = S7003
sparkxy = 0,-40
hitsound = s1,4
guardsound = S6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime = 16
ground.velocity = -9,0
guard.velocity = -4
air.velocity = -3,12
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 0

[State 1001,vm ]
type = VelAdd
trigger1 = time > 0
y = .9

[State 1001,sm ]
type = PlaySnd
trigger1 = animelem = 2
value = 5,5

[State 1001, ]
type = Explod
trigger1 = animelem = 3
anim = 8006
;ID = 
;pos = 0,0
;postype = p1
;facing = 1
;vfacing = 1
bindtime = -1
;vel = 0,0
;accel = 0,0
;random = 0,0
;removetime = -2
;supermove = 0
;pausemovetime = 0
;scale = 1, 1
sprpriority = 6
ownpal = 1
removeongethit = 1

[State 1000,end ]
type = ChangeState
trigger1 = pos Y >= 0
value = 52
ctrl = 1


;1000 zoccoli dell'unicorno XD (1010)
[Statedef 1010]
type = A
movetype = A
physics =  A
poweradd = 100
ctrl = 0
anim = 1010


[State 1010, ]
type = PlaySnd
trigger1 = animelem = 2,1
trigger2 = animelem = 4,1
trigger3 = animelem = 6,1
value = 0,0

[State 1010,hit ]
type = HitDef
trigger1 = animelem = 2,1
trigger2 = animelem = 4,1
trigger3 = animelem = 6,1
attr = A,SA
hitflag = MAF
guardflag = HA
animtype = medium
damage = 22,2
pausetime = 4,5
sparkno = S7002
sparkxy = 0,-60
hitsound = s1,2
guardsound = S6,0
ground.type = high
air.type = high
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -4,0
air.velocity = -3,0
getpower = 0
givepower = 0
air.fall = 1
air.juggle = 3


;1000 zoccoli dell'unicorno a terra XD (1015)
[Statedef 1015]
type = S
movetype = A
physics =  S
poweradd = 100
ctrl = 0
anim = 1015
juggle = 7

[State 1015,var ]
type = VarSet
trigger1 = time = 0
v =  2
value = 1

[State 1015,var ]
type = VarAdd
trigger1 = (movehit = 1) && (animelem = 2)
trigger2 = (movehit = 1) && (animelem = 4)
trigger3 = (movehit = 1) && (animelem = 6)
v =  2
value = 1

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 2,1
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 10,1
pausetime = 3,3
sparkno = S7002
sparkxy = 0,-60
hitsound = s1,3
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 10
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = -1,0
guard.velocity = -7
air.velocity = -1,-1
airguard.velocity = -7,-3
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9
air.juggle = 1
air.fall = 1
getpower = 0
givepower = 0

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 4,1
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 10,1
pausetime = 3,3
sparkno = S7002
sparkxy = 0,-30
hitsound = s1,3
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 10
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = -1,0
guard.velocity = -7
air.velocity = -1,-1
airguard.velocity = -7,-3
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9
air.juggle = 1
air.fall = 1
getpower = 0
givepower = 0

[State 1015,sn ]
type = PlaySnd
trigger1 = animelem = 2,1
trigger2 = animelem = 4,1
trigger3 = animelem = 6,1
value = 0,0

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 6,1
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 10,1
pausetime = 3,3
sparkno = S7002
sparkxy = 0,-80
hitsound = s1,3
guardsound = S6,0
ground.type = high
air.type = low
ground.slidetime = 10
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = -1,0
guard.velocity = -7
air.velocity = -1,-1
airguard.velocity = -7,-3
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9
air.juggle = 1
air.fall = 1
getpower = 0
givepower = 0

[State 1015,1 ]
type = ChangeState
trigger1 = time = 48
value = 1017

[Statedef 1016]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 3101

[State 1015,1 ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1017]
type = S
movetype = A
physics =  S
ctrl = 0
anim = 1017

[State 200,snd ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 200,hit ]
type = HitDef
trigger1 = time = 0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 20
pausetime = 10,9
sparkno = S7002
sparkxy = 0,-80
hitsound = s1,3
guardsound = S6,0
ground.type = high
air.type = low
ground.slidetime = 15
ground.hittime = 17
ground.velocity = -9,-4
air.velocity = -8,-2
getpower = 0
FALL = 1
fall.recover = 0
givepower = 0

[State 1015,1 ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Trappola dell'unicorno
[Statedef 1020]
type = S
movetype = I
physics =  S
poweradd = 100
ctrl = 0
anim = 1020
velset = 0,0


[State 1021,rv ]
type = ReversalDef
trigger1 = animelem = 3,>1
reversal.attr = SC,NA,SA
p2stateno = 1025
hitsound = S5,5
sparkno = 40

[State 220,vc ]
type = PlaySnd
trigger1 = AnimElem = 1
value = 12,10
channel = 0

[State 1020,1 ]
type = ChangeState
trigger1 = animtime = 0
value = 1021
ctrl = 1

[Statedef 1021]
type = A
movetype = A
physics =  N
ctrl = 0
anim = 1021
velset = 1,-14

[State 1021, ]
type = Explod
trigger1 = time = 0
anim = 7089
pos = -30,10
bindtime = 1
sprpriority = 6
ownpal = 1
removeongethit = 1

[State 1021, ]
type = PlaySnd
trigger1 = time = 0
value = 5,4

[State 1021,aft ]
type = AfterImage
trigger1 = Time = 0
time = 2
length = 20
palcolor = 1
palinvertall = 1
timegap = 1
framegap = 1
trans = add

[State 1021,aft ]
type = AfterImageTime
trigger1 = time > 0
time = 2

[State 1021,v ]
type = VelAdd
trigger1 = time > 0
y = .6

[State 1020,1 ]
type = ChangeState
trigger1 = animtime = 0
value = 1022


[Statedef 1022]
type = A
movetype = A
physics =  N
ctrl = 0
anim = 1022
velset = 0,0

[State 1022]
type = PlaySnd
triggerall = PrevStateNo != 1021
trigger1 = Time = 0
value = 12,2
channel = 0

[State 1022]
type = AfterImage
triggerall = PrevStateNo != 1021
trigger1 = Time = 0
time = 2
length = 20
palcolor = 1
palinvertall = 1
timegap = 1
framegap = 1
trans = add

[State 1022,EFFETTO STUPIDO XD ]
type = Explod
trigger1 = timemod = 4,0
anim = 8009
ID = 8009
bindtime = -1
sprpriority = 8
ownpal = 1
removeongethit = 1

[State 1022,p ]
type = PlayerPush
trigger1 = time > 0
value = 0

[State 1022,hit!!! ]
type = HitDef
trigger1 = animelem = 1,>2
attr = A,SA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 12,1
pausetime = 2,2
sparkno = S7001
sparkxy = -20,-20
hitsound = s1,2
guardsound = S6,0
ground.type = High
air.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
guard.velocity = -9
air.velocity = -5,-2
getpower = 0
givepower = 0

[State 1022,v ]
type = VelSet
trigger1 = animelem = 2
x = 14
y = 14

[State 1020,1 ]
type = ChangeState
trigger1 = pos Y >= 0
value = 52
ctrl = 1







[Statedef 1025]
type = S
movetype = H
physics =  S
ctrl = 0
velset = -20,0

[State 1025,a2 ]
type = ChangeAnim2
trigger1 = time = 0
value = 1025

[State 1025, ]
type = PalFX
trigger1 = timemod = 3,0
time = 1
color = 60
invertall = 1
add = 1,1,1
mul = 256,256,256
sinadd = 126,116,136,4

[State 1025,st ]
type = SelfState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1030]
type = S
movetype = I
physics =  S
poweradd = 100
ctrl = 0
anim = 40
velset = 0,0

[State 1030,sn ]
type = PlaySnd
trigger1 = time = 5
value = 2,0

[State 1030,st ]
type = ChangeState
trigger1 = animtime = 0
value = 1031

[Statedef 1031]
type = A
movetype = A
physics =  N
ctrl = 0
anim = 1030
velset = 3,-3

[State 1030,sn ]
type = PlaySnd
trigger1 = animelem = 4
value = 0,1

[State 1030,vs ]
type = VelAdd
trigger1 = time > 0
y = .5

[State 1030,hit ]
type = HitDef
trigger1 = time = 0
attr = A,SA
hitflag = MAF
guardflag = HA
animtype = medium
damage = 30,3
pausetime = 10,9
sparkno = S7001
sparkxy = 0,-70
hitsound = s1,2
guardsound = S6,0
ground.type = high
air.type = high
ground.slidetime = 12
ground.hittime = 19
ground.velocity = -6,0
air.velocity = -2,0
getpower = 0
givepower = 0
air.fall = 1

[State 1030,cs ]
type = ChangeState
trigger1 = pos Y >= 40
value = 1032

[Statedef 1032]
type = S
movetype = A
physics =  S
ctrl = 0
anim = 1031
velset = 9,0

[State 1030,sn ]
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 7
value = 0,1

[State 400,hit ]
type = HitDef
trigger1 = animelem = 7
attr = C,SA
hitflag = MAFD
guardflag = L
animtype = Up
damage = 20,2
pausetime = 10,9
sparkno = S7002
sparkxy = 0,-16
hitsound = s1,4
guardsound = S6,0
ground.type = trip
air.type = low
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -1,-4
air.velocity = -1,-5
getpower = 0
givepower = 0
fall = 1
fall.recover = 0

[State 400,hit ]
type = HitDef
trigger1 = time = 0
attr = C,SA
hitflag = MAFD
guardflag = L
animtype = Medium
damage = 30,3
pausetime = 10,9
sparkno = S7001
sparkxy = 0,-16
hitsound = s1,2
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 12
ground.hittime = 19
ground.velocity = -7,0
air.velocity = -7,-2
getpower = 0
givepower = 0

[State 1031,ps ]
type = PosSet
trigger1 = time = 0
y = 0

[State 1031,st ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1











;------------------
;SUPERS           |
;------------------
[Statedef 3000]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 3000

[State 3000,effetto COSMO ]
type = Helper
trigger1 = animelem = 3
name = "effettocosmo"
ID = 3000
pos = 0,0
postype = p1
stateno = 30001
supermovetime = 30

[State 3000,vc ]
type = PlaySnd
trigger1 = time = 0
value = 12,11
channel = 0

[State 3000,ex ]
type = Explod
trigger1 = animelem = 3
anim = 8005
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -2
scale = 1.2,1.2
ownpal = 1

[State 3000,ex ]
type = Explod
trigger1 = animelem = 3
anim = 80041
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -1
scale = 1,1
ownpal = 1

[State 3000,super ]
type = SuperPause
trigger1 = animelem = 3
time = 30
anim = S7009
sound = -1
pos = 0,-40
poweradd = -3000

[State 3000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 3001


[Statedef 3001]
type = S
movetype = A
physics =  N
ctrl = 0
anim = 3001
velset = 9,-2
juggle = 12

[State 3000,ex ]
type = Explod
trigger1 = animelem = 8
anim = 8008
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
sprpriority = 8
scale = 1,1
ownpal = 1

[State 3000,ex ]
type = Explod
trigger1 = (movehit = 1) && (numexplod(8012) = 0) && (time > 10)
anim = 8012
ID = 8012
pos = 0,-50
postype = p2
bindtime = -1
removetime = -2
sprpriority = 8
scale = 1,1
ownpal = 1

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
animtype = Hard
air.animtype = Hard
fall.animtype = Back
damage = 35,9
pausetime = 3,1
sparkno = -1
sparkxy = 0,-70
hitsound = s1,3
guardsound = S6,0
ground.slidetime = 4
ground.hittime = 15
ground.velocity = -6,0
air.velocity = -6,0
getpower = 0
givepower = 0
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

[State 3001,exspark ]
type = Explod
trigger1 = (movehit = 1) && (time = [0,13])
anim = 7002
pos = -20,-80
postype = p2
bindtime = 1
random = 10,30
ontop = 1

[State 3000,ht ]
type = HitAdd
trigger1 = movehit = 1
value = 4

[State 3000,hit ]
type = HitDef
trigger1 = AnimElem = 9
attr = S,HA
hitflag = MAF
guardflag = HAD
animtype = Hard
air.animtype = Hard
fall.animtype = Back
damage = 340,120
pausetime = 5,5
sparkno = S7003
sparkxy = 0,-90
hitsound = s1,5
guardsound = S6,0
ground.slidetime = 0
ground.velocity = -12,-9
air.velocity = -12,-9
fall = 1
fall.recover = 0
fall.damage = 50
getpower = 0
givepower = 0
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

[State 3001,effetto stupido]
type = Helper
trigger1 = time = 1
name = "effettostupido"
ID = 3001
pos = 0,0
postype = p1
stateno = 30002

[State 3001,sn ]
type = PlaySnd
trigger1 = time = 0
value = 5,6

[State 3001,nh ]
type = NotHitBy
trigger1 = time > 5
value = SCA,NA,SA

[State 3000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 3002


[Statedef 3002]
type = A
movetype = I
physics =  N
ctrl = 0
anim = 3002

[State 3002,v ]
type = VelAdd
trigger1 = time > 0
y = .8

[State 3002,st1]
type = ChangeState
trigger1 = pos Y >= 0
value = 52













[Statedef 3100]
type = S
movetype = A
physics =  S
ctrl = 0
juggle = 15
anim = 3100

[State 3100,ex ]
type = Explod
trigger1 = Time = 0
anim = 8005
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -2
scale = 1.2,1.2
ownpal = 1

[State 3100,ex ]
type = Explod
trigger1 = Time = 0
anim = 80041
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -1
scale = 1,1
ownpal = 1

[State 3100,super ]
type = SuperPause
trigger1 = Time = 1
time = 30
anim = S7009
sound = S3000,1
pos = 0,-40
poweradd = -2000

[State 3100, ]
type = HitDef
trigger1 = AnimElem = 2,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 8
damage = 80,60
pausetime = 35,40
guard.pausetime = 5,5
sparkno = S7003
sparkxy = 0,-60
hitsound = s1,5
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -7
snap = 30,0
p1stateno = 3102
kill = 0
getpower = 0
givepower = 0
envshake.time = 20
envshake.freq = 70
envshake.ampl = -10
envshake.phase = 6

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 4,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 80,10
pausetime = 3,3
sparkno = S7002
sparkxy = 0,-30
hitsound = s1,5
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 0
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = 0,0
guard.velocity = -7
air.velocity = -1,-1
airguard.velocity = -7,-3
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9
air.juggle = 1
air.fall = 1
getpower = 0
givepower = 0

[State 1015,sn ]
type = PlaySnd
trigger1 = animelem = 2,1
trigger2 = animelem = 4,1
trigger3 = animelem = 6,1
value = 0,0

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 6,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 80,10
pausetime = 3,3
sparkno = S7002
sparkxy = 0,-80
hitsound = s1,5
guardsound = S6,0
ground.type = high
air.type = low
ground.slidetime = 0
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = 0,0
guard.velocity = -7
air.velocity = -1,-1
airguard.velocity = -7,-3
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9
air.juggle = 1
air.fall = 1
getpower = 0
givepower = 0

[State 3100,end ]
type = ChangeState
trigger1 = animtime = 0
value = 3101

[Statedef 3101]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 3101

[State 3100,end ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3102]
type = S
movetype = A
physics =  S
ctrl = 0
anim = 3102

[State 3102,sn ]
type = PlaySnd
trigger1 = animelem = 1
value = 12,0
channel = 0

[State 3102,ex ]
type = Explod
trigger1 = time = 0
anim = 8004
ID = 8004
pos = 0,0
postype = back
bindtime = -1
removetime = -1
scale = 1.2, 1.2
sprpriority = -2
ownpal = 1

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 2,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 12
pausetime = 3,3
sparkno = S7002
sparkxy = 0,-60
hitsound = s1,5
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 0
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
getpower = 0
givepower = 0
kill = 0

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 4,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 13
pausetime = 3,3
sparkno = S7002
sparkxy = 0,-30
hitsound = s1,5
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 0
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = 0,0
guard.velocity = -7
air.velocity = 0,-0
getpower = 0
givepower = 0
kill = 0

[State 1015,sn ]
type = PlaySnd
trigger1 = animelem = 2,1
trigger2 = animelem = 4,1
trigger3 = animelem = 6,1
value = 0,0

[State 1015,ht ]
type = HitDef
trigger1 = animelem = 6,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 13
pausetime = 3,3
sparkno = S7002
sparkxy = 0,-80
hitsound = s1,5
guardsound = S6,0
ground.type = high
air.type = low
ground.slidetime = 0
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = 0,0
guard.velocity = -7
air.velocity = 0,0
getpower = 0
givepower = 0
kill = 0

[State 1015,ht ]
type = HitDef
trigger1 = time = 99
attr = S,HA
hitflag = MAF
guardflag = MA 
damage = 12
getpower = 0
givepower = 0
pausetime = 0,0
sparkno = -1
hitsound = -1
guardsound = -1
p2stateno = 3110

[State 3100,end ]
type = ChangeState
trigger1 = time = 100
value = 3103

[Statedef 3103]
type = S
movetype = A
physics =  S
ctrl = 0
anim = 3103

[State 3103,ex ]
type = Explod
trigger1 = animelem = 2
anim = 3105
;ID = 
pos = -30,0
;postype = p1
;facing = 1
;vfacing = 1
;bindtime = 1
;vel = 0,0
;accel = 0,0
;random = 0,0
removetime = 50
supermovetime = 30
sprpriority = -1
;ontop = 0
;shadow = 0,0,0
;ownpal = 0
;removeongethit = 0
;ignorehitpause = 0
;persistent = 1

[State 1015,sn ]
type = PlaySnd
trigger1 = animelem = 1
value = 12,3
channel = 0

[State 3103,sp ]
type = SuperPause
trigger1 = animelem = 2
time = 30
anim = S7009
sound = -1
pos = 0,-50
darken = 0
p2defmul = 1
poweradd = 0

[State 1015,ht ]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
priority = 6
damage = 30
pausetime = 3,3
sparkno = S7002
sparkxy = 0,-60
hitsound = s1,5
guardsound = S6,0
ground.type = low
air.type = low
ground.slidetime = 0
guard.slidetime = 15
ground.hittime = 12
guard.hittime = 20
ground.velocity = -1,-20
air.velocity = -1,-20
getpower = 0
givepower = 0
fall = 1
fall.recover = 0
fall.damage = 50

[State 3103,ev ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 30

[State 3103, st]
type = ChangeState
trigger1 = animtime = 0
value = 3104

[Statedef 3104]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 3104

[State 3104,vc ]
type = PlaySnd
trigger1 = animelem = 3
value = 12,1

[State 3103, st]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;P2 STATES
[Statedef 3110]
type = S
movetype = H
physics =  S
ctrl = 0
anim = 5010
velset = 0,0

[State 3110,p ]
type = PosSet
trigger1 = time = 0
y = 0













;------------------
;EFFETTI SUPERS    |
;------------------
[Statedef 30000]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 7191


[State 30000,varrandom red ]
type = Varrandom
trigger1 = timemod = 5,0
v =  1
range = 1,2

[State 30000,varrandom blue]
type = Varrandom
trigger1 = timemod = 5,0
v =  2
range = 0,1

[State 30000,varrandom green]
type = Varrandom
trigger1 = timemod = 5,0
v =  3
range = 2,4

[State 30000,all ]
type = AllPalFX
trigger1 = timemod = 5,0
time = 4
add = -40*(var(1)),-90*(var(2)),70*(var(3))

[State 30000,des ]
type = DestroySelf
trigger1 = time = 30

[Statedef 30001]
type = S
movetype = I
physics =  S
ctrl = 0
anim = 7191

[State 30001, ex]
type = Explod
trigger1 = NumExplod(8013) < 40
anim = 8013
id = 8013
pos = 0,-10
postype = p1
sprpriority = -1
removetime = -2
bindtime = 1
ownpal = 1
random = 40,10
removeongethit = 1
supermovetime = 30
vel = 0,-4

[State 3001,ex ]
type = RemoveExplod
trigger1 = time = 29
ID = 8013

[State 30001,des ]
type = DestroySelf
trigger1 = time = 30

[Statedef 30002]
type = S
movetype = I
physics =  N
ctrl = 0
anim = 7191
velset = 6,0

[State 3001,EX ]
type = Explod
trigger1 = timemod = 5,0
anim = 7089
sprpriority = 7
ownpal = 1

[State 30001,des ]
type = DestroySelf
trigger1 = parent,stateno != 3001

[Statedef 3200]
type = S
movetype = A
physics =  S
ctrl = 0
juggle = 15
anim = 3200

[State 3200]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3200]
type = PlaySnd
trigger1 = animelem = 1
value = 12,5
channel = 0

[State 3000,ex ]
type = Explod
trigger1 = (movehit = 1) && (numexplod(8012) = 0) && (time > 10)
anim = 8012
ID = 8012
pos = 0,-50
postype = p2
bindtime = -1
removetime = -2
sprpriority = 8
scale = 1,1
ownpal = 1

[State 3200,effetto COSMO ]
type = Helper
trigger1 = Time = 0
name = "effettocosmo"
ID = 3000
pos = 0,0
postype = p1
stateno = 30001
supermovetime = 30

[State 3200,ex ]
type = Explod
trigger1 = Time = 0
anim = 8005
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -2
scale = 1.2,1.2
ownpal = 1

[State 3200,ex ]
type = Explod
trigger1 = Time = 0
anim = 80041
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -1
scale = 1,1
ownpal = 1

[State 3200,super ]
type = SuperPause
trigger1 = Time = 2
time = 30
anim = S7009
sound = -1
pos = 0,-40
poweradd = -1000

[State 3200,ex1 ]
type = Explod
trigger1 = animelem = 1
anim = 8000
ID = 8000
pos = 36,-40
removetime = -1
sprpriority = -2
scale = 1,1
postype = back
bindtime = -1
removeongethit = 1

[State 3200,ex1 ]
type = Explod
trigger1 = animelem = 1
anim = 8010
pos = -10,5
removetime = -2
sprpriority = 6
supermovetime = 30
removeongethit = 1
bindtime = -1

[State 3200,ex1 ]
type = Explod
trigger1 = animelem = 3
anim = 8011
pos = -30,-5
sprpriority = 6
removetime = -2
scale = 1.2,1
removeongethit = 1
bindtime = -1

[State 3200,ht ]
type = HitDef
trigger1 = (animelem = 3,>0) && (Timemod = 3,0) && (p2bodydist X > 20)
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 10,1
pausetime = 0,1
guard.pausetime = 0,4
sparkno = S7002
sparkxy = 0,-90
hitsound = s1,4
guardsound = S6,0
ground.type = High
ground.hittime = 20
ground.velocity = 1,-5
guard.velocity = 0
air.velocity = 1,-3
ground.cornerpush.veloff = -5
fall = 1
fall.recover = 0
getpower = 0
givepower = 0
palfx.time = 50
palfx.mul = 195,225,256
palfx.add =  82,31,184
palfx.sinadd = 195,225,256,10 
palfx.color = 1

[State 3200,ht ]
type = HitDef
trigger1 = (animelem = 3,>0) && (Timemod = 3,0) && (p2bodydist X <= 20)
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 10,1
pausetime = 0,1
guard.pausetime = 0,4
sparkno = S7002
sparkxy = 0,-90
hitsound = s1,4
guardsound = S6,0
ground.type = High
ground.hittime = 20
ground.velocity = 0,-5
guard.velocity = 0
air.velocity = 0,-3
ground.cornerpush.veloff = -5
fall = 1
fall.recover = 0
getpower = 0
givepower = 0
palfx.time = 50
palfx.mul = 195,225,256
palfx.add =  82,31,184
palfx.sinadd = 195,225,256,10 
palfx.color = 1

[State 3200]
type = VarSet
triggerall = MoveHit
trigger1 = AnimTime = 0
v = 25
value = 1

[State 3200]
type = VarSet
triggerall = !MoveHit
trigger1 = AnimTime = 0
v = 25
value = 0

[State 3200,st ]
type = ChangeState
trigger1 = (animtime = 0) && (!MoveContact)
value = 0
ctrl = 1

[State 3200,st ]
type = ChangeState
trigger1 = (animtime = 0) && (MoveContact)
value = 3201

[Statedef 3201]
type = A
movetype = A
physics =  N
ctrl = 0
anim = 3205

[State 3200]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 3201,check veloc ]
type = VelSet
triggerall = Var(25) = 1
trigger1 = (time = 0) && (p2bodydist X > 100)
y = (target,pos Y / 16)
x = 12

[State 3201,check veloc ]
type = VelSet
triggerall = Var(25) = 1
trigger1 = (time = 0) && (p2bodydist X = [50,100])
y = (target,pos Y / 16)
x = 7

[State 3201,check veloc ]
type = VelSet
triggerall = Var(25) = 1
trigger1 = (time = 0) && (p2bodydist X <= 50)
y = (target,pos Y / 16)
x = 3

[State 3201,check veloc ]
type = VelSet
triggerall = Var(25) = 0
trigger1 = (time = 0) && (p2bodydist X > 100)
x = 12

[State 3201,check veloc ]
type = VelSet
triggerall = Var(25) = 0
trigger1 = (time = 0) && (p2bodydist X = [50,100])
x = 7

[State 3201,check veloc ]
type = VelSet
triggerall = Var(25) = 0
trigger1 = (time = 0) && (p2bodydist X <= 50)
x = 3

[State 1001, ]
type = Explod
trigger1 = time = 0
anim = 7089
pos = -30,10
bindtime = 1
sprpriority = 6
ownpal = 1

[State 3200,ex1 ]
type = Explod
trigger1 = time = 0
anim = 8003
ID = 8003
pos = 0,-10
removetime = -1
sprpriority = -2
scale = 1.1,1.1
postype = back
bindtime = -1
removeongethit = 1

[State 3000,hit ]
type = HitDef
trigger1 = time = 0
attr = A,HA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = Hard
fall.animtype = Back
damage = 50,5
pausetime = 5,5
sparkno = S7003
sparkxy = 0,-70
hitsound = s1,5
guardsound = S6,0
ground.slidetime = 0
ground.velocity = -12,-9
air.velocity = -12,-9
fall = 1
fall.recover = 0
fall.damage = 10
getpower = 0
givepower = 0
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

[State 3200,st ]
type = ChangeState
trigger1 = animtime = 0
value = 3202

[Statedef 3202]
type = A
movetype = I
physics =  A
ctrl = 0
anim = 3206
velset = 4,-2

[State 3202, ]
type = Null
trigger1 = time = 0

[Statedef 3300]
type = S
movetype = A
physics =  S
ctrl = 0
juggle = 15
anim = 3300
poweradd = -1000
sprpriority = 5
VELSET = 0,0

[State 3300, ]
type = Explod
trigger1 = time = 0
anim = 8005
ID = 8005
pos = 0,0
postype = back
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = 999
scale = 1.1, 1.1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 3300, ]
type = Explod
trigger1 = time = 0
anim = 80021
ID = 80021
pos = 0,-10
postype = back
bindtime = -1
removetime = -1
supermovetime = -1
pausemovetime = 999
scale = 1.1, 1.1
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 3300,pause ]
type = superPause
trigger1 = time = 1
time = 160
movetime = 160

[State 3300,ex ]
type = RemoveExplod
trigger1 = animelem = 10 
ID = 80021

[State 3300, ]
type = Explod
trigger1 = animelem = 10
anim = 8001
ID = 8001
pos = 0,0
postype = back
bindtime = -1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = 1,1
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 3300,ex ]
type = Explod
trigger1 = animelem = 12
anim = 80041
pos = 0,0
postype = back
bindtime = -1
removetime = 30
supermovetime = 30
sprpriority = -1
scale = 1,1
ownpal = 1

[State 3300,ex ]
type = RemoveExplod
trigger1 = animelem = 13 
ID = 8005

[State 3300,super ]
type = SuperPause
trigger1 = animelem = 12
time = 30
anim = S7009
sound = -1
pos = -27,-77

[State 3300,sn ]
type = PlaySnd
trigger1 = animelem = 10
value = 3000,1

[State 3300,sn ]
type = PlaySnd
trigger1 = animelem = 11
value = 12,7
channel = 0

[State 3300, Mouth]
type = Explod
trigger1 = Time = 0
anim = 186
ID = 186
pos = 2,8
postype = p1
bindtime = 80
sprpriority = 10
removetime = 90
removeongethit = 1
supermove = 1

[State 3300,sn ]
type = PlaySnd
trigger1 = time = 0
value = 12,9
channel = 0

[State 3300,unicorno ]
type = Helper
trigger1 = animelem = 14
name = "unicorno"
ID = 3300
pos = -70,0
stateno = 3301
ownpal = 1

[State 3300,unicorno ]
type = Helper
trigger1 = animelem = 12
name = "idiozia"
ID = 30000
pos = 0,0
stateno = 30000
ownpal = 1
supermovetime = 30

[State 3300,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3301]
type = S
movetype = A
physics =  N
ctrl = 0
anim = 3301
velset = 9,0
sprpriority = 5

[State 3301,sn ]
type = PlaySnd
trigger1 = time = 0
value = 5,8
volume = 255

[State 3301,sn ]
type = PlaySnd
trigger1 = animelem = 1,1
trigger2 = animelem = 3,1
value = 3,0
volume = 255

[State 3301,sn ]
type = PlaySnd
trigger1 = animelem = 5,1
value = 3,1
volume = 255

[State 3301,as ]
type = AssertSpecial
trigger1 = time > 0
flag = invisible

[State 3301,aft ]
type = AfterImage
trigger1 = time > 0
time = 2
length = 2
palcolor = 256
palbright = var(1),var(1),var(1)
palcontrast = var(1),var(1),var(1)
palpostbright = var(1),var(1),var(1)
paladd = var(1),var(1),var(1)
palmul = var(1),var(1),var(1)
timegap = 1
framegap = 1
trans = add
ignorehitpause = 1

[State 3301,hit ]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
fall.animtype = Back
damage = 180,20
pausetime = 5,5
sparkno = S7003
sparkxy = 0,-90
hitsound = s1,5
guardsound = S6,0
ground.slidetime = 0
ground.velocity = -12,-9
air.velocity = -12,-9
fall = 1
fall.recover = 0
fall.damage = 20
getpower = 0
givepower = 0
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

[State 3301,v ]
type = VarAdd
trigger1 = timemod = 1,0
v =  1
value = 3

[State 3301,ds ]
type = DestroySelf
trigger1 = frontedgedist < -70

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------------------------------------------

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
; Random sounds
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
value = 10,1

[State -2]
type = PlaySnd
trigger1 = random < 500
trigger1 = time = 1
trigger1 = stateno = 5010
trigger1 = anim = 5022
value = 10,1

[State -2]
type = PlaySnd
trigger1 = random < 750
trigger1 = time = 1
trigger1 = stateno = 5100
trigger1 = Alive = 1
value = 10,2

;---------------------------------------------------------------------------
;Combos
;---------------------------------------------------------------------------

; Supercombo
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
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 220) && (movecontact)
value = 210
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 210) && (prevstateno = 230) && (movecontact)
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 210) && (movecontact)
value = 250
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 230) && (movecontact)
value = 240

; 4 Punches
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
value = 230
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 230) && (prevstateno = 210) && (movecontact)
value = 220

; 3 Punches
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

; 3 Punches
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

; 3 Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 230)
trigger1 = (movecontact)
value = 250
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = S)
trigger1 = (stateno = 250) && (prevstateno = 230) && (movecontact)
value = 240

; 3 Kicks
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
value = 230

; 3 Kicks
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

; 3 Crouch Punches
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 400)
trigger1 = (movecontact)
value = 420
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = C)
trigger1 = (stateno = 420) && (prevstateno = 400) && (movecontact)
value = 410

; 3 Crouch Kicks
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

; 3 Air Punches
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 600)
trigger1 = (movecontact)
value = 620
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 620) && (prevstateno = 600) && (movecontact)
value = 610

; 3 Air Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 640)
trigger1 = (movecontact)
value = 630
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) !=0) && (statetype = A)
trigger1 = (stateno = 630) && (prevstateno = 640) && (movecontact)
value = 650

; 2 Air Kicks
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630)
trigger1 = (movecontact)
value = 650
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (P2StateType != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (stateno = 630)
trigger1 = (movecontact)
value = 640

;---------------------------------------------------------------------------
;Special Moves
;---------------------------------------------------------------------------

;carika cosmo
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 129])
trigger1 = (P2bodydist X >= 150) &&  (power <= 2999) && (prevstateno != 5120)
value = 700

;Contrattacco dell'Unicorno
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [130, 194])
trigger1 = (P2bodydist X <= 70) && (prevstateno != 5120) && (p2movetype = A)
value = 800

;caricaunicorno 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [195, 259])
trigger1 = (P2bodydist X >= 200) && (prevstateno != 5120) 
value = 1030

;Trappola dell'unicorno
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [260, 324])
trigger1 = (P2bodydist X >= 180) && (prevstateno != 5120)
value = 1020

;Calcio Volante dell'unicorno
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (ctrl) && (random = [325, 389])
trigger1 = (P2bodydist X >= 50) && (P2bodydist X <= 150) && (prevstateno != 5120)
value = 1022

;1000 zoccoli dell'unicorno 
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [390, 454])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120) 
value = 1015

;1000 zoccoli dell'unicorno aria
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = A) && (p2statetype = A) && (ctrl) && (random = [455, 519])
trigger1 = (P2bodydist X <= 80) && (prevstateno != 5120)
value = 1010

;Calcio a salire
[State -2]
type = changestate
Triggerall = (roundstate = 2) && (p2statetype != L)
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (random = [520, 584])
trigger1 = (P2bodydist X <= 110) && (prevstateno != 5120) 
value = 1000

; Provoking
[State -2]
type = ChangeState
triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype != A) && (ctrl)
trigger1 = ((P2StateType = L) && (P2BodyDist X >= 200)) && (random = [585,649])
value = 195

;---------------------------------------------------------------------------
;Super Moves
;---------------------------------------------------------------------------

;Summon unicorno
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X >= 100) && (power >= 1000) && (power < 2000) && (random = [650,714])
trigger2 = (p2bodydist X >= 100) && (power >= 1000) && (power < 2000) && (random = [650,714]) && ((p2bodydist Y <= -50) && (p2movetype = H))
value = 3300

;Fulmine unicorno
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X >= 150) && (power >= 1000) && (power < 2000) && (random = [715,779])
trigger2 = (p2bodydist X >= 150) && (power >= 1000) && (power < 2000) && (random = [715,779]) && ((p2bodydist Y <= -50) && (p2movetype = H))
value = 3200

;Testata unicorno
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype = S)
trigger1 = (p2bodydist X <= 80) && (power >= 2000) && (random = [780,844])
value = 3100

;Unicorn Gallop
[State -2]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(10) = 0) && (var(59) != 0) && (statetype = S) && (ctrl) && (p2statetype != L)
trigger1 = (p2bodydist X <= 120) && (power >= 3000) && (random = [845,909])
trigger2 = (p2bodydist X <= 120) && (power >= 3000) && (random = [845,909]) && ((p2bodydist Y <= -50) && (p2movetype = H))
value = 3000

;---------------------------------------

[State -2,cancel any afterimages if get hit ]
type = AfterImageTime
trigger1 = movetype = H
time = 0

;---------------------------------------

[State -2,ex ]
type = RemoveExplod
trigger1 = anim != 0
ID = 2

[State -2,ex ]
type = RemoveExplod
trigger1 = anim != 1
ID = 3

[State -2,ex ]
type = RemoveExplod
trigger1 = stateno != 1022
ID = 8009

[State -2,ex ]
type = RemoveExplod
trigger1 = stateno != [3102,3103]
ID = 8004

[State -2,ex ]
type = RemoveExplod
trigger1 = stateno != 3103
ID = 3101

[State -2,ex ]
type = RemoveExplod
trigger1 = stateno != 3200
ID = 8000

[State -2,ex ]
type = RemoveExplod
trigger1 = stateno != 3201
ID = 8003

[State -3, ex]
Type = RemoveExplod
Triggerall = numexplod(186) > 0
trigger1 = numhelper(8150) > 0 || enemy, numhelper(8150) > 0
ID = 186

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

;---------------------------------------

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 2
value = 3,0

[State -3, Walk]
type = PlaySnd
triggerall = stateno = 20
trigger1 = Animelem = 4
value = 3,1

[State -3, Jump]
type = PlaySnd
trigger1 = (time = 1) && (Stateno = 40)
value = 2,0

[State -3, Air Jump]
type = PlaySnd
trigger1 = (time = 1) && (Stateno = 45)
value = 2,1

[State -3, Air Jump]
type = AfterImage
triggerall = stateno = 45
trigger1 = time = 1
time = 20
PalBright = 10,10,10
PalContrast = 98,98,98
trans = Add1

[State -3, Jump Land]
type = PlaySnd
triggerall = stateno = 52
trigger1 = time = 1
value = 2,2

;---------------------------------------

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = time = 1
value = 2,1

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 3,1
value = 3,0

[State -3, Run Forward]
type = PlaySnd
triggerall = stateno = 100
trigger1 = animelem = 6,1
value = 3,1

[State -3, Run Forward]
type = AfterImage
triggerall = stateno = 100
trigger1 = time = 1
time = 25
PalBright = 10,10,10
PalContrast = 98,98,98
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
pos = 25,0
anim = 7085
sprpriority = 5
supermove = 1
removeongethit = 1
ownpal = 1

;---------------------------------------

[State -3, Run Back]
type = PlaySnd
triggerall = stateno = 105
trigger1 = time = 1
value = 2,0

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
pos = -10,20
anim = 70841
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

;---------------------------------------

[State -3, Cloth Pieces]
type = PlaySnd
triggerall = Var(58) = 0
triggerall = Life <= 0
triggerall = anim = 5150
trigger1 = time = 1
trigger2 = time = 5
value = 11,1

;---------------------------------------

[State -3, stopcosmosnd]
Type = Stopsnd
Trigger1 = Stateno != 195
Trigger2 = Power < 3000
Channel = 8

[State -2, prov]
Type = Stopsnd
Trigger1 = prevstateno = 195
channel = 0