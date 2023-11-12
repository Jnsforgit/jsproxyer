#!/bin/sh

#####################################################################
# usage:
# sh start.sh -- start application @dev
# sh start.sh ${env} -- start application @${env}

# examples:
# sh start.sh prod -- use conf/nginx-prod.conf to start OpenResty
# sh start.sh -- use conf/nginx-dev.conf to start OpenResty
#####################################################################

if [ -n "$1" ];then
	PROFILE="$1"
else
   PROFILE=prod
fi

mkdir -p logs & mkdir -p tmp
echo "Use profile: "${PROFILE}
/root/work/lghproxy/openresty/nginx/sbin/nginx -p `pwd`/ -c nginx.conf
