ARG NEO4J_VER

FROM neo4j:${NEO4J_VER}

RUN ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime && echo "Asia/Taipei" > /etc/timezone

COPY bin/neo4j /var/lib/neo4j/bin

RUN chmod +x /var/lib/neo4j/bin/neo4j

EXPOSE 7474 7473

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["neo4j"]
