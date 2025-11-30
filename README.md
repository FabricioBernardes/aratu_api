# Aratu API

para iniciar o banco de dados de desenvolvimento use o comando abaixo:
```sh
docker-compose up db
```

para criar e popular o banco de dados use os comandos abaixo:
```sh
docker-compose exec web bundle exec rails db:create db:migrate
docker-compose exec web bundle exec rails db:reset db:seed
```

para criar o banco de dados de teste use o comando abaixo:
```sh
rails db:create RAILS_ENV=test
```