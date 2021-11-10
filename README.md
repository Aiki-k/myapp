# テーブル設計

## Usersテーブル

|Column|Type|options|NOT NULL|
|---|---|---|
|username|string|NOT NULL|
|email|string|unique: true|
|encrypted_password|string|NOT NULL|

### アソシエーション

- has_many :tweets, dependent: :destroy
- has_many :checks, dependent: :destroy


## Tweets テーブル

|Column|Type|options|
|---|---|---|
|title|string|NOT NULL|
|text|text|NOT NULL|
|genre_id|integer|NOT NULL|
|user|references|foreign_key: true|

### アソシエーション

- has_many :user, through: :check

## check テーブル

|Column|Type|options|
|---|---|---|
|user|references|foreign_key: true|
|item|references|foreign_key: true|

### アソシエーション

- belongs_to :user
- belongs_to :item
- has_one :living


## livings テーブル

|Column|Type|options|
|---|---|---|
|postal_code|string|NOT NULL|
|delivery_area_id|integer|NOT NULL|
|j_sityoson|string|NOT NULL|
|j_banti|string|NOT NULL|
|building|string|
|phone_number|string|NOT NULL|
|buy|references|foreign_key: true|

### アソシエーション

- belongs_to :buy
