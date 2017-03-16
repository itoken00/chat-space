# DB設計


---
1. messagesテーブル

|column|type|etc|
|:--|--:|:--:|
|body|text||
|image|string||
|group_id|references|foreign_key|
|user_id|references|foreign_key|


belongs_to :user
belongs_to :group

1.usersテーブル

|column|type|etc|
|:--|--:|:--:|
|name|string|null: false, unique|
|mail|text|null: false, unique|
|password|string|null: false|



has_many :groups, through: :group_users
has_many :group_users
has_many :messages

1.groupsテーブル

|column|type|etc|
|:--|--:|:--:|
|name|string|null: false, unique|


has_many: users, through: :group_users
has_many: group_users
has_many: messages


1.group-usersテーブル

|column|type|etc|
|:--|--:|:--:|
|user_id|references|null: false|
|group_id|references|null: false|


belongs_to :user
belongs_to :group

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
