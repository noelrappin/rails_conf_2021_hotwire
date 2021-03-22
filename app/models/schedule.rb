class Schedule
  include ActiveModel::Model
  attr_accessor :schedule_days

  def self.from_concerts(all_concerts)
    schedule = Schedule.new

    all_concerts.group_by(&:start_day).each do |day, concerts|
      schedule.schedule_days << ScheduleDay.new(day, concerts)
      schedule.schedule_days.sort_by!(&:day)
    end

    schedule
  end

  def initialize
    @schedule_days = []
  end

  def schedule_day_at(string)
    schedule_days.find { _1.day_of?(string) }
  end

  def hide(day_string_array)
    (day_string_array || []).each do |day_string|
      schedule_day_at(day_string).hide!
    end
  end
end
