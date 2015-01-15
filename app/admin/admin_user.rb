ActiveAdmin.register AdminUser do

  permit_params :email, :password, :password_confirmation, :chapter_id, role_ids: []

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column 'Roles' do |admin_user|
      admin_user.roles.map(&:name).join(", ")
    end
    
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  filter :roles

  form do |f|
    f.inputs "Admin Details" do
      f.input :email, placeholder: "email@example.com"
      f.input :password
      f.input :password_confirmation
      f.input :chapter, member_label: :chapter
      f.input :roles
    end
    f.actions
  end

end
