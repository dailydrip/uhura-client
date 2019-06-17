require 'faraday_middleware'

module UhuraClient
  class BaseClient
    APIError = Class.new(StandardError)

    def initialize(options = {})
      @api_key = options[:api_key]
      @public_token = options[:public_token]
    end

    def post(path, _headers = {})
      response = connection.post(path)
      raise APIError, response.body unless response.success?
      response
    end

    def get(path, _headers = {})
      response = connection.get(path)
      raise APIError, response.body unless response.success?
      response
    end

    private def headers
      {
        Authentication: "Bearer: #{@api_key.to_s}",
        'Content-Type' => 'application/json'
      }
    end

    private def connection
      Faraday.new(url: UhuraClient::Config.base_api_url, headers: headers) do |builder|
        builder.request :json
        builder.adapter :net_http
      end
    end
  end
end
