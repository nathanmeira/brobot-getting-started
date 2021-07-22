class Estado < ApplicationRecord
  require 'rest-client'
  require 'json'

  belongs_to :regiao
  has_many :cidades

  def state
    estados = []

    url = 'https://brasilapi.com.br/api/ibge/uf/v1'

    response = RestClient.get "#{url}"
    
    result =  JSON.parse(response.body)

    estados << result
  end

  def teste 
    puts 1
    p self
  end

  def self.teste
    p self
  end
end
