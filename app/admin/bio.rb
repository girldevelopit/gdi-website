ActiveAdmin.register Bio do

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :bio, :user, :title, :name, :info, :admin_user_id, :admin_user, :image,
                :twitter, :email, :website, :linkedin, :github, :chapter_id, :chapter

  show do |ad|
    attributes_table do
      row :id
      row :name
      row :chapter
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

  filter :roles
  filter :chapter, member_label: :chapter
  filter :name
  filter :title
  filter :info
  filter :email
  filter :website
  filter :created_at
  filter :updated_at

  form(:html => { :multipart => true }) do |f|
    f.inputs "Edit Bio" do
      #if user only has one role and it is leader...
      if current_admin_user.roles.count == 1 and current_admin_user.roles.first.name == "leader"
        #...then set the chapter_id to the leader's chapter_id
        f.input :chapter_id, :input_html => { :value => current_admin_user.chapter_id }, as: :hidden
      else
        #otherwise, admin can pick the chapter for the new bio using dropdown list :chapter
        f.input :chapter, member_label: :chapter
      end
      #f.input :admin_user
      f.input :title, as: :select, collection: ['LEADERS', 'INSTRUCTORS', 'VOLUNTEERS']
      f.input :name, placeholder: "Jane Doe"
      f.input :email, placeholder: current_admin_user.email
      f.input :info, placeholder: "Please fell free to type out your bio in normal text. If you have links you can type them out as normal url text like: www.girldevelopit.com.

If you want to have a second paragraph, just return twice. If you would rather write you bio info in html fell free it will be converted into html on the website."
      f.input :website, placeholder: "http://www.your_website.com"
      f.input :twitter, placeholder: "YourTwitterName"
      f.input :linkedin, placeholder: "YourLinkedinName"
      f.input :github, placeholder: "YourGitHubName"
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
