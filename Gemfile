source 'https://rubygems.org'

ruby '2.4.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.3'

gem 'rack-ssl-enforcer'

gem 'puma', '~>3.8.2'
gem 'pg', '~>0.18.2'

gem 'activerecord-postgis-adapter'

gem 'rails_12factor', group: :production

# gem 'active_model_serializers', '~> 0.9.0'
gem 'active_model_serializers', '0.10.5'

gem 'active_model_serializers-jsonapi_embedded_records_deserializer', '~> 0.1.1'

gem 'redis', '~> 3.3.3'

gem 'geocoder', '~> 1.2.8'

gem 'skylight', '~> 1.3.1'

gem 'json_spec', '~>1.1.4'

gem 'newrelic_rpm', '~> 4.1.0.333'

gem 'pry-rails'

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
  gem 'pry-byebug'
  gem 'foreman'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'randexp', '~> 0.1.7'

gem 'nokogiri', '~> 1.5'

gem 'rack-attack', '~> 4.3.0'

gem 'rack-cors', '~>0.4.1', require: 'rack/cors'

gem 'rack-rewrite', '~> 1.5.1'

gem 'prerender_rails', '~> 1.5.1'

gem 'rest-client', require: false

gem 'highline', '~> 1.6.21'

gem 'levenshtein-ffi', :require => 'levenshtein'

gem 'aws-sdk' , '~> 2.6.44'  # for uploading the sitemap
gem 'sitemap_generator', '~> 5.2.0'

gem 'administrate', '0.8.1'

# Makes caching into memcacher work
gem "dalli", '~> 2.7.6'
gem "memcachier", '~> 0.0.2'

gem 'raygun4ruby', '~> 1.1.11'

group :development, :test do
  gem 'spring-commands-rspec'
  gem 'rspec-rails', '~> 3.5.2'
  gem 'guard-rspec'
  gem 'factory_girl_rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

gem 'shoulda-matchers', '~> 2.8.0',  require: false

group :test do
  gem "json-schema"
end

group :assets do
  gem 'uglifier'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
