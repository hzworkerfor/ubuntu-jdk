FROM ubuntu

COPY ./jdk.tar.gz /jdk.tar.gz

RUN mkdir -p /usr/lib/jvm
RUN tar -zxvf /jdk.tar.gz -C /usr/lib/jvm

ENV JAVA_HOME=/usr/lib/jvm/jdk1.8.0_321
ENV JRE_HOME="${JAVA_HOME}/jre"
ENV CLASSPATH=".:${JAVA_HOME}/lib:${JRE_HOME}/lib"
ENV PATH="${JAVA_HOME}/bin:${PATH}"
