class VideoCategory < ApplicationRecord
  belongs_to :video, optional: true
  belongs_to :category, optional: true
end
