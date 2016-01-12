class CreateRoleTable < ActiveRecord::Migration
  def change
    create_table :role do |t|
      t.string :name
    end
  end
end
