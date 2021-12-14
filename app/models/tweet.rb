class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions #アクティブハッシュのアソシエーション
  belongs_to :genre
  belongs_to :user
  has_many :checks, dependent: :destroy, foreign: :user_id
  has_many :tag_maps, dependent: :destroy
  has_many :tags, :through => :tag_maps, dependent: :destroy
  has_one_attached :image

  accepts_nested_attributes_for :tag_maps, allow_destroy: true

  def save_tag(sent_tags)
    current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
    old_tags = current_tags - sent_tags
    new_tags = sent_tags - current_tags

    old_tags.each do |old|
      self.post_tags.delete Tag.find_by(tag_name: old)
    end

    new_tags.each do |new|
      new_post_tag = Tag.find_or_create_by(tag_name: new)
      self.tags << new_post_tag
    end
  end

  with_options presence: true do
    validates :title
    validates :text  
    # validates :genre_id, numericality: { other_than: 1 }
  end
end