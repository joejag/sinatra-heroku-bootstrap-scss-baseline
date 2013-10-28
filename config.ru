require 'compass'
require 'sinatra/base'

$stdout.sync = true

require './app'

run MySinatraApp::App
