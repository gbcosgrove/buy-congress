require 'spec_helper'

describe BuyCongress::Politician do

  # This method should work whether or not we are storing passwords
  # in plain-text (BAD) or using a hashing library like bcrypt (good).
  describe Politician do
    it "creates a politician" do
      polhash = { :title=> 'Sen', :chamber=>'senate', :first_name=>'Joseph', :nickname=>'Joe',
                  :middle_name=>'John', :last_name=>'Bloggs', :name_suffix=>'Esq', :party=>'I',
                  :state=>'TX', :state_name=>'Texas', :district=>'n/a', :in_office=>true,
                  :gender=>'M', :birthdate=>'01/01/2000', :term_start=>'01/02/2000', :term_end=>'01/03/2000',
                  :senate_class=>'1', :bioguide_id=>'abc', :thomas_id=>'efg', :lis_id=>'123',
                  :votesmart_id=>'456', :fec_ids=>'789', :govtrack_id=>'987',
                  :crp_id=>'654', :id=>1}

      pol = BuyCongress::Politician.new(polhash)
    end

    it "stores a politicians attributes" do
      pol.title.should be('Sen')
      pol.chamber.should be('senate')
      pol.first_name.should be('Joseph')
      pol.nickname.should be('Joe')
      pol.middle_name.should be('John')
      pol.last_name.should be('Bloggs')
      pol.name_suffix.should be('Esq')
      pol.party.should be('I')
      pol.state.should be('TX')
      pol.state_name.should be('Texas')
      pol.district.should be('n/a')
      pol.in_office.should be(true)
      pol.gender.should be('M')
      pol.birthdate.should be('01/01/2000')
      pol.term_start.should be('01/02/2000')
      pol.term_end.should be('01/03/2000')
      pol.senate_class.should be('1')
      pol.bioguide_id.should be('abc')
      pol.thomas_id.should be('efg')
      pol.lis_id.should be('123')
      pol.votesmart_id.should be('456')
      pol.fec_ids.should be('789')
      pol.govtrack_id.should be('987')
      pol.crp_id.should be('654')
      pol.id.should be(1)

    end
  end
end
