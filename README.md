# timelapse_rpi
## このリポジトリについて
### 概要
このリポジトリはRaspberry PiでUSBカメラからタイムラプスで撮影するためのリポジトリです。
### 動作環境
このリポジトリの動作環境はRaspberry Pi OS 64bit (bookworm)です
僕はRaspberry Pi 3 Model B PlusでRaspberry Pi OS 64bit (bookworm)を使ってで動作確認しています。Raspberry Pi OS 32bit (bookworm)や一つ前のBullseyeなどで実行できなくても知りません。こまったらGoogle BardやChatGPTに聞いてみてください。あと、デスクトップ環境が入っていないと実行できません。
## リリースノート
### V1.0.0
### **このバージョンについて**
一番最初のバージョン
### **更新点**
なし
## はじめのセットアップ
1. まずAPTをアップデートします`auto apt update`
2. gitをインストールします`sudo apt install git -y`
3. このリポジトリのクローンをダウンロードします`git clone https://github.com/ndsitejp/timelapse_rpi/`
4. ダウンロードしたリポジトリのクローンのフォルダに移動します`cd timelapse_rpi`
5. 権限を変更します`chmod u=rwx setup.sh`
6. setup.shを実行します`./setup.sh`
7. これで終わりです
## 基本の使い方
はじめのセットアップが終わった直後として書きます。
1. `ls`を実行し、main.shとkey.shがあるのを確認します
2. 確認できたら`./main.sh`と実行してください
3. そしたら`プロジェクト名:`と聞かれるので、フォルダ名に使える文字でプロジェクト名を入れてください。
4. key.shと書かれたウィンドウが出ます。
5. タイムラプス撮影を終わりたいときはkey.shと書かれたウィンドウを選択し、qキーを押してください。そしたら撮影が終了され、mp4にエンコードを開始します。
6. エンコードが終了すると`/timelapse_rpi $` とターミナル上に出力され、動画ファイルはプロジェクト名/プロジェクト名.mp4として出力されます。
