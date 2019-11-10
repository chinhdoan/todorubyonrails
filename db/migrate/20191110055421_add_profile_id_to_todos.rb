class AddProfileIdToTodos < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :profile_id, :integer
    add_index :todos, :profile_id
  end
end
