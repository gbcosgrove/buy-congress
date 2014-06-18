require 'spec_helper'
require 'rake'
require 'minitest/autorun'
# require 'pry-rescue/minitest'


shared_examples "a database" do



  it "creates a politician" do
    hash = {title: 'Sen', chamber: 'senate', first_name: 'Greg', last_name: 'Cosgrove', party: 'I'}
    test = db.create_politician(hash)
    expect(test).to_not be_nil
  end

  it "retrieves a politician by full name" do

  end



  it "retrieves a user by username" do
  end


end


# describe BuyCongress::Database::InMemory do
#   let(:db) { described_class.new }
#   it_behaves_like "a database"
# end

describe 'Congressdb' do
  let(:db) { BuyCongress::Database::Congressdb.new }
  it_behaves_like "a database"
end
