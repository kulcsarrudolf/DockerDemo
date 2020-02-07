FROM ubuntu:latest

RUN apt-get install -y openjdk-8-jdk openjdk-8-jdk-headless

COPY Sum.java /app/Sum.java

RUN javac Sum.java

CMD ["java","/srv/app/Sum","5","6"]