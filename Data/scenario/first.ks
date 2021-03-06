
*start  
[cm]  
[rclick enabled=false] 
[clickskip enabled=false]  
[history output=false enabled=false] 
;--------------------------------------------------------------
*标题画面
;--------------------------------------------------------------

*title
[call storage="macro.ks"]
[freeimage layer=3 page="back"]
[freeimage layer=4 page="back"]
[freeimage layer=5 page="back"]
[stopbgm]
[nowait]   
[playbgm storage="zhuangyanpiano" volume=40 ] 
[cm] 
[backlay]
@position layer=message0 frame="" page=fore visible=true left=0 top=0 marginl=0 margint=0 marginr=0 marginb=0
[layopt layer="message0" visible="true" page="back"]
[current layer=message0 page=fore withback=ture] 
[backlay]
[image storage="biankuang" layer=2 left=0 top=0 page=back visible=true] 
[trans method=universal rule=2 time=800] 
[wt]
[image storage="dishierye" layer=3 page=back left=286 top=94 visible=true ] 
[trans method=universal rule=22 time=800][wt]
@snowinit
[wm]
[image storage="heijian" layer=1 page=back left=260 top=203 visible=true] 
[trans method=universal rule=2 time=50][wt]
[locate x=290 y=245]
[button normal=T_start_1 over=T_start_2 target=*开始游戏 enterse=move_1 clickse=click_2]
[locate x=305 y=286]
[button normal=du1 over=du2  target=*读档 enterse=move_1 clickse=click_2]
[locate x=300 y=320]
[button normal=fang1 over=fang2 targ=*回放 enterse=move_1 clickse=click_2 ]
[locate x=300 y=376]
[button normal=tui1 over=tui2 exp="kag.shutdown()" enterse=move_1]
[wt]
[s]
;--------------------------------------------------------------
*开始游戏
;--------------------------------------------------------------
*clean
;取消下雨、下雪效果
@snowuninit
@rainuninit
[backlay]
[freeimage layer="base" page="back"]
[current layer="message0" page="back"]
[er]
[image storage="black" layer=4 page=back visible=true] 
[trans method="ripple" rule=36 time=1200]
[wt canskip="false"]
[freeimage layer=1 page=back]
[trans method=crossfade time=0]
[wt]
[freeimage layer=2 page=back]
[trans method=crossfade time=0]
[wt]
[freeimage layer=3 page=back]
[trans method=ripple time=200]
[wt canskip=false]
[wait time=500]
[current layer="message0" page="fore"]
[freeimage layer=4 page=back]
[trans method=crossfade time=0]
[wt]
[jump storage="01.ks" target=*start124]

;--------------------------------------------------------------
*读档
;--------------------------------------------------------------

;放上读取背景图

[backlay]

[image layer=3 page="back" storage="读取游戏" visible="true" left=0 top=0]
[image layer=4 page="back" storage="empty" visible="true" left=0 top=0]
[layopt layer="message1" visible="true" page="back"]
[current layer="message1" page="back"]
[er]
[档案显示 target=*读取]

[trans method="crossfade" time=500]
[wt]
[rclick enabled="true" jump="true" storage="first.ks" target=*返回标题]
[s]

*读取
;当档案存在时,打开读取询问框
[if exp="checkdata(tf.存档编号)==true"]
[eval exp="tf.询问对话='确定要读取 档案'+(tf.存档编号+1)+' 『'+kag.getBookMarkPageName(tf.存档编号)+'』吗？'"]
[询问窗口 text=&tf.询问对话 storage=first.ks cancel=*取消读取 ok=*确定读取]
[endif]

;当档案不存在时,读取无效
[if exp="checkdata(tf.存档编号)==false"]
[current layer="message1" page="fore"]
@wt
[er]
[档案显示 target=*读取]
[endif]
@trans method=crossfade time=1000
@wt
[s]

*确定读取
[load place=&tf.存档编号 ask="false"]
[s]

*取消读取
[backlay]
[freeimage layer=6 page="back" time=10]
[er]
[current layer="message2" page="back"]
@wt
[trans method="crossfade" time=10]
@wt

;通过解锁恢复LOAD画面的按钮功能
[unlocklink]
[rclick enabled="true" jump="true" storage="first.ks" target=*返回标题]
[s]

*返回标题
@cm

;清除下雨下雪效果

@rainuninit
@snowuninit
[rclick enabled="false"]
;清除LOAD画面的信息
[backlay]
[freeimage layer=3 page="back"]
[freeimage layer=4 page="back"]
[freeimage layer=5 page="back"]
[current layer="message1" page="back"]
[er]
[trans method="crossfade" time=300]
[wt]
;重新设定标题画面的按钮
;这里和上面的改发一样，需要保证和上面的按钮代码相同
[freeimage layer=3 page="back"]
[freeimage layer=4 page="back"]
[freeimage layer=5 page="back"]
[stopbgm]
[nowait]   
[playbgm storage="zhuangyanpiano" volume=40 ] 
[cm] 
[backlay]
@position layer=message0 frame="" page=fore visible=true left=0 top=0 marginl=0 margint=0 marginr=0 marginb=0
[layopt layer="message0" visible="true" page="back"]
[current layer=message0 page=fore withback=ture] 
[backlay]
[image storage="biankuang" layer=2 left=0 top=0 page=back visible=true] 
[trans method=universal rule=2 time=800] 
[wt]
[image storage="dishierye" layer=3 page=back left=286 top=94 visible=true ] 
[trans method=universal rule=22 time=800][wt]
@snowinit
[wm]
[image storage="heijian" layer=1 page=back left=260 top=203 visible=true] 
[trans method=universal rule=2 time=50][wt]
[locate x=290 y=245]
[button normal=T_start_1 over=T_start_2 target=*开始游戏 enterse=move_1 clickse=click_2]
[locate x=305 y=286]
[button normal=du1 over=du2  target=*读档 enterse=move_1 clickse=click_2]
[locate x=300 y=320]
[button normal=fang1 over=fang2 targ=*回放 enterse=move_1 clickse=click_2 ]
[locate x=300 y=376]
[button normal=tui1 over=tui2 exp="kag.shutdown()" enterse=move_1]
[wt]
[s]

;--------------------------------------------------------------
*鉴赏模式
;--------------------------------------------------------------
;先停止音乐，当然可以用减淡音效
@stopbgm
[backlay]
[current layer="message1" page="back"]
[er]
[trans method="crossfade" time=100]
[wt]
[backlay]
[image layer=3 page="back" storage="white" visible="true" left=0 top=0]
[image layer=4 page="back" storage="empty" visible="true" left=0 top=0]
[trans method="crossfade" time=500]
[wt]

[rclick enabled="true" jump="true" storage="first.ks" target=*返回标题]



[backlay]
[layopt layer="message1" visible="true" page="back"]
[current layer="message1" page="back"]
[er]

;放上鉴赏的按钮，可改位置，进入效果等等

[locate x=10 y=461]
[button normal=gallery  target=*gallery storage=extra0.ks enterse=bt1]
[locate x=210 y=461]
[button normal=music    target=*music   storage=extra0.ks enterse=bt1]
[locate x=410 y=461]
[button normal=movie    target=*movie   storage=extra0.ks enterse=bt1]
[locate x=610 y=461]
[button normal=scene    target=*scene   storage=extra0.ks enterse=bt1]

[trans method="crossfade" time=200 storage=extra0.ks]
[wt]


[s]









