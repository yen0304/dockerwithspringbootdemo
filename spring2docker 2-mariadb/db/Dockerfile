FROM mariadb:10.7
RUN apt-get upgrade
RUN apt-get update 
RUN apt-get install iputils-ping
COPY ./sqls/init.sql /docker-entrypoint-initdb.d/init.sql
COPY ./sqls/my.cnf /etc/mysql/my.cnf