#邮件

Grouk和邮件实现了无缝集成，Grouk会给每个用户以及群组分配一个独立的邮件地址，发邮件给该邮件地址，即可在Grouk中收取邮件消息（支持附件）。

* 个人的Grouk邮箱的规则是: 
        username@teamdomain+grouk.com
比如您的企业邮箱是 xiaoming@demo.com,您的Grouk邮箱就是xiaoming@demo.com.grouk.com
* 群组的邮件地址规则是:
        自定义群组ID@groups.teamdomain.grouk.com
比如您有个群组的自定义id是rd，GroukEmail的地址就是: rd@groups.demo.com.grouk.com。群组的邮件地址相当于一个邮件列表。

您可以将您的邮件转发到Grouk邮箱,这样就可以在Grouk中接受邮件消息。
同时Grouk支持应用内[回复邮件](reply_email.md)。

收到带附件的邮件

![iOS版本邮件演示](imgs/email-demo-ios-350.png)

点击消息又下角的回复按钮，回复该邮件

![iOS版本邮件演示](imgs/email-reply-demo-ios-350.png)

回复完成

![iOS版本邮件演示](imgs/email-reply-demo2-ios-350.png)

web版的邮件消息

![web版的邮件消息](imgs/email-demo-web-350.png)

Gmail中收到的回复

![Gmail](imgs/email-demo-gmail-350.png)