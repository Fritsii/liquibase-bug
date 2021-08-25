# liquibase-bug
This project is to showcase the bug described in https://github.com/liquibase/liquibase/issues/2048
### To run this project:
1. `mvn clean install` to build the required docker image (`liquibase-bug:0.0.1-SNAPSHOT`)
2. `docker-compose up` to start a db container and start the spring boot application that will execute a liquibase script
