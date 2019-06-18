# frozen_string_literal: true

require 'spec_helper'

RSpec.describe UhuraClient::EmailMessage do
  it 'attributes' do
    email_message = UhuraClient::EmailMessage.new({})
    expect(email_message).to respond_to(:header)
    expect(email_message).to respond_to(:section1)
    expect(email_message).to respond_to(:button)
  end
end
