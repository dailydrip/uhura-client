# frozen_string_literal: true

module UhuraClient
  class EmailMessage < DynamicAttrs
    #attr_accessor :header, :section1, :button

    def initialize(json)
      json&.each do |k, v|
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
