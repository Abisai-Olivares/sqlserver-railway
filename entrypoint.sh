#!/bin/bash

# Inicia SQL Server en segundo plano
/opt/mssql/bin/sqlservr &

# Espera a que SQL Server esté arriba (hasta 30s)
echo "Esperando a que SQL Server inicie..."
sleep 20

# Ejecuta el script de inicialización
echo "Ejecutando script de creación de base y usuario..."
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P sqlRailway123! -i /init.sql

# Mantiene SQL corriendo en primer plano
wait
