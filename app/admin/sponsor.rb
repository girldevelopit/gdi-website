ActiveAdmin.register Sponsor do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :sponsor, :name, :url, :name, :chapter, :chapter_id, :image

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

  filter :roles
  filter :chapter, member_label: :chapter
  filter :name
  filter :url
  filter :created_at
  filter :updated_at

  form(:html => { :multipart => true }) do |f|
  f.inputs "Edit Sponsor" do
      #if user only has one role and it is leader...
      if current_admin_user.roles.count == 1 and current_admin_user.roles.first.name == "leader"
        #...then set the chapter_id to the leader's chapter_id
        f.input :chapter_id, :input_html => { :value => current_admin_user.chapter_id }, as: :hidden
      else
        #otherwise, admin can pick the chapter for the new sponsor using dropdown list :chapter
        f.input :chapter, member_label: :chapter
      end
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
