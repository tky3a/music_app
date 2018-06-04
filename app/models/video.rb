class Video < ApplicationRecord
  has_many :video_categories  
  has_many :categories, through: :video_categories

  validates :youtube_id, presence: true
  validates :artist_name, presence: true
  validates :music_name, presence: true

  accepts_nested_attributes_for :video_categories #videoが更新されたらVideo_categoriesも更新される
end
