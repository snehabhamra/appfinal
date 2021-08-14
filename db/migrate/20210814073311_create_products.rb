class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.references :profile, foreign_key: true
      t.integer :buyer_id
      t.integer :seller_id

      t.timestamps
    end
  end
end
