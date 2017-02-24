#!/bin/bash

usage() {
  echo """Target Usage:\n$0 [Debug|Staging|Release]
  """ 1>&2;
  exit 1;
}

if [ $# -eq 0 ]
  then
    usage
    exit 1
fi

mkdir -p build/

TARGET=$1

echo "Target is $TARGET"

xcodebuild archive \
  -verbose \
  -jobs 2 \
  -project SigningTest.xcodeproj \
    -scheme SigningTest \
    -configuration $TARGET \
    -derivedDataPath "$PWD/DerivedData" \
    -archivePath ./build/SigningTest.xcarchive \
    || exit 1


#named config variables - pass values in directly for override
# xcodebuild archive \
#   -verbose \
#   -jobs 2 \
#   -project SigningTest.xcodeproj \
#     -scheme SigningTest \
#     -configuration $TARGET \
#     -derivedDataPath "$PWD/DerivedData" \
#     -archivePath ./build/SigningTest.xcarchive \
#     || exit 1
#     PRODUCT_BUNDLE_IDENTIFIER=insert.your.value.here \
#     PROVISIONING_PROFILE_SPECIFIER="My specific prov profile name here" \
#     || exit 1

echo "Building IPA..."

#clean the build directory for .ipa
rm -rf ./build/*.ipa


#choose export options
if [ $TARGET = "Release" ]; then
  options="store.plist"
else
  options="adhoc.plist"
fi

#now create the .IPA using export options specified in property list files
xcodebuild -exportArchive \
 -verbose \
 -archivePath ./build/SigningTest.xcarchive \
 -exportPath ./build \
 -exportOptionsPlist ./exportOptions/"$options" \