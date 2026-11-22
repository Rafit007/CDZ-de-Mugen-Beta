;---------------------------------------------------------------------------
; Moves list (enable)
[Statedef 8150]
type = S
ctrl = 0

[State 8150]
type = Turn
triggerall = parent, teamside = 2
trigger1 = 1

[State 8150]
type = DestroySelf
trigger1 = ailevel

[State 8150]
type = ChangeState
trigger1 = !ailevel
value = 8151

;------------------
; Moves list
[Statedef 8151]
type = S
ctrl = 0

[State 8151]
type = AssertSpecial
trigger1 = time = [0,999999] 
flag = nomusic

[State 8151]
type = StopSnd
trigger1 = time = 0
channel = -1

[State 8151]
type = SuperPause
trigger1 = time = 0
time = 999999
movetime = 999999

[State 8151]
type = Explod
triggerall = teamside = 1
trigger1 = time = 0
anim = 8150
ID = 8150
pos = GameWidth/2, GameHeight/2
postype = back
scale = 0.5,0.5
ownpal = 1
sprpriority = 10
ontop = 1
pausemovetime = -1
bindtime = -1

[State 8151]
type = Explod
triggerall = name = "ikkiG" || (name = "ikki" && palno >= 1 && palno <= 9)
triggerall = teamside = 1
trigger1 = time = 0
anim = 8151
ID = 8150
pos = GameWidth/2, GameHeight/2
postype = back
scale = 0.5,0.5
ownpal = 1
sprpriority = 10
ontop = 1
pausemovetime = -1
bindtime = -1

[State 8151]
type = Explod
triggerall = name = "ikkiE" || (name = "ikki" && palno >= 10 && palno <= 12)
triggerall = teamside = 1
trigger1 = time = 0
anim = 8152
ID = 8150
pos = GameWidth/2, GameHeight/2
postype = back
scale = 0.5,0.5
ownpal = 1
sprpriority = 10
ontop = 1
pausemovetime = -1
bindtime = -1

[State 8151]
type = Explod
triggerall = teamside = 2
trigger1 = time = 0
anim = 8150
ID = 8150
pos = GameWidth/2, GameHeight/2
postype = back
scale = 0.5,0.5
ownpal = 1
sprpriority = 10
ontop = 1
pausemovetime = -1
bindtime = -1
facing = -1

[State 8151]
type = Explod
triggerall = name = "ikkiG" || (name = "ikki" && palno >= 1 && palno <= 9)
triggerall = teamside = 2
trigger1 = time = 0
anim = 8151
ID = 8150
pos = GameWidth/2, GameHeight/2
postype = back
scale = 0.5,0.5
ownpal = 1
sprpriority = 10
ontop = 1
pausemovetime = -1
bindtime = -1
facing = -1

[State 8151]
type = Explod
triggerall = name = "ikkiE" || (name = "ikki" && palno >= 10 && palno <= 12)
triggerall = teamside = 2
trigger1 = time = 0
anim = 8152
ID = 8150
pos = GameWidth/2, GameHeight/2
postype = back
scale = 0.5,0.5
ownpal = 1
sprpriority = 10
ontop = 1
pausemovetime = -1
bindtime = -1
facing = -1

[State 8151]
type = Explod
trigger1 = time = 0
anim = 9003
ID = 9003
pos = GameWidth/2, GameHeight/2
postype = back
scale = 0.5,0.5
ownpal = 1
sprpriority = 10
ontop = 1
pausemovetime = -1
bindtime = -1

[State 8151]
type = PlaySnd
trigger1 = time = 0
value = F100, 1

[State 8151]
type = ChangeState
trigger1 = time >= 6 && command = "start"
value = 8152

;------------------
; Moves list (disable)
[Statedef 8152]
type = S
ctrl = 0

[State 8152]
type = SuperPause
trigger1 = time = 0
time = 1
movetime = 1

[State 8152]
type = RemoveExplod
trigger1 = time = 0
ID = 8150

[State 8152]
type = RemoveExplod
trigger1 = time = 0
ID = 9003

[State 8152]
type = PlaySnd
trigger1 = time = 0
value = F100, 2

[State 8152]
type = DestroySelf
trigger1 = time = 1