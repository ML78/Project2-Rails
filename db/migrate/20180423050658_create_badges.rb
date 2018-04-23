class CreateBadges < ActiveRecord::Migration[5.1]
  def change
    create_table :badges do |t|
      t.text :image
      t.integer :score
      t.text :description

      t.timestamps
    end
  end
end
