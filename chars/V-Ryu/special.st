;=============================== HADOUKEN ================================
[Statedef 1000]
type = S
physics = S
movetype = A
anim = 1000
ctrl = 0
velset = 0, 0
poweradd = 40
sprpriority = 1
facep2 = 1

[State 1000, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse(command = "QCF_z", 3, ifelse(command = "QCF_y", 2, 1))

[State 1000, width]
type = width
trigger1 = animelemtime(5) = 0
value = 30, 0

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(5) = 0
helpertype = normal
stateno = 1090
ID = 1090
name = "Hadouken"
postype = p1
pos = 80, -70
size.xscale = 0.35
size.yscale = 0.25
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(2) = 0
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

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(5) = 0
value = s1000,0
channel = 0

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(5) = 1
value = s1090,0
channel = 5
volumescale = 150

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;============================ AIR HADOUKEN ===============================
[StateDef 1010]
type = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 1010
poweradd=40
sprpriority = 2
facep2 = 1

[State 900]
type = VarSet
trigger1 = time = 0
v = 10
value = ifelse(command = "QCF_z",2,ifelse(command = "QCF_y",1,0))

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(4) = 0
value = s1000,0
channel = 0

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(4) = 1
value = s1090,0
channel = 5
volumescale = 150

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = -1

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 9
statetype = A
movetype = A
physics = A

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(4) = 0
helpertype = normal
stateno = 1090
ID = 1090
name = "Hadouken"
postype = p1
pos = 55,-88
size.xscale = 0.35
size.yscale = 0.25
ownpal = 1

;============================ LIGHT SHORYUUKEN ============================
[Statedef 1100]
type    = S
movetype = A
physics = S
juggle  = 1
ctrl = 0
poweradd = 100
velset = 0,0
anim = 1100
juggle  = 1
facep2 = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 5
movetype = I

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = s1000,1
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1090,2
channel = 5
volumescale = 150

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 2
StateType = A
physics = N

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(4) = 2
x = 3
y = -6.5

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(4) >= 2
y = .55

[State 1100, Velocity]
type = VelMul
trigger1 = AnimElemTime(4) >= 2
x = .9

[State 0, Explod]
type = Explod
;triggerall = numexplod(7160)=0
trigger1 = animelemtime(4)=2
anim = 7160
ID =7160
pos = 25,7
postype = p1
facing = 1
bindtime = 1
vel = .2,0
removetime = -2
scale = .22,.22
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
;triggerall = numexplod(7141)=0
trigger1 = animelemtime(4)=2
anim = 7141
ID =7141
pos = 25,11
postype = p1
facing = 1
bindtime = 1
vel = .2,0
removetime = -2
scale = .2,.2
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1100, HitDef]
type = HitDef
triggerall = movehit <=0
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
air.animtype = up
fall.animtype = up
damage = 120,12
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=13,13
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=50), var(36):=-78
hitsound   = S1,2
guardsound = S2,1
ground.type = high
getpower = 160,80
givepower = 80,40
ground.slidetime = ceil(17*ifelse((var(9)=1),1.5,1))
ground.hittime  = ceil(17*ifelse((var(9)=1),1.5,1))
guard.ctrltime = 17
ground.velocity = -2,-10
guard.velocity = -8
air.velocity = -2,-9.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
yaccel = .55
persistent = 0
forcestand = 1

[State 1100, HitDef]
type = HitDef
triggerall = movehit <=0
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Heavy
air.animtype = up
fall.animtype = up
damage = 120,12
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=13,13
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=17), var(36):=-135
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
getpower = 160,80
givepower = 80,40
ground.slidetime = ceil(17*ifelse((var(9)=1),1.5,1))
ground.hittime  = ceil(17*ifelse((var(9)=1),1.5,1))
guard.ctrltime = 17
ground.velocity = -2,-10
guard.velocity = -8
air.velocity = -2,-9.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
yaccel = .55
persistent = 0
forcestand = 1

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(4) >= 2
value = 1105
;============================ MEDIUM SHORYUUKEN ============================
[Statedef 1101]
type    = S
movetype = A
physics = S
juggle  = 1
ctrl = 0
poweradd=110
velset = 0,0
anim = 1101
juggle  = 1
facep2 = 1

[State 1100, nothitby]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 5
movetype = I

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = s1000,1
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1090,2
channel = 5
volumescale = 150

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 2
StateType = A
physics = N

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(4) = 2
x = 5.5
y = -8.5

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(4) >= 2
y = .55

[State 1100, Velocity]
type = VelMul
trigger1 = AnimElemTime(4) >= 2
x = .9

[State 0, Explod]
type = Explod
;triggerall = numexplod(7160)=0
trigger1 = animelemtime(4)=2
anim = 7160
ID =7160
pos = 25,7
postype = p1
facing = 1
bindtime = 1
vel = .2,0
removetime = -2
scale = .25,.25
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
;triggerall = numexplod(7141)=0
trigger1 = animelemtime(4)=2
anim = 7141
ID =7141
pos = 25,11
postype = p1
facing = 1
bindtime = 1
vel = .2,0
removetime = -2
scale = .2,.2
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1100, HitDef]
type = HitDef
triggerall = movehit <=0
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
air.animtype = up
fall.animtype = up
damage = 120,12
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=13,13
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=50), var(36):=-78
hitsound   = S1,2
guardsound = S2,1
ground.type = high
getpower = 160,80
givepower = 80,40
ground.slidetime = ceil(17*ifelse((var(9)=1),1.5,1))
ground.hittime  = ceil(17*ifelse((var(9)=1),1.5,1))
guard.ctrltime = 17
ground.velocity = -2.2,-11
guard.velocity = -8
air.velocity = -2.2,-10
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
yaccel = .55
persistent = 0
forcestand = 1

[State 1100, HitDef]
type = HitDef
triggerall = movehit <=0
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Heavy
air.animtype = up
fall.animtype = up
damage = 120,12
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=13,13
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=17), var(36):=-135
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
getpower = 160,80
givepower = 80,40
ground.slidetime = ceil(17*ifelse((var(9)=1),1.5,1))
ground.hittime  = ceil(17*ifelse((var(9)=1),1.5,1))
guard.ctrltime = 17
ground.velocity = -2.2,-11
guard.velocity = -8
air.velocity = -2.2,-10
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
yaccel = .55
persistent = 0
forcestand = 1

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(4) >= 2
value = 1105
;============================ HEAVY SHORYUUKEN ============================
[Statedef 1102]
type    = S
movetype = A
physics = S
juggle  = 1
ctrl = 0
poweradd = 120
velset = 0,0
anim = 1102
juggle  = 1
facep2 = 1

[State 1100, nothitby]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 5
movetype = I

[State 220, Position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = s1000,1
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1090,2
channel = 5
volumescale = 150

[State 1100, StateType]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 2
StateType = A
physics = N

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(4) = 2
x = 7.5
y = -10.5

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(4) >= 2
y = .55

[State 1100, Velocity]
type = VelMul
trigger1 = AnimElemTime(4) >= 2
x = .9

[State 0, Explod]
type = Explod
;triggerall = numexplod(7160)=0
trigger1 = animelemtime(4)=2
anim = 7160
ID =7160
pos = 25,7
postype = p1
facing = 1
bindtime = 1
vel = .2,0
removetime = -2
scale = .27,.27
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
;triggerall = numexplod(7141)=0
trigger1 = animelemtime(4)=2
anim = 7141
ID =7141
pos = 25,11
postype = p1
facing = 1
bindtime = 1
vel = .2,0
removetime = -2
scale = .2,.2
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1100, HitDef]
type = HitDef
triggerall = movehit <=0
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
air.animtype = up
fall.animtype = up
damage = 120,12
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=13,13
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=50), var(36):=-78
hitsound   = S1,2
guardsound = S2,1
ground.type = high
getpower = 160,80
givepower = 80,40
ground.slidetime = ceil(17*ifelse((var(9)=1),1.5,1))
ground.hittime  = ceil(17*ifelse((var(9)=1),1.5,1))
guard.ctrltime = 17
ground.velocity = -2.5,-12
guard.velocity = -8
air.velocity = -2.5,-11.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
yaccel = .55
persistent = 0
forcestand = 1

[State 1100, HitDef]
type = HitDef
triggerall = movehit <=0
trigger1 = AnimElem = 4
attr = S, SA
animtype  = Heavy
air.animtype = up
fall.animtype = up
damage = 120,12
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=13,13
sparkno = -1 * (var(33):=8030)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=17), var(36):=-135
hitsound   = S1,2
guardsound = S2,1
ground.type = Low
getpower = 160,80
givepower = 80,40
ground.slidetime = ceil(17*ifelse((var(9)=1),1.5,1))
ground.hittime  = ceil(17*ifelse((var(9)=1),1.5,1))
guard.ctrltime = 17
ground.velocity = -2.5,-12
guard.velocity = -8
air.velocity = -2.5,-11.5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
yaccel = .55
persistent = 0
forcestand = 1

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(4) >= 2
value = 1105
;========================== SHORYUUKEN LAND ==============================
[Statedef 1105]
type    = S
physics = S
ctrl = 0
anim = 1105
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1=time=0
value = S52,0
volume = 0
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7153
ID = 7153
pos = 3,0
postype = p1
bindtime = 1
removetime = -2
scale = .15,.15
sprpriority = 0
ownpal = 1
removeongethit = 1
[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;====================== TATSUMAKI SENPUU KYAKU =============================
[Statedef 1200]
type = A
physics = N
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
poweradd = 120
juggle = 1
sprpriority = 1
facep2 = 1

[State 0, Width]
type = Width
trigger1 = 1
value = 10,0

[State 1100, nothitby]
type = nothitby
trigger1 = anim = 1201
value =  , NP, SP
time = 1
ignorehitpause = 1

[State 1200, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse((command = "QCB_c"), 3, ifelse(command = "QCB_b", 2, 1))

[State 1200, Strength]
type = varset
trigger1 = !time && AIlevel
var(10) = 1

[State 1200, Snd]
type = playsnd
trigger1 = anim = 1200 && animelem = 1
value = s1000,2
channel = 0

[State 1200, Snd]
type = playsnd
trigger1 = anim = 1200 && animelem = 1
value = s0,5
channel = 1
volumescale = 50

[State 1200, Snd]
type = playsnd
triggerall = anim = 1201
trigger1 = animelem = 2 || animelem = 5 || animelem = 8 || animelem = 11 || animelem = 14 || animelem = 17 || animelem = 20
value = s0,0
channel = -1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 1200 && animelem = 1
anim = 7101
ID = 7101
pos = 5,5
postype = p1
facing = 1
vel = -.65,0
scale = .2,.2
sprpriority = 3
removeongethit = 0
ignorehitpause = 1
persistent =  1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 1201
trigger1 = numexplod(1290)=0
anim = 1290
ID = 1290
pos = 0,-60
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = .5,.35
sprpriority = 3
removeongethit =1
ignorehitpause = 0
trans = addalpha
alpha = 150,256
ownpal = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = anim !=1201
id =  1290
ignorehitpause = 1

[State 1200, Anim]
type = changeanim
trigger1 = anim = 1200 && !animtime
value = 1201

[State 1200, statetype]
type = statetypeset
trigger1 = anim = 1200 || anim = 1205
statetype = A
physics = A

[State 1200, statetype]
type = statetypeset
trigger1 = anim = 1201
statetype = A
physics = N

[State 1200, Vel]
type = velset
trigger1 = anim = 1200 && animelem = 1
x = 4.2
y = -4.5

[State 1200, Vel]
type = velset
trigger1 = anim = 1201
x = 4.2
y = 0

[State 1200, Anim]
type = changeanim
trigger1 = anim = 1201 && ifelse(var(10) = 3, animelemtime(18) >= 0, ifelse(var(10) = 2, animelemtime(12) >= 0, animelemtime(6) >= 0))
value = 1205
persistent = 0

[State 1200, hit]
type = hitdef
triggerall = movehit < 1
trigger1 = animelem = 2 || animelem = 5 || animelem = 8 || animelem = 11 || animelem = 14 || animelem = 17 || animelem = 20
attr = A, SA
damage = ifelse(var(10)=3,100,ifelse(var(10)=2,95,90)),9
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 14,14
sparkno = -1 * (var(33):=8032)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=65), var(36):=-55
hitsound   = S1,5
guardsound = S2,1
ground.type = High
ground.slidetime = ceil(17*ifelse((var(9)=1),1.5,1))
ground.hittime = ceil(17*ifelse((var(9)=1),1.5,1))
air.type = Low
getpower = 120,60
givepower = 60,30
ground.slidetime = 15
ground.hittime  = 15
guard.ctrltime = 12
ground.velocity = -6*ifelse(p2dist x>-10,1,-1),ifelse(var(10)=1,-6,-7.5)
guard.velocity = -8*ifelse(p2dist x>-10,1,-1)
air.velocity = -6*ifelse(p2dist x>-10,1,-1),ifelse(var(10)=1,-5.5,-7)
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
yaccel = .55
persistent = 1
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = anim = 1205
movetype = I

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1225
;=========================== AIR TATZUMAKI =================================
[Statedef 1220]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd = 120
ctrl = 0
anim = 1220
facep2 = 1

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 1
value = s1000,2
channel = 0

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 1
value = s0,5
channel = 1
volumescale = 50

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 5 || animelem = 8 || animelem = 11 || animelem = 14 || animelem = 17 || animelem = 20 || animelem = 23 || animelem = 26
value = s0,0
channel = -1
persistent = 1

[State 0, Explod]
type = Explod
trigger1 = numexplod(1290)=0
anim = 1290
ID = 1290
pos = 0,-60
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = .5,.35
sprpriority = 3
removeongethit =1
ignorehitpause = 0
trans = addalpha
alpha = 150,256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Pos Y >= 0 && Vel Y > 0
id =  1290
ignorehitpause = 1

[State 1100, nothitby]
type = nothitby
trigger1 = time > 7
value =  , NP, SP
time = 1
ignorehitpause = 1

[State 1200, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse((command = "QCB_c"), 3, ifelse(command = "QCB_b", 2, 1))

[State 0, Gravity]
type = Gravity
trigger1 = 1

[State 0, VelSet]
type = Veladd
trigger1 = time = 0
x = 2
y = -2

[State 1200, hit]
type = hitdef
triggerall = movehit < 1
trigger1 = animelem = 5 || animelem = 8 || animelem = 11 || animelem = 14 || animelem = 17 || animelem = 20 || animelem = 23 || animelem = 26
attr = A, SA
damage = ifelse(var(10)=3,100,ifelse(var(10)=2,95,90)),9
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 14,14
sparkno = -1 * (var(33):=8032)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=65), var(36):=-55
hitsound   = S1,5
guardsound = S2,1
ground.type = High
ground.slidetime = ceil(17*ifelse((var(9)=1),1.5,1))
ground.hittime = ceil(17*ifelse((var(9)=1),1.5,1))
air.type = Low
getpower = 120,60
givepower = 60,30
ground.slidetime = 15
ground.hittime  = 15
guard.ctrltime = 12
ground.velocity = -5*ifelse(p2dist x>-10,1,-1),-5.5
guard.velocity = -6*ifelse(p2dist x>-10,1,-1)
air.velocity = -5*ifelse(p2dist x>-10,1,-1),-5
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
envshake.time = 10
envshake.ampl = 3
fall = 1
fall.recover = 0
air.fall = 1
yaccel = .55
persistent = 1
forcestand = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1225
;---------------------------------------------------------------------------
; Jump Land
[Statedef 1225]
type    = S
physics = N
movetype = I
sprpriority = 1
ctrl = 0
anim=47

[State 0, Width]
type = Width
trigger1 = 1
value = 10,0

[State 0, PlaySnd]
type = PlaySnd
trigger1=time=0
value = S52,0
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7153
ID = 7153
pos = 3,0
postype = p1
bindtime = 1
removetime = -2
scale = .175,.175
sprpriority = 0
ownpal = 1
removeongethit = 1

[State 52, stop]
type=velset
trigger1=time=0
x=0
y=0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

;[State 52, ctrl]
;type=ctrlset
;trigger1=time>=4
;trigger1=prevstateno<1000
;value=1

[State 52, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1
;========================== JOUDAN SOKUTOU GERI ================================
[Statedef 1300]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0, 0
poweradd = 120
juggle = 1
sprpriority = 1
facep2 = 1

[State 1300, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse((command = "QCF_c"), 3, ifelse(command = "QCF_b", 2, 1))

[State 1300, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 3, 1302, ifelse(var(10) = 2, 1301, 1300))

[State 1300, Vel]
type = velset
trigger1 = (anim = [1301, 1302]) && animelemtime(4) < 0
trigger2 = anim = 1300 && animelemtime(2) < 0
x = 4

[State 1300, Snd]
type = playsnd
trigger1 = animelem = 1
value = s100,1
channel = -1

[State 1300, Snd]
type = playsnd
trigger1 = (anim = [1301, 1302]) && animelem = 6
trigger2 = anim = 1300 && animelem = 4
value = s10,6
channel = 0

[State 1300, Snd]
type = playsnd
trigger1 = (anim = [1301, 1302]) && animelem = 6
trigger2 = anim = 1300 && animelem = 4
value = s0,5
channel = 1
volumescale = 150

[State 0, Explod]
type = Explod
trigger1 = (anim = [1301, 1302]) && animelemtime(6) = 0
trigger2 = anim = 1300 && animelemtime(4) = 0
anim = 7100
ID = 7100
pos = 28,5
postype = p1
facing = -1
vel = .5,0
scale = .25,.25
sprpriority = 3
removeongethit = 0
ignorehitpause = 1
persistent =  1
ownpal = 1

[State 1300, Hit]
type = hitdef
trigger1 = (anim = [1301, 1302]) && animelem = 6
trigger2 = anim = 1300 && animelem = 4
attr = S, SA
damage = (70 + var(10)*10),7
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 13,13
sparkno = -1 * (var(33):=8032)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=70), var(36):=-70
hitsound   = S1,5
guardsound = S2,1
ground.type = High
ground.slidetime = 16*ifelse((var(9)=1),1.5,1)
ground.hittime = 16*ifelse((var(9)=1),1.5,1)
ground.velocity = -3 -var(10) * 1, -6
air.type = Low
air.velocity = -3 -var(10) * 1, -6
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 120,60
givepower = 60,30
envshake.time = 16
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
forcestand = 1

[State 1300, Pos]
type = posadd
trigger1 = (anim = 1300 && animelem = 8) || ((anim = [1301, 1302]) && animelem = 10)
x = 15
[State 1300, Pos]
type = posadd
trigger1 = (anim = 1300 && animelem = 9) || ((anim = [1301, 1302]) && animelem = 11)
x = 10
[State 1300, Pos]
type = posadd
trigger1 = !animtime
x = 5

[State Idle]
type = statetypeset
trigger1 = anim = 1300 && animelemtime(6) >= 0
trigger2 = anim = 1301 && animelemtime(8) >= 0
trigger3 = anim = 1302 && animelemtime(8) >= 0
movetype = I

[State 1300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

