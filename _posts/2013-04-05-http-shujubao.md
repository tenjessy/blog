---
layout: post
title: 谈谈手机抓取http请求的数据包
---

# {{ page.title }}

注：该方法的核心功能是公司一个同事在我处理手机项目的时候点醒我的，而我在这里只是打打酱油的。

在window平台下做前端开发，大家都知道利用Fiddler来抓包的，其实利用Fiddler也可以抓取手机的HTTP数据包的，具体的来看看下面的方法：

### 设置Fiddler

1. 在PC机当中，打开Fiddler；
2. 在Fiddler的菜单栏当中，依次选择Tools --- Fiddler Options --- Connections；
3. 在条件2成立的情况下，选择《Fiddler listens on port》页面，并设置相应的端口号，比如8888；
4. 在条件2、3成立的情况下，然后勾选下面的：Allow remote computers to connect；

OK，以上步骤是设置Fiddler的，接下来，设置手机相应的Host即可以成功实现抓包了：

### 设置手机


1. 手机打开wifi，确保手机跟PC在同一个局域网，并配置相应的代理：

	* 修改手机的host，将某个域名指向pc机的ip地址，比如192.168.2.200 dev.meilapp.com；（该方法适用于android已经取得root权限的情况，通过R.E.管理器修改/etc/host文件）
	* 修改手机wifi的代理，一般的设置方法是：

	```
	Android：
	设置 --- WLAN --- 长按当前连接的wifi --- 修改网络 --- 显示高级选项 --- 代理设置 --- 手动
	然后输入《代理服务器主机名》、《代理服务器端口名》。例如主机名：192.168.2.200 端口名：8888
	iPhone：
	设置 --- 无线局域网 --- 点击当前连接的wifi最右边的箭头 --- 在底下找到HTTP代理 --- 手动
	然后输入《服务器》、《端口》。例如服务器：192.168.2.200 端口：8888
	```

当Fiddler和手机都配置好以后，应该把手机放在显示器的正前方（如果有手机架子的话，竖起来放也是可以的），然后左手按键盘的F5，右手按手机操作刷新。这样的话，你就可以顺利地进行两个平台的抓包了！

### 在Mac下，如果实现类似Fiddler的抓包呢？

其实，通过pc来获取手机的http数据包，原理很简单，只要两者在同一局域网内，并且手机配置相应的host指向pc的ip地址即可。而在Mac下，也有类似Fiddler的工具：Charles。具体的设置方法如下：

1. 在Mac下，打开Charles；
2. 在Charles的菜单栏当中，依次选择Proxy --- Mac OS X Proxy（即可实现在mac下抓取数据包）；
3. 在Charles的菜单栏当中，依次选择Proxy --- Proxy Setting；
4. 在条件3成立的情况下，选择《Proxies》面板，并勾选Enable transparent HTTP proxying；

OK了，这样的话，在Mac当中也可以实现抓取手机的http数据包了！