# 为 360T7 云编译 ImmortalWrt
![immortalwrt](logo.png)

## 🤖关于固件

  | 默认网关    | 默认用户     | 默认密码     |
  | -------- | -------- | -------- |
  | 192.168.77.1 | root | -- |

- 纯净版 无任何非必要插件

##  How To
###  Generate `.config` file for target router
- Clone this repo
- Copy the folder `immortalwt/` in gen-config/
- Modify mount path in ==run.sh== 
- Run `build.sh` to create the build env image
- Run `run.sh` to create the container and attach to it
- Inside container, copy template config file from `deconfig/` folder
```
# MT7981
cp -f defconfig/mt7981-ax3000.config .config

# MT7986
cp -f defconfig/mt7986-ax6000.config .config

# MT7986 256M Low Memory
cp -f defconfig/mt7986-ax6000-256m.config .config
```
- Run `make menuconfig` to choose target router and plugins, etc.
- Move the resulted `.config` file back to `deconfig/`
- Copy this .config in host machine, rename it accordingly, e.g. `360T7.config`
- Add it to the root of this repo

### Add new workflow 
- Use the existing workflow file as template, and modify accordingly.

## ❤️感谢
- hanwckf：https://github.com/hanwckf/immortalwrt-mt798x  
- Actions-OpenWrt：https://github.com/P3TERX/Actions-OpenWrt
