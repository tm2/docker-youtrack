FROM sgrio/java-oracle:server_jre_8_unlimited
MAINTAINER Maarten Balliauw <maarten.balliauw@jetbrains.com>

RUN curl -L https://download.jetbrains.com/charisma/youtrack-2017.2.33390.jar -o youtrack.jar

EXPOSE 80
CMD ["java", "-Xmx1g", "-XX:MaxMetaspaceSize=250m", "-Djava.awt.headless=true", "-jar", "youtrack.jar", "80"]
