---
layout: post
title: 谈谈手机抓取http请求的数据包
---

注：该方法的核心功能是公司一个同事在我处理手机项目的时候点醒我的，而我在这里只是打打酱油的。

在window平台下做前端开发，大家都知道利用Fiddler来抓包的，其实利用Fiddler也可以抓取手机的HTTP数据包的，具体的来看看下面的方法：

### 设置Fiddler

1. 在PC机当中，打开Fiddler；
2. 在Fiddler的菜单栏当中，依次选择Tools --- Fiddler Options --- Connections；
3. 在条件2成立的情况下，选择《Fiddler listens on port》页面，并设置相应的端口号，比如8888；
4. 在条件2成立的情况下，然后勾选下面的：Allow remote computers to connect；

OK，以上步骤是设置Fiddler的，接下来，设置手机相应的Host即可以成功实现抓包了：
