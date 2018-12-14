source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.6'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'carrierwave', '~> 1.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bcrypt', '~> 3.1.7'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'
gem 'paperclip', '~> 6.1'
gem 'ckeditor', github: 'galetahub/ckeditor'
gem 'aws-sdk-s3', require: false
gem 'social-share-button'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'better_errors', '~> 2.1', '>= 2.1.1'
  gem 'binding_of_caller'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :production do
  gem 'pg'
end


group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'sqlite3'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
