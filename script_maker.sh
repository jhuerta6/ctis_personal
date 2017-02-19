#!/bin/bash

for f in *.sh;
    do
    filename=$(basename "$f")
    chmod +x $filename
done
