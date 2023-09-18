#set par(justify: true, leading: 0.52em)
#set text(font: "New Computer Modern", size: 12pt)
#set page(paper: "a4", margin: (x: 1.8cm, y: 1.5cm))

Typst是一个新的文本编辑器，可以从某种程度上替代Latex，从文将记录笔者学习Typst的过程。在 www.typst.app 上，我们可以在左侧编辑文件，等待一段时间后右侧就会自动渲染完成。
= 1介绍
== 1.1 段落
  在行首添加 = 可以使得文件变为标题，两个 = 可以开启二级标题，同时使用 ‘\_’ 可以开启强调 _强调_, _Emphasize_,现在发现中文的强调不是很明显。

  添加一个段落需要加入一个空行即可，如果要列出小点，只需要使用在每一行使用'\+'即可，同时在可以使用'\-'列出子弹列表，例如列出宝可梦三原色，同时举例两只火系宝可梦：
+ 红
  - 小火龙
  - 帝君
+ 绿
+ 蓝
== 1.2 图片
#figure(
  image("pikachu.png", width : 50%), 
      caption: [
        A pikachu
      ],
) <pikachu>
  我们使用 `#image` 函数可以添加一张图片。如果为图片添加一个标题，那么可以使用 `#figure` 函数，在`image`属性中添加图片，caption属性中添加标题，这时图片会默认居中。如果在 `figure` 最后使用 `<label_name>`, label_name就会成为这个图片的引用名，可以使用`@label_name`进行引用，如@pikachu。

== 1.3 引用
 我们使用`#bibliography`函数添加一个`bib`文件,使用`#cite`函数进行具体引用，如 #cite("lee2019keystone")。

#bibliography("typst.bib")

== 1.4 数学公式
  和其他工具一致，typst中使用`$$`可以开启行内公式，如$Q = rho A v + C$。为了使用行间公式，我们可以独立一行输入` $$ `，记得公式开头和末尾都加上空格。
  
  $ 7.32 beta + sum_(i = 0)^nabla Q_i / 2 $

  更多的数学公式写法可以参考typst的数学公式页面。

= 2 格式

== 2.1 规则（rule）
  `#par(justify: true)[...]` 可以将其中的文字设置为每行都对齐，如果不想每次都使用一个括号将段落包裹，可以考虑使用规则的语法，使用`#set par(justify: true)`, 本文档已经使用了该对齐语法，可以看见每一行的长度都是相同的。

== 2.2 配置页面属性
  有了规则语法后，下面是一些常用选项：
+ text：设置文本字体、大小、颜色等；
+ page：设置页面大小、边框、标头、列和注脚等；
+ par：设置行对齐和行间距等；
+ heading：设置标题和页号使能；
+ document：设置PDF输出的元数据，例如文章题目和作者。

本文的设置如下：
```
#set par(justify: true, leading: 0.52em)
#set text(font: "New Computer Modern", size: 12pt)
#set page(paper: "a4", margin: (x: 1.8cm, y: 1.5cm))
```

== 2.3 对齐
#align(center + bottom)[
  #image("pikachu.png", width: 50%)
  *A pikachu.*
]

通过使用`#align`可以设置图片的对齐模式，如上图中使用`#align(center + bottom)`。

== 2.4 加入一点复杂性

#set heading(numbering: "1.a")
= Big Title
== Normal Title
=== Small Title

通过`#set heading(number: "1.a")`, 可以设置标题前面标号的格式。

#set heading(numbering: none)

== 2.5 函数

#show "withPikachu": name => box[
  #box(image(
    "pikachu.png",
    height: 2em,
  ))
  #name
]

withPikachu 测试函数，这里我们通过`#show` 定义了一个函数可以每次输出固定字符串都自带一个图片。
