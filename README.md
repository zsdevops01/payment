# Payment Service 

This service is responsible for payments in RoboShop e-commerce app.

This service is written on `Python 3`, So need it to run this app.

1. Create a user for running the application 

```
# useradd -m -s /bin/bash roboshop
```

2. Download the repo.

```
$ cd /home/roboshop
$ curl -L -s -o /tmp/payment.zip "https://github.com/zelar-soft-roboshop/payment/archive/main.zip"
$ unzip /tmp/payment.zip
$ mv payment-main payment
```

3. Install Python Dependency Installer 

```
# apt update
# apt install python3-pip -y 
```

4. Install the dependencies

```
# cd /home/roboshop/payment 
# pip3 install -r requirements.txt
```

**Note: Above command may fail with permission denied, So run as root user**

5. Update the roboshop user and group id in `payment.ini` file.

6. Setup the service 

```
# mv /home/roboshop/payment/systemd.service /etc/systemd/system/payment.service
# systemctl daemon-reload
# systemctl enable payment 
# systemctl start payment
```

#
