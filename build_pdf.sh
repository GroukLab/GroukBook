FILENAME="_book/groukbook_zh-CN.pdf"
gitbook pdf . $FILENAME
eval $(stat -s $FILENAME)
echo '{"filename":"groukbook-zh-CN.pdf","fileSize":'$st_size',"contentType":"application\/pdf","url":"https:\/\/guide.grouk.com\/groukbook_zh-CN.pdf"}' > groukbook_attachment.json
aws s3 cp _book/groukbook_zh-CN.pdf s3://grouk-public/groukbook/zh-CN/
aws s3 cp groukbook_attachment.json s3://grouk-public/groukbook/zh-CN/
