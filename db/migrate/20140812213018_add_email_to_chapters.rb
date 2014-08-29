class AddEmailToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :email, :string
  end
end
