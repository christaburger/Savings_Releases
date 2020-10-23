FROM ubuntu:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
    
RUN git clone github.com/christaburger/Savings_Releases.git
RUN cd Savings_Releases
RUN tar -xf Savings_v2--Linux.tar.gz
RUN ./Savings_v2--Linux.sh --skip-license
RUN cd bin


EXPOSE 8080

# Start Server
CMD ./Savings_v2
