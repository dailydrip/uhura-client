# UhuraClient

Ruby gem for [Uhura](https://github.com/dailydrip/uhura/).

## How to use

You need to set up your API URL.

```sh
export UHURA_BASE_URL="http://localhost:3000"
export UHURA_BASE_API_URL="http://localhost:3000"
```


### API

```ruby
# define a message
message = Message.new(
  receiver_sso_id: "id",
  email: Email.new(
    subject: "Yo!",
    message: "Yo!",
    options: EmailOptions.new(cc: "someoneelse@example.com")
  ),
  template_id: "template_id",
  sms_message: "Yo!"
  )

# create a client by passing the api key, team id and public token
client = UhuraClient::MessageClient.new(api_key: "API_KEY", team_id: "TEAM_ID", public_token: "PUBLIC_TOKEN")

# send the message!
client.send_message(message)
```

### Tests

```sh
bundle exec rspec
```

