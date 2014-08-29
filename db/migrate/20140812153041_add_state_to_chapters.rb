class AddStateToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :state, :string
  end
end
