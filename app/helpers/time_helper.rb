module TimeHelper
  TIME = "%H:%M"
  DATE = "%Y/%m/%d"
  DATETIME = "#{DATE} #{TIME}"

  def local_datetime(datetime, style: :time)
    format = case style
    when :time then TIME
    when :date then DATE
    when :datetime then DATETIME
    else raise ArgumentError, "Unknown style: #{style}."
    end
    datetime.strftime(format)
  end
end
