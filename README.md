# SigningTest
An app for demonstrating signing iOS apps on the command line using xcodebuild.

## setup

* checkout SigningTestApp project from Github
* Open and search project for 'DEVELOPMENT_TEAM'. It'll be set to ' YOURTEAMHERE'. Replace with your Apple Team ID
* from Terminal/Finder/modify exportOptions/store.plist "teamID":"YOURTEAMHERE". Replace with  your Apple Team ID
* from Terminal/Finder/modify exportOptions/store.plist "teamID":"YOURTEAMHERE". Replace with 
your Apple Team ID
* Modify or delete xcConfig files to match your setup. You'll need to choose a product name, bundle ID and provisioning profile


## run

from your root project, run ./build.sh [Debug|Staging|Release]

## Output
.ipa file created in ./build folder in root of project
