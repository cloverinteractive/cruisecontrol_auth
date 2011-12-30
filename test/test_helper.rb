# Configure Rails Envinronment
ENV["RAILS_ENV"] = "test"

#require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"
require 'rails/generators'
require 'mocha'
require 'turn'

ActionMailer::Base.delivery_method = :test
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.default_url_options[:host] = "test.com"

Rails.backtrace_cleaner.remove_silencers!
