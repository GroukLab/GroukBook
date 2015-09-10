#Teamcity
TeamCity是JetBrains公司出的一个基于Java的构建管理和持续集成服务。

1. 首先，需要下载一个第三方插件 **tcWebHookPlugin**。 下载地址：[http://tcplugins.sourceforge.net/info/tcWebHooks](http://tcplugins.sourceforge.net/info/tcWebHooks)
1. 以管理员身份登录TeamCity，点击右上角的“Administration”。
![step2](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/teamcity/teamcity_step2.png)
1. 点击左侧导航栏底部的“Plugins List”，然后点击“Upload plugin zip”链接。
![step3](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/teamcity/teamcity_step3.png)
1. 选择之前下载的插件并保存。安装成功后，重启TeamCity服务。
![step4](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/teamcity/teamcity_step4.png)
1. 点击页面左上角的“Projects”，选择一个想要监控的项目并点击进入，然后点击“Webhooks”标签。
![step5](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/teamcity/teamcity_step5.png)
1. 点击“Edit project WebHooks”。
![step6](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/teamcity/teamcity_step6.png)
1. 点击“Click to create new WebHook for this project”，将“Webhook URL”地址粘贴到URL。确保Payload Format的值为“JSON”。选择您想要触发的事件，然后点击“Save”按钮。
![step7](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/teamcity/teamcity_step7.png)