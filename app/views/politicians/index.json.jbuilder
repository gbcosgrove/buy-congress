json.array!(@politicians) do |politician|
  json.extract! politician, :id, :title, :chamber, :first_name, :nickname, :middle_name, :last_name, :name_suffix, :party, :state, :state_name, :district, :in_office, :gender, :birthdate, :term_start, :term_end, :senate_class, :bioguide_id, :thomas_id, :lis_id, :votesmart_id, :fec_ids, :govtrack_id, :crp_id
  json.url politician_url(politician, format: :json)
end
