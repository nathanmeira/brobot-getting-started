class Regiao < ApplicationRecord

  def city
    url = 'https://brasilapi.com.br/docs#tag/DDD/paths/~1ddd~1v1~1{ddd}/get'

    response = RestClient.get "#{url}"

    puts JSON.parse(response.body)
  end
end
