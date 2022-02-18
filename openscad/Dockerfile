FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=Australia/Melbourne

RUN apt-get update

RUN apt-get install -y wget

RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb

RUN dpkg -i packages-microsoft-prod.deb

RUN apt-get update

RUN apt-get install -y -q powershell unzip openscad python3 python3-pip

RUN python3 --version

RUN pip3 --version

# 3d slicer. eventually

RUN apt-get install -y libpulse-dev libnss3 libasound2

#RUN wget --content-disposition https://download.slicer.org/bitstream/60add706ae4540bf6a89bf98

#RUN ls

LABEL maintainer = "Jason Brown <d@evops.co>"

LABEL description = "Ubuntu-based image for 3D modelkling collaboration via github and CI systems"
