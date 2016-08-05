# frozen_string_literal: true
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'rails/commands/server'

class Rails::Server
  def default_options
    super.merge(Port: 3000, Host: '0.0.0.0') if Rails.env.development?
  end
end
