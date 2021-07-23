class Cidade < ApplicationRecord
 require 'rest-client'
 require 'json'

 belongs_to :estado

  def self.city
    cidades = []
    url = 'https://brasilapi.com.br/docs#tag/DDD/paths/~1ddd~1v1~1{ddd}/get'

    response = RestClient.get "#{url}"

    result =  JSON.parse(response.body)

    result.each do |hash|
      state = Estado.new
      state.nome = hash['nome']
      state.sigla = hash['sigla']
      state.save!
      p "Estado: ", hash
    end
  end
end
