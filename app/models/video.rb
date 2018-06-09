class Video < ApplicationRecord
  #video,categoryに対して多対多の関係
  has_many :video_categories
  has_many :categories, through: :video_categories

##commentモデルに対して1対多の関係
  has_many :comments
  #commentバリデーション
  validates :body, presence: true,
            length: { maximum: 255 }

  #Videoモデルバリデーション
  validates :youtube_id, presence: true
  validates :artist_name, presence: true
  validates :music_name, presence: true

  #videoが更新されたらVideo_categoriesも更新される
  accepts_nested_attributes_for :video_categories
end
