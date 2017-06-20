class AddDetailsToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :overview, :string
    add_column :tasks, :detail, :string
  end
end
