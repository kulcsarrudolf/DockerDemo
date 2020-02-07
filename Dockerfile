FROM ubuntu:16.04

RUN apt update

RUN apt-get install -y openjdk-8-jdk openjdk-8-jdk-headless

COPY Sum.java /app/Sum.java

RUN javac /app/Sum.java

CMD ["java","-cp","app","Sum","5","6"]