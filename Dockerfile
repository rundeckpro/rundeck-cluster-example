ARG RDVERS
FROM rundeckpro/enterprise:${RDVERS:-SNAPSHOT} 

RUN mkdir -p /tmp/remco-partials/framework
COPY framework-ext.properties /tmp/remco-partials/framework/framework-ext.properties


# RUN chown -R rundeck:root /tmp/remco-partials

VOLUME ["/home/rundeck/server/data"]

EXPOSE 4440

ENTRYPOINT [ "/tini", "--", "docker-lib/entry.sh" ]
