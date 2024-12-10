#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# git add .
# git commit -m 'update'

# git push github master
# git push gitee master

# 生成静态文件
npm run build

# git add .
# git commit -m 'update'

# git push github master
# git push gitee master

# 进入生成的文件夹
cd ./dist

# 如果是发布到自定义域名
echo 'ilabubu.com' > CNAME

git init
git add -A
git commit -m 'deploy'


# GitHub
git push -f git@github.com:LuckRain7/ilabubu.git gh-pages

cd -