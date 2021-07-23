class Regiao < ApplicationRecord
  require 'rest-client'
  require 'json'

  has_many :estados

  def self.region
    url = 'https://brasilapi.com.br/api/ibge/uf/v1'

    response = RestClient.get "#{url}"
    
    result =  JSON.parse(response.body)

    result.each do |hash|
      region = Regiao.new
      region.nome = hash ['regiao']
      region.save!
      p "Regiao: ", hash
    end
     true
  end
end
 