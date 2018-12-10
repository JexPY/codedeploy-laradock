# cd ./seemee-api/laradock/

# Docker
export HOME=/home/ubuntu

cd ~
cd ./seemee-api/laradock

docker-compose up -d mysql phpmyadmin redis nginx workspace

docker-compose exec -T workspace php artisan migrate

