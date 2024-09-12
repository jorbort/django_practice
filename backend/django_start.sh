#! /bin/bash

if [ "$DATABASE" = "postgres" ]; then
    echo "Waiting for postgres..."

    while ! nc -z $DATABASE_HOST $SQL_PORT; do
        sleep 0.1
    done

    echo "PostgresSQL started"
fi

python3 -m venv .venv && source .venv/bin/activate\
&& pip install -r requirements.txt\

cd trascendance

python3 manage.py flush --no-input
python3 manage.py makemigrations
python3 manage.py migrate
python3 testenv.py
gunicorn trascendance.wsgi:application --bind 0.0.0.0:8000
