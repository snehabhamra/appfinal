class AddDescriptionToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :Description, :Text
  end
end
