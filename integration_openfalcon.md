#Open-Falcon集成
[Open-Falcon](http://open-falcon.com/) 是小米运维部开源的一款互联网企业级监控系统解决方案。

通过Grouk和Open-Falcon的集成，即可在Grouk中接受系统监控报警。

1. 创建订阅源，并复制生成的webhook地址，然后将该源订阅到监控群或者自己。
2. 修改 Open-Falcon的[sender](https://github.com/open-falcon/sender)模块的cfg.json，将api的sms（短信报警）或者email（邮件报警）的值修改为刚才生成的webhook地址。

![openfalcon-config](imgs/openfalcon-confg-350.jpg)

注意:
Grouk的Open-Falcon集成会忽略接口调用的tos参数，报警通过webhook发送到到Grouk后，会投递到订阅源对应的订阅群组和用户，该参数的值不会影响投递结果。

报警消息演示:
![openfalcon-demo](imgs/imgs/open-falcon-demo.png)