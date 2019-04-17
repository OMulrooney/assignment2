class AddUseridToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :userId, :int
  end
end
