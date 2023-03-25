#!/bin/bash

array_1=(foo bar 123 blah test smad made foo)
array_2=(bar blah test 1223 ass foo blen)

echo -e "${array_1[@]}\n${array_2[@]}\n"

echo ${array_1[*]} ${array_2[*]} | tr ' ' '\n' | sort | uniq -d