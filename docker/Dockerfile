FROM ubuntu:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
    
RUN git clone https://github.com/christaburger/savings_releases.git

WORKDIR savings_releases

RUN tar -xzf Savings_v2-0.1.1-Linux.tar.gz
RUN cp -a Savings_v2-0.1.1-Linux/Package/. .

ENV PATH="${PATH}:/savings_releases"

EXPOSE 8080

# Start Server
ENTRYPOINT ["Savings_v2"]

# mysql
