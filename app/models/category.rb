class Category < ApplicationRecord
  has_many :video_categories
  has_many :videos, through: :video_categories

  #scope
  # IDを含む場合
  scope :id_is, -> ids {
    where(id: ids) if ids.present?
  }
end
