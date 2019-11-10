class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :notes
      t.integer :user_id
      t.integer :profile_id

      t.timestamps
    end
    add_index :todos, :user_id
    add_index :todos, :profile_id 
  end
end
