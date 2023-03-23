FROM nginx:alpine
RUN apk update && apk add bash bind-tools vim curl
RUN wget https://releases.hashicorp.com/consul/1.15.1/consul_1.15.1_linux_amd64.zip
RUN unzip consul_1.15.1_linux_amd64.zip && mv consul /usr/bin && rm -f consul_1.15.1_linux_amd64.zip
RUN mkdir /etc/consul.d && mkdir /var/consul.d