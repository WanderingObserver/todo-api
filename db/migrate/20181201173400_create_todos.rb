class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.belongs_to :user
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
