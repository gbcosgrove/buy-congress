require 'rails_helper'

RSpec.describe "politicians/new", :type => :view do
  before(:each) do
    assign(:politician, Politician.new(
      :title => "MyString",
      :chamber => "MyString",
      :first_name => "MyString",
      :nickname => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :name_suffix => "MyString",
      :party => "MyString",
      :state => "MyString",
      :state_name => "MyString",
      :district => 1,
      :in_office => false,
      :gender => "MyString",
      :birthdate => "MyString",
      :term_start => "MyString",
      :term_end => "MyString",
      :senate_class => 1,
      :bioguide_id => "MyString",
      :thomas_id => "MyString",
      :lis_id => "MyString",
      :votesmart_id => "MyString",
      :fec_ids => "MyString",
      :govtrack_id => "MyString",
      :crp_id => "MyString"
    ))
  end

  it "renders new politician form" do
    render

    assert_select "form[action=?][method=?]", politicians_path, "post" do

      assert_select "input#politician_title[name=?]", "politician[title]"

      assert_select "input#politician_chamber[name=?]", "politician[chamber]"

      assert_select "input#politician_first_name[name=?]", "politician[first_name]"

      assert_select "input#politician_nickname[name=?]", "politician[nickname]"

      assert_select "input#politician_middle_name[name=?]", "politician[middle_name]"

      assert_select "input#politician_last_name[name=?]", "politician[last_name]"

      assert_select "input#politician_name_suffix[name=?]", "politician[name_suffix]"

      assert_select "input#politician_party[name=?]", "politician[party]"

      assert_select "input#politician_state[name=?]", "politician[state]"

      assert_select "input#politician_state_name[name=?]", "politician[state_name]"

      assert_select "input#politician_district[name=?]", "politician[district]"

      assert_select "input#politician_in_office[name=?]", "politician[in_office]"

      assert_select "input#politician_gender[name=?]", "politician[gender]"

      assert_select "input#politician_birthdate[name=?]", "politician[birthdate]"

      assert_select "input#politician_term_start[name=?]", "politician[term_start]"

      assert_select "input#politician_term_end[name=?]", "politician[term_end]"

      assert_select "input#politician_senate_class[name=?]", "politician[senate_class]"

      assert_select "input#politician_bioguide_id[name=?]", "politician[bioguide_id]"

      assert_select "input#politician_thomas_id[name=?]", "politician[thomas_id]"

      assert_select "input#politician_lis_id[name=?]", "politician[lis_id]"

      assert_select "input#politician_votesmart_id[name=?]", "politician[votesmart_id]"

      assert_select "input#politician_fec_ids[name=?]", "politician[fec_ids]"

      assert_select "input#politician_govtrack_id[name=?]", "politician[govtrack_id]"

      assert_select "input#politician_crp_id[name=?]", "politician[crp_id]"
    end
  end
end
