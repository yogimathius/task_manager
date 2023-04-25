class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :done
      t.datetime :completed_at

      t.timestamps
    end
  end
end
