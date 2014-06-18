require 'spec_helper'
require 'rake'
require 'minitest/autorun'
require 'pry-rescue/minitest'


shared_examples "a database" do
# describe DoubleDog::Database::InMemory do
#   let(:db) { described_class.new }


  it "creates a politician" do

    # user = db.create_user(:username => 'alice', :password => 'pass1')
    # expect(user.id).to_not be_nil
    # expect(user.username).to eq 'alice'
    # expect(user.has_password? 'pass1').to eq true
    # expect(user.admin?).to eq false
  end

  it "retrieves a user" do
    # user = db.create_user(:username => 'bob', :password => 'pass2')
    # retrieved_user = db.get_user(user.id)
    # expect(retrieved_user.username).to eq 'bob'
    # expect(retrieved_user.has_password? 'pass2').to eq true
  end



  it "retrieves a user by username" do
    # user = db.create_user(:username => 'pim', :password => 'cookies')
    # retrieved_user = db.get_user_by_username(user.username)

    # expect(retrieved_user.username).to eq('pim')
    # expect(retrieved_user.has_password? 'cookies').to eq true
  end


end


describe BuyCongress::Database::InMemory do
  let(:db) { described_class.new }
  it_behaves_like "a database"
end

describe BuyCongress::Database::DB do
  let(:db) { described_class.new }
  it_behaves_like "a database"
end
