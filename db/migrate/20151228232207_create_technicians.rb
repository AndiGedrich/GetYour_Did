class CreateTechnicians < ActiveRecord::Migration
  def change
    create_table :technicians do |t|
      t.string :name
      t.text :body
      t.string :profile_pic_url
      t.string :email
      t.string :password_digest
      t.integer :salon_id

      t.index(:email, unique: true)

      t.timestamps null: false
    end
  end
end
