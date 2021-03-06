class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :username, null: false
      t.text :email, null: false
    end

    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
