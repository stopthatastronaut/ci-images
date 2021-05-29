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

RUN apt-get install powershell unzip -y

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip &&  ./aws/install

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN wget -q https://github.com/russellcardullo/terraform-provider-pingdom/releases/download/v1.1.3/terraform-provider-pingdom_1.1.3_linux_amd64.zip

RUN mkdir -p ~/.terraform.d/plugins/linux_amd64/

RUN unzip terraform-provider-pingdom_1.1.3_linux_amd64.zip -d ~/.terraform.d/plugins/linux_amd64/

RUN pwsh -command "Install-Module Pester -force -verbose"

RUN apt-get install openssh-client -y

RUN ls ~/.terraform.d/plugins/linux_amd64/

RUN apt-get clean all

LABEL maintainer = "Jason Brown <d@evops.co>"

LABEL description = "Ubuntu-based image for Continuous Integration of Terraform projects on Azure and AWS. Targeted at CircleCI, but will work with other docker-based CI systems"

