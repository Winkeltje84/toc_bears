class AddDefaultToEventPublic < ActiveRecord::Migration[5.0]
  def change
    change_column_default :event, :public, false
  end
end
