#! /bin/bash


python3 -m venv .venv && source .venv/bin/activate\
&& pip install -r requirements.txt\

cd trascendance


python3 manage.py runserver 0.0.0.0:8000