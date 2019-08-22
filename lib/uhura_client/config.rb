# frozen_string_literal: true

module UhuraClient
  class Config
    def self.base_api_url
      ENV['UHURA_BASE_API_URL'] || 'http://localhost:3000/api/v1'
    end
  end
end
