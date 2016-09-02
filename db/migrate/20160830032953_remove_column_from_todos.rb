class RemoveColumnFromTodos < ActiveRecord::Migration[5.0]
  def change
    remove_column :todos, :order, :integer
  end
end
