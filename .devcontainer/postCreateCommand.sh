git config --global --add safe.directory /workspaces/vela-boilerplate

# 下载 openvela 源码
# https://github.com/open-vela/docs/blob/dev/Getting_Started/Download_Vela_sources_zh-cn.md
mkdir -p vela-opensource
cd vela-opensource

git lfs install

repo init --partial-clone -u https://github.com/open-vela/manifests.git -b dev -m openvela.xml --git-lfs

repo sync -c -j$(nproc)
