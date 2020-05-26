FROM mysql:8.0.20

# ENV MYSQL_ROOT_PASSWORD DEFAULT_PASS
ENV MYSQL_ALLOW_EMPTY_PASSWORD=true
ENV MYSQL_DATABASE=customer
ENV MYSQL_USER=unisannio
ENV MYSQL_PASSWORD=unisannio

EXPOSE 3306

USER ROOT

RUN sudo chown mysql /var/lib/mysql
RUN sudo chgrp mysql /var/lib/mysql

USER mysql
