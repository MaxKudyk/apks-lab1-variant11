#!/usr/bin/env sh
set -eu

mvn --batch-mode clean verify

artifact="target/apks-lab1-variant11-1.0-SNAPSHOT.jar"
if [ ! -f "$artifact" ]; then
    printf 'Expected runnable JAR was not produced: %s\n' "$artifact" >&2
    exit 1
fi
