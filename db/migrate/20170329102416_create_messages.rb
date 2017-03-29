class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :title
      t.text :text
      t.string :author
      t.string :email
      t.boolean :is_read, :default => false

      t.timestamps
    end
  end
end
