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

  after_create_commit -> do
    Turbo::StreamsChannel.broadcast_stream_to(
      user, :favorites,
      content: ApplicationController.render(
        :turbo_stream,
        partial: "favorites/create",
        locals: {favorite: self}
      )
    )
  end

  after_destroy_commit -> do
    Turbo::StreamsChannel.broadcast_stream_to(
      user, :favorites,
      content: ApplicationController.render(
        :turbo_stream,
        partial: "favorites/destroy",
        locals: {favorite: self}
      )
    )
  end

  def sort_date
    concert.start_time.to_i
  end
end
