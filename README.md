# README

## Demo

![ef](https://github.com/natwo72/ef/issues/1#issue-647771080)

## App name

- EMOTIONS FOODS

## git clone
`https://github.com/natwo72/ef.git`
 
- $ bundle install
- $ rails db:create
- $ rails db:migrate
- $ rails s
- :point_right: ttp://localhost:3000

### 概要

- その日その時のキブン（喜怒哀楽）で選ぶ今夜のおつまみを選ぶ
- 今日もお酒をのみたいなあ:point_right:
- なにかおいしいおつまみと一緒にのみたいけど...:point_right:
- なにがたべたいか、ぱっと思い浮かばない... :point_right:
- 検索するとたくさん出てきて困っちゃうし... :point_right:
- とう言う人に向けた、今日のおつまみを決める一つの手段になるアプリケーション
- 自分も喜怒哀楽別におつまみを投稿できます。

### DB設計

## Postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|image|string|null: false, unique: true|
### Association
- has_many :post_categories
- has_many :categories, through: :post_categories
## Categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|
### Association
- has_many :post_categories
- has_many :posts, through: :post_categories
## PostCategoriesテーブル
|Column|Type|Options|
|------|----|-------|
|post|references|foreign_key: true|
|category|references|foreign_key: true|
### Association
- belongs_to :post
- belongs_to :category

### 工夫したポイント

- 中間テーブルを使用して、カテゴリーに紐付いた投稿機能の実装

### 課題や今後実装したい機能

- サーバーサイドでは、エラーハンドリングや制約まで細かく指定ができなかった。
- JavaScriptの実装に挑戦していきたい









