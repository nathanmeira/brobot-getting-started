class Estado < ApplicationRecord
  require 'res-client'
  require 'json'

  def state
    url = 'https://brasilapi.com.br/api/ibge/uf/v1'

    response = RestClient.get "#{url}"

    puts JSON.parse(response.body)
  end
end