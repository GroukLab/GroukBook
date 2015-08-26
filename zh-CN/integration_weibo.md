#微博集成
微博粉丝服务平台是为认证帐号、应用提供的与微博用户进行消息互动的服务。Grouk的微博集成可以将您微博账号的粉丝消息推送到Grouk中，并且可以在Grouk中进行回复。


1. 登录您的微博账号，然后进入 管理中心->粉丝服务->开发者中心，开启开发者中心。
![微博开发者中心](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/weibo/weibo_step1.png)
2. 将AppKey: “599416656”粘贴到上图的APPKEY处，将Webhook URL地址粘贴到上图的URL处，点击保存，会生成access_token。将access_token的值粘贴到创建集成时的Access Token处，保存。并订阅该消息源到群组或自己。
3. 当微博用户A给您的微博账号发送私信时，会在刚才订阅的群组中收到发送的私信消息，在Grouk群组中回复刚才发给您的微博消息（当前只支持回复文本消息），微博用户A即可收到您回复的消息。