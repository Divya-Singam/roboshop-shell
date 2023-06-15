echo -e "\e[33mcopy mongodb repo file \e[0m"
cp mongodb.repo//etc/yum.repos.d/mongo.repo

echo -e "\e[33installing mongodb repo file \e[0m"
yum install mongodb-org -y

#modify the config file

echo -e "\e[33start mongodb repo file \e[0m"
systemctl enable mongod
systemctl restart mongod