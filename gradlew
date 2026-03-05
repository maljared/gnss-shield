#!/bin/sh
# Fallback to system gradle
if command -v gradle >/dev/null 2>&1; then
    exec gradle "$@"
else
    echo "Gradle not found. Install gradle or use Android Studio."
    exit 1
fi
