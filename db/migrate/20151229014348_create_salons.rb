class CreateSalons < ActiveRecord::Migration
  def change
    create_table :salons do |t|
      t.string :name
      t.string :address
      t.integer :zip_code
      t.string :price_range
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
