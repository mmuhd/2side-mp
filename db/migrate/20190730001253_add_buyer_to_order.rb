class AddBuyerToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :buyer, :integer
  end
end
