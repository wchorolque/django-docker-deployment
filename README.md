# django-docker-deployment

https://www.youtube.com/watch?v=mScd-Pc_pX0&t=3577s

- Crear requirements.txt
- Crear Dockerfile
- Crear docker-compose.yml
- Ejecutar
````
    docker-compose build
````

- Ejecutar el siguiente comando para crear un nuevo proyecto
````
    docker-compose run --rm app sh -c "django-admin startproject main ."
````

- Ejecutar el siguiente comando para hacer correr el proyecto
````
    docker-compose run --rm -p 8000:8000 app sh -c "python manage.py runserver 0.0.0.0:8000"
````

- Actualizar settings.py (setear variables de ambiente)
- Crear una aplicacion 
````
docker-compose run --rm app sh -c "python manage.py startapp core"
````

- Crear migraciones de la nueva app
````
docker-compose run --rm  app sh -c "python manage.py makemigrations"
````

- Para iniciar el servicio ejecutamos
````bash
docker-compose up
````