# django-docker-deployment

- Crear requirements.txt
- Crear Dockerfile
- Crear docker-compose.yml
- Ejecutar
    docker-compose build
- Ejecutar
    docker-compose run --rm app sh -c "django-admin startproject main ."
- Actualizar settings.py (setear variables de ambiente)