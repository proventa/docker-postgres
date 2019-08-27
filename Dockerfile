FROM postgres:11

RUN localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8
ENV LANG de_DE.utf8

COPY ./postgres/pg_conf.sql /docker-entrypoint-initdb.d/pg_conf.sql

# RUN chown -R postgres:postgres /var/log/postgresql && chmod 660 /var/log/postgresql
