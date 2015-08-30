require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

require_relative './app'
run Sinatra::Application