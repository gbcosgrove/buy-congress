module BuyCongress
  class Politician
      attr_reader :title, :chamber, :first_name, :nickname, :middle_name, :last_name, :name_suffix, :party,
                  :state, :state_name, :district, :in_office, :gender, :birthdate, :term_start, :term_end,
                  :senate_class, :bioguide_id, :thomas_id, :lis_id, :votesmart_id, :fec_ids, :govtrack_id,
                  :crp_id, :id

      def initialize(args)
        @id               = args[:id]
        @title            = args[:title]
        @chamber          = args[:chamber]
        @first_name       = args[:first_name]
        @nickname         = args[:nickname]
        @middle_name      = args[:middle_name]
        @last_name        = args[:last_name]
        @name_suffix      = args[:name_suffix]
        @party            = args[:party]
        @state            = args[:state]
        @state_name       = args[:state_name]
        @district         = args[:district]
        @in_office        = args[:in_office]
        @gender           = args[:gender]
        @birthdate        = args[:birthdate]
        @term_start       = args[:term_start]
        @term_end         = args[:term_end]
        @senate_class     = args[:senate_class]
        @bioguide_id      = args[:bioguide_id]
        @thomas_id        = args[:thomas_id]
        @lis_id           = args[:lis_id]
        @votesmart_id     = args[:votesmart_id]
        @fec_ids          = args[:fec_ids]
        @govtrack_id      = args[:govtrack_id]
        @crp_id           = args[:crp_id]
      end
  end
end
