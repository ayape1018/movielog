class CreateDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :directors do |t|
      t.string "director"
      t.string "birthplace"
      t.timestamps
    end
  end
end
