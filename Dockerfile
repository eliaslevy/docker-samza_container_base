FROM develar/java

RUN apk --update add tar bash && \
    mkdir -p /samza/state /samza/log && \
    rm -rf /tmp/* /var/cache/apk/* 

COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]