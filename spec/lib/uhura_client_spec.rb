# frozen_string_literal: true

require 'spec_helper'

RSpec.describe UhuraClient do
  it 'has a version number' do
    expect(UhuraClient::VERSION).not_to be nil
  end
end
