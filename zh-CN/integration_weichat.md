#微信集成

微信公众号是微信个人和企业提供的与微信用户进行消息互动的服务。Grouk的微信集成可以将您的公众号的粉丝消息推送到Grouk中，并且可以在Grouk中进行回复。

 1. 首先登陆微信公众号管理后台，开发者中心，复制 AppID以及AppSecret 以备用。
 1. 然后复制Grouk的Webhook URL,在微信后台开启服务器配置，修改配置如下图：
 ![微信开发者后台](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/weichat/weichat_step2.jpg)
1. 将微信填写的选项复制到对应的Grouk选项中，修改完成后，先保存Grouk的设置，再在微信后台提交(注: 必须先在Grouk提交，否则微信验证不通过)。微信后台提交后的结果如下图：
 ![微信开发者后台2](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/weichat/weichat_step3.jpg)
 1. 将刚创建的消息源订阅到自己的某个群组，在微信中对公众号发消息，该消息会被推送到群组中。
 1. 在Grouk群组中回复群中刚才推送过来的消息，微信中会收到公众号的回复消息。说明配置成功。