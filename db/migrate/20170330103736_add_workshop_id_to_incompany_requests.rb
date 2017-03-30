class AddWorkshopIdToIncompanyRequests < ActiveRecord::Migration[5.0]
  def change
    add_reference :incompany_requests, :workshop, foreign_key: true
  end
end
