class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string "title"
      t.string "release"
      t.string "starring"
      t.string "description"
      t.timestamps
    end
  end
end
