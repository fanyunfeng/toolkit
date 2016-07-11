#!/bin/bash



sed d2_config.xml -i -e '/sign="FS"/a\\t\t\t\t<value sign="PS" dot_num="0" flag="0" type="0">0</value>'\
 -e '/sign="FS"/a\\t\t\t\t<value sign="PO" dot_num="0" flag="0" type="0">0</value>'\
 -e '/sign="FS"/a\\t\t\t\t<value sign="PH" dot_num="0" flag="0" type="0">0</value>'


git diff

