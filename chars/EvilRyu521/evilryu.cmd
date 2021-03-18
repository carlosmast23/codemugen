;-------------------------------;
; Evil Ryu by Reu and KingTigre ;
;   http://www.reubenkee.com/   ;
;-------------------------------;

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

[Command]
name = "QCF_QCF_k"
command = ~D, DF, F, D, DF, a
time = 30
[Command]
name = "QCF_QCF_k"
command = ~D, DF, F, D, DF, b
time = 30
[Command]
name = "QCF_QCF_k"
command = ~D, DF, F, D, DF, c
time = 30

[Command]
name = "QCF_QCF_k"
command = ~D, DF, F, D, DF, ~a
time = 30
[Command]
name = "QCF_QCF_k"
command = ~D, DF, F, D, DF, ~b
time = 30
[Command]
name = "QCF_QCF_k"
command = ~D, DF, F, D, DF, ~c
time = 30

[Command]
name = "QCF_QCF_p"
command = ~D, DF, F, D, DF, x
time = 30
[Command]
name = "QCF_QCF_p"
command = ~D, DF, F, D, DF, y
time = 30
[Command]
name = "QCF_QCF_p"
command = ~D, DF, F, D, DF, z
time = 30

[Command]
name = "QCF_QCF_p"
command = ~D, DF, F, D, DF, ~x
time = 30
[Command]
name = "QCF_QCF_p"
command = ~D, DF, F, D, DF, ~y
time = 30
[Command]
name = "QCF_QCF_p"
command = ~D, DF, F, D, DF, ~z
time = 30

[Command]
name = "QCB_QCB_k"
command = ~D, DB, B, D, DB, a
time = 30
[Command]
name = "QCB_QCB_k"
command = ~D, DB, B, D, DB, b
time = 30
[Command]
name = "QCB_QCB_k"
command = ~D, DB, B, D, DB, c
time = 30

[Command]
name = "QCB_QCB_k"
command = ~D, DB, B, D, DB, ~a
time = 30
[Command]
name = "QCB_QCB_k"
command = ~D, DB, B, D, DB, ~b
time = 30
[Command]
name = "QCB_QCB_k"
command = ~D, DB, B, D, DB, ~c
time = 30

[Command]
name = "QCB_QCB_p"
command = ~D, DB, B, D, DB, x
time = 30
[Command]
name = "QCB_QCB_p"
command = ~D, DB, B, D, DB, y
time = 30
[Command]
name = "QCB_QCB_p"
command = ~D, DB, B, D, DB, z
time = 30

[Command]
name = "QCB_QCB_p"
command = ~D, DB, B, D, DB, ~x
time = 30
[Command]
name = "QCB_QCB_p"
command = ~D, DB, B, D, DB, ~y
time = 30
[Command]
name = "QCB_QCB_p"
command = ~D, DB, B, D, DB, ~z
time = 30

[Command]
name = "HCF_pp"
command = ~B, DB, D, DF, x+y
time = 24
[Command]
name = "HCF_pp"
command = ~B, DB, D, DF, x+z
time = 24
[Command]
name = "HCF_pp"
command = ~B, DB, D, DF, y+z
time = 24

[Command]
name = "HCF_kk"
command = ~B, DB, D, DF, a+b
time = 24
[Command]
name = "HCF_kk"
command = ~B, DB, D, DF, b+c
time = 24
[Command]
name = "HCF_kk"
command = ~B, DB, D, DF, a+c
time = 24

[Command]
name = "hBust1"
command = x, y, F, a, b
time = 60

[Command]
name = "DDDa"
command = D, D, D, a
time = 30
[Command]
name = "DDDa"
command = D, D, D, b
time = 30
[Command]
name = "DDDa"
command = D, D, D, c
time = 30

[Command]
name = "DDDx"
command = D, D, D, x
time = 30
[Command]
name = "DDDx"
command = D, D, D, y
time = 30
[Command]
name = "DDDx"
command = D, D, D, z
time = 30

[Command]
name = "DDDs"
command = D, D, D, s
time = 30

[Command]
name = "sgs"
command = x, x, F, a, z
time = 48

[Command]
name = "sgs"
command = x, x, F, a+z
time = 40

[Command]
name = "sgs"
command = x, x, F+a+z
time = 32

[Command]
name = "asuraf_a"
command = ~F, D, DF, a+b
time = 18
[Command]
name = "asuraf_b"
command = ~F, D, DF, b+c
time = 18
[Command]
name = "asuraf_c"
command = ~F, D, DF, a+c
time = 18

[Command]
name = "asuraf_x"
command = ~F, D, DF, x+y
time = 18
[Command]
name = "asuraf_y"
command = ~F, D, DF, y+z
time = 18
[Command]
name = "asuraf_z"
command = ~F, D, DF, x+z
time = 18

[Command]
name = "asurab_a"
command = ~B, D, DB, a+b
time = 18
[Command]
name = "asurab_b"
command = ~B, D, DB, b+c
time = 18
[Command]
name = "asurab_c"
command = ~B, D, DB, a+c
time = 18

[Command]
name = "asurab_x"
command = ~B, D, DB, x+y
time = 18
[Command]
name = "asurab_y"
command = ~B, D, DB, y+z
time = 18
[Command]
name = "asurab_z"
command = ~B, D, DB, x+z
time = 18

[Command]
name = "highjump"
command = $D, $U
time = 15

[Command]
name = "DU"
command = D, U
time = 18
[Command]
name = "DU"
command = DB, UF
time = 18
[Command]
name = "DU"
command = DF, UB
time = 18
[Command]
name = "DU"
command = $D, UF
time = 18
[Command]
name = "DU"
command = $D, UB
time = 18

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 12
[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 12
[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 12

[Command]
name = "QCF_x"
command = ~D, DF, F, ~x
time = 12
[Command]
name = "QCF_y"
command = ~D, DF, F, ~y
time = 12
[Command]
name = "QCF_z"
command = ~D, DF, F, ~z
time = 12

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 12
[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 12
[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 12

[Command]
name = "QCF_a"
command = ~D, DF, F, ~a
time = 12
[Command]
name = "QCF_b"
command = ~D, DF, F, ~b
time = 12
[Command]
name = "QCF_c"
command = ~D, DF, F, ~c
time = 12

[Command]
name = "HCF_x"
command = ~B, DB, D, DF, x
time = 24
[Command]
name = "HCF_y"
command = ~B, DB, D, DF, y
time = 24
[Command]
name = "HCF_z"
command = ~B, DB, D, DF, z
time = 24

[Command]
name = "HCF_x"
command = ~B, DB, D, DF, ~x
time = 24
[Command]
name = "HCF_y"
command = ~B, DB, D, DF, ~y
time = 24
[Command]
name = "HCF_z"
command = ~B, DB, D, DF, ~z
time = 24

[Command]
name = "DP_x"
command = ~F, D, DF, x
time = 18
[Command]
name = "DP_y"
command = ~F, D, DF, y
time = 18
[Command]
name = "DP_z"
command = ~F, D, DF, z
time = 18

[Command]
name = "DP_x"
command = ~F, D, DF, ~x
time = 18
[Command]
name = "DP_y"
command = ~F, D, DF, ~y
time = 18
[Command]
name = "DP_z"
command = ~F, D, DF, ~z
time = 18

[Command]
name = "HCB_a"
command = ~F, DF, D, DB, a
time = 24
[Command]
name = "HCB_b"
command = ~F, DF, D, DB, b
time = 24
[Command]
name = "HCB_c"
command = ~F, DF, D, DB, c
time = 24

[Command]
name = "HCB_a"
command = ~F, DF, D, DB, ~a
time = 24
[Command]
name = "HCB_b"
command = ~F, DF, D, DB, ~b
time = 24
[Command]
name = "HCB_c"
command = ~F, DF, D, DB, ~c
time = 24

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 12
[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 12
[Command]
name = "QCB_z"
command = ~D, DB, B, z
time = 12

[Command]
name = "QCB_x"
command = ~D, DB, B, ~x
time = 12
[Command]
name = "QCB_y"
command = ~D, DB, B, ~y
time = 12
[Command]
name = "QCB_z"
command = ~D, DB, B, ~z
time = 12

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 12
[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 12
[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 12

[Command]
name = "QCB_a"
command = ~D, DB, B, ~a
time = 12
[Command]
name = "QCB_b"
command = ~D, DB, B, ~b
time = 12
[Command]
name = "QCB_c"
command = ~D, DB, B, ~c
time = 12

[Command]
name = "BQCD_a"
command = ~B, DB, D, a
time = 18
[Command]
name = "BQCD_b"
command = ~B, DB, D, b
time = 18
[Command]
name = "BQCD_c"
command = ~B, DB, D, c
time = 18

[Command]
name = "BQCD_x"
command = ~B, DB, D, x
time = 18
[Command]
name = "BQCD_y"
command = ~B, DB, D, y
time = 18
[Command]
name = "BQCD_z"
command = ~B, DB, D, z
time = 18

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "recovery"
command = x+z
time = 1
[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "ac"
command = a+c
time = 1

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "xz"
command = x+z
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "cz"
command = c+z
time = 1

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

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_s"
command = /s
time = 1



;============================================ HUMAN ===========================================

[Statedef -1]

[State -1, Ground Recovery Roll]
type = ChangeState
value = ifelse(command = "BQCD_z", 2006, ifelse(command = "BQCD_y", 2005, 2004))
trigger1 = !AILevel
trigger1 = command = "BQCD_x" || command = "BQCD_y" || command = "BQCD_z"
trigger1 = stateno = 5050 || stateno = 5071
trigger1 = alive && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -48

[State -1, super jump ]
type = ChangeState
value = 123
triggerall= !AILevel&& roundstate=2&&command = "DU" &&statetype != A
trigger1 = ctrl

[State -1, Kaze No Ken]
type = ChangeState
value = 3845
triggerall = !AILevel
triggerall = command = "HCF_pp"
triggerall = power >= 3000 && var(10) <= 0
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && (movecontact || var(10) >= 1)
trigger3 = (stateno = [1000, 1005]) && numhelper(3)
trigger3 = animelemtime(4) >= 1 && helper(3), numtarget
trigger4 = stateno = 10010 && numhelper(3)
trigger4 = time >= 3 && helper(3), numtarget
trigger5 = (stateno = [1865, 1867]) && numhelper(3)
trigger5 = time >= 16 && helper(3), numtarget
trigger6 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && numhelper(3)
trigger6 = time >= 10 && helper(3), numtarget
trigger7 = (stateno = [1868, 1870]) && numhelper(3)
trigger7 = time >= 9 && helper(3), numtarget
trigger8 = ((stateno = [1800, 1822]) || (stateno = [1850, 1852]) || (stateno = [1950, 1952])) && movecontact
trigger9 = ((stateno = [1500, 1510]) || (stateno = [1600, 1610]) || (stateno = [1700, 1710])) && movecontact
trigger10 = ((stateno = [1860, 1862]) && movecontact) || stateno = 1863
trigger11 = ((stateno = [2800, 2820]) && movecontact)
trigger12 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger13 = (stateno = 4480 && movecontact) || stateno = 4485
trigger14 = (stateno = 3480 && movecontact) || stateno = 3481
trigger15 = (stateno = 3840 || stateno = 3860) && movecontact
trigger16 = (stateno = 3910 || stateno = 3911) && movecontact
trigger17 = (stateno = 3840 || stateno = 3860) && movecontact
trigger18 = stateno = 3932 && movecontact
trigger19 = stateno = 4800 && numhelper(8)
trigger19 = time >= 22 && helper(8), numtarget
trigger20 = stateno = 3885 && numhelper(3)
trigger20 = time >= 8 && helper(3), numtarget
trigger21 = stateno = 4030 && numhelper(3)
trigger21 = time >= 10 && helper(3), numtarget
trigger22 = stateno = 4060 && numhelper(11)
trigger22 = time >= 57 && helper(11), numtarget
trigger23 = stateno = 4061 && numhelper(11)
trigger23 = time >= 2 && helper(11), numtarget
trigger24 = (stateno = 4050 || stateno = 4044 || stateno = 4055) && movecontact
trigger25 = stateno = 3880 && anim = 1002 && (animelemtime(2) = [1, 16])

[State -1, Metsu Joudan Sokotou Geri]
type = ChangeState
value = 4480
triggerall = !AILevel
triggerall = command = "HCF_kk"
triggerall = power >= 1000 || var(10) >= 1
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && (movecontact || var(10) >= 1)
trigger3 = (stateno = [1000, 1005]) && numhelper(3)
trigger3 = animelemtime(4) >= 1 && helper(3), numtarget
trigger4 = stateno = 10010 && numhelper(3)
trigger4 = time >= 3 && helper(3), numtarget
trigger5 = (stateno = [1865, 1867]) && numhelper(3)
trigger5 = time >= 16 && helper(3), numtarget
trigger6 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && numhelper(3)
trigger6 = time >= 10 && helper(3), numtarget
trigger7 = (stateno = [1868, 1870]) && numhelper(3)
trigger7 = time >= 9 && helper(3), numtarget
trigger8 = ((stateno = [1800, 1822]) || (stateno = [1850, 1852]) || (stateno = [1950, 1952])) && movecontact
trigger9 = ((stateno = [1500, 1510]) || (stateno = [1600, 1610]) || (stateno = [1700, 1710])) && movecontact
trigger10 = ((stateno = [1860, 1862]) && movecontact) || stateno = 1863
trigger11 = ((stateno = [2800, 2820]) && movecontact)
trigger12 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger13 = (stateno = 3480 && movecontact) || stateno = 3481
trigger14 = (stateno = 3840 || stateno = 3860) && movecontact
trigger15 = (stateno = 3910 || stateno = 3911) && movecontact
trigger16 = (stateno = 3840 || stateno = 3860) && movecontact
trigger17 = stateno = 3932 && movecontact
trigger18 = stateno = 4800 && numhelper(8)
trigger18 = time >= 22 && helper(8), numtarget
trigger19 = stateno = 3885 && numhelper(3)
trigger19 = time >= 8 && helper(3), numtarget
trigger20 = stateno = 4030 && numhelper(3)
trigger20 = time >= 10 && helper(3), numtarget
trigger21 = stateno = 4060 && numhelper(11)
trigger21 = time >= 57 && helper(11), numtarget
trigger22 = stateno = 4061 && numhelper(11)
trigger22 = time >= 2 && helper(11), numtarget
trigger23 = (stateno = 4050 || stateno = 4044 || stateno = 4055) && movecontact
trigger24 = (stateno = 3845 && movecontact) || stateno = 3846 || stateno = 3847
trigger25 = stateno = 3880 && anim = 1002 && (animelemtime(2) = [1, 16])

[State -1, Kongou Kokuretsu Zan]
type = ChangeState
value = 4800
triggerall = !AILevel
triggerall = command = "DDDx"
triggerall = power >= 1000 || var(10) >= 1
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && (movecontact || var(10) >= 1)
trigger3 = (stateno = [1000, 1005]) && numhelper(3)
trigger3 = animelemtime(4) >= 1 && helper(3), numtarget
trigger4 = stateno = 10010 && numhelper(3)
trigger4 = time >= 3 && helper(3), numtarget
trigger5 = (stateno = [1865, 1867]) && numhelper(3)
trigger5 = time >= 16 && helper(3), numtarget
trigger6 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && numhelper(3)
trigger6 = time >= 10 && helper(3), numtarget
trigger7 = (stateno = [1868, 1870]) && numhelper(3)
trigger7 = time >= 9 && helper(3), numtarget
trigger8 = ((stateno = [1800, 1822]) || (stateno = [1850, 1852]) || (stateno = [1950, 1952])) && movecontact
trigger9 = ((stateno = [1500, 1510]) || (stateno = [1600, 1610]) || (stateno = [1700, 1710])) && movecontact
trigger10 = ((stateno = [1860, 1862]) && movecontact) || stateno = 1863
trigger11 = ((stateno = [2800, 2820]) && movecontact)
trigger12 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger13 = (stateno = 4480 && movecontact) || stateno = 4485
trigger14 = (stateno = 3480 && movecontact) || stateno = 3481
trigger15 = (stateno = 3840 || stateno = 3860) && movecontact
trigger16 = (stateno = 3910 || stateno = 3911) && movecontact
trigger17 = (stateno = 3840 || stateno = 3860) && movecontact
trigger18 = stateno = 3932 && movecontact
trigger19 = stateno = 3885 && numhelper(3)
trigger19 = time >= 8 && helper(3), numtarget
trigger20 = stateno = 4030 && numhelper(3)
trigger20 = time >= 10 && helper(3), numtarget
trigger21 = stateno = 4060 && numhelper(11)
trigger21 = time >= 57 && helper(11), numtarget
trigger22 = stateno = 4061 && numhelper(11)
trigger22 = time >= 2 && helper(11), numtarget
trigger23 = (stateno = 4050 || stateno = 4044 || stateno = 4055) && movecontact
trigger24 = (stateno = 3845 && movecontact) || stateno = 3846 || stateno = 3847
trigger25 = stateno = 3880 && anim = 1002 && (animelemtime(2) = [1, 16])

[State -1, Shin Shoryuken]
type = ChangeState
value = 3480
triggerall = !AILevel
triggerall = command = "QCF_QCF_k" || command = "QCF_QCF_k" || command = "QCF_QCF_k"
triggerall = power >= 1000 || var(10) >= 1
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && (movecontact || var(10) >= 1)
trigger3 = (stateno = [1000, 1005]) && numhelper(3)
trigger3 = animelemtime(4) >= 1 && helper(3), numtarget
trigger4 = stateno = 10010 && numhelper(3)
trigger4 = time >= 3 && helper(3), numtarget
trigger5 = (stateno = [1865, 1867]) && numhelper(3)
trigger5 = time >= 16 && helper(3), numtarget
trigger6 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && numhelper(3)
trigger6 = time >= 10 && helper(3), numtarget
trigger7 = (stateno = [1868, 1870]) && numhelper(3)
trigger7 = time >= 9 && helper(3), numtarget
trigger8 = ((stateno = [1800, 1822]) || (stateno = [1850, 1852]) || (stateno = [1950, 1952])) && movecontact
trigger9 = ((stateno = [1500, 1510]) || (stateno = [1600, 1610]) || (stateno = [1700, 1710])) && movecontact
trigger10 = ((stateno = [1860, 1862]) && movecontact) || stateno = 1863
trigger11 = ((stateno = [2800, 2820]) && movecontact)
trigger12 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger13 = (stateno = 4480 && movecontact) || stateno = 4485
trigger14 = (stateno = 3840 || stateno = 3860) && movecontact
trigger15 = (stateno = 3910 || stateno = 3911) && movecontact
trigger16 = (stateno = 3840 || stateno = 3860) && movecontact
trigger17 = stateno = 3932 && movecontact
trigger18 = stateno = 4800 && numhelper(8)
trigger18 = time >= 22 && helper(8), numtarget
trigger19 = stateno = 3885 && numhelper(3)
trigger19 = time >= 8 && helper(3), numtarget
trigger20 = stateno = 4030 && numhelper(3)
trigger20 = time >= 10 && helper(3), numtarget
trigger21 = stateno = 4060 && numhelper(11)
trigger21 = time >= 57 && helper(11), numtarget
trigger22 = stateno = 4061 && numhelper(11)
trigger22 = time >= 2 && helper(11), numtarget
trigger23 = (stateno = 4050 || stateno = 4044 || stateno = 4055) && movecontact
trigger24 = (stateno = 3845 && movecontact) || stateno = 3846 || stateno = 3847
trigger25 = stateno = 3880 && anim = 1002 && (animelemtime(2) = [1, 16])

[State -1, Shinkuu Tatsumaki Senpuu Kyaku]
type = ChangeState
value = 3800
triggerall = !AILevel
triggerall = command = "QCB_QCB_k" || command = "QCB_QCB_k" || command = "QCB_QCB_k"
triggerall = power >= 1000 || var(10) >= 1
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && (movecontact || var(10) >= 1)
trigger3 = (stateno = [1000, 1005]) && numhelper(3)
trigger3 = animelemtime(4) >= 1 && helper(3), numtarget
trigger3 = animelemtime(4) >= 1 && helper(3), numtarget
trigger4 = stateno = 10010 && numhelper(3)
trigger4 = time >= 3 && helper(3), numtarget
trigger5 = (stateno = [1865, 1867]) && numhelper(3)
trigger5 = time >= 16 && helper(3), numtarget
trigger6 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && numhelper(3)
trigger6 = time >= 10 && helper(3), numtarget
trigger7 = (stateno = [1868, 1870]) && numhelper(3)
trigger7 = time >= 9 && helper(3), numtarget
trigger8 = ((stateno = [1800, 1822]) || (stateno = [1850, 1852]) || (stateno = [1950, 1952])) && movecontact
trigger9 = ((stateno = [1500, 1510]) || (stateno = [1600, 1610]) || (stateno = [1700, 1710])) && movecontact
trigger10 = ((stateno = [1860, 1862]) && movecontact) || stateno = 1863
trigger11 = ((stateno = [2800, 2820]) && movecontact)
trigger12 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger13 = (stateno = 4480 && movecontact) || stateno = 4485
trigger14 = (stateno = 3480 && movecontact) || stateno = 3481
trigger15 = (stateno = 3910 || stateno = 3911) && movecontact
trigger16 = (stateno = 3840 || stateno = 3860) && movecontact
trigger17 = stateno = 3932 && movecontact
trigger18 = stateno = 4800 && numhelper(8)
trigger18 = time >= 22 && helper(8), numtarget
trigger19 = stateno = 3885 && numhelper(3)
trigger19 = time >= 8 && helper(3), numtarget
trigger20 = stateno = 4030 && numhelper(3)
trigger20 = time >= 10 && helper(3), numtarget
trigger21 = stateno = 4060 && numhelper(11)
trigger21 = time >= 57 && helper(11), numtarget
trigger22 = stateno = 4061 && numhelper(11)
trigger22 = time >= 2 && helper(11), numtarget
trigger23 = (stateno = 4050 || stateno = 4044 || stateno = 4055) && movecontact
trigger24 = (stateno = 3845 && movecontact) || stateno = 3846 || stateno = 3847
trigger25 = stateno = 3880 && anim = 1002 && (animelemtime(2) = [1, 16])

[State -1, Shinkuu Hadouken]
type = ChangeState
value = 3885
triggerall = !AILevel
triggerall = command = "QCF_QCF_p" || command = "QCF_QCF_p" || command = "QCF_QCF_p"
triggerall = power >= 1000 || var(10) >= 1
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && (movecontact || var(10) >= 1)
trigger3 = (stateno = [1000, 1005]) && numhelper(3)
trigger3 = animelemtime(4) >= 1 && helper(3), numtarget
trigger4 = stateno = 10010 && numhelper(3)
trigger4 = time >= 3 && helper(3), numtarget
trigger5 = (stateno = [1865, 1867]) && numhelper(3)
trigger5 = time >= 16 && helper(3), numtarget
trigger6 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && numhelper(3)
trigger6 = time >= 10 && helper(3), numtarget
trigger7 = (stateno = [1868, 1870]) && numhelper(3)
trigger7 = time >= 9 && helper(3), numtarget
trigger8 = ((stateno = [1800, 1822]) || (stateno = [1850, 1852]) || (stateno = [1950, 1952])) && movecontact
trigger9 = ((stateno = [1500, 1510]) || (stateno = [1600, 1610]) || (stateno = [1700, 1710])) && movecontact
trigger10 = ((stateno = [1860, 1862]) && movecontact) || stateno = 1863
trigger11 = ((stateno = [2800, 2820]) && movecontact)
trigger12 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger13 = (stateno = 4480 && movecontact) || stateno = 4485
trigger14 = (stateno = 3480 && movecontact) || stateno = 3481
trigger15 = (stateno = 3840 || stateno = 3860) && movecontact
trigger16 = (stateno = 3910 || stateno = 3911) && movecontact
trigger17 = (stateno = 3840 || stateno = 3860) && movecontact
trigger18 = stateno = 3932 && movecontact
trigger19 = stateno = 4800 && numhelper(8)
trigger19 = time >= 22 && helper(8), numtarget
trigger20 = stateno = 4030 && numhelper(3)
trigger20 = time >= 10 && helper(3), numtarget
trigger21 = stateno = 4060 && numhelper(11)
trigger21 = time >= 57 && helper(11), numtarget
trigger22 = stateno = 4061 && numhelper(11)
trigger22 = time >= 2 && helper(11), numtarget
trigger23 = (stateno = 4050 || stateno = 4044 || stateno = 4055) && movecontact
trigger24 = (stateno = 3845 && movecontact) || stateno = 3846 || stateno = 3847
trigger25 = stateno = 3880 && anim = 1002 && (animelemtime(2) = [1, 16])

[State -1, Metsu Hadouken]
type = ChangeState
value = 3875
triggerall = !AILevel
triggerall = command = "QCB_QCB_p" || command = "QCB_QCB_p" || command = "QCB_QCB_p"
triggerall = power >= 3000 && var(10) <= 0
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && (movecontact || var(10) >= 1)
trigger3 = (stateno = [1000, 1005]) && numhelper(3)
trigger3 = animelemtime(4) >= 1 && helper(3), numtarget
trigger4 = stateno = 10010 && numhelper(3)
trigger4 = time >= 3 && helper(3), numtarget
trigger5 = (stateno = [1865, 1867]) && numhelper(3)
trigger5 = time >= 16 && helper(3), numtarget
trigger6 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && numhelper(3)
trigger6 = time >= 10 && helper(3), numtarget
trigger7 = (stateno = [1868, 1870]) && numhelper(3)
trigger7 = time >= 9 && helper(3), numtarget
trigger8 = ((stateno = [1800, 1822]) || (stateno = [1850, 1852]) || (stateno = [1950, 1952])) && movecontact
trigger9 = ((stateno = [1500, 1510]) || (stateno = [1600, 1610]) || (stateno = [1700, 1710])) && movecontact
trigger10 = ((stateno = [1860, 1862]) && movecontact) || stateno = 1863
trigger11 = ((stateno = [2800, 2820]) && movecontact)
trigger12 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger13 = (stateno = 4480 && movecontact) || stateno = 4485
trigger14 = (stateno = 3480 && movecontact) || stateno = 3481
trigger15 = (stateno = 3840 || stateno = 3860) && movecontact
trigger16 = (stateno = 3910 || stateno = 3911) && movecontact
trigger17 = (stateno = 3840 || stateno = 3860) && movecontact
trigger18 = stateno = 3932 && movecontact
trigger19 = stateno = 4800 && numhelper(8)
trigger19 = time >= 22 && helper(8), numtarget
trigger20 = stateno = 3885 && numhelper(3)
trigger20 = time >= 8 && helper(3), numtarget
trigger21 = stateno = 4030 && numhelper(3)
trigger21 = time >= 10 && helper(3), numtarget
trigger22 = stateno = 4060 && numhelper(11)
trigger22 = time >= 57 && helper(11), numtarget
trigger23 = stateno = 4061 && numhelper(11)
trigger23 = time >= 2 && helper(11), numtarget
trigger24 = (stateno = 4050 || stateno = 4044 || stateno = 4055) && movecontact
trigger25 = (stateno = 3845 && movecontact) || stateno = 3846 || stateno = 3847

[State -1, Misogi]
type = ChangeState
value = 3930
triggerall = !AILevel
triggerall = command = "DDDa" || command = "DDDa" || command = "DDDa"
triggerall = power >= 1000 || var(10) >= 1
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && (movecontact || var(10) >= 1)
trigger3 = (stateno = [1000, 1005]) && numhelper(3)
trigger3 = animelemtime(4) >= 1 && helper(3), numtarget
trigger4 = stateno = 10010 && numhelper(3)
trigger4 = time >= 3 && helper(3), numtarget
trigger5 = (stateno = [1865, 1867]) && numhelper(3)
trigger5 = time >= 16 && helper(3), numtarget
trigger6 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && numhelper(3)
trigger6 = time >= 10 && helper(3), numtarget
trigger7 = (stateno = [1868, 1870]) && numhelper(3)
trigger7 = time >= 9 && helper(3), numtarget
trigger8 = ((stateno = [1800, 1822]) || (stateno = [1850, 1852]) || (stateno = [1950, 1952])) && movecontact
trigger9 = ((stateno = [1500, 1510]) || (stateno = [1600, 1610]) || (stateno = [1700, 1710])) && movecontact
trigger10 = ((stateno = [1860, 1862]) && movecontact) || stateno = 1863
trigger11 = ((stateno = [2800, 2820]) && movecontact)
trigger12 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger13 = (stateno = 4480 && movecontact) || stateno = 4485
trigger14 = (stateno = 3480 && movecontact) || stateno = 3481
trigger15 = (stateno = 3840 || stateno = 3860) && movecontact
trigger16 = (stateno = 3910 || stateno = 3911) && movecontact
trigger17 = (stateno = 3840 || stateno = 3860) && movecontact
trigger18 = stateno = 4800 && numhelper(8)
trigger18 = time >= 22 && helper(8), numtarget
trigger19 = stateno = 3885 && numhelper(3)
trigger19 = time >= 8 && helper(3), numtarget
trigger20 = stateno = 4030 && numhelper(3)
trigger20 = time >= 10 && helper(3), numtarget
trigger21 = stateno = 4060 && numhelper(11)
trigger21 = time >= 57 && helper(11), numtarget
trigger22 = stateno = 4061 && numhelper(11)
trigger22 = time >= 2 && helper(11), numtarget
trigger23 = (stateno = 4050 || stateno = 4044 || stateno = 4055) && movecontact
trigger24 = (stateno = 3845 && movecontact) || stateno = 3846 || stateno = 3847
trigger25 = stateno = 3880 && anim = 1002 && (animelemtime(2) = [1, 16])

[State -1, shungokusatsu]
type = changestate
value = 4000
triggerall = !AIlevel
triggerall = command = "sgs"
triggerall = roundstate = 2 && statetype != A && power >= 3000 && !var(20)
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 2)
trigger2 = (stateno = [200, 255])
trigger3 = (stateno = 1100 || stateno = 1305 || stateno = 1505) && (movecontact = [1, 32])
trigger4 = (stateno = [1000, 4999]) && numhelper(stateno + 5) && var(10) < 5
trigger4 = helper(stateno + 5), var(3)
trigger5 = stateno = 1321 && numtarget && animelemtime(2) > 0
trigger6 = stateno = 52 && (prevstateno = [1000, 4999]) && (movecontact = [1, 32])

[State -1, Garyuu Messhuu]
type = ChangeState
value = 4050
triggerall = !AILevel
triggerall = command = "QCF_QCF_k" || command = "QCF_QCF_k" || command = "QCF_QCF_k"
triggerall = power >= 1000 || var(10) >= 1
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && (movecontact || var(10) >= 1)
trigger3 = (stateno = [1000, 1005]) && numhelper(3)
trigger3 = animelemtime(4) >= 1 && helper(3), numtarget
trigger4 = stateno = 10010 && numhelper(3)
trigger4 = time >= 3 && helper(3), numtarget
trigger5 = (stateno = [1865, 1867]) && numhelper(3)
trigger5 = time >= 16 && helper(3), numtarget
trigger6 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && numhelper(3)
trigger6 = time >= 10 && helper(3), numtarget
trigger7 = (stateno = [1868, 1870]) && numhelper(3)
trigger7 = time >= 9 && helper(3), numtarget
trigger8 = ((stateno = [1800, 1822]) || (stateno = [1850, 1852]) || (stateno = [1950, 1952])) && movecontact
trigger9 = ((stateno = [1500, 1510]) || (stateno = [1600, 1610]) || (stateno = [1700, 1710])) && movecontact
trigger10 = ((stateno = [1860, 1862]) && movecontact) || stateno = 1863
trigger11 = ((stateno = [2800, 2820]) && movecontact)
trigger12 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger13 = (stateno = 4480 && movecontact) || stateno = 4485
trigger14 = (stateno = 3480 && movecontact) || stateno = 3481
trigger15 = (stateno = 3840 || stateno = 3860) && movecontact
trigger16 = (stateno = 3910 || stateno = 3911) && movecontact
trigger17 = (stateno = 3840 || stateno = 3860) && movecontact
trigger18 = stateno = 3932 && movecontact
trigger19 = stateno = 4800 && numhelper(8)
trigger19 = time >= 22 && helper(8), numtarget
trigger20 = stateno = 3885 && numhelper(3)
trigger20 = time >= 8 && helper(3), numtarget
trigger21 = stateno = 4030 && numhelper(3)
trigger21 = time >= 10 && helper(3), numtarget
trigger22 = stateno = 4060 && anim = 1024 && (animelemtime(6) = [1, 16])
trigger23 = stateno = 4061 && (time = [1, 90])
trigger24 = (stateno = 3845 && movecontact) || stateno = 3846 || stateno = 3847
trigger25 = stateno = 3880 && anim = 1002 && (animelemtime(2) = [1, 16])

[State -1, Tenma Gou Zankuu]
type = ChangeState
value = 4060
triggerall = !AILevel
triggerall = command = "QCB_QCB_p" || command = "QCB_QCB_p" || command = "QCB_QCB_p"
triggerall = power >= 1000 || var(10) >= 1
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && (movecontact || var(10) >= 1)
trigger3 = (stateno = [1000, 1005]) && numhelper(3)
trigger3 = animelemtime(4) >= 1 && helper(3), numtarget
trigger4 = stateno = 10010 && numhelper(3)
trigger4 = time >= 3 && helper(3), numtarget
trigger5 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && (animelemtime(3) = [1, 16])
trigger6 = (stateno = [1868, 1870]) && (animelemtime(3) = [1, 16])
trigger7 = ((stateno = [1800, 1822]) || (stateno = [1850, 1852]) || (stateno = [1950, 1952])) && movecontact
trigger8 = ((stateno = [1500, 1510]) || (stateno = [1600, 1610]) || (stateno = [1700, 1710])) && movecontact
trigger9 = ((stateno = [1860, 1862]) && movecontact) || stateno = 1863
trigger10 = ((stateno = [2800, 2820]) && movecontact)
trigger11 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger12 = (stateno = 4480 && movecontact) || stateno = 4485
trigger13 = (stateno = 3480 && movecontact) || stateno = 3481
trigger14 = (stateno = 3840 || stateno = 3860) && movecontact
trigger15 = (stateno = 3910 || stateno = 3911) && movecontact
trigger16 = (stateno = 3840 || stateno = 3860) && movecontact
trigger17 = stateno = 3932 && movecontact
trigger18 = stateno = 4800 && numhelper(8)
trigger18 = time >= 22 && helper(8), numtarget
trigger19 = stateno = 3885 && numhelper(3)
trigger19 = time >= 8 && helper(3), numtarget
trigger20 = stateno = 4030 && numhelper(3)
trigger20 = time >= 10 && helper(3), numtarget
trigger21 = (stateno = 4050 || stateno = 4044 || stateno = 4055) && movecontact
trigger22 = (stateno = 3845 && movecontact) || stateno = 3846 || stateno = 3847
trigger23 = stateno = 3880 && anim = 1002 && (animelemtime(2) = [1, 16])
trigger24 = stateno = 3880 && anim = 3880 &&  (animelemtime(32) = [1, 16])

[State -1, Kuuchuu Shinkuu Tatsumaki Senpuu Kyaku]
type = ChangeState
value = 3900
triggerall = !AILevel
triggerall = command = "QCB_QCB_k" || command = "QCB_QCB_k" || command = "QCB_QCB_k"
triggerall = power >= 1000 || var(10) >= 1
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && (movecontact || var(10) >= 1)
trigger3 = (stateno = [1000, 1005]) && numhelper(3)
trigger3 = animelemtime(4) >= 1 && helper(3), numtarget
trigger4 = stateno = 10010 && numhelper(3)
trigger4 = time >= 3 && helper(3), numtarget
trigger5 = (stateno = [1865, 1867]) && numhelper(3)
trigger5 = time >= 16 && helper(3), numtarget
trigger6 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && numhelper(3)
trigger6 = time >= 10 && helper(3), numtarget
trigger7 = (stateno = [1868, 1870]) && numhelper(3)
trigger7 = time >= 9 && helper(3), numtarget
trigger8 = ((stateno = [1800, 1822]) || (stateno = [1850, 1852]) || (stateno = [1950, 1952])) && movecontact
trigger9 = ((stateno = [1500, 1510]) || (stateno = [1600, 1610]) || (stateno = [1700, 1710])) && movecontact
trigger10 = ((stateno = [1860, 1862]) && movecontact) || stateno = 1863
trigger11 = ((stateno = [2800, 2820]) && movecontact)
trigger12 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger13 = (stateno = 4480 && movecontact) || stateno = 4485
trigger14 = (stateno = 3480 && movecontact) || stateno = 3481
trigger15 = (stateno = 3840 || stateno = 3860) && movecontact
trigger16 = (stateno = 3840 || stateno = 3860) && movecontact
trigger17 = stateno = 3932 && movecontact
trigger18 = stateno = 4800 && numhelper(8)
trigger18 = time >= 22 && helper(8), numtarget
trigger19 = stateno = 3885 && numhelper(3)
trigger19 = time >= 8 && helper(3), numtarget
trigger20 = stateno = 4030 && numhelper(3)
trigger20 = time >= 10 && helper(3), numtarget
trigger21 = stateno = 4060 && numhelper(11)
trigger21 = time >= 57 && helper(11), numtarget
trigger22 = stateno = 4061 && numhelper(11)
trigger22 = time >= 2 && helper(11), numtarget
trigger23 = (stateno = 4050 || stateno = 4044 || stateno = 4055) && movecontact
trigger24 = (stateno = 3845 && movecontact) || stateno = 3846 || stateno = 3847
trigger25 = stateno = 3880 && anim = 1002 && (animelemtime(2) = [1, 16])

[State -1, Kuuchuu Shinkuu Hadouken]
type = ChangeState
value = 4030
triggerall = !AILevel
triggerall = command = "QCF_QCF_p" || command = "QCF_QCF_p" || command = "QCF_QCF_p"
triggerall = power >= 1000 || var(10) >= 1
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && (movecontact || var(10) >= 1)
trigger3 = (stateno = [1000, 1005]) && numhelper(3)
trigger3 = animelemtime(4) >= 1 && helper(3), numtarget
trigger4 = stateno = 10010 && numhelper(3)
trigger4 = time >= 3 && helper(3), numtarget
trigger5 = (stateno = [1865, 1867]) && numhelper(3)
trigger5 = time >= 16 && helper(3), numtarget
trigger6 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && numhelper(3)
trigger6 = time >= 10 && helper(3), numtarget
trigger7 = (stateno = [1868, 1870]) && numhelper(3)
trigger7 = time >= 9 && helper(3), numtarget
trigger8 = ((stateno = [1800, 1822]) || (stateno = [1850, 1852]) || (stateno = [1950, 1952])) && movecontact
trigger9 = ((stateno = [1500, 1510]) || (stateno = [1600, 1610]) || (stateno = [1700, 1710])) && movecontact
trigger10 = ((stateno = [1860, 1862]) && movecontact) || stateno = 1863
trigger11 = ((stateno = [2800, 2820]) && movecontact)
trigger12 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger13 = (stateno = 4480 && movecontact) || stateno = 4485
trigger14 = (stateno = 3480 && movecontact) || stateno = 3481
trigger15 = (stateno = 3840 || stateno = 3860) && movecontact
trigger16 = (stateno = 3910 || stateno = 3911) && movecontact
trigger17 = (stateno = 3840 || stateno = 3860) && movecontact
trigger18 = stateno = 3932 && movecontact
trigger19 = stateno = 4800 && numhelper(8)
trigger19 = time >= 22 && helper(8), numtarget
trigger20 = stateno = 3885 && numhelper(3)
trigger20 = time >= 8 && helper(3), numtarget
trigger21 = stateno = 4060 && numhelper(11)
trigger21 = time >= 57 && helper(11), numtarget
trigger22 = stateno = 4061 && numhelper(11)
trigger22 = time >= 2 && helper(11), numtarget
trigger23 = (stateno = 4050 || stateno = 4044 || stateno = 4055) && movecontact
trigger24 = (stateno = 3845 && movecontact) || stateno = 3846 || stateno = 3847
trigger25 = stateno = 3880 && anim = 1002 && (animelemtime(2) = [1, 16])

[State -1, Custom Combo]
type = ChangeState
value = 3920
triggerall = !AILevel
triggerall = power >= 1000
triggerall = command = "cz"
triggerall = var(10) <= 0
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])

[State -1, Custom Combo]
type = ChangeState
value = 3921
triggerall = !AILevel
triggerall = power >= 1000
triggerall = command = "cz"
triggerall = var(10) <= 0
triggerall = statetype = A
trigger1 = ctrl = 1

[State -1, Makuu Shihai]
type = ChangeState
value = 3960
triggerall = !AILevel
triggerall = command = "asuraf_x" || command = "asuraf_y" || command = "asuraf_z"
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger8 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger9 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0

[State -1, Makuu Shihai]
type = ChangeState
value = 3970
triggerall = !AILevel
triggerall = command = "asuraf_a" || command = "asuraf_b" || command = "asuraf_c"
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger8 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger9 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0

[State -1, Makuu Shihai]
type = ChangeState
value = 3980
triggerall = !AILevel
triggerall = command = "asurab_x" || command = "asurab_y" || command = "asurab_z"
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger8 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger9 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0

[State -1, Makuu Shihai]
type = ChangeState
value = 3990
triggerall = !AILevel
triggerall = command = "asurab_a" || command = "asurab_b" || command = "asurab_c"
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger8 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger9 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0

[State -1, Punch Alpha]
type = ChangeState
value = 2100
triggerall = !AILevel
triggerall = power >= 2000 && var(10) <= 0
triggerall = stateno >= 150 && stateno <= 153
trigger1 = command = "BQCD_x" || command = "BQCD_y" || command = "BQCD_z"
trigger2 = command = "holdfwd" && command = "cz"
trigger2 = p2statetype = A

[State -1, Kick Alpha]
type = ChangeState
value = 2200
triggerall = !AILevel
triggerall = power >= 2000 && var(10) <= 0
triggerall = stateno >= 150 && stateno <= 153
trigger1 = command = "BQCD_a" || command = "BQCD_b" || command = "BQCD_c"
trigger2 = command = "holdfwd" && command = "cz"
trigger2 = p2statetype != A

[State -1, Punch Alpha]
type = ChangeState
value = 2211
triggerall = !AILevel
triggerall = power >= 2000 && var(10) <= 0
triggerall = stateno >= 154 && stateno <= 155
trigger1 = command = "BQCD_x" || command = "BQCD_y" || command = "BQCD_z"
trigger2 = command = "holdfwd" && command = "cz"
trigger2 = p2statetype = A

[State -1, Kick Alpha]
type = ChangeState
value = 2210
triggerall = !AILevel
triggerall = power >= 2000 && var(10) <= 0
triggerall = stateno >= 154 && stateno <= 155
trigger1 = command = "BQCD_a" || command = "BQCD_b" || command = "BQCD_c"
trigger2 = command = "holdfwd" && command = "cz"
trigger2 = p2statetype = A

[State -1, Stand Punch Throw]
type = ChangeState
value = 900
triggerall = !AILevel
triggerall = statetype = S
trigger1 = ctrl = 1 || stateno = 102 || stateno = 107
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "xy" || command="xz" || command="yz")

[State -1, Stand Kick Throw]
type = ChangeState
value = 905
triggerall = !AILevel
triggerall = statetype = S
trigger1 = ctrl = 1 || stateno = 102 || stateno = 107
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "ab" || command="ac" || command="bc")

[State -1, Power Charge]
type = changestate
value = 1050
triggerall = !AILevel && var(10) <= 0
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = statetype != A && power < powermax
trigger1 = ctrl = 1

[State -1, Shoryuken]
type = ChangeState
value = ifelse(command = "DP_z", 1700, ifelse(command = "DP_y", 1600, 1500))
triggerall = !AILevel
triggerall = command = "DP_x" || command = "DP_y" || command = "DP_z"
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1200, 1221]) && var(10) > 0
trigger8 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger9 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger10 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0
trigger11 = (stateno = [3960, 3991]) && var(10) > 0

[State -1, Tatsumaki]
type = ChangeState
value = ifelse(command = "QCB_c", 1820, ifelse(command = "QCB_b", 1810, 1800))
triggerall = !AILevel
triggerall = command = "QCB_a" || command = "QCB_b" || command = "QCB_c"
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1200, 1221]) && var(10) > 0
trigger8 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger9 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger10 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0
trigger11 = (stateno = [3960, 3991]) && var(10) > 0

[State -1, Joudan Sokutou Geri]
type = ChangeState
value = ifelse(command = "QCF_c", 2820, ifelse(command = "QCF_b", 2810, 2800))
triggerall = !AILevel
triggerall = command = "QCF_a" || command = "QCF_b" || command = "QCF_c"
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1200, 1221]) && var(10) > 0
trigger8 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger9 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger10 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0
trigger11 = (stateno = [3960, 3991]) && var(10) > 0

[State -1, Classic Air Tatsumaki]
type = ChangeState
value = ifelse(command = "HCB_c", 1852, ifelse(command = "HCB_b", 1851, 1850))
triggerall = !AILevel
triggerall = command = "HCB_a" || command = "HCB_b" || command = "HCB_c"
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1200, 1221]) && var(10) > 0
trigger8 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger9 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger10 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0
trigger11 = (stateno = [3960, 3991]) && var(10) > 0

[State -1, Air Tatsumaki]
type = ChangeState
value = ifelse(command = "QCB_c", 1952, ifelse(command = "QCB_b", 1951, 1950))
triggerall = !AILevel
triggerall = command = "QCB_a" || command = "QCB_b" || command = "QCB_c"
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1200, 1221]) && var(10) > 0
trigger8 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger9 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger10 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0
trigger11 = (stateno = [3960, 3991]) && var(10) > 0

[State -1, Dive Kick]
type = ChangeState
value = ifelse(command = "QCF_c", 1862, ifelse(command = "QCF_b", 1861, 1860))
triggerall = !AILevel
triggerall = command = "QCF_a" || command = "QCF_b" || command = "QCF_c"
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1200, 1221]) && var(10) > 0
trigger8 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger9 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger10 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0
trigger11 = (stateno = [3960, 3991]) && var(10) > 0

[State -1, Double Zankuu Hadouken]
type = ChangeState
value = ifelse(command = "QCB_z", 1750, ifelse(command = "QCB_y", 1650, 1550))
triggerall = !AILevel
triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_z"
triggerall = statetype = A
trigger1 = (stateno = 1865 || stateno = 1866 || stateno = 1867) && time = [16,30]

[State -1, Zankuu Hadouken]
type = ChangeState
value = ifelse(command = "QCB_z", 1867, ifelse(command = "QCB_y", 1866, 1865))
triggerall = !AILevel
triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_z"
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1200, 1221]) && var(10) > 0
trigger8 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger9 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger10 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0
trigger11 = (stateno = [3960, 3991]) && var(10) > 0

[State -1, Air Hadouken]
type = ChangeState
value = ifelse(command = "QCF_z", 1870, ifelse(command = "QCF_y", 1869, 1868))
triggerall = !AILevel
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1200, 1221]) && var(10) > 0
trigger8 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger9 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger10 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0
trigger11 = (stateno = [3960, 3991]) && var(10) > 0

[State -1, Charged Hadouken]
type = ChangeState
value = ifelse(command = "HCF_z", 10002, ifelse(command = "HCF_y", 10001, 10000))
triggerall = !AILevel
triggerall = command = "HCF_x" || command = "HCF_y" || command = "HCF_z"
triggerall = (numhelper(3) = 0 && numhelper(7) = 0) || var(10) > 0
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1200, 1221]) && var(10) > 0
trigger8 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger9 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger10 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0
trigger11 = (stateno = [3960, 3991]) && var(10) > 0

[State -1, Hadouken]
type = ChangeState
value = ifelse(command = "QCF_z", 1002, ifelse(command = "QCF_y", 1001, 1000))
triggerall = !AILevel
triggerall = command = "QCF_x" || command = "QCF_y" || command = "QCF_z"
triggerall = (numhelper(3) = 0 && numhelper(7) = 0) || var(10) > 0
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1200, 1221]) && var(10) > 0
trigger8 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger9 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger10 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0
trigger11 = (stateno = [3960, 3991]) && var(10) > 0

[State -1, Zenpu Tenshin]
type = ChangeState
value = ifelse(command = "QCB_z", 1220, ifelse(command = "QCB_y", 1210, 1200))
triggerall = !AILevel
triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_z"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1200, 1221]) && var(10) > 0
trigger8 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger9 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger10 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0
trigger11 = (stateno = [3960, 3991]) && var(10) > 0

[State -1]
type = ChangeState
value = 100
triggerall = !AILevel
triggerall = command = "FF"
triggerall = statetype = S
triggerall = (stateno != [100, 101]) && (stateno != [105, 106])
trigger1 = ctrl = 1 || stateno = 102 || stateno = 107

[State -1]
type = ChangeState
value = 105
triggerall = !AILevel
triggerall = command = "BB"
triggerall = statetype = S
triggerall = (stateno != [100, 101]) && (stateno != [105, 106])
trigger1 = ctrl = 1 || stateno = 102 || stateno = 107
trigger2 = stateno = [200,400]
trigger2 = movecontact

[State -1, Taunt]
type = ChangeState
value = 11050
triggerall = !AILevel
triggerall = command = "DDDs"
triggerall = power >= 3000 && var(10) <= 0
triggerall = statetype != A && var(18) <= 0
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1200, 1221]) && var(10) > 0
trigger8 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger9 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger10 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0
trigger11 = (stateno = [3960, 3991]) && var(10) > 0

[State -1, Taunt]
type = ChangeState
value = 196
triggerall = !AILevel
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (stateno = [200, 799]) && stateno != 721 && movecontact
trigger3 = stateno = 1863
trigger4 = (stateno = [200, 799]) && var(10) > 0
trigger5 = hitdefattr = SCA, SA && movecontact && var(10) > 0
trigger6 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger7 = (stateno = [1200, 1221]) && var(10) > 0
trigger8 = (stateno = [1865, 1867]) && time >= 16 && var(10) > 0
trigger9 = (stateno = [1868, 1870]) && time >= 10 && var(10) > 0
trigger10 = (stateno = 1550 || stateno = 1650 || stateno = 1750) && time >= 10 && var(10) > 0
trigger11 = (stateno = [3960, 3991]) && var(10) > 0

[State -1, S.Short]
type = ChangeState
value = 201
triggerall = !AILevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, S.Jab]
type = ChangeState
value = 206
triggerall = !AILevel
triggerall = command != "holddown"
triggerall = command = "x"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, S.Forward]
type = ChangeState
value = 720
triggerall = !AILevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0
trigger6 = movecontact && time > 14
trigger6 = stateno = 201

[State -1, S.Forward]
type = ChangeState
value = 209
triggerall = !AILevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x < 27 || command = "holdback"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0
trigger6 = movecontact && time > 14
trigger6 = stateno = 201

[State -1, New Forward Kick]
type = ChangeState
value = 210
triggerall = !AILevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0
trigger6 = movecontact && time > 14
trigger6 = stateno = 201

[State -1, Close S.Strong]
type = ChangeState
value = 215
triggerall = !AILevel
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 27 || command = "holdback"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0
trigger6 = movecontact && time > 9
trigger6 = stateno = 206

[State -1, S.Strong]
type = ChangeState
value = 240
triggerall = !AILevel
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0
trigger6 = movecontact && time > 9
trigger6 = stateno = 206

[State -1, Guard Crusher]
type = ChangeState
value = 250
triggerall = !AILevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = p2bodydist x < 27 || command = "holdback"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0
trigger6 = movecontact && time > 11
trigger6 = stateno = 210
trigger7 = movecontact && time > 14
trigger7 = stateno = 201
trigger8 = movecontact && time > 9
trigger8 = stateno = 209

[State -1, S.Roundhouse]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0
trigger6 = movecontact && time > 11
trigger6 = stateno = 210
trigger7 = movecontact && time > 14
trigger7 = stateno = 201
trigger8 = movecontact && time > 9
trigger8 = stateno = 209

[State -1, Close S.Fierce]
type = ChangeState
value = 230
triggerall = !AILevel
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = p2bodydist x < 27 || command = "holdback"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0
trigger6 = movecontact && time > 9
trigger6 = stateno = 206
trigger7 = movecontact && time > 10
trigger7 = stateno = 240
trigger8 = movecontact && time > 12
trigger8 = stateno = 215

[State -1, S.Fierce]
type = ChangeState
value = 225
triggerall = !AILevel
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0
trigger6 = movecontact && time > 9
trigger6 = stateno = 206
trigger7 = movecontact && time > 10
trigger7 = stateno = 240
trigger8 = movecontact && time > 12
trigger8 = stateno = 215

[State -1, C.Short]
type = ChangeState
value = 400
triggerall = !AILevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, C.Jab]
type = ChangeState
value = 405
triggerall = !AILevel
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, C.Forward]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = !AILevel
triggerall = command = "holddown"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0
trigger6 = movecontact && time > 9
trigger6 = stateno = 400

[State -1, C.Strong]
type = ChangeState
value = 415
triggerall = command = "y"
triggerall = !AILevel
triggerall = command = "holddown"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0
trigger6 = movecontact && time > 8
trigger6 = stateno = 405

[State -1, C.Roundhouse]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = !AILevel
triggerall = command = "holddown"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0
trigger6 = movecontact && time > 9
trigger6 = stateno = 400
trigger7 = movecontact && time > 12
trigger7 = stateno = 410

[State -1, C.Fierce]
type = ChangeState
value = 425
triggerall = command = "z"
triggerall = !AILevel
triggerall = command = "holddown"
triggerall = Statetype != A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0
trigger6 = movecontact && time > 8
trigger6 = stateno = 405
trigger7 = movecontact && time > 11
trigger7 = stateno = 415

[State -1, J.Short NN]
type = ChangeState
value = 600
triggerall = !AILevel
triggerall = vel x != 0
triggerall = statetype = A
triggerall = command = "a"
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, J.Short]
type = ChangeState
value = 603
triggerall = !AILevel
triggerall = command = "a"
triggerall = Statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, J.Jab]
type = ChangeState
value = 605
triggerall = !AILevel
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, Forced J.Forward N]
type = ChangeState
value = 613
triggerall = !AILevel
triggerall = command = "holdup" && command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, J.Forward]
type = ChangeState
value = 610
triggerall = !AILevel
triggerall = vel x != 0
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, J.Forward N]
type = ChangeState
value = 613
triggerall = !AILevel
triggerall = command = "b" && vel x = 0
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, Up Y]
type = ChangeState
value = 616
triggerall = command = "y" && command = "holdup"
triggerall = !AILevel
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, J.Strong]
type = ChangeState
value = 615
triggerall = !AILevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, Forced J.Roundhouse]
type = ChangeState
value = 623
triggerall = !AILevel
triggerall = command = "holdup" && command = "c"
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, J.Roundhouse NN]
type = ChangeState
value = 620
triggerall = !AILevel
triggerall = vel x != 0
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, J.Roundhouse]
type = ChangeState
value = 623
triggerall = !AILevel
triggerall = command = "c" && vel x = 0
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0

[State -1, J.Fierce]
type = ChangeState
value = 625
triggerall = !AILevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl = 1 || (Stateno = [100, 107])
trigger2 = (hitdefattr = SCA, NA && movecontact) && var(10) > 0 && stateno != 721
trigger3 = (hitdefattr = SCA, SA && movecontact) && var(10) > 0 && statetype != A
trigger4 = (stateno = [1000, 1005]) && animelemtime(4) >= 1 && var(10) > 0
trigger5 = stateno = 1863 && var(10) > 0


;============================================= A.I. ===========================================

[State -1]
type = ChangeState
value = 0
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = Win
trigger1 = statetype != A
trigger1 = ctrl

[State -1, random taunt]
type = changestate
value = 196
triggerall = AILevel && NumEnemy
triggerall = statetype != A
triggerall = ctrl
triggerall = p2dist x > 180
triggerall = random < (900 * (AIlevel ** 2 / 64.0))
triggerall = Var(44) = 0
triggerall = prevstateno != 196
trigger1 = p2stateno = 5050
trigger2 = p2stateno = 5100
trigger3 = p2stateno = 5101
trigger4 = p2stateno = 5110
trigger5 = p2stateno = 5020
trigger6 = p2stateno = 5030

[State -1, random forwarddash]
type = changestate
value = 100
triggerall = AILevel && NumEnemy && ctrl = 1
triggerall = statetype != A
triggerall = frontedgebodydist > 80
triggerall = (stateno != [100, 101]) && (stateno != [105, 106])
trigger1 = p2movetype != A
trigger1 = P2Bodydist x = [20,400]
trigger1 = stateno = 0 && random < (800 * (AIlevel ** 2 / 64.0))
trigger2 = numhelper(3) >= 1 || numhelper(7) >= 1
trigger2 = P2Bodydist x = [20,400]
trigger2 = stateno = 0 && random < (400 * (AIlevel ** 2 / 64.0))

[State -1, cpu hadoken barrage1]
type = changestate
value = 1002
triggerall = AILevel && NumEnemy
triggerall = statetype != A
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = ctrl
triggerall = p2stateno != 5050
triggerall = p2stateno != 5100
triggerall = p2stateno != 5101
triggerall = p2stateno != 5110
triggerall = p2stateno != 5020
triggerall = p2stateno != 5030
triggerall = NumProjID(4) = 0
triggerall = NumProjID(10) = 0
triggerall = Var(16) < 3
triggerall = P2movetype != A
trigger1 = P2Bodydist x = [200,999]
trigger1 = p2dist y = [-10, 0]
trigger1 = random < (300 * (AIlevel ** 2 / 64.0))

[State -1, cpu hadoken barrage1]
type = changestate
value = 10002
triggerall = AILevel && NumEnemy
triggerall = statetype != A
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = ctrl
triggerall = p2stateno != 5050
triggerall = p2stateno != 5100
triggerall = p2stateno != 5101
triggerall = p2stateno != 5110
triggerall = p2stateno != 5020
triggerall = p2stateno != 5030
triggerall = NumProjID(4) = 0
triggerall = NumProjID(10) = 0
triggerall = Var(16) < 3
triggerall = P2movetype != A
trigger1 = P2Bodydist x = [200,999]
trigger1 = p2dist y = [-10, 0]
trigger1 = random < (300 * (AIlevel ** 2 / 64.0))

[State -1, cpu hadoken barrage]
type = changestate
value = 1000
triggerall = AILevel && NumEnemy
triggerall = statetype != A
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = ctrl
triggerall = NumProjID(4) = 0
triggerall = NumProjID(10) = 0
triggerall = P2movetype != A
trigger1 = P2Bodydist x > 250 && p2dist y > -10
trigger1 = random < (1000 * (AIlevel ** 2 / 64.0))

[State -1, cpu warp counter close range]
type = changestate
value = 3970
triggerall = AILevel && NumEnemy
triggerall = statetype != A
triggerall = ctrl
triggerall = P2Bodydist x = [20,100]
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = p2movetype = A
trigger2 = ProjGuardedTime(0) != -1 && ProjGuardedTime(0) < 30 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = prevstateno = 1000 && random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = enemy, Numproj > 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, cpu warp counter close range]
type = changestate
value = 3990
triggerall = AILevel && NumEnemy
triggerall = statetype != A
triggerall = ctrl
triggerall = backedgedist > 50
triggerall = P2Bodydist x = [20,100]
trigger1 = p2movetype = A
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = ProjGuardedTime(0) != -1 && ProjGuardedTime(0) < 30 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = prevstateno = 1000 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, cpu warp counter medium range]
type = changestate
value = 3960
triggerall = AILevel && NumEnemy
triggerall = statetype != A
triggerall = ctrl
triggerall = P2Bodydist x = [100,200]
trigger1 = p2movetype = A
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = ProjGuardedTime(0) != -1 && ProjGuardedTime(0) < 30 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = prevstateno = 1000 && random < (50 * (AIlevel ** 2 / 64.0))
trigger4 = enemy, Numproj > 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, cpu warp counter far range]
type = changestate
value = 3960
triggerall = AILevel && NumEnemy
triggerall = statetype != A
triggerall = ctrl
triggerall = P2Bodydist x > 200
trigger1 = p2movetype = A
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = prevstateno = 1000 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = enemy, Numproj > 0 && random < (10 * (AIlevel ** 2 / 64.0))

[State -1, cpu warp]
type = changestate
value = 3960
triggerall = AILevel && NumEnemy
triggerall = statetype != A
triggerall = ctrl
triggerall = numhelper(4) = 1
triggerall = helper(4), movecontact = 0
triggerall = Frontedgebodydist > 150
trigger1 = P2Bodydist x = [50,200]
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, cpu warp]
type = changestate
value = 3980
triggerall = AILevel && NumEnemy
triggerall = statetype != A
triggerall = ctrl
triggerall = numhelper(4) = 1
triggerall = helper(4), movecontact = 0
triggerall = Backedgedist > 50
trigger1 = P2Bodydist x = [50,200]
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, random hadouken]
type = changestate
value = 1002
triggerall = AILevel && NumEnemy
triggerall = NumProjID(4) = 0
triggerall = NumProjID(10) = 0
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = Var(16) < 3
triggerall = P2movetype != A
trigger1 = statetype = S
trigger1 = P2Bodydist x > 60
trigger1 = p2dist y > -30
trigger1 = random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 425
trigger2 = moveguarded
trigger3 = stateno = 220
trigger3 = moveguarded
trigger4 = stateno = 420
trigger4 = moveguarded

[State -1, random hadouken]
type = changestate
value = 10002
triggerall = AILevel && NumEnemy
triggerall = NumProjID(4) = 0
triggerall = NumProjID(10) = 0
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = Var(16) < 3
triggerall = P2movetype != A
trigger1 = statetype = S
trigger1 = P2Bodydist x > 60
trigger1 = p2dist y > -30
trigger1 = random < (500 * (AIlevel ** 2 / 64.0))
trigger1 = statetype != A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 41
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = random < (400 * (AIlevel ** 2 / 64.0))
triggerall = statetype != A && stateno != 100
triggerall = p2movetype = I
trigger1 = ctrl = 1 && random < (600 * (AIlevel ** 2 / 64.0))
trigger1 = P2Bodydist x = [200,999]

[State -1, Jump in hk]
type = changestate
value = 620
triggerall = AILevel && NumEnemy
triggerall = statetype = A && var(40) < 50
triggerall = (P2Bodydist x = [30,70]) && (p2dist y = [40,80])
triggerall = vel x > 0 && Vel Y > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 50

[State -1]
type = ChangeState
value = 42
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = random < (400 * (AIlevel ** 2 / 64.0))
triggerall = statetype != A
triggerall = p2movetype != A && stateno != 100
trigger1 = ctrl = 1
trigger1 = P2Bodydist x = [90,200]

[State -1]
type = ChangeState
value = 22
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = random < (900 * (AIlevel ** 2 / 64.0))
triggerall = statetype != A
triggerall = p2movetype != A && stateno != 100
trigger1 = ctrl = 1
trigger1 = P2Bodydist x = [50,150]
trigger1 = backedgedist > 50

[State -1, Air hadou trap2]
type = changestate
value = 1868
triggerall = AILevel && NumEnemy
triggerall = statetype = A
triggerall = P2Bodydist x > 50
triggerall = pos y = [-50,-30]
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 50 && vel Y > 0

[State -1, Air hadou trap2]
type = changestate
value = 1868
triggerall = AILevel && NumEnemy
triggerall = statetype = A
triggerall = P2Bodydist x = [50,110]
triggerall = p2dist y = [0,160]
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 50 && vel Y > 0 && time = 30

[State -1]
type = ChangeState
value = 0
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = statetype != A
trigger1 = stateno = 40 || stateno = 20 || stateno = 10

[State -1]
type = ChangeState
value = 21
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = statetype != A
triggerall = p2movetype != A
trigger1 = ctrl = 1
trigger1 = P2Bodydist x = [50,999]

[State -1]
type = ChangeState
value = 1865
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = random < (400 * (AIlevel ** 2 / 64.0)) && var(10) <= 0
trigger1 = stateno = 50 && time = 15
trigger1 = vel x < 0
trigger1 = statetype = A
trigger1 = P2Bodydist x != [-30,30]

[State -1, Air hadou extra]
type = changestate
value = 1550
triggerall = AILevel && NumEnemy
triggerall = statetype = A
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 1865 && time = 17

[State -1]
type = ChangeState
value = 1860
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && var(40) > 50 && p2movetype != H
triggerall = var(10) <= 0 && stateno != 1860 && stateno != 1861
trigger1 = ctrl = 1 && stateno = 50
trigger1 = P2bodydist x = [40,80]
trigger1 = p2dist y = [40,100]
trigger1 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl = 1 && stateno = 50
trigger2 = P2bodydist x = [30,70]
trigger2 = p2dist y = [30,90]
trigger2 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl = 1 && stateno = 50
trigger3 = P2bodydist x = [20,60]
trigger3 = p2dist y = [20,80]
trigger3 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger4 = ctrl = 1 && stateno = 50
trigger4 = P2bodydist x = [10,50]
trigger4 = p2dist y = [10,70]
trigger4 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger5 = ctrl = 1 && stateno = 50
trigger5 = P2bodydist x = [50,90]
trigger5 = p2dist y = [50,110]
trigger5 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger6 = ctrl = 1 && stateno = 50
trigger6 = P2bodydist x = [60,100]
trigger6 = p2dist y = [60,120]
trigger6 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger7 = stateno = 1863 && time > 20
trigger7 = P2bodydist x = [40,80]
trigger7 = p2dist y = [40,110]
trigger7 = p2movetype != A && random < (800 * (AIlevel ** 2 / 64.0))
trigger8 = stateno = 1863 && time > 20
trigger8 = P2bodydist x = [30,70]
trigger8 = p2dist y = [30,100]
trigger8 = p2movetype != A && random < (800 * (AIlevel ** 2 / 64.0))
trigger9 = stateno = 1863 && time > 20
trigger9 = P2bodydist x = [20,60]
trigger9 = p2dist y = [20,90]
trigger9 = p2movetype != A && random < (800 * (AIlevel ** 2 / 64.0))
trigger10 = stateno = 1863 && time > 20
trigger10 = P2bodydist x = [10,50]
trigger10 = p2dist y = [10,80]
trigger10 = p2movetype != A && random < (800 * (AIlevel ** 2 / 64.0))
trigger11 = stateno = 1863 && time > 20
trigger11 = P2bodydist x = [50,90]
trigger11 = p2dist y = [50,110]
trigger11 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger12 = stateno = 1863 && time > 20
trigger12 = P2bodydist x = [60,100]
trigger12 = p2dist y = [60,120]
trigger12 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))

[State -1]
type = ChangeState
value = 1861
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && var(40) > 50 && p2movetype != H
triggerall = var(10) <= 0 && stateno != 1860 && stateno != 1861
triggerall = frontedgedist > 100
triggerall = enemynear, backedgedist > 30
trigger1 = ctrl = 1 && stateno = 50
trigger1 = P2bodydist x = [40,80]
trigger1 = p2dist y = [40,100]
trigger1 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl = 1 && stateno = 50
trigger2 = P2bodydist x = [30,70]
trigger2 = p2dist y = [30,90]
trigger2 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl = 1 && stateno = 50
trigger3 = P2bodydist x = [20,60]
trigger3 = p2dist y = [20,80]
trigger3 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger4 = ctrl = 1 && stateno = 50
trigger4 = P2bodydist x = [10,50]
trigger4 = p2dist y = [10,70]
trigger4 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger5 = ctrl = 1 && stateno = 50
trigger5 = P2bodydist x = [50,90]
trigger5 = p2dist y = [50,110]
trigger5 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger6 = ctrl = 1 && stateno = 50
trigger6 = P2bodydist x = [60,100]
trigger6 = p2dist y = [60,120]
trigger6 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger7 = stateno = 1863 && time > 20
trigger7 = P2bodydist x = [40,80]
trigger7 = p2dist y = [40,110]
trigger7 = p2movetype != A && random < (800 * (AIlevel ** 2 / 64.0))
trigger8 = stateno = 1863 && time > 20
trigger8 = P2bodydist x = [30,70]
trigger8 = p2dist y = [30,100]
trigger8 = p2movetype != A && random < (800 * (AIlevel ** 2 / 64.0))
trigger9 = stateno = 1863 && time > 20
trigger9 = P2bodydist x = [20,60]
trigger9 = p2dist y = [20,90]
trigger9 = p2movetype != A && random < (800 * (AIlevel ** 2 / 64.0))
trigger10 = stateno = 1863 && time > 20
trigger10 = P2bodydist x = [10,50]
trigger10 = p2dist y = [10,80]
trigger10 = p2movetype != A && random < (800 * (AIlevel ** 2 / 64.0))
trigger11 = stateno = 1863 && time > 20
trigger11 = P2bodydist x = [50,90]
trigger11 = p2dist y = [50,110]
trigger11 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger12 = stateno = 1863 && time > 20
trigger12 = P2bodydist x = [60,100]
trigger12 = p2dist y = [60,120]
trigger12 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))

[State -1]
type = ChangeState
value = 1865
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && var(40) > 50 && p2movetype != H
triggerall = var(10) <= 0 && stateno != 1860 && stateno != 1861
triggerall = Vel Y < 0
triggerall = numhelper(3) = 0 && numhelper(7) = 0
trigger1 = ctrl = 1 && stateno = 50
trigger1 = P2bodydist x = [40,80]
trigger1 = p2dist y = [40,100]
trigger1 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl = 1 && stateno = 50
trigger2 = P2bodydist x = [30,70]
trigger2 = p2dist y = [30,90]
trigger2 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl = 1 && stateno = 50
trigger3 = P2bodydist x = [20,60]
trigger3 = p2dist y = [20,80]
trigger3 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger4 = ctrl = 1 && stateno = 50
trigger4 = P2bodydist x = [10,50]
trigger4 = p2dist y = [10,70]
trigger4 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger5 = ctrl = 1 && stateno = 50
trigger5 = P2bodydist x = [50,90]
trigger5 = p2dist y = [50,110]
trigger5 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger6 = ctrl = 1 && stateno = 50
trigger6 = P2bodydist x = [60,100]
trigger6 = p2dist y = [60,120]
trigger6 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger7 = stateno = 1863 && time > 20
trigger7 = P2bodydist x = [40,80]
trigger7 = p2dist y = [40,110]
trigger7 = p2movetype != A && random < (800 * (AIlevel ** 2 / 64.0))
trigger8 = stateno = 1863 && time > 20
trigger8 = P2bodydist x = [30,70]
trigger8 = p2dist y = [30,100]
trigger8 = p2movetype != A && random < (800 * (AIlevel ** 2 / 64.0))
trigger9 = stateno = 1863 && time > 20
trigger9 = P2bodydist x = [20,60]
trigger9 = p2dist y = [20,90]
trigger9 = p2movetype != A && random < (800 * (AIlevel ** 2 / 64.0))
trigger10 = stateno = 1863 && time > 20
trigger10 = P2bodydist x = [10,50]
trigger10 = p2dist y = [10,80]
trigger10 = p2movetype != A && random < (800 * (AIlevel ** 2 / 64.0))
trigger11 = stateno = 1863 && time > 20
trigger11 = P2bodydist x = [50,90]
trigger11 = p2dist y = [50,110]
trigger11 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))
trigger12 = stateno = 1863 && time > 20
trigger12 = P2bodydist x = [60,100]
trigger12 = p2dist y = [60,120]
trigger12 = p2movetype != A && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, CVS dodge]
type = changestate
value = 1200
triggerall = AILevel && NumEnemy
triggerall = statetype != A
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 405 && movecontact = 0 && animtime = 0
trigger2 = stateno = 400 && movecontact = 0 && animtime = 0
trigger3 = stateno = 206 && movecontact = 0 && animtime = 0

[State -1, random roll]
type = changestate
value = 1200
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype != A
triggerall = ctrl
triggerall = P2Bodydist x = [0,25]
triggerall = p2dist y = [-90, 0]
trigger1 = p2movetype = A && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, counter dragon punch! l]
type = changestate
value = 1500
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = statetype != A
triggerall = ctrl
triggerall = P2Bodydist x = [0,25]
triggerall = p2dist y = [-90, 0]
trigger1 = p2movetype = A

[State -1, starter]
type = ChangeState
value = 420
triggerall = AILevel && NumEnemy
triggerall = P2statetype != A && p2life > 0
triggerall = p2stateno != 5110 && p2stateno != 5120 && p2stateno != 5100 && p2stateno != 5101
trigger1 = P2movetype = H
trigger1 = stateno = 1520 && time = 3 && random < (500 * (AIlevel ** 2 / 64.0))
trigger1 = statetype != A
trigger1 = P2Bodydist x = [-10,60]
trigger1 = p2dist y = [-110,10]

[State -1, upperjab followup]
type = changestate
value = 230
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype != A && random < (500 * (AIlevel ** 2 / 64.0))
triggerall = P2Bodydist x = [-10,60]
triggerall = p2dist y = [-110, 0]
triggerall = (p2movetype = H) && (p2stateno != [130,155])
triggerall = P2statetype = A
trigger1 = stateno = 52 && animtime = 0
trigger2 = stateno = 1520 && time = 3

[State -1, Hurricane kick followup]
type = changestate
value = 1800
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = statetype != A
triggerall = P2Bodydist x = [-10,60]
triggerall = p2dist y = [-110, 0]
triggerall = p2movetype = H
trigger1 = stateno = 1520 && time = 3

[State -1, Air hadou trap]
type = changestate
value = 1867
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = statetype = A
triggerall = P2Bodydist x = [20,40]
triggerall = p2dist y = [0,160]
triggerall = numhelper(3) = 0 && numhelper(7) = 0
trigger1 = stateno = 50 && time = 20 && ctrl = 1

[State -1, jump pursuit]
type = changestate
value = 42
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype != A
triggerall = P2Bodydist x = [0,40]
triggerall = p2dist y = [-115,-60]
triggerall = p2movetype = H
trigger1 = stateno = 52 && animtime = 0 && power < 3000 && random < (1000 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 52 && animtime = 0 && power >= 3000 && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, jump neutral]
type = changestate
value = 43
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype != A
triggerall = P2Bodydist x = [0,40]
triggerall = p2dist y = [-115,-60]
triggerall = p2movetype = H
trigger1 = stateno = 52 && animtime = 0 && power < 3000 && random < (1000 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 52 && animtime = 0 && power >= 3000 && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, jump backward]
type = changestate
value = 44
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype != A
triggerall = P2Bodydist x = [-40,40]
triggerall = p2dist y = [-115,-60]
triggerall = p2movetype = H
trigger1 = stateno = 52 && animtime = 0 && power < 3000 && random < (1000 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 52 && animtime = 0 && power >= 3000 && random < (300 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 420 && movehit

[State -1, jump backward]
type = changestate
value = 44
triggerall = AILevel && NumEnemy && p2life > 0 && power >= 3000
triggerall = statetype != A
triggerall = p2movetype = H && backedgedist > 20
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 420 && movehit

[State -1, jump forward]
type = changestate
value = 41
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype != A
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 420 && moveguarded && var(40) <= 50
trigger2 = stateno = 206 && moveguarded && var(40) > 50

[State -1, warp backward]
type = changestate
value = 3980
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype != A && backedgedist > 50
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 420 && moveguarded && var(40) > 50
trigger2 = stateno = 206 && moveguarded && var(40) > 50

[State -1, warp forward]
type = changestate
value = 3960
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype != A && backedgedist > 50
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 420 && moveguarded && var(40) < 50
trigger2 = stateno = 206 && moveguarded && var(40) > 50

[State -1, hadou followup]
type = changestate
value = 1000
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype != A
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = P2Bodydist x = [30,300]
triggerall = p2movetype = H
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 1864 && time = 3 && p2statetype = A

[State -1, dive kick followup]
type = changestate
value = 1861
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype = A && frontedgedist > 66
triggerall = p2movetype = H
triggerall = enemynear, backedgedist > 30
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 615 && movehit && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Air hurricane kick followup]
type = changestate
value = 1852
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype = A
triggerall = p2movetype = H && vel x >= 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 615 && movehit

[State -1, Air hurricane kick followup]
type = changestate
value = 1952
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype = A
triggerall = p2movetype = H && vel x = 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 615 && movehit

[State -1, reversing air hadouken followup]
type = changestate
value = 1867
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype = A
triggerall = p2movetype = H && vel x < 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 615 && movehit

[State -1, cornertrap dive kick evade]
type = changestate
value = 1861
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype = A
triggerall = P2Bodydist x = [-60,-20]
triggerall = p2dist y = [0,50]
triggerall = enemynear, backedgedist > 30
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 1863 && time > 30

[State -1, Air hadou trap]
type = changestate
value = 1867
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype = A
triggerall = P2Bodydist x = [20,40]
triggerall = p2dist y = [0,160]
triggerall = numhelper(3) = 0 && numhelper(7) = 0
trigger1 = stateno = 1863 && time = 30 && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Air hadou extra]
type = changestate
value = 1750
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype = A
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 1867 && time = 17

[State -1, Air hadou trap2]
type = changestate
value = 1870
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype = A
triggerall = P2Bodydist x = [50,110]
triggerall = p2dist y = [0,160]
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 1863 && time = 50

[State -1]
type = ChangeState
value = 1200
triggerall = AILevel && NumEnemy
triggerall = P2statetype != A && p2life > 0
triggerall = p2dist y = [-10,10]
triggerall = p2stateno != 5110 && p2stateno != 5120
trigger1 = P2statetype = S
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2Bodydist x = [-10,50]
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))

[State -1]
type = ChangeState
value = 206
triggerall = AILevel && NumEnemy
triggerall = P2statetype != A && p2life > 0 && power >= 3000
triggerall = p2dist y = [-10,10]
triggerall = p2stateno != 5110 && p2stateno != 5120
trigger1 = P2statetype = S
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2Bodydist x = [-10,50]
trigger1 = random < (400 * (AIlevel ** 2 / 64.0))
trigger2 = (p2movetype = H) && var(40) < 50
trigger2 = p2stateno = [130,155]
trigger2 = stateno = 52 && animtime = 0
trigger2 = random < (1000 * (AIlevel ** 2 / 64.0))

[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = P2statetype = S
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 206
trigger1 = movecontact && time > 9

[State -1]
type = ChangeState
value = 225
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = P2statetype = S
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 240
trigger1 = movecontact && time > 10

[State -1]
type = ChangeState
value = 1002
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = P2statetype != A
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 225
trigger1 = moveguarded

[State -1]
type = ChangeState
value = 3845
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = P2statetype != A
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 225 && power >= 3000
trigger1 = movehit

[State -1, crossup]
type = ChangeState
value = 1200
triggerall = AILevel && NumEnemy
triggerall = random < (200 * (AIlevel ** 2 / 64.0))
triggerall = P2statetype != A && p2life > 0
triggerall = p2dist y = [-10,10]
triggerall = p2stateno != 5110 && p2stateno != 5120 && p2stateno != 5100 && p2stateno != 5101
triggerall = numhelper(3) >= 1 && numhelper(7) >= 1
trigger1 = (p2movetype = H)
trigger1 = p2stateno = [130,155]
trigger1 = stateno = 52 && animtime = 0

[State -1, starter]
type = ChangeState
value = 400
triggerall = AILevel && NumEnemy
triggerall = P2statetype != A && p2life > 0
triggerall = p2dist y = [-10,10]
triggerall = p2stateno != 5110 && p2stateno != 5120 && p2stateno != 5100 && p2stateno != 5101
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2Bodydist x = [-10,50]
trigger1 = random < (800 * (AIlevel ** 2 / 64.0))
trigger2 = (p2movetype = H) && var(40) > 50
trigger2 = p2stateno = [130,155]
trigger2 = stateno = 52 && animtime = 0
trigger2 = random < (1000 * (AIlevel ** 2 / 64.0))

[State -1]
type = ChangeState
value = 420
triggerall = AILevel && NumEnemy
triggerall = P2statetype != A && p2life > 0
triggerall = p2dist y = [-10,10]
triggerall = p2stateno != 5110 && p2stateno != 5120 && p2stateno != 5100 && p2stateno != 5101
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2Bodydist x = [65,75]
trigger1 = random < (800 * (AIlevel ** 2 / 64.0))

[State -1]
type = ChangeState
value = 420
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = P2statetype != A
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 400
trigger1 = movecontact && time > 9

[State -1, Joudan Geri]
type = changestate
value = 4480
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 1000
triggerall = P2Bodydist x = [0,120]
triggerall = p2dist y = [-44,0]
triggerall = enemynear, backedgedist <= 30
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(10) <= 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 420 && movehit
trigger2 = stateno = 2820 && movehit

[State -1, Joudan Geri]
type = changestate
value = 4480
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 1000
triggerall = enemynear, backedgedist <= 30
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(10) <= 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 230 && movehit && animelem = 2

[State -1]
type = ChangeState
value = 1800
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = P2Bodydist x = [0,63]
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 420
trigger1 = movehit

[State -1]
type = ChangeState
value = 1820
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = P2Bodydist x > 63
trigger1 = stateno = 420
trigger1 = movehit

[State -1, upperjab followup]
type = changestate
value = 425
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype != A && random < (500 * (AIlevel ** 2 / 64.0))
triggerall = P2Bodydist x = [-20,30]
triggerall = p2dist y = [-60, 0]
triggerall = (p2movetype = H) && (p2stateno != [130,155])
triggerall = P2statetype = A
trigger1 = stateno = 52 && animtime = 0

[State -1, shoryuken kick followup]
type = changestate
value = 1500
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = statetype != A
triggerall = P2Bodydist x = [-20,30]
triggerall = p2dist y = [-60, 0]
triggerall = (p2movetype = H) && (p2stateno != [130,155])
trigger1 = stateno = 52 && animtime = 0 && p2statetype = A

[State -1, Seoi hadouken followup]
type = ChangeState
value = 10002
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 230
trigger1 = movecontact

[State -1, jump forward]
type = changestate
value = 91
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = statetype != A
trigger1 = stateno = 10010 && animtime = 0
trigger2 = stateno = 425 && movecontact

[State -1, punch air juggle]
type = changestate
value = 615
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = statetype = A
triggerall = P2Bodydist x = [-40,40]
triggerall = p2dist y = [-105,0]
triggerall = p2movetype = H
trigger1 = stateno = 50 && ctrl = 1

[State 40, 6, hurricane kick]
type = ChangeState
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = statetype = A && vel x > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = time = [3,9]
trigger1 = p2bodydist x = [-10,60]
trigger1 = p2dist y = [15,35]
trigger1 = p2statetype = A && p2movetype = H
trigger1 = stateno = 50
trigger2 = stateno = 616 && movehit && time > 10
value = 1952
ctrl = 0

[State -1, Air hadouken]
type = changestate
value = 1870
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = statetype = A && frontedgedist <= 66
triggerall = numhelper(3) = 0 && numhelper(7) = 0
trigger1 = stateno = 615 && movehit

[State -1]
type = ChangeState
value = 4050
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy && power >= 3000
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = var(10) <= 0 && stateno != 1860 && stateno != 1861
triggerall = p2movetype = H && vel x <= -5
trigger1 = ctrl = 1 && stateno = 50
trigger1 = P2bodydist x = [120,140]
trigger1 = p2dist y = [85,95]
trigger1 = p2movetype != A
trigger2 = ctrl = 1 && stateno = 50
trigger2 = P2bodydist x = [100,110]
trigger2 = p2dist y = [75,85]
trigger2 = p2movetype != A

[State -1, starter]
type = ChangeState
value = 420
triggerall = AILevel && NumEnemy
triggerall = P2statetype != A && p2life > 0
triggerall = p2dist y = [-10,10]
triggerall = p2stateno != 5110 && p2stateno != 5120 && p2stateno != 5100 && p2stateno != 5101
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2Bodydist x = [0,75]
trigger1 = random < (800 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, backedgedist < 30

[State -1, starter]
type = ChangeState
value = 230
triggerall = AILevel && NumEnemy
triggerall = P2statetype = A && p2life > 0
triggerall = p2stateno != 5110 && p2stateno != 5120 && p2stateno != 5100 && p2stateno != 5101
trigger1 = P2movetype = H
trigger1 = ctrl = 1 && statetype != A
triggerall = P2Bodydist x = [-10,60]
triggerall = p2dist y = [-110, 0]
trigger1 = random < (800 * (AIlevel ** 2 / 64.0))

[State -1, starter]
type = ChangeState
value = 1820
triggerall = AILevel && NumEnemy
triggerall = P2statetype = A && p2life > 0
triggerall = p2stateno != 5110 && p2stateno != 5120 && p2stateno != 5100 && p2stateno != 5101
trigger1 = P2movetype = H
trigger1 = ctrl = 1 && statetype != A
triggerall = P2Bodydist x = [-10,90]
triggerall = p2dist y = [-210,-111]
trigger1 = random < (800 * (AIlevel ** 2 / 64.0))

[State -1, starter]
type = ChangeState
value = 1860
triggerall = AILevel && NumEnemy
triggerall = P2statetype = A && p2life > 0
triggerall = p2stateno != 5110 && p2stateno != 5120 && p2stateno != 5100 && p2stateno != 5101
trigger1 = P2movetype = H
trigger1 = ctrl = 1
trigger1 = stateno = 50
trigger1 = P2Bodydist x = [30,80]
trigger1 = p2dist y = [10,40]
trigger1 = random < (800 * (AIlevel ** 2 / 64.0))

[State -1, hurr kick]
type = changestate
value = 1952
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = statetype = A
trigger1 = stateno = 1860 && movecontact && p2statetype = A

[State -1, joudan]
type = changestate
value = 2820
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = p2statetype = A
triggerall = P2Bodydist x = [-5,120]
triggerall = p2dist y = [-60, 0]
triggerall = p2movetype = H
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 1864 && time >= 3

[State -1, shoryuken]
type = changestate
value = 1700
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = p2statetype = A
triggerall = P2Bodydist x = [-5,50]
triggerall = p2dist y = [-130, 0]
triggerall = p2movetype = H
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 1864 && time >= 3

[State -1, shoryuken]
type = changestate
value = 1700
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = p2statetype = A
triggerall = p2movetype = H
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 230 && movehit && animelem = 2

[State -1, shoryuken]
type = changestate
value = 43
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = p2statetype = A
triggerall = P2Bodydist x = [20,50]
triggerall = p2dist y = [-200,-100]
triggerall = p2movetype = H
trigger1 = stateno = 1520 && time >= 2

[State -1, shoryuken]
type = changestate
value = 1865
triggerall = AILevel && NumEnemy && p2life > 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = p2statetype = A
triggerall = P2Bodydist x = [30,60]
triggerall = p2dist y = [-30,-10]
triggerall = p2movetype = H
trigger1 = stateno = 50

[State -1, denjin backstab]
type = changestate
value = 1002
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = power < 3000
triggerall = P2Bodydist x = [70,640]
triggerall = p2dist y = [-60, 0]
triggerall = p2movetype != H
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = numhelper(3) = 0 && numhelper(7) = 0
triggerall = var(10) <= 0
trigger1 = ctrl 
trigger1 = facing = (enemy,facing) && p2stateno != 5110 && p2stateno != 5120

[State -1, Shinkuu Hadouken]
type = changestate
value = 3885
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
triggerall = power >= 3000
triggerall = p2dist y = [-60, 0]
triggerall = p2movetype != H
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(10) <= 0
trigger1 = ctrl 
trigger1 = facing = (enemy,facing) && p2stateno != 5110 && p2stateno != 5120

[State -1, shinkuu hadouken]
type = ChangeState
value = 3885
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 3000
triggerall = roundstate = 2
triggerall = var(10) <= 0
trigger1 = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = numhelper(3) >= 1
trigger1 = (helper(3), movehit && helper(3), numtarget) && time > 10
trigger1 = stateno = 1002 || stateno = 1001 || stateno = 1000 || stateno = 10000 || stateno = 10001 || stateno = 10002 || stateno = 10010
trigger2 = numhelper(3) >= 1
trigger2 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger2 = random < (700 * (AIlevel ** 2 / 64.0)) && p2movetype = H && (helper(3), movehit && helper(3), numtarget)

[State -1, Standing Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && (statetype = S || stateno = 5120)
trigger1 = ctrl || (stateno = [700, 701]) || stateno = 5120
trigger1 = var(21) := 1
attr = SA, AA, AP
stateno = 700
slot = 0
time = 8

[State -1, Crouching Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [700, 701]) || stateno = 5120
trigger1 = var(21) := 2
attr = C, AA, AP
stateno = 701
slot = 0
time = 8

[State -1, Air Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype = A
trigger1 = ctrl || stateno = 702
trigger1 = var(21) := 3
attr = SA, AA, AP
stateno = 702
forceair = 1
slot = 0
time = 7


[State -1, Joudan Geri]
type = changestate
value = 4480
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 1000
triggerall = P2Bodydist x = [0,120]
triggerall = p2dist y = [-44,0]
triggerall = enemynear, backedgedist <= 30
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(10) <= 0
trigger1 = stateno = 52 && animtime = 0 && p2movetype = H && random < (500 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 1520 && time = 3 && p2movetype = H && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Shin Shoryuken counter & initialize]
type = changestate
value = 3480
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 3000
triggerall = P2Bodydist x = [-20,40]
triggerall = p2dist y = [-60, 0]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(10) <= 0
trigger1 = stateno = 3961 || stateno = 3971 || stateno = 3981 || stateno = 3991
trigger1 = p2movetype = A && random < (10 * (AIlevel ** 2 / 64.0)) && (p2bodydist x = [-10,40]) && var(6) = 0
trigger2 = stateno = 52 && animtime = 0 && p2movetype = H && random < (600 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 1520 && time = 3 && p2movetype = H && random < (600 * (AIlevel ** 2 / 64.0))

[State -1, Shinkuu Tatsumaki Senpuu Kyaku initialize]
type = changestate
value = 3800
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 3000
triggerall = P2Bodydist x = [-60,90]
triggerall = p2dist y = [-160, 0]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(10) <= 0
trigger1 = stateno = 52 && animtime = 0 && p2movetype = H && random < (300 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 1520 && time = 3 && p2movetype = H && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, misogi initialize]
type = changestate
value = 3930
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 3000
triggerall = P2Bodydist x = [-60,90]
triggerall = p2dist y = [-360,-200]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(10) <= 0
trigger1 = stateno = 52 && animtime = 0 && p2movetype = H && random < (300 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 1520 && time = 3 && p2movetype = H && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, KKZ initialize]
type = changestate
value = 4800
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 3000
triggerall = P2Bodydist x = [-60,90]
triggerall = p2dist y = [-360,-200]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(10) <= 0
trigger1 = stateno = 52 && animtime = 0 && p2movetype = H && random < (300 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 1520 && time = 3 && p2movetype = H && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, Metsu Hadouken!]
type = changestate
value = 3875
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 3000
triggerall = P2Bodydist x = [-60,90]
triggerall = p2dist y = [-260, 0]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(10) <= 0
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 52 && animtime = 0 && p2movetype = H
trigger2 = stateno = 1520 && time = 3 && p2movetype = H

[State -1, Joudan Geri]
type = changestate
value = 4480
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 1000
triggerall = P2Bodydist x = [0,120]
triggerall = p2dist y = [-44,0]
triggerall = enemynear, backedgedist <= 30
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(10) <= 0
trigger1 = stateno = 52 && animtime = 0 && p2movetype = H && random < (500 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 1520 && time = 3 && p2movetype = H && random < (500 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 420 && movecontact

[State -1]
type = ChangeState
value = 4030
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = var(10) <= 0
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = var(46) < 90
trigger1 = stateno = 3481 && movehit && time = 45 && p2bodydist x > 50
trigger2 = stateno = 3910 && movehit && time > 50 && p2bodydist x > 0 && pos y >= -100 && random < (300 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 4060 && pos y > -100 && p2movetype = H && time = 70 && random < (300 * (AIlevel ** 2 / 64.0))

[State -1]
type = ChangeState
value = 4060
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = var(10) <= 0
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = var(46) < 90
trigger1 = stateno = 3910 && movehit && time > 50 && random < (300 * (AIlevel ** 2 / 64.0))
trigger2 = numhelper(3) >= 1
trigger2 = stateno = 4030 && ((helper(3), movehit && helper(3), numtarget)) && time > 30
trigger3 = stateno = 3860 && movecontact && time >= 40 && random < (300 * (AIlevel ** 2 / 64.0)) && var(6) = 0

[State -1]
type = ChangeState
value = 4050
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = var(10) <= 0
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = var(46) < 90
trigger1 = stateno = 3910 && movehit && time > 50 && p2bodydist x > 0
trigger2 = stateno = 3860 && movecontact && time >= 40 && random < (300 * (AIlevel ** 2 / 64.0)) && var(6) = 0
trigger3 = stateno = 4060 && pos y > -100 && p2movetype = H && time = 70

[State -1]
type = ChangeState
value = 3900
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = var(10) <= 0
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = var(46) < 90
triggerall = random < (1000 * (AIlevel ** 2 / 64.0))
trigger1 = stateno = 3481 && movehit && time = 45 && p2bodydist x <= 50

[State -1, Messatsu Joudan Geri]
type = changestate
value = 4480
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 1000
triggerall = P2Bodydist x = [-20,40]
triggerall = p2dist y = [-70, 0]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(46) < 90
triggerall = var(10) <= 0
trigger1 = stateno = 4044 && p2movetype = H && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 3932 && time > 10 && random < (550 * (AIlevel ** 2 / 64.0))

[State -1, Misogi Drop]
type = changestate
value = 3930
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 1000
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(46) < 90
triggerall = var(10) <= 0
trigger1 = stateno = 4044 && p2movetype = H && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = numhelper(3) >= 1
trigger2 = stateno = 3885 && (helper(3), movehit && helper(3), numtarget) && random < (200 * (AIlevel ** 2 / 64.0))
trigger3 = numhelper(8)
trigger3 = stateno= 4800 && (helper(8), movehit && helper(8), numtarget) && time > 60

[State -1, Shinkuu Hadouken]
type = changestate
value = 3885
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 1000
triggerall = P2Bodydist x = [-20,40]
triggerall = p2dist y = [-70, 0]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(46) < 90
triggerall = var(10) <= 0
trigger1 = stateno = 4044 && p2movetype = H && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 3932 && time > 10 && random < (450 * (AIlevel ** 2 / 64.0))

[State -1, Shin Shoryuken]
type = changestate
value = 3480
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 1000
triggerall = P2Bodydist x = [-20,40]
triggerall = p2dist y = [-70, 0]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(46) < 90
triggerall = var(10) <= 0
trigger1 = stateno = 4044 && p2movetype = H && random < (700 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 3932 && time > 10 && random < (450 * (AIlevel ** 2 / 64.0))

[State -1, Shinkuu Tatsumaki Senpuu Kyaku initialize]
type = changestate
value = 3800
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 1000
triggerall = P2Bodydist x = [-90,90]
triggerall = p2dist y = [-160, 0]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(10) <= 0
triggerall = var(46) < 90
trigger1 = stateno = 4044 && p2movetype = H && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 3932 && time > 10 && random < (110 * (AIlevel ** 2 / 64.0))

[State -1, KKGRZ]
type = changestate
value = 4800
triggerall = roundstate = 2
triggerall = AILevel && NumEnemy
triggerall = power >= 1000
triggerall = P2Bodydist x = [-120,120]
triggerall = p2dist y = [-330, 0]
triggerall = statetype != A
triggerall = roundstate = 2
triggerall = var(10) <= 0
triggerall = var(46) < 90
trigger1 = stateno = 4044 && p2movetype = H && random < (300 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 3932 && time > 10 && random < (710 * (AIlevel ** 2 / 64.0))

[State -1, Standing Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && (statetype = S || stateno = 5120)
trigger1 = command = "holdfwd" && command != "holdback" && command != "holdup" && command != "holddown"
trigger1 = ctrl || (stateno = [700, 701]) || stateno = 5120
trigger1 = var(21) := 1
attr = SA, AA, AP
stateno = 700
slot = 0
time = 8

[State -1, Crouching Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype != A
trigger1 = command = "holddown" && command != "holdfwd" && command != "holdback" && command != "holdup"
trigger1 = ctrl || (stateno = [700, 701]) || stateno = 5120
trigger1 = var(21) := 2
attr = C, AA, AP
stateno = 701
slot = 0
time = 8

[State -1, Air Parry]
type = hitoverride
trigger1 = !AIlevel
trigger1 = roundstate = 2 && statetype = A
trigger1 = command = "holdfwd" && command != "holdback" && command != "holdup" && command != "holddown"
trigger1 = ctrl || stateno = 702
trigger1 = var(21) := 3
attr = SA, AA, AP
stateno = 702
forceair = 1
slot = 0
time = 7


[State -1, Jab Ground Rec]
type = ChangeState
value = 2003
triggerall = AILevel && NumEnemy
triggerall = alive = 1 && canrecover = 1 && pos y > -5
trigger1 = stateno = 5050 || stateno = 5071
trigger1 = random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Strong Ground Rec]
type = ChangeState
value = 2002
triggerall = AILevel && NumEnemy
triggerall = alive = 1 && canrecover = 1 && pos y > -5
trigger1 = stateno = 5050 || stateno = 5071
trigger1 = random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Fierce Ground Rec]
type = ChangeState
value = 2001
triggerall = AILevel && NumEnemy
triggerall = alive = 1 && canrecover && pos y > -5
trigger1 = stateno = 5050 || stateno = 5071
trigger1 = random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Fall Recovery]
type = changestate
value = 5210
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Fall Recovery]
type = changestate
value = 5200
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT

[State -1, random backdash]
type = changestate
value = 105
triggerall = AILevel && NumEnemy && ctrl = 1
triggerall = statetype != A
triggerall = backedgebodydist > 80
triggerall = (stateno != [100, 101]) && (stateno != [105, 106])
trigger1 = p2movetype != A
trigger1 = P2Bodydist x = [20,200]
trigger1 = stateno = 0 && random < (800 * (AIlevel ** 2 / 64.0))

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && (stateno != [100, 107]) && var(10) <= 0
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)) * (AIlevel ** 2 / 64.0))

;-------------------------New Ai--------------------------------------------------;
[State -1, Standing Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl && random < (125 * (AIlevel ** 2 / 64.0))) || ((stateno = [700, 701]) && random < (750 * (AIlevel ** 2 / 64.0)))
trigger1 = var(21) := 1
attr = SA, AA, AP
stateno = 700
slot = 0
time = 8

[State -1, Crouching Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl && random < (125 * (AIlevel ** 2 / 64.0))) || ((stateno = [700, 701]) && random < (750 * (AIlevel ** 2 / 64.0)))
trigger1 = var(21) := 2
attr = C, AA, AP
stateno = 701
slot = 0
time = 8

[State -1, Air Parry]
type = hitoverride
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
trigger1 = (ctrl && random < (125 * (AIlevel ** 2 / 64.0))) || (stateno = 702 && random < (750 * (AIlevel ** 2 / 64.0)))
trigger1 = var(21) := 3
attr = SA, AA, AP
stateno = 702
forceair = 1
slot = 0
time = 7

[State -1, Reset Parry]
type = hitoverride
trigger1 = (!ctrl && (stateno != [700, 702]) && stateno != 5120) || var(20)
trigger2 = movetype != I || (stateno = [100, 106]) || (stateno = [120, 132])
trigger3 = !AIlevel && (command = "holdback" || command = "holdup")
trigger4 = (statetype = S || statetype = C) && var(21) != 1 && var(21) != 2
trigger5 = statetype = A && var(21) != 3
slot = 0
time = 0

[State -1, Fall Recovery]
type = changestate
value = 5210
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Fall Recovery]
type = changestate
value = 5200
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))

[State -1, shungokusatsu]
type = changestate
value = 4000
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && !var(20)
triggerall = !(enemynear, ctrl) && (p2stateno != 40) && (p2stateno != [5030, 5119])
triggerall = (p2bodydist x = [ -160, 160]) && (p2dist y = [ -120, 0]) && p2statetype != L
triggerall = (enemynear, vel y = 0) || (enemynear, vel y > 0 && enemynear, vel x < 0)
trigger1 = ctrl && (p2bodydist x = [0, 60]) && (enemynear, statetype != A) && random < (200 * (AIlevel ** 2 / 64.0))
;trigger2 = stateno = 1400 && animelemtime(6) >= 0 && (p2bodydist x = [0, 50]) && p2statetype != A && random < (250 * (AIlevel ** 2 / 64.0))

