
;=====================================================
@macro name=kuang
[position layer="message0" frame="kuang" visible="true" left=0 top=0  marginl=110 margint=110 marginr=50 marginb=50  page=back cond="mp.ren == 0"]
[position layer="message0" frame="���ÿ�" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 1"]
[position layer="message0" frame="������" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 2"]
[position layer="message0" frame="�����ſ�" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 3"]
[position layer="message0" frame="�Է��" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 4"]
[position layer="message0" frame="Τ����" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 5"]
[position layer="message0" frame="��ǹ��" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 6"]
[position layer="message0" frame="������" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 7"]
[position layer="message0" frame="ʱ����" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 8"]
[position layer="message0" frame="·�˿�" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 9"]
[position layer="message0" frame="����" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 10"]
[layopt layer="message0" page=back visible=true]
@trans method=crossfade time=0 cond="mp.pr == 0"
@trans method=crossfade time=300 cond="mp.pr == 1"
[wt]
@endmacro
;-----------------------------
@macro name=���ı���ͼƬ
[image layer=base page=back storage=%st visible=true left=0 top=0 opacity=255]
[trans method=crossfade time=600][wt]
@endmacro


@macro name=����
[backlay]
[eval exp="tf.x=100" cond="mp.pos == 1"]
[eval exp="tf.x=270" cond="mp.pos == 2"]
[eval exp="tf.x=510" cond="mp.pos == 3" fliplr=2]
[eval exp="tf.l=1" cond="mp.lft == 1"]
[eval exp="tf.l=2" cond="mp.lft == 2"]
[eval exp="tf.l=3" cond="mp.lft == 3"]
@image layer=&tf.l page=back storage="����1" visible=true left=&tf.x top=0 opacity=255
@image layer=&tf.l page=back storage="����2��ü" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 2"
@image layer=&tf.l page=back storage="����3����" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 3"
@image layer=&tf.l page=back storage="����3�ɻ�" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 4"
@image layer=&tf.l page=back storage="����5��ü" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 5"
@image layer=&tf.l page=back storage="����6�ջ�" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 6"
@image layer=&tf.l page=back storage="����7˼��" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 7"
@image layer=&tf.l page=back storage="����8" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 8"
@trans method=crossfade time=0 cond="mp.pr == 0"
@trans method=crossfade time=300 cond="mp.pr == 1"
@trans method=universal rule="6" vague=10 time=600 cond="mp.pr == 2"
@wt
[backlay]
@endmacro

@macro name=����
[backlay]
[eval exp="tf.x=100" cond="mp.pos == 1"]
[eval exp="tf.x=285" cond="mp.pos == 2"]
[eval exp="tf.x=510" cond="mp.pos == 3" fliplr=2]
[eval exp="tf.l=1" cond="mp.lft == 1"]
[eval exp="tf.l=2" cond="mp.lft == 2"]
[eval exp="tf.l=3" cond="mp.lft == 3"]
@image layer=&tf.l page=back storage="����1��ͨ" visible=true left=&tf.x top=30 opacity=255
@image layer=&tf.l page=back storage="����2����" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 2"
@image layer=&tf.l page=back storage="����3����" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 3"
@image layer=&tf.l page=back storage="����4�ɻ�" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 4"
@image layer=&tf.l page=back storage="����5˼��" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 5"
@image layer=&tf.l page=back storage="����6����" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 6"
@image layer=&tf.l page=back storage="����7΢Ц" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 7"
@image layer=&tf.l page=back storage="���ź�" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 8"
@image layer=&tf.l page=back storage="����8" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 9"
@trans method=crossfade time=0 cond="mp.pr == 0"
@trans method=crossfade time=300 cond="mp.pr == 1"
@trans method=universal rule="6" vague=10 time=600 cond="mp.pr == 2"
@wt
[backlay]
@endmacro


@macro name=�Ի�����ʧ
[position layer=message0 frame="" page=back]
[trans method=crossfade time=500][wt]
@endmacro



[return]
