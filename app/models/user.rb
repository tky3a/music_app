class User < ApplicationRecord
  #保存する前にemailを小文字に変更する
  before_save {self.email = email.downcase } #selfは現在のユーザーを指す
  #nameのパリデーション: 空では登録不可,長さは50文字以内
  validates :name, presence: true, length: { maximum: 50 }
  #emailのバリデーション: 正規表現と一致するメールアドレスと255文字以内のメールアドレスが登録可
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #正規表現を代入
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with:VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false } #重複した場合false

  has_secure_password
end
