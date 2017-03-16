# DB設計


---
1. messagesテーブル

|column|type|etc|
|:--|--:|:--:|
|body|text||
|image|string||
|group_id|integer||
|user_id|integer|preference|

belongs_to :users


1.usersテーブル

|column|type|etc|
|:--|--:|:--:|
|name|string|preference|
|mail|string||
|password|string||

has_many :messages
has_many :groups_to

1.groupsテーブル

|column|type|etc|
|:--|--:|:--:|
|name|integer||
|group_id|integer|preference|

belongs_to :users

1.groups-usersテーブル

|column|type|etc|
|:--|--:|:--:|
|user_id|integer|
|group_id|integer|


---

## details

1. messagesテーブル
Save message burning in "chat space".

1. usersテーブル
Introduction of login function for account creation.

1.groupsテーブル
Information and group name of the person who belongs to each group.

1.groups-usersテーブル
Details on which user belongs to which group.
