# SendCloud

[SendCloud](https://sendcloud.sohu.com/) 是国内搜狐推出的邮件发送服务。在SendCloud中配置Webhook后，可以收到取消订阅、退信、无效邮件等通知。Grouk目前支持的事件: unsubscribe、bounce、report_spam、invalid。

在Grouk中启用Sendcloud集成步骤：
1. 在Grouk集成页面创建SendCloud集成，会生成一个Webhook URL地址
2. 登录SendCloud后台，进入 邮件设置->Webhook
3. 点击创建WebHook按钮，将第一步生成的地址粘贴到“Post到Url”处，选择需要触发通知的事件，点击确认创建按钮
4. 在第一步的页面中选择订阅目标后，点击保存