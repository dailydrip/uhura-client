# frozen_string_literal: true

module UhuraClient
  class MessageClient < BaseClient
    def initialize(options = {})
      super(options)
    end

    def send_message(_message); end
  end
end
