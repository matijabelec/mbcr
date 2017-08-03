#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'argument is missing'
    exit 1
fi

outext='.out'
input=$1
output=${input%.*}$outext

echo 'starting to compile...'
echo 'g++ '$input' -o '$output
g++ $input -o $output
echo 'compile finished.'
echo 'starting program...'
echo '------------------------------'
./$output
