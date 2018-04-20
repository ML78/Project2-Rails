class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :name
      t.text :description
      t.text :image
      t.text :category
      t.integer :score

      t.timestamps
    end
  end
end
