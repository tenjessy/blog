#/bin/bash

gitdir='/Jessy_Project/GitWorkspace/blog'
echo '输入commit messages:'
read gitmsg
cd $gitdir
git add .
git commit -m "$gitmsg"
git push origin gh-pages
