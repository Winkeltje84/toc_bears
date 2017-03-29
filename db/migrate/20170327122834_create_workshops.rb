class CreateWorkshops < ActiveRecord::Migration[5.0]
  def change
    create_table :workshops do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :demo_link
      t.string :github_link

      t.timestamps
    end
  end
end
