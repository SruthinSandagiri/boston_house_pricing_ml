FROM python:3.7
COPY . /add
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --blind 0.0.0.0:$PORT app:app 

