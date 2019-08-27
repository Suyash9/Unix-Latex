#!/bin/bash

for i in $1/*
do
    grep -H \<Overall\> $i | sed 's/.*\///g' | sed -e 's/.dat:<Overall>/ /g' |
    awk '{sum += $2} END {print $1; printf "%1.2f\n", sum/NR}' | xargs
done | sort -k2 -nr

