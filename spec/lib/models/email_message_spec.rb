# frozen_string_literal: true

require 'spec_helper'

RSpec.describe UhuraClient::EmailMessage do
  it 'attributes' do
    email_message = UhuraClient::EmailMessage.new(
        {
            "header": "Dragon Rage",
            "section1": "imagine you are writing an email. you are in front of the computer. you are operating the computer, clicking a mouse and typing on a keyboard, but the message will be sent to a human over the internet. so you are working before the computer, but with a human behind the computer.",
            "button": "Count me in!"
        }
    )
    expect(email_message).to respond_to(:header)
    expect(email_message).to respond_to(:section1)
    expect(email_message).to respond_to(:button)
  end
end
