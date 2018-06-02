class Video < ApplicationRecord
  has_many :categories, through: :video_categories
  has_many :video_categories


  validates :youtube_id, presence: true
  validates :artist_name, presence: true
  validates :music_name, presence: true
end
