ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span "Вітаю в адміністративній панелі"
        small "Тут ви можете управляти інформацією про проєкт"
      end
    end
    div class: "d-flex" do
      div class: "blank_slate_container" do
        h2 "Позиції робітників", style: "text-align: center; margin-bottom: 20px"
        span class: "blank_slate" do
          pie_chart Employee.group(:position).count
        end
      end
      div class: "blank_slate_container" do
        h2 "Статус замовлень", style: "text-align: center; margin-bottom: 20px"
        span class: "blank_slate" do
          pie_chart Waybill.group(:state).count
        end
      end
      div class: "blank_slate_container" do
        h2 "Статус грузу", style: "text-align: center; margin-bottom: 20px"
        span class: "blank_slate" do
          pie_chart Cargo.group(:state).count
        end
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
