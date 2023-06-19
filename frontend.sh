yum install nginx -y  &>>/tmp/roboshop.log
rm -rf /usr/share/nginx/html/* &>>/tmp/roboshop.log
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip  2>/tmp/error.log
cd /usr/share/nginx/html
unzip /tmp/frontend.zip  &>>/tmp/roboshop.log
cp /root/roboshop-shell/roboshop.conf /etc/nginx/default.d/roboshop.conf
systemctl enable nginx  &>>/tmp/roboshop.log
systemctl restart nginx  &>>/tmp/roboshop.log

#systemctl restart nginx  &>>/tmp/roboshop.log

#  /dev/null  --nullify the output that goes to this file.
#tee command will store errors but not visible in output