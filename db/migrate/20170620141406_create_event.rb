class CreateEvent < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.string :info
      t.string :date_time
      t.integer :nr_guests
    end
  end
end
