class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name, :null => false
      t.string :url
      t.string :source_url
      t.text :description
      t.boolean :finished, :default => false

      t.timestamps
    end
  end
end
