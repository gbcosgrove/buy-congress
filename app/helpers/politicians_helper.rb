module PoliticiansHelper
  def concat_name(first, last)
    name = "#{first} #{last}"
    puts name
    name
  end

  def retrieve_entity_id(firstname, lastname)
    name = concat_name(firstname, lastname)
    url = 'entities.json'
    data = InfluenceExplorer.request(url, search: name)
    entity_id = data[0][:id]
  end

  def retrieve_top_industries(firstname, lastname)
    eid = retrieve_entity_id(firstname, lastname)
    url = "aggregates/pol/" + eid + "/contributors/industries.json"
    options = {:cycle => '2012', :limit=>'10'}
    InfluenceExplorer.request(url, options)
  end

  def retrieve_top_contributors(firstname, lastname)
    eid = retrieve_entity_id(firstname, lastname)
    url = 'aggregates/pol/' + eid + '/contributors.json'
    options = {:cycle => '2012', :limit=>'10'}
    InfluenceExplorer.request(url, options)
  end

end
