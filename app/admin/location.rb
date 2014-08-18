ActiveAdmin.register Location do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :location, :blurb, :fb, :meetup, :twitter, :linkedin, :github, :geo
  #
  index do
    selectable_column
    column :location
    column :fb
    column :meetup
    column :twitter
    column :linkedin
    column :github
    actions
  end

  filter :location
  filter :fb
  filter :meetup
  filter :twitter
  filter :linkedin
  filter :github


  form do |f|
    f.inputs "Edit Location" do
      f.input :location, placeholder: "Los Angeles"
      f.input :geo, placeholder: "Los Angeles, CA, USA"
      f.input :fb, placeholder: "GDILosAngeles"
      f.input :meetup, placeholder: "Girl-Develop-It-Los-Angeles"
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
