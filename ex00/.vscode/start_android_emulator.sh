#!/usr/bin/env bash
set -euo pipefail

android_sdk="/sgoinfre/goinfre/Perso/aakhrif/Android/Sdk"
adb="$android_sdk/platform-tools/adb"
emulator="$android_sdk/emulator/emulator"

export ANDROID_HOME="$android_sdk"
export ANDROID_SDK_ROOT="$android_sdk"
export ANDROID_USER_HOME="/sgoinfre/goinfre/Perso/aakhrif/.android"
export ANDROID_AVD_HOME="$ANDROID_USER_HOME/avd"

if "$adb" devices | awk 'NR > 1 && $2 == "device" && $1 ~ /^emulator-/ { found = 1 } END { exit !found }'; then
  echo "Boot completed: existing Android emulator"
  while "$adb" devices | awk 'NR > 1 && $2 == "device" && $1 ~ /^emulator-/ { found = 1 } END { exit !found }'; do
    sleep 5
  done
  exit 0
fi

exec "$emulator" @ex00_phone \
  -no-snapshot \
  -gpu host \
  -feature -Vulkan \
  -no-audio \
  -no-metrics
