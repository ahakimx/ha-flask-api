FROM python:alpine3.13

WORKDIR /app

COPY . /app/

RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

PORT

EXPOSE 80

CMD ["python", "app.py"]
