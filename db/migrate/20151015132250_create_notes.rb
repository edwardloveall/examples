class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.timestamps
      t.string :title
      t.references :song, index: true
    end
  end
end
