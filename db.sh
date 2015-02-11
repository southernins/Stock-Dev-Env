#!/usr/bin/env bash
#

mysqluser="root"
mysqlpass="12passwd34"

while [ $1 ]; do

    case "$1" in
        '-d'|'--database') db_name="$2";;
        '-u'|'--user') db_user="$2";;
        '-p'|'--password') db_pass="$2";;
        
        '-U'|'--mysqluser') mysqluser="$2";;
        '-P'|'--mysqlpassword') mysqlpass="$2";;
        
        '-h'|'--help') autohost-usage;;
        '-rm'|'--remove') name="$2"
              autohost-remove;;
        
    esac
    shift
done

if [ -z db_name ];
then
    echo -n "Name of Database to create: "
    read -s db_name

fi

if [ -z db_user ];
then
    echo -n "Username: "
    read -s db_user

fi

if [ -z db_pass ];
then
    echo -n "Password: "
    read -s db_pass

fi

echo "CREATE USER '$db_user'@'localhost' IDENTIFIED BY '$db_pass'" | mysql -uroot -p12passwd34
echo "CREATE DATABASE $db_name" | mysql -uroot -p12passwd34
echo "GRANT ALL ON $db_name.* TO '$db_user'@'localhost'" | mysql -uroot -p12passwd34
echo "flush privileges" | mysql -uroot -p12passwd34


exit 0