# Making ImmortalWrt Firmware for MT798x Routers

## 🤖Configuration

  | Default Gateway    | User     | Password    |
  | -------- | -------- | -------- |
  | 192.168.77.1 (http://immortalwrt.lan/)| root |  |

##  How to add a new router
###  1. Generate `.config` file for target router
- Clone this repo
- Enter folder `gen-config/immortalwrt/`
- Modify mount path in `run.sh`
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
- rename the resulted `.config` file accordingly, e.g. `360T7.config`
- Move it back to `deconfig/`
- Copy this renamed `xxxx.config` in mount folder in host machine, and add it to the root of this repo.

### 2. Add new router to workflow 
- Add name of the new router to matrix.router in `Build-All.yml`
```yml
    strategy:
      matrix:
        router: [360T7, Mi-AX3000T]
```
- Attention: the name here should match the one use in `xxxx.config` file, e.g. "360T7".

## ❤️Thanks to
- hanwckf：https://github.com/hanwckf/immortalwrt-mt798x  
- Actions-OpenWrt：https://github.com/P3TERX/Actions-OpenWrt
