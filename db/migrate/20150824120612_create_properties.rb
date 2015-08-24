class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.references :user, index: true, foreign_key: true
      t.string :region
      t.string :country
      t.string :address
      t.integer :capacity
      t.integer :deposit
      t.integer :minimum_stay
      t.float :price_per_day

      t.timestamps null: false
    end
  end
end
