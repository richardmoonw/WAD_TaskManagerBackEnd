class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :status, null: false
      t.string :priority, null: false
      t.string :end_at, null: false

      t.references :project, index: true, foreign_key: true
      t.timestamps
    end
  end
end
