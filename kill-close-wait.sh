#!/bin/bash

# 显示CLOSE-WAIT状态的socket
# ss -tap | grep CLOSE-WAIT

# 查找并关闭CLOSE-WAIT状态的socket
ss -tap | grep CLOSE-WAIT |awk -F' ' '{print $6}'|sed -s 's/))//g'| sed -s -E 's/\w+=//g'|awk -F',' '{print $2,$3}'|grep -v '^\s*$' \
 | xargs -i -n 2 sh -c 'gdb -p $0 -batch -ex "print (int)close($1)"'
