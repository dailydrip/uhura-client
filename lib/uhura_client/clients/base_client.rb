# frozen_string_literal: true

require 'faraday_middleware'

module UhuraClient
  class BaseClient
    APIError = Class.new(StandardError)

    def initialize(options = {})
      @api_key = options[:api_key]
      @team_id = options[:team_id]
      @public_token = options[:public_token]
    end

    def post(path, params)
      response = connection.post do |req|
        req.url Config.base_api_url + path
        req.headers = headers
        req.body = params.to_json
      end
      raise APIError, response.body unless response.success?

      response
    end

    def get(path, _headers = {})
      response = connection.get(path)
      raise APIError, response.body unless response.success?

      response
    end

    private

    def headers
      {
        'Authorization' => 'Bearer ' + @api_key,
        'Content-Type' => 'application/json',
        'X-Team-ID' => @team_id
      }
    end

    def connection
      Faraday.new(url: UhuraClient::Config.base_api_url,
                  headers: headers) do |builder|
        builder.request :json
        builder.adapter :net_http
      end
   end
  end
end
