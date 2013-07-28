---
layout: post
title: 关于CSS组件库的一些想法
---

好吧，这篇文章应该叫《关于CSS框架的一些想法》，但经常看到一些所谓的框架就是把一些常用的模块、hack写到一个项目里面。我当时就在想，这TM也叫CSS框架？

可能是我有点低俗吧，我始终觉得，不是每个做前端的人都能写个相应的框架，也不是一个写了一两年CSS的人利用他的一些经验写一些hack，然后组合起来就叫CSS框架的。

虽然我做前端的时候不长，CSS方面也不精通，JavaScript也更多是用jQuery、YUI来做开发，原生的js更多是DOM方面的操作，但还是想吐槽一下关于CSS框架（CSS组件库）：

**1. 要有独立的命名空间**

这个就跟JavaScript的道理是一样的，为了让自己写的代码在大部分项目当中能够正常运行，命名空间是非常重要的。

但目前大多数css方面的组件库都没有这样的做法，基本都是在前面加一些大众化的前辍，比如ui-, wedgit-, btn-......

不是说这样做法不好，而是这样的命名空间，非常容易造成样式的冲突。比如，一个ui-btn，wedgit-modal，btn-submit这样的命名，如果放在全局css里面难保不会造成后面维护的人的一些困扰！

而在这一方面，Yahoo的[Pure](http://purecss.io/)就做得非常好！表单、按钮、表格，它的命名基本都会带上特有的前辍pure：

```
/* form */
<form class="pure-form">this is base form</form>
/* button */
<a class="pure-button" href="javascript:void(0);">A Pure Button</a>
<button class="pure-button">A Pure Button</button>
/* table */
<table class="pure-table">this is base table</table>
```

**2. 以最小粒度为单位**

任何一个大模块都是由多个小模块组件的，在处理组件库的时候，应该先处理好小模块的基本外观，再通过大模块来控制小模块的一些特性和位置，同样以bootstrap的按钮组为例子：

![以最小粒度为单位的例子：按钮组](../../../images/post-group-btn.png "最小粒度为单位的例子：按钮组")

```
/**
 * 这是写法一
 */
<div class="btn-group">
	<button type="button" class="btn btn-type-1">Default</button>
	<button type="button" class="btn btn-type-2">Primary</button>
	<button type="button" class="btn btn-type-3">Success</button>
	<button type="button" class="btn btn-type-4">Info</button>
	<button type="button" class="btn btn-type-5">Warning</button>
	<button type="button" class="btn btn-type-6">Danger</button>
	<button type="button" class="btn btn-type-7">Link</button>
</div>
<style type="text/css">
.btn-group { }
.btn-group .btn { }
.btn-group .btn-type-1 { }
</style>
```
按理来说，这样的一个模块，最小粒度应该是一个按钮，而不是一个按钮组。所以在写这样的组件的时候，首先要考虑的是按钮在默认默认状态下是如何表现的，然后再通过一个父级元素进行个性化设置

```
/**
 * 这是写法二
 */
<div class="btn-group">
	<button class="pure-button pure-button-success">Success Button</button>
    <button class="pure-button pure-button-error">Error Button</button>
    <button class="pure-button pure-button-warning">Warning Button</button>
    <button class="pure-button pure-button-secondary">Secondary Button</button>
</div>
<style type="text/css">
.pure-button { }
.btn-default { }
.btn-primary { }
.btn-group .btn:first-child { }
.btn-group .btn:last-child { }
</style>
```

在上的例子当中，每个button都是可以独立存在的，如果放在一个群组里面，又可以通过父级标签进行个性化设置！这一方面，现在很多大公司的前端框架都有相应的影子。


**3. 控制好CSS的编写顺序**

一般来说，我们写CSS的属性，会有这么一个顺序：定位、大小、外观、文本属性......  
但在写组件库的时候，默认情况下，不应该写上position、float这一些属性的，除非需要两个以上组件合并在一起的时候，比如一个提示框：

![提示框](../../../images/post-alert.png "提示框")

如上图所示，关闭按钮、两个按钮组、提示框这三者一开始应该都是独立存在的，当提示框当中需要关闭按钮的时候，就可以把它放到提示模块里面去，再通过提示模块这个父级元素控制关闭按钮的定位；

```
<div class="alert alert-block alert-error">
	<button type="button" class="close" data-dismiss="alert">×</button>
	<h4>Oh snap! You got an error!</h4>
	<p>this is content</p>
	<p>
		<a class="btn btn-danger" href="#">Take this action</a> <a class="btn btn-default" href="#">Or do this</a>
	</p>
</div>
<style type="text/css">
/* 提示模块的核基本属性 */
.alert { }
/* 关闭按钮的基本属性 */
.close { }
/* 按钮的基本属性 */
.btn { }
/* 当关闭按钮在提示模块里面的时候 */
.alert .close { position:absolute; top:10px; right:10px; }
</style>
```

这样的话，一个提示模块的每个小组件都可以单独剥离出来作为一个小模块。

好吧，以上是我的YY，CSS这东西，写起来非常简单，用起来非常麻烦。每个想写组件库的人，或多或少都是从项目出发的，所以，以自己的项目需求作为出发点，写起来可能更清晰！

相关阅读：

* [Pure](http://purecss.io/)
* [Bootstrap](http://twitter.github.io/bootstrap/)





















