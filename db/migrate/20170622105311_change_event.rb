class ChangeEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :end_date_time, :string
  end
end
