;=============================== STAND LIGHT PUNCH =============================
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = ifelse(p2bodydist x <=10,205,200)
sprpriority = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,0+(random%4)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,0
channel = 1

[State 200, Hit]
type = hitdef
trigger1 = anim = 200 && animelem = 2
attr = S, NA
damage = 25,0
animtype = Light
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 8,8
sparkno = -1+0*(var(33):=8002)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10+0*(var(35):=65),var(36):=-83
hitsound = s1,0
guardsound = s2,0
ground.type = High
air.type = High
ground.slidetime = 10*ifelse((var(9)=1),1.5,1)
ground.hittime = 10*ifelse((var(9)=1),1.5,1)
ground.velocity = -4,0
ground.cornerpush.veloff = -8
air.hittime = 18
air.velocity = -4, -5
air.cornerpush.veloff = 0
getpower = 80,40
givepower = 40,20
yaccel = .5
fall.recover = 1

[State 200, Hit]
type = hitdef
trigger1 = anim = 205 && animelem = 2
attr = S, NA
damage = 30,0
animtype = Light
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 8,8
sparkno = -1+0*(var(33):=8001)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10+0*(var(35):=40),var(36):=-90
hitsound = s1,0
guardsound = s2,0
ground.type = High
ground.slidetime = 10*ifelse((var(9)=1),1.5,1)
ground.hittime = 10*ifelse((var(9)=1),1.5,1)
ground.velocity = -4,0
ground.cornerpush.veloff = -8
air.hittime = 18
air.velocity = -4, -5
air.cornerpush.veloff = 0
getpower = 80,40
givepower = 40,20
yaccel = .5
fall.recover = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;=========================== STAND MEDIUM PUNCH ================================
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = ifelse(p2bodydist x<=15,211,210)
sprpriority = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,0+(random%4)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,1
channel = 1

[State Idle]
type = statetypeset
trigger1 = anim = 210 && animelemtime(4) >= 0
trigger2 = anim = 215 && animelemtime(4) >= 0
movetype = I

[State 205, Hit]
type = hitdef
trigger1 = animelem = 3 && anim = 210
attr = S, NA
damage = 75,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = -1+0*(var(33):=8012)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10+0*(var(35):=75),var(36):=-79
hitsound = s1,1
guardsound = s2,0
ground.type = High
getpower = 160,80
givepower = 80,40
ground.slidetime = 14*ifelse((var(9)=1),1.5,1)
ground.hittime = 14*ifelse((var(9)=1),1.5,1)
air.hittime = 14
guard.ctrltime = 14
ground.velocity = -8
air.velocity = -6, -5
airguard.velocity = -5,-1
ground.cornerpush.veloff = -15
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5

[State 205, Hit]
type = hitdef
trigger1 = animelem = 3 && anim = 211
attr = S, NA
damage = 60,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = -1+0*(var(33):=8012)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10+0*(var(35):=65),var(36):=-78
hitsound = s1,1
guardsound = s2,0
ground.type = High
getpower = 160,80
givepower = 80,40
ground.slidetime = 14*ifelse((var(9)=1),1.5,1)
ground.hittime = 14*ifelse((var(9)=1),1.5,1)
air.hittime = 14*ifelse((var(9)=1),1.5,1)
guard.ctrltime = 14
ground.velocity = -8
air.velocity = -4, -5
airguard.velocity = -5,-1
ground.cornerpush.veloff = -15
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;STAND STRONG PUNCH ============================================================
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = ifelse(p2bodydist x<=5,225,220)
sprpriority = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,5+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,2
channel = 1

[State Idle]
type = statetypeset
trigger1 = anim = 220 && animelemtime(5) >= 0
trigger2 = anim = 225 && animelemtime(5) >= 0
movetype = I

[State 0, PosAdd]
type = PosAdd
trigger1 = prevstateno = 210
trigger1 = time = 0
x = 10
ignorehitpause = 1

[State 210, Hit]
type = hitdef
trigger1 = animelem = 4 && anim = 220
attr = S, NA
damage = 100,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12,13
sparkno = -1+0*(var(33):=8022)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=85), var(36):=-72
hitsound = s1,2
guardsound = s2,0
ground.type = Low
getpower = 240,120
givepower = 120,60
ground.slidetime = 17*ifelse((var(9)=1),1.5,1)
ground.hittime = 17*ifelse((var(9)=1),1.5,1)
air.hittime = 17*ifelse((var(9)=1),1.5,1)
guard.ctrltime = 17
ground.velocity = -10
air.velocity = -6, -5
airguard.velocity = -6.5,-1
ground.cornerpush.veloff = ifelse(prevstateno=210,-4,-20)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5

[State 210, Hit]
type = hitdef
trigger1 = animelem = 3 && anim = 225
attr = S, NA
damage = 90,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12,13
sparkno = -1+0*(var(33):=8021)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=55), var(36):=-78
hitsound = s1,2
guardsound = s2,0
ground.type = High
getpower = 240,120
givepower = 120,60
ground.slidetime = 17*ifelse((var(9)=1),1.5,1)
ground.hittime = 17*ifelse((var(9)=1),1.5,1)
air.hittime = 17*ifelse((var(9)=1),1.5,1)
guard.ctrltime = 17
ground.velocity = -10
air.velocity = -3, -8
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = ifelse(prevstateno=210,-4,-20)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
yaccel = .5

[State 210, Hit]
type = hitdef
trigger1 = animelem = 4 && anim = 225
trigger1 = !movecontact && !movereversed
attr = S, NA
damage = 90,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12,13
sparkno = -1+0*(var(33):=8020)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=24), var(36):=-112
hitsound = s1,2
guardsound = s2,0
ground.type = High
getpower = 240,120
givepower = 120,60
ground.slidetime = 17*ifelse((var(9)=1),1.5,1)
ground.hittime = 17*ifelse((var(9)=1),1.5,1)
air.hittime = 17*ifelse((var(9)=1),1.5,1)
guard.ctrltime = 17
ground.velocity = -10
air.velocity = -3, -8
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = ifelse(prevstateno=210,-4,-20)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
yaccel = .5

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;STAND LIGHT KICK ==============================================================
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,0+(random%4)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,3
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 215, Hit]
type = hitdef
trigger1 = animelem = 3
attr = S, NA
damage = 30,0
animtype = Light
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 8,8
sparkno = -1+0*(var(33):=8002)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=60), var(36):=-40
hitsound = s1,3
guardsound = s2,0
ground.type = Low
ground.slidetime = 12*ifelse((var(9)=1),2,1)
ground.hittime = 12*ifelse((var(9)=1),2,1)
ground.velocity = -4.5, 0
ground.cornerpush.veloff = -8.17
getpower = 80,40
givepower = 40,20
ground.slidetime = 10*ifelse((var(9)=1),1.5,1)
ground.hittime = 10*ifelse((var(9)=1),1.5,1)
air.hittime = 10*ifelse((var(9)=1),1.5,1)
guard.ctrltime = 11
ground.velocity = -6
air.velocity = -6.4, -4.8
airguard.velocity = -4,-1
ground.cornerpush.veloff = -8.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
yaccel = .5

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;STAND MEDIUM KICK =============================================================
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = ifelse(p2bodydist x <=10,245,240)
sprpriority = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,0+(random%4)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,4
channel = 1

[State Idle]
type = statetypeset
trigger1 = anim = 240 && animelemtime(4) >= 0
trigger2 = anim = 245 && animelemtime(4) >= 0
movetype = I

[State 220, Hit]
type = hitdef
trigger1 = animelem = 3 && anim = 240
attr = S, NA
damage = 60,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = -1+0*(var(33):=8011)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=40), var(36):=-100
hitsound = s1,4
guardsound = s2,0
ground.type = High
getpower = 160,80
givepower = 80,40
ground.slidetime = 14*ifelse((var(9)=1),1.5,1)
ground.hittime = 14*ifelse((var(9)=1),1.5,1)
air.hittime = 14*ifelse((var(9)=1),1.5,1)
guard.ctrltime = 14
ground.velocity = -8
air.velocity = -6.4, -4.8
airguard.velocity = -5.33,-1
ground.cornerpush.veloff = -15
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
yaccel = .5

[State 220, Hit]
type = hitdef
trigger1 = animelem = 3 && anim = 245
attr = S, NA
damage = 60,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = -1+0*(var(33):=8011)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=65), var(36):=-70
hitsound = s1,4
guardsound = s2,0
ground.type = Low
getpower = 160,80
givepower = 80,40
ground.slidetime = 14*ifelse((var(9)=1),1.5,1)
ground.hittime = 14*ifelse((var(9)=1),1.5,1)
air.hittime = 14*ifelse((var(9)=1),1.5,1)
guard.ctrltime = 14
ground.velocity = -8
air.velocity = -3, -8
airguard.velocity = -5.33,-1
ground.cornerpush.veloff = -15
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
yaccel = .5

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;STAND STRONG KICK =============================================================
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,4+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,5
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 0, Width]
type = Width
trigger1 = anim=255
edge = 10,0

[State 225, Hit]
type = hitdef
trigger1 = animelem = 4
attr = S, NA
damage = 90,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1+0*(var(33):=8021)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=76), var(36):=-82
hitsound = s1,5
guardsound = s2,0
ground.type = High
getpower = 240,120
givepower = 120,60
ground.slidetime = 17*ifelse((var(9)=1),1.5,1)
ground.hittime = 17*ifelse((var(9)=1),1.5,1)
air.hittime = 17*ifelse((var(9)=1),1.5,1)
guard.ctrltime = 17
ground.velocity = -10
air.velocity = -3, -8
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
yaccel = .5

[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;========================== STAND STRONG KICK + BACK ===========================
[Statedef 255]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 255
sprpriority = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,4+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,5
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 0, Width]
type = Width
trigger1 = anim=255
edge = 10,0

[State 225, Hit]
type = hitdef
trigger1 = animelem = 3 && anim = 255
attr = S, NA
damage = 40,0
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12,12
sparkno = -1+0*(var(33):=8020)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=36), var(36):=-114
hitsound = s1,5
guardsound = s2,0
ground.type = High
getpower = 240,120
givepower = 120,60
ground.slidetime = 17*ifelse((var(9)=1),1.5,1)
ground.hittime = 17*ifelse((var(9)=1),1.5,1)
air.hittime = 17*ifelse((var(9)=1),1.5,1)
guard.ctrltime = 17
ground.velocity = -10
air.velocity = -6.4, -4.8
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
yaccel = .5

[State 225, Hit]
type = hitdef
trigger1 = animelem = 5 && anim = 255
attr = S, NA
damage = 60,0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12,12
sparkno = -1+0*(var(33):=8021)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=88), var(36):=-83
hitsound = s1,5
guardsound = s2,0
ground.type = Low
getpower = 80,40
givepower = 40,20
ground.slidetime = 17*ifelse((var(9)=1),1.5,1)
ground.hittime = 17*ifelse((var(9)=1),1.5,1)
air.hittime = 17*ifelse((var(9)=1),1.5,1)
guard.ctrltime = 17
ground.velocity = -10
air.velocity = -5.5, -6
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
persistent = 0
yaccel = .5

[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;======================= COMBO FINISHER STAND STRONG KICK ======================
[Statedef 257]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 257
sprpriority = 1
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,4+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,5
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 0, Width]
type = Width
trigger1 = anim=255
edge = 10,0

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
x = 10
ignorehitpause = 1

[State 225, Hit]
type = hitdef
trigger1 = animelem = 5
attr = S, NA
damage = 90,0
animtype = diagup
air.animtype = diagup
fall.animtype = diagup
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1+0*(var(33):=8021)**0
guard.sparkno= -1+0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=76), var(36):=-82
hitsound = s1,5
guardsound = s2,0
ground.type = High
ground.slidetime = 18*ifelse((var(9)=1),2,1)
ground.hittime = 18*ifelse((var(9)=1),2,1)
ground.velocity = -2.5, -6.5
air.velocity =-2.5, -6
ground.cornerpush.veloff = -9
air.type = Low
air.hittime = 18
air.cornerpush.veloff = 0
getpower = 240,120
givepower = 120,60
yaccel = 0.55
fall = 1
fall.recover = 0
fall.recovertime = 120

[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;FWD + MEDIUM PUNCH ============================================================
[Statedef 300]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
sprpriority = 1
facep2 = 1
anim = 300

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 0, VelAdd]
type = Velset
triggerall = prevstateno != 100
trigger1 = time = 0
x = 0

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 5
x = 3

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = animelem = 4
value = S10,4+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S0,2
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 207, Hit]
type = hitdef
trigger1 = animelem = 4
attr = S, NA
damage = 30,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = HA
priority = 4, Hit
pausetime = 12,12
sparkno = -1 +0* (var(33):=8013)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=45), var(36):=-80
hitsound=s1,1
guardsound=s2,0
ground.type = High
ground.slidetime = 15*ifelse((var(9)=1),1.5,1)
ground.hittime = 15*ifelse((var(9)=1),1.5,1)
ground.velocity = -4.49, 0
ground.cornerpush.veloff = -5
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = 160,80
givepower = 80,40
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120

[State 207, hit2]
type = hitdef
trigger1 = animelem = 5
attr = S, NA
damage = 40,0
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = HA
priority = 4, Hit
pausetime = 12,12
sparkno = -1 +0* (var(33):=8014)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=65), var(36):=-40
hitsound=s1,1
guardsound=s2,0
ground.type = Low
ground.slidetime = 15*ifelse((var(9)=1),1.5,1)
ground.hittime = 15*ifelse((var(9)=1),1.5,1)
ground.velocity = -7.51, 0
ground.cornerpush.veloff = -7
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = 80,40
givepower = 40,20
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120

[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;FWD + MEDIUM KICK =============================================================
[Statedef 310]
type    = A
movetype= A
physics = N
juggle  = 1
ctrl = 0
velset = 0,0
anim = 310
sprpriority = 1
facep2 = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 1100, StateType]
type = StateTypeSet
trigger1 = animelem = 2
StateType = A
physics = N

[State 105, 1]
type = VelSet
trigger1 = animelem = 2
x = 3.5
y = -4.8

[State 105, 1]
type = VelMul
trigger1 = animelemtime(2) > 0
x = .98

[State 105, 1]
type = VelAdd
trigger1 = animelemtime(2) > 0
y = .45

[State 105, 1]
type = statetypeset
trigger1 = AnimElem = 9
movetype = I

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = animelem = 4
value = S10,4+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S0,5
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
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

[State 222, Hit]
type = hitdef
trigger1 = animelem = 8
attr = A, NA
damage = 50, 0
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = -1 +0* (var(33):=8012)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=55), var(36):=-60
hitsound=s1,4
guardsound=s2,0
ground.type = High
ground.slidetime = 15*ifelse((var(9)=1),1.5,1)
ground.hittime = 15*ifelse((var(9)=1),1.5,1)
ground.velocity = -7.51, 0
ground.cornerpush.veloff = -10.47
air.type = Low
air.hittime = 18
air.velocity = -5, -7
air.cornerpush.veloff = 0
getpower = 160,80
givepower = 80,40
yaccel = 0.5
fall.recover = 1
fall.recovertime = 120

[State 300, ChangeState]
type = ChangeState
trigger1 = animelemtime(2) > 0
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 315
;LAND ==========================================================================
[Statedef 315]
type    = S
physics = S
ctrl = 0
anim = 315
velset = 0,0
sprpriority = 1

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

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;SP + FWD
[Statedef 330]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 330
sprpriority = 1
facep2 = 1

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 220, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 12

[State 810, Velocity]
type = VelMul
trigger1 = animelemtime(6) > 0
x = .9

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,4+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = S0,2
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 100, steps]
type = playsnd
trigger1 = animelem = 5
value = s100,2
channel = 1

[State 101, Skid Dust]
type = Explod
trigger1 = animelem = 5
anim = 7170
sprpriority = 3
posType = P1
pos = 2,5
vel = 0,0
scale = 0.25,0.125
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 210, hit]
type=hitdef
trigger1=animelem = 5
attr=S,NA
damage=40,0
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = back
fall.animtype = back
priority = 4,Hit
pausetime=12,12
sparkno = -1 +0* (var(33):=8022)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=55), var(36):=-60
hitsound=s1,2
guardsound=s2,0
ground.type = Low
air.type = High
ground.slidetime = ceil(17*ifelse((var(9)=1),1.5,1))
ground.hittime = ceil(17*ifelse((var(9)=1),1.5,1))
air.hittime = ceil(17*ifelse((var(9)=1),1.5,1))
guard.ctrltime = 17
ground.velocity = -10
guard.velocity = -8.5
air.velocity = -4, -5.25
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -14
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 160,80
givepower = 80,40
persistent = 0
envshake.time = 9
envshake.ampl = 3
yaccel = .5

[State 210, hit]
type=hitdef
trigger1=animelem=6
attr=S,NA
damage=60,0
hitflag = MAF
guardflag = MA
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 4,Hit
pausetime=12,12
sparkno = -1 +0* (var(33):=8022)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=70), var(36):=-60
hitsound=s1,2
guardsound=s2,0
ground.type = Low
air.type = High
ground.slidetime = 17*ifelse((var(9)=1),1.5,1)
ground.hittime = 17*ifelse((var(9)=1),1.5,1)
air.hittime = 17
guard.ctrltime = 17
ground.velocity = -10
guard.velocity = -8.5
air.velocity = -4, -5.25
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -14
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 80,40
givepower = 40,20
persistent = 0
envshake.time = 9
envshake.ampl = 3
yaccel = .5

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Crouching Light Punch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400
sprpriority = 1
velset = 0,0
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,0+(random%4)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,0
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 230, hit]
type=hitdef
trigger1=time = 0
attr=C,NA
damage=15,0
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = back
fall.animtype = back
priority = 2,Hit
pausetime=8,8
sparkno = -1 +0* (var(33):=8002)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=60), var(36):=-50
hitsound=s1,0
guardsound=s2,0
ground.type=Low
ground.slidetime=10*ifelse((var(9)=1),1.5,1)
ground.hittime=10*ifelse((var(9)=1),1.5,1)
ground.velocity=(ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3)),0
ground.cornerpush.veloff=(ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5));,0
air.type=Low
air.hittime=12
air.velocity = -6.4, -4.8
airguard.velocity = -4,-1
air.cornerpush.veloff=0
getpower = 80,40
givepower = 40,20
yaccel=.5
envshake.time = 9
envshake.ampl = 1

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Crouching Medium Punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 410
sprpriority = 1
velset = 0,0
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,0+(random%4)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,1
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 235, hit]
type=hitdef
trigger1=time=0
attr=C,NA
damage=70,0
hitflag = MAF
guardflag = MA
animtype = Medium
air.animtype = back
fall.animtype = back
priority = 3,Hit
pausetime=10,10
sparkno = -1 +0* (var(33):=8012)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=63), var(36):=-42
hitsound=s1,1
guardsound=s2,0
ground.type = Low
air.type = High
ground.slidetime = 14*ifelse((var(9)=1),1.5,1)
ground.hittime = 14*ifelse((var(9)=1),1.5,1)
air.hittime = 14
guard.ctrltime = 14
ground.velocity = -8
guard.velocity = -6.8
air.velocity = -6.4, -4.8
airguard.velocity = -5.33,-1
ground.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 160,80
givepower = 80,40
persistent = 0
envshake.time = 9
envshake.ampl = 2
yaccel = .5

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;=========================== LAUNCHER ==========================================
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 420
sprpriority = 1
velset = 0,0
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,4+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,2
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 240, hit]
type=hitdef
trigger1 = animelem = 4
attr=C,NA
damage=90,0
hitflag = MAF
guardflag = MA
animtype = Heavy
air.animtype = up
fall.animtype = up
priority = 4,Hit
pausetime=18,18
sparkno = -1 +0* (var(33):=8070)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=55), var(36):=-73
hitsound=s1,6
guardsound=s2,0
ground.type=Low
ground.slidetime=7
ground.hittime=7
ground.velocity = -.15,-10
air.velocity=-.15,-9
air.type = Low
air.hittime = 7
air.cornerpush.veloff=0
yaccel=.5
envshake.time = 12
envshake.ampl = 5
getpower = 240,120
givepower = 120,60
ID = 5510

[State 240, hit]
type=hitdef
trigger1=animelem = 5
trigger1 = !movecontact && !movereversed
attr=C,NA
damage=90,0
hitflag = MAF
guardflag = MA
animtype = Heavy
air.animtype = up
fall.animtype = up
priority = 4,Hit
pausetime=18,18
sparkno = -1 +0* (var(33):=8070)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=30), var(36):=-115
hitsound=s1,6
guardsound=s2,0
ground.type=Low
ground.slidetime=7
ground.hittime=7
ground.velocity = -.15,-10
air.velocity=-.15,-9
air.type = Low
air.hittime = 7
air.cornerpush.veloff=0
yaccel=.5
envshake.time = 12
envshake.ampl = 5
getpower = 240,120
givepower = 120,60
ID = 5510
;p2stateno = 5510

[State 0, TargetState]
type = TargetState
;triggerall = enemynear
trigger1 = movehit ;&& !movereversed ;&& numtarget
value = 5510
ID = 5510
ignorehitpause = 0
persistent = 0

[State 0, Launcher Jump]
type = ChangeState
value = 40
triggerall = movehit && numtarget
trigger1 = Command = "holdup"
trigger2 = Command = "holdp" && animelem = 4

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; Opponent Launched
[Statedef 5510]
type    = A
movetype= H
physics = N
velset = 0, 0
ctrl = 0

[State 5051, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 50510

[State 5051, VelSet]
type = VelSet
trigger1 = AnimElem = 2
y = ifelse(pos y <=-30,-7,-11.5)

[State 5051, PlaySnd]
type = VelAdd
trigger1 = 1;AnimElem = 2,>= 0
y = .52

[State 5051, ChangeState]
type = SelfState
trigger1 = Time > 40
trigger2 = Vel Y >= 0
value = 5040
ctrl = 1
;---------------------------------------------------------------------------
; Crouching Light Kick
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 430
sprpriority = 1
velset = 0,0
facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,0+(random%4)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,3
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 245, hit]
type=hitdef
trigger1=time = 0
attr=C,NA
damage=15,0
hitflag = MAF
guardflag = L
animtype = Light
air.animtype = back
fall.animtype = back
priority = 2,Hit
pausetime=8,8
sparkno = -1 +0* (var(33):=8002)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=65), var(36):=3
hitsound=s1,3
guardsound=s2,0
ground.type = Low
air.type = High
ground.slidetime = 10*ifelse((var(9)=1),1.5,1)
ground.hittime = 10*ifelse((var(9)=1),1.5,1)
air.hittime = 10
guard.ctrltime = 11
ground.velocity=(ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-6,-3)),0
ground.cornerpush.veloff=(ifelse((prevstateno=200 || prevstateno = 230 || prevstateno = 430 || prevstateno = 400),-9,-5))
air.hittime=12
air.velocity = -6.4, -4.8
airguard.velocity = -4,-1
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.velocity=-2,-2
getpower = 80,40
givepower = 40,20
yaccel=.5
envshake.time = 9
envshake.ampl = 1

[State 430, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 440
sprpriority = 1
facep2 = 1
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,0+(random%4)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,4
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 250, hit]
type=hitdef
trigger1=time = 0
attr=C,NA
damage=60,0
hitflag = MAF
guardflag = L
animtype = Medium
air.animtype = back
fall.animtype = back
priority = 3,Hit
pausetime=10,10
sparkno = -1 +0* (var(33):=8012)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=60), var(36):=-2
hitsound=s1,4
guardsound=s2,0
ground.type = Low
air.type = High
ground.slidetime = 14*ifelse((var(9)=1),1.5,1)
ground.hittime = 14*ifelse((var(9)=1),1.5,1)
air.hittime = 14
guard.ctrltime = 14
ground.velocity = -8
guard.velocity = -6.8
air.velocity = -6.4, -4.8
airguard.velocity = -5.33,-1
ground.cornerpush.veloff = -11.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 160,80
givepower = 80,40
persistent = 0
envshake.time = 9
envshake.ampl = 2
yaccel = .5

[State 440, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Strong Kick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 450
sprpriority = 1
facep2 = 1
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,4+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,5
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 255, hit]
type=hitdef
trigger1=time = 0
attr=C,NA
damage=100,0
hitflag = MAF
guardflag = L
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 4,Hit
pausetime=12,12
sparkno = -1 +0* (var(33):=8022)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=65), var(36):=-4
hitsound=s1,5
guardsound=s2,0
ground.type = Trip
air.type = High
ground.slidetime = 17
guard.slidetime = 17
ground.hittime = 17*ifelse((var(9)=1),1.5,1)
air.hittime = 17*ifelse((var(9)=1),1.5,1)
guard.ctrltime = 17
ground.velocity = -.5, -3.5
guard.velocity = -8.5
air.velocity = -.5, -3.5
airguard.velocity = -3.67,-1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -9.9
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 240,120
givepower = 120,60
air.fall = 1
fall = 1
fall.recover = 0
air.recover = 0
envshake.time = 9
envshake.ampl = 3
yaccel = .5

[State 450, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------------------- <---------------
; Jump Light Punch
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,0+(random%4)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,0
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 260, hit]
type=hitdef
trigger1=time = 0
attr=A,NA
damage=45,0
hitflag = MAF
guardflag = HA
animtype = Light
air.animtype = back
fall.animtype = back
priority = 2,Hit
pausetime=8,8
sparkno = -1 +0* (var(33):=8003)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=45), var(36):=-45
hitsound=s1,0
guardsound=s2,0
ground.type = High
ground.slidetime = 9*ifelse((var(9)=1),1.5,1)
ground.hittime = 9*ifelse((var(9)=1),1.5,1)
air.hittime = 9
guard.ctrltime = 12
ground.velocity = -3
guard.velocity = -5.33
air.velocity = -4, -5.25
airguard.velocity = -4,-1
ground.cornerpush.veloff = -4.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 80,40
givepower = 40,20
persistent = 0
envshake.time=9
envshake.ampl=1
yaccel = .5
;---------------------------------------------------------------------------
; Jump Medium Punch
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 615
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,0+(random%4)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,1
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 265, hit]
type=hitdef
trigger1= time = 0
attr=A,NA
damage=75,0
hitflag = MAF
guardflag = HA
animtype = Medium
air.animtype = up
fall.animtype = up
priority = 3,Hit
pausetime=10,10
sparkno = -1 +0* (var(33):=8010)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=55), var(36):=-80
hitsound=s1,1
guardsound=s2,0
ground.type = High
ground.slidetime = 12*ifelse((var(9)=1),1.5,1)
ground.hittime = 12*ifelse((var(9)=1),1.5,1)
air.hittime = 12
guard.ctrltime = 15
ground.velocity = -4
guard.velocity = -5.33
air.velocity = -3, -6
airguard.velocity = -5.33,-1
ground.cornerpush.veloff = -5.6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 160,80
givepower = 80,40
persistent = 0
envshake.time=9
envshake.ampl=2
yaccel = .5
;---------------------------------------------------------------------------
; Jump Strong Punch
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 620
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,4+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,2
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 270, hit]
type=hitdef
trigger1=time = 0
attr=A,NA
damage=100,0
hitflag = MAF
guardflag = HA
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 4,Hit
pausetime=12,12
sparkno = -1 +0* (var(33):=8023)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=50), var(36):=-51
hitsound=s1,2
guardsound=s2,0
ground.type = High
ground.slidetime = 12*ifelse((var(9)=1),1.5,1)
ground.hittime = 12*ifelse((var(9)=1),1.5,1)
air.hittime = 12
guard.ctrltime = 20
ground.velocity = -3
guard.velocity = -9.33
air.velocity = -4.4, -1
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -7
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 240,120
givepower = 120,60
persistent = 0
envshake.time=12
envshake.ampl=3
yaccel = .5
;---------------------------------------------------------------------------
; Jump Light Kick
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 630
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,0+(random%4)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,3
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 275, hit]
type=hitdef
trigger1=time = 0
attr=A,NA
damage=40,0
hitflag = MAF
guardflag = HA
animtype = Light
air.animtype = back
fall.animtype = back
priority = 2,Hit
pausetime=8,8
sparkno = -1 +0* (var(33):=8003)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=35), var(36):=-30
hitsound=s1,3
guardsound=s2,0
ground.type = High
ground.slidetime = 9*ifelse((var(9)=1),1.5,1)
ground.hittime = 9*ifelse((var(9)=1),1.5,1)
air.hittime = 9
guard.ctrltime = 12
ground.velocity = -3
guard.velocity = -5.33
air.velocity = -6.4, -4.8
airguard.velocity = -4,-1
ground.cornerpush.veloff = -4.2
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 80,40
givepower = 40,20
persistent = 0
envshake.time=9
envshake.ampl=1
yaccel = .5
;---------------------------------------------------------------------------
; Jump Medium Kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 640
sprpriority = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,0+(random%4)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,4
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 280, hit]
type=hitdef
trigger1=time = 0
attr=A,NA
damage=70,0
hitflag = MAF
guardflag = HA
animtype = Medium
air.animtype = back
fall.animtype = back
priority = 3,Hit
pausetime=10,10
sparkno = -1 +0* (var(33):=8011)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=30), var(36):=-95
hitsound=s1,4
guardsound=s2,0
ground.type = High
ground.slidetime = 12*ifelse((var(9)=1),1.5,1)
ground.hittime = 12*ifelse((var(9)=1),1.5,1)
air.hittime = 12
guard.ctrltime = 15
ground.velocity = -4
guard.velocity = -5.33
air.velocity = -6.4, -4.8
airguard.velocity = -5.33,-1
ground.cornerpush.veloff = -5.6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 160,80
givepower = 80,40
persistent = 0
envshake.time=9
envshake.ampl=2
yaccel = .5
;---------------------------------------------------------------------------
; Jump Strong Kick
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 650
sprpriority = 1
;facep2 = 1

[State 0, PlaySnd]
type = PlaySnd
triggerall = random > 500
trigger1 = time = 0
value = S10,4+(random%3)
channel = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S0,5
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 285, hit]
type=hitdef
trigger1=time = 0
attr=A,NA
damage=100,0
hitflag = MAF
guardflag = HA
animtype = Heavy
air.animtype = back
fall.animtype = back
priority = 4,Hit
pausetime=12,12
sparkno = -1 +0* (var(33):=8022)**0
guard.sparkno= -1 + 0*(var(34):=8100)
sparkxy = -10 + 0*(var(35):=60), var(36):=-45
hitsound=s1,5
guardsound=s2,0
ground.type = High
ground.slidetime = 12*ifelse((var(9)=1),1.5,1)
ground.hittime = 12*ifelse((var(9)=1),1.5,1)
air.hittime = 12
guard.ctrltime = 20
ground.velocity = -5
guard.velocity = -9.33
air.velocity = -6.4, -4.8
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = -7
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 240,120
givepower = 120,60
envshake.time=12
envshake.ampl=3
;======== THROW CONTROLLER ==========
[Statedef 800]
type = S
movetype = A
physics = S
juggle = 15
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 1
facep2 = 1
poweradd = 160

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 1
value = S0,3
channel = 1

[State 800, Strength]
type = varset
trigger1 = !time && !AIlevel
var(10) = 2;ifelse(command = "z", 1, ifelse(command = "y", 2, 3))

[State 800, Do not guard]
type = attackdist
trigger1 = 1
value = 0

[State 800, Hit]
type = hitdef
trigger1 = !time ;&& var(10) = 3
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
hitsound = s800,3
p1facing = ifelse((!AIlevel && command = "holdback") || (AIlevel && frontedgedist < backedgedist), 1, -1)
p2facing = 1
p1stateno = ifelse((!AIlevel && command = "holdback") || (AIlevel && frontedgedist < backedgedist), 801, 803)
guard.dist = 0
fall = 1
fall.recover = 1
fall.recovertime = 120

[State 800, misssnd]
type = playsnd
trigger1 = animelem = 4
value = s800,4
channel = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I

[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=============================== THROW CONNECT ============================
[Statedef 801]
type = S
movetype = A
physics = S
anim = 801
ctrl = 0
sprpriority = 1

;[State Tech Hit]
;type = changestate
;trigger1 = numtarget
;trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
;trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
;value = 890

[State Throw]
type = targetstate
trigger1 = !time
value = 802

[State Width]
type = width
trigger1 = 1
edge = 30, 0

[State 801, Bind 1]
type = targetbind
trigger1 = 1
pos = 45, 0

[State 801, End]
type = changestate
trigger1 = !animtime
value = 805
ctrl = 0

;============================== P2 STATENO 1 ===================================
[Statedef 802]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 802, Anim]
type = changeanim2
trigger1 = !time
value = 802

[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1

;============================== P2 STATENO 2 ===================================
[Statedef 803]
type = S
movetype = A
physics = S
anim = 803
ctrl = 0
sprpriority = 1

;[State Tech Hit]
;type = changestate
;trigger1 = numtarget
;trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
;trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
;value = 890

[State Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1

[State Throw]
type = targetstate
trigger1 = !time
value = 804

[State Width]
type = width
trigger1 = 1
edge = 30, 30

[State 803, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = -45, 0

[State 803, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -25, 0

[State 803, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 0, 0

[State 803, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 22, 0

[State 803, Bind 5]
type = targetbind
trigger1 = animelemtime(5) >= 0
pos = 45, 0

[State 803, spr]
type = sprpriority
trigger1 = 1
value = 1 -2 * (animelemtime(2) >= 0 && animelemtime(5) < 0)

[State 803, End]
type = changestate
trigger1 = !animtime
value = ifelse(var(10) = 3, 810, 805)
ctrl = 0

;============================== P2 STATENO 3 ===================================
[Statedef 804]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 804, Anim]
type = changeanim2
trigger1 = !time
value = 804

[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


;============================== P1 STATENO 1 ===================================
[Statedef 805]
type = S
movetype = A
physics = S
anim = 805
ctrl = 0

[State 805, throw]
type = targetstate
trigger1 = !time
value = ifelse(var(10) = 1, 806, 808)

[State 805, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

;[State Tech Hit]
;type = changestate
;trigger1 = numtarget && var(19)
;trigger1 = (target, command = "holdfwd" || target, command = "holdback") && target, command != "holdup" && target, command != "holddown"
;trigger1 = (target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z")
;value = 890

[State Tech Hit]
type = varadd
trigger1 = var(19) > 0
var(19) = -1

[State 805, width]
type = width
trigger1 = animelemtime(4) < 0
edge = 0, 40

[State 805, width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
edge = 0, 70

[State 805, throw snd]
type = playsnd
trigger1 = animelem = 1
value = s10,1
channel = 0

[State 805, throw snd]
type = playsnd
trigger1 = animelem = 1
value = s0,2
channel = 1

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 15, -76

[State 805, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -11, -105

[State 805, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -40, -80

[State 805, Bind 4]
type = targetbind
trigger1 = animelem = 4 && var(10) = 2
pos = -70, -45

[State 805, Snd]
type = playsnd
trigger1 = numtarget
trigger1 = target, stateno = 5110 && target, time = 1
value = s800, 0
channel = 2
persistent = 0

[State 805, Snd]
type = playsnd
trigger1 = numtarget
trigger1 = target, stateno = 5110 && target, time = 1
value = s800, 0
channel = 3
persistent = 0

[State 805, Snd]
type = playsnd
trigger1 = numtarget
trigger1 = target, stateno = 5110 && target, time = 1
value = s800,0
channel = 3
persistent = 0

[State 805, Dust]
type = explod
trigger1 = numtarget
trigger1 = target, stateno = 5110 && target, time = 1
anim = 7400
ID = 7400
sprpriority = 0
postype = p2
pos = 0,2
removetime = -2
ownpal = 1
scale = 0.5, 0.5

[State 805, Dust]
type = explod
trigger1 = numtarget
trigger1 = target, stateno = 5110 && target, time = 1
anim = 7401
ID = 7401
sprpriority = -2
postype = p2
pos = 0, 0
removetime = -2
ownpal = 1
scale = 0.5, 0.5

[State 805, Shake]
type = envshake
trigger1 = numtarget
trigger1 = target, stateno = 5110 && target, time = 1
time = 10
freq = 60
ampl = 4
persistent = 0

[State 805, hurt]
type = targetlifeadd
trigger1 = var(10) = 2 && numtarget
trigger1 = target, stateno = 5110 && target, time = 1
value = -130

[State 805, hurt]
type = targetpoweradd
trigger1 = animelem = 4
value = 80

[State 805, Power]
type = poweradd
trigger1 = animelem = 4
value = 160

[State 805, throw]
type = targetstate
trigger1 = animelem = 4
value = ifelse(var(10) = 1, 807, 809)

[State 805, Pos]
type = posadd
trigger1 = !animtime
x = 3

[State 805, Turn]
type = turn
trigger1 = !animtime

[State 805, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;============================== P2 STATENO 1 ===================================
[Statedef 806]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 806, Anim]
type = changeanim2
trigger1 = !time
value = 806

[State 806, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[Statedef 807]
type = A
movetype = H
physics = N
velset = 6, -5

[State 807, Accel]
type = gravity
trigger1 = 1

[State 807, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 807, hitground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= (-const(size.ground.front) -const(size.ground.back))
value = 5100

;-----------------------------------------------------
[Statedef 808]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 808, Anim]
type = changeanim2
trigger1 = !time
value = 808
[State 808, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

;----------------------------------------------
[Statedef 809]
type = A
movetype = H
physics = N
velset = 2, 10

[State 809, Accel]
type = gravity
trigger1 = 1

[State 809, hitground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= -9
value = 5110

;============================ Target Escaped ===============================
[Statedef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 890, Bind]
type = targetbind
trigger1 = !time && numtarget
pos = 0, 0

[State 890, p2state]
type = targetstate
trigger1 = !time && numtarget
value = 895

[State 890, Throw]
type = targetfacing
trigger1 = !time && numtarget
value = -1

[State 890, Pos]
type = posadd
trigger1 = !time
x = 24

[State 890, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 890, Push]
type = playerpush
trigger1 = 1
value = 0

[State 890, Pos]
type = posset
trigger1 = !time
y = 0

[State 890, Vel]
type = velset
trigger1 = 1
x = -1.425
y = 0

[State 890, Snd]
type = playsnd
trigger1 = time = 2
value = ifelse(var(1) = 2, 5010, 5000), ifelse(var(1) = 2, 1, 4)
channel = 0

[State 890, FX]
type = playsnd
trigger1 = !time
value = 7, 3

[State 890, End]
type = changestate
trigger1 = time >= 27
value = 0
ctrl = 1


;========================= P2 STATENO ESCAPE 2 ================================
[Statedef 895]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 895, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5945), 5945, 130)

[State 895, Anim]
type = changeanim
trigger1 = !time && !selfanimexist(5945) && selfanimexist(5910)
value = 5910

[State 895, Anim]
type = changeanim
trigger1 = time >= 20 && anim = 130
value = 140

[State 895, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 895, Push]
type = playerpush
trigger1 = 1
value = 0

[State 895, Pos]
type = posset
trigger1 = !time
y = 0
[State 895, Vel]
type = velset
trigger1 = 1
x = -1.425
y = 0

[State 895, End]
type = selfstate
trigger1 = time >= 27
value = 0
ctrl = 1

