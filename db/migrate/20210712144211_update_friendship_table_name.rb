class UpdateFriendshipTableName < ActiveRecord::Migration[6.1]
  def change
    rename_table :frienships, :friendships
  end
end
