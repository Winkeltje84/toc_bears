class AddNviteIdToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :nvite_id, :string
  end
end
