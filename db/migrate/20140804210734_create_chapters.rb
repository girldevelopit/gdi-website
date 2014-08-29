class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :chapter
      t.text :blurb
      t.string :fb
      t.string :meetup
      t.string :geo

      t.timestamps
    end
  end
end
