# Redmine

[Redmine](http://www.redmine.org/) 是一个灵活的开源项目管理工具，使用Ruby on Rails框架。

Redmine默认没有设置webhook的功能，在使用webhook功能之前需要安装一个插件[Redmine Webhook Plugin](https://github.com/suer/redmine_webhook)：
```
$ cd $RAILS_ROOT/plugins  #redmine安装路径下的plugins目录
$ git clone git://github.com/suer/redmine_webhook.git
$ rake redmine:plugins:migrate RAILS_ENV=production
```
安装完成后，重启redmine服务，即可在项目的配置页面中看到webhook标签页。

配置redmine步骤：
1. 在Grouk集成页面创建Redmine集成
2. 进入需要设置webhook的项目主页，依次进入 配置->webhook
3. 将第一步生成的webhook地址粘贴到URL处，点击保存
4. 在第一步的页面中选择订阅目标后，点击保存



