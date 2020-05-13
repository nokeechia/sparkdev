FROM yuryueng/sparkbase:latest

USER root

RUN apt update
RUN apt upgrade --fix-missing -y

#add vim
RUN apt-get install vim -y

#install curl
RUN apt-get install curl -y

#install gnupg
RUN apt-get install gnupg -y

#add sbt
RUN echo "deb https://dl.bintray.com/sbt/debian /" > /etc/apt/sources.list.d/sbt.list
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt-get update
RUN apt-get install sbt -y

#install git
RUN apt-get install git -y
