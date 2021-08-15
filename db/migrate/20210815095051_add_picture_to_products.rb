class AddPictureToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :Picture, :string
  end
end
