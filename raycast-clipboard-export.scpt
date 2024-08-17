tell application "TextEdit"
    activate
end tell

tell application "System Events"
    -- Open Raycast's clipboard history
    keystroke space using option down
    keystroke "clipboard history"
    keystroke return

    repeat 20 times -- Adjust the number of times based on how many clipboard items you want to paste
        delay 1 -- Short delay before pasting the current item
        keystroke return -- paste current item
        delay 0.5 -- prevent duplicate paste
        keystroke return -- add a newline
        keystroke "=========="
        keystroke return -- add a newline
        delay 0.5

        keystroke space using option down -- Open Raycast clipboard history
        delay 1
        keystroke "x" using control down -- Delete pasted entry
    end repeat

    key code 53 -- Exit Raycast Clipboard History
    key code 53 -- Exit Raycast
end tell
