class AddPriceToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :Price, :Int
  end
end
