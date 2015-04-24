#!/bin/bash


CATALINA_OPTS='-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5800'


export CATALINA_OPTS
