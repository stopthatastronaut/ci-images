FROM ubuntu:18.04

RUN apt-get update && apt-get install -y lsb-release

RUN apt-get install curl gnupg2 wget apt-transport-https apt-utils software-properties-common -y

RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - > /dev/null

RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb

RUN dpkg -i packages-microsoft-prod.deb

RUN apt-get update

RUN add-apt-repository universe

RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

RUN apt-get update && apt-get install terraform=0.14.5

RUN apt-get install powershell -y

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN apt-get install -y unzip

RUN wget -q https://github.com/russellcardullo/terraform-provider-pingdom/releases/download/v1.1.3/terraform-provider-pingdom_1.1.3_linux_amd64.zip

RUN mkdir -p ~/.terraform.d/plugins/linux_amd64/

RUN unzip terraform-provider-pingdom_1.1.3_linux_amd64.zip -d ~/.terraform.d/plugins/linux_amd64/

RUN ls ~/.terraform.d/plugins/linux_amd64/

RUN apt-get clean all

