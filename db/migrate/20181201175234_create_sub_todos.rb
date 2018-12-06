class CreateSubTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_todos do |t|
      t.belongs_to :todos
      t.string :description

      t.timestamps
    end
  end
end
