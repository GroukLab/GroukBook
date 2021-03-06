#Incoming Webhook
使用Incoming Webhook可以简单的发送外部数据到Grouk。

Grouk的webhook不区分POST和GET，同时支持JSON和XML请求，所以以下几种请求是等价的：
    
    curl $webhookURL?text=ping
    curl -d "text=ping" $webhookURL
    curl -H "Content-Type: application/json"  -d '{"text":"ping"}'  $webhookURL
    curl -H "Content-Type: application/xml"  -d '<xml><text>ping</text></xml>'  $webhookURL
    
首先，请求参数中必须包含text字段。例如：
    
    {"text": "This is the text of message."} 
    
这将会显示如下：
![step1](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/incomingwebhook/incomingwebhook_step1.png)
        
如果想在消息中包含一个链接，链接地址应该在<>中间。例如：
    
    {"text": "Welcome to <https://grouk.com|grouk>"} 
    
这将会显示如下：
![step2](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/incomingwebhook/incomingwebhook_step2.png)

下面是一个用curl请求URL地址的例子：
    
    curl -X POST -d 'display_name=custom_name&text=This is message text comes from a bot named custom_name.' $webhookURL
    
    
想要在Grouk中显示一个富文本格式的消息。你可以使用如下格式的JSON字符串：
    
    {
    "text": "message text",
    "attachment": {
        "description": "some description of this attachment",
        "fallback": "Required text summary of the attachment that is shown by clients that understand attachments but choose not to show them.",
        "color": "#36a64f",
        "body": {
            "title": "This is attachment title",
            "title_link": "http://grouk.com",
            "author_name": "author name",
            "author_link": "https://grouk.com",
            "author_icon":"https://grouk.com/img/default/96.png",
            "image_url": "https://farm3.staticflickr.com/2833/11787125913_6dff9758c9_b.jpg"
            }
        }
    }

curl 命令示例:

    curl -H "Content-Type: application/json"  -d '{"text": "message text","attachment": {"description": "some description of this attachment","color": "#36a64f","body": {"title": "This is attachment title","title_link": "http://grouk.com","author_name": "author name","author_link": "https://grouk.com","author_icon": "https://grouk.com/img/default/96.png","image_url": "https://farm3.staticflickr.com/2833/11787125913_6dff9758c9_b.jpg"}}}'  $webhookURL
    
![step4](https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/incomingwebhook/incomingwebhook_step4.png)

当前Incoming Webhook尚未支持文件附件。

Incoming Webhook的 Callback URL填写说明请参看文档 [Reply Callback](integration_reply_callback.md)