;此部分中字头的设定比较多，
;详细大家通过我的教程应该能知道修改的方法
;于是，此部分中的字体设定部分都是可以修改的
;注意，只能用font设定临时字体




*start
;放上历史记录界面的图片

[backlay]
[image layer=3 page="back" storage="kuang" visible="true" left=0 top=0]
;显示文字层
[layopt layer="message1" visible="true" page="back" left=0 top=0]
;调整文字显示位置
[position layer="message1" page="back" marginl=45 margint=121]
[current layer="message1" page="back"]
[er]

;计算页数
[eval exp="tf.行数=kag.historyLayer.dataPos-1"]
[eval exp="tf.页数=tf.行数\10"]
[eval exp="tf.页数++" cond="tf.行数%10>0"]
[eval exp="tf.循环=10"]

[eval exp="tf.当前页=tf.页数"]

;打开时显示最后一页
*循环一
[nowait]
;历史记录不到头则显示
[if exp="kag.historyLayer.dataPos-tf.循环>=0"]
;一般对话字体
[font color="0xffffff" shadow="false"]
;姓名显示字体
[font color="0x52823F" shadow="true" shadowcolor="0xFFFFFF" cond="kag.historyLayer.data[kag.historyLayer.dataPos-tf.循环].substring(0,1)=='〔'"]
;@link exp="kag.historyLayer.actionInfo[0][0][0].action.exp"
[emb exp="kag.historyLayer.data[kag.historyLayer.dataPos-tf.循环]"]
;[endlink]
[r]
[endif]
[eval exp="tf.循环--"]

[jump target=*循环一 cond="tf.循环>0"]
[endnowait]
[locate x=561 y=3]
[button normal=上一页 target=*刷新画面 exp="tf.当前页--" cond="tf.当前页>1"]

[trans method="crossfade" time=200]
[wt]
[s]

*刷新画面
[current layer="message1" page="fore"]
[er]
[eval exp="tf.循环=10"]

*循环二
[nowait]

;--------------------------------------------------------
;不是第一页的情况
[if exp="tf.当前页!=1"]

;历史记录不到头则显示
[if exp="kag.historyLayer.dataPos-tf.循环-(tf.页数-tf.当前页)*10>=0"]
;一般对话字体
[font color="0xffffff" shadow="false"]
;姓名显示字体
[font color="0x52823F" shadow="true" shadowcolor="0xFFFFFF" cond="kag.historyLayer.data[kag.historyLayer.dataPos-tf.循环-(tf.页数-tf.当前页)*10].substring(0,1)=='〔'"]
[emb exp="kag.historyLayer.data[kag.historyLayer.dataPos-tf.循环-(tf.页数-tf.当前页)*10]"][r]
[endif]

[endif]
;--------------------------------------------------------
;第一页的情况
[if exp="tf.当前页==1"]
;一般对话字体
[font color="0x000000" shadow="false"]
[font color="0x52823F" shadow="true" shadowcolor="0xFFFFFF" cond="kag.historyLayer.data[10-tf.循环].substring(0,1)=='〔'"]
[emb exp="kag.historyLayer.data[10-tf.循环]"][r]
[endif]
;--------------------------------------------------------


[eval exp="tf.循环--"]

[jump target=*循环二 cond="tf.循环>0"]
[endnowait]

[locate x=561 y=3]
[button normal=上一页 target=*刷新画面 exp="tf.当前页--" cond="tf.当前页>1"]
[locate x=561 y=287]
[button normal=下一页 target=*刷新画面 exp="tf.当前页++" cond="tf.当前页<tf.页数"]

[s]



