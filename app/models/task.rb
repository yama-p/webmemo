class Task < ApplicationRecord
  belongs_to :project
  validates :title, presence: { message: "タイトルを入力してください" }
  validate :file_invalid?
  scope :unfinished, -> { where(done: false) }
  scope :finished, -> { where(done: true) }
  scope :likeLerge, -> { where('like >= ?', 30)}
  default_scope { order(title: :asc) }

  def data=(data)
    self.uploadctype = data.content_type
    self.uploadfile = data.read
  end

  private
    def file_invalid?
      ps = ['image/jpeg', 'image/gif', 'image/png']
      errors.add :uploadfile, 'は画像ファイルではありません。' if !self.uploadctype.nil? && !ps.include?(self.uploadctype)
    end

end
