class Category < ApplicationRecord
  has_many :videos, through: :video_categories
  has_many :video_categories
  accepts_nested_attributes_for :video_categories #categoryが更新されたらVideo_categoriesも更新される
end
