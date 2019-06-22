# frozen_string_literal: true

module UhuraClient
  class Message < DynamicAttrs
    #attr_accessor :id, :public_token, :receiver_sso_id, :email, :template_id, :sms_message

    def initialize(**args)
      args&.each do |k, v|
        create_attr(k)
        send("#{k}=", v)
      end
    end

    def to_hash
      hash = {}
      self.instance_variables.each do |i|
        hash[i.to_s.delete("@")] = self.instance_variable_get(i)
      end
      hash
    end
  end
end
