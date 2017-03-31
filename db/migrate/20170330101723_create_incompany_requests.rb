class CreateIncompanyRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :incompany_requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :email
      t.datetime :date
      t.integer :spaces_available
      t.text :comments

      t.timestamps
    end
  end
end
