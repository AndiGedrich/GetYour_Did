class RemoveTechTable < ActiveRecord::Migration
  def change
    add_column :users, :body, :text
    add_column :users, :salon_id, :integer
    drop_table :technicians
  end
end
