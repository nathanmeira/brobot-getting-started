class Estado < ApplicationRecord
  require 'rest-client'
  require 'json'

  # belongs_to :regiao
  has_many :cidades

  def self.state
    url = 'https://brasilapi.com.br/api/ibge/uf/v1'

    response = RestClient.get "#{url}"
    
    result =  JSON.parse(response.body)

    result.each do |hash|
      state = Estado.new
      state.nome = hash['nome']
      state.sigla = hash['sigla']
      
      state.save!
      p "Estado: ", hash
    end
     true
  end
end
