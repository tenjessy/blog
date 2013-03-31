---
layout: post
title: 在Mac下搭建jekyll
---

# {{ page.title }}

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

```
gem install jekyll
```

然后大把的教程都会跟你说这样就可以了。但是，我很怀疑写那些教程的人，有没有正式搭建过样的环境！我TM就不信只有我一个人遇到这些问题的：

* gem、ruby版本的问题
* 安装rvm的时候需要翻墙，翻墙完成后，安装rvm还是出错了
* 在执行jekyll --server的时候，也出错了

好吧，我承认是自己人品的问题。但问题来了，还是要解决的，解决完成后，还是要记录的：

#### gem版本的问题
一般来说，mac下已经安装有gem的。如果没有的话，可以在网上搜索一下怎么安装，一般我会通过port进行安装一些软件的。

```
gem -v
```

查看gem的版本，如果不是最新的（截止2013-03-31，最新版本是2.0.3），请更新最新版本

```

```