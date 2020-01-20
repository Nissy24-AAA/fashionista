# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :posts
- has_many :likes



## postsテーブル

|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|tag_id|integer||

### Association
- belongs_to :user
- has_many :posts_tags
- has_many :tags, through: :posts_tags
- has_many :likes



## tagsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string||

### Association
- has_many :posts, through: :posts_tags
- has_many :posts_tags



## likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post



## posts_tagsテーブル

|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :post
- belongs_to :tag