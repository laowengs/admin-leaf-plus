FROM 192.168.3.21:8082/jdk/openjdk:17.0.1

ENV JAVA_OPTS="-Xms256m -Xmx512m"
WORKDIR /root
ADD target/admin-leaf-plus-*.jar /root/admin-leaf-plus.jar
ENTRYPOINT java  ${JAVA_OPTS} -jar /root/admin-leaf-plus.jar