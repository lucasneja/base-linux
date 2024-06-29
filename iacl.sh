#!/bin/bash

echo 'Criando diretórios'
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo 'Criando grupos de usuários'
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo 'Criando usuários'
useradd carlos -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd sebastiana -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd roberto -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd josefina -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd amanda -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd rogerio -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

echo 'Especificando permissões dos diretórios'
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown 777 /publico
chown 770 /adm
chown 770 /ven
chown 770 /sec

echo 'Fim'
