class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email, :null => false
      t.string :password_digest
      t.string :session_key
      t.string :activation_key
      t.string :bio

      t.timestamps
    end
    add_index :users, :full_name, unique: true
    add_index :users, :email, unique: true
    add_index :users, :session_key
  end
end
