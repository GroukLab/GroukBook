# Mailgun
Mailgun是一个邮件发送服务，它具有功能强大的API，您可以发送邮件，接收并毫不费力的跟踪发送的邮件。Grouk当前支持的Event: Dropped、Hard Bounces、Spam complaints、Unsubscribes。

配置Mailgun：
1. 登录Mailgun后台，选择Webhooks。
2. 将生成的Webhook URL粘贴到需要接收通知的相应Event处，同时可以点击“Test Webhook”进行测试，配置成功后点击“Set Webhook URL”按钮，完成配置。
3. 关于Mailgun Event的详细信息请看：[Mailgun Event](https://documentation.mailgun.com/user_manual.html#events)
