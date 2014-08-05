class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.integer :user_id
      t.string :title
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
