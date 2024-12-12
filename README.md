# Vela

参考 <https://github.com/open-vela/docs/blob/dev/README_zh-cn.md> 配置开发环境。

## 配置 ssh-key

```bash
ssh-keygen -t ed25519
```

将生成的 id_ed25519.pub 添加到 [GitHub](https://github.com/settings/ssh/new)/[Gitee](https://gitee.com/profile/sshkeys) 中。

## 编译

```bash
cd vela-opensource
./build.sh vendor/openvela/boards/vela/configs/goldfish-armeabi-v7a-ap -j$(nproc)
```
