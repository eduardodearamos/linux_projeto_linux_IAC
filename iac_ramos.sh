#! /bin/bash

echo "Criando pastas para o sistema de gestao de venda - Desafio DIO"

mkdir /adm
mkdir /publico
mkdir /sec
mkdir /ven

echo "agora com os as pastas criadas vamos criar os grupos de trabalho para oisteriomente vincular os usuarios"

echo "comanto utilizado para criar os grupos é o groupadd"

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "agora com os grupos criando vamso criar os usuaruios e ja abilitar uma senha padrã oapra eles"

echo "senha padrao sera 1234"

echo "criando usuários"

echo "---------------------------------------------------------------"
echo "Criando usuarios para o GRP_ADM :"
useradd Carlos -m -s /bin/bash -p $(openssl passwd -crypt senha 1234) -G  GRP_ADM
useradd Maria -m -s /bin/bash -p $(openssl passwd -crypt senha 1234) -G GRP_ADM
useradd Joao -m -s /bin/bash -p $(openssl passwd -crypt senha 1234) -G GRP_ADM
echo "---------------------------------------------------------------"

echo "Criando usuaruios para o GRP_VEN: "
useradd Debora -m -s /bin/bash -p $(openssl passwd -crypt senha 1234) -G GRP_VEN
useradd Sebastiao -m -s /bin/bash -p $(openssl passwd -crypt senha 1234) -G GRP_VEN
useradd Roberto -m -s /bin/bash -p $(openssl passwd -crypt senha 1234) -G GRP_VEN
echo "-----------------------------------------------------------------"

echo "Criando usuarios para o GRP_SEC: "
useradd Josefina -m -s /bin/bash -p $(openssl passwd -crypt senha 1234) -G GRP_SEC
useradd Amanda -m -s /bin/bash -p $(openssl passwd -crypt senha 1234) -G GRP_SEC
useradd Rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha 1234) -G GRP_SEC
echo "-----------------------------------------------------------------"
echo "Finalizando a criacao de usuarios"

echo "adicionando usuarios ao grupo com o comando  -G , mas poderia utilizar o usermod"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root: GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "COMO A PASTA PUBLICO SERA DE ACESOS DE TODOS NÃO PRECISA INDICAR O DONO"

echo "Scripts finalizado"

