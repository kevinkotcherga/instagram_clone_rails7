class AddFollowerAndFollowingToUSer < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :followers, :integer
    add_column :users, :following, :integer
  end
end
