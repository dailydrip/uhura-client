# frozen_string_literal: true

module UhuraClient
  class EmailOptions
    attr_accessor :cc, :bcc, :reply_to, :send_at, :batch_id

    def initialize(json)
      deserialize(json) if json
    end

    def to_hash
      {
        "cc": cc,
        "bcc": bcc,
        "reply_to": reply_to,
        "send_at": send_at,
        "batch_id": batch_id
      }
    end

    private

    def deserialize(json)
      self.cc = json[:cc]
      self.bcc = json[:bcc]
      self.reply_to = json[:reply_to]
      self.send_at = json[:send_at]
      self.batch_id = json[:batch_id]
      self
    end
  end
end
