FROM mcr.microsoft.com/mssql/server:2022-lts

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=sqlRailway123!

EXPOSE 1433

COPY entrypoint.sh /entrypoint.sh
COPY init.sql /init.sql

RUN chmod +x /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
