# frozen_string_literal: true

module UhuraClient
  class Message
    attr_accessor :id, :public_token, :receiver_sso_id, :email, :template_id, :sms_message

    def initialize(**args)
      deserialize(id: args[:id],
                  public_token: args[:public_token],
                  receiver_sso_id: args[:receiver_sso_id],
                  email: args[:email],
                  template_id: args[:template_id],
                  sms_message: args[:sms_message])
    end

    def to_hash
      {
        receiver_sso_id: receiver_sso_id,
        email_subject: email.subject,
        email_message: email.message.to_hash,
        email_options: email.options.to_hash,
        template_id: template_id,
        sms_message: sms_message
      }
    end

    private

    def deserialize(
      id:,
      public_token: public_token,
      receiver_sso_id:,
      email:,
      template_id:,
      sms_message:
    )
      self.id = id
      self.public_token = public_token
      self.receiver_sso_id = receiver_sso_id
      self.email = email
      self.sms_message = sms_message
      self.template_id = template_id
      self
    end
  end
end
