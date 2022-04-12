##########################################################################
# File Name: push.sh
# Author: amoscykl
# mail: amoscykl980629@163.com
# Created Time: 2022年04月13日 星期三 00时20分36秒
#########################################################################
#!/bin/bash
git add .
#git commit -m "更新"
git commit -m "$(date -R)"
git push
