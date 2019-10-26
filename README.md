##  usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
|email|email|null: false|
|password|password|null: false|
|group_id|integer|null: false, foreign-key: true|

-has_many :groups, though: :groups_users
-has_many :groups_users
-has_many :messages

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
|search|text|null: false|
|user_id|integer|null: false, foreign-key: true|

-has_many :users, though: :groups_users
-has_many :groups_users
-has_many :messages

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign-key: true|
|group_id|integer|null: false, foreign-key: true|

-belongs_to :user
-belongs_to :group

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|image|file|unique: true|
|user_id|integer|null: false, foreign-key: true|
|group_id|integer|null: false, foreign-key: true|

-belongs_to :user
-belongs_to :group