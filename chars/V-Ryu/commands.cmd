
;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;-| Hold Button |----------------------------------------------------------

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1
[Command]
name = "holdp"
command = /x
time = 1
[Command]
name = "holdp"
command = /y
time = 1
[Command]
name = "holdp"
command = /z
time = 1
;----------------------------------------------------------------------------
;============================ ADD COMMANDS FROM HERE ON =====================
;----------------------------------------------------------------------------
;-| System Motions |--------------------------------------------------------
;Throw
[Command]
name = "throw"
command = x+a
time = 1

;Throw
[Command]
name = "x+a"
command = x+a
time = 1

;V-Skill
[Command]
name = "y+b"
command = y+b
time = 1

;V-Trigger
[Command]
name = "z+c"
command = z+c
time = 1
;-| Super Motions |--------------------------------------------------------
;---------------------------------Ground supers--------------------------
[Command]
name = "SGS"
command = x, x, F, a, z
time=45

[Command]
name = "SGS"
command = x, x, F, a, ~z
time=45

[Command]
name = "SGS"
command = x, x, /F, a, ~z
time = 48

[Command]
name = "SGS"
command = x, x, F, a+z
time = 40

[Command]
name = "SGS"
command = x, x, F+a+z
time = 32
;----------------------Shinkuu hadouken------------------------
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, x
time = 25
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, y
time = 25
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, z
time = 25

[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, ~x
time = 25
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, ~y
time = 25
[Command]
name = "QCFx2P"
command = ~D, DF, F, D, DF, F, ~z
time = 25
;------ EX ------
[Command]
name = "EXShinkuHadouken"
command = ~D, DF, F, D, DF, F, x+y
time = 25
[Command]
name = "EXShinkuHadouken"
command = ~D, DF, F, D, DF, F, y+z
time = 25
[Command]
name = "EXShinkuHadouken"
command = ~D, DF, F, D, DF, F, z+x
time = 25
;--------------------------------------------------------------------------
[Command]
name = "QCF2PP"
command = ~D, DF, F, D, DF, F, x+y
time = 20
[Command]
name = "QCF2PP"
command = ~D, DF, F, D, DF, F, y+z
time = 20
[Command]
name = "QCF2PP"
command = ~D, DF, F, D, DF, F, z+x
time = 20

;---------------------------- SHIN SHORYUUKEN -------------------------------
[Command]
name = "ShinShoryuuken"
command = ~D, DF, F, D, DF, F, a
time = 20
[Command]
name = "ShinShoryuuken"
command = ~D, DF, F, D, DF, F, b
time = 20
[Command]
name = "ShinShoryuuken"
command = ~D, DF, F, D, DF, F, c
time = 20

[Command]
name = "ShinShoryuuken"
command = ~D, DF, F, D, DF, F, ~a
time = 20
[Command]
name = "ShinShoryuuken"
command = ~D, DF, F, D, DF, F, ~b
time = 20
[Command]
name = "ShinShoryuuken"
command = ~D, DF, F, D, DF, F, ~c
time = 20
;------- EX ------
[Command]
name = "QCF2KK"
command = ~D, DF, F, D, DF, F, a+b
time = 20
[Command]
name = "QCF2KK"
command = ~D, DF, F, D, DF, F, a+c
time = 20
[Command]
name = "QCF2KK"
command = ~D, DF, F, D, DF, F, a+b
time = 20
[Command]
name = "QCF2KK"
command = ~D, DF, F, D, DF, F, c+b
time = 20
;----------------------- SHINKUU TATZUMAKI -----------------------------------
[Command]
name = "ShinkuuTatzumaki"
command = ~D, DB, B, D, DB, B, a
time = 20
[Command]
name = "ShinkuuTatzumaki"
command = ~D, DB, B, D, DB, B, b
time = 20
[Command]
name = "ShinkuuTatzumaki"
command = ~D, DB, B, D, DB, B, c
time = 20

[Command]
name = "ShinkuuTatzumaki"
command = ~D, DB, B, D, DB, B, ~a
time = 20
[Command]
name = "ShinkuuTatzumaki"
command = ~D, DB, B, D, DB, B, ~b
time = 20
[Command]
name = "ShinkuuTatzumaki"
command = ~D, DB, B, D, DB, B, ~c
time = 20
;--------- EX ----------------
[Command]
name = "EXShinkuuTatzumaki"
command = ~D, DB, B, D, DB, B, a+b
time = 20
[Command]
name = "EXShinkuuTatzumaki"
command = ~D, DB, B, D, DB, B, a+c
time = 20
[Command]
name = "EXShinkuuTatzumaki"
command = ~D, DB, B, D, DB, B, c+b
time = 20
;-------------------------------- JET HADOU COMBO ---------------------------
[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, x
time = 20
[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, y
time = 20
[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, z
time = 20

[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, ~x
time = 20
[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, ~y
time = 20
[Command]
name = "QCB2_P"
command = ~D, DB, B, D, DB, B, ~z
time = 20
;---------------------------------Air supers------------------------------

;---------------------------------------------------------------------
[Command]
name = "ShinFallingKick"
command = ~D, DF, F, D, DF, F, a
time = 20
[Command]
name =  "ShinFallingKick"
command = ~D, DF, F, D, DF, F, b
time = 20
[Command]
name =  "ShinFallingKick"
command = ~D, DF, F, D, DF, F, c
time = 20
;----------------------Ex-Moves--------------------------------
;--------------------EX Electric Hadouken-------------
[Command]
name = "HCF_pp"
command = ~B, D, F, x+y
[Command]
name = "HCF_pp"
command = ~B, D, F, x+z
[Command]
name = "HCF_pp"
command = ~B, D, F, y+z
;----------------Ex-Hadouken------------------------
[Command]
name = "QCF_pp"
command = ~D, DF, F, x+y
[Command]
name = "QCF_pp"
command = ~D, DF, F, x+z
[Command]
name = "QCF_pp"
command = ~D, DF, F, y+z
;----------------Ex-Gou Hadouken-----------------------
[Command]
name = "QCB_pp"
command = ~D, DB, B, x+y
[Command]
name = "QCB_pp"
command = ~D, DB, B, x+z
[Command]
name = "QCB_pp"
command = ~D, DB, B, y+z
;----------------Ex-Shoryuuken-----------------------
[Command]
name = "DP_pp"
command = ~F, D, DF, x+y
[Command]
name = "DP_pp"
command = ~F, D, DF, x+z
[Command]
name = "DP_pp"
command = ~F, D, DF, y+z
;----------------Ex-Tatzumaki------------------------
[Command]
name = "QCB_kk"
command = ~D, DB, B, a+b
[Command]
name = "QCB_kk"
command = ~D, DB, B, b+c
[Command]
name = "QCB_kk"
command = ~D, DB, B, a+c
;----------------Ex-Joudan------------------------
[Command]
name = "QCF_kk"
command = ~D, DF, F, a+b
[Command]
name = "QCF_kk"
command = ~D, DF, F, b+c
[Command]
name = "QCF_kk"
command = ~D, DF, F, a+c

;-| Special Motions |------------------------------------------------------
;------------------------Dragon Punch Kick-------------------
[Command]
name = "DP_a"
command = ~F, D, DF, a
[Command]
name = "DP_b"
command = ~F, D, DF, b
[Command]
name = "DP_c"
command = ~F, D, DF, c

[Command]
name = "DP_a"
command = ~F, D, DF, ~a
[Command]
name = "DP_b"
command = ~F, D, DF, ~b
[Command]
name = "DP_c"
command = ~F, D, DF, ~c
;------------------------Shoryuuken-------------------
[Command]
name = "DP_x"
command = ~F, D, DF, x
[Command]
name = "DP_y"
command = ~F, D, DF, y
[Command]
name = "DP_z"
command = ~F, D, DF, z

[Command]
name = "DP_x"
command = ~F, D, DF, ~x
[Command]
name = "DP_y"
command = ~F, D, DF, ~y
[Command]
name = "DP_z"
command = ~F, D, DF, ~z
;----------------Ashura Senkuu-----------------------
[Command]
name = "DP_ppp"
command = ~F, D, DF, x+y+z
[Command]
name = "DP_kkk"
command = ~F, D, DF, a+b+c
[Command]
name = "DPB_ppp"
command = ~B, D, DB, x+y+z
[Command]
name = "DPB_kkk"
command = ~B, D, DB, a+b+c
;----------------Ex-Tatzumaki------------------------
[Command]
name = "QCB_kk"
command = ~D, DB, B, a+b
[Command]
name = "QCB_kk"
command = ~D, DB, B, b+c
[Command]
name = "QCB_kk"
command = ~D, DB, B, a+c
;------------------------Hadouken---------------------
[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 20
[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 20
[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 20

[Command]
name = "QCF_x"
command = ~D, DF, F, ~x
time = 20
[Command]
name = "QCF_y"
command = ~D, DF, F, ~y
time = 20
[Command]
name = "QCF_z"
command = ~D, DF, F, ~z
time = 20
;------------------------Thrust kick-------------------
[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 20
[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 20
[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 20

[Command]
name = "QCF_a"
command = ~D, DF, F, ~a
time = 20
[Command]
name = "QCF_b"
command = ~D, DF, F, ~b
time = 20
[Command]
name = "QCF_c"
command = ~D, DF, F, ~c
time = 20
;---------------------Hadou combo------------
[Command]
name = "QCB_x"
command = ~D, DB, B, x
[Command]
name = "QCB_y"
command = ~D, DB, B, y
[Command]
name = "QCB_z"
command = ~D, DB, B, z
;------------------Tatzumaki------------------------
[Command]
name = "QCB_a"
command = ~D, DB, B, a
[Command]
name = "QCB_b"
command = ~D, DB, B, b
[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_a"
command = ~D, DB, B, ~a
[Command]
name = "QCB_b"
command = ~D, DB, B, ~b
[Command]
name = "QCB_c"
command = ~D, DB, B, ~c
;-----------------Float tatzumaki-------
[Command]
name = "HCB_a"
command = ~F, D, B, a
[Command]
name = "HCB_b"
command = ~F, D, B, b
[Command]
name = "HCB_c"
command = ~F, D, B, c

[Command]
name = "HCB_a"
command = ~F, D, B, ~a
[Command]
name = "HCB_b"
command = ~F, D, B, ~b
[Command]
name = "HCB_c"
command = ~F, D, B, ~c
;--------------------Fire Hadouken-------------
[Command]
name = "HCF_x"
command = ~B, D, F, x
[Command]
name = "HCF_y"
command = ~B, D, F, y
[Command]
name = "HCF_z"
command = ~B, D, F, z

[Command]
name = "HCF_x"
command = ~B, D, F, ~x
[Command]
name = "HCF_y"
command = ~B, D, F, ~y
[Command]
name = "HCF_z"
command = ~B, D, F, ~z
;--------------------Electric Hadouken-------------
[Command]
name = "HCB_x"
command = ~F, D, B, x
[Command]
name = "HCB_y"
command = ~F, D, B, y
[Command]
name = "HCB_z"
command = ~F, D, B, z

[Command]
name = "HCB_x"
command = ~F, D, B, ~x
[Command]
name = "HCF_y"
command = ~F, D, B, ~y
[Command]
name = "HCF_z"
command = ~F, D, B, ~z
;-------------------------Teleport-----------------------
[Command]
name = "DP_xyz"
command = ~F, D, DF, x+y+z

[Command]
name = "DPB_xyz"
command = ~B, D, DB, x+y+z

[Command]
name = "DP_abc"
command = ~F, D, DF, a+b+c

[Command]
name = "DPB_abc"
command = ~B, D, DB, a+b+c
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "recoverf"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "recoverb"     ;Required (do not remove)
command = B, B
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1
;-------------------------------------------------
[Command]
name = "chargey"
command = /y
time = 1

[Command]
name = "chargeb"
command = /b
time = 1

;Super Jump
[Command]
name = "superjump"
command = $D, $U

[Command]
name = "superjump"
command = ~D, U

;[Command]
;name = "superjump"
;command = /D, U

;---------------------------------------------------------------------------
;Single direction
[Command]
name = "Up"
command = U
time = 5
[Command]
name = "Forward"
command = F
time = 5
[Command]
name = "Down"
command = D
time = 5
[Command]
name = "Back"
command = B
time = 1
;---------------------------------------------------------------
;relase direction
[Command]
name="rlsfwd"
command=~$F
time=1
[Command]
name="rlsback"
command=~$B
time=1
[Command]
name="rlsup"
command=~$U
time=1
[Command]
name="rlsdown"
command=~$D
time=1
;-----------------------------------------------------------------------
;relase button
[Command]
name="rlsx"
command=~x
time=1
[Command]
name="rlsy"
command=~y
time=1
[Command]
name="rlsz"
command=~z
time=1
[Command]
name="rlsa"
command=~a
time=1
[Command]
name="rlsb"
command=~b
time=1
[Command]
name="rlsc"
command=~c
time=1
;=========================================================================
;=========================================================================
[Statedef -1]
;============================== DASH ===========================================
[State -1, Dash]
type = changestate
value = ifelse(command = "FF", 102, 105)
triggerall = !AIlevel
trigger1 = !AIlevel
trigger1 = command = "FF" || command = "BB"
trigger1 = roundstate = 2 && (stateno != [100, 106]) && statetype = S && ctrl
;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = changestate
value = 800
triggerall = !AIlevel
triggerall = roundstate = 2 && ctrl && statetype = S && stateno != 100
trigger1 = (command = "throw")
trigger2 = (command = "throw") && (command = "holdfwd" || command = "holdback")
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AIlevel
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1,V-Skill]
type = changestate
value = 4000
triggerall = !AIlevel
triggerall = Statetype != A
;triggerall = power >=1000
triggerall = command = "y+b"
;triggerall = numhelper(2090) = 0
trigger1 = ctrl
trigger2 = stateno = 4701;(stateno=[200,499]) && movecontact
;trigger3=(stateno=[1100,1999]) && movecontact
;trigger4=(stateno=[1000,1099]) && (numhelper(1090))
;trigger4=helper(1090),var(3)
;trigger6=(stateno=[2000,2099]) && (numhelper(2090))
;trigger6=helper(2090),var(3)
;trigger7=(stateno=3000) && (numhelper(3090))
;trigger7 = helper(3090),var(3)
;trigger8 = stateno = 3200 && movecontact
;---------------------------------------------------------------------------
[State -1,V-Reversal]
type = changestate
value = 4100
triggerall = var(42)>=ceil((var(40)/2))
trigger1 = !AIlevel
trigger1 = stateno = 150 || stateno = 152
trigger1 = command = "holdback" && command = "z+c"
trigger1 = roundstate = 2 && statetype != A
;---------------------------------------------------------------------------
[State -1,V-Trigger]
type = changestate
value = 4200
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = var(42)>=ceil((var(40)/2))
triggerall = command = "z+c"
triggerall = numhelper(4290) = 0
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1100,1999]) && movecontact
trigger4=(stateno=[1000,1099]) && (numhelper(1090))
trigger4=helper(1090),var(3)
;===========================================================================
;-----------------------------Super Attacks-------------------------------
;===========================================================================
;[State -1, Shun Goku Satsu]
;type = ChangeState
;value = 3600
;triggerall = !AIlevel
;triggerall = Statetype != A
;triggerall = command = "SGS"
;triggerall = power >=3000
;trigger1 = ctrl
;trigger2 = (stateno=[200,499])
;trigger3 = stateno = 1400 && time <= 10
;---------------------------------------------------------------------------
;[State -1, MetsuHadouken]
;type = ChangeState
;value = 3400
;triggerall = !AIlevel
;triggerall = Statetype != A
;triggerall = command = "QCF2PP"
;triggerall = power >=3000
;trigger1 = ctrl
;trigger2 = stateno = 1400 && time <= 10
;---------------------------------------------------------------------------
[State -1, U-MetsuHadouken]
type = ChangeState
value = 3000
triggerall = !AIlevel
triggerall = Statetype != A
;triggerall = command = "QCF_pp"
triggerall = command =  "QCFx2P"
;triggerall = (power >=3000)
triggerall = var(42)>=ceil((var(40)))
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1100,1999]) && movecontact
trigger4=(stateno=[1000,1999]) && (numhelper(1090))
trigger4= helper(1090),var(3)
trigger5=(stateno=[2100,2999]) && movecontact ;&& stateno != 2100
trigger6=(stateno=[2000,2999]) && (numhelper(2090))
trigger6= helper(2090),var(3)
;---------------------------------------------------------------------------
;[State -1, U-MetsuShoryuken]
;type = ChangeState
;value = 3100
;triggerall = !AIlevel
;triggerall = Statetype != A
;triggerall = command = "QCF_kk"
;triggerall = command =  "QCFx2P"
;triggerall = (power >=3000)
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact
;trigger3=(stateno=[1100,1999]) && movecontact
;trigger4=(stateno=[1000,1999]) && (numhelper(1090))
;trigger4= helper(1090),var(3)
;trigger5=(stateno=[2100,2999]) && movecontact ;&& stateno != 2100
;trigger6=(stateno=[2000,2999]) && (numhelper(2090))
;trigger6= helper(2090),var(3)
;---------------------------------------------------------------------------
[State -1, X-Shoryuuken]
type = ChangeState
value = 2100
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command =  "DP_pp"
triggerall = (power >=1000)
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1100,1999]) && movecontact
trigger4=(stateno=[1000,1999]) && (numhelper(1090))
trigger4= helper(1090),var(3)
;trigger5=(stateno=[2100,2999]) && movecontact && stateno != 2100
;trigger6=(stateno=[2000,2999]) && (numhelper(2090))
;trigger6= helper(2090),var(3)
;---------------------------------------------------------------------------
[State -1, X-Hadouken]
type = ChangeState
value = 2000
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCF_pp"
triggerall = power >=1000
triggerall = numhelper(2090) = 0
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1100,1999]) && movecontact
trigger4=(stateno=[1000,1999]) && (numhelper(1090))
trigger4= helper(1090),var(3)
;trigger5=(stateno=[2100,2999]) && movecontact && stateno != 2100
;trigger6=(stateno=[2000,2999]) && (numhelper(2090))
;trigger6= helper(2090),var(3)
;---------------------------------------------------------------------------
[State -1, X-Air Hadouken]
type = ChangeState
value = 2005
triggerall = !AIlevel
triggerall = Statetype = A
triggerall = command = "QCF_pp"
triggerall = (power >=1000)
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1100,1999]) && movecontact
trigger4=(stateno=[1000,1999]) && (numhelper(1090))
trigger4= helper(1090),var(3)
;trigger5=(stateno=[2100,2999]) && movecontact && stateno != 2100
;trigger6=(stateno=[2000,2999]) && (numhelper(2090))
;trigger6= helper(2090),var(3)
;---------------------------------------------------------------------------
[State -1, X-Joudan Sokutou Geri]
type = ChangeState
value = 2300
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCF_kk"
triggerall = (power >=1000)
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1100,1999]) && movecontact
trigger4=(stateno=[1000,1999]) && (numhelper(1090))
trigger4= helper(1090),var(3)
;trigger5=(stateno=[2100,2999]) && movecontact && stateno != 2100
;trigger6=(stateno=[2000,2999]) && (numhelper(2090))
;trigger6= helper(2090),var(3)
;---------------------------------------------------------------------------
[State -1, X-Tatzumaki]
type = ChangeState
value = 2200
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_kk"
triggerall = (power >=1000)
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1100,1999]) && movecontact
trigger4=(stateno=[1000,1999]) && (numhelper(1090))
trigger4= helper(1090),var(3)
;trigger5=(stateno=[2100,2999]) && movecontact && stateno != 2100
;trigger6=(stateno=[2000,2999]) && (numhelper(2090))
;trigger6= helper(2090),var(3)
;---------------------------------------------------------------------------
[State -1, X-Air Tatzumaki]
type = ChangeState
value = 2210
triggerall = !AIlevel
triggerall = Statetype = A
triggerall = command = "QCB_kk"
triggerall = (power >=1000)
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1100,1999]) && movecontact
trigger4=(stateno=[1000,1999]) && (numhelper(1090))
trigger4= helper(1090),var(3)
;trigger5=(stateno=[2100,2999]) && movecontact && stateno != 2100
;trigger6=(stateno=[2000,2999]) && (numhelper(2090))
;trigger6= helper(2090),var(3)
;===========================================================================
;-----------------------------X Attacks-------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;[State -1, X-Electric Hadouken]
;type = ChangeState
;value = 2020
;triggerall = !AIlevel
;triggerall = numhelper(1090) = 0
;triggerall = numhelper(2090) = 0
;triggerall = Statetype != A
;triggerall = command = "HCF_pp"
;triggerall=power>=500
;trigger1 = ctrl
;trigger2=(stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
;[State -1, X-Hadou Combo]
;type = ChangeState
;value = 2500
;triggerall = !AIlevel
;triggerall = Statetype != A
;triggerall = command = "QCB_pp"
;triggerall=power>=500
;trigger1 = ctrl
;trigger2=(stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
;[State -1, X-Shoryuuken]
;type = ChangeState
;value = 2100
;triggerall = !AIlevel
;triggerall = Statetype != A
;triggerall = command = "DP_pp"
;triggerall=power>=500
;trigger1 = ctrl
;trigger2=(stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
;[State -1, X-Hadouken]
;type = ChangeState
;value = 2000
;triggerall = !AIlevel
;triggerall = Statetype != A
;triggerall = numhelper(1090) = 0
;triggerall = numhelper(2090) = 0
;triggerall = command = "QCF_pp"
;triggerall = power>=500
;trigger1 = ctrl
;trigger2=(stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
;[State -1, X-Air Hadouken]
;type = ChangeState
;value = 2005
;triggerall = !AIlevel
;triggerall = Statetype = A
;triggerall = numhelper(1090) = 0
;triggerall = numhelper(2090) = 0
;triggerall = command = "QCF_pp"
;triggerall = power>=500
;triggerall = var(20) <=0
;trigger1 = ctrl
;trigger2=(stateno=[600,699]) && movecontact
;---------------------------------------------------------------------------
;[State -1, X-Air Tatzumaki]
;type = ChangeState
;value = 2210
;triggerall = !AIlevel
;triggerall = Statetype = A
;triggerall = command = "QCB_kk"
;triggerall=power>=500
;trigger1 = ctrl
;trigger2=(stateno=[600,699]) && movecontact
;---------------------------------------------------------------------------
;[State -1, X-Tatzumaki]
;type = ChangeState
;value = 2200
;triggerall = !AIlevel
;triggerall = Statetype != A
;triggerall = command = "QCB_kk"
;triggerall=power>=500
;trigger1 = ctrl
;trigger2=(stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
;[State -1, X-Axe Kick]
;type = ChangeState
;value = 2300
;triggerall = !AIlevel
;triggerall = Statetype != A
;triggerall = command = "QCF_kk"
;triggerall=power>=500
;trigger1 = ctrl
;trigger2=(stateno=[200,449]) && movecontact
;===========================================================================
;-----------------------------Special Attacks-------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;[State -1, Hadou Combo]
;type = ChangeState
;value = 1500
;triggerall = !AIlevel
;triggerall = Statetype != A
;triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_z"
;trigger1 = ctrl
;trigger2 = (stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
[State -1, Shoryuuken]
type = ChangeState
value = 1100
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "DP_x"
trigger1 = ctrl
trigger2 = (stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
[State -1, Shoryuuken2]
type = ChangeState
value = 1101
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "DP_y"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
[State -1, Shoryuuken3]
type = ChangeState
value = 1102
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "DP_z"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
[State -1, Joudan Sokutou Geri]
type = ChangeState
value = 1300
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCF_a" || command = "QCF_b" || command = "QCF_c"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Hadouken]
type = ChangeState
value = 1010
triggerall = !AIlevel
triggerall=  var(14) != 3
triggerall = (numhelper(1090) = 0)
triggerall = (numhelper(2090) = 0)
triggerall = Statetype = A
triggerall = command = "QCF_x"||command = "QCF_y"||command = "QCF_z"
triggerall = stateno !=[100,106]
trigger1 = ctrl
trigger2=(stateno=[600,650]) && movecontact
;---------------------------------------------------------------------------
;[State -1, Electric Hadouken]
;type = ChangeState
;value = 1020
;triggerall = !AIlevel
;triggerall = (numhelper(1090) = 0)
;triggerall = (numhelper(2090) = 0)
;triggerall = command = "HCF_x" || command = "HCF_y" || command = "HCF_z"
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
[State -1, Hadouken]
type = ChangeState
value = 1000
triggerall = !AIlevel
triggerall = (numhelper(1090) = 0)
triggerall = (numhelper(2090) = 0)
triggerall = Statetype != A
triggerall = command = "QCF_x"||command = "QCF_y"||command = "QCF_z"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
[State -1, Air Tatzumaki]
type = ChangeState
value = 1220
triggerall = !AIlevel
triggerall = Statetype = A
triggerall = command = "QCB_a"||command = "QCB_b"||command = "QCB_c"
triggerall = stateno !=[100,106]
trigger1 = ctrl
trigger2=(stateno=[600,650]) && movecontact
;---------------------------------------------------------------------------
[State -1, Tatzumaki]
type = ChangeState
value = 1200
triggerall = !AIlevel
triggerall = Statetype != A
triggerall = command = "QCB_a" || command = "QCB_b"  || command = "QCB_c"
trigger1 = ctrl
trigger2=(stateno=[200,449]) && movecontact
;---------------------------------------------------------------------------
;[State -1, Standing Parry]
;type = hitoverride
;trigger1 = !AIlevel
;trigger1 = roundstate = 2 && (statetype = S || stateno = 5120)
;trigger1 = command = "Forward" && command != "Back" && command != "Up" && command != "Down"
;trigger1 = ctrl || (stateno = [700, 701]) || stateno = 5120
;trigger1 = var(21) := 1
;attr = SA, AA, AP
;stateno = 700
;slot = 0
;time = 8
;---------------------------------------------------------------------------
;[State -1, Crouching Parry]
;type = hitoverride
;trigger1 = !AIlevel
;trigger1 = roundstate = 2 && statetype != A
;trigger1 = command = "Down" && command != "Forward" && command != "Back" && command != "Up"
;trigger1 = ctrl || (stateno = [700, 701]) || stateno = 5120
;trigger1 = var(21) := 2
;attr = C, AA, AP
;stateno = 701
;slot = 0
;time = 8
;---------------------------------------------------------------------------
;[State -1, Air Parry]
;type = hitoverride
;trigger1 = !AIlevel
;trigger1 = roundstate = 2 && statetype = A
;trigger1 = command = "Forward" && command != "Back" && command != "Up" && command != "Down"
;trigger1 = ctrl || stateno = 702
;trigger1 = var(21) := 3
;attr = SA, AA, AP
;stateno = 702
;forceair = 1
;slot = 0
;time = 7
;---------------------------------------------------------------------------
;falling kick
;[State -1, Diving Kick]
;type = ChangeState
;value = 320
;triggerall = !AIlevel
;triggerall = roundstate = 2
;triggerall = command = "a" || command = "b" || command = "c"
;triggerall = command = "holddown"
;triggerall = statetype = A
;triggerall = Vel X >= 0
;trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !AIlevel
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400|| stateno = 430) && movecontact
trigger3 = (stateno = 200 || stateno = 230 || stateno = 400|| stateno = 430) && time>=6
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch+F]
type = ChangeState
value = 300
triggerall = !AIlevel
triggerall = command = "holdfwd" && command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
 ;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch +F]
type = ChangeState
value = 330
triggerall = !AIlevel
triggerall = command = "holdfwd" && command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = !AIlevel
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 210) && movecontact
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Medium Kick+F]
type = ChangeState
value = 310
triggerall = !AIlevel
triggerall = command = "holdfwd" && command ="b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400|| stateno = 430) && movecontact
trigger3 = (stateno = 200 || stateno = 230 || stateno = 400|| stateno = 430) && time>=6
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick+B]
type = ChangeState
value = 255
triggerall = !AIlevel
triggerall = command = "c" && command = "holdback"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Command Standing Strong Kick
[State -1, Jodan Nirengeki]
type = ChangeState
value = 257
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 220 && movecontact
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !AIlevel
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400|| stateno = 430) && movecontact
trigger3 = (stateno = 200 || stateno = 230 || stateno = 400|| stateno = 430) && time>=6
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !AIlevel
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !AIlevel
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 410) && movecontact
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !AIlevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
trigger2 = (stateno = 200 || stateno = 230 || stateno = 400|| stateno = 430) && movecontact
trigger3 = (stateno = 200 || stateno = 230 || stateno = 400|| stateno = 430) && time>=6
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !AIlevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !AIlevel
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 52
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !AIlevel
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !AIlevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !AIlevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610) && movecontact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !AIlevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !AIlevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !AIlevel
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
;===========================================================================
;=================================< A.I. >====================================


