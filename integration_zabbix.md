# Zabbix

[Zabbix](http://www.zabbix.com/) 是一个基于WEB界面的系统及网络监视功能的企业级开源工具。

Zabbix的Media type默认不支持webhook类型，但是我们可以通过自定义脚本方式实现将报警信息发送到Grouk中:
* 在zabbix配置文件zabbix_server.conf中`AlertScriptsPath`变量所指定的目录下创建一个名为grouk.sh的文件，并添加可执行权限
* grouk.sh的内容如下：

```
#!/bin/bash

#to=$1 
#subject=$2
#message=$3

curl -X POST -H "Content-Type: application/json" -d "{\"subject\": \"$2\", \"text\": \"$3\"}" $1
```

在Grouk中集成Zabbix步骤：
1. 在Grouk集成页面创建Zabbix集成
2. 以管理员身份登录zabbix后台，依次点击 Administration->Media types->Create media type：![Step1](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/zabbix/zabbix_step1.png)
3. 创建一个用户(或者选择已有用户)，Administration->Users->Create user：![create_user](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/zabbix/zabbix_step2.png)
4. 进入Media标签页，点击Add按钮添加一个Media，Use if severity处根据自己的需要勾选，然后点击Add按钮：![add_media](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/zabbix/zabbix_step3.png)
进入Permissions标签页，选择权限后点击Update按钮：![select_permission](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/zabbix/zabbix_step4.png)
5. 创建Actions(或选择已有action)，Configuration->Actions->Create action：![create_action](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/zabbix/zabbix_step5.png)
配置Operations，然后点击Update按钮：![set_operation](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/zabbix/zabbix_step6.png)
6. 进入Administration->Audit中，即可看到报警信息的发送情况，可按用户过滤报警信息：![log](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/zabbix/zabbix_step7.png)
7. 在第一步的页面中选择订阅目标后，点击保存即可