require 'httparty'

response = HTTParty.get ("http://icanhazop.com")
puts  response.code