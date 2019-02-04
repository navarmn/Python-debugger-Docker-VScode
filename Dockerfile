FROM python:3.6-slim

RUN apt-get update
RUN apt-get install -y nano

# Install requirements

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /app
WORKDIR /app

EXPOSE 3000

CMD [ "python", "hello.py" ]