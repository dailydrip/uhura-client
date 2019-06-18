# frozen_string_literal: true

module UhuraClient
  class EmailMessage
    attr_accessor :header, :section1, :button

    def initialize(json)
      deserialize(json) if json
    end

    def to_hash
      {
        "header": header,
        "section1": section1,
        "button": button
      }
    end

    private

    def deserialize(json)
      self.header = json['header']
      self.section1 = json['section1']
      self.button = json['button']
      self
    end
  end
end
