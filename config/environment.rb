require 'bundler/setup'
require 'hanami/setup'
require_relative '../lib/static_path_test'
require_relative '../apps/another/application'

# NOTE 2.
# However, if remove everything in `public` folder
# and then comment out this line
# the js file will be loaded from 'another' app
require_relative '../apps/web/application'

Hanami::Container.configure do

  # NOTE 1.
  # This is previously mount Another::Application, at: '/another'
  # If changed to '/', the js file will be loaded from 'web' app
  mount Another::Application, at: '/'

  # NOTE 3.
  # This line is commented in both note 1 & 2, for clarity
  # mount Web::Application, at: '/'
end
