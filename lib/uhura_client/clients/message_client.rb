# frozen_string_literal: true

module UhuraClient
  class MessageClient < BaseClient
    def initialize(options = {})
      super(options)
    end

    def send_message(message)
      response = post('/api/v1/messages/', message.to_hash)
      response_message = JSON.parse(response.body)
      # p response_message
      response_message
    end

    def status_of(message)
      response = get("/api/v1/messages/#{message.id}/status")
      response_message = JSON.parse(response.body)
      response_message
    end
  end
end
