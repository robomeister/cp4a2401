To add ldif entries in bulk, do an oc cp of the ldif file into the /tmp directory of the verify pod and execute the following:

idsldapadd -p 9389 -D cn=root -w cloudPakPassw0rd! -i /tmp/01-ldif.bootstrap.ldif
