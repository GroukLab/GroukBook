#Jenkins集成
Jenkins是一个开源的，可定制的持续集成服务，可以加速软件开发的进程。

1. 在Jenkins的Dashboard页面，点击左侧导航栏的“系统管理”。
![step1](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/jenkins/jenkins_step1.png)
1. 点击“插件管理”，点击“可选插件”标签页，搜索“Notification plugin”插件。选中复选框并安装此插件。安装成功后，重启Jenkins服务。
![step2](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/jenkins/jenkins_step2.png)
1. 选择您希望接收通知的项目，点击“配置”:
![step3](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/jenkins/jenkins_step3.png)
1. 在左侧的“Job Notifications”区域，点击“Add Endpoint”，将“Webhook URL”粘贴到URL，并确保Format值为“JSON”，protocol值为“HTTP”，然后选择想要触发通知的事件。
![step4](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/jenkins/jenkins_step4.png)