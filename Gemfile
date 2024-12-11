source 'https://rubygems.org'

# Rails
gem 'rails', '~> 6.1.4'

# Sinatra
gem 'sinatra'

# PostgreSQL
gem 'pg', '>= 0.18', '< 2.0'

# Para el entorno de desarrollo y pruebas
group :development, :test do
  gem 'rspec-rails', '~> 5.0'
  gem 'pry'
end

# Para el entorno de producción
group :production do
  gem 'puma', '~> 5.0'
end

# Otras gemas útiles
gem 'json'
gem 'rack-cors'
gem 'dotenv-rails', groups: [:development, :test]