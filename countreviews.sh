#!/bin/bash

for i in $1/*
do
    grep -Hc \<Location\> $i | sed 's/.*\///g' | 
	sed 's/.dat:/ /g'
done | sort -k2 -nr

