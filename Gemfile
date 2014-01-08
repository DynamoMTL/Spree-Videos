source 'http://rubygems.org'

gem 'spree', '~> 2.0'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '2-0-stable'

group :test do
  if RUBY_PLATFORM.downcase.include? "darwin"
    gem 'guard-rspec'
    gem 'rb-fsevent'
    gem 'growl'
    gem 'database_cleaner', '1.0.1'
  end
  gem 'coffee-rails'
end

gemspec
