#多设备的提醒规则

Grouk支持多设备同时在线，为了避免打扰，同时也要避免遗漏消息，Grouk按照以下规则进行多设备消息提醒

1. 消息优先通过在线设备下发，如果用户有设备在线，则其他离线设备上收不到消息提醒。 比如网页端在线的时候，手机上不会收到提醒。
2. 如果用户的所有设备都离线，会给该用户所有的移动设备下发提醒。
3. 如果用户的所有设备都不可达的情况，会通过[邮件提醒](email_notification.md)。