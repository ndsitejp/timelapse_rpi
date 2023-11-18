#!/bin/bash

# MIT License Copyright (c) 2023 成田開発所@ndsitejp
# キー入力の管理

# 説明をする
echo "qキーを押すと撮影を停止します"

# qキーが押されたらexit_flagに1を代入する
while true; do
  read -s -n 1 key
  if [[ $key == q ]]; then
    touch exit_flag
    echo "まもなく撮影を終了します"
    echo "このウィンドウは10秒後に閉じます"
    sleep 10
    break
  fi
done
