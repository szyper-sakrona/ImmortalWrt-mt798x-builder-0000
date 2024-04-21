ARG BASE_IMAGE_TAG=22.04
FROM ubuntu:${BASE_IMAGE_TAG}

USER root

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update -y && \
          apt full-upgrade -y && \
          apt install -y ack antlr3 asciidoc autoconf automake autopoint binutils bison build-essential \
          bzip2 ccache clang clangd cmake cpio curl device-tree-compiler ecj fastjar flex gawk gettext gcc-multilib \
          g++-multilib git gperf haveged help2man intltool lib32gcc-s1 libc6-dev-i386 libelf-dev libglib2.0-dev \
          libgmp3-dev libltdl-dev libmpc-dev libmpfr-dev libncurses5-dev libncursesw5 libncursesw5-dev libreadline-dev \
          libssl-dev libtool lld lldb lrzsz mkisofs msmtp nano ninja-build p7zip p7zip-full patch pkgconf python2.7 \
          python3 python3-pip python3-ply python3-docutils qemu-utils re2c rsync scons squashfs-tools subversion swig \
          texinfo uglifyjs upx-ucl unzip vim wget xmlto xxd zlib1g-dev && \
          apt clean && \
          rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd -m user

USER user
WORKDIR /home/user

RUN git clone --depth=1 https://github.com/hanwckf/immortalwrt-mt798x.git && \
         cd immortalwrt-mt798x && \         
        ./scripts/feeds update -a && \
        ./scripts/feeds install -a

WORKDIR /home/user/immortalwrt-mt798x
