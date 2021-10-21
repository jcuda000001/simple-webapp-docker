FROM python:3.9-slim-buster

RUN apt-get update && apt-get install -y python python-pip

COPY . /opt/
RUN pip install -r ./opt/requirements.txt

# ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
CMD ["python", "/opt/app.py"]
