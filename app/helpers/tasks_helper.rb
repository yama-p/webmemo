module TasksHelper

  def show_task_part(title, detail)

    content_tag :div do
      concat content_tag :p, title, class: :show_task_title
      concat simple_format detail
    end

  end

end
