class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.text :title
      t.text :author
      t.string :price
      t.string :integer
      t.text :publisher
      t.text :memo

      t.timestamps
    end
  end
end
