class CreateAdminUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :admin_users do |t|
      t.string :name
      t.string :login, :null => false
      t.string :nickname, :null => false
      t.string :userpic
      t.string :password_digest, :null => false

      t.timestamps
    end
  end

  def down
    drop_table :admin_users
  end
end
