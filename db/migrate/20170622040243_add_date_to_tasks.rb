class AddDateToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :start, :date, default: (Time.now)
    add_column :tasks, :limit, :date, default: (Time.now)
  end
end
