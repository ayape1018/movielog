class AddDescriptionToDirectors < ActiveRecord::Migration[6.0]
  def change
    add_column :directors, :description, :text
  end
end
