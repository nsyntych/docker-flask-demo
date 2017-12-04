FROM python:2.7
LABEL maintainer "nsyntych@diyordie.gr"

COPY . /demo-app

RUN pip install -r /demo-app/requirements.txt

ENV FLASK_APP /demo-app/app.py
ENTRYPOINT [ "flask", "run", "-h", "0.0.0.0" ]
