#!/bin/sh

#####################################################################
# usage:
# sh stop.sh -- stop application @dev
# sh stop.sh ${env} -- stop application @${env}

# examples:
# sh stop.sh prod -- use conf/nginx-prod.conf to stop OpenResty
# sh stop.sh -- use conf/nginx-dev.conf to stop OpenResty
#####################################################################

if [ -n "$1" ];then
	PROFILE="$1"
else
   PROFILE=prod
fi

mkdir -p logs & mkdir -p tmp
echo "Use profile: "${PROFILE}
/root/work/lghproxy/openresty/nginx/sbin/nginx -s stop -p `pwd`/ -c nginx.conf
