#python:stretch image as a source image
FROM python:stretch

#Set up an app directory for code
COPY . /app
WORKDIR /app

#installations
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#entrypoint run main app using the Gunicorn WSGI server.
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

