class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.date :due_on
      t.date :completed_on

      t.timestamps
    end
  end
end
