FROM mysql:latest

LABEL database="studentapp"

ENV MYSQL_ROOT_PASSWORD=admin123
    MYSQL_USERNAME= Amolbhai
    Endpoint= database-1.ctos2ewkiv6g.ap-south-1.rds.amazonaws.com

COPY init-db.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

CMD ["mysqld"]
