require "test_helper"

class TimeHelperTest < ActionView::TestCase
  DATETIME = Time.new(2020, 02, 26, 21, 58, 19, "+09:00")

  test "local_datetime" do
    assert_equal  \
      %(21:58),
      local_datetime(DATETIME)
    assert_equal  \
      %(21:58),
      local_datetime(DATETIME, style: :time)
    assert_equal  \
      %(2020/02/26),
      local_datetime(DATETIME, style: :date)
    assert_equal  \
      %(2020/02/26 21:58),
      local_datetime(DATETIME, style: :datetime)
    assert_raises(ArgumentError, match: "Unknown style: foo.") do
      local_datetime(DATETIME, style: :foo)
    end
    assert_nil local_datetime(nil)
  end

  # TODO: タイムゾーンの設定方法
  test "local_datetime_tag" do
    assert_dom_equal \
      %(<time datetime="2020-02-26 21:58:19 +0900">21:58</time>),
      local_datetime_tag(DATETIME)
    assert_nil local_datetime_tag(nil)
  end
end
