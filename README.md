# Neo4j

build docker image
```shell
docker build --tag ehanlin/neo4j:$NEO4J_VER --build-arg NEO4J_VER=$NEO4J_VER .
```

publish
```shell
docker push ehanlin/neo4j:$NEO4J_VER
```
