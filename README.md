# Share-app-server

## Environment

- MySQL 5.6
docker-compose fileで管理

docker-compose version 3

port : 4306:3306

```
devDBサーバー
→ share-app-server-db_development

testDBサーバー
→ share-app-server-db_test
```

- Ruby 2.6.5

github

https://github.com/ruby/ruby

Document

https://www.ruby-lang.org/ja/

- RailsAPI Mode 6.0.2.2（3/30　最新）

github

https://github.com/rails/rails

Document

https://rubyonrails.org/


### Setup database && build API server
```
// build docker image
$ docker-compose build

// create and migrate db
$ docker-compose run web bundle exec rake db:create

// 	If you will get SQL from Sequel Pro, you don't have to execute.
$ docker-compose run web bundle exec rake db:migrate

$ docker-compose up

// 立ち上がっているか確認する
$ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
9c737e36e1d0        mysql:5.6           "docker-entrypoint.s…"   3 days ago          Up 3 days           0.0.0.0:4306->3306/tcp   page-re-player-app-server_db_1

$ docker exec -it share-app-server_db_1 /bin/bash
$ mysql -u root -p
(パスワードはdocker-compose.ymlに記載)
$ show databases;
$ quit;
$ exit
```

can access http://localhost:3000

### To use Sequel pro

- Sequel Pro is GUI client in MySQL

- Install the Sequel Pro https://www.sequelpro.com/

```
name：share-localhost
host：127.0.0.1
user：root
password：docker-compose.ymlに記載
port：4306
```

After this, you need to continuous `docker-compose up` or `docker-compose up -d`
