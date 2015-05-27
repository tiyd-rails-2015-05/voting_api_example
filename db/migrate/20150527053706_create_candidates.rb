class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.integer :race_id
      t.string :name
      t.string :hometown_at
      t.string :district_at
      t.string :party

      t.timestamps null: false
    end
  end
end
