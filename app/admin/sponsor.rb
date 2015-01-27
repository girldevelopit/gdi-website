ActiveAdmin.register Sponsor do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :sponsor, :name, :url, :name, :chapter_id, :image

  show do |ad|
    attributes_table do
      row :name
      row :url
      row :created_at
      row :updated_at
      row :chapter
      row :image do
        image_tag(ad.image.url)
      end
    end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Edit Sponsor" do
      f.input :chapter, member_label: :chapter
      f.input :name, placeholder: "The Iron Yard"
      f.input :url, placeholder: "http://www.theironyard.com"
      f.input :image
    end
    f.actions
  end

  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
end
