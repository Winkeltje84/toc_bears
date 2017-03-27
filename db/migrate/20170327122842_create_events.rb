class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.integer :spaces
      t.references :workshop, foreign_key: true
      t.references :sponsor, foreign_key: true
      t.boolean :public

      t.timestamps
    end
  end
end
