#!/bin/bash
set -eo pipefail
shopt -s nullglob

if [ "$1" = '/bin/bash' ]; then
    exec "$1"
fi

IP_PORT=$1

if [ "$1" = 'makemigrations' ]; then
    python /project/brand_drf/manage.py $1
    if [ "$2" = 'migrate' ]; then
        python /project/brand_drf/manage.py $2
        if [ $3 ]; then
            IP_PORT=$3
        fi
    else
        exit 1
    fi
fi

python /project/brand_drf/manage.py collectstatic
python /project/brand_drf/manage.py runserver $IP_PORT

#exec "$@"
