class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :title, default: "", null: false
      t.boolean :completed, default: false
      t.integer :order, null: false

      t.timestamps
    end
  end
end
