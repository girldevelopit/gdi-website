ActiveAdmin.register Location do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :location, :blurb, :fb, :meetup, :twitter, :linkedin, :github, :geo
  #
  index do
    selectable_column
    column :location
    column :blurb
    column :geo
    column :fb
    column :meetup
    column :twitter
    column :linkedin
    column :github
    actions
  end

  filter :location
  filter :blurb
  filter :geo
  filter :fb
  filter :meetup
  filter :twitter
  filter :linkedin
  filter :github


  form do |f|
    f.inputs "Edit Location" do
      f.input :location
      f.input :blurb
      f.input :geo
      f.input :fb
      f.input :meetup
      f.input :twitter
      f.input :linkedin
      f.input :github
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
