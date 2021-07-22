class Estado < ApplicationRecord
  require 'res-client'
  require 'json'

  def city
    url = 'https://brasilapi.com.br/docs#tag/DDD/paths/~1ddd~1v1~1{ddd}/get'
    url = 'https://brasilapi.com.br/api/ibge/uf/v1'

    response = RestClient.get "#{url}"

    puts JSON.parse(response.body)
  end
end
