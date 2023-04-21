#!/bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

addgroup GRP_ADM
addgroup GRP_VEN
addgroup GRP_SEC

useradd carlos -c "Calos Silva" -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_ADM
useradd maria -c "Maria Vasconcellos" -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_ADM
useradd joao -c "Joao Campos" -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_ADM

useradd debora -c "Debora Milano" -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Sousa" -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_VEN
useradd roberto -c "Roberto Caetano" -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_VEN

useradd josefina -c "Josefina Andrade" -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_SEC
useradd amanda -c "Amanda Dias" -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_SEC
useradd rogerio -c "Rogerio Cavalcanti" -m -s /bin/bash -p $(openssl passwd -crypt Password123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico