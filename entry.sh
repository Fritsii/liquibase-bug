#!/bin/sh
set -e

exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom org.springframework.boot.loader.JarLauncher $@
