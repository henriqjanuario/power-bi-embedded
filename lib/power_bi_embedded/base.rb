require 'base64'
require 'json'
require 'httparty'

module PowerBiEmbedded
  class Base

    def self.get(endpoint, query = nil, headers = nil)
      response = HTTParty.get(endpoint, headers: headers, query: query)
      parse_response(response)
    end

    def self.post(endpoint, body = nil, headers = nil)
      response = HTTParty.post(endpoint, headers: headers, body: body)
      parse_response(response)
    end

    def self.put(endpoint, body = nil, headers = nil)
      response = HTTParty.put(endpoint, headers: headers, body: body)
      parse_response(response)
    end

    def self.delete(endpoint, headers = nil)
      response = HTTParty.delete(endpoint, headers: headers)
      parse_response(response)
    end

    def self.parse_response(response)
      response.parsed_response&.deep_symbolize_keys
    end

  end
end
