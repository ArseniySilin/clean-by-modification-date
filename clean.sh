#!/usr/bin/env bash

BUILDS_DIR_ROOT="/builds"
DAYS_WAS_NOT_MODIFIED=30

echo "[x] Cleaning started at $(date)"

for BUILD_DIR_NUMBER in $(ls $BUILDS_DIR_ROOT);
do find "$BUILDS_DIR_ROOT/$BUILD_DIR_NUMBER" -mtime +"$DAYS_WAS_NOT_MODIFIED" -delete;
done

echo "[x] Cleaning stopped"
echo ""
