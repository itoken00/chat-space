# DB設計


---
1. messagesテーブル

|column|type|
|:--|--:|
|body|text|
|image|string|
|group_id|integer|
|user_id|integer|



1.usersテーブル

|column|type|
|:--|--:|
|nick_name|string|
|mail|string|
|password|string|


1.groupsテーブル

|column|type|
|:--|--:|
|nick_name|string|
|group_name|integer|
|user_id|integer|

1.users-groupsテーブル

|column|type|
|:--|--:|
|user_id|integer|
|group_id|integer|

---

##details

1. messagesテーブル
Save message burning in "chat space".

1. usersテーブル
Introduction of login function for account creation.

1.groupsテーブル
Information and group name of the person who belongs to each group.

1.users-groupsテーブル
Details on which user belongs to which group.
