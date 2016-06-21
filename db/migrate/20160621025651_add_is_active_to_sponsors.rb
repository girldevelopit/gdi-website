class AddIsActiveToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :is_active, :boolean, default: true
  end
end
