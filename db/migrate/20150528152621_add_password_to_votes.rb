class AddPasswordToVotes < ActiveRecord::Migration
  def change
    add_column :voters, :password, :string
    remove_column :voters, :token, :string
  end
end
