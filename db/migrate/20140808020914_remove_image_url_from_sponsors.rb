class RemoveImageUrlFromSponsors < ActiveRecord::Migration
  def change
    remove_column :sponsors, :image_url, :string
  end
end
