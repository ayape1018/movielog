class ChangeColumnDirectors < ActiveRecord::Migration[6.0]
  def change
    rename_column :directors, :director, :name
    change_column :works, :description, :text
  end
end
