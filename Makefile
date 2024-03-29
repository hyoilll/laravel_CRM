
ps: # コンテイナーのリストを取得
	./vendor/bin/sail ps


php: # phpコンテイナーにRoot権限でログイン
	docker-compose exec laravel.test bash 
db: # mysqlコンテイナーにログイン
	docker-compose exec mysql bash

clear: # clear cache & config
	./vendor/bin/sail php artisan cache:clear
	./vendor/bin/sail php artisan config:clear

up: # コンテイナーを起動
	./vendor/bin/sail up -d
down: # コンテイナーを停止
	./vendor/bin/sail down
downv: # volumeを削除 & コンテイナーを停止
	./vendor/bin/sail down -v