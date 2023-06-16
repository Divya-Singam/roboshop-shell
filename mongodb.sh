echo -e "\e[34mcopy mongodb repo file \e[0m"
cp mongodb.repo /etc/yum.repos.d/mongodb.repo  &>>/tmp/roboshop.log

echo -e "\e[34minstalling Mongodb server \e[0m"
yum install mongodb-org -y  &>>/tmp/roboshop.log

#modify the config file

echo -e "\e[34mstart Mongodb service \e[0m"
systemctl enable mongod  &>>/tmp/roboshop.log
systemctl restart mongod  &>>/tmp/roboshop.log