#!/bin/bash

#
# Utiliies to create tabs with set of splits
#
# Author: pampanz

function mysupport () {

    osascript &>/dev/null <<EOF
        tell application "iTerm"
            tell current terminal
                launch session "Default Session"
                tell the last session
                    write text "title \"Support 1\""
                    write text "supt"
                end tell
                -- split window vertically
                tell i term application "System Events" to keystroke "d" using command down

                tell the last session
                    write text "title \"Support 2\""
                    write text "supt;"
                end tell
            end tell
        end tell
EOF
}

function my3PaneAppTerm () {
    local myCmdForTab1=$1
    local myCmdForTab2=$2
    local myCmdForTab3=$3

    osascript &>/dev/null <<EOF
tell application "iTerm"
    tell current terminal 
      launch session "Default Session"

          tell the last session
              write text "${myCmdForTab1}"
          end tell

          -- split window vertically
          tell i term application "System Events" to keystroke "d" using command down
   
          tell the last session
              write text "${myCmdForTab2}"
          end tell
   
   
          -- split window horizontally
          tell i term application "System Events" to keystroke "D" using command down
   
          tell the last session
              write text "${myCmdForTab3}"
          end tell
    end tell
end tell
EOF
}
