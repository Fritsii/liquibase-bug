FROM openjdk:11 as builder
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} application.jar
RUN java -Djarmode=layertools -jar application.jar extract

FROM openjdk:11
COPY --from=builder dependencies/ ./
RUN true
COPY --from=builder spring-boot-loader/ ./
RUN true
COPY --from=builder snapshot-dependencies/ ./
RUN true
COPY --from=builder application/ ./
ADD entry.sh /entry.sh
RUN chmod a+x /entry.sh
ENTRYPOINT ["/entry.sh"]
