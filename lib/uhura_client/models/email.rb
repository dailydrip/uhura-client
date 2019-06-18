# frozen_string_literal: true

module UhuraClient
  class Email
    attr_accessor :subject, :message, :options

    def initialize(subject:, message:, options:)
      deserialize(subject: subject, message: message, options: options)
    end

    private

    def deserialize(subject:, message:, options:)
      self.subject = subject
      self.message = EmailMessage.new(message)
      self.options = EmailOptions.new(options)
      self
    end
  end
end
