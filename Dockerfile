FROM peer2profit/peer2profit_linux
RUN P2P_EMAIL=thoufeeqisin@gmail.com
RUN apt-get update && apt-get install -y --no-install-recommends python3 python3-pip \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /root/webapp
ADD webapp
VOLUME ["/root/.config/"]
ENTRYPOINT ["python3", "main.py"]
