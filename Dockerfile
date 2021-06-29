FROM        python:3
RUN         mkdir /app
WORKDIR     /app
COPY        payment.ini payment.py rabbitmq.py requirements.txt /app/


