source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"

gem "amazing_print"
gem "bootsnap", ">= 1.4.4", require: false
gem "date_by_example"
gem "devise"
gem "jbuilder", "~> 2.7"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.3"
gem "redis", "~> 4.0"
gem "sass-rails", ">= 6"
gem "simple_form"
gem "simple_form-tailwind"
gem "sqlite3", "~> 1.4"
gem "turbo-rails"
gem "webpacker", "6.0.0.beta.6"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "cypress-rails"
  gem "dotenv-rails"
  gem "faker"
  gem "pry-rails"
  gem "pry-rescue"
  gem "rspec-rails"
  gem "standard"
  gem "test-prof"
end

group :development do
  gem "annotate"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen"
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "spring"
  gem "web-console", ">= 4.1.0"
end

group :test do
  gem "factory_bot_rails"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
