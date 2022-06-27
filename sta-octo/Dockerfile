FROM ubuntu:20.04

RUN apt-get update && apt-get install -y lsb-release

RUN apt-get install ca-certificates curl gnupg2 wget apt-transport-https apt-utils software-properties-common -y

RUN curl -sSfL https://apt.octopus.com/public.key | apt-key add - > /dev/null

RUN wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb

RUN dpkg -i packages-microsoft-prod.deb

RUN apt-get update

RUN add-apt-repository universe

RUN apt-get install powershell unzip -y

RUN echo deb https://apt.octopus.com/ stable main > /etc/apt/sources.list.d/octopus.com.list

RUN apt update && apt install octopuscli -y