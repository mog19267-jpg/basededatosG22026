# documentacion de contenedores Docker de sistema Gestores de Base de Datos 


![Imagen Docker](./img/imagen_doker.png)
## contenedoer de Totorial de Docker

docker pull docker/getting-started

docker run -d -p 80:80 docker/getting-started
- -d detach (el proceso del contenedor se ejecuta en vbackground)
- -p (port, publish )
## contenedor de DBMS MariaBD
docker pull mariadb:lts-ubi9
| Columna 1 | Columna 2 |
| :--- | :--- |
|docker pull nombre_imagen | **Descargar una imagen de dockerHUB** |
| docker images| **visualizar las imagenes que se encuentran en el docker** [Docker hub](https://hub.docker.com/)|