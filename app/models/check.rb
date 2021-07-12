class Check < ApplicationRecord
  has_many :users
  has_many :tweets
end
