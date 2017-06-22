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

end
