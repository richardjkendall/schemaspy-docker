#!/bin/sh

DB_NAME=${DATABASE_NAME}

cd /opt
mkdir -p /app/data/schema-output
java -jar schemaspy-6.0.0.jar -t sqlite-xerial -dp /opt -db /app/data/$DB_NAME -cat % -s data -sso -o /app/data/schema-output -debug
