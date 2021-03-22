# == Schema Information
#
# Table name: tickets
#
#  id               :integer          not null, primary key
#  number           :integer
#  row              :integer
#  status           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  concert_id       :integer          not null
#  shopping_cart_id :integer
#  user_id          :integer
#
class Ticket < ApplicationRecord
  belongs_to :concert
  belongs_to :user, optional: true
  belongs_to :shopping_cart, optional: true

  def self.unsold
    where(status: "unsold")
  end

  def toggle_for(user)
    return unless user
    return if self.user && self.user != user
    case status
    when "unsold"
      update(status: "held", user: user)
    when "held"
      update(status: "unsold", user: user)
    end
  end

  def color_for(user)
    case status
    when "unsold" then "bg-white"
    when "held"
      self.user == user ? "bg-red-600" : "bg-yellow-500"
    when "purchased"
      self.user == user ? "bg-green-600" : "bg-yellow-500"
    end
  end

end
