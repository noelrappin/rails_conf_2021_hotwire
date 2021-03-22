ActiveRecord::Base.transaction do
  Gig.delete_all
  Concert.delete_all
  Band.delete_all
  Venue.delete_all

  venue = Venue.create!(name: "Rosemont Horizon", rows: 10, seats_per_row: 10)

  brandi = Band.create(
    name: "Brandi Carlile",
    description: "Singer songwriter",
    genre_tags: "Singer/Songwriter,Country"
  )
  beatles = Band.create(
    name: "The Beatles",
    description: "The Fab Four",
    genre_tags: "Rock & Roll,Classic Rock"
  )
  billy = Band.create(
    name: "Billy Joel",
    description: "Piano Man",
    genre_tags: "Rock & Roll,Pop"
  )

  [brandi, beatles, billy].each_with_index do |band, index|
    concert = Concert.create(
      name: "#{band.name} In Concert",
      description: "#{band.name} In Concert",
      start_time: Date.parse("2020-02-10 19:00") + index + 1,
      venue: venue,
      ilk: "concert",
      access: "general",
      genre_tags: band.genre_tags,
      gigs: [Gig.create(band: brandi, order: 1, duration_minutes: 60)]
    )

    concert.venue.rows.times do |row_number|
      concert.venue.seats_per_row.times do |seat_number|
        concert.tickets.create!(
          row: row_number + 1,
          number: seat_number + 1,
          status: "unsold"
        )
      end
    end
  end
end
