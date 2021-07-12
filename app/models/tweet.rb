class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions #アクティブハッシュのアソシエーション
  belongs_to :genre
  belongs_to :user
  has_many :checks

  with_options presence: true do
    validates :title
    validates :text  
    validates :genre_id, numericality: { other_than: 1 }
  end
end
