#!/bin/bash

JAVA7=/usr/local/jdk1.7.0_45
JAVA8=/usr/local/jdk1.8.0_60

NJAVA_HOME=${JAVA7}

if [ -n "$1" ]; then
  STR='$JAVA'$1
  NJAVA_HOME=`eval echo ${STR}`
fi

if [ -n "${JAVA_HOME}" ] ; then
  NPATH=`echo ${PATH} | sed -e "s|${JAVA_HOME}|${NJAVA_HOME}|g"`
  NCLASSPATH=`echo ${CLASSPATH} | sed -e "s|${JAVA_HOME}|${NJAVA_HOME}|g"`

  JAVA_HOME=${NJAVA_HOME}
  CLASSPATH=${NCLASSPATH} 
  PATH=${NPATH}
else
  JAVA_HOME=${NJAVA_HOME}
  CLASSPATH=$JAVA_HOME/lib/tools.jar
  PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH
fi


export PATH JAVA_HOME CLASSPATH 
