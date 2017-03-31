class CreateSponsorRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :sponsor_requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.integer :places_available
      t.string :email
      t.date :date
      t.text :comments

      t.timestamps
    end
  end
end
