oc exec -it pg-bastudio-db-1 -c postgres -- /bin/bash -c "psql -U postgres -c 'create database bastudio;'"
oc exec -it pg-bastudio-db-1 -c postgres -- /bin/bash -c "psql -U postgres -d bastudio -c 'create schema postgres;'"
