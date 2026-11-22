; the cmd File.
;
; two parts: 1. command Definition and  2. state entry
; (state entry is after the commands Def section)
;
; 1. command Definition
; ---------------------
; note: the commands are case-sensitive, and so are the command names.
; the eight Directions are:
;   B, DB, D, DF, F, UF, U, UB     (all caps)
;   corresponding to back, Down-back, Down, DownforwarD, etc.
; the six buttons are:
;   a, B, c, x, y, z               (all lower case)
;   in Default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you Use a and b.
;   For 6 button characters, Use abc For kicks and xyz For punches.
;
; each [command] section Defines a command that you can Use For
; state entry, as well as in the cns File.
; the command section should look like:
;
;   [command]
;   name = some_name
;   command = the_command
;   time = time (optional -- Defaults to 15 if omitted)
;
; - some_name
;   a name to give that command. you'll Use this name to refer to
;   that command in the state entry, as well as the cns. it is case-
;   sensitive (qcb_a is not the same as qcb_a or qcb_a).
;
; - command
;   list of buttons or Directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held Down
;          egs. command = /D       ;hold the Down Direction
;               command = /DB, a   ;hold Down-back while you press a
;   tilde (~) - to Detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release Down, press FwD, then a
;          if you want to Detect "charge moves", you can specify
;          the time the key must be held Down For (in game-ticks)
;          egs. command = ~30a     ;hold a For at least 30 ticks, then release
;               command = ~30
;   Dollar ($) - Direction-only: Detect as 4-way
;          egs. command = $D       ;will Detect if D, DB or DF is held
;               command = $B       ;will Detect if B, DB or UB is held
;   plus (+) - buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   you can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF For 30 ticks, release,
;                                  ;then press a and b together
;   it's recommended that For most "motion" commads, eg. quarter-circle-fwD,
;   you start off with a "release Direction". this matches the way most
;   popular Fighting games implement their engine.
;
; - time (optional)
;   time allowed to Do the commanD, given in game-ticks. Defaults to 15
;   if omitted
;
; if you have two or more commands with the same name, all of them will
; work. you can Use it to allow multiple motions For the same move.
;
; some common commands are given below. Delete, adD, or modify as you wish.


;-| super motions |--------------------------------------------------------
[command]
name = "supergiro"
command = DF, DB, z
time = 30

[command]
name = "supergiropulando"
command = DF, DB, c
time = 30

[command]
name = "pizzapower"
command = DB, DF, y
time = 30

[command]
name = "cowabanga"
command = DB, DF, b
time = 30

[command]
name = "aguia"
command = B, F, x
time = 30

[command]
name = "aguiaf"
command = B, F, y
time = 20

[command]
name = "meteoros"
command = F, DF, D, DB, B, a
time = 30

;-| special motions |------------------------------------------------------

[command]
name = "giro_z"
command = D, DB, B, a

[command]
name = "giropulando_y"
command = ~F, D, DF, F, y
time = 20

[command]
name = "cut_x"
command = ~D, DF, F, x
time = 20

[command]
name = "barriga"
command = F, B, y
time = 10

;-| DoUBle tap |-----------------------------------------------------------
[command]
name = "ff"     ;required (do not remove)
command = F, F
time = 10

[command]
name = "bb"     ;required (do not remove)
command = B, B
time = 10

;-| 2/3 button combination |-----------------------------------------------
[command]
name = "recovery";required (do not remove)
command = x+y
time = 1

;reversaldef--------------------------------------------------------------------
[Command]
name = "qcf_a"
command = b+c
time = 15

;-| Dir + button |---------------------------------------------------------
[command]
name = "down_a"
command = /$D,a
time = 1

[command]
name = "down_b"
command = /$D,b
time = 1

;-| single button |---------------------------------------------------------
[command]
name = "a"
command = a
time = 1

[command]
name = "b"
command = b
time = 1

[command]
name = "c"
command = c
time = 1

[command]
name = "x"
command = x
time = 1

[command]
name = "y"
command = y
time = 1

[command]
name = "z"
command = z
time = 1

[command]
name = "start"
command = s
time = 1

;-| hold Dir |--------------------------------------------------------------
[command]
name = "holdfwd";required (do not remove)
command = /$F
time = 1

[command]
name = "holdback";required (do not remove)
command = /$B
time = 1

[command]
name = "holdup" ;required (do not remove)
command = /$U
time = 1

[command]
name = "holddown";required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. state entry
; --------------
; this is where you Define what commands bring you to what states.
;
; each state entry block looks like:
;   [state -1, label]           ;change label to any name you want to Use to
;                               ;identify the state with.
;   type = changestate          ;don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       s, c or a : current state-type of player (stanD, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - Useful For "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                Useful For "move interrupts"
;
; note: the order of state entry is important.
;   state entry with a certain command must come before another state
;   entry with a command that is the sUBset of the First.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see cns Documentation.
;
; just For your information (skip if you're not interested):
; this part is an extension of the cns. "state -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the Following line. it's required by the cmd standard.
[statedef -1]

;=================================
; meteoros
;=================================
[state -1]
type = changestate
value = 1330
triggerall = command ="meteoros"
triggerall = power >= 1000 
trigger1 = statetype != a
trigger1 = ctrl = 1

;=================================
;reversal
;=================================
[State -1]
type = ChangeState
value = 1400
triggerall = command = "qcf_a"
trigger1 = statetype != A
trigger1 = ctrl = 1
;=================================
; aguia De Fogo
;=================================
[state -1]
type = changestate
value = 11000
triggerall = command = "aguiaf"
trigger1 = power >= 2000
trigger1 = statetype = a
trigger1 = ctrl = 1

;=================================
; lampejo Da aguia
;=================================
[state -1]
type = changestate
value = 1304
triggerall = command = "aguia"
triggerall = power >= 2000 
trigger1 = statetype != a
trigger1 = ctrl = 1

;=================================
; super giro
;=================================
[state -1, super giro]
type = changestate
value = 1050
triggerall = command = "supergiro"
triggerall = power >= 1000
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = statetype != a
;trigger2 = hitdefattr = sc, na, sa
trigger2 = movecontact
trigger3 = statetype != a
trigger3 = movecontact
trigger4 = statetype != a
trigger4 = movecontact

;=================================
; super giro pulando
;=================================
[state -1, giro pulando Forte]
type = changestate
value = 1150
triggerall = command = "supergiropulando"
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = hitdefattr = sc, na, sa
trigger2 = movecontact

;=================================
; pizza power
;=================================
[state -1, pizzar power]
type = changestate
value = 1250
triggerall = command = "pizzapower"
triggerall = power >= 2000
triggerall = statetype = s
trigger1 = ctrl
trigger2 = hitdefattr = sc, na, sa
trigger2 = movecontact

;=================================
; cowabanga
;=================================
[state -1, cowabanga]
type = changestate
value = 1300
triggerall = command = "cowabanga"
triggerall = power >= 2000
triggerall = statetype = s
trigger1 = ctrl
trigger2 = hitdefattr = sc, na, sa
trigger2 = movecontact

;===================================
; giro simples Forte
;===================================
[state -1, giro_z]
type = changestate
value = 1002
triggerall = command = "giro_z"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;cancel ground moves
trigger2 = stateno != 440 ;except For sweep kick
trigger2 = movecontact

;=================================
; giro pulando medio
;=================================
[state -1, giro pulando medio]
type = changestate
value = 1101
triggerall = command = "giropulando_y"
trigger1 = ctrl
trigger2 = hitdefattr = sc, na, sa
trigger2 = movecontact

;=================================
; barriga
;=================================
[state -1, barriga]
type = changestate
value = 660
triggerall = command = "barriga"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = hitdefattr = sc, na, sa
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;=================================
; cut Fraco
;=================================
[state -1, cut Fraco]
type = changestate
value = 1200
triggerall = command = "cut_x"
;triggerall = power >= 1000
triggerall = statetype = s
trigger1 = ctrl
trigger2 = hitdefattr = sc, na, sa
trigger2 = movecontact

;=====================================
;run Fwd
;=====================================
[state -1, run Fwd]
type = changestate
value = 100
trigger1 = command = "ff"
trigger1 = statetype = s
trigger1 = ctrl

;=====================================
;run back
;=====================================
[state -1, run back]
type = changestate
value = 105
trigger1 = command = "bb"
trigger1 = statetype = s
trigger1 = ctrl

;=====================================
;kung Fu throw
;=====================================
[state -1, kung Fu throw]
type = changestate
value = 800
triggerall = command = "z"
triggerall = statetype = s
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist x < 3
trigger1 = (p2statetype = s) || (p2statetype = c)
trigger1 = p2movetype != h
trigger2 = command = "holdback"
trigger2 = p2bodydist x < 5
trigger2 = (p2statetype = s) || (p2statetype = c)
trigger2 = p2movetype != h

;=====================================
;stand light punch
;=====================================
[state -1, stand light punch]
type = changestate
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 7

;=====================================
;stand medio punch
;=====================================
[state -1, stand medio punch]
type = changestate
value = 250
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;=====================================
;stand strong punch
;=====================================
[state -1, stand strong punch]
type = changestate
value = 240
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;=====================================
;stand light kick
;=====================================
[state -1, stand light kick]
type = changestate
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;=====================================
;stand medio kick
;=====================================
[state -1, stand light kick]
type = changestate
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;=====================================
;standing strong kick
;=====================================
[state -1, standing strong kick]
type = changestate
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;=====================================
;taunt
;=====================================
[state -1, taunt]
type = changestate
value = 195
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl

;=====================================
;crouching light punch
;=====================================
[state -1, crouching light punch]
type = changestate
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl

;=====================================
;crouching medio punch
;=====================================
[state -1, crouching medio punch]
type = changestate
value = 450
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl

;=====================================
;crouching strong punch
;=====================================
[state -1, crouching strong punch]
type = changestate
value = 440
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;====================================
;crouching light kick
;====================================
[state -1, crouching light kick]
type = changestate
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;====================================
;crouching medio kick
;====================================
[state -1, crouching medio kick]
type = changestate
value = 420
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;====================================
;crouching strong kick
;====================================
[state -1, crouching strong kick]
type = changestate
value = 410
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;====================================
;jump light punch
;====================================
[state -1, jump light punch]
type = changestate
value = 630
triggerall = command = "x"
trigger1 = statetype = a
trigger1 = ctrl

;====================================
;jump medio punch
;====================================
[state -1, jump strong punch]
type = changestate
value = 650
triggerall = command = "y"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;====================================
;jump strong punch
;====================================
[state -1, jump strong punch]
type = changestate
value = 640
triggerall = command = "z"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;====================================
;jump light kick
;====================================
[state -1, jump light kick]
type = changestate
value = 600
triggerall = command = "a"
trigger1 = statetype = a
trigger1 = ctrl

;====================================
;jump medio kick
;====================================
[state -1, jump medio kick]
type = changestate
value = 620
triggerall = command = "b"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;====================================
;jump strong kick
;====================================
[state -1, jump strong kick]
type = changestate
value = 610
triggerall = command = "c"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


;==============================================================
;===========================================================================
;---------------------------------------------------------------------------
