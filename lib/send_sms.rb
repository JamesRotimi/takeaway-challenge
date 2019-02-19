require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'AC8315b4c672a66f7147238a09c6be1189'
auth_token = 'dbde28542c66d4b69d82bf7929a1ba41'
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.messages
  .create(
     body: 'Thank you! Your order was placed and will be delivered before 18:52',
     from: '+441259404086',
     to: '+447538813689'
   )

puts message.sid
puts message.status
