# 桌面宠物 🐕 🐱 

原生 AppKit 写的 macOS 桌宠：透明无边框、置顶桌面底部、走动/趴下/跳跃、
点击摇尾、拖拽、右键菜单、菜单栏托盘，无图也能跑（内置占位绘制）。

## 环境
- macOS 13+
- Xcode Command Line Tools（`xcode-select --install`）

## 构建运行

```bash
./build.sh
open desktoppet.app
./run.sh
```

## 打包成 .app
`build.sh` 会生成 `desktoppet.app`（无 Dock 图标，LSUIElement）。

## 目录
- Sources/DogPet：全部 Swift 源码
- Resources：放 dog_idle_0.png / dog_walk_0.png 等序列帧
- Info.plist：Agent 应用配置

## 交互
- 左键点击 / 悬停：开心摇尾 + 随机气泡
- 拖拽：移动小狗
- 右键：喂食 / 玩球 / 休息 / 暂停移动 / 退出
- 菜单栏小狗图标：召唤 / 隐藏 / 退出
