#!/bin/bash

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de users..."

groupadd GRP_ADM
groupadd GRP_VEN
grouoadd GRP_SEC


echo "Criando usúarios..."

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd Senha123)
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd Senha123)
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd Senha123)
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd Senha123)
useradd debastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd Senha123)
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd Senha123)
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd Senha123)
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd Senha123)
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd Senha123)

echo "Adicionando usúarios a grupos..."

usermod carlos -G GRP_ADM
usermod maria -G GRP_ADM
usermod joao -G GRP_ADM
usermod debora -G GRP_VEN
usermod sebastiana -G GRP_VEN
usermod roberto -G GRP_VEN
usermod josefina -G GRP_SEC
usermod amanda -G GRP_SEC
usermod rogerio -G GRP_SEC

echo "Atribuindo diretorios a grupos ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "permissões a usúarios ..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizando todas as etapas..."
