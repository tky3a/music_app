class Comment < ApplicationRecord
  belongs_to :video

  #commentバリデーション
  validates :body, presence: true,
            length: { maximum: 255 }
end
