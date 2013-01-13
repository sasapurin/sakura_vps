#!/bin/sh
# wget-list --ダウンロードしたファイルのリストを処分する

# 実行方法：wget-list（引数なしで実行）

while [ `find .wget-list -size +0` ]
 do
  url=`head -n1 .wget-list`
   wget -c $url
   sed -si 1d .wget-list
 done
