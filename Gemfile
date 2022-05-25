source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

gem "rails", "~> 7.0.3"
gem "pg"
gem "puma", "~> 5.0"
gem "bootsnap", require: false
gem "rswag"

group :development, :test do
  gem "rswag-specs"
  gem "rspec-rails"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end
