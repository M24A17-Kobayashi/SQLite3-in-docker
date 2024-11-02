# SQLite3
# dockerコンテナ(ubuntu22.04)内でSQLite3を稼働
docker composeで稼働する．

## ◇動作環境
- docker : 23.0.5
- Ubuntu : 22.04.5 LTS (Jammy Jellyfish)
- SQLite3 : 3.37.2


## ◇プログラムのダウンロード方法，実行・停止方法

### ダウンロード方法

``` sh
git https://github.com/M24A17-Kobayashi/SQLite3-in-docker.git
chmod -R 755 SQLite3-in-docker
cd SQLite3-in-docker/
```

### 起動方法
``` sh
docker compose up -d --build
```

### 停止方法
``` sh
docker compose down
```

## ◇フォルダ構成
``` file
  📁SQLite3-in-docker       //
   ┗ 📁data                 // SQLite3で作成したデータを格納するフォルダ．コンテナの/app/sqldataにマウント．
     📃 init.sql            // SQLite3のテスト用データ．/app/sqldata/testdatabase.dbを作成する．entrypoint.shから実行
     📃 entrypoint.sh       // ．コンテナ作成時にDockerfileから実行．
     📃 Dockerfile          //
     📃 docker-compose.yml  //
     📃 .gitiginore         //
```