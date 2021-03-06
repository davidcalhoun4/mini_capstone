class CreateCartedProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :carted_products do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.string :string, default: "carted"
      t.integer :order_id
      t.timestamps
    end
  end
end
