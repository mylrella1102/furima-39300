# テーブル設計

## users テーブル

| Column                | Type    | Options                   |
| --------------------- | ------- | ------------------------- |
| nickname              | string  | null: false               |
| email                 | string  | null: false, unique: true |
| password              | string  | null: false               |
| password_confirmation | string  | null: false               |
| last-name             | string  | null: false               |
| first-name            | string  | null: false               |
| last-name-kana        | string  | null: false               |
| first-name-kana       | string  | null: false               |
| birth-date            | integer | null: false               |

### Association

- has_many :items
- has_many :purchases

## items テーブル

| Column               | Type       | Options                        |
| ---------------------| ---------- | ------------------------------ |
| image                | text       | null: false                    |
| name                 | string     | null: false                    |
| info                 | text       | null: false                    |
| category             | integer    | null: false                    |
| sales-status         | integer    | null: false                    |
| shopping-fee-status  | integer    | null: false                    |
| prefecture           | integer    | null: false                    |
| scheduled-delivery   | integer    | null: false                    |
| price                | integer    | null: false                    |
| add-tax-price        | integer    | null: false                    |
| profit               | integer    | null: false                    |
| user                 | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- has_one    :purchase

## purchases テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- has_one    :order

## orders テーブル

| Column         | Type       | Options     |
| -------------- | ---------- | ----------- |
| postal-code    | string     | null: false |
| prefecture     | references | null: false |
| city           | references | null: false |
| addresses      | references | null: false |
| building       | references | null: false |
| phone-number   | references | null: false |

### Association

- belongs_to :purchase
