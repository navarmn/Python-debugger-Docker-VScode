FROM python:3.6-slim

RUN apt-get update
RUN pip install -U ptvsd

# Install requirements
COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app

EXPOSE 3000
ENV HELLO="Hello, I am inside a docker container :)"

CMD [ "python", "hello.py" ]
