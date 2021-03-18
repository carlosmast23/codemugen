;======================== HADO KEN =============================
[Statedef 1090]
type = S
physics = N
movetype = A
anim = 1090
ctrl = 0
sprpriority = 3
juggle = 1

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1091
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, Strength]
type = varset
trigger1 = !time
var(10) = root, var(10)

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 3, 6, ifelse(var(10) = 2, 4.5, 3))
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
damage = ceil(50 * root, fvar(12)),0
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1;s7001
sparkxy = -10, 0
hitsound = s1,2
guardsound = s2,1
ground.type = High
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
pos = 10, 0
facing =-1
size.xscale = 1
size.yscale = 1
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

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = pos x != [ -250, 250]
trigger2 = movecontact

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 1091
ignorehitpause = 1

[State 1005, End]
type = destroyself
trigger1 = pos x != [ -250, 250]
;--------------------hadouken end ------------------------------------------
[Statedef 1091]
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

[State 0, Explod]
type = Explod
trigger1 = pos y > -80
trigger1 = !time
trigger1 = numexplod(7100) <3
anim = 7100
ID = 7100
pos = 5,ceil(5 - pos y)
postype = p1
facing = -1
bindtime = 1
scale = 1.5,1
sprpriority = 2
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
;======================== EX HADOU KEN =============================
[Statedef 2090]
type = S
physics = N
movetype = A
anim = 2090
ctrl = 0
velset = 0, 0
sprpriority = 3
juggle = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 2090
ID = 2090
pos = 0,0
postype = p1
bindtime = -1
scale = .625,.475
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = -1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 2092
ID = 2090
pos = -1,0
postype = p1
bindtime = -1
scale = .25,.25
sprpriority = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = -1

[State 0, Explod]
type = Explod
trigger1 = !prevstateno
trigger1 = movehit < 1
trigger1 = pos y > -150
trigger1 = !(time % 5)
anim = 7100
ID = 7100
pos = -5,ceil(7 - pos y)
postype = p1
facing = 1
bindtime = 1
scale = .55,.5
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = -2

[State 0, Explod]
type = Explod
trigger1 = prevstateno
;trigger1 = movehit > 0
trigger1 = pos y > -80
trigger1 = time = 0
anim = 7100
ID = 7141
pos = 5,ceil(5 - pos y)
postype = p1
facing = -1
bindtime = 1
scale = 1.5,1
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = -2

[State 1025, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 2090

[State 1025, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 5, 2090, 2091)
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

[State 1025, Vel]
type = velset
trigger1 = !prevstateno
trigger2 = p2movetype != h
x = 10.5
y = 0

[State 1025, Vel]
type = velset
trigger1 = prevstateno
trigger1 = p2movetype = h
x = 1
y = 0

[State 1025, Vel]
type = velset
trigger1 = prevstateno
trigger1 = time > 1
x = 10.5
y = 0

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, HP
damage = ceil(38 * root, fvar(12)),3
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 5*(var(2) < 5),7
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound = s1,2
guardsound = s2,0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, ifelse((var(2) < 5),0,-4)
ground.cornerpush.veloff = 0
air.velocity = -6, -3
air.fall = 1
fall.recover = 0
;fall.recovertime = 30
getpower = 0,0
givepower = 20,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 5
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
fall = ifelse((var(2) < 5),0,1)
sprpriority = 2

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
trigger1 = !(Target, HitShakeOver)
helpertype = normal
stateno = ifelse(moveguarded, 8105, 8032)
ID = 8030
name = "hitspark"
postype = p1
pos = 10, 0
facing =-1
ownpal = 1
ignorehitpause = 1
pausemovetime = 65535
supermovetime = 65535

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
value = -.35
ignorehitpause = 1
persistent = 0
;combo and dampener end------------------

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = movecontact
trigger2 = pos x != [ -250, 250]
id = 2090

[State 1025, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 5, 2090, 2091)

[State 1025, End]
type = destroyself
trigger1 = pos x != [ -250, 250]
;--------------------hadouken end ------------------------------------------
[Statedef 2091]
physics = N
anim = 9741
velset = 1, 0
ctrl = 0
sprpriority = 4

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 2091
ID = 2091
pos = 0,0
postype = p1
bindtime = 1
scale = .5,.4
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = -2

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7141
ID = 7141
pos = 0,ceil(0 - pos y)
postype = p1
facing = 1
bindtime = 1
scale = .5,.45
sprpriority = 2
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
;======================== EX DENJIN HADOU KEN =============================
[Statedef 2095]
type = S
physics = N
movetype = A
anim = 1099
ctrl = 0
velset = 0, 0
sprpriority = 4
juggle = 1
poweradd = 0

[State 1005, Assert]
type = trans
trigger1 = 1
trans = SUB
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag = invisible
ignorehitpause = 1

[State 1025, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = root, var(10)

[State 1025, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 1099

[State 1025, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < var(10), 2095, 2096)
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

[State 1025, Vel]
type = velset
trigger1 = !prevstateno
trigger2 = p2movetype != h
x = 6.5
y = 0

[State 1025, Vel]
type = velset
trigger1 = prevstateno
trigger1 = p2movetype = h
x = 1
y = 0

[State 1025, Vel]
type = velset
trigger1 = prevstateno
trigger1 = time > 1
x = 6.5
y = 0

[State 1005, Hit]
type = hitdef
trigger1 = 1
trigger1 = random < 500 ;hitcount =1 || hitcount =3 || hitcount =5 || hitcount =7
priority = 4, Hit
attr = S, HP
damage = ceil(16 * root, fvar(12)),3
animtype = hard;ifelse(random<500,Hard,medium)
hitflag = MAF
guardflag = MA
pausetime = 8 * (var(2) < 9), 13
sparkno = -1
guard.sparkno = -1;s7001
sparkxy = -10, 0
guardsound = s2,0
ground.type = high;ifelse(random<500,high,low)
ground.slidetime = 16*ifelse((var(9)=1),2,1)
ground.hittime = 16*ifelse((var(9)=1),2,1)
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -4
air.fall = 1
fall.recover = 1
fall.recovertime = 30
envshake.time = 14
envshake.freq = 120
envshake.ampl = 2
sprpriority = 4
yaccel = 0.55
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
palfx.time = 2
palfx.add = 100,100,180
palfx.mul = 256,256,256
palfx.sinadd = -80,-80,-80,10
;palfx.invertall = 1
palfx.color = 0
getpower = 0,0
givepower = 20,10

[State 1005, Hit]
type = hitdef
trigger1 = 1
trigger1 = random >= 500
priority = 4, Hit
attr = S, SP
damage = ceil(16 * root, fvar(12)),3
animtype = hard;ifelse(random<500,Hard,medium)
hitflag = MAF
guardflag = MA
pausetime = 8 * (var(2) < 9), 13
sparkno = -1
guard.sparkno = -1;s7001
sparkxy = -10, 0
guardsound = s2,0
ground.type = low;ifelse(random<500,high,low)
ground.slidetime = 16*ifelse((var(9)=1),2,1)
ground.hittime = 16*ifelse((var(9)=1),2,1)
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
air.velocity = -4, -4
air.fall = 1
fall.recover = 1
fall.recovertime = 30
envshake.time = 14
envshake.freq = 120
envshake.ampl = 2
sprpriority = 4
yaccel = 0.55
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
palfx.time =2
palfx.add = 100,100,180
palfx.mul = 256,256,256
palfx.sinadd = -80,-80,-80,10
;palfx.invertall = 1
palfx.color = 0
getpower = 0,0
givepower = 20,10

;[State 1025, p2fx]
;type=helper
;trigger1= movehit && numtarget ;&& numhelper(2191)<1
;trigger1= !(target,time) && (target,movetype=H)
;trigger1 = numhelper(7300) = 0
;helpertype=normal
;stateno=7300
;ID=7300
;name="p2fx"
;postype=p2
;pos = 100,0
;bindtime=1000
;ownpal=1
;facing=-1
;size.ground.front=0
;size.ground.back=0
;ignorehitpause=1
;persistent=0

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 10991
ID = 1090
pos = 0,0
postype = p1
bindtime = -1
scale = .42,.42
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = 999999

[State 1005, trail]
type = explod
;trigger1 = numexplod(1093) < 3
trigger1 = !(time % 12)
vel = 0.7, -.1
anim = 1093
ID = 1093
sprpriority = 3
pos = -55, 0
random = 10, 30
removetime = 18
ownpal = 1
scale = .06, .04

[State 0, Explod]
type = Explod
trigger1 = pos y > -80
trigger1 = !(time % 5)
anim = 7108
ID = 7110
pos = -45,ceil(5 - pos y)
postype = p1
facing = -1
bindtime = -1
scale = .45,.25
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = -2

[State 0, Explod]
type = Explod
;trigger1 = pos y > -80
;trigger1 = !(time % 1)
trigger1 = numexplod(2095) = 0
anim = 1090
ID = 2095
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = .38,.27
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = -1

[State 0, Explod]
type = Explod
;trigger1 = pos y > -80
;trigger1 = !(time % 1)
trigger1 = numexplod(2094) = 0
anim = 2094
ID = 2094
pos = -21,-1
postype = p1
facing = ifelse(random<500,1,-1)
bindtime = -1
scale = .38,.27
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = 2

[State 1005, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target, time = 0 && target, movetype = H
value = s2000,24
persistent = 0
ignorehitpause = 1

[State 1005, Counter Flag]
type = varset
trigger1 = numenemy
trigger1 = movecontact != 1
var(9) = (enemynear, movetype = A)

[State 1000, Hadouken]
type = helper
trigger1 = movecontact && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 8105, 8042)
ID = 8020
name = "hitspark"
postype = p1
pos = 10, 0
facing =-1
size.xscale = 1
size.yscale = 1
ownpal = 1
ignorehitpause = 1
pausemovetime = 65535
supermovetime = 65535

[State 1006, Counter FX]
type = helper
triggerall = numhelper(8080)=0
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
value = -.35
ignorehitpause = 1
persistent = 0
;combo and dampener end------------------

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = movecontact
trigger2 = pos x != [ -240, 240]

[State 1025, End]
type = changestate
trigger1 = movecontact
trigger1 = var(10) < 4
value = ifelse(var(2) < 7, 2095, 2096)

[State 1025, End]
type = changestate
trigger1 = movecontact
trigger1 = var(10) > 3
value = ifelse(var(2) < 9, 2095, 2096)

[State 1025, End]
type = destroyself
trigger1 = pos x != [ -240, 240]

;--------------------hadouken end ------------------------------------------
[Statedef 2096]
physics = N
anim = 9741
velset = 1, 0
ctrl = 0
sprpriority = 4
facep2 = 1

[State 1005, Assert]
type = trans
trigger1 = 1
trans = SUB;addalpha
;alpha = 256, 256
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 1091
ID = 1090
pos = 0,0
postype = p1
bindtime = 1
scale = .35,.35
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = -2

[State 0, Explod]
type = Explod
trigger1 = pos y > -80
trigger1 = !time
trigger1 = numexplod(7110) <1
anim = 7104
ID = 7110
pos = 10,ceil(-5 - pos y)
postype = p1
facing = -1
bindtime = 1
scale = .25,.25
sprpriority = -4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = -2

[State 0, Explod]
type = Explod
trigger1 = pos y > -80
trigger1 = !time
trigger1 = numexplod(7100) <3
anim = 7100
ID = 7100
pos = 10,ceil(5 - pos y)
postype = p1
facing = -1
bindtime = 1
scale = 1.5,1
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = -2

[State 1006, Snd]
type = playsnd
trigger1 = !time
value = s2000,16
ignorehitpause = 1
persistent = 0

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = !animtime

[State 1006, End]
type = destroyself
trigger1 = !animtime
trigger2 = time> 1

;============================ SHINKU HADOKEN ===================================
[Statedef 3090]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 0
anim = 3090

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = -1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
;flag = invisible
flag = noshadow
ignorehitpause = 1

[State 3055, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3090
ignorehitpause = 1

[State 3055, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3055, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3090

[State 3055, Bind]
type = bindtoroot
trigger1 = 1
pos = 75, -69
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 3090
ID = 3090
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = -2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
pausemovetime = 999
trans = sub

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 3091
ID = 3091
pos = 0,0
postype = p1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 3092
ID = 3092
pos = 0,0
postype = p1
bindtime = -1
removetime = 40
scale = .5,.75
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 3093
ID = 3093
pos = -10,0
postype = p1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
pausemovetime = 999

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 3093
ID = 3093
pos = -10,0
postype = p1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
pausemovetime = 999
trans = sub

[State 0, Explod]
type = Explod
trigger1 = animelem = 6
anim = 7161
ID = 7161
pos = -25,ceil(7 - pos y)
postype = p1
facing = 1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
pausemovetime = 999

[State 3055, Hit]
type = hitdef
;triggerall = animelemtime(30)<1
trigger1 = animelemtime(2) = 0
trigger2 = animelemtime(6) = 0
trigger3 = animelemtime(10) = 0
trigger4 = animelemtime(14) = 0
trigger5 = animelemtime(18) = 0
trigger6 = animelemtime(22) = 0
trigger7 = animelemtime(26) = 0
trigger8 = animelemtime(30) = 0
trigger9 = animelemtime(34) = 0
;trigger1 = animelemtime(2) = 0
;trigger2 = animelem = 6
;trigger3 = animelem = 10
;trigger4 = animelem = 14
;trigger5 = animelem = 18
;trigger6 = animelem = 22
;trigger7 = animelem = 26
;trigger8 = animelem = 30
;trigger9 = animelem = 34
;trigger10 = animelem = 38
;trigger11 = animelem = 42
attr = S, HP
damage = ceil(48 * root, fvar(12)),ceil(5 * root, fvar(12))
animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 0,0
guard.dist = 320
sparkno = -1
guard.sparkno = -1
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -20, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.velocity = -20, 0;-.5
down.velocity = -20, -0
getpower = 0
givepower = 5, 2
fall = 0
fall.recover = 0
sprpriority = -1
yaccel =  .5
forcestand = 1
ignorehitpause = 1
envshake.time = 8
envshake.freq = 120
envshake.ampl = -4
id=3090

[State 3055, Hit]
type = hitdef
trigger1 = animelemtime(38) = 0;38
attr = S, HP
damage = ceil(48 * root, fvar(12)),ceil(5 * root, fvar(12))
animtype = Diagup
fall.animtype = Diagup
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 0,6
guard.dist = 32
sparkno = -1
guard.sparkno = -1
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -20,-10
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.velocity = -20, -9
down.velocity = -20, -9
getpower = 0
givepower = 5, 2
fall = 1
fall.recover = 0
sprpriority = -1
yaccel = 0.6
forcestand = 1
ignorehitpause = 1
persistent = 0
envshake.time = 8
envshake.freq = 120
envshake.ampl = -4
fall.envshake.freq = 120
fall.envshake.ampl = -8
fall.envshake.phase = 20
down.bounce = 1
id=3090

[State 0, Explod]
type = Explod
trigger1 = movecontact && numtarget
trigger1 = (target, movetype = H) && !(target, time)
anim = 3094
ID = 3094
pos = (p2bodydist x)+85,(p2bodydist y -80)+(random%30);10, 0
postype = p1
facing = -1
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .5,.5
sprpriority = 2
ownpal = 1
angle = 20
removeongethit = 1
ignorehitpause = 1

[State 1000, Hadouken]
type = helper
trigger1 = movecontact && numtarget
trigger1 = moveguarded
trigger1 = (target, movetype = H) && !(target, time)
helpertype = normal
stateno = 8105;ifelse(moveguarded, 8105, 8032)
ID = 8020
name = "hitspark"
postype = p1
pos = (p2bodydist x)+35,(p2bodydist y -80)+(random%30);10, 0
facing =-1
size.xscale = 1
size.yscale = 1
ownpal = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit && numtarget
trigger1 = (target, movetype = H) && !(target, time)
value = S1,2
channel = -1
ignorehitpause = 1

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
;trigger1 = var(3)=0
trigger1 = prevstateno != stateno
trigger1 = (enemynear,prevstateno = [5000,5999])
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
fv = 12
value = -.35
ignorehitpause = 1
persistent = 0
;combo and dampener end------------------

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animtime = 0
trigger2 = root,stateno != 3000
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 3000
ignorehitpause = 1

;[State 3055, End]
;type = changestate
;trigger1 = animtime = 0
;trigger2 = root,stateno != 3000
;value = 3456
;ignorehitpause = 1


