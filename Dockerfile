FROM python:3.6.9
LABEL version = "1.0" Copyright = "2023" owner = "flion"

EXPOSE 5001

VOLUME /app/logs
WORKDIR /app
ADD ./docker /app

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

CMD python3 server.py
