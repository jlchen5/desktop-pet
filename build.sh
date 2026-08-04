#!/bin/bash
set -e

APP_NAME="desktoppet"
APP_DIR="$APP_NAME.app/Contents"

echo "==> swift build"
swift build -c release

mkdir -p "$APP_DIR/MacOS"
mkdir -p "$APP_DIR/Resources"

cp .build/release/$APP_NAME "$APP_DIR/MacOS/$APP_NAME"
cp Info.plist "$APP_DIR/Info.plist"

# 可选：把图片资源拷进去
if [ -d "Resources" ]; then
  cp -R Resources/* "$APP_DIR/Resources/" 2>/dev/null || true
fi

echo "==> 生成 $APP_NAME.app 完成"
echo "    运行: open $APP_NAME.app"
