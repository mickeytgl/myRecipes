source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.3.1'
gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'carrierwave', '0.10.0'
gem 'mini_magick', '~> 4.6', '>= 4.6.1'
gem 'will_paginate', '~> 3.1', '>= 3.1.5'
gem 'bootstrap-will_paginate', '~> 0.0.11'
gem 'bcrypt', '~> 3.1', '>= 3.1.11'
gem 'fog', '~> 2.0.0.pre.0'
gem 'net-ssh'


group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platform: :mri
  gem 'pry'
end

group :production do 
	gem 'pg'
	gem 'rails_12factor'
end 

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
