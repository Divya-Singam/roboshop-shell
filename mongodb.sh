echo -e "\e[34mcopy mongodb repo file \e[0m"
cp mongodb.repo /etc/yum.repos.d/mongodb.repo

echo -e "\e[34minstalling mongodb repo file \e[0m"
yum install mongodb-org -y

#modify the config file

echo -e "\e[34mstart mongodb repo file \e[0m"
systemctl enable mongod
systemctl restart mongod