#CircleCI
Circle CI 是一个强大的持续集成与部署服务, 支持 Ruby, Python, Node.js, Java, and PHP 等语言。

先创建Circle CI 集成，然后复制webhook地址，在您的项目的circle.yaml中加入以下配置：
    
    notify:
        webhooks:
        - url: https://api.grouk.com/webhook/xxxx/xxxx