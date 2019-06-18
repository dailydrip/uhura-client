# frozen_string_literal: true

require 'spec_helper'

RSpec.describe UhuraClient::Email do
  it 'attributes' do
    email = UhuraClient::Email.new(subject: 'Subject', message: {}, options: {})
    expect(email).to respond_to(:subject)
    expect(email).to respond_to(:message)
    expect(email).to respond_to(:options)
  end
end
