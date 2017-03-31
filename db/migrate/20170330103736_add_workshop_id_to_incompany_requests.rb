class AddWorkshopIdToIncompanyRequests < ActiveRecord::Migration[5.0]
  def change
    add_reference :incompany_requests, :workshop_id, foreign_key: true
  end
end
