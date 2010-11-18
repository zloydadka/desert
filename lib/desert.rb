dir = File.dirname(__FILE__)
require "active_support"
require "active_record"
require "action_controller"
require File.join(dir, 'action_controller', 'routing', 'route_set')
require "action_mailer"


require "#{dir}/desert/supported_rails_versions"
require "#{dir}/desert/plugin"
require "#{dir}/desert/manager"
require "#{dir}/desert/version_checker"
require "#{dir}/desert/rails"
require "#{dir}/desert/ruby"
require "#{dir}/desert/plugin_migrations"
require "#{dir}/desert/plugin_templates"
