#! /bin/bash


python3 -m venv .venv && source .venv/bin/activate\
&& pip install django && pip install psycopg2-binary\

ls -la 
cd trascendance
ls -la

python3 manage.py runserver 0.0.0.0:8000