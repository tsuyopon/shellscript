#! /bin/bash
# 引数を取得するサンプル

# See:
# https://www.atmarkit.co.jp/ait/articles/2002/14/news016.html

OPTIONS=`getopt -o abc -- "$@"`
eval set -- "$OPTIONS"
while [ $# -gt 0 ]
do
  case $1 in
    -a) echo "-aが設定されている";;
    -b) echo "-bが設定されている";;
    -c) echo "-cが設定されている";;
    --) shift; break;;
  esac
  shift
done
while [ $# -gt 0 ]
do
  echo "引数=$1"
  shift
done
