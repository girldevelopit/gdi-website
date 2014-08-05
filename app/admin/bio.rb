ActiveAdmin.register Bio do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :bio, :user, :title, :name, :info, :admin_user_id, :image

  show do |ad|
    attributes_table do
      row :id
      row :name
      row :title
      row :info
      row :created_at
      row :updated_at
      row :admin_user_id
      row :image do
        image_tag(ad.image.url)
      end
    end
    active_admin_comments
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
