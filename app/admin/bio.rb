ActiveAdmin.register Bio do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :bio, :user, :title, :name, :info, :admin_user_id, :image,
                :twitter, :email, :website, :linkedin, :github

  show do |ad|
    attributes_table do
      row :id
      row :name
      row :title
      row :info
      row :created_at
      row :updated_at
      row :admin_user_id
      row :twitter
      row :email
      row :website
      row :linkedin
      row :github
      row :image do
        image_tag(ad.image.url)
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs "Edit Bio" do
      f.input :admin_user, member_label: :email
      f.input :title
      f.input :name
      f.input :info
      f.input :image
      f.input :twitter
      f.input :email
      f.input :website
      f.input :linkedin
      f.input :github
      f.input :image do
        image_tag(ad.image.url)
      end
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
