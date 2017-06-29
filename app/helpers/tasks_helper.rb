module TasksHelper

  def show_task_part(title, detail)

    content_tag :div do
      concat content_tag :label, title, class: :title
      concat simple_format detail, class: :show_task_detail
    end

  end

end
