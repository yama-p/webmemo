module ApplicationHelper

  def format_datetime(datetime, type = :date)

    return '' unless datetime

    case type
      when :datetime
        format = '%Y/%m/%d %H:%M:%S'
      when :date
        format = '%Y/%m/%d'
      when :time
        format = '%H:%M:%S'
    end

    datetime.strftime format
  end

  def my_devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved",
                      count: resource.errors.count,
                      resource: resource.class.model_name.human.downcase)

    html = <<-HTML
    <div id="error_explanation">
      <h3>#{sentence}</h3>
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end

end
