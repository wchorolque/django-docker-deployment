FROM python:alpine3.18

ENV PYTHONBUFFERED 1

COPY ./requirements.txt /requirements.txt

COPY ./src /app 

WORKDIR /app

EXPOSE 8000

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /requirements.txt && \
    adduser --disabled-password --no-create-home app

ENV PATH="/py/bin:$PATH"

USER app