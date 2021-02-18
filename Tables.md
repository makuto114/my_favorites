# テーブル設計


## Users テーブル

| Column            | Type          | Option                       |
| ----------------- | ------------- | ---------------------------- |
| nickname          | string        | null: false, unique: true    |
| email             | string        | null: false                  |
| encrypted_password| string        | null: false                  |
| introduction      | text          |                              |
|


### Association

has_many :items
has_many :comments

image: Active Storage

## Items テーブル

| Column            | Type          | Option                       |
| ----------------- | ------------- | ---------------------------- |
| name              | string        | null: false                  |
| introduction      | text          | null: false                  |

### Association

belongs_to :user
has_many :comments

image: Active Storage


## Comment テーブル

| Column            | Type          | Option                       |
| ----------------- | ------------- | ---------------------------- |
| text              | text          | null: false                  |


### Association

belongs_to :user
belongs_to :item

## Likes テーブル

| Column            | Type          | Option                        | 
| ----------------- | ------------- | ----------------------------- |
| user              | references    | null: false, foreign_key: true|
| item              | references    | null: false, foreign_key: true|

### Association

belongs_to :user
belongs_to :item


## follows テーブル

| Column            | Type          | Option                        | 
| ----------------- | ------------- | ----------------------------- |
| user              | references    | null: false, foreign_key: true|


### Association

belongs_to :user, through :user_follow

## user_follow テーブル

| Column            | Type          | Option                        | 
| ----------------- | ------------- | ----------------------------- |
| user_id           | references    | null: false, foreign_key: true|
| follow_id         | references    | null: false, foreign_key: true|




