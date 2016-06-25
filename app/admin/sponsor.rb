ActiveAdmin.register Sponsor do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :sponsor, :name, :sort_order, :url, :name, :chapter, :chapter_id, :image, :is_active

  show do |ad|
    attributes_table do
      row :name
      row :sort_order
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
  filter :chapter, member_label: :chapter, collection: proc { Chapter.active.order(:chapter) }
  filter :name
  filter :url
  filter :created_at
  filter :updated_at

  form(:html => { :multipart => true }) do |f|
  f.inputs "Edit Sponsor" do
      f.input :is_active, as: :radio, :collection => { "Yes" => true, "No" => false}, label: "Active?", include_blank: false
      if current_admin_user.admin?
        #admin can pick the chapter for the new sponsor using dropdown list :chapter
        f.input :chapter, member_label: :chapter, :collection => Chapter.active.order("chapter ASC")
      else
        #...else set the chapter_id to the leader's chapter_id
        f.input :chapter_id, :input_html => { :value => current_admin_user.chapter_id }, as: :hidden
      end
      f.input :name, placeholder: "The Iron Yard"
      f.input :sort_order, as: :select, collection: [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], include_blank: false
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
