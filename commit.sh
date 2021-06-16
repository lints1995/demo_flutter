# !/bin/zsh
# 确保脚本抛出遇到的错误
set -e
# 提交
git pull origin master
git add -A
git commit -m '内容更新'
git push origin master