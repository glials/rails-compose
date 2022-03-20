# frozen_string_literal: true

require_relative "compose/version"

require 'thor'

module Rails
  module Compose
    class CLI < Thor
      def self.load_rails_application
        require File.expand_path('config/application', Dir.pwd)
      end

      def start
        load_rails_application

        puts "Start"
        puts Rails.version
        puts Rails.application
        puts Rails.env
        puts Rails.application.config.database_configuration[Rails.env].inspect
      end
    end
  end
end
