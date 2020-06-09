
use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Safari"
    activate
end tell

tell application "System Events" to tell process "Safari"
    click button 1 of window 1
    delay 0.5
    keystroke "," using command down
    delay 1
    click button "Privacy" of toolbar 1 of window 1
    delay 0.5
    click button "Manage Website Data…" of group 1 of group 1 of window "Privacy"
    delay 3
    if button "Remove All" of sheet 1 of window "Privacy" is enabled then
        try
            click button "Remove All" of sheet 1 of window "Privacy"
            delay 0.5
            keystroke tab
            delay 0.5
            keystroke return
            delay 2
            click button "Done" of sheet 1 of window "Privacy"
            delay 0.5
        on error errMsg
            click button "Done" of sheet 1 of window "Privacy"
        end try
    else
        click button "Done" of sheet 1 of window "Privacy"
    end if
    click button 1 of window 1
end tell
