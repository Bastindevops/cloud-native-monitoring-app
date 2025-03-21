FROM python:3.9-buster

WORKDIR /app

COPY requirements .

RUN pip3 install --no-cache-dir -r requirements

COPY . .

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD ["flask", "run"]
