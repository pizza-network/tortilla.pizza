require 'tilt/erb'

config_file 'config/config.yml'

get '/' do
  @quote = random_quote
  @image = random_image
  erb :index
end

private

def random_image
  Dir.entries("public/img/pies")
    .reject { |file| file =~ /^\..*/ }
    .sample
end

def random_quote
  settings.quotes.sample
end