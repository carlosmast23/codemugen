;============================== JUMP DUST ======================================
[Statedef 7100]
physics = N
anim=9741
velset=0,0

[State 8100, Bind]
type=bindtoroot
trigger1 = root,stateno != [100,105]
trigger1= time

[State 8100, Bind]
type=bindtoroot
trigger1 = root,stateno = [100,105]
trigger1= time
pos = 0,10

[State 8100, Dust]
type=explod
trigger1= !time
anim=7103
sprpriority=3
postype=p1
pos=-3,-2
scale=.32,.22
pausemovetime=-1
supermovetime=-1
ownpal=1
vel = 0,-.2

[State 8100, Dust]
type=explod
trigger1= !time
anim=7103
sprpriority=3
postype=p1
pos=-3,-2
scale=.32,.22
pausemovetime=-1
supermovetime=-1
ownpal=1
vel = 0,-.2

[State 8100, Dust]
type=explod
trigger1= !time
anim=7103
sprpriority=3
postype=p1
pos=-3,-2
scale=.32,.22
pausemovetime=-1
supermovetime=-1
ownpal=1
vel = 0,-.2

[State 8100, End]
type=destroyself
trigger1= time>=7
;======================== BURN FX =============================
[Statedef 7180]
physics = N
velset=0,0
anim=9741
sprpriority=4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !(time % 10)
value = S1100,6
channel = -1

[State 7180, assert]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1

[State 7180, flames]
type=explod
trigger1 = !(time % 5)
trigger1= 1
anim=7180
ID=7180
sprpriority=3
postype=p2
vel=-.2,-.75
pos=(enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+(ifelse((enemynear,statetype != A),-5,10))
random=60,60;40,40;50,40
removetime=-2
scale=(.2-(.001*time)),(.2-(.001*time))
ownpal=0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1;numexplod(7180)
ID = 7180
trans=add1
scale=(.2-(.001*time)),(.2-(.001*time))

[State 7180, flames]
type=explod
trigger1 = !(time % 5)
trigger1= 1
anim=7181
ID=7181
sprpriority=3
postype=p2
vel=-.2,-.75
pos=(enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+(ifelse((enemynear,statetype != A),-5,10))
random=40,40;40,40;50,40
removetime=-2
scale=(.3-(.001*time)),(.3-(.001*time))
ownpal=0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1;numexplod(7180)
ID = 7181
trans=sub

[State 7180, pos]
type=posadd
trigger1= 1
x=ceil(p2dist x)
y=ceil(p2dist y)

[State 7180, end]
type=destroyself
trigger1= time>=(ifelse(enemynear,statetype != A ,30,120))
trigger2= enemynear,ctrl || (enemynear,movetype!=H) || (enemynear,statetype=L)
;=========================== EX-FX ========================
[Statedef 7200]
physics = N
anim = 9741
velset = 0,0
ctrl = 0
sprpriority = 0

[State 0, Explod]
type = Explod
trigger1 = time=0
anim =7202
ID = 7202
pos = 0,0
vel = -.05,0
postype = p1
bindtime = 1
removetime = -2
scale = .55,.55
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S7000,4
channel = 10
volume = 200

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S4000,11
channel = 11
volume = -100

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 41

[State 1150, ChangeState]
type = DestroySelf
trigger1 = time > 41
;======================== KANJI B.G. =============================
[Statedef 7610]
physics = N
velset = 0, 0
anim = 9741

[State 7610, Assert]
type = assertspecial
trigger1 = 1;time < 120
flag = nomusic

[State 7610, black]
type = bgpalfx
trigger1 = time < 120
time = 2
add = -255, -255, -255

;[State 7610, black]
;type = bgpalfx
;trigger1 = time = 120
;time = 60
;add = -255, -255, -255
;sinadd = 255, 255, 255, 240

;[State 7610, Fade]
;type = palfx
;trigger1 = time = 120
;time = 60
;sinadd = -255, -255, -255, 240

[State 7610, Kanji]
type = explod
trigger1 = !time
anim = 7610
ID = 7610
sprpriority = -5
postype = left
pos = 160, 90
scale = 0.5 * (1.3333333 * gameheight / gamewidth), 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1

[State 7610, Shrink]
type = modifyexplod
trigger1 = time < 6
ID = 7610
scale = (5.5 - time) * (1.3333333 * gameheight / gamewidth), (5.5 - time) * (1.3333333 * gameheight / gamewidth)

[State 7610, Shrink]
type = modifyexplod
trigger1 = time >= 6
ID = 7610
scale = 0.5 * (1.3333333 * gameheight / gamewidth), 0.5 * (1.3333333 * gameheight / gamewidth)

[State 7610, flamebg]
type = explod
trigger1 = !time
anim = 7611
ID = 7611
sprpriority = -6
postype = left
pos = 0, floor((gameheight / gamewidth) * 80) - 60
bindtime = -1
removetime = -1
pausemovetime = 300
supermovetime = 300

[State 7610, Assert]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = nobardisplay
ignorehitpause = 1

[State 7610, Assert]
type = assertspecial
trigger1 = time < 180
flag = noFG
ignorehitpause = 1

;[State 7610, Safety]
;type = removeexplod
;trigger1 = time >= 180

[State 7610, End]
type = destroyself
trigger1 = time >= 180
;============================ NORMAL UP LIGHT HITSPARK =================
[Statedef 8000]
physics = N
anim = 8000
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .25,.25
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 90
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL UP-RIGHT LIGHT HITSPARK =================
[Statedef 8001]
physics = N
anim = 8000
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .25,.25
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 135
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL RIGHT LIGHT HITSPARK =================
[Statedef 8002]
physics = N
anim = 8000
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .25,.25
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 180
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL DOWN-RIGHT LIGHT HITSPARK =================
[Statedef 8003]
physics = N
anim = 8000
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .25,.25
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 225
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL DOWN LIGHT HITSPARK =================
[Statedef 8004]
physics = N
anim = 8000
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .25,.25
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 270
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL UP MEDIUM HITSPARK =================
[Statedef 8010]
physics = N
anim = 8010
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .2,.2
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 90
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL UP-RIGHT MEDIUM HITSPARK =================
[Statedef 8011]
physics = N
anim = 8010
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .2,.2
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 135
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL RIGHT MEDIUM HITSPARK =================
[Statedef 8012]
physics = N
anim = 8010
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .2,.2
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 180
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL DOWN-RIGHT MEDIUM HITSPARK =================
[Statedef 8013]
physics = N
anim = 8010
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .2,.2
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 225
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL DOWN LMEDIUM HITSPARK =================
[Statedef 8014]
physics = N
anim = 8010
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .2,.2
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 270
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL UP HARD HITSPARK =================
[Statedef 8020]
physics = N
anim = 8020
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .18,.18
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 90
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL UP-RIGHT HARD HITSPARK =================
[Statedef 8021]
physics = N
anim = 8020
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .18,.18
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 135
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL RIGHT HARD HITSPARK =================
[Statedef 8022]
physics = N
anim = 8020
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .18,.18
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 180
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL DOWN-RIGHT HARD HITSPARK =================
[Statedef 8023]
physics = N
anim = 8020
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .18,.18
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 225
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ NORMAL DOWN HARD HITSPARK =================
[Statedef 8024]
physics = N
anim = 8020
velset = 0, 0
sprpriority = 5

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .18,.18
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 270
ignorehitpause = 1

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 30
trigger3 = enemynear,movetype!=h
;============================ SPECIAL UP HITSPARK =================
[Statedef 8030]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .35,.155
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 90
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .4,.4
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .3-((time-3)*.058),.3-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.1 + (0.009375 * time), 0.1 + (0.009375 * time)
trans = addalpha
alpha = 256 -(20*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .35+(.01*time),.35+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;============================ SPECIAL UP-RIGHT HITSPARK =================
[Statedef 8031]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .35,.155
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 135
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .4,.4
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .3-((time-3)*.058),.3-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.1 + (0.009375 * time), 0.1 + (0.009375 * time)
trans = addalpha
alpha = 256 -(20*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .35+(.01*time),.35+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;============================ SPECIAL RIGHT HITSPARK =================
[Statedef 8032]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .35,.155
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 180
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .4,.4
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .30-((time-3)*.058),.30-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.1 + (0.009375 * time), 0.1 + (0.009375 * time)
trans = addalpha
alpha = 256 -(20*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .35+(.01*time),.35+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;============================ SPECIAL DOWN-RIGHT HITSPARK =================
[Statedef 8033]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .35,.155
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 225
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .4,.4
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .3-((time-3)*.058),.3-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.1 + (0.009375 * time), 0.1 + (0.009375 * time)
trans = addalpha
alpha = 256 -(20*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .35+(.01*time),.35+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;============================ SPECIAL DOWN HITSPARK =================
[Statedef 8034]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .35,.155
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 270
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .4,.4
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .3-((time-3)*.058),.3-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.1 + (0.009375 * time), 0.1 + (0.009375 * time)
trans = addalpha
alpha = 256 -(20*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .35+(.01*time),.35+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;=============================== SUPER UP HITSPARK =============================
[Statedef 8040]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .36,.165
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 90
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .42,.42
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .34-((time-3)*.058),.34-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.11 + (0.009375 * time), 0.11 + (0.009375 * time)
trans = addalpha
alpha = 256 -(20*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .36+(.01*time),.36+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;============================ SUPER UP-RIGHT HITSPARK =================
[Statedef 8041]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .36,.165
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 135
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .42,.42
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .34-((time-3)*.058),.34-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.11 + (0.009375 * time), 0.11 + (0.009375 * time)
trans = addalpha
alpha = 256 -(20*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .36+(.01*time),.36+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;============================ SUPER RIGHT HITSPARK =================
[Statedef 8042]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .36,.165
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 180
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .42,.42
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .34-((time-3)*.058),.34-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.11 + (0.009375 * time), 0.11 + (0.009375 * time)
trans = addalpha
alpha = 256 -(20*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .36+(.01*time),.36+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;============================ SUPER DOWN-RIGHT HITSPARK =================
[Statedef 8043]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .36,.165
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 225
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .42,.42
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .34-((time-3)*.058),.34-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.11 + (0.009375 * time), 0.11 + (0.009375 * time)
trans = addalpha
alpha = 256 -(20*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .36+(.01*time),.36+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;============================ SUPER DOWN HITSPARK =================
[Statedef 8044]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .36,.165
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 270
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .42,.42
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .34-((time-3)*.058),.34-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.11 + (0.009375 * time), 0.11 + (0.009375 * time)
trans = addalpha
alpha = 256 -(20*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .36+(.01*time),.36+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;============================ ULTRA UP HITSPARK =================
[Statedef 8050]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .37,.175
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 90
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .44,.44
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .39-((time-3)*.058),.39-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.12 + (0.009375 * time), 0.12 + (0.009375 * time)
trans = addalpha
alpha = 256 -(11*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .37+(.01*time),.37+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;============================ ULTRA UP-RIGHT HITSPARK =================
[Statedef 8051]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .37,.175
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 135
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .44,.44
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .39-((time-3)*.058),.39-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.12 + (0.009375 * time), 0.12 + (0.009375 * time)
trans = addalpha
alpha = 256 -(11*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .37+(.01*time),.37+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;============================ ULTRA RIGHT HITSPARK =================
[Statedef 8052]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .37,.175
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 180
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .44,.44
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .39-((time-3)*.058),.39-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.12 + (0.009375 * time), 0.12 + (0.009375 * time)
trans = addalpha
alpha = 256 -(11*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .37+(.01*time),.37+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;============================ ULTRA DOWN-RIGHT HITSPARK =================
[Statedef 8053]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .37,.175
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 225
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .44,.44
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .39-((time-3)*.058),.39-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.12 + (0.009375 * time), 0.12 + (0.009375 * time)
trans = addalpha
alpha = 256 -(11*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .37+(.01*time),.37+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;============================ ULTRA DOWN HITSPARK =================
[Statedef 8054]
physics = N
anim = 9741
velset = 0, 0

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .37,.175
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 270
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .44,.44
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .39-((time-3)*.058),.39-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040+(random%2)
ID = 8040
postype = p1
pos = -5,0
facing = 1
vfacing = 1
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.12 + (0.009375 * time), 0.12 + (0.009375 * time)
trans = addalpha
alpha = 256 -(11*time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050+(random%2)
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority = 0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale = .37+(.01*time),.37+(.01*time)
trans = sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 27
trigger3 = enemynear,movetype!=h
;=============================== CUTSPARK ======================================
[Statedef 8060]
physics = N
anim = 8020+(random%2)
velset = 0, 0
sprpriority = 10

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .19,.17
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 90
ignorehitpause = 1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040
ID = 8040
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 9
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.065 + (0.009375 * time), 0.065 + (0.009375 * time)
trans = addalpha
alpha = 256 -(11 * time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050
ID=8050
postype=p1
pos = 0,0
facing = 1
vfacing = 1
sprpriority=11
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale= .4+(.01*time),.4+(.01*time);.28+(.01*time),.28+(.01*time)
trans=sub

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 25
trigger3 = enemynear,movetype!=h

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 25
trigger3 = enemynear,movetype!=h
;==================== LAUNCHER HITSPARK =================================
[Statedef 8070]
physics = N
anim = 9741
velset = 0, 0
sprpriority = 0

[State 0, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1

[State 8010, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .19,.18
ignorehitpause = 1

[State 0, AngleAdd]
type = AngleAdd
trigger1 = !time
value = 90
ignorehitpause = 1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8020+(random%2)
ID = 8020
scale = .35,.155
postype = p1
pos = 0,0
facing = 1
vfacing = 1
angle = 90
sprpriority = 0
removetime = -2
pausemovetime = -1
supermovetime = -1

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8035
ID = 8035
scale = .4,.4
postype = p1
pos = 0,0
facing = ifelse(random<500,1,-1)
vfacing = ifelse(random<500,1,-1)
sprpriority = 5
removetime = 9
pausemovetime = -1
supermovetime = -1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = numexplod(8035) = 1
trigger1 = time > 2
ID = 8035
scale = .35-((time-3)*.058),.35-((time-3)*.058)
angle = time*90

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8040
ID = 8040
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
sprpriority = 0
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(8040)
ID = 8040
scale = 0.19 + (0.009375 * time), 0.19 + (0.009375 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8010, Black Center]
type=explod
trigger1= time = 0
anim=8050
ID=8050
postype=p1
pos = 0,0
facing= ifelse(random<500, -1, 1)
vfacing=ifelse(random<500, -1, 1)
sprpriority=0
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
trigger1= numexplod(8050)
ID=8050
scale=.41+(.1*time),.41+(.1*time)
trans=sub

[State 0, Explod]
type = Explod
trigger1 = root,stateno = 420
trigger1 = !time
trigger1 = numexplod(7141) <1
anim = 7141
ID = 7141
;pos = 0,0
pos = 0,ceil(5 - pos y)
postype = p1
facing = -1
bindtime = 1
scale = .5,.5
sprpriority = 2
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 1
removetime = -2

[State 8010, End]
type = removeexplod
trigger1 = animtime = 0
trigger2 = time >= 25

[State 8010, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = time >= 25
;======================== COUNTER FX LIGHT =============================
[Statedef 8080]
physics = N
velset = 0, 0
anim = 9741

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s1,11
volumescale = 110
channel = -1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 16
freq = 120
ampl = -8

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 8290, Circle]
type = explod
trigger1 = time = 0
anim = 8080
ID = 8080
sprpriority = -1
scale = .4,.4
postype = p1
facing = -1
removetime = -2
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8290, Circle]
type = explod
trigger1 = time = 0
anim = 8040
ID = 8040
sprpriority = -2
scale = .3,.3
postype = p1
facing = facing
removetime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8290, Circle]
type = explod
trigger1 = time = 0
anim = 8050
ID = 8050
sprpriority = -1
scale = .5,.5
postype = p1
facing = facing
removetime = -2
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8040
scale =.07+(.01*time),.07+(.01*time)
trans = addalpha
alpha = ceil(256 -(12.8 * time)), 256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8050
scale =.32+(.01*time),.32+(.01*time)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time > 20

[State 8290, End]
type = destroyself
trigger1 = time > 20
;======================== COUNTER FX MEDIUM =============================
[Statedef 8081]
physics = N
velset = 0, 0
anim = 9741

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s1,11
volumescale = 110
channel = -1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 16
freq = 120
ampl = -8

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 8290, Circle]
type = explod
trigger1 = time = 0
anim = 8080
ID = 8080
sprpriority = -1
scale = .45,.45
postype = p1
facing = -1
removetime = -2
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8290, Circle]
type = explod
trigger1 = time = 0
anim = 8040
ID = 8040
sprpriority = -2
scale = .3,.3
postype = p1
facing = facing
removetime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8290, Circle]
type = explod
trigger1 = time = 0
anim = 8050
ID = 8050
sprpriority = -1
scale = .5,.5
postype = p1
facing = facing
removetime = -2
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8040
scale =.1+(.01*time),.1+(.01*time)
trans = addalpha
alpha = ceil(256 -(12.8 * time)), 256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8050
scale =.35+(.01*time),.35+(.01*time)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time > 20

[State 8290, End]
type = destroyself
trigger1 = time > 20
;======================== COUNTER FX HARD =============================
[Statedef 8082]
physics = N
velset = 0, 0
anim = 9741

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s1,11
volumescale = 110
channel = -1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 16
freq = 120
ampl = -8

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 8290, Circle]
type = explod
trigger1 = time = 0
anim = 8080
ID = 8080
sprpriority = -1
scale = .65,.65
postype = p1
facing = -1
removetime = -2
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8290, Circle]
type = explod
trigger1 = time = 0
anim = 8040
ID = 8040
sprpriority = -2
scale = .3,.3
postype = p1
facing = facing
removetime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8290, Circle]
type = explod
trigger1 = time = 0
anim = 8050
ID = 8050
sprpriority = -1
scale = .5,.5
postype = p1
facing = facing
removetime = -2
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8040
scale =.13+(.01*time),.13+(.01*time)
trans = addalpha
alpha = ceil(256 -(12.8 * time)), 256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8050
scale =.38+(.01*time),.38+(.01*time)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time > 20

[State 8290, End]
type = destroyself
trigger1 = time > 20
;======================== COUNTER FX SPECIAL =============================
[Statedef 8083]
physics = N
velset = 0, 0
anim = 9741

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s1,11
volumescale = 110
channel = -1

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 16
freq = 120
ampl = -8

[State 8290, Circle]
type = explod
trigger1 = time = 0
anim = 8080
ID = 8080
sprpriority = -1
scale = .8,.8
postype = p1
facing = -1
removetime = -2
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =  1
flag = noshadow

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time > 20

[State 8290, End]
type = destroyself
trigger1 = time > 20

;============================ NORMAL GUARD-SPARK=================
[Statedef 8100]
physics = N
anim=8100
velset=0,0
sprpriority=7

[State 8010, assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8010, scale]
type=angledraw
trigger1= 1
scale=.4,.4

[State 8010, end]
type=removeexplod
trigger1= animtime = 0

[State 8010, end]
type=destroyself
trigger1= animtime = 0
;============================ SPECIAL GUARD SPARK =================
[Statedef 8105]
physics = N
anim=8105
velset=0,0
sprpriority=7

[State 8010, assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 0, Explod]
type = Explod
trigger1 = time=0
anim = 8106
ID = 8106
pos = -10,0
postype = p1
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
supermovetime=9999
pausemovetime=9999
scale = .75,.75
sprpriority = 7
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause =  1

[State 8010, scale]
type=angledraw
trigger1= 1
scale=.05+(time*.01),.14+(time*.01)

[State 8010, trans]
type=trans
trigger1= time <5
trans=addalpha
alpha=256,256

[State 8010, trans]
type=trans
trigger1= time >=5
trans=addalpha
alpha=256-(time*30),256

[State 8010, end]
type=removeexplod
trigger1= time>=12

[State 8010, end]
type=destroyself
trigger1= time>=12
;=========================== V - REVERSAL SUPERPAUSE ========================
[Statedef 8200]
physics = N
anim = 9741;6901
velset = 0,0
ctrl = 0
sprpriority = 3

[State 8500, Rotate]
type=angleadd
trigger1= 1
value=-6

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7000,6
channel = -1
volumescale = 90

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = [0,10]
time = 1
color = ceil((time)*25.6)

[State 0, Explod]
type = Explod
trigger1 = time =0
anim = 8200
ID = 8200
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = .5,.5
removetime = -2
supermovetime = 255
pausemovetime = 255
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = time = 2
anim = 8201
ID = 8201
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
removetime = 5
supermovetime = 255
pausemovetime = 255
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8201
scale = 1-(time*.2),1-(time*.2)

[State 1150, ChangeState]
type = DestroySelf
trigger1 = time > 10
;=========================== EX - SUPERSPARK =============================
[Statedef 8300]
physics = N
anim = 9741;6004
velset = 0,0
ctrl = 0
sprpriority = 3

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8300
ID = 8300
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = 1,1
removetime = 8
supermovetime = 255
pausemovetime = 255
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8300
scale = 1.5-(time*.1875),1.5-(time*.1875)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8301
ID = 8301
pos = 0,0
postype = p1
facing = 1
bindtime = 1
removetime = -2
scale = .25,.25
sprpriority = 3
ownpal = 1
supermovetime = 255
pausemovetime = 255
removeongethit =1
ignorehitpause = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;flag2 = nobardisplay

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S7000,4
volumescale = 65
channel = -1

[State 1150, ChangeState]
type = DestroySelf
trigger1 = time > 15
;=========================== V - TRIGGER SUPERPAUSE ========================
[Statedef 8400]
physics = N
anim = 9741

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time<16
flag = noshadow
flag2 = noFG
flag3 = nobardisplay

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time<16
time = 1
color = 0
mul = 180,0,0

[State 200,Playsnd avanicada]
type = playsnd
trigger1 = time = 0
value = s7000,1
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8410
ID = 8402
pos = 0,0
postype = p1
scale = .1,.1
facing = -1
vfacing = -1
bindtime = 1
removetime = -2
supermovetime = 255
pausemovetime = 255
sprpriority = -1
ownpal = 1
removeongethit = 0
ignorehitpause = 0
trans = sub

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8410
ID = 84020
pos = 0,ceil(10 - pos y)
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = .1,.2
removetime = -2
supermovetime = 255
pausemovetime = 255
sprpriority = -1
ownpal = 1
removeongethit = 0
ignorehitpause = 0
trans = sub

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8402
scale = .27+(time*.08),.27+(time*.07)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 10
ID = 8402
;trans = addalpha
;alpha = 256-((time-10)*25),256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 84020
scale = .19+(time*.08),.1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 10
ID = 84020
;trans = addalpha
;alpha = 256-((time-10)*25),256

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "redspinner"
ID = 8401
stateno = 8401
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
Ownpal = 1
supermovetime = 999

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "blackcircle"
ID = 8402
stateno = 8402
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
Ownpal = 1
supermovetime = 999

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8450
ID = 8450
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .25,.25
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
;trans = sub

;[State 0, Explod]
;type = Explod
;trigger1 = time = 0
;anim = 8405
;ID = 8405
;pos = 0,0
;postype = p1
;bindtime = 1
;removetime = -2
;supermovetime = 999
;pausemovetime = 999
;scale = .25,.25
;sprpriority = 3
;ownpal = 1
;removeongethit = 1
;ignorehitpause = 1
;trans = add
;angleadd = 45

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 14
ID = 8405
trans = addalpha
alpha = 256-((time-14)*55),256

;[State 0, Helper]
;type = Helper
;trigger1 = time = 0
;helpertype = normal
;name = "explosionatras"
;ID = 8740
;stateno = 8740
;pos = 0,0
;postype = p1
;facing = 1
;keyctrl = 0
;ownpal = 1
;supermovetime = 999
;pausemove
;ignorehitpause = 1

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 25

[State 1150, ChangeState]
type = DestroySelf
trigger1 = time >= 25
;======================= V - TRIGGER SUPERPAUSE SPINNING ==========================
[Statedef 8401]
physics = N
anim = 8480
sprpriority = 0

;[State 0, Trans]
;type = Trans
;trigger1 = 1
;trans = sub

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1-(time*.09),1-(time*.09)

[State 0, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 20

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 11

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 11
;======================= V - TRIGGER SUPERPAUSE SPINNING ==========================
[Statedef 8402]
physics = N
anim = 8482
sprpriority = 3

[State 0, Trans]
type = Trans
trigger1 = 1
trans = sub

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1-(time*.09),1-(time*.09)

[State 0, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 35

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 11

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 11
;============================== SUPER SPARK ===================================
[Statedef 8500]
physics = N
anim = 9741

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
;flag3 = noBG

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
color = 0
mul = 10,25,95

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S7000,1
channel = -1
volumescale = 150

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8600
ID = 8600
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = .05,.05
sprpriority = 2
ownpal = 1
pausemovetime = 999
supermovetime = 999
removetime = 49

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = (gametime%2) = 1
ID = 8600
angle = 30*time
scale = ifelse(random<500,.05,.07),ifelse(random<500,.05,.07)



[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8500
ID = 8610
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = .5,.5
sprpriority = -2
ownpal = 1
pausemovetime = 999
supermovetime = 999
removetime = 49

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 5
ID = 8610
angle = 30*time
scale = (.05*time),(.05*time)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 5
trigger1 = (gametime%2) = 1
ID = 8610
angle = 30*time
scale = ifelse(random<500,.25,.4),ifelse(random<500,.25,.4)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8510
ID = 8611
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = .05,.05
sprpriority = 2
ownpal = 1
pausemovetime = 999
supermovetime = 999
removetime = 15

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8611
scale = .05+(.25*time),.05+(.25*time)

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 44

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 44
;================================= ULTRA SPARK =================================
[Statedef 8600]
physics = N
anim = 9741

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
;flag3 = noBG

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
color = 0
mul = 90,20,10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S7000,3
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8600
ID = 8600
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = .05,.05
sprpriority = 2
ownpal = 1
pausemovetime = 999
supermovetime = 999
removetime = 49

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = (gametime%2) = 1
ID = 8600
angle = 30*time
scale = ifelse(random<500,.05,.07),ifelse(random<500,.05,.07)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8601
ID = 8601
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = 1.5,1.5
sprpriority = 2
ownpal = 1
pausemovetime = 999
supermovetime = 999
removetime = 16

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8601
angle = -20*time
scale = 1.5-((time)*.1),1.5-((time)*.1)

[State 0, Explod]
type = Explod
trigger1 = time = 5
anim = 8603
ID = 8602
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = 1.5,1.5
sprpriority = 2
ownpal = 1
pausemovetime = 999
supermovetime = 999
removetime = 16

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8602
angle = -20*(time-5)
scale = 1.5-((time-5)*.1),1.5-((time-5)*.1)

[State 0, Explod]
type = Explod
trigger1 = time = 10
anim = 8602
ID = 8603
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = 1.5,1.5
sprpriority = 2
ownpal = 1
pausemovetime = 999
supermovetime = 999
removetime = 16

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8603
angle = -20*(time-10)
scale = 1.5-((time-10)*.1),1.5-((time-10)*.1)

[State 0, Explod]
type = Explod
trigger1 = time = 15
anim = 8604
ID = 8604
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = 1.5,1.5
sprpriority = 2
ownpal = 1
pausemovetime = 999
supermovetime = 999
removetime = 16

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8604
angle = -20*(time-15)
scale = 1.5-((time-15)*.1),1.5-((time-15)*.1)

[State 0, Explod]
type = Explod
trigger1 = time = 20
anim = 8603
ID = 8605
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = 1.5,1.5
sprpriority = 2
ownpal = 1
pausemovetime = 999
supermovetime = 999
removetime = 16

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8605
angle = -20*(time-20)
scale = 1.5-((time-20)*.1),1.5-((time-20)*.1)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8610
ID = 8610
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = .5,.5
sprpriority = -2
ownpal = 1
pausemovetime = 999
supermovetime = 999
removetime = 49

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time <= 5
ID = 8610
angle = 30*time
scale = (.05*time),(.05*time)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 5
trigger1 = (gametime%2) = 1
ID = 8610
angle = 30*time
scale = ifelse(random<500,.25,.4),ifelse(random<500,.25,.4)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8611
ID = 8611
pos = 0,0
postype = p1
facing = 1
bindtime = -1
scale = .05,.05
sprpriority = 2
ownpal = 1
pausemovetime = 999
supermovetime = 999
removetime = 15

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8611
scale = .05+(.25*time),.05+(.25*time)

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 44

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 44
;================================ SPINNER ======================================
[Statedef 8740]
physics=N
anim = 8740
SprPriority = -1

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0

[State 3887, AngleDraw]
type = AngleDraw
trigger1 = time <= 5
scale = .25+(time*.06),.25+(time*.06)

[State 3887, AngleDraw]
type = AngleDraw
trigger1 = time > 5
scale = .55,.55

[State 0, Trans]
type = Trans
trigger1 = time > 5
trans=addalpha
alpha=256-((time-5)*25),256

[State 3887, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3887: DestroySelf]
type = DestroySelf
trigger1 = Time > 15

;============================== SUPER SPARK ===================================
[Statedef 8780]
physics = N
anim = 9741

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;flag2 = nobardisplay

[State 200,Playsnd avanicada]
type = playsnd
trigger1 = time = 0
value = s7000,1
channel = -1

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 8700
ID = 8700
pos = 0,0
postype = p1
scale = .1,.1
facing = -1
vfacing = -1
bindtime = 1
removetime = -1
supermovetime = 255
pausemovetime = 255
sprpriority = -2
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 8710
ID = 8702
pos = 0,0
postype = p1
scale = .1,.1
facing = -1
vfacing = -1
bindtime = 1
removetime = -1
supermovetime = 255
pausemovetime = 255
sprpriority = -1
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 0, Explod]
type = Explod
trigger1 = time = 1
anim = 8710
ID = 87020
pos = 0,ceil(10 - pos y)
postype = p1
facing = 1
vfacing = 1
bindtime = 1
scale = .1,.2
removetime = -1
supermovetime = 255
pausemovetime = 255
sprpriority = -1
ownpal = 1
removeongethit = 0
ignorehitpause = 0

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8700
scale = .28+(time*.15),.28+(time*.15)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8702
scale = .27+(time*.15),.27+(time*.15)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 87020
scale = .24+(time*.15),.1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 10
ID = 8702
trans = addalpha
alpha = 256-((time-10)*25),256

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 10
ID = 87020
trans = addalpha
alpha = 256-((time-10)*25),256

[State 0, Helper]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "blackecircle"
ID = 8502
stateno = 8502
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
Ownpal = 1
supermovetime = 999

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8750
ID = 8750
pos = 0,0
postype = p1
bindtime = 1
removetime = -2
supermovetime = 999
pausemovetime = 999
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1


;[State 0, Helper]
;type = Helper
;trigger1 = time = 0
;helpertype = normal
;name = "explosionatras"
;ID = 8740
;stateno = 8740
;pos = 0,0
;postype = p1
;facing = 1
;keyctrl = 0
;ownpal = 1
;supermovetime = 999
;pausemove
;ignorehitpause = 1

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time >= 20

[State 1150, ChangeState]
type = DestroySelf
trigger1 = time >= 20
;=========================== V - TRIGGER SUPERPAUSE ========================
[Statedef 8700]
physics = N
anim = 9741

[State 200,Playsnd avanicada]
type = playsnd
trigger1 = time = 1
value = s7000,1
channel = 10
volume = -100

[State 200,Playsnd avanicada]
type = playsnd
trigger1 = time = 1
value = s7000,5
channel = 11
volume = -100

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim =8702
ID = 8703
pos = 0,0
postype = p1
bindtime = 1
removetime = -1
scale = .125,.125
sprpriority = -1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8703
scale = .125+(time*.0375),.125+(time*.0375)

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 10
ID = 8703
trans = addalpha
alpha = 256-((time-10)*51),256

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim =8702
ID = 8702
pos = 0,ceil(7 - pos y)
postype = p1
bindtime = 1
removetime = -1
scale = .125,.1
sprpriority = -1
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 8702
scale = .125+(time*.0375),.1

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time > 10
ID = 8702
trans = addalpha
alpha = 256-((time-10)*51),256

[State 3, RemoveExplod]
type = RemoveExplod
trigger1 = time > 15;14

[State 1150, ChangeState]
type = Destroyself
trigger1 = time > 15;14


