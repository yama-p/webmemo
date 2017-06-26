class AddUploadfileToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :uploadfile, :binary
  end
end
