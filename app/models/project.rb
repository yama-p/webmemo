class Project < ApplicationRecord
  validates :title,
            presence: { message: "Titleを入力してください" },
            length: { minimum: 3, message: "3文字以上入力してください" }
end
