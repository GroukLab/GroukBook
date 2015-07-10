# Get start with Grouk


## Register

In Grouk, the team's id is mail domain, users of the same mail domain will automatically join the same team, so you do not need to create a team . You only need to enter your company E-mail, then use the verification code which sent to your mailbox to login directly.

We believe that the team is a group of people have same goal, and the domain name is the symbol of the goal.

You can find colleagues directly by email or invite them to join by email.

## Group

Grouk groups although it looks like traditional IM group, the difference between the two in the following points:

* Grouk store messages permanently and provide powerful search filters.
* New users join the group can view the history fo group.

The purpose of the features is that We believe that the group chat can be as a team dynamic knowledge base, wiki and other document system is a team static knowledge base. This allows the new colleagues more easily understand and integrate into the team.

There are two types Grouk groups, public groups and private groups. Public Group visible to the whole team, you can browse all public groups. 
Private groups can not bean directly join, only to be invited join.
New multi user chat is private group. 
Private groups and public groups can be converted to each other.

If you do not wish the new group members see the old chat history, we also provide such a mechanism, when inviting users to join the private group, we will ask you whether to allow the member to see the history, if not, You will a new group which include the original group members and new member. 

## Invite colleague
Invite colleagues to Grouk is very simple, you just need to create a chat or group and directly input colleague's email when invite member. Them will receive your invitation message. 

## Direct Message

In Grouk, you can send direct message to colleague without the need for add friends or other pre-confirmation mechanism.

## Message

Grouk内的消息和传统IM的消息区别比较大，主要体现在:
* Grouk的消息可以一次携带多个附件，像邮件一样。便于分享文件以及检索。
* Grouk的消息可以编辑和删除（该功能下一版本上线）。聊天记录永久保存的情况下，需要机制允许用纠正自己的误操作。

## Group thread discuss

Grouk在群聊内通过回复机制，实现了类似BBS的话题讨论和实时群聊的整合，避免了群内多个话题穿插讨论而带来的上下文丢失问题，也方便您对消息像邮件一样进行回复。

## Notification config
Grouk提供了强大的提醒设置机制，即可以避免被打扰，也能保证不遗漏重要消息。
手机版的个人提醒设置页面提供了以下选项：
* 提示所有
* 单聊或者提到和回复我的
* 不提示

同时每个群都可以单独设置提醒:
* 跟随全局
* 提示所有
* 提到和回复我的
* 不提示

## Search
Grouk提供了强大的消息搜索功能，您可以通过关键词，发送者，群组，文件类型等条件进行检索消息和附件内容(pdf,office等文档格式支持)。同时Grouk支持支持从搜索结果跳转到历史会话记录，重现历史讨论场景。
您只能搜索别人发给你的消息和文件（包括单聊，您加入的私密群和公开群）。

## Multi client sync
Grouk支持多个终端同时登陆，每个终端的消息，未读数，以及收藏等都是实时同步的。避免了您切换设备导致的工作场景上下文丢失。
当然您也不必担心多终端导致的安全问题，我们支持通过一个设备将其他设备设置为离线（尚未上线）。

## GroukEmail
GroukEmail是grouk分配给您以及群组的邮件地址，通过这个地址，您的同事可以用邮件客户端来给您或者群组发送消息（支持附件）。

* 个人的GroukEmail的规则是: 
        username@teamdomain+grouk.com
比如您的企业邮箱是 xiaoming@demo.com,您的GroukEmail就是xiaoming@demo.com.grouk.com
* 群组的邮件地址规则是:
        自定义群组ID@groups.teamdomain.grouk.com
比如您有个群组的自定义id是rd，GroukEmail的地址就是: rd@groups.demo.com.grouk.com。群组的邮件地址相当于一个邮件列表。

GroukEmail当前只支持同一个团队域下的邮箱进行发送。

## Third party integration
Grouk的第三方集成主要目的是将其他系统的消息通知到群组中，便于及时讨论以及追踪。比如 监控报警通知到群组可以及时沟通处理情况，持续集成工具的失败通知到群组中可以及时提醒代码提交者进行修复，等等。
创建第三方集成首先选择一个需要集成的应用，然后创建事件源(EventSource)。

Grouk的事件源分为公开和私密两种，公开的事件源允许任何人订阅，私密的只能创建者进行操作。
创建好事件源后，可以选择订阅给某个群组或者自己。
具体的事件源的创建方式请参看具体的应用集成说明，在这里主要介绍以下几种集成:

1. 邮件集成 创建后系统会分配一个邮件地址，向该地址发送邮件，就会发送一条消息给订阅者。主要使用场景：邮件转发提醒，和只支持邮件提醒的系统进行集成。
2. webhook webhook是一个带有token的接口地址，向该接口发送消息就会发送一条消息给订阅者。
3. rss 直接输入一个rss地址，如果该rss源有更新，就会发送消息给订阅者。