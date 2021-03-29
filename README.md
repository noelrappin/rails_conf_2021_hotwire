This is the code for a workshop at RailsConf 2021, see the other workshops on
the program at <https://railsconf.com/program/workshops>.

# Hotwire: HTML over The Wire

Last December, the team behind Basecamp and Hey released Hotwire, a library for managing client side interactions by sending HTML to the client. Hotwire bundles the Stimulus JavaScript library with an expanded Turbo library which makes a wide range of client side interactions possible without writing any custom JavaScript. In this workshop, attendees will see first-hand how powerful the new library is by adding powerful interactions to a basic Rails view.

## Prerequisites

This workshop assumes you already know a little bit about Ruby, Rails and
JavaScript, but doesn't require expert level knowledge of any of those things.

The workshop uses this Rails application as an example. I recommend that you
download it and get it working before the workshop starts.

Questions about the workshop or about setup should be directed to Noel at
<mailto:noelrap@hey.com>.

## Getting Ready

In order to run this application you'll need:

- Ruby 3.0
- Yarn 1.x
- Whatever version of Node lets you run Yarn.
- Sqlite3 (I think any recent version will work)

After downloading the app:

- run `bin/setup` -- this will download gems and JavaScript packages.

The database is already pointing to binary Sqlite3 files in `db`, so you
can run the app with `rails server`, then see the result at
`http://localhost/3000`.

It should look like

![][[image.png](https://github.com/noelrappin/rails_conf_2021_hotwire/blob/main/image.png)]

To log in, the user name is:

`areader@example.com`

and the password is:

`awesome`.

## Slides

The PDF Slides are at [slides.pdf](slides.pdf), if you want to follow along.

The original Markdown version of the slides are at [slides.md](slides.md). The
markdown version contains all the code changes made in each step, so you can
copy and paste them rather than type.
