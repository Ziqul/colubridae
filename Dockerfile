FROM python:3.9.0b1-buster

WORKDIR /app/

COPY ./requirements.txt ./

RUN pip install -r requirements.txt

COPY ./src/ ./

CMD ["python", "-m", "server"]
