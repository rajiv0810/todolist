class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :content
      t.string :completed

      t.timestamps null: false
    end
  end
end
