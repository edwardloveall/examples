class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.timestamps
      t.string :title
    end
  end
end
