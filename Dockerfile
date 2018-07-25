FROM fhq9543/docker-py36_alpline_mysqlclient

COPY docker-entrypoint.sh /bin/
RUN mkdir /project
COPY ./project/brand_drf /project/brand_drf

WORKDIR /project/brand_drf

RUN pip install -r requirements.txt && \
        apk add --no-cache bash && \
        rm -rf /var/cache/apk/*

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["0:9999"]
