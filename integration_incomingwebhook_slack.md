#兼容Slack格式的Webhook
本集成的Incoming Webhook格式兼容slack的Incoming Webhook。
具体参看slack文档 [Incoming Webhooks](https://api.slack.com/incoming-webhooks)

Grouk的webhook和Slack有以下差异:
1. Grouk不支持webhook指定用户或者群组 这样做的目的是将事件生产和消费分开，如果要修改事件发送对象，在Grouk中修改订阅关系即可，无在事件生产应用中修改。
2. Grouk当前不支持Slack中的自定义fields展示。