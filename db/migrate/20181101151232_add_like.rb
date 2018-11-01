class AddLike < ActiveRecord::Migration[5.2]
  def change
    add_reference :likes, :gossip, index: true
    add_reference :likes, :user, index: true
    end
end
