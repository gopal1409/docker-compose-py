FROM python:3.7-alpine #build an image starting with python 3.7 image
WORKDIR /code 
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-chache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt 
COPY . .
CMD [ "flask","run" ]