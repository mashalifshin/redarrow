# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
# The line below is for making uploads work across form redisplays on heroku
use Rack::Static, :urls => ['/carrierwave'], :root => 'tmp' # adding this line
run Theredarrowgallery::Application