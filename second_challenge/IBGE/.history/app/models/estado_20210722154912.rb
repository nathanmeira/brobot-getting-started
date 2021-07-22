class Estado < ApplicationRecord
  require 'res-client'
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

  def test 
    p self
  end

  def test self
  end
end
