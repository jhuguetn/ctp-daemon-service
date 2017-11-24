#!/bin/bash
#
# description: wrapper bash script file for running Java application as daemon service (Systemd)
#
# History:
# 2016-01-12 Jordi Huguet: Modified for CTP service

serviceName="CTP"

#JAVA_HOME=/usr/bin/java                 # java home directory
JAVA_BIN="/usr/bin/java"          	# java binary full path
JAVA_APPDIR="/opt/ctp/bin"             # application binaries location
ARG1="-jar $JAVA_APPDIR/Runner.jar"     # java argument to execute the service
ARG2="start"                            # java argument to execute the service
                                        # ...
ARGS="$ARG1 $ARG2"                      # argument list

cd $JAVA_APPDIR || return 1
echo "Starting $serviceName...   "
$JAVA_BIN $ARGS &
