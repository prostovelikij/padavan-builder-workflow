# 1. Редактируем Makefile: меняем версию, комментируем имя, раскомментируем URL
sed -i 's/^SRC_VER.*/SRC_VER = 72.12/' padavan-ng/trunk/user/nfqws/Makefile
sed -i 's/^SRC_NAME=https_dns_proxy/#&/' padavan-ng/trunk/user/doh_proxy/Makefile
sed -i 's|^#SRC_URL=https://github.com/aarond10|SRC_URL=https://github.com/aarond10|' padavan-ng/trunk/user/doh_proxy/Makefile

# 2. Удаляем старый архив, если он остался от прошлых попыток
rm -f padavan-ng/trunk/user/doh_proxy/https_dns_proxy-master.tar.gz

# 3. Переходим в папку и удаляем всё лишнее, кроме Makefile и патчей
cd padavan-ng/trunk/user/nfqws/Makefile
find . -maxdepth 1 -mindepth 1 -not -name Makefile -not -name patches -print0 | xargs -0 rm -rf --



#sed -i 's/^SRC_VER.*/SRC_VER = 72.12/' padavan-ng/trunk/user/nfqws/Makefile
#cd padavan-ng/trunk/user/nfqws
#find . -maxdepth 1 -mindepth 1 -not -name Makefile -not -name patches -print0 | xargs -0 rm -rf --

