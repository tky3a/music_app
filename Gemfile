source 'https://rubygems.org'

#scope
gem 'hirb'         # 出力結果を表として出力するgem
gem 'hirb-unicode'  # マルチバイト文字の表示を補正するgem

#検索機能
gem 'ransack'
#認証機能
gem 'devise'
gem 'omniauth-twitter'

gem 'rails', '~> 5.1.4'

gem 'mysql2', '>= 0.3.18', '< 0.5'

#便利
gem 'pry-byebug'
gem 'pry-rails'
#gem 'better_errors'
#gem 'binding_of_caller'

gem 'bcrypt',         '3.1.11'
gem 'bootstrap-sass', '3.3.7'
# gem 'bootstrap', '4.1.1'
gem 'puma',         '3.9.1'
gem 'sass-rails',   '5.0.6'
gem 'uglifier',     '3.2.0'
gem 'coffee-rails', '4.2.2'
gem 'jquery-rails', '4.3.1'
gem 'turbolinks',   '5.0.1'
gem 'jbuilder',     '2.7.0'

group :development, :test do
  gem 'mysql2', '>= 0.3.18', '< 0.5'
  gem 'byebug',  '9.0.6', platform: :mri
end

group :development do
  gem 'web-console',           '3.5.1'
  gem 'listen',                '3.1.5'
  gem 'spring',                '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'rails-controller-testing', '1.0.2'
  gem 'minitest-reporters',       '1.1.14'
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
end

# group :production do
#   gem 'pg', '0.18.4'
# end

# Windows環境ではtzinfo-dataというgemを含める必要があります
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
