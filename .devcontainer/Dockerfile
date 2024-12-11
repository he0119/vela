FROM mcr.microsoft.com/devcontainers/base:jammy

# https://github.com/open-vela/docs/blob/dev/Getting_Started/Set_up_the_development_environment_zh-cn.md
# 安装必备的软件包
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install bison flex gettext texinfo libncurses5-dev libncursesw5-dev xxd \
    git gperf automake libtool build-essential gperf genromfs \
    libgmp-dev libmpc-dev libmpfr-dev libisl-dev binutils-dev libelf-dev \
    libexpat1-dev gcc-multilib g++-multilib picocom u-boot-tools util-linux \
    dfu-util libx11-dev libxext-dev net-tools pkgconf unionfs-fuse zlib1g-dev \
    libusb-1.0-0-dev libv4l-dev libuv1-dev npm nodejs nasm yasm libdivsufsort-dev \
    libc++-dev libc++abi-dev libprotobuf-dev protobuf-compiler protobuf-c-compiler mtools

# 安装 Repo
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo \
    && chmod a+x /usr/local/bin/repo

# 安装 KConfig frontend
RUN apt install kconfig-frontends

# 安装 Python
RUN apt install python3 python3-pip python-is-python3

# 安装 Python 包
RUN pip3 install kconfiglib pyelftools cxxfilt
