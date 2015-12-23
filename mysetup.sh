#!/bin/bash

#
# My personal setup as an example
#
# Author: pampanz

function setApp() {
   local root_apps="$RED"
   local cdto="$1"
   local full_root="${root_apps}/${cdto}"

   local myCmdForTab1="title ${cdto}; cd ${full_root}; alias gw='${full_root}/gradlew \$@'"
   local myCmdForTab2="title ${cdto}-RB; cd ${full_root}-RB; alias gw='${full_root}-RB/gradlew \$@'"
   local myCmdForTab3="title ${cdto}_svn; cd ${full_root}_svn; alias gw='${full_root}_svn/gradlew \$@'"

  my3PaneAppTerm "${myCmdForTab1}" "${myCmdForTab2}" "${myCmdForTab3}"
  
}

function itermsetup() {

  setApp candi
  setApp redcon
  setApp redx
  setApp redrouter
  #mysupport
}
