# 消息和附件

在Grouk，消息和附件的关系和邮件类似，一个消息可以有多个附件。我们之所以这样设计，是因为工作中传递文件经常是一组文件，我们希望这组相关文件能在一起被发送，便于浏览以及检索。

Grouk的消息可以在任意时间都可以被作者编辑（当前只支持了附件描述编辑）和撤回。聊天记录永久保存的情况下，需要机制允许用纠正自己的误操作。

除了普通的文件附件，Grouk还支持链接附件，用于分享链接。发送链接时，Grouk会自动将链接展开为链接附件。

iPhone版多附件消息演示

![iPhone版本多附件消息演示](imgs/messages-350.png)

web版多附件消息演示

![web版本多附件消息演示](imgs/messages-web2-350.png)

web版链接附件演示

![web版链接附件演示](imgs/link-attachment-web-350.png)