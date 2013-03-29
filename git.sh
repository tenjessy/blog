#/bin/bash

gitdir=`pwd`
cd $gitdir
echo '输入commit messages:'
read gitmsg
git add .
git commit -m "$gitmsg"
git push origin gh-pages
