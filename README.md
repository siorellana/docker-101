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

2.- Ejecutar la aplicación web con docker

El siguiente comando para ejecutar el 

```bash
docker run --name some-nginx -v /some/content:/usr/share/nginx/html:ro -d nginx
```

3.- 