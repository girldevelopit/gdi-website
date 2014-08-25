ActiveAdmin.register Bio do

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :bio, :user, :title, :name, :info, :admin_user_id, :image,
                :twitter, :email, :website, :linkedin, :github, :location_id

  show do |ad|
    attributes_table do
      row :id
      row :name
      row :location
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
      f.input :admin_user
      f.input :location, member_label: :location
      f.input :title, as: :select, collection: ['LEADERS', 'INSTRUCTORS']
      f.input :name, placeholder: "Jane Doe"
      f.input :email, placeholder: current_admin_user.email
      f.input :info, placeholder: "Please fell free to type out your bio in normal text. If you have links you can type them out as normal url text like: www.girldevelopit.com.

If you want to have a second paragraph, just return twice. If you want to control your text in html just put a p tag before everything and the rest will be traditional html."
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
