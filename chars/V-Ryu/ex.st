;====================== EX-HADOUKEN ===================
[StateDef 2000]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 2000
sprpriority = 1
facep2 = 1

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
poweradd = -1000

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8300
ID = 8300
name = "Carga"
postype = p1
pos = -13,-72
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = anim =2000
trigger1 = animelem = 1
anim = 2093
ID = 2093
pos = -13,-72
postype = p1
facing = 1
bindtime = -1
removetime = -1
scale = .085,.085
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 2093
angle = 50*time

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = animelemtime(6) >= 0
id = 2093

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim =2000
trigger1 = animelem = 1
value = S2000,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim =2000
trigger1 = animelem = 8
value = S1000,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim =2000
trigger1 = animelem = 7
value = S1090,3
channel = 5
volumescale = 150

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 2000
trigger1 = animelemtime(10) >1
trigger1 = numhelper(2090) = 0
value = 2010
elem = 11

[State 0, Explod]
type = Explod
trigger1 = anim =2000
trigger1 = animelem = 7
anim = 7161
ID = 7161
pos = 15,15
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = .5,.45
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Helper]
type = Helper
trigger1 = anim =2000
trigger1 = animelem = 7
helpertype = normal ;player
name = "X-Hadoken"
ID = 2090
stateno = 2090
pos = 68,-68
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;======================== EX AIR HADOUKEN ========================
[StateDef 2005]
type = A
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 2005
sprpriority = 1
facep2 = 1

[State 3000, Superpause]
type = superpause
trigger1 = anim = 2005
trigger1 = time = 0
time = 15
movetime = 15
p2defmul = 1
unhittable = 1
anim = -1
sound = -1
darken = 0
poweradd = -1000

[State 3000, carga]
type=helper
trigger1 = anim = 2005
trigger1 = time = 0
helpertype = normal
stateno = 8300
ID = 8300
name = "Carga"
postype = p1
pos = -17,-85
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim =2005
trigger1 = animelem = 1
value = S2000,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim =2005
trigger1 = animelem = 5
value = S1000,0
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim =2005
trigger1 = animelem = 4
value = S1090,3
channel = 5
volumescale = 150

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 2005
trigger1 = animelemtime(4) >1
trigger1 = numhelper(2090) = 0
value = 2015
elem = 8

[State 0, NotHitBy]
type = NotHitBy
trigger1 = anim = 2005
value = SCA
time = 1

[State 0, Helper]
type = Helper
trigger1 = anim = 2005
trigger1 = animelem = 4
helpertype = normal ;player
name = "X-Hadoken"
ID = 2090
stateno = 2090
pos = 62,-90
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = anim = 2005
trigger1 = animelem = 4
x = -1
y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 2015
trigger1 = animelem = 8
statetype = A
movetype = A
physics = A
;============================ EX SHORYUUKEN ============================
[Statedef 2100]
type    = S
movetype = A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 2100
sprpriority = 1
facep2 = 1

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
poweradd = -1000

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8300
ID = 8300
name = "Carga"
postype = p1
pos = -25,-57
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 2100 && animelem = 5
value = S1090,5
channel = 5
volumescale = 150

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 2101 && animelem = 4
value = S1090,5
channel = 5
volumescale = 150

[State 0, Explod]
type = Explod
trigger1 = anim = 2100 && animelem = 5
anim = 7140
ID = 7140
pos = 0,5
postype = p1
bindtime = 1
removetime = -2
scale = .225*1.5,.175*1.5
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 2100 && animelem = 5
anim = 7141
ID = 7141
pos = 0,5
postype = p1
bindtime = 1
removetime = -2
scale = .175*1.5,.175*1.5
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 2101 && animelem = 4
anim = 7140
ID = 7140
pos = 0,-3
postype = p1
bindtime = 1
removetime = -2
scale = .225*1.5,.175*1.5
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 2101 && animelem = 4
anim = 7141
ID = 7141
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
scale = .175*1.5,.175*1.5
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4) >= 0 && anim = 2100
trigger1 = movehit && numtarget
trigger1 = numexplod(7100) =0
trigger1 = hitcount = 1
anim = 7100
ID = 7100
pos = 0,ceil(5 - pos y)
postype = p1
facing = -1
bindtime = 1
scale = 1.5,1
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0
removetime = -2

[State 0, Explod]
type = Explod
trigger1 = animelemtime(4) >= 0 && anim = 2101
trigger1 = movehit && numtarget
trigger1 = numexplod(7100) =0
trigger1 = hitcount = 2
anim = 7100
ID = 7100
pos = 0,ceil(5 - pos y)
postype = p1
facing = -1
bindtime = 1
scale = 1.5,1
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0
removetime = -2

[State 1100, nothitby]
type = nothitby
trigger1 = anim = 2100 && animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 2101 && (animelemtime(1) = 1) && movehit
value = S3000,1
volume = 200
channel = -1
ignorehitpause=1
persistent=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 2100 && (animelemtime(5) = 1) ;&& movehit
value = S3000,1
channel = -1
ignorehitpause=1
persistent=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 2101 && (animelemtime(1) = 1) && movehit
value = S2000,3
volume = 200
channel = -1
ignorehitpause=1
persistent=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 2101 && (animelemtime(1) = 1) && movehit
value = S2000,3
volume = 200
channel = -1
ignorehitpause=1
persistent=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 2101 && (animelemtime(4) = 1) && movehit
trigger2 = anim = 2100 && (animelemtime(5) = 1)
value = S1000,6
volume = 200
channel = -1
ignorehitpause=1
persistent=0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 2101 && (animelemtime(4) = 1) && movehit
trigger2 = anim = 2100 && (animelemtime(5) = 1)
value = S1000,6
volume = 200
channel = -1
ignorehitpause=1
persistent=0

[State 1100, StateType]
type = StateTypeSet
trigger1 = anim = 2100
trigger1 = AnimElemTime(4) = 2
StateType = A
physics = N

[State 0, ChangeAnim]
type = ChangeAnim
trigger1= anim=2100 && animelemtime(4)>0 && animelemtime(5)<0 && movehit && (enemynear,movetype=h)
value = 2101
ignorehitpause = 0
persistent = 1

[State 0, TargetBind]
type = TargetBind
trigger1= anim=2100 && animelemtime(4)>0 && animelemtime(5)<0 && movehit && (enemynear,movetype=h)
time = 1
id = -1
pos = 30,-10
ignorehitpause = 1
persistent = 0

[State 1100, Velocity]
type = VelSet
trigger1 = anim = 2100
trigger1 = AnimElemTime(4) = 2
x = 9.5
y = -12.5

[State 1100, Gravity]
type = Veladd
trigger1 = anim = 2100
trigger1 = AnimElemTime(4) >= 2
y = .5

[State 1100, Velocity]
type = VelMul
trigger1 = anim = 2100
trigger1 = AnimElemTime(4) >= 2
x = .9

[State 1100, StateType]
type = StateTypeSet
trigger1 = anim = 2101
trigger1 = AnimElemTime(4) = 2
StateType = A
physics = N

[State 1100, Velocity]
type = VelSet
trigger1 = anim = 2101
trigger1 = AnimElemTime(4) = 2
x = 12
y = -15

[State 1100, Gravity]
type = Veladd
trigger1 = anim = 2101
trigger1 = AnimElemTime(4) >= 2
y = .55

[State 1100, Velocity]
type = VelMul
trigger1 = anim = 2101
trigger1 = AnimElemTime(4) >= 2
x = .9

[State 3100, hit]
type=hitdef
trigger1= (animelem=4) && anim=2100
attr=S,HA
damage= 135,12
snap = 35,-15
animtype=light
fall.animtype=light
guardflag=MA
hitflag=MAF
priority=7,Hit
pausetime=25,25
guard.pausetime=12,12
sparkno = -1 * (var(33):=8070)**0
guard.sparkno= -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=45), var(36):= -85
hitsound=s1,8
guardsound=s2,1
p2facing=1
ground.type=Low
air.type=Low
ground.slidetime=16
ground.hittime=60
air.hittime=70
ground.velocity=3,-6
ground.cornerpush.veloff=0
air.velocity=1,-6
getpower=0
givepower=30,30
envshake.time=20
envshake.freq=120
envshake.ampl=9
fall=1
fall.recover=0
kill= 0
yaccel=.5
forcestand=1
p2stateno=5190

[State 3100, hit]
type=hitdef
trigger1=(animelemtime(4)>1) && anim=2101
attr=A,HA
damage=85,8
animtype=up
guardflag=MA
hitflag=MAF
priority=7,Hit
pausetime=25,25
sparkno = -1 * (var(33):=8070)**0
guard.sparkno= -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=22), var(36):=-140
hitsound=s1,8
guardsound=s2,1
p2facing=1
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-3.5,-19
air.type=Low
air.velocity=-3.5,-19
getpower=0
givepower=30,30
envshake.time=20
envshake.freq=120
envshake.ampl=9
fall=1
fall.recover=0
fall.envshake.time=12
fall.envshake.freq=60
fall.envshake.ampl=7
yaccel=.7
forcestand=1
persistent=0

[State 3100, hit]
type=hitdef
trigger1= anim=2100 && animelemtime(5)>=0 && !(animelemtime(5)%2)
trigger1 = hitcount < 3
attr=A,HA
damage=53,5
animtype=Up
guardflag=MA
hitflag=MAF
priority=7,Hit
pausetime=7,7
sparkno = -1 * (var(33):=8031)**0
guard.sparkno= -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=28), var(36):=-125
hitsound=s1,8
guardsound=s2,1
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-3,-10
air.type=Low
air.velocity=-3,-10
getpower=0
givepower=30,30
envshake.time=16
envshake.freq=60
envshake.ampl=5
fall=1
fall.recover=0
yaccel=.6
forcestand=1

[State 105, 3]
type = ChangeState
triggerall = anim = 2100
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value =1105

[State 105, 3]
type = ChangeState
triggerall = anim = 2101
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value =52
;---------------------------------------------------------------------------
;p2state
[Statedef 5190]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
poweradd = 0
sprpriority = 1

;[State 0, NotHitBy]
;type = NotHitBy
;trigger1 = 1
;value = ,NP,SP
;time = 1
;ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value =1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 2160

[State 0, VelSet]
type = VelSet
trigger1 = time = 25
x = -.25
y = -7.5

[State 1100, Gravity]
type = Veladd
trigger1 = time > 26
y = .5

[State 3805, end]
type=selfstate
trigger1 = time > 40
value=5050
;===========================EX-TATZUMAKI SENPUKYAKU=============================
[Statedef 2200]
type = S
movetype = A
physics = N
anim = 2200
juggle  = 1
ctrl = 0
velset = 0,0
facep2 = 1
sprpriority = 1

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
poweradd = -1000

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8300
ID = 8300
name = "Carga"
postype = p1
pos = -25,0
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 3200, Snd]
type = playsnd
trigger1 = anim = 2200 && animelemtime(4) = 1
value = s2000,2
channel = 0
volumescale = 150

[State 3200, Snd]
type = playsnd
trigger1 = anim = 2202 && (animelem = 2 || animelem = 5 || animelem = 8|| animelem = 11|| animelem = 14)
value = s0,3
channel = -1
volumescale = 250
persistent = 1

[State 3200, NHB]
type = nothitby
trigger1 = anim = 2200
time = 1
value = SCA

[State 1100, nothitby]
type = nothitby
trigger1 = anim != 2207
value =  , NP, SP
time = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = anim = 2200 && animelem = 4
anim = 7141
ID = 7141
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
scale = .195,.195
sprpriority = 3
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(7154)=0
trigger1 = anim = 2202
trigger1 = animelemtime(4)>0
anim = 7154
id = 7154
pos = 10,ceil(7 - pos y)
postype = p1
bindtime = 1
facing = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .55,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(71540)=0
trigger1 = anim = 2202
trigger1 = animelemtime(4)>0
anim = 7154
id = 71540
pos = 10,ceil(7 - pos y)
postype = p1
bindtime = 1
facing = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .55,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(7156)=0
trigger1 = anim = 2202
trigger1 = animelemtime(4)>0
anim = 7156
id = 7156
pos = -10,0
postype = p1
bindtime = 1
facing = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3200, width]
type = width
trigger1 = anim = 2202 && movehit
edge = 50, 35

[State 3200, Vel]
type = velset
trigger1 = anim = 2200 && animelem = 5
y = -6
x = 2

[State 3200, Anim]
type = changeanim
trigger1 = anim = 2200 && !animtime
value = 2202;

[State 3200, Vel]
type = velset
trigger1 = anim = 2202
y = -.4
x = 0

[State 3200, Push]
type = playerpush
trigger1 = anim = 2202 || anim = 2207
value = 0
ignorehitpause = 1

[State 3200, Anim]
type = changeanim
trigger1 = anim = 2202 && !animtime
value = 2207
persistent = 0

[State 3200, statetype]
type = statetypeset
trigger1 = anim = 2200 && animelemtime(5) >= 0
trigger2 = anim = 2207 && animelemtime(3) > 0
trigger3 = anim = 2207 && animelemtime(1) > 0
statetype = A
physics = A

[State 3200, statetype]
type = statetypeset
trigger1 = anim = 2200 && !animtime
trigger2 = anim = 2202 ;&& animelemtime >
statetype = A
physics = N

[State 0, TargetBind]
type = TargetBind
triggerall = movehit && !movereversed
triggerall = p2stateno = [5000,5999]
trigger1 = anim = 2202 && (animelem = 2 || animelem = 8|| animelem = 14)
time = 1
id = -1
pos = 64,5
ignorehitpause = 1

[State 0, TargetBind]
type = TargetBind
triggerall = movehit && !movereversed
triggerall = p2stateno = [5000,5999]
trigger1 = anim = 2202 && (animelem = 5 || animelem = 11)
time = 1
id = -1
pos = -35,5
ignorehitpause = 1

[State 3200, hitevil]
type = hitdef
trigger1 = anim = 2202 && (animelem = 2 || animelem = 8)
attr = A, HA
damage = 44,4
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,6
sparkno = -1 * (var(33):=8032)**0
guard.sparkno= -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=45), var(36):= -60
hitsound = s1,2
guardsound=s2,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = 1
ground.velocity = ifelse(p2dist x > 30, 16, 13), 0;ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
air.type = Low
air.velocity = ifelse(p2dist x > 30, 16, 13),ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0
givepower = 30, 30
envshake.time = 18
envshake.freq = 120
envshake.ampl = 5
fall = 0
fall.recover = 0
sprpriority = -1
;yaccel = 0.5
forcestand = 1

[State 3200, hitevil]
type = hitdef
trigger1 = anim = 2202 && (animelem = 5 || animelem = 11)
attr = A, HA
damage = 44,4
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,4
sparkno = -1 * (var(33):=8032)**0
guard.sparkno= -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=45), var(36):= -60
hitsound = s1,2
guardsound=s2,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = -1
ground.velocity = ifelse(p2dist x > 30, -20, -17), 0;ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
air.type = Low
air.velocity = ifelse(p2dist x > 30, -20, -17), ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0
givepower = 30, 30
envshake.time = 18
envshake.freq = 120
envshake.ampl = 5
fall = 0
fall.recover = 0
sprpriority = 1
;yaccel = 0.5
forcestand = 1

[State 3200, hitevilfinal]
type = hitdef
trigger1 = anim = 2202 && animelem = 14
attr = A, HA
damage = 44,4
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = -1 * (var(33):=8032)**0
guard.sparkno= -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=45), var(36):= -60
hitsound = s1,2
guardsound=s2,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = 1
ground.velocity = -8, -4
air.type = Low
air.velocity = -6,-4
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = -12.74
getpower = 0
givepower = 30, 30
envshake.time = 18
envshake.freq = 120
envshake.ampl = 5
fall = 1
fall.recover = 0
sprpriority = 1
yaccel = 0.5
forcestand = 1
down.velocity = 0

[State Idle]
type = statetypeset
trigger1 = anim = 2207
movetype = I
;===========================EX-AIR TATZUMAKI SENPUKYAKU=============================
[Statedef 2210]
type = A
movetype = A
physics = N
anim = 2210
juggle  = 1
ctrl = 0
velset = 0,0
facep2 = 1
sprpriority = 1

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
poweradd = -1000

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8300
ID = 8300
name = "Carga"
postype = p1
pos = -25,-55
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1
size.xscale = 1
size.yscale = 1

[State 3200, Snd]
type = playsnd
trigger1 = anim = 2210 && animelemtime(4) = 1
value = s2000,2
channel = 0
volumescale = 150

[State 3200, Snd]
type = playsnd
trigger1 = anim = 2202 && (animelem = 2 || animelem = 5 || animelem = 8|| animelem = 11|| animelem = 14)
value = s0,3
channel = -1
volumescale = 250
persistent = 1

[State 3200, NHB]
type = nothitby
trigger1 = anim = 2210
time = 1
value = SCA

[State 1100, nothitby]
type = nothitby
trigger1 = anim != 2207
value =  , NP, SP
time = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(7154)=0
trigger1 = anim = 2202
trigger1 = animelemtime(4)>0
anim = 7154
id = 7154
pos = 10,ceil(7 - pos y)
postype = p1
bindtime = 1
facing = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .55,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(71540)=0
trigger1 = anim = 2202
trigger1 = animelemtime(4)>0
anim = 7154
id = 71540
pos = 10,ceil(7 - pos y)
postype = p1
bindtime = 1
facing = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .55,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
triggerall = numexplod(7156)=0
trigger1 = anim = 2202
trigger1 = animelemtime(4)>0
anim = 7156
id = 7156
pos = -10,0
postype = p1
bindtime = 1
facing = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3200, width]
type = width
trigger1 = anim = 2202 && movehit
edge = 50, 35

[State 3200, Vel]
type = velset
trigger1 = anim = 2210 && animelem = 5
y = -6
x = 2.5

[State 3200, Anim]
type = changeanim
trigger1 = anim = 2210 && !animtime
value = 2202;

[State 3200, Vel]
type = velset
trigger1 = anim = 2202
y = -.4
x = 0

[State 3200, Push]
type = playerpush
trigger1 = anim = 2202 || anim = 2207
value = 0
ignorehitpause = 1

[State 3200, Anim]
type = changeanim
trigger1 = anim = 2202 && !animtime
value = 2207
persistent = 0

[State 3200, statetype]
type = statetypeset
;trigger1 = anim = 2210 && animelemtime(5) >= 0
trigger1 = anim = 2207 && animelemtime(3) > 0
trigger2 = anim = 2207 && animelemtime(1) > 0
statetype = A
physics = A

[State 3200, statetype]
type = statetypeset
trigger1 = anim = 2210 && !animtime
trigger2 = anim = 2202 ;&& animelemtime >
statetype = A
physics = N

[State 0, TargetBind]
type = TargetBind
triggerall = movehit && !movereversed
triggerall = p2stateno = [5000,5999]
trigger1 = anim = 2202 && (animelem = 2 || animelem = 8|| animelem = 14)
time = 1
id = -1
pos = 64,5
ignorehitpause = 1

[State 0, TargetBind]
type = TargetBind
triggerall = movehit && !movereversed
triggerall = p2stateno = [5000,5999]
trigger1 = anim = 2202 && (animelem = 5 || animelem = 11)
time = 1
id = -1
pos = -35,5
ignorehitpause = 1

[State 3200, hitevil]
type = hitdef
trigger1 = anim = 2202 && (animelem = 2 || animelem = 8)
attr = A, HA
damage = 44,4
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,7
sparkno = -1 * (var(33):=8032)**0
guard.sparkno= -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=45), var(36):= -60
hitsound = s1,2
guardsound=s2,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = 1
ground.velocity = ifelse(p2dist x > 30, 16, 13), 0;ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
air.type = Low
air.velocity = ifelse(p2dist x > 30, 16, 13),ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0
givepower = 30, 30
envshake.time = 18
envshake.freq = 120
envshake.ampl = 5
fall = 0
fall.recover = 0
sprpriority = -1
;yaccel = 0.5
forcestand = 1

[State 3200, hitevil]
type = hitdef
trigger1 = anim = 2202 && (animelem = 5 || animelem = 11)
attr = A, HA
damage = 44,4
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,5
sparkno = -1 * (var(33):=8032)**0
guard.sparkno= -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=45), var(36):= -60
hitsound = s1,2
guardsound=s2,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = -1
ground.velocity = ifelse(p2dist x > 30, -20, -17), 0;ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
air.type = Low
air.velocity = ifelse(p2dist x > 30, -20, -17), ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0
givepower = 30, 30
envshake.time = 18
envshake.freq = 120
envshake.ampl = 5
fall = 0
fall.recover = 0
sprpriority = 1
;yaccel = 0.5
forcestand = 1

[State 3200, hitevilfinal]
type = hitdef
trigger1 = anim = 2202 && animelem = 14
attr = A, HA
damage = 44,4
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = -1 * (var(33):=8032)**0
guard.sparkno= -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=45), var(36):= -60
hitsound = s1,2
guardsound=s2,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = 1
ground.velocity = -8, -4
air.type = Low
air.velocity = -6,-4
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = -12.74
getpower = 0
givepower = 30, 30
envshake.time = 18
envshake.freq = 120
envshake.ampl = 5
fall = 1
fall.recover = 0
sprpriority = 1
yaccel = 0.5
forcestand = 1
down.velocity = 0

[State Idle]
type = statetypeset
trigger1 = anim = 2207
movetype = I
;======================== EX FORWARD KICK =============================
[Statedef 2300]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
juggle  = 1
anim = 2300
facep2 = 1

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
poweradd = -1000

[State 3000, carga]
type=helper
trigger1 = time = 0
helpertype = normal
stateno = 8300
ID = 8300
name = "Carga"
postype = p1
pos = -5,-5
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1

[State 1300, Vel]
type = velset
trigger1 = animelemtime(3) > 0
trigger1 = animelemtime(4) < 0
x = 8

[State 1300, Snd]
type = playsnd
trigger1 = animelem = 1
value = s100,1
channel = -1

[State 1300, Snd]
type = playsnd
trigger1 = animelem = 6
value = s10,6
channel = 0

[State 1300, Snd]
type = playsnd
trigger1 = animelem = 6
value = s0,5
channel = 1
volumescale = 150

[State 0, Explod]
type = Explod
trigger1 = animelemtime(6) = 0
anim = 7100
ID = 7100
pos = 28,5
postype = p1
facing = -1
vel = .5,0
scale = .35,.35
sprpriority = 3
removeongethit = 0
ignorehitpause = 1
persistent =  1
ownpal = 1
removetime = -2

[State 1300, Hit]
type = hitdef
trigger1 = numtarget(2300)=0
trigger1 =  animelem = 6
attr = S, HA
damage = 167,10
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 13,13
sparkno = -1 * (var(33):=8042)**0
guard.sparkno =  -1 + 0*(var(34):=8105)
sparkxy = -10 + 0*(var(35):=70), var(36):=-75
hitsound   = S1,5
guardsound = S2,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -6, -6
air.type = Low
air.velocity = -6, -6
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0,0
givepower = 60,30
envshake.time = 16
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
forcestand = 1
ID = 2300

[State 1310, p2state]
type = targetstate
trigger1 = movehit && numtarget(2300)
trigger1 = (target(2300), stateno = 5000) || (target(2300), stateno = 5010) || (target(2300), stateno = 5020)
value = 5390
ID = 2300
ignorehitpause = 1

[State 805, Dust]
type = explod
trigger1 = movehit && numtarget(2300)
trigger1 = (target(2300), stateno = 5392)
;trigger1 = (target(2300),backedgebodydist) <= 5 || (target(2300),frontedgebodydist) <= 5
anim = 7401
ID = 7401
sprpriority = -2
angle = -90
postype = p2
pos = -10,-70
removetime = -2
ownpal = 1
scale = 0.4, 0.4
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = movehit && numtarget(2300)
trigger1 = (target(2300), stateno = 5392)
value = S1,10
channel = -1
persistent = 0

[State 1300, Pos]
type = posadd
trigger1 = animelem = 10
x = 17

[State 1300, Pos]
type = posadd
trigger1 = animelem = 11
x = 12
[State 1300, Pos]
type = posadd
trigger1 = !animtime
x = 7

[State Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I

[State 1300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
;======================== KICKED by EX JOUDAN S.G. =============================
[Statedef 5390]
type = A
movetype = H
physics = N
velset = 0, 0

[State 1111300, Anim]
type = changeanim
trigger1 = 1
value = 5002

[State 1111300, End]
type = changestate
trigger1 = hitshakeover
value = 5391

;--- Falling -------------------------------------------------------------------
[Statedef 5391]
type = A
movetype = H
physics = N

[State 1111301, Vel]
type = hitvelset
trigger1 = !time
x = 7
;y = -.2

[State 1111301, Accel]
type = veladd
trigger1 = 1
x = -2
y = -.3

[State 1111301, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1

[State 1111301, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111301, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1111301, bounce]
type = changestate
trigger1 = backedgebodydist <= 10 || frontedgebodydist <= 10
value = 5392

[State 1111301, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;--- Hitting Wall --------------------------------------------------------------
[Statedef 5392]
type = A
movetype = H
physics = N

[State 0, EnvShake]
type = EnvShake
trigger1 = !time
time = 10
freq = 60
ampl = -6

[State 1111302, turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 1111302, Pos]
type = posset
trigger1 = 1
x = -160 * facing

[State 1111302, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 1111302, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1

[State 1111302, Push]
type = playerpush
trigger1 = 1
value = 1

[State 1111302, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 1111302, snd]
type = playsnd
trigger1 = !time
value = f7, 0

[State 1111302, End]
type = changestate
trigger1 = time >= 4
value = 5393

;--- Falling -------------------------------------------------------------------
[Statedef 5393]
type = A
movetype = H
physics = N

[State 1111303, turn]
type = turn
trigger1 = !time

[State 1111303, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 1111303, Vel]
type = velset
trigger1 = !time
x = -2.5
y = -8

[State 1111303, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)

[State 1111303, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050

[State 1111303, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
value = 5061

[State 1111303, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 1111303, Push]
type = playerpush
trigger1 = 1
value = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = vel y > 0 && pos y >= 0
time = 10
freq = 60
ampl = -6

[State 1111303, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100

