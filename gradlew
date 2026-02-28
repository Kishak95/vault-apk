#!/usr/bin/env sh
# Simplified Gradle wrapper script. If gradle-wrapper.jar is missing, generate it via Android Studio
# (File > New > New Project from Version Control) or by installing Gradle and running: gradle wrapper
DIR="$(cd "$(dirname "$0")" && pwd)"
java -jar "$DIR/gradle/wrapper/gradle-wrapper.jar" "$@"
