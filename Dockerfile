FROM python:slim-buster

RUN python3 -m venv venv

COPY requirements.txt
RUN .\venv\Scripts\activate && pip install -r requirements.txt

ENTRYPOINT ['python', 'manage.py', 'runserver']
