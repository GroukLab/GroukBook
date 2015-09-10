#Github
GitHub为Git项目提供了在线的源代码托管，并具有强大的协作、代码审查和事件追踪等功能。

1. 登录您的GitHub，选择您想要监视的仓库，点击右侧导航栏的“Settings”标签。
![Github step1](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/github/github_step1.png)
1. 点击左侧导航栏的“Webhooks &amp; Services”，然后点击“Add webhook”按钮。
![Github step2](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/github/github_step2.png)
1. 把“Webhook URL”地址粘贴到Payload URL中，Content type值确保为“application/json”，选择需要触发通知的事件，Grouk现在支持的事件有Ping，Push，Commit comment，Issue，Issue comment，Create，Delete和Pull Request，确保Active处于选中状态，然后点击“Add webhook”按钮。
![Github step3](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/github/github_step3.png)