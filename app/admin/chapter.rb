ActiveAdmin.register Chapter do

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :chapter, :blurb, :fb, :meetup, :twitter, :linkedin, :github, :geo, :email, :meetup_id, :is_active
  #
  index do
    selectable_column
    column :chapter
    column :fb
    column :meetup
    column :twitter
    column :linkedin
    column :github
    actions
  end

  filter :chapter
  filter :fb
  filter :meetup
  filter :twitter
  filter :linkedin
  filter :github


  form do |f|
    f.inputs "Edit Chapter" do
      if current_admin_user.admin?
        #admin users can activate/deactivate chapters as needed
        f.input :is_active, as: :radio, :collection => { "Yes" => true, "No" => false}, label: "Active?", include_blank: false
      end
      f.input :chapter, placeholder: "Los Angeles"
      f.input :geo, label: "Address", placeholder: "Los Angeles, CA, USA"
      f.input :fb, label: "Facebook", placeholder: "GDILosAngeles"
      f.input :meetup, placeholder: "Girl-Develop-It-Los-Angeles"
      f.input :meetup_id, label: "Meetup ID", placeholder: "12345678"
      f.input :email, placeholder: "firstname@girldevelopit.com"
      f.input :twitter, placeholder: "GDILosAngeles"
      f.input :linkedin, placeholder: "https://www.linkedin.com/groups/Girl-Develop-It-Los-Angeles-9999999"
      f.input :github, placeholder: "GDILosAngeles"
    end
    f.actions
  end

  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

end
