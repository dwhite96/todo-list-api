class AddNullColumnToTodos < ActiveRecord::Migration[5.0]
  def change
    change_column_null :todos, :user_id, false
  end
end
