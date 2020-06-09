#!/bin/bash
# Warn when visiting a fraudulent website
defaults write com.apple.Safari WarnAboutFraudulentWebsites false

# Block pop-up windows
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false

tell application "Safari" to activate
delay 2
tell application "System Events" to tell process "Safari"
    keystroke "," using command down
    tell window 1
        delay 3
        click button "Privacy" of toolbar 1
        delay 3
        click button 2 of group 1 of group 1
        delay 1
        click button "Remove Now" of sheet 1

    end tell
    keystroke "w" using command down
end tell
