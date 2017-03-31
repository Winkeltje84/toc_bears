class UpdateEventsTable < ActiveRecord::Migration[5.0]
  change_table :events do |t|
    t.rename :spaces, :spaces_available
  end
end
