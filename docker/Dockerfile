FROM ubuntu:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
    
RUN git clone https://github.com/christaburger/savings_releases.git

WORKDIR savings_releases

ENV PATH="${PATH}:/savings_releases"

EXPOSE 8080

# Start Server
ENTRYPOINT ["Savings_v2"]