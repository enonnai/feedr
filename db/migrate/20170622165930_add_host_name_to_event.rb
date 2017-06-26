class AddHostNameToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :host_name, :string
  end
end
