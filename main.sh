#!/bin/bash

# MIT License Copyright (c) 2023 成田開発所@ndsitejp
# メインの処理

# プロジェクト名を聞く
read -p "プロジェクト名: " project_name

# key.shを呼び出す
lxterminal -e  ./key.sh &

# プロジェクト名のフォルダを作成する
mkdir ${project_name}

# 撮影を開始する
i=1
while [ "$exit_flag" != "1" ]; do

  # 写真を撮影する
  filename=${project_name}/${i}.jpg
  fswebcam -r 1280*800 -q 0 -F 1 -S 3 "$filename"
  
  # これまでの枚数を表示する
  echo "撮影枚数: $i"
  # 1秒待つ
  sleep 1

  # 終了フラグが立ったらmp4ファイルを作成する
  if [ -f "exit_flag" ]; then
    cd ${project_name}
    # 撮影した写真を連番jpegにする
    find . -name '*.jpg' | sort -n | awk 'BEGIN{ a=0 }{ printf "mv \"%s\" %06d.jpg\n", $0,a++}' | bash
    # ffmpegでmp4ファイルを作成する
    ffmpeg -i %06d.jpg -vcodec libx264 -pix_fmt yuv420p -r 60 $project_name.mp4
    cd ../
    rm -f exit_flag 0
    break
  fi

  # 次のフレームを撮影する
  i=$((i + 1))

done
