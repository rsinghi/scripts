#!/bin/bash
# Warn when visiting a fraudulent website
defaults write com.apple.Safari WarnAboutFraudulentWebsites false

# Block pop-up windows
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false