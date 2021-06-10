class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '自主事業' },
    { id: 3, name: '教室関連' },
    { id: 4, name: 'ジム関連' },
    { id: 5, name: '' }
  ]

  include ActiveHash::Associations
  has_many :tweets
end