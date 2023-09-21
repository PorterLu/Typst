#let document_title = "Make a Template"
#set par(justify: true)
#set page(
  paper: "us-letter",
  header: align(right)[
    #document_title
  ],
  numbering: "1"
)

#align(center, text(17pt)[* #document_title *])

= Introduction
#h(2em) 在之间的章节中已经介绍了Typst的撰写一篇文章所需要的内容。但是如果你要重复书写同一个会议的论文，这就需要多次编写重复的内容，于是就有了模版的需求。在这一章节中将介绍如何去创建一个模版和使用模版。开始吧！

= A toy Example
#h(2em) 在 Typst 中模版就是将整个文档都包裹的函数。为了学习模版的概念，我们首先回顾一下我们自己的函数
```
#let amazed(term) = box[🤡 #term 🤡]
You are #amazed[beautiful]!
```
#let amazed(term) = box[ 🤡 #term 🤡 ]
#h(2em) You are #amazed[beautiful]!，我们可以看到结果输出正确。这个函数接受一个参数，输出两个表情符号将输入包裹。进一步我们可以改进这个函数。
```
#let amazed(term, color: blue) = {
  text(color, box[🤡 #term 🤡])
}
You are #amazed[beautiful]!
```
#let amazed(term, color: blue) = {
  text(color, box[🤡 #term 🤡])
}

#h(2em)I am #amazed(color: purple)[amazed]!，这样就可以改变字体的颜色。接下来我们对所有的文本内容都做函数操作。
#show: amazed("I choose to focus on the good
in my life and let go of any
negative thoughts or beliefs,
In fact, I am amazing!", color: blue)
