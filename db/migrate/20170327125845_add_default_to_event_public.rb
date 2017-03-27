class AddDefaultToEventPublic < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:events, :public, false)
  end
end
