class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :profile_img_url
      t.string :city

      t.index(:email, unique: true)

      t.timestamps null: false
    end
  end
end
