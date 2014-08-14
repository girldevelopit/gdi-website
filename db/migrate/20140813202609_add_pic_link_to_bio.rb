class AddPicLinkToBio < ActiveRecord::Migration
  def change
    add_column :bios, :pic_link, :string
  end
end
