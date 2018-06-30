class Video < ApplicationRecord
  #お気に入り機能　多対多
  has_many :favorites
  has_many :users, through: :favorites

  #video,categoryに対して多対多の関係
  has_many :video_categories
  has_many :categories, through: :video_categories
  validates_associated :categories, presence: true #categoryを保存しないとvideoも保存できないとしたい。。

##commentモデルに対して1対多の関係
  has_many :comments

  #Videoモデルバリデーション
  validates :youtube_id, presence: true
  validates :artist_name, presence: true
  validates :music_name, presence: true

  #videoが更新されたらVideo_categoriesも更新される
  accepts_nested_attributes_for :video_categories
end
