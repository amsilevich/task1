#!/bin/bash
mkdir $3
find $1 -name "*.$2" -exec cp --backup=t {} ./$3 \;
tar -zcf $4 ./$3
echo 'done'
