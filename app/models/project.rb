class Project < ApplicationRecord
  has_many :tasks
  validates :title,
            presence: { message: "タイトルを入力してください" },
            length: { minimum: 3, message: "3文字以上入力してください" }
end
