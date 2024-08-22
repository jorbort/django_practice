#! /bin/bash

mkdir django_project && cd django_project\
&& python3 -m venv .venv && source .venv/bin/activate\
&& pip install django 

python manage.py runserver 0.0.0.0:8000