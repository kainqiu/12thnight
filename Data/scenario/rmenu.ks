*start
[history output="false"]
[locksnapshot]
[rclick enabled="true" jump="true" storage="rmenu.ks" target=*return]

;****************************************************

[backlay]
[position layer="message2"  frame="��͸��" left=0 top=0 page="back" marginl=0 margint=0 marginr=0 marginb=0]
[layopt layer="message2" visible="true" page="back"]
[current layer="message2" page="back"]
[locate x=637 y=474]
[button normal=��ť_�洢  target=*save    enterse=move_1 ]
[locate x=688 y=474]
[button normal=��ť_��ȡ  target=*load    enterse=move_1]
[locate x=737 y=474]
[button normal=��ť_�趨  target=*option  enterse=move_1 ]
[locate x=786 y=474]
[button normal=��ť_���  target=*clean   enterse=move_1 ]
[locate x=835 y=474]
[button normal=��ť_�뿪  target=*title   enterse=move_1 ]

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
[locate x=10 y=5]���Ǵ浵����
;��һ���浵λ
[locate x=10 y=30]
[button normal=&(kag.getBookMarkFileNameAtNum(0)) cond="kag.bookMarkDates[0] != void"]
;kag.getBookMarkFileNameAtNum(0)��kag��һ��������ȡ�浵·���ĺ�����ʹ����������ͻ᷵��ָ���Ĵ浵��·��������Ǹ�������ߵ�0����Ҫ��õĴ浵·���ı�ţ����ִ�0��ʼ
;kag.bookMarkDates[0]�Ǵ浵���ڣ��������������ж�0�Ŵ浵��û�����ݣ��������浵������ʹ�ù���ô�浵���ڿ϶����ǿյġ���
;��һ������������浵���ڵĻ�����button����浵������ͼ
[button normal="nodata" cond="kag.bookMarkDates[0] == void"]
;��һ��������浵�����ھ����롰NODATA��ͼ
[locate x=180 y=50]
[link target=*savedata1][emb exp="kag.bookMarkDates[0]" cond="kag.bookMarkDates[0] != void"][emb exp="'--------------'" cond="kag.bookMarkDates[0] == void"][endlink]
;�����ǰѴ浵������Ϊlink��ʾ�������������Ҫ����һ��һ�㶼����button��Ϊ�浵��ť��Ȼ�����ϱ���һ��ͼ����ϴ浵���ڣ��浵���棬��ǰ�Ի�֮�����Ϣ�����������������������ˣ���ֱ��������link�ˡ���
;�ڶ����浵λ
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
[current page=back layer=message2][er][nowait][font face="����" size=18 color=0xffffff]
[locate x=10 y=5]���Ƕ�������
;��һ���浵λ
[locate x=10 y=30]
[button normal=&(kag.getBookMarkFileNameAtNum(0)) cond="kag.bookMarkDates[0] != void"]
[button normal="nodata" cond="kag.bookMarkDates[0] == void"]
[locate x=180 y=50]
[link target=*loaddata1 cond="kag.bookMarkDates[0] != void"][emb exp="kag.bookMarkDates[0]" cond="kag.bookMarkDates[0] != void"][emb exp="'--------------'" cond="kag.bookMarkDates[0] == void"][endlink cond="kag.bookMarkDates[0] != void"]
;�ڶ����浵λ
[locate x=10 y=180]
[button normal=&(kag.getBookMarkFileNameAtNum(1)) cond="kag.bookMarkDates[1] != void"]
[button normal="nodata" cond="kag.bookMarkDates[1] == void"]
[locate x=180 y=200]
[link target=*loaddata1 cond="kag.bookMarkDates[1] != void"][emb exp="kag.bookMarkDates[1]" cond="kag.bookMarkDates[1] != void"][emb exp="'--------------'" cond="kag.bookMarkDates[1] == void"][endlink cond="kag.bookMarkDates[1] != void"]
[endnowait]
[trans method=crossfade time=800][wt]
[rclick jump=true target=*return enabled=true]
[s]
;��ʵ��������������ж���if������һЩ���������Ҹ���ƫ����cond����
*loaddata1
;������һ��λ��
[load place=0 ask=false]
;load���Ƕ�����ָ��������ݲμ��±ߵ�ָ�
*loaddata2
;�����ڶ���λ��
[load place=1 ask=false]
[wt]
[s]

;**********************************************************


;--------------------------------------------------------------------
*clean
;ȡ�����ꡢ��ѩЧ��
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

[rclick enabled="true"  storage="rmenu.ks" target=*�ָ�����]
@s
*�ָ�����
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

;�ɸ�ͼƬ����

[rclick enabled="true"  storage="rmenu.ks" target=*�ָ�����]
[image layer=5 page="back" storage="ϵͳ�趨" visible="true" left=0 top=0]

;***********************************************

[layopt layer="message0" visible="false" page="back"]
[layopt layer="message1" visible="false" page="back"]
[layopt layer="message2" visible="false" page="back"]
[er]


;*************************************************
;�ɸĻ����۳��ȣ����

[locate x=328 y=153]
[slider value="kag.bgmvolume" base=������ width=189 height=23 normal=�����۰�ť]
[locate x=330 y=235]
[slider value="kag.sevolume" base=������ width=189 height=23 normal=�����۰�ť]
[locate x=332 y=326]
[slider value="kag.textspeed" base=������ width=189 height=23 normal=�����۰�ť max=10 min=0]

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
;��ѯ�ʴ��ڷ���
;----------------------------------------------------------
*cancel
[backlay]
[freeimage layer=6 page="back"]
[current layer="message1" page="back"]
[er]
[trans method="crossfade" time=200]
[wt]
;ͨ�������ָ�MENU�İ�ť����([locklink]��"ѯ�ʴ���"�ĺ���)
[unlocklink]
[rclick enabled="true" jump="true" storage="rmenu.ks" target=*return]
[s]





*return
;ȡ������Ч��
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
[ѯ�ʴ��� text="ȷ��Ҫ���ر�����" storage="rmenu.ks" ok="*���ر���" cancel=*cancel]
[s]
*���ر���
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
;�ص�first�Ŀ�ʼ�������ض�ȡ��һ����Ϸ
