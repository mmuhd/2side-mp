class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :session_id
      t.references :user, foreign_key: true
      t.boolean :completed
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
