# DB設計


---

### messagesテーブル

|column|type|etc|
|:--|--:|:--:|
|body|text||
|image|string||
|group_id|references|foreign_key|
|user_id|references|foreign_key|


belongs_to :user

belongs_to :group

### usersテーブル

|column|type|etc|
|:--|--:|:--:|
|name|string|null: false, unique|
|mail|text|null: false, unique|
|password|string|null: false|



has_many :groups, through: :group_users

has_many :group_users

has_many :messages

### groupsテーブル

|column|type|etc|
|:--|--:|:--:|
|name|string|null: false, unique|


has_many: users, through: :group_users

has_many: group_users

has_many: messages


### group-usersテーブル

|column|type|etc|
|:--|--:|:--:|
|user_id|references|null: false|
|group_id|references|null: false|


belongs_to :user

belongs_to :group

---

# details

### messagesテーブル
各ユーザーの書き込みメッセージを保存します。

### usersテーブル
各ユーザーの個人情報を保存します。

### groupsテーブル
各グループ名を保存します。

### groups-usersテーブル
どのグループにどのユーザーが所属しているかの情報を保存します。
