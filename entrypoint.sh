#!/bin/bash

mkdir -p /app/sqldata

if [ ! -f /app/sqldata/testdatabase.db ]; then
    sqlite3 /app/sqldata/testdatabase.db < /app/init.sql
    echo "テスト用データベースを作成しました"
else
    echo "すでにテスト用データベースが存在します"
fi

tail -f /dev/null