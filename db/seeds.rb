# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'sunlight'

pols = Sunlight::Legislator.all_where(in_office: 'true')

# pols.each do |pol|
#   pols.each do |p|
#     hash = {title: p[:title], chamber: p[:chamber], first_name: p[:first_name],
#             nickname: p[:nickname], middle_name: p[:middle_name], last_name: p[:last_name],
#             name_suffix: p[:name_suffix], party: p[:party], state: p[:state], state_name: p[:state_name],
#             district: p[:district], in_office: p[:in_office], gender: p[:gender], birthdate: p[:birthdate],
#             term_start: p[:term_start], term_end: p[:term_end], senate_class: p[:senate_class],
#             bioguide_id: p[:bioguide_id], thomas_id: p[:thomas_id], lis_id: p[:lis_id],
#             votesmart_id: p[:votesmart_id], fec_ids: p[:fec_ids], govtrack_id: p[:govtrack_id],
#             crp_id: p[:crp_id]}
#       Politician.create(hash)
#     end
# end

pols.each do |p|
  hash = p.to_h
  Politician.create(hash)
end

