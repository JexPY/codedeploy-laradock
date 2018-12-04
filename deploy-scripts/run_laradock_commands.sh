cd ./laradock

#up containers
sudo docker-compose up -d mysql phpmyadmin redis nginx workspace

#migration
sudo docker-compose exec workspace php artisan migrate

