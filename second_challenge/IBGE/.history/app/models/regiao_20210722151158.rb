class Regiao < ApplicationRecord
  require 'rest-client'
  require 'json'
  has_many :estados

  def region
    url = 'https://brasilapi.com.br/api/ibge/uf/v1'

    response = RestClient.get "#{url}"

    result =  JSON.parse(response.body)

    cidades << result
  end
end
