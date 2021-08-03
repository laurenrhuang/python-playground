FROM python:slim-buster

RUN python3 -m venv venv

COPY requirements.txt .
RUN . /venv/Scripts/activate && pip install -r requirements.txt

COPY myapp.py .
CMD . /venv/Scripts/activate && exec python myapp.py
