require 'rails_helper'

RSpec.describe "politicians/index", :type => :view do
  before(:each) do
    assign(:politicians, [
      Politician.create!(
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
      ),
      Politician.create!(
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
      )
    ])
  end

  it "renders a list of politicians" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Chamber".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name Suffix".to_s, :count => 2
    assert_select "tr>td", :text => "Party".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "State Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Birthdate".to_s, :count => 2
    assert_select "tr>td", :text => "Term Start".to_s, :count => 2
    assert_select "tr>td", :text => "Term End".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Bioguide".to_s, :count => 2
    assert_select "tr>td", :text => "Thomas".to_s, :count => 2
    assert_select "tr>td", :text => "Lis".to_s, :count => 2
    assert_select "tr>td", :text => "Votesmart".to_s, :count => 2
    assert_select "tr>td", :text => "Fec Ids".to_s, :count => 2
    assert_select "tr>td", :text => "Govtrack".to_s, :count => 2
    assert_select "tr>td", :text => "Crp".to_s, :count => 2
  end
end
