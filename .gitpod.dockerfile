#Created by sxlmnwb

#Ubuntu latest
FROM gitpod/workspace-full:latest

#User root
USER root

#Start
RUN echo "---Start---"

#Installing package and etc
RUN apt-get update && apt-get install -y \
    #Building kernel
    && apt-get install bc bison ca-certificates curl ccache cmake file flex gcc g++ git libelf-dev ninja-build libc6-dev libssl-dev openssl python python3 texinfo u-boot-tools xz-utils zlib1g-dev lld ssh wget zip zstd sudo make clang gcc-arm-linux-gnueabi software-properties-common -y \
    #Building rom
    && apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig -y \
    #More
    && apt-get install nano neofetch htop mc screen -y
    
#Done
RUN echo "---Done---"

