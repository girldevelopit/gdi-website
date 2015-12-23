ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "Info" do
            @user_chapter = Chapter.where(id: current_admin_user.chapter_id)
            @user_chapter.each do |c|
                if c.is_active?
                    para "Welcome to Girl Develop It's Web Admin portal. Please contact the web admin team via Slack (#website) or by emailing website@girldevelopit.com if you have any questions."
                else
                    para "Your chapter has been deactivated."
                end
            end
        end
      end
    end

  end # content
end
