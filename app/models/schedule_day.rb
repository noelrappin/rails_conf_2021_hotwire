class ScheduleDay
  include ActiveModel::Model
  attr_accessor :day, :concerts, :hidden

  def initialize(day, concerts, hidden = false)
    @day = day
    @concerts = concerts
    @hidden = hidden
  end

  def day_string
    day.by_example("2006-01-02")
  end

  def day_of?(string)
    return false unless string
    day == Date.parse(string)
  end

  def hide!
    @hidden = true
  end

  def toggle!
    @hidden = !@hidden
  end
end
