source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.4"
gem "eps"
gem "puma", "~> 5.6"
gem "jbuilder"
gem "redis", "~> 5.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development do
  gem "sqlite3", "~> 1.4"
end

group :production do
  gem "pg"
end

gem "matrix", "~> 0.4.2"
