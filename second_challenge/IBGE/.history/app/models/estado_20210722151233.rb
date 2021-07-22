class Estado < ApplicationRecord
  require 'res-client'
  require 'json'

  belongs_to 

  def state
    url = 'https://brasilapi.com.br/api/ibge/uf/v1'

    response = RestClient.get "#{url}"
    
    result =  JSON.parse(response.body)

    cidades << result
  end
end
