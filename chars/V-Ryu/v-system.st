;====================== V SKILL PARRY 1 ==========================
[Statedef 4000]
type    = S
physics = S
movetype= I
anim = 4700
ctrl = 0
velset = 0,0
sprpriority = 1
poweradd = 0;ifelse((prevstateno = [200,2999]),-300,36)

[State -1, Standing Parry]
type = hitoverride
trigger1 = time = [2,8]
attr = SCA,NA,SA,HA,NP,SP,HP
stateno = 4001
slot = 0
time = 0

[State 700, Spark]
type = explod
trigger1 = animelem = 1
anim = 4791
ID = 4791
sprpriority = 0
postype = p1
pos = 0,0
pausemovetime = 60
removetime = -2
removeongethit = 0
ownpal = 1
scale = 1, 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S10,0+(random%4)
channel = 0

[State 700, Snd]
type = playsnd
trigger1 = !time
value = s0,2
channel = 1

[State 820, StateChange]
type = ChangeState
trigger1 = animtime = 0
;trigger1 = (Command != "focusy" || Command != "focusb")
;trigger2 = var(16) >=50
value = 0
ctrl = 1
;====================== V SKILL PARRY 2 ==========================
[Statedef 4001]
type    = S
physics = S
movetype= I
anim = 4701
ctrl = 0
velset = 0,0
sprpriority = 1

[State 0, VarAdd]
type = VarAdd
trigger1 = time = 0
v = 42
value = 100
ignorehitpause = 1

[State 700, Pause]
type = pause
trigger1 = !time && numenemy
trigger1 = (enemynear, movehit = 1)
time = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
movetime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
endcmdbuftime = ifelse((enemynear, hitpausetime = [0, 15]), 15 -(enemynear, hitpausetime), 0)
pausebg = 0

[State 701, Flash]
type = palfx
trigger1 = !time
add = 55, 55, 155
sinadd = -55, -55, -155, 30
time =7

[State 700, Snd]
type = playsnd
trigger1 = !time
value = s4090,0
channel = 2

[State 700, Snd]
type = playsnd
trigger1 = !time
value = s4000,0
channel = 3

[State 700, Spark]
type = explod
trigger1 = animelem = 1
anim = 4790
ID = 4790
sprpriority = 5
postype = p1
pos = 31, -69
pausemovetime = 60
removetime = -2
removeongethit = 1
ownpal = 1
scale = 0.5, 0.5

[State 700, No walking]
type = assertspecial
trigger1 = 1
flag = nowalk

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 5
ampl = -3

[State 760, Pause]
type = pause
trigger1 = !time
time = 15
movetime = 15
endcmdbuftime = 15
pausebg = 0

;[State 760, Pause]
;type = pause
;trigger1 = time = 5
;time = 15
;movetime = 15
;endcmdbuftime = 15
;pausebg = 0

[State 0, CtrlSet]
type = CtrlSet
trigger1 = animelem = 2
value = 1
ignorehitpause = 1

[State 760, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 820, StateChange]
type = ChangeState
trigger1 = animtime = 0
;trigger1 = (Command != "focusy" || Command != "focusb")
;trigger2 = var(16) >=50
value = 0
ctrl = 1
;===================== V - REVERSAL ====================================
[Statedef 4100]
type    = S
movetype= A
physics = S
anim = 4100
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State 750, Super Pause]
type = superpause
trigger1 = !time
time = 20
movetime = 20
p2defmul = 1
anim = -1
sound = -1;s0, 750
darken = 0

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8200
ID = 8200
name = "Carga"
postype = p1
pos = -27,-45
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[state -2, Redyuce V-GAUGE]
type = varadd
trigger1 = time = 0
v = 42
value = -ceil(var(40)/2)

;[State 750, Button]
;type = varset
;trigger1 = !time && !AIlevel
;var(10) = (command = "412k")
;ignorehitpause = 1

;[State 750, Button AI]
;type = varset
;trigger1 = !time && AIlevel
;var(10) = ifelse((p2statetype = A), 0, ifelse((p2statetype = C), 1, ifelse(random < 500, 0, 1)))
;ignorehitpause = 1

[State 750, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 750, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 18
value = S10,4+(random%2)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 18
value = S0,5
channel = 2

;[State 750, Snd]
;type = playsnd
;trigger1 = !time
;value = 4, 0
;channel = 0

;[State 750, SuperPause FX]
;type = helper
;trigger1 = !time
;helpertype = normal
;stateno = 8350
;ID = 8350
;name = "Zero Counter"
;postype = p1
;pos = 25, -63
;supermovetime = 255
;ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = time = 18
anim = 7170
ID = 7170
pos = -25,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = .35,.25
removetime = -2
supermovetime = 255
pausemovetime = 255
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 2900, Hit]
type = hitdef
;trigger1 = !var(16) && var(15) < 1
trigger1 = animelem = 5
attr = S, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 50,0
pausetime = 16, 16
guard.pausetime = 16, 16
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
hitsound = s1,2
guardsound = s2,0
sparkno = -1+0*(var(33):=8032)**0
guard.sparkno= -1+0*(var(34):=8105)
sparkxy = -10+0*(var(35):=105),var(36):=-71
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -5.54, -5.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.54, -5.25
air.cornerpush.veloff = 0
yaccel = 0.58
fall = 1
fall.recover = 1
fall.recovertime = 120;24
forcestand = 1
getpower = 0, 0
givepower = 0, 36
envshake.time = 16
envshake.ampl = 8
envshake.freq = 120
kill = 0

[State 750, End]
type = changestate
trigger1 = animtime = 0;time >= 15
value = 0;ifelse(var(10) = 1, 2910, 2900)
ctrl = 1
;======================== V TRIGGER DENJIN HADOUKEN ============================
[StateDef 4200]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 4200
poweradd = 0
sprpriority = 2

[State 3000, Superpause]
type = superpause
trigger1 = time = 0
time = 15
movetime = 15
p2defmul = 1
unhittable = 1
anim = -1
sound = -1
darken = 0
;poweradd = -3000

;Generated by Fighter Factory PalFX Editor
;[State 0, PalFXWiz]
;type = PalFX
;trigger1 = 1;time = 1
;time =  2
;add = 100,-200,-200;0,-200,-200
;mul = 256,256,256
;sinadd = 40,80,40,10
;invertall = 0
;color = 100
;ignorehitpause = 0
;persistent = 1


[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8400
ID = 8400
name = "Carga"
postype = p1
pos = -13,-72
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[state -2, Reduce V-GAUGE]
type = varadd
trigger1 = time = 0
v = 42
value = -ceil(var(40)/2)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 50
value = SCA
time = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S3000,0
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S1000,0
channel = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S1090,0
channel = 2

[State 0, Explod]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 7102
ID = 7102
pos = 35,-2
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
;ignorehitpause =

[State 0, Helper]
type = Helper
trigger1 = anim =4200
trigger1 = animelem = 7
helpertype = normal
stateno = 4290
ID = 4290
name = "Hadouken"
postype = p1
pos = 80, -70
size.xscale = 0.5
size.yscale = 0.45
ownpal = 1

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;======================== DENJIN HADO KEN =============================
[Statedef 4290]
type = S
physics = N
movetype = A
anim = 4290
ctrl = 0
sprpriority = 3
juggle = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, Explod]
type = Explod
trigger1 = time = 0
trigger1 = numexplod(4290)< 1
anim = 4290
ID =  4290
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = .45,.45
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = 3.5;ifelse(var(10) = 3, 6, ifelse(var(10) = 2, 4.5, 3))
y = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 1005, Assert]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(9 * root, fvar(12)),0
animtype = medium
hitflag = MAF
guardflag = MA
pausetime = 8*(var(2) < 7),9
sparkno = -1
guard.sparkno = -1;s7001
sparkxy = -10, 0
hitsound = s7000,9
guardsound = s2,1
ground.type = high
ground.slidetime = ceil(16*ifelse((var(9)=1),1.5,1))
ground.hittime = ceil(16*ifelse((var(9)=1),1.5,1))
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -4
air.fall = 1
fall.recover = 1
fall.recovertime = 30
getpower = 80,40
givepower = 40,20
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
palfx.time = 20
palfx.add = 10, 10, 50
palfx.sinadd = -20, -20, -49, 8
palfx.color = 200

[State FireB]
type = Explod
trigger1 = numenemy
trigger1 = movehit = 1
trigger1 = numexplod(7200) < 1
ignorehitpause = 1
anim = 7200
id = 7200
scale = 0.5, 0.5
postype = p2
pos = 0, -50
random = 50, 30
bindtime = -1
sprpriority = 2
ownpal = 1

[State FireA]
type = Explod
trigger1 = numenemy
trigger1 = movehit = 1
trigger1 = numexplod(7200) < 1
ignorehitpause = 1
anim = 7200
id = 7200
scale = 0.5, 0.5
postype = p2
pos = 30, -80
random = 50, 30
bindtime = -1
sprpriority = 2
ownpal = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = numenemy
trigger1 = movehit = 1
trigger1 = numexplod(7200) < 1
value = S7000,9
volumescale = 200
channel = -1

[State 1005, Miss]
type = hitdef
trigger1 = numenemy
trigger1 = (enemynear, stateno = [5070, 5071])
attr = S, SP
hitflag =

[State 1000, Hadouken]
type = helper
trigger1 = movecontact && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8105, 8032)
ID = 8020
name = "hitspark"
postype = p1
pos = 5, 2
facing =-1
size.xscale = .5
size.yscale = .5
ownpal = 1
ignorehitpause = 1

[State 1006, Counter FX]
type = helper
trigger1 = movecontact = 1 && numtarget && var(9)
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = 8083
ID = 8080
name = "Counter FX"
postype = p1
pos = 10, 0
facing =-1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1
pausemovetime = 65535
supermovetime = 65535

[State 1005, Counter Flag]
type = varset
trigger1 = numenemy
trigger1 = movecontact != 1
var(9) = (enemynear, movetype = A)

;combo and dampener------------------
[State 1005, Comboflag]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 0, Dampener]
type = ParentVarAdd
triggerall = (root,fvar(12)) > .10
trigger1 = prevstateno != stateno
trigger1 = (enemynear,prevstateno = [5000,5999])
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
fv = 12
value = -.25
ignorehitpause = 1
persistent = 0
;combo and dampener end------------------

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(1) = 1
value = s7000,8
channel = 5
;volumescale = 150

[State 1025, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 4290

[State 1025, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 7, 4290, 4291)
ignorehitpause = 1

[State 1025, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1025, hitvar]
type = varadd
trigger1 = !time
var(2) = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = pos x != [ -250, 250]
trigger2 = movecontact

[State 1005, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 7, 4290, 4291)
ignorehitpause = 1

[State 1005, End]
type = destroyself
trigger1 = pos x != [ -250, 250]
;--------------------hadouken end ------------------------------------------
[Statedef 4291]
physics = N
anim = 9741
velset = 1, 0
ctrl = 0
sprpriority = 4

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
value = 4290

[State 1005, Assert]
type = trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 1091
ID = 1091
pos = 0,0
postype = p1
bindtime = 1
scale = .35,.25
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = -2

[State 1006, Snd]
type = playsnd
trigger1 = !time
value = s1090,1
channel = 5
volumescale = 130
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !animtime

[State 1006, End]
type = destroyself
trigger1 = !animtime
trigger2 = time> 1
;=============================== V - GAUGE FACING 1 ==================================
[Statedef 6500]
physics = N
anim = 9741
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, Helper]
type = Helper
triggerall = roundstate = 2
triggerall = root,stateno != [2000,3999]
triggerall = numhelper(6503)= 0
trigger1 = root,var(43)=1
trigger1 = root,var(44)=0
helpertype = normal
name = "circlefullgauge"
ID = 6503
stateno = 6503
postype = p1
pos = -122,7
;pos = -17,-1
;postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 255
pausemovetime = 255
ignorehitpause = 1
persistent = 1

[State 0, Helper]
type = Helper
triggerall = roundstate = 2
triggerall = root,stateno != [2000,3999]
triggerall = numhelper(65030)= 0
trigger1 = root,var(43)=2
trigger1 = root,var(44)=1
helpertype = normal
name = "circlefullgauge2"
ID = 65030
stateno = 6504
postype = p1
pos = -145,4
;pos = -40,-5
;postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 255
pausemovetime = 255
ignorehitpause = 1
persistent = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[state 0, posset]
type = posset
trigger1 = 1
x = 0
y = 0
ignorehitpause = 1

;[State 8405, Bind]
;type = bindtoroot
;trigger1 = 1
;pos = -1,9
;time = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = root,var(42)>=ceil((root,var(40)/2))
trigger1 = (gametime%3)
time = 1
add = 240,180,180
mul = 250,190,190
invertall = 0
color = 256
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = numexplod(6501) = 0
anim = 6501
ID = 6501
postype = back
pos = 55, 175
;pos = 0,0
;postype = p1
;facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .0625*.75,.25*.75
sprpriority = -5
ownpal = 0
removeongethit = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = (root,var(42))>=(root,var(40))
ID = 6501
scale = .5*.75,.5*.75

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = (root,var(42))<(root,var(40))
ID = 6501
scale = root,fvar(30)*.75,.5*.75

[State 0, Explod]
type = Explod
trigger1 = numexplod(6500) = 0
anim = 6500
ID = 6500
postype = back
pos = 55, 175
;pos = 0,0
;postype = p1
;facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5*.75,.5*.75
sprpriority = -4
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = numexplod(6502) = 0
anim = 6502
ID = 6502
postype = back
pos = 55, 175
;pos = 0,0
;postype = p1
;facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5*.75,.55*.75
sprpriority = -5
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = numexplod(6503) = 0
anim = 6503
ID = 6503
postype = back
;pos = 160, 120
;pos = 0,0
;postype = p1
pos = 55-54*.75,175-6*.75
postype = p1
;facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .08*.8,.09*.85
sprpriority = -5
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = (root,var(42))>=(root,var(40))
trigger1 = numexplod(65030) = 0
anim = 6503
ID = 65030
postype = back
;pos = 160, 120
;pos = 0,0
;postype = p1
pos = 55-54*.75,175-6*.75
;facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .08*.8,.09*.85
sprpriority = -4
ownpal = 0
removeongethit = 1

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = (root,var(42))<(root,var(40))
id=65030

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = (root,var(42))>=(root,var(40))
ID = 6503
ownpal = 0
;scale = root,fvar(30)*.75,.5*.75;(root,var(42)/root,var(40))*.125,.25;ceil((root,var(42))/(root,var(40))*.125),.25;.0625,.25

[State 0, Explod]
type = Explod
trigger1 = numexplod(6504) = 0
anim = 6504
ID = 6504
postype = back
;pos = 160, 120
;pos = 0,0
;postype = p1
pos = 55-54*.75,175-7*.75
;facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .12*.8,.13*.85
sprpriority = -5
ownpal = 1
removeongethit = 1

[State 3, RemoveExplod]
type = RemoveExplod
;trigger1 = root,stateno = [2000,2999]
;trigger1 = root,facing = -1
trigger1 = root,RoundState != 2
;trigger3 = root,movetype = h

[State 1150, ChangeState]
type = DestroySelf
;trigger1 = root,stateno = [2000,2999]
;trigger1 = root,facing = -1
trigger1 = root,RoundState != 2
;trigger3 = root,movetype = h
;=============================== V - GAUGE FACING -1 ==================================
[Statedef 6501]
physics = N
anim = 9741
velset = 0,0
ctrl = 0
sprpriority = 3

[State 0, Helper]
type = Helper
triggerall = roundstate = 2
triggerall = root,stateno != [2000,3999]
triggerall = numhelper(6503)= 0
trigger1 = root,var(43)=1
trigger1 = root,var(44)=0
helpertype = normal
name = "circlefullgauge"
ID = 6503
postype = back
;pos = 160, 120
;pos = 0,0
;postype = p1
pos = 55-54*.75,175-6*.75
;facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .08*.8,.09*.85
sprpriority = -4
ownpal = 0
removeongethit = 1

[State 0, Helper]
type = Helper
triggerall = roundstate = 2
triggerall = root,stateno != [2000,3999]
triggerall = numhelper(65030)= 0
trigger1 = root,var(43)=2
trigger1 = root,var(44)=1
helpertype = normal
name = "circlefullgauge2"
ID = 65030
stateno = 6504
postype = p1
pos = -145,4
;pos = -40,-5
;postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 255
pausemovetime = 255
ignorehitpause = 1
persistent = 1
;stateno = 6504
;pos = -40,-5
;postype = p1
;facing = 1
;keyctrl = 0
;ownpal = 1
;supermovetime = 255
;pausemovetime = 255
;ignorehitpause = 1
;persistent = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[state 0, posset]
type = posset
trigger1 = 1
x = 0
y = 0
ignorehitpause = 1

;[State 8405, Bind]
;type = bindtoroot
;trigger1 = 1
;pos = -1,9
;time = 1

[State 0, PalFXWiz]
type = PalFX
trigger1 = root,var(42)>=ceil((root,var(40)/2))
trigger1 = (gametime%3)
time = 1
add = 240,180,180
mul = 250,190,190
invertall = 0
color = 256
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = numexplod(6501) = 0
anim = 6501
ID = 6501
postype = back
pos = 55, 175
;pos = 0,0
;postype = p1
;facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .0625*.75,.25*.75
sprpriority = -5
ownpal = 0
removeongethit = 1
;postype = p1
;facing = 1
;bindtime = -1
;removetime = -1
;pausemovetime = -1
;supermovetime = -1
;scale = .0625*.75,.25*.75
;sprpriority = -5
;ownpal = 0
;removeongethit = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = (root,var(42))>=(root,var(40))
ID = 6501
scale = .5*.75,.5*.75

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = (root,var(42))<(root,var(40))
ID = 6501
scale = root,fvar(30)*.75,.5*.75;(root,var(42)/root,var(40))*.125,.25;ceil((root,var(42))/(root,var(40))*.125),.25;.0625,.25

[State 0, Explod]
type = Explod
trigger1 = numexplod(6500) = 0
anim = 6500
ID = 6500
postype = back
pos = 55, 175
;pos = 0,0
;postype = p1
;facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5*.75,.5*.75
sprpriority = -4
ownpal = 1
removeongethit = 1
;pos = 0,0
;postype = p1
;facing = 1
;bindtime = -1
;removetime = -1
;pausemovetime = -1
;supermovetime = -1
;scale = .5*.75,.5*.75
;sprpriority = -4
;ownpal = 1
;removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = numexplod(6502) = 0
anim = 6502
ID = 6502
postype = back
pos = 55, 175
;pos = 0,0
;postype = p1
;facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .5*.75,.55*.75
sprpriority = -5
ownpal = 1
removeongethit = 1
;pos = 0,0
;postype = p1
;facing = 1
;bindtime = -1
;removetime = -1
;pausemovetime = -1
;supermovetime = -1
;scale = .5*.75,.55*.75
;sprpriority = -5
;ownpal = 1
;removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = numexplod(6503) = 0
anim = 6503
ID = 6503
postype = back
;pos = 160, 120
;pos = 0,0
;postype = p1
pos = 55-54*.75,175-6*.75
postype = p1
;facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .08*.8,.09*.85
sprpriority = -5
ownpal = 1
removeongethit = 1
;pos = -54*.75,-7*.75
;postype = p1
;facing = 1
;bindtime = -1
;removetime = -1
;pausemovetime = -1
;supermovetime = -1
;scale = .08*.8,.09*.85
;sprpriority = -5
;ownpal = 1
;removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = (root,var(42))>=(root,var(40))
trigger1 = numexplod(65030) = 0
anim = 6503
ID = 65030
postype = back
;pos = 160, 120
;pos = 0,0
;postype = p1
pos = 55-54*.75,175-6*.75
;facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .08*.8,.09*.85
sprpriority = -4
ownpal = 0
removeongethit = 1

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = (root,var(42))<(root,var(40))
id=65030

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = (root,var(42))>=(root,var(40))
ID = 6503
ownpal = 0
;scale = root,fvar(30)*.75,.5*.75;(root,var(42)/root,var(40))*.125,.25;ceil((root,var(42))/(root,var(40))*.125),.25;.0625,.25

[State 0, Explod]
type = Explod
trigger1 = numexplod(6504) = 0
anim = 6504
ID = 6504
postype = back
;pos = 160, 120
;pos = 0,0
;postype = p1
pos = 55-54*.75,175-7*.75
;facing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = .12*.8,.13*.85
sprpriority = -5
ownpal = 1
removeongethit = 1

[State 3, RemoveExplod]
type = RemoveExplod
;trigger1 = root,stateno = [2000,2999]
trigger1 = root,facing = 1
trigger2 = root,RoundState != 2
;trigger3 = root,movetype = h

[State 1150, ChangeState]
type = DestroySelf
;trigger1 = root,stateno = [2000,2999]
trigger1 = root,facing = 1
trigger2 = root,RoundState != 2
;trigger3 = root,movetype = h
;=========================== GAUGE FULL EFFECT ==============================
[Statedef 6503]
physics = N
velset = 0, 0
anim = 6505
sprpriority = -10

;[State 0, BindToParent]
;type = BindToParent
;trigger1 = 1
;time = 1
;pos = -17,-1
;ignorehitpause = 1

[State 8200, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8200, Scale]
type = angledraw
trigger1 = 1
scale = 0 + (0.04 * time), 0 + (0.04 * time)

[State 8200, Trans]
type = trans
trigger1 = time >5
trans = addalpha
alpha = ceil(256 -17.1 * time), 256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7000,0
volume = 0
channel = 12

[State 8200, End]
type = destroyself
trigger1 = time >= 15
;trigger2 = root,stateno = [2000,2999]
trigger2 = root,RoundState != 2
;=========================== GAUGE FULL EFFECT 2 ==============================
[Statedef 6504]
physics = N
velset = 0, 0
anim = 6505
sprpriority = -10

;[State 0, BindToParent]
;type = BindToParent
;trigger1 = 1
;time = 1
;pos = -40,-5
;ignorehitpause = 1

[State 8200, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8200, Scale]
type = angledraw
trigger1 = 1
scale = 0 + (0.04 * time), 0 + (0.04 * time)

[State 8200, Trans]
type = trans
trigger1 = time >5
trans = addalpha
alpha = ceil(256 -17.1 * time), 256

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7000,0
volume = 0
channel = 12

[State 8200, End]
type = destroyself
trigger1 = time >= 15
trigger2 = root,stateno = [2000,3999]
trigger3 = root,RoundState != 2
;-2 STATES =====================================================================
[Statedef -2]
;============================ DETECT TRAINING MODE =============================
[State -2, Increment]
type = VarAdd
trigger1 = var(59)=[0,33]
trigger1 = StateNo!=5900
var(59) = 1
IgnoreHitPause = 1

[State -2, Training Mode?]
type = VarSet
trigger1 = power=const(data.power) && !var(7)
trigger1 = var(59)=31 || var(59)=1
trigger1 = NumEnemy<2 && !NumPartner
trigger1 = RoundNo=1 && MatchNo=1 ;&& ID=[32,33]
trigger1 = life=[const(data.life)-1,const(data.life)]
trigger1 = RoundState<3
var(59) = -2147483648
IgnoreHitPause = 1

;[State -2, Not Training Mode?]
;type = VarSet
;triggerall = var(59)<31
;trigger1 = NumEnemy>1 || NumPartner
;trigger2 = MatchNo>1 || RoundNo>1
;trigger3 = RoundState>2 || ID!=[32,33]
;var(59) = 31
;IgnoreHitPause = 1

;[State -2, PrevPower]
;type = VarSet
;trigger1 = var(59)=[1,30]
;var(7) = power
;IgnoreHitPause = 1


; ONLY if desired:
;[State -2, Start Full]
;type = PowerSet
;triggerall = RoundNo=1; or !RoundsExisted, if you want to be a little cheaper in turns mode; (or omit this line entirely, if player starts every round with full power)
;trigger1 = var(59)=31
;trigger2 = StateNo=5900
;trigger2 = var(59)=34
;value = const(data.power)
;IgnoreHitPause = 1

;=========================== SND ===============================================
[State -2, KO snd]
type = varset
trigger1 = alive && var(18) > 0
trigger2 = !alive && var(18) < 2
var(18) = ifelse(alive, 0, var(18) + 1)
ignorehitpause = 1

[State -2, KO snd]
type = playsnd
trigger1 = !alive && var(18) = 1
trigger1 = var(18) := 2
value = 5500,0;11, ifelse((var(1) = 2), 2, 1) + 2 * (stateno = 5130)
;============================== DEBUG ====================================
[State -2, Debug]
type=displaytoclipboard
trigger1= 1
text="Damage=%f Defence=%f V-Gauge=%f"
params=  fvar(12),fvar(9),var(42)
ignorehitpause=1
;========================= REVENGE SYSTEM ================================
[State -2, V-Gauge Reset Round2]
type = varset
trigger1 = RoundState != 2
v = 42
value = 0

[State -2, VarSet]
type = VarSet
trigger1 = 1
v = 40
value = ceil(lifemax*.8)
ignorehitpause = 1

[State -2, V-Gauge At Max]
type = varset
trigger1 = (var(42))>=(var(40)); Damage Overflow
;trigger2 = var(59)<0 ; Training mode
v = 42
value = var(40)

[State -2, V-Gauge Training Mode]
type = varadd
trigger1 = (var(42))<(var(40))
trigger1 = var(59)<0 ; Training mode
v = 42
value = 7

[state -2]
type = varadd
;trigger1 = (var(59)&63)<31 && var(59)>=0 ;not determined mode yet
;trigger1 = (var(59)&63)>30 ;    Not in Training Mode
trigger1 = (var(41)-life) > 0
v = 42
value = (var(41)-life)

[State -2, Life measure 2]
Type = VarSet
Trigger1 = 1
var(41) = life
ignorehitpause = 1

[State -2, Life measure 2]
Type = VarSet
Trigger1 = 1
fvar(30) = ((var(42)*.5)/var(40))
ignorehitpause = 1

[State -2, V-Gauge]
type=helper
trigger1 = numhelper(6500)=0
trigger1 = numhelper(6501)=0
trigger1 = facing = 1
helpertype=normal
stateno=6500
ID=6500
name="V-GAUGE"
postype = p1
pos = 0,0
postype=p1
pos= 0,0
facing = 1
keyctrl = 1
ownpal = 1
pausemovetime = 9999
supermovetime = 9999

[State -2, V-Gauge]
type=helper
trigger1 = numhelper(6501)=0
trigger1 = numhelper(6500)=0
trigger1 = facing = -1
helpertype=normal
stateno=6500
ID=6500
name="V-GAUGE"
postype=p1
pos= 0,0
facing = 1
keyctrl = 1
ownpal = 1
pausemovetime = 9999
supermovetime = 9999

[State -2, Gauge Full Indicator];1er circulo
type = Varadd
trigger1 = var(44) = 0
trigger1 = var(43) = 0
trigger1 = (var(42))>=((var(40)/2))
v = 43
value = 1
ignorehitpause = 1

[State -2, Gauge Full Indicator];2do circulo
type = Varadd
trigger1 = var(44) = 1
trigger1 = var(43) = 1
trigger1 = (var(42))>=((var(40)))
v = 43
value = 1
ignorehitpause = 1

[State -2, VarSet];1er circulo  helper detech switch
type = Varadd
trigger1 = numhelper(6503)>0
trigger1 = var(44) = 0
v = 44
value = 1

[State -2, VarSet];1er circulo reset
type = Varset
trigger1 = (var(42))<((var(40)/2))
;trigger1 = var(44) = 0
v = 43
value = 0

[State -2, VarSet];2do circulo helper detech switch
type = Varadd
trigger1 = numhelper(65030)>0
trigger1 = var(44) = 1
v = 44
value = 1

[State -2, VarSet];1er circulo reset
type = Varset
trigger1 = (var(42))<((var(40)/2))
v = 44
value = 0

[State -2, VarSet];2do circulo reset
type = Varadd
trigger1 = var(44)=2
trigger1 = (var(42))<((var(40)))
v = 43
value = -1

[State -2, VarSet];2do circulo reset
type = Varadd
trigger1 = var(44)=2
trigger1 = (var(42))<((var(40)))
v = 44
value = -1
;============================ HITSPARKS ==================================
[State -2, Hit Detection]
type = varset
trigger1 = movecontact = 1 && var(30) < 0
var(30) = hitpausetime
ignorehitpause = 1

[State -2, Hitspark level light];FOR COUNTER
type = varset
trigger1 = var(33)= [8000,8009]
var(32) = 0
ignorehitpause = 1

[State -2, Hitspark level medium];FOR COUNTER
type = varset
trigger1 = var(33)= [8010,8019]
var(32) = 1
ignorehitpause = 1

[State -2, Hitspark level hard];FOR COUNTER
type = varset
trigger1 = var(33)= [8020,8029]
var(32) = 2
ignorehitpause = 1

[State -2, Hitspark level special];FOR COUNTER
type = varset
trigger1 = var(33)= [8030,8039]
var(32) = 3
ignorehitpause = 1

[State -2, Sparks]
type=helper
triggerall = movecontact = 1 && var(30) = hitpausetime
;triggerall = p2movetype=h;!movereversed;numtarget
trigger1= movehit=1 && numenemy
trigger1= var(33) = [8000,8070]
trigger2= moveguarded=1 && numenemy
trigger2= var(34)=8100 || var(34)=8105
helpertype=normal
stateno=ifelse(moveguarded, var(34), var(33))
ID=8000
name="Spark"
postype=p1
pos= ifelse(p2dist x<-20,(ceil(p2dist x)),ifelse(p2dist x<var(35), ceil(p2dist x), var(35))), var(36)
facing= ifelse((p2bodydist x >=-30),-1,1)
ownpal=1
pausemovetime=65535
supermovetime=65535
ignorehitpause=1
size.xscale =1
size.yscale =1

[State -2, Counter FX]
type = helper
triggerall = stateno != [2000,4999]
triggerall = numhelper(8000) > 0
triggerall = var(33) <= 8039
trigger1 = movehit = 1 && var(30) = hitpausetime
trigger1 = numenemy && var(9)
trigger1 = !(hitdefattr = SCA, AT) ;&& (stateno != [1200, 1299]) && (stateno != [3400, 3499])
helpertype = normal
stateno = 8080+var(32);ifelse((var(33)=[8000,8004]),8070
ID = 8080
name = "Counter FX"
postype = p1
pos= ifelse(p2dist x<-20,(ceil(p2dist x)),ifelse(p2dist x<var(35), ceil(p2dist x), var(35))), var(36)
facing = -1
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, Counter Flag]
type = varset
triggerall = stateno != [2000,4000]
trigger1 = numenemy
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State -2, Hit Detection]
type = varset
trigger1 = 1
var(30) = -1

[State -2, Hit Detection]
type = varrangeset
trigger1 = movetype = I
trigger2 = movetype = H && time
first = 30
last = 36
value = -1
ignorehitpause = 1
;=========================== P2 FACING ============================
[State -2, P2 Facing]
type = targetfacing
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover) && !(target, hitfall) && (target, time <= 1)
value = ifelse(p2dist x >= 0, -1, 1)
ignorehitpause = 1
;============================== SSFIV DEFENSE ==================================
[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (FVar(8) - life)>0
trigger1 = fvar(8) < (lifemax/2)
trigger1 = fvar(8) >= (lifemax*.3)
value = floor((.95 - 1.0) * ifElse((FVar(8)-life) < life, -(FVar(8) - life),0))

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (FVar(8) - life)>0
trigger1 = fvar(8) < (lifemax*.3)
trigger1 = fvar(8) >= (lifemax*.15)
value = floor((.9 - 1.0) * ifElse((FVar(8)-life) < life, -(FVar(8) - life),0))

[State -2, DefenseMulSet]
type = LifeAdd
triggerall = Alive && MoveType = H
trigger1 = (FVar(8) - life)>0
trigger1 = fvar(8) < (lifemax*.15)
value = floor((.75 - 1.0) * ifElse((FVar(8)-life) < life, -(FVar(8) - life),0))

[State -2, Combo]
type = VarSet
trigger1 = 1
fvar(8) = life
ignorehitpause = 1

[State -2, Combo]
type = VarSet
triggerall = Alive
trigger1 = fvar(8) >= (lifemax/2)
fvar(9) = 1
ignorehitpause = 1

[State -2, Combo]
type = VarSet
triggerall = Alive ;&& MoveType = H
trigger1 = fvar(8) < (lifemax/2)
trigger1 = fvar(8) >= (lifemax*.3)
fvar(9) = 1.05
ignorehitpause = 1

[State -2, Combo]
type = VarSet
triggerall = Alive ;&& MoveType = H
trigger1 = fvar(8) < (lifemax*.3)
trigger1 = fvar(8) >= (lifemax*.15)
fvar(9) = 1.10
ignorehitpause = 1

[State -2, Combo]
type = VarSet
triggerall = Alive ;&& MoveType = H
trigger1 = fvar(8) < (lifemax*.3)
trigger1 = fvar(8) >= (lifemax*.15)
fvar(9) = 1.25
ignorehitpause = 1
;============================= SPECIAL KO  ===================
;[State -2, HyperComboFinish]
;type = Helper
;triggerall = roundstate >= 2
;triggerall = WinKo && !var(37)
;trigger1 = stateno = [3000, 3999]
;ID = 9000
;stateno = 9994
;postype = back
;pos = 0,0
;pausemovetime = 999999
;supermovetime = 999999
;ignorehitpause = 1
;ownpal = 1

;[State -2, SpecialComboFinish]
;type = Helper
;triggerall = roundstate >= 2
;triggerall = WinKo && !var(37)
;trigger1 = stateno = [1000, 1999]
;trigger2 = stateno = [2000, 2999]
;ID = 9001
;stateno = 9995;ifelse(fvar(9)=12,9020,ifelse((var(20)=[3,5]),9010,9000))
;postype = back
;pos = 0,0
;pausemovetime = 999999
;supermovetime = 999999
;ignorehitpause = 1
;ownpal = 1

[State -2,KO]
type = Varadd
trigger1 = roundstate = 3
ignorehitpause = 1
var(37) = 1

[State -2,KO]
type = Varset
trigger1 = roundstate = 0
ignorehitpause = 1
var(37) = 0
;-3 STATES =====================================================================
[Statedef -3]
;=========================== SFIV DAMAGE DAMPENER ==========================
[state -3];UNIQUE ATTACKS
type = varset
triggerall = (fvar(12)) > .10
trigger1 = stateno = 255 && !animelemtime(5)
trigger2 = stateno = 257 && !animelemtime(5)
trigger3 = stateno = 300 && !animelemtime(4)
trigger4 = stateno = 310 && !animelemtime(8)
trigger5 = stateno = 320 && !animelemtime(5)
trigger6 = stateno = 330 && !animelemtime(4)
fvar(12) = fvar(12) -.15
ignorehitpause = 1

[state -3];NORMAL ATTACKS
type = varset
triggerall = (fvar(12)) > .10
trigger1 = stateno = 200 && !animelemtime(2)
trigger2 = stateno = 210 && !animelemtime(3)
trigger3 = stateno = 220 && !animelemtime(3)
trigger4 = stateno = 230 && !animelemtime(3)
trigger5 = stateno = 240 && !animelemtime(5)
trigger6 = stateno = 250 && !animelemtime(3)
trigger7 = stateno = 400 && !animelemtime(2)
trigger8 = stateno = 410 && !animelemtime(3)
trigger9 = stateno = 420 && !animelemtime(3)
trigger10 = stateno = 430 && !animelemtime(2)
trigger11 = stateno = 440 && !animelemtime(3)
trigger12 = stateno = 450 && !animelemtime(3)
trigger13 = stateno = 600 && !animelemtime(2)
trigger14 = stateno = 610 && !animelemtime(2)
trigger15 = stateno = 620 && !animelemtime(4)
trigger16 = stateno = 630 && !animelemtime(2)
trigger17 = stateno = 640 && !animelemtime(2)
trigger18 = stateno = 650 && !animelemtime(3)
fvar(12) = fvar(12) -.15
ignorehitpause = 1

[state -3];SPECIAL
type = varset
triggerall = (fvar(12)) > .10
trigger1 = stateno = 1100 && anim = 1100 && !animelemtime(2)
trigger2 = stateno = 1101 && anim = 1101 && !animelemtime(2)
trigger3 = stateno = 1102 && anim = 1102 && !animelemtime(2)
trigger4 = stateno = 1200 && anim = 1201 && !animelemtime(2)
trigger5 = stateno = 1220 && anim = 1220 && !animelemtime(5)
trigger6 = stateno = 1300 && anim = 1300 && !animelemtime(4)
trigger7 = stateno = 1300 && anim = 1301 && !animelemtime(6)
trigger8 = stateno = 1300 && anim = 1302 && !animelemtime(6)
;trigger9 = stateno = 2100 && anim = 2100 && !animelemtime(2)
;trigger10 = stateno = 2200 && anim = 2202 && !animelemtime(2)
;trigger11 = stateno = 2210 && anim = 2202 && !animelemtime(2)
;trigger12 = stateno = 2300 && anim = 2300 && !animelemtime(6)
fvar(12) = fvar(12) -.25
ignorehitpause = 1

[state -3];EX, SUPER, ULTRA
type = varset
triggerall = (fvar(12)) > .10
trigger1 = stateno = 2100 && anim = 2100 && !animelemtime(2)
trigger2 = stateno = 2200 && anim = 2202 && !animelemtime(2)
trigger3 = stateno = 2210 && anim = 2202 && !animelemtime(2)
trigger4 = stateno = 2300 && anim = 2300 && !animelemtime(6)
fvar(12) = fvar(12) -.35
ignorehitpause = 1

[state -3];STAY AT .10
type = varset
triggerall = (fvar(12)) < .10
trigger1 = 1
fvar(12) = .10;fvar(12) -.35
ignorehitpause = 1

[State -3, Reset var when the opponent recovers]
type=varset
trigger1 = numenemy
trigger1 = (enemynear,movetype!=H)
trigger2 = !numenemy
fvar(12) = 1

[State -3, Dampener itself]
type=attackmulset
trigger1= 1
value = fvar(12)
ignorehitpause = 1
;=============================== DAMPENER END ==================================

;==================================================================================
[State -3, GetHit Snd];usar canal cero para voz
type = playsnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 700
trigger2 = gethitvar(animtype) = 1 && random < 700
trigger3 = gethitvar(animtype) = 0 && random < 700
value= 5000,(0+(random%9))
channel = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
value= 5000,(0+(random%9))
channel = 0
ignorehitpause = 1

[State 0, StopSnd]; usar canales 5 y 6 para efectos
type = StopSnd
trigger1 = movetype = h
channel = 5
ignorehitpause = 1
persistent = 1

[State 0, StopSnd]; usar canales 5 y 6 para efectos
type = StopSnd
trigger1 = movetype = h
channel = 6
ignorehitpause = 1
persistent = 1
;======================= SUPER JUMP AFTERIMAGE ==========================
[State -3, AfterImage]
type=afterimage
triggerall= time=1
trigger1= stateno=50 && ((var(13)=3) || (var(13) = 4))
time=2
timegap=1
framegap=3
length=9
palbright=0,0,0
palcontrast=100,100,100;250,80,0
palpostbright=0,0,0
paladd=0,0,0
palmul=.75,.75,.75
trans=add1
palcolor=256
;========================= V-TRIGGER AFTERIMAGE ================================
[State -3, Movement AfterImage]
type = AfterImage
triggerAll = time = 1
trigger1 = MOVETYPE !=H
trigger1 = StateNo = 4200 ;|| StateNo = 105 || StateNo = 5201 || StateNo = 5210
time = 2
timeGap = 1
frameGap = 1
length = 10
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1
;=========================== EX MOVES FX ===========================
[State -3, ExShadow]
type = afterimage
trigger1 = (stateno = [2000,2999]) && (time = 1) ;&& movetype = A ;&& var(10) = 4
time = 2
timegap = 1
framegap = 1
length = 6
palbright = 32, 32, 0
palcontrast = 128, 128, 128
paladd = -10, -10, -10
palmul = 1.1, 1, 0.5
trans = add
ignorehitpause = 1
color=0

[State -3, Ex Flash]
type = palfx
triggerall= stateno = [2000,2999]
trigger1 = !(gametime % 3)
time = 1
add = 140,80,0
color = 256
ignorehitpause = 1
;===========================SUPER LVL1 AFTERIMAGE =============
;[State -3, AfterImage]
;type=afterimage
;triggerall =time=45
;trigger1 = stateno = 3000
;trigger2 = stateno = 3005
;trigger3 = stateno = 3100 && anim = 3101
;trigger4 = stateno = 3200
;trigger5 = stateno = 3220
;trigger6 = stateno = 3400
;time=2
;timegap=1
;framegap=10
;length=21
;palbright=1,1,1
;palcontrast=128,128,128
;paladd=0,0,0
;palmul=.5,.5,.5
;trans=add1
;===========================SUPER LVL2 AFTERIMAGE ==============
;[State -3, AfterImage]
;type=afterimage
;triggerall =time=45
;trigger1 = stateno = 3050
;trigger1 = stateno = 3180
;trigger2 = stateno = 3250
;trigger3 = stateno = 3260
;trigger4 = stateno = 3700
;time=2
;timegap=1
;framegap=10
;length=21
;palbright=1,1,1
;palcontrast=80,80,180
;paladd=0,0,0
;palmul=.5,.5,.5
;trans=add1
;===========================SUPER LVL3 AFTERIMAGE ==============
[State -3, AfterImage]
type=afterimage
triggerall = time = 10
trigger1 = stateno = [3000,3999]
time=1
timegap=1
framegap=10
length=21
palbright=1,1,1
palcontrast=150,0,0
paladd=0,0,0
palmul=.5,.5,.5
trans=add1
;-------------------------AFTER IMAGE PERSIST ---------------------
[State -3, AfterImage persist]
type=afterimagetime
trigger1 = (stateno = [40,50]) && ((var(13)=3) || (var(13) = 4))
trigger1 = statetype = A
trigger2 = stateno = [2000,2999]
trigger3 = stateno = [3000,3999]
;trigger4 = stateno = 4200
ignorehitpause=1
time=2
;============================ PATCHES ==========================
[State -3, RmvExp Tatsu]
type = RemoveExplod
trigger1 = stateno !=[1200,1220]
id = 1290
ignorehitpause = 1

[State -3, Prevent Crossup]
type = width
trigger1 = movetype != H
edge = 8, 0
ignorehitpause = 1

[State -3, Underground Juggle Prevention]
type = targetbind
trigger1 = movecontact = 1
trigger1 = numtarget && numenemy
trigger1 = (target, time = 0) && (target, ID = enemynear, ID)
trigger1 = !(target, hitshakeover) && (target, pos y > 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1


