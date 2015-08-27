#Incoming Webhook
使用Incoming Webhook可以简单的发送外部数据到Grouk。

Grouk的webhook不区分POST和GET，也支持JSON和XML请求,所以以下几种请求是对等的：
    
    curl $webhookURL?text=ping
    curl -d "text=ping" $webhookURL
    curl -H "Content-Type: application/json"  -d '{"text":"ping"}'  $webhookURL
    curl -H "Content-Type: application/xml"  -d '<xml><text>ping<text></xml>'  $webhookURL
    
您有两种方式可以发送数据到该Webhook URL地址：</p><ol style="font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;"><li>以POST方式发送一个JSON字符串</li><li>以键值对形式发送Get请求</li></ol><p style="margin: 0px 0px 9px; padding: 0px; font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;">首先，JSON字符串或者请求参数中<code style="font-family: Monaco, 'Andale Mono', 'Courier New', monospace; color: red; padding: 1px 3px; border-top-left-radius: 3px; border-top-right-radius: 3px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px;">必须包含text字段</code>。</p><p style="margin: 0px 0px 9px; padding: 0px; font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;">例如：</p><pre style="font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 14px; margin-top: 0px; margin-bottom: 18px; line-height: 16px; border: 1px solid rgb(217, 217, 217); white-space: pre-wrap; word-wrap: break-word; color: rgb(115, 115, 115); background-color: rgb(255, 255, 255);"><code style="font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 0px; border-top-left-radius: 3px; border-top-right-radius: 3px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px; font-size: 13px;">{"text": "This is the text of message."} </code></pre><p style="margin: 0px 0px 9px; padding: 0px; font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;">这将会显示如下：</p>]]></description>
            <imgURL>https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/incomingwebhook/incomingwebhook_step1.png</imgURL>
        </step>
        <step>
            <!--<description><![CDATA[<p style="-webkit-print-color-adjust: exact; margin: 0px 0px 9px; padding: 0px; font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;">To create a link in your text, enclose the URL in <code style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; color: red; padding: 1px 3px; border-top-left-radius: 3px; border-top-right-radius: 3px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px;"><></code> angle brackets. For example:</p><pre style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 14px; margin-top: 0px; margin-bottom: 18px; line-height: 16px; font-size: 12px; border: 1px solid rgb(217, 217, 217); white-space: pre-wrap; word-wrap: break-word; color: rgb(115, 115, 115);"><code style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 0px; border-top-left-radius: 3px; border-top-right-radius: 3px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px;">{"text": "Welcome to &lt;https://grouk.com|grouk&gt;."} </code></pre><p style="-webkit-print-color-adjust: exact; margin: 0px 0px 9px; padding: 0px; font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;">This will be displayed as:</p>]]></description>-->
            <description><![CDATA[<p style="-webkit-print-color-adjust: exact; margin: 0px 0px 9px; padding: 0px; font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;">如果想在消息中包含一个链接，链接地址应该在<code style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; color: red; padding: 1px 3px; border-top-left-radius: 3px; border-top-right-radius: 3px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px;"><></code>中间。例如：</p><pre style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 14px; margin-top: 0px; margin-bottom: 18px; line-height: 16px; font-size: 12px; border: 1px solid rgb(217, 217, 217); white-space: pre-wrap; word-wrap: break-word; color: rgb(115, 115, 115);"><code style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 0px; border-top-left-radius: 3px; border-top-right-radius: 3px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px;">{"text": "Welcome to &lt;https://grouk.com|grouk&gt;."} </code></pre><p style="-webkit-print-color-adjust: exact; margin: 0px 0px 9px; padding: 0px; font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;">这将会显示如下：</p>]]></description>
            <imgURL>https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/incomingwebhook/incomingwebhook_step2.png</imgURL>
        </step>
        <step>
            <description><![CDATA[<p style="-webkit-print-color-adjust: exact; margin: 0px 0px 9px; padding: 0px; font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;">下面是一个用curl请求URL地址的例子：</p><pre style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 14px; margin-top: 0px; margin-bottom: 18px; line-height: 16px; font-size: 12px; border: 1px solid rgb(217, 217, 217); white-space: pre-wrap; word-wrap: break-word; color: rgb(115, 115, 115);"><code style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 0px; border-top-left-radius: 3px; border-top-right-radius: 3px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px;">curl -X POST -d'display_name=custom_name' -d'text=This is message text comes from a bot named custom_name.' https://api.grouk.com/webhook/xxxxxxxxxx/xxxxxxxxxx</code></pre>]]></description>
            <!--<description><![CDATA[<p style="-webkit-print-color-adjust: exact; margin: 0px 0px 9px; padding: 0px; font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;">Here is a sample curl request for posting data:</p><pre style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 14px; margin-top: 0px; margin-bottom: 18px; line-height: 16px; font-size: 12px; border: 1px solid rgb(217, 217, 217); white-space: pre-wrap; word-wrap: break-word; color: rgb(115, 115, 115);"><code style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 0px; border-top-left-radius: 3px; border-top-right-radius: 3px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px;">curl -X POST -d'display_name=custom_name' -d'text=This is message text comes from a bot named custom_name.' https://api.grouk.com/webhook/xxxxxxxxxx/xxxxxxxxxx</code></pre>]]></description>-->
        </step>
        <step>
            <!--<description><![CDATA[<p style="-webkit-print-color-adjust: exact; margin: 0px 0px 9px; padding: 0px; font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;" >To display a richly-formatted message attachment in Grouk. You can use the JSON string contains below property:</p><pre style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 14px; margin-top: 0px; margin-bottom: 18px; line-height: 16px; font-size: 12px; border: 1px solid rgb(217, 217, 217); white-space: pre-wrap; word-wrap: break-word; color: rgb(115, 115, 115);" ><code style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 0px; border-top-left-radius: 3px; border-top-right-radius: 3px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px;" >{<br/>  "text":"message text",<br/>  "attachment":{<br/>    "description":"some description of this attachment",<br/>    "fallback":"Required text summary of the attachment that is shown by clients that understand attachments but choose not to show them.",<br/>    "color":"#36a64f",<br/>    "body":{<br/>      "title":"This is attachment title",<br/>      "title_link":"http://grouk.com",<br/>      "author_name":"author name",<br/>      "author_link":"https://grouk.com",<br/>      "author_icon":"https://grouk.com/img/default/96.png",<br/>      "image_url":"https://farm3.staticflickr.com/2833/11787125913_6dff9758c9_b.jpg"<br/>    }<br/>   }<br/>}<br/> </code></pre><br/> <p style="-webkit-print-color-adjust: exact; margin: 0px 0px 9px; padding: 0px; font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;" >This will be displayed as:</p>]]></description>-->
            <description><![CDATA[<p style="-webkit-print-color-adjust: exact; margin: 0px 0px 9px; padding: 0px; font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;" >想要在Grouk中显示一个富文本格式的消息。你可以使用如下格式的JSON字符串：</p><pre style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 14px; margin-top: 0px; margin-bottom: 18px; line-height: 16px; font-size: 12px; border: 1px solid rgb(217, 217, 217); white-space: pre-wrap; word-wrap: break-word; color: rgb(115, 115, 115);" ><code style="-webkit-print-color-adjust: exact; font-family: Monaco, 'Andale Mono', 'Courier New', monospace; padding: 0px; border-top-left-radius: 3px; border-top-right-radius: 3px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px;" >{<br/>  "text":"message text",<br/>  "attachment":{<br/>    "description":"some description of this attachment",<br/>    "fallback":"Required text summary of the attachment that is shown by clients that understand attachments but choose not to show them.",<br/>    "color":"#36a64f",<br/>    "body":{<br/>      "title":"This is attachment title",<br/>      "title_link":"http://grouk.com",<br/>      "author_name":"author name",<br/>      "author_link":"https://grouk.com",<br/>      "author_icon":"https://grouk.com/img/default/96.png",<br/>      "image_url":"https://farm3.staticflickr.com/2833/11787125913_6dff9758c9_b.jpg"<br/>    }<br/>   }<br/>}<br/> </code></pre><br/> <p style="-webkit-print-color-adjust: exact; margin: 0px 0px 9px; padding: 0px; font-family: 'Helvetica Neue', Helvetica, 'Hiragino Sans GB', Arial, sans-serif; line-height: 18px;" >这将会显示如下：</p>]]></description>
            <imgURL>https://s3.cn-north-1.amazonaws.com.cn/grouk-public/integration/incomingwebhook/incomingwebhook_step4.png</imgURL>
        </step>