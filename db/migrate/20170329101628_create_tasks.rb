class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :project, foreign_key: true
      t.references :admin_user, foreign_key: true
      t.date :deadline
      t.boolean :done, :default => false

      t.timestamps
    end
  end
end
