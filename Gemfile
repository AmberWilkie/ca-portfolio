# If you do not have OpenSSL installed, change
# the following line to use 'http://'
source 'https://rubygems.org'

# For faster file watcher updates on Windows:
gem 'wdm', '~> 0.1.0', platforms: [:mswin, :mingw]

# Windows does not come with time zone data
gem 'tzinfo-data', platforms: [:mswin, :mingw, :jruby]

# Middleman Gems
gem 'middleman', '>= 4.0.0'
gem 'middleman-livereload'
gem 'middleman-sprockets', '~> 4.0.0.rc'
# gem 'middleman-deploy', '~> 2.0.0.pre.alpha'
gem 'middleman-deploy', github: 'middleman-contrib/middleman-deploy', branch: 'master'
gem "middleman-blog"
gem 'nokogiri'
gem 'middleman-syntax'
# gem 'pygments.rb', '~> 0.6.3'

gem 'redcarpet', '~> 3.3', '>= 3.3.3'
# gem 'kramdown'

# For feed.xml.builder
gem "builder", "~> 3.0"

#Template engine
gem 'haml'

group :development, :test do
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'pry'
  gem 'pry-byebug'
  gem 'launchy'
  gem 'rspec'
end
