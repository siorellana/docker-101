# DOCKER 101

En este repositorio se revisarán algunos ejercicios de Docker.
LA estructura de directorios es la siguiente:

```output
.
├── Makefile        -> Archivo para "automatizar"
├── README.md       -> Archivo que lees actualmente
└── my-website      -> Directorio de aplicación
    └── index.html  -> Aplicacion
```

## Prerequisitos

Docker instalado

Git instalado

### 1.- Clonar el repositorio

Ejecutar el siguiente comando para clonar repositorio:

```bash
git clone https://github.com/siorellana/docker-101.git
```

### 2.- Crear una aplicación web

Generar un archivo un archivo llamado index.html con el siguiente contenido:

```html
<!DOCTYPE html>
<html>
<body>

<h2>HTML Image</h2>
<img src="https://http.cat/202.jpg" alt="Trulli" width="500" height="333">

</body>
</html>
```

Tambien se puede utilizar el archivo dentro del directorio my-website.

### 3.- Ejecutar la aplicación web con docker

El siguiente comando para ejecutar un contenedor de docker, montando como volumen el directorio my_app y exponiendo el contenedor con el puerto 9191 apuntando al puerto 80 del contenedor.

```bash
docker run --name my-website -v $PWD/my_app:/usr/share/nginx/html:ro -d -p 9191:80 nginx
```

Detener un contenedor

```bash
docker stop ≤Nombre Contenedor>
````

Detener todos los contenedores

```bash
docker stop $(docker ps -a -q)
````

Eliminar un contenedor

```bash
docker rm ≤Nombre Contenedor>
```

Eliminar todos los contenedores

```bash
docker rm $(docker ps -a -q)
```

### 4.- Crear mi propia imagen

```bash
docker build -t siorellana/cats:200 .
```
