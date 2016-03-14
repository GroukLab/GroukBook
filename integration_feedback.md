# 用户反馈

通过用户反馈集成，可以将用户的意见和建议实时发送到Grouk中，使用方法：
1. 在Grouk集成页面创建用户反馈集成，会生成一个Webhook URL地址，格式：`https://api.grouk.com/webhook/$eventSourceID/$token`
2. 将第一步中eventSourceID和token的值分别复制到如下地址的对应位置，appUid为任意字符串（用于标识用户唯一性）：`https://grouk.com/feedback.html?eventSourceID=$eventSourceID&token=$token&appUid=$uid`
3. 在第一步的页面中选择订阅目标后，点击保存
4. 用户在浏览器中输入第二步中的地址即可实现实时在线的客服系统

跟同一个appUid的用户所有聊天记录会在一个主题讨论下。