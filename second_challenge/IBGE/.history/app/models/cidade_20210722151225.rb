class Cidade < ApplicationRecord
 require 'rest-client'
 require 'json'

 belongs_to :estado

  def city
    cidades = []
    url = 'https://brasilapi.com.br/docs#tag/DDD/paths/~1ddd~1v1~1{ddd}/get'

    response = RestClient.get "#{url}"

    result =  JSON.parse(response.body)

    cidades << result

  end
end
