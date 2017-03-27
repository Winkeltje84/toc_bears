class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.integer :spaces
      t.string :image
      t.boolean :public

      t.timestamps
    end
  end
end
