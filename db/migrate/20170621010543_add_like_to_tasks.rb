class AddLikeToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :like, :integer, default: 0
  end
end
