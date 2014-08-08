class AddImageToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :image, :string
  end
end
