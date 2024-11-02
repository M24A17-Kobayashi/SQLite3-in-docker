FROM ubuntu:22.04

#タイムゾーンの設定
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# アップデートとインストール
RUN apt-get update && apt-get upgrade && apt-get install -y sqlite3

# /appに移動し，sqlのテストデータと初期設定用スクリプトのコピー・実行
WORKDIR /app
COPY init.sql /app/init.sql
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]