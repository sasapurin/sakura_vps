#!/bin/sh
# wget-list --�_�E�����[�h�����t�@�C���̃��X�g����������

# ���s���@�Fwget-list�i�����Ȃ��Ŏ��s�j

while [ `find .wget-list -size +0` ]
 do
  url=`head -n1 .wget-list`
   wget -c $url
   sed -si 1d .wget-list
 done
