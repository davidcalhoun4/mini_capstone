class AddStatusToCartedProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :carted_products, :status, :string, default: "carted"
  end
end
