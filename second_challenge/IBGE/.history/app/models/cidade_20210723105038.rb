class Cidade < ApplicationRecord
 require 'rest-client'
 require 'json'

 belongs_to :estado

  def self.city
    url = 'https://brasilapi.com.br/docs#tag/DDD/paths/~1ddd~1v1~1{ddd}/get'

    response = RestClient.get "#{url}"

    result =  JSON.parse(response.body)

    result.each do |hash|
      city = Cidade.new
      city.nome = hash['nome']
      city.sigla = hash['sigla']
      city.save!
      p "Cidade: ", hash
    end
  end
end
