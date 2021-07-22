class Cidade < ApplicationRecord
 require 'rest-client'
 require 'json'

  def city
    cidades = []
    url = 'https://brasilapi.com.br/docs#tag/DDD/paths/~1ddd~1v1~1{ddd}/get'

    response = RestClient.get "#{url}"

     JSON.parse(response.body)

  end
end