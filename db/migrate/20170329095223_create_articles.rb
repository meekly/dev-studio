class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :text
      t.references :admin_user, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
