class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions #アクティブハッシュのアソシエーション
  belongs_to :genre

  validates :title, :text, presence: true
  validates :genre_id, numericality: { other_than: 1 }
end
