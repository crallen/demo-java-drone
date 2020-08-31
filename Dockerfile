FROM adoptopenjdk:11.0.8_10-jre-hotspot
COPY build/libs/demo-java-drone-*-all.jar demo-java-drone.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "demo-java-drone.jar"]