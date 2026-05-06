module TimeHelper
  TIME = "%H:%M"
  DATE = "%Y/%m/%d"
  DATETIME = "#{DATE} #{TIME}"

  def local_datetime(datetime, style: :time)
    return if datetime.nil?

    format = case style
    when :time then TIME
    when :date then DATE
    when :datetime then DATETIME
    else raise ArgumentError, "Unknown style: #{style}."
    end
    datetime.strftime(format)
  end

  def local_datetime_tag(datetime, style: :time)
    return if datetime.nil?

    tag.time datetime: datetime do local_datetime(datetime, style: style) end
  end
end
