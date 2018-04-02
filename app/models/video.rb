class Video < ApplicationRecord
  validates :youtube_id, presence: true
  validates :artist_name, presence: true
end
