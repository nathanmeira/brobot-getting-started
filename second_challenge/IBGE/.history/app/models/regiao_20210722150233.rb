class Regiao < ApplicationRecord

  def region
    url = 'https://brasilapi.com.br/api/ibge/uf/v1'

    response = RestClient.get "#{url}"


  end
end
