*start
[history output="false"]
[locksnapshot]
[rclick enabled="true" jump="true" storage="rmenu.ks" target=*return]

;****************************************************

[backlay]
[position layer="message2"  frame="纯透明" left=0 top=0 page="back" marginl=0 margint=0 marginr=0 marginb=0]
[layopt layer="message2" visible="true" page="back"]
[current layer="message2" page="back"]
[locate x=637 y=474]
[button normal=按钮_存储  target=*save    enterse=move_1 ]
[locate x=688 y=474]
[button normal=按钮_读取  target=*load    enterse=move_1]
[locate x=737 y=474]
[button normal=按钮_设定  target=*option  enterse=move_1 ]
[locate x=786 y=474]
[button normal=按钮_清除  target=*clean   enterse=move_1 ]
[locate x=835 y=474]
[button normal=按钮_离开  target=*title   enterse=move_1 ]

[trans method="universal" rule=4 time=200]
[wt]
[s]

;--------------------------------------------------------------------
[s]
*history
[jump storage="history.ks" target=*start]
*save
[position layer=message2 frame="black" page=back  marginl=0 margint=0 marginr=0 marginb=0  visible=true]
[trans method="crossfade" time=400]
[wt]
*save0
[current page=back layer=message2][er][nowait]
[locate x=10 y=5]我是存档界面
;第一个存档位
[locate x=10 y=30]
[button normal=&(kag.getBookMarkFileNameAtNum(0)) cond="kag.bookMarkDates[0] != void"]
;kag.getBookMarkFileNameAtNum(0)是kag的一个用来获取存档路径的函数，使用这个函数就会返回指定的存档的路径，后边那个（）里边的0就是要获得的存档路径的编号，数字从0开始
;kag.bookMarkDates[0]是存档日期，我这里用他来判断0号存档有没有内容，如果这个存档曾经被使用过那么存档日期肯定不是空的……
;这一句就是如果这个存档存在的话就用button载入存档的缩略图
[button normal="nodata" cond="kag.bookMarkDates[0] == void"]
;这一句是如果存档不存在就载入“NODATA”图
[locate x=180 y=50]
[link target=*savedata1][emb exp="kag.bookMarkDates[0]" cond="kag.bookMarkDates[0] != void"][emb exp="'--------------'" cond="kag.bookMarkDates[0] == void"][endlink]
;这里是把存档日期作为link显示出来，如果界面要精美一点一般都是用button作为存档按钮，然后在上边另建一个图层放上存档日期，存档画面，当前对话之类的信息，不过我这里懒得做界面了，就直接用文字link了……
;第二个存档位
[locate x=10 y=180]
[button normal=&(kag.getBookMarkFileNameAtNum(1)) cond="kag.bookMarkDates[1] != void"]
[button normal="nodata" cond="kag.bookMarkDates[1] == void"]
[locate x=180 y=200]
[link target=*savedata2][emb exp="kag.bookMarkDates[1]" cond="kag.bookMarkDates[1] != void"][emb exp="'--------------'" cond="kag.bookMarkDates[1] == void"][endlink]
[endnowait]
[trans method=crossfade time=800][wt]
[rclick jump=true target=*return enabled=true]
[s]
*savedata1
[save place=0 ask=false]
[jump target=*save0]
*savedata2
[save place=1 ask=false]
[jump target=*save0]
*load
*save
[position layer=message2 frame="black" page=back  marginl=0 margint=0 marginr=0 marginb=0 opacity=200 visible=true]
[trans method="crossfade" time=400]
[wt]
[current page=back layer=message2][er][nowait][font face="黑体" size=18 color=0xffffff]
[locate x=10 y=5]我是读档界面
;第一个存档位
[locate x=10 y=30]
[button normal=&(kag.getBookMarkFileNameAtNum(0)) cond="kag.bookMarkDates[0] != void"]
[button normal="nodata" cond="kag.bookMarkDates[0] == void"]
[locate x=180 y=50]
[link target=*loaddata1 cond="kag.bookMarkDates[0] != void"][emb exp="kag.bookMarkDates[0]" cond="kag.bookMarkDates[0] != void"][emb exp="'--------------'" cond="kag.bookMarkDates[0] == void"][endlink cond="kag.bookMarkDates[0] != void"]
;第二个存档位
[locate x=10 y=180]
[button normal=&(kag.getBookMarkFileNameAtNum(1)) cond="kag.bookMarkDates[1] != void"]
[button normal="nodata" cond="kag.bookMarkDates[1] == void"]
[locate x=180 y=200]
[link target=*loaddata1 cond="kag.bookMarkDates[1] != void"][emb exp="kag.bookMarkDates[1]" cond="kag.bookMarkDates[1] != void"][emb exp="'--------------'" cond="kag.bookMarkDates[1] == void"][endlink cond="kag.bookMarkDates[1] != void"]
[endnowait]
[trans method=crossfade time=800][wt]
[rclick jump=true target=*return enabled=true]
[s]
;其实这里对于条件的判断用if会更简洁一些……不过我个人偏爱用cond……
*loaddata1
;读档第一个位置
[load place=0 ask=false]
;load就是读档的指令，具体内容参见下边的指令集
*loaddata2
;读档第二个位置
[load place=1 ask=false]
[wt]
[s]

;**********************************************************


;--------------------------------------------------------------------
*clean
;取消下雨、下雪效果
@snowuninit
@rainuninit
[backlay]
[layopt layer="message0" visible="false" page="back"]
[freeimage layer=3 page="back"]
[freeimage layer=4 page="back"]
[freeimage layer=5 page="back"]
[current layer="message2" page="back"]
[er]
[trans method="crossfade" time=200]
[wt]

[rclick enabled="true"  storage="rmenu.ks" target=*恢复界面]
@s
*恢复界面
[backlay]
[freeimage layer=5 page="back"]
[layopt layer="message0" visible="true" page="back"]
[trans method="crossfade" time=200]
[wt]
@jump target=*start

@s

;--------------------------------------------------------------------
*option
[backlay]

;*********************************************

;可改图片名字

[rclick enabled="true"  storage="rmenu.ks" target=*恢复界面]
[image layer=5 page="back" storage="系统设定" visible="true" left=0 top=0]

;***********************************************

[layopt layer="message0" visible="false" page="back"]
[layopt layer="message1" visible="false" page="back"]
[layopt layer="message2" visible="false" page="back"]
[er]


;*************************************************
;可改滑动槽长度，宽度

[locate x=328 y=153]
[slider value="kag.bgmvolume" base=滑动槽 width=189 height=23 normal=滑动槽按钮]
[locate x=330 y=235]
[slider value="kag.sevolume" base=滑动槽 width=189 height=23 normal=滑动槽按钮]
[locate x=332 y=326]
[slider value="kag.textspeed" base=滑动槽 width=189 height=23 normal=滑动槽按钮 max=10 min=0]

;*************************************************

[trans method="crossfade" time=200]
[wt]
[s]
;----------------------------------------------------------------------

;----------------------------------------------------------
*title
[backlay]
[position layer="message2"  frame="" ]
[position layer="message1"  frame="" ]
@layopt layer=message0 page=back visible=false
@layopt layer=message1 page=back visible=false
@layopt layer=message2 page=back visible=false
[freeimage layer=base page="back"]
[freeimage layer=0 page="back"]
[freeimage layer=1 page="back"]
[freeimage layer=2 page="back"]
[freeimage layer=3 page="back"]
[freeimage layer=4 page="back"]
[freeimage layer=5 page="back"]
[freeimage layer=6 page="back"]
[current layer="message1" page="back"]
[er]
[trans method="crossfade" time=200]
[wt]

[jump storage="first.ks"]



;----------------------------------------------------------
;从询问窗口返回
;----------------------------------------------------------
*cancel
[backlay]
[freeimage layer=6 page="back"]
[current layer="message1" page="back"]
[er]
[trans method="crossfade" time=200]
[wt]
;通过解锁恢复MENU的按钮功能([locklink]在"询问窗口"的宏里)
[unlocklink]
[rclick enabled="true" jump="true" storage="rmenu.ks" target=*return]
[s]





*return
;取消下雨效果
[backlay]
[freeimage layer=3 page="back"]
[freeimage layer=4 page="back"]
[freeimage layer=5 page="back"]
[position layer=message1 page=back visible=false]
[current page=back layer=message1][er]
[trans method=crossfade time=200][wt]
[position layer="message2"  frame="" left=0 top=0 page="back" marginl=0 margint=0 marginr=0 marginb=0]
[current layer="message2" page="back"]
[er]
[trans method="crossfade" time=200]
[wt]
[current layer="message0" page="fore"]
[rclick enabled="true" call="true" storage="rmenu.ks" target=*start]
[unlocksnapshot]
[history output="true"]
[return]
;----------------------------------------------------------

*title
[询问窗口 text="确定要返回标题吗？" storage="rmenu.ks" ok="*返回标题" cancel=*cancel]
[s]
*返回标题
[backlay]

@layopt layer=message0 page=back visible=false
@layopt layer=message1 page=back visible=false
[freeimage layer=base page="back"]
[freeimage layer=0 page="back"]
[freeimage layer=1 page="back"]
[freeimage layer=2 page="back"]

[current layer="message2" page="back"]
[er]
[trans method="universal" rule=3 time=200]
[wt]

[startanchor]
;回到first的开始，等于重读取了一遍游戏
