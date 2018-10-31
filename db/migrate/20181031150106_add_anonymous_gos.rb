class AddAnonymousGos < ActiveRecord::Migration[5.2]
  def change
    add_column :gossips, :anonymous_gossiper, :string
  end
end
