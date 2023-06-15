yum install nginx -y  >/tmp/roboshop.log
rm -rf /usr/share/nginx/html/* >/tmp/roboshop.log
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip  >/tmp/roboshop.log
cd /usr/share/nginx/html
unzip /tmp/frontend.zip  >/tmp/roboshop.log
#we need to copy config file
systemctl enable nginx  >/tmp/roboshop.log
systemctl restart nginx  >/tmp/roboshop.log