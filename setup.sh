#!/bin/bash

# MIT License Copyright (c) 2023 成田開発所@ndsitejp
# 動かすのに必要なもののインストール

# アップデート
sudo apt update

# アップグレート
sudo apt full-upgrade -y

# 必要なもののインストール
sudo apt install ffmpeg fswebcam lxterminal  -y

# 不必要なものの削除
sudo apt autoremove

# クリーン
sudo apt-get clean -y

# 権限の変更
chmod u=rwx main.sh key.sh
chmod go=r main.sh key.sh
