class Regiao < ApplicationRecord
  has_many :estados
  require 'rest-client'
  require 'json'

  def region
    url = 'https://brasilapi.com.br/api/ibge/uf/v1'

    response = RestClient.get "#{url}"

    result =  JSON.parse(response.body)

    cidades << result
  end
end
