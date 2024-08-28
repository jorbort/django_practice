FROM python:3.12-bookworm

EXPOSE 8000

WORKDIR /app

COPY django_start.sh /app
RUN chmod +x /app/django_start.sh
COPY requirements.txt /app


COPY . /app
ENTRYPOINT ["/app/django_start.sh"]

