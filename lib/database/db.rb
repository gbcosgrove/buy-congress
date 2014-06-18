require 'active_record'
require 'pry'

module BuyCongress
  module Database
    class DB

      def clear_all
        DB.delete_all
      end

      def initialize
        ActiveRecord::Base.establish_connection(
          :adapter => 'sqlite3',
          :database => 'development.sqlite3'
          )
      end

      class Politician < ActiveRecord::Base
      end

      def build_politician(args)
         BuyCongress::Politician.new(args)
      end

      def create_politician(args)
        ar_pol = Politician.create(args)
        build_politician(ar_pol)
      end

      def get_polician(id)
        pol = Politician.find_by(id: id)
        build_politician(pol)
      end
    end
  end
end
