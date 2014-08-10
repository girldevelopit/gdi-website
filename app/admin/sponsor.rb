ActiveAdmin.register Sponsor do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :sponsor, :name, :url, :name, :location_id, :image

  show do |ad|
    attributes_table do
      row :name
      row :url
      row :created_at
      row :updated_at
      row :location
      row :image do
        image_tag(ad.image.url)
      end
    end
  end

  form do |f|
    f.inputs "Edit Sponsor" do
      f.input :location, member_label: :location
      f.input :name
      f.input :url
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
