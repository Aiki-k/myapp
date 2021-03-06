class Tag < ApplicationRecord
  has_many :tag_maps, dependent: :destroy
  has_many :tweets, :through => :tag_maps, dependent: :destroy
end