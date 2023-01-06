mkdir mysql
rm -rf mysql/*

chmod 777 bWAPP/passwords/
chmod 777 bWAPP/images/
chmod 777 bWAPP/documents/
mkdir bWAPP/logs
chmod 777 bWAPP/logs/


docker run --rm --name bwapp -it -p "80:80" -p "3306:3306" -v ${PWD}/bWAPP:/app -v ${PWD}/mysql:/var/lib/mysql petersdockerid0815/lamp:1.0-2004-php7.4
