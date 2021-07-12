class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '自主事業' },
    { id: 3, name: '専用利用' },
    { id: 4, name: 'フィットネスルーム' },
    { id: 5, name: 'イベント' },
    { id: 6, name: 'お客様の声' },
    { id: 7, name: 'その他共有事項' }
  ]

  include ActiveHash::Associations
  has_many :tweets
end