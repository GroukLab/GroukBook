# 禅道

[禅道](http://www.zentao.net/)是国内开源的项目管理软件。禅道集产品管理、项目管理、质量管理、文档管理、组织管理和事务管理于一体，是一款专业的研发项目管理软件，完整覆盖了研发项目管理的核心流程。

在Grouk中创建禅道集成后，禅道中若有关于任务、Bug及其他内容的新建和变更操作，都会以消息的形式在Grouk中展现。

创建禅道集成的步骤：

1. 首先需确保运行禅道的php环境支持curl。
2. 以管理员身份登录禅道，依次点击 后台->插件,点击右侧的获取插件按钮
3. 在页面左侧搜索框中输入grouk，然后安装grouk插件。
4. 安装成功后，如下图所示：
![禅道集成](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/zentao/zentao_step4.jpg)
5. 在[Grouk](https://grouk.com)中创建禅道集成后，将生成的Webhook URL地址复制到步骤4中的Webhook url处，点击保存。保存成功后，点击测试按钮可向Grouk发送一条测试数据，已验证是否配置成功。