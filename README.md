# 在庫管理アプリ
 
在庫管理ができるアプリケーションです。
![ER図](https://user-images.githubusercontent.com/57342731/72660153-d2ddef00-3a0c-11ea-989d-f0c5c8c15a03.png)

 
## このアプリについて
 
在庫管理ができるアプリケーションです。


## 使い方
 
1. カテゴリと販売先のマスタを設定します。
![ER図](https://user-images.githubusercontent.com/57342731/72660153-d2ddef00-3a0c-11ea-989d-f0c5c8c15a03.png)
2. 入庫情報を入力します。
![ER図](https://user-images.githubusercontent.com/57342731/72660153-d2ddef00-3a0c-11ea-989d-f0c5c8c15a03.png)
3. 出庫情報を入力します。
![ER図](https://user-images.githubusercontent.com/57342731/72660153-d2ddef00-3a0c-11ea-989d-f0c5c8c15a03.png)
4. 入庫情報と出庫情報の反映されたものが在庫情報で確認できます。
![ER図](https://user-images.githubusercontent.com/57342731/72660153-d2ddef00-3a0c-11ea-989d-f0c5c8c15a03.png)

## 工夫したところ

- 在庫情報の中で指定した条件で一致したものを合計で表示可能
- 多階層カテゴリを用いて畜種、部位、規格の同時入力が可能

## 今後実装したいところ

- CSVファイルの読み書き
- 在庫の検索機能
 
## 開発環境
 
- Ruby
- Ruby on Rails
- MySQL
- VSCode

![ER図](https://user-images.githubusercontent.com/57342731/72622159-ff9af380-3985-11ea-86d7-0eb4c6b3d18d.png)
 
## Anything Else
 
AnythingAnythingAnything
AnythingAnythingAnything
AnythingAnythingAnything
 
## Author
 
[@TanakanoAnchan](https://twitter.com/TanakanoAnchan)
mail to: xxxx@mail.com
 
## License
 
[MIT](http://TomoakiTANAKA.mit-license.org)</blockquote>

<!-- ## stocksテーブル
|column|Type|Options|
|------|----|-------|
|lot|string|null: false|
|box|integer|null: false|
|weight|decimal|null: false|
|status|string|null: false|
|category_id|d|foreign_key: true|
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
|ancestry|string||
### Association
- has_many :stocks

## usersテーブル
|column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|encrypted_password|string|null: faise| -->