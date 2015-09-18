# Reply Callback

Grouk支持消息回复机制，所以Grouk的Incoming Webhook也支持Reply Callback机制。

在创建Incoming Webhook的时候输入一个地址，当有人回复从该Incoming Webhook发送进来的消息的时候，Grouk服务器会回调该接口，传递相关参数。


* 请求Content-Type application/json
* 请求Body是一个JSON对象，包含以下属性
    1. **token** webhook的token，和该webhook地址中的token一致，用于判断身份。
    2. **eventID**  调用Incoming Webhook的时候服务器返回的id
    3. **originalEvent** 调用Incoming Webhook发送的原始event数据
    4. **replyUser**    回复该消息的用户属性 包含 objectID，username，email，avatar 几个属性
    5. **group** 如果该消息是在群组中被回复，会包含该字段。group有以下属性：objectID，name，customID，avatar
    6. **replyMessage** 回复消息体，包含 objectID，from，to，text 等字段
* 该接口的响应无要求，如果正确处理http状态码请返回200
    
    
         


