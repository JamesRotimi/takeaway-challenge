require './lib/takeaway.rb'
require 'rspec'
require 'spec_helper'

describe 'Takeaway' do

  it 'create a new menu' do
  t = Menu.new
end

it 'sends aconfirmation text to customer' do
  expect(subject).to receive(:send_sms)
  subject.send_sms(10)
end
end
