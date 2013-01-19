#!/bin/sh
#
# 指定URLのHTMLファイルをソースをwgetで取得してsource.txtに保存します。
# このスクリプトの第一引数にURLを指定すると下記$1に代入されてwgetが動作します。
wget -O source.txt $1
#
# awkで必要な行を抽出していく処理
awk '/class=\"slideshowItem\"/ { print $0 }' source.txt > mod1.txt
awk '/src=/ { print $0 }' mod1.txt > mod2.txt
awk '/jpg/ { print $0 }' mod2.txt > mod3.txt
#
# sedで不要な文字を削除していく処理
sed 's/^.*src=\"//' mod3.txt > mod4.txt
sed 's/-s.jpg/.jpg/' mod4.txt > mod5.txt
sed 's/\".*$//' mod5.txt >mod6.txt
#
# awkで行頭にurlのドメインを追加する処理
awk '{print "http://618gaoqing.com" $0 }' mod6.txt > download_list.txt
#
# 作業ファイルの残骸を削除する処理。
# 行頭に#を付けてコメントアウトすると削除されず残るのでデバッグに有効。
rm source.txt
rm mod*.txt