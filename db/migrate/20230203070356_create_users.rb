class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo, limit: 1000
      t.text :bio
      t.integer :posts_counter, default: 0
      t.timestamps
    end
    add_index :users, :name, unique: true
  end
end
