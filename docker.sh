#!/bin/bash



# Descargar las imágenes

docker pull mysql:latest

docker pull pacomn/party-web:1.0



# Ejecutar el primer contenedor

docker run -d --name db -p 3306:3306 -e MYSQL_DATABASE=prueba -e MYSQL_ROOT_PASSWORD=hola -e LANG=C.UTF-8 -v ${PWD}/sql:/var/lib mysql:latest



# Esperar a que el contenedor 'db' esté disponible

until docker exec db mysqladmin ping --silent; do

    sleep 1

done



echo "Ejecutando el comando inicial..."

docker exec -i db /bin/bash -c "mysql -u root -phola prueba < /var/lib/party1.sql"

while [ $? -ne 0 ]; do

    echo "Error de acceso. Esperando 5 segundos..."

    sleep 5

    echo "Ejecutando el comando nuevamente..."

    docker exec -i db /bin/bash -c "mysql -u root -phola prueba < /var/lib/party1.sql"

done



# Ejecutar el comando dentro del contenedor 'db'

# docker exec -i db /bin/bash -c "mysql -u root -phola prueba < /var/lib/party1.sql"



# Esperar 20 segundos

sleep 20



# Ejecutar el segundo contenedor

docker run --name party-web -p 8080:8080 --link db pacomn/party-web:1.0



