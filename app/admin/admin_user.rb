ActiveAdmin.register AdminUser do

  permit_params :email, :password, :password_confirmation, :location_id

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      # f.input :password
      # f.input :password_confirmation
      f.input :location, member_label: :location
    end
    f.actions
  end

end
