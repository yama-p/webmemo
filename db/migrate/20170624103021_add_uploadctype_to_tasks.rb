class AddUploadctypeToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :uploadctype, :string
  end
end
