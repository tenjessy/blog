---
layout: post
title: 在Mac下搭建GitHub Pages环境
---

记录自己在mac环境下搭建jekyll所遇到的问题。

但凡来到这个页面的人，都应该知道github 跟 jekyll的吧，如果不知道，请猛击<a href="http://www.ruanyifeng.com/blog/2012/08/blogging_with_jekyll.html" target="_blank">这里</a>

了解完以后，就开始吧：）
一般来说，直接按上网上的教程，先把内容提交到github，然后就可以在username.github.com/project_name当中浏览了，这一步应该没什么难度：

* 申请一个github账号；
* 在本地搭建好github环境；
* 在本地配置好github pages仓库；
* push本地的github pages仓库；
* 大概十分钟后，在浏览器打开github_username.github.com/project_name即可；

但如果需要在本地先预览github pages的话，就需要再额外处理一些东西，比如ruby、jekyll之类的。在网上搜一圈，大把的教程，然后我也按着教程来做。
在本地搭建jekyll环境的第一步：在终端下输入：
