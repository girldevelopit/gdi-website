class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
    	t.string   :title
	    t.string   :slug
	    t.string   :short_description
	    t.text     :long_description
	    t.string   :github_link
	    t.text     :slides
	    t.text     :practice_files
	    t.string   :icon
	    t.timestamps
    end
  end
end