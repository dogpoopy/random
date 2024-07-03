#!/bin/bash


project="$1"
device="$2"
build_type="$3"
reinit="$4"

case "$project" in
  "PixelOS-14")
    repo_init="repo init -u https://github.com/PixelOS-AOSP/manifest.git -b fourteen --git-lfs --depth=1"
    lunch="lunch aosp_$device-$build_type"
    make_command="mka bacon"
    manifest="https://github.com/aosp-realm/android_build_manifest.git -b apollo-pos14"
    ;;
  "CrDroid-14")
    repo_init="repo init -u https://github.com/crdroidandroid/android.git -b 14.0 --git-lfs --depth=1"
    make_command="brunch $device"
    manifest="https://github.com/aosp-realm/android_build_manifest.git -b apollo-cr14"
    ;;
  "Evolution-14")
    repo_init="repo init -u https://github.com/Evolution-XYZ/manifest -b udc --git-lfs --depth=1"
    lunch="lunch lineage_$device-$build_type"
    make_command="m evolution"
    manifest="https://github.com/aosp-realm/android_build_manifest.git -b apollo-xyz"
    ;;
  *)
    echo "Invalid project specified"
    exit 1
    ;;
esac

if [ "$reinit" == "--reinit" ]; then
  if [ "$project" == "CrDroid-14" ]; then
    crave run --no-patch --detached "rm -rf .repo/local_manifests ; \
    $repo_init && \
    git clone $manifest .repo/local_manifests && \
    /opt/crave/resync.sh && \
    source build/envsetup.sh && \
    $make_command"
  else
    crave run --no-patch --detached "rm -rf .repo/local_manifests ; \
    $repo_init && \
    git clone $manifest .repo/local_manifests && \
    /opt/crave/resync.sh && \
    source build/envsetup.sh && \
    $lunch && \
    $make_command"
  fi
else
  if [ "$project" == "CrDroid-14" ]; then
    crave run --no-patch --detached "/opt/crave/resync.sh && \
    source build/envsetup.sh && \
    $make_command"
  else
    crave run --no-patch --detached "/opt/crave/resync.sh && \
    source build/envsetup.sh && \
    $lunch && \
    $make_command"
  fi
fi

