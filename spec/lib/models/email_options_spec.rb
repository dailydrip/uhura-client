# frozen_string_literal: true

require 'spec_helper'

RSpec.describe UhuraClient::EmailOptions do
  it 'attributes' do
    email_options = UhuraClient::EmailOptions.new({})
    expect(email_options).to respond_to(:cc)
    expect(email_options).to respond_to(:bcc)
    expect(email_options).to respond_to(:reply_to)
    expect(email_options).to respond_to(:send_at)
    expect(email_options).to respond_to(:batch_id)
  end
end
