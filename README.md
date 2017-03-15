# DB設計


---
1. messagesテーブル

|column|type|
|:--|--:|
|body|text|
|image|string|
|group_id|integer|
|user_id|integer|



1.accountテーブル
|column|type|
|:--|--:|
|nick_name|string|
|mail|string|
|password|string|
|user_id|integer|


1.groupテーブル
|column|type|
|:--|--:|
|nick_name|string|
|group_id|integer|
|user_id|integer|
