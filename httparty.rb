BASE_URL = 'https://api-acce-current.fortnox.se/3'
# Replace these with your authentication information
CLIENT_SECRET = 'P5K5vEyKun'
ACCESS_TOKEN = 'ea3862b0-189c-464a-8e23-1b9702365ea1'

require 'httparty'
require 'json'

class Fortnox
  include HTTParty

  base_uri 'https://api-acce-current.fortnox.se/3'
  headers 'Accept' => 'application/json', 'Client-Secret' => CLIENT_SECRET, 'Access-Token' => ACCESS_TOKEN

  def self.post( endpoint, body )
    options = { body: body.to_json, headers: { 'Content-Type' => 'application/json' }}
    super endpoint, options
  end

  def self.put( endpoint, body )
    options = { body: body.to_json, headers: { 'Content-Type' => 'application/json' }}
    super endpoint, options
  end
end
