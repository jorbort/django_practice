#! /bin/bash

cd /home && mkdir django_project && cd django_project\
&& python3 -m venv .venv && source .venv/bin/activate\
&& pip install --upgrade pip && pip install psycopg2-binary\
&& pip install django && django-admin startproject mysite .

python manage.py runserver 0.0.0.0:8000