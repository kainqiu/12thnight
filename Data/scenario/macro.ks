
;=====================================================
@macro name=kuang
[position layer="message0" frame="kuang" visible="true" left=0 top=0  marginl=110 margint=110 marginr=50 marginb=50  page=back cond="mp.ren == 0"]
[position layer="message0" frame="ÇÐËÃ¿ò" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 1"]
[position layer="message0" frame="°®Àö¿ò" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 2"]
[position layer="message0" frame="ÒÁÀòÑÅ¿ò" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 3"]
[position layer="message0" frame="ÑÔ·å¿ò" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 4"]
[position layer="message0" frame="Î¤²®¿ò" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 5"]
[position layer="message0" frame="ËÄÇ¹¿ò" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 6"]
[position layer="message0" frame="ÉÁÉÁ¿ò" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 7"]
[position layer="message0" frame="Ê±³¼¿ò" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 8"]
[position layer="message0" frame="Â·ÈË¿ò" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 9"]
[position layer="message0" frame="¿û¿ò" visible="true" left=0 top=0  marginl=108 margint=400 marginr=100 marginb=30  page=back cond="mp.ren == 10"]
[layopt layer="message0" page=back visible=true]
@trans method=crossfade time=0 cond="mp.pr == 0"
@trans method=crossfade time=300 cond="mp.pr == 1"
[wt]
@endmacro
;-----------------------------
@macro name=¸ü¸Ä±³¾°Í¼Æ¬
[image layer=base page=back storage=%st visible=true left=0 top=0 opacity=255]
[trans method=crossfade time=600][wt]
@endmacro


@macro name=ÇÐËÃ
[backlay]
[eval exp="tf.x=100" cond="mp.pos == 1"]
[eval exp="tf.x=270" cond="mp.pos == 2"]
[eval exp="tf.x=510" cond="mp.pos == 3" fliplr=2]
[eval exp="tf.l=1" cond="mp.lft == 1"]
[eval exp="tf.l=2" cond="mp.lft == 2"]
[eval exp="tf.l=3" cond="mp.lft == 3"]
@image layer=&tf.l page=back storage="ÇÐËÃ1" visible=true left=&tf.x top=0 opacity=255
@image layer=&tf.l page=back storage="ÇÐËÃ2ÖåÃ¼" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 2"
@image layer=&tf.l page=back storage="ÇÐËÃ3¾ªÏÅ" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 3"
@image layer=&tf.l page=back storage="ÇÐËÃ3ÒÉ»ó" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 4"
@image layer=&tf.l page=back storage="ÇÐËÃ5ÌôÃ¼" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 5"
@image layer=&tf.l page=back storage="ÇÐËÃ6ÄÕ»ð" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 6"
@image layer=&tf.l page=back storage="ÇÐËÃ7Ë¼¿¼" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 7"
@image layer=&tf.l page=back storage="ÇÐËÃ8" visible=true left=&tf.x top=0 opacity=255 cond="mp.ren == 8"
@trans method=crossfade time=0 cond="mp.pr == 0"
@trans method=crossfade time=300 cond="mp.pr == 1"
@trans method=universal rule="6" vague=10 time=600 cond="mp.pr == 2"
@wt
[backlay]
@endmacro

@macro name=ÂéÆÅ
[backlay]
[eval exp="tf.x=100" cond="mp.pos == 1"]
[eval exp="tf.x=285" cond="mp.pos == 2"]
[eval exp="tf.x=510" cond="mp.pos == 3" fliplr=2]
[eval exp="tf.l=1" cond="mp.lft == 1"]
[eval exp="tf.l=2" cond="mp.lft == 2"]
[eval exp="tf.l=3" cond="mp.lft == 3"]
@image layer=&tf.l page=back storage="ÂéÆÅ1ÆÕÍ¨" visible=true left=&tf.x top=30 opacity=255
@image layer=&tf.l page=back storage="ÂéÆÅ2¾ªÑÈ" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 2"
@image layer=&tf.l page=back storage="ÂéÆÅ3ÓÇÉË" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 3"
@image layer=&tf.l page=back storage="ÂéÆÅ4ÒÉ»ó" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 4"
@image layer=&tf.l page=back storage="ÂéÆÅ5Ë¼¿¼" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 5"
@image layer=&tf.l page=back storage="ÂéÆÅ6±ÕÑÛ" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 6"
@image layer=&tf.l page=back storage="ÂéÆÅ7Î¢Ð¦" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 7"
@image layer=&tf.l page=back storage="ÂéÆÅºÚ" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 8"
@image layer=&tf.l page=back storage="ÂéÆÅ8" visible=true left=&tf.x top=30 opacity=255 cond="mp.ren == 9"
@trans method=crossfade time=0 cond="mp.pr == 0"
@trans method=crossfade time=300 cond="mp.pr == 1"
@trans method=universal rule="6" vague=10 time=600 cond="mp.pr == 2"
@wt
[backlay]
@endmacro


@macro name=¶Ô»°¿òÏûÊ§
[position layer=message0 frame="" page=back]
[trans method=crossfade time=500][wt]
@endmacro



[return]
