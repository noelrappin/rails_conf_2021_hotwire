# == Schema Information
#
# Table name: favorites
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  concert_id :integer          not null
#  user_id    :integer          not null
#
class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :concert

  def sort_date
    concert.start_time.to_i
  end
end
