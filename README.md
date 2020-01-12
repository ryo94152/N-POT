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


## stocksテーブル
|column|Type|Options|
|------|----|-------|
|lot|string|null: false|
|box|integer|null: false|
|weight|decimal|null: false|
|status|string|null: false|
|category_id|references|foreign_key: true|
### Association
- belongs_to :category
- has_one :delivery


## customersテーブル
|column|Type|Options|
|------|----|-------|
|han_code|string|null: false|
|han_name|string|null: false|
|ten_code|string||
|ten_name|string||
### Association
- has_many :deliveries


## deliveriesテーブル
|column|Type|Options|
|------|----|-------|
|han_year|string|null: false|
|han_month|string|null: false|
|han_day|string|null: false|
|price|integer|null: false|
|stock_id|references|foreign_key: true|
|customer_id|references|foreign_key: true|
### Association
- belongs_to :stock
- belongs_to :customer


## categoriesテーブル
|column|Type|Options|
|------|----|-------|
|code|string||
|genre|string||
|ancestry|string|| <!-- 畜種、部位、規格 -->
### Association
- has_many :stocks