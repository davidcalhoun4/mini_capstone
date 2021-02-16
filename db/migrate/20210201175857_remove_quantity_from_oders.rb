class RemoveQuantityFromOders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :quantity, :integer
  end
end
