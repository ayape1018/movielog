class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string "first name"
      t.string "last name"
      t.text "introduction"
      t.string "image"
      t.integer "user_id"
      t.timestamps
    end
  end
end
