# docker pull ubuntu
# docker run -it u

FROM ubuntu
RUN apt install git
RUN git clone github.com/christaburger/Savings_Releases.git
RUN cd Savings_Releases
RUN tar -xf Savings_v2--Linux.tar.gz
RUN ./Savings_v2--Linux.sh --skip-license
RUN cd bin


# Make available
EXPOSE 8080l

# Start Server
CMD ./Savings_v2
