class RenameProfileColums < ActiveRecord::Migration[6.0]
  def change
    rename_column :profiles, "first name", :first_name
    rename_column :profiles, "last name", :last_name
  end
end
