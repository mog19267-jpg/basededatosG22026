# documentacion de contenedores Docker de sistema Gestores de Base de Datos 


![Imagen Docker](./img/imagen_doker.png)
## contenedoer de Totorial de Docker

docker pull docker/getting-started

docker run -d -p 80:80 docker/getting-started
- -d detach (el proceso del contenedor se ejecuta en vbackground)
- -p (port, publish )
## contenedor de DBMS MariaBD
docker pull mariadb:lts-ubi9

## contenedor  de MariaDb sin volumen 
docker run --name ServerMariaDBG2 -e MARIADB_ROOT_PASSWORD=123456 \
-d -p 3345:3306  e0236

# contenedor de MariaDB con volumen
docker run --name ServerMariaDBG2 -e MARIADB_ROOT_PASSWORD=123456 \
-d -v v-mariadbg2:/var/lib/mysql -p 3345:3306  e0236
# contenedor de postgres con volumen 
docker run --name ServerPostgresG2 -e POSTGRES_PASSWORD=123456 \
-d -p 5457:5432 -v v-postgresg2/var/lib/postgresql/data eba8d
## contenedor de sqlServer 2022 con volumen
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=P@ssw0rd" \
   -u 0 \
   -p 1452:1433 --name SQLServerG2 \
   -d -v v-sqlserverg2:/var/opt/mssql/data \
   d01cc
   
| Columna 1 | Columna 2 |
| :--- | :--- |
|docker pull nombre_imagen | **Descargar una imagen de dockerHUB** |
| docker images| **visualizar las imagenes que se encuentran en el docker** [Docker hub](https://hub.docker.com/)|
| docker images| **visualizar las imagenes que se encuentran en el docker**
| docker ps| **visualiza todos los contenedores que estan encendidos**
| docker ps -a| **visualiza todos los contenedores que estan encendidos y apagados**
| docker stop idcontenedor o nombrecontenedor| **detiene un contenedordockwe**
docker Start idcontenedor o nombrecontenedor| **Enciende un contenedordockwe**
docker rm idcontenedor o nombrecontenedor| **Elimina un contenedordor si esta apagado**
docker rm  -f idcontenedor o nombrecontenedor| **Elimina un contenedordor este o no apagado**
