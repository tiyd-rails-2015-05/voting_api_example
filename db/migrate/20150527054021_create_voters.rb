class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :token
      t.string :name
      t.string :party
      t.string :username

      t.timestamps null: false
    end
  end
end
