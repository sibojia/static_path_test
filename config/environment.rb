require 'bundler/setup'
require 'hanami/setup'
require_relative '../lib/static_path_test'
require_relative '../apps/another/application'
require_relative '../apps/web/application'

Hanami::Container.configure do
  mount Another::Application, at: '/another'
  mount Web::Application, at: '/'
end
