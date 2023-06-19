echo -e "\e[33m configuring node JS repos\e[0m"
curl -sL https://rpm.nodesource.com/setup_lts.x | bash &>>/tmp/roboshop.log

echo -e "\e[33m install node JS \e[0m"
yum install nodejs -y &>>/tmp/roboshop.log

echo -e "\e[33m add application user\e[0m"
useradd roboshop &>>/tmp/roboshop.log

echo -e "\e[33m create application directory\e[0m"
rm -rf /app &>>/tmp/roboshop.log
mkdir /app &>>/tmp/roboshop.log

echo -e "\e[33m download application content \e[0m"
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip &>>/tmp/roboshop.log
cd /app
unzip /tmp/catalogue.zip &>>/tmp/roboshop.log
cd /app
npm install &>>/tmp/roboshop.log

echo -e "\e[33m setup system d service \e[0m"
cp catalogue.service /etc/systemmd/system/catalogue.service &>>/tmp/roboshop.log

echo -e "\e[33m start catalogue service\e[0m"
systemctl daemon-reload
systemctl enable catalogue
systemctl restart catalogue
echo -e "\e[33m copy mongodb repo file\e[0m"
cp mongodb.repo /etc/yum.repos.d/mongodb.repo
cp mongodb.repo /etc/yum.repos.d/mongodb.repo
yum install mongodb-org-shell -y
echo -e "\e[33m Load schema\e[0m"
cp mongodb.repo /etc/yum.repos.d/mongodb.repo
mongo --host mongodb-dev.donedevops.store </app/schema/catalogue.js