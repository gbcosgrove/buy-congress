require 'active_record'
require 'pry'

module BuyCongress
  module Database
    class DB

      def clear_all
        Politician.delete_all
      end

      def initialize
        ActiveRecord::Base.establish_connection(
          :adapter =)
