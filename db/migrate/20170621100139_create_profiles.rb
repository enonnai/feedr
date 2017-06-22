class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :location
      t.string :short_bio
      t.timestamps
    end
  end
end
