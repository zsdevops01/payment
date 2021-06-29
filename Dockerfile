FROM        python:3
RUN         mkdir /app
WORKDIR     /app
COPY        payment.ini payment.py rabbitmq.py requirements.txt /app/
RUN         pip3 install -r requirements.txt
CMD         ["uwsgi", "--ini", "payment.ini"]

