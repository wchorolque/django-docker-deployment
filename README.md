# django-docker-deployment

- Crear requirements.txt
- Crear Dockerfile
- Crear docker-compose.yml
- Ejecutar
    docker-compose build
- Ejecutar el siguiente comando para crear un nuevo proyecto
    docker-compose run --rm app sh -c "django-admin startproject main ."
- Ejecutar el siguiente comando para hacer correr el proyecto
    docker-compose run --rm -p 8000:8000 app sh -c "python manage.py runserver 0.0.0.0:8000"
- Actualizar settings.py (setear variables de ambiente)