class Cidade < ApplicationRecord
 require 'rest-client'
 require 'json'


  url = 'https://brasilapi.com.br/docs#tag/DDD/paths/~1ddd~1v1~1{ddd}/get'

  response = RestClient.get "#{url}"

  puts JSON.parse 
end
