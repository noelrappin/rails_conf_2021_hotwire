# == Schema Information
#
# Table name: gigs
#
#  id               :integer          not null, primary key
#  duration_minutes :integer
#  order            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  band_id          :integer          not null
#  concert_id       :integer          not null
#
class Gig < ApplicationRecord
  belongs_to :band
  belongs_to :concert
end
