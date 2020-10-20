FROM ubuntu:latest

WORKDIR /opt
RUN apt update
RUN apt install -y python3 git
RUN git clone https://github.com/Crypt0s/FakeDns.git
CMD python3 /opt/FakeDns/fakedns.py -c /root/config/dns.conf