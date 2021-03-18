;=========================== SHINKU HADOUKEN ============================
[StateDef 3000]
type = S
physics = S
movetype = A
anim = 3000
ctrl = 0
velset = 0, 0
poweradd = 40
sprpriority = 1
facep2 = 1

[state -2, Reduce V-GAUGE]
type = varadd
trigger1 = time = 0
v = 42
value = -ceil(var(40))

[State 3000, Superpause]
type = superpause
triggerall = anim = 3000
trigger1 = time = 0
time = 45
movetime = 45
p2defmul = 1
unhittable = 1
anim = -1
sound = -1
darken = 0
poweradd = 0;-3000

[State 3000, carga]
type=helper
triggerall = anim = 3000
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = 2,-67
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1

[State 1000, width]
type = width
trigger1 = time > 45
value = 30, 0

[State 1000, Hadouken]
type = helper
triggerall = anim = 3000
trigger1 = animelemtime(26) = 0
helpertype = normal
stateno = 3090
ID = 3090
name = "Hadouken"
postype = p1
pos = 80, -70
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1000, Snd]
type = playsnd
triggerall = anim = 3000
trigger1 = time = 0
value = s3000,0
channel = 0

[State 1000, Snd]
type = playsnd
triggerall = anim = 3000
trigger1 = animelemtime(26) = 0
value = s3000,2
channel = 0

[State 1000, Snd]
type = playsnd
triggerall = anim = 3000
trigger1 = animelemtime(26) = 1
value = s1090,0
channel = 5
;volumescale = 150

[State 1000, Snd]
type = playsnd
triggerall = anim = 3000
trigger1 = animelemtime(26) = 1
value = s7000,11
channel = 6
;volumescale = 150

[State 1000, Snd]
type = playsnd
triggerall = anim = 3000
trigger1 = animelemtime(26) = 1
value = s7000,11
channel = 7
;volumescale = 150

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 3000 && animelemtime(27) > 0
trigger1 = numhelper(3090)=0
value = 3001
ignorehitpause = 1

[State 1000, End]
type = changestate
trigger1 = anim = 3001
trigger1 = !animtime
value = 0
ctrl = 1
;============================ LIGHT SHORYUUKEN ============================
[Statedef 3100]
type    = S
movetype = A
physics = S
juggle  = 0
ctrl = 0
velset = 0,0
anim = 3100
facep2 = 1

[State 3000, Superpause]
type = superpause
triggerall = anim = 3100
trigger1 = time = 0
time = 45
movetime = 45
p2defmul = 1
unhittable = 1
anim = -1
sound = -1
darken = 0
poweradd = -3000

[State 3000, carga]
type=helper
triggerall = anim = 3100
trigger1 = time = 0
helpertype = normal
stateno = 8500
ID = 8500
name = "Carga"
postype = p1
pos = 2,-67
ownpal = 1
persistent = 0
supermovetime = 255
ignorehitpause = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElemTime(4) = 2
x = 4.5
y = -8.5

[State 1100, Gravity]
type = Veladd
trigger1 = AnimElemTime(4) >= 2
y = .55

[State 1100, Velocity]
type = VelMul
trigger1 = AnimElemTime(4) >= 2
x = .9

[State 1100, HitDef]
type = HitDef
;triggerall = movehit <=0
trigger1 = AnimElem = 3
attr = S, SA
animtype  = Heavy
air.animtype = up
fall.animtype = up
snap = 0,-20
damage = 120,12
priority  = 6, Hit
hitflag = MAF
guardflag = MA
pausetime=80,80
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
p2stateno=5195

[State 1100, ChangeState]
type = ChangeState
triggerall = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(4) >= 2
value = 1105
;---------------------------------------------------------------------------
;p2state
[Statedef 5195]
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
trigger1 = time = 125
x = -.25
y = -7.5

[State 1100, Gravity]
type = Veladd
trigger1 = time > 126
y = .5

[State 3805, end]
type=selfstate
trigger1 = time > 140
value=5050

