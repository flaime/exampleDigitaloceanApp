# exampleDigitalOcan
Simple project that can be run on Digitalocean app platform

Kotlin Spring Boot application with a database (postgres), running java 17 with gradle 

Run it by creating a App on Digital Ocean an point it a git repo with the same code as this and add the params belov in Digital Ocean:

  envs:
  - key: DATABASE_URL
    scope: RUN_TIME
    value: ${db.DATABASE_URL}
  - key: DB_HOSTNAME
    scope: RUN_AND_BUILD_TIME
    value: ${db.HOSTNAME}
  - key: DB_PORT
    scope: RUN_AND_BUILD_TIME
    value: ${db.PORT}
  - key: DB_NAME
    scope: RUN_AND_BUILD_TIME
    value: ${db.DATABASE}
  - key: DB_USERNAME
    scope: RUN_AND_BUILD_TIME
    value: ${db.USERNAME}
  - key: DB_PASSWORD
    scope: RUN_AND_BUILD_TIME
    value: ${db.PASSWORD}
    
    ![image](https://user-images.githubusercontent.com/6819014/156382885-14895b47-dc46-4c19-9f21-d727fef9fe55.png)
