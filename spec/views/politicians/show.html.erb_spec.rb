require 'rails_helper'

RSpec.describe "politicians/show", :type => :view do
  before(:each) do
    @politician = assign(:politician, Politician.create!(
      :title => "Title",
      :chamber => "Chamber",
      :first_name => "First Name",
      :nickname => "Nickname",
      :middle_name => "Middle Name",
      :last_name => "Last Name",
      :name_suffix => "Name Suffix",
      :party => "Party",
      :state => "State",
      :state_name => "State Name",
      :district => 1,
      :in_office => false,
      :gender => "Gender",
      :birthdate => "Birthdate",
      :term_start => "Term Start",
      :term_end => "Term End",
      :senate_class => 2,
      :bioguide_id => "Bioguide",
      :thomas_id => "Thomas",
      :lis_id => "Lis",
      :votesmart_id => "Votesmart",
      :fec_ids => "Fec Ids",
      :govtrack_id => "Govtrack",
      :crp_id => "Crp"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Chamber/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Nickname/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Name Suffix/)
    expect(rendered).to match(/Party/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/State Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Birthdate/)
    expect(rendered).to match(/Term Start/)
    expect(rendered).to match(/Term End/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Bioguide/)
    expect(rendered).to match(/Thomas/)
    expect(rendered).to match(/Lis/)
    expect(rendered).to match(/Votesmart/)
    expect(rendered).to match(/Fec Ids/)
    expect(rendered).to match(/Govtrack/)
    expect(rendered).to match(/Crp/)
  end
end
