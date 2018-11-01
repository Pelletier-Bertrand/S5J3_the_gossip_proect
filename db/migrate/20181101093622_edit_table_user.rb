class EditTableUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :description
    remove_column :users, :age
    remove_column :users, :city_id
    add_column :users, :name, :string
    add_column :users, :password, :string
  end
end
