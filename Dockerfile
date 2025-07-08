FROM jupyter/datascience-notebook:latest

USER root

# Instala Java 17
RUN apt-get update && apt-get install -y openjdk-17-jdk && \
    rm -rf /var/lib/apt/lists/*

# Define JAVA_HOME para o Java 17
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

# Instala pandas e pyspark
RUN pip install --no-cache-dir pandas pyspark

USER $NB_UID
