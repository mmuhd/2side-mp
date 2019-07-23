class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :name
      t.decimal :price
      t.text :body
      t.boolean :alive
      t.string :category
      t.string :tag
      t.date :created_at
      

      t.timestamps
    end
  end
end
