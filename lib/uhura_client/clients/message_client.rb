# frozen_string_literal: true

module UhuraClient
  class MessageClient < BaseClient
    def initialize(options = {})
      super(options)
    end

    def send_message(message)
      response = post('/messages', message.to_h)
      response_message = JSON.parse(response.body)
      response_message
    end

    def status_of(message)
      response = get("/messages/#{message.id}/status")
      response_message = JSON.parse(response.body)
      response_message
    end
  end
end
