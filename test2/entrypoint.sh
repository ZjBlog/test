#!/bin/sh -l
echo '👍 开始编译并部署'
sshpass -p $password scp /test/ root@39.106.127.135:/var/www/blog
echo '👍 部署完成!'
