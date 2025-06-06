#!/bin/bash

if [ "$# -ne 4"]; then
    echo "Uso: $0 <userRoot> <passRoot> <userNew> <passNew>"
    exit 1
fi

userRoot = "$1"
passRoot = "$2"
userNew = "$3"
passNew = "$4"

sqlFile = "create_user.sql"
echo "CREATE USER IF NOT EXISTS '$userNew'@'localhost' INDENTIFIED BY '$passNew';" > $sqlFile
echo "GRANT ALL PRIVIGELES ON *.* TO '$userNew'@'localhost' WITH GRAND OPTION;" >> $sqlFile
echo "FLUSH PRIVILEGES;" >> $sqlFile

docker cp $sqlFile mysql_container:/tmp/$sqlFile

docker exec -i mysql_container /bin/bash -c "mysql -u $userRoot -p$passRoot < /tmp/$sqlFile"