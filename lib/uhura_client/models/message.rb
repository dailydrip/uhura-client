# frozen_string_literal: true

module UhuraClient
  class Message
    attr_accessor :receiver_sso_id, :email, :template_id, :sms_message

    def initialize(receiver_sso_id:, email:, template_id:, sms_message:)
      deserialize(receiver_sso_id: receiver_sso_id,
                  email: email,
                  template_id: template_id,
                  sms_message: sms_message)
    end

    private

    def deserialize(receiver_sso_id:,
                    email:,
                    template_id:,
                    sms_message:)
      self.receiver_sso_id = receiver_sso_id
      self.email = Email.new(email)
      self.sms_message = sms_message
      self.template_id = template_id
      self
    end
  end
end
