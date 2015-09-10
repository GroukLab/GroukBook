#AmazonSNS
**Amazon Simple Notification Service** ([Amazon SNS](http://docs.aws.amazon.com/zh_cn/sns/latest/dg/welcome.html)) 是一项 Web 服务，用于协调和管理向订阅终端节点或客户交付或发送消息的过程。
通过本集成，您可以将Amazon SNS 的主题订阅到Grouk。

1. 登录AWS后台SNS管理界面，选择或者创建您需要订阅的主题。
    ![amazon-sns1](imgs/amazon-sns-1.png)
1. 点击创建订阅按钮
1. 弹出的窗口中，协议选择HTTPS，终端节点填入Grouk生成的webhook地址。
    ![amazon-sns2](imgs/amazon-sns-2.png)
1. 点击定义按钮保存即可。我们的集成会自动进行订阅确认。
1. 发布消息到主题中，即可在Grouk中收到消息。

