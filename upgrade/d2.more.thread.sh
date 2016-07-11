#!/bin/bash

git init
git add d2_config.xml
git commit -a -m "initial."


sed -e "/<thread>/{s/16/32/}" ./d2_config.xml -i
sed -e "/<max_thread>/{s/16/32/}" ./d2_config.xml -i
sed -e "/<memorysize>/s/320/160/" ./d2_config.xml -i

git diff 


