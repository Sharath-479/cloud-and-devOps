FROM ubuntu
WORKDIR ./
RUN apt-get update
RUN apt-get install -y apache2
EXPOSE tcp/80
ENTRYPOINT 


