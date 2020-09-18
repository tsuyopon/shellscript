#!/bin/bash

# 変数の設定漏れを防止します。
set -u

echo "設定の変数漏れを防止する(-u)オプションサンプル"

SOME_BARIABLE=foo

# タイポミスになっている
echo $SOME_VALIABLE   
