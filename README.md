# UhuraClient

Ruby gem for [Uhura](https://github.com/dailydrip/uhura/).

## Installation

Include the `uhura_client` gem in your Gemfile:
```
gem 'uhura_client', git: 'git@github.com/dailydrip:uhura-client.git', branch: 'master'
```

## How to use

Export environment variables.

```
export UHURA_BASE_API_URL="http://localhost:3000/api/v1"
export UHURA_API_KEY="b33fb33fb33fb33f"
export UHURA_TEAM_ID="1"
export UHURA_PUBLIC_TOKEN="dead0beef1dead2beef3"
```


### API

```ruby
# define a message
message = UhuraClient::Message.new(
    receiver_sso_id: "99999999",
    email: UhuraClient::Email.new(
        subject: "Picnic Next Saturday",
        message: UhuraClient::EmailMessage.new(header: "Picnic Event", section1: "Next saturday is family picnic event.", section2: "Want more info?", button: "Info"),
        options: UhuraClient::EmailOptions.new(cc: "someoneelse@example.com")
    ),
    template_id: "d-05d33214e6994b01b577602036bfa9f9",
    sms_message: "Picnic Next Saturday"
)

# create a client by passing the api key, team id and public token
client = UhuraClient::MessageClient.new(
    api_key: ENV['UHURA_API_KEY'], 
    team_id: ENV['UHURA_TEAM_ID'], 
    public_token: ENV['UHURA_PUBLIC_TOKEN']
)

# send the message!
client.send_message(message)
```

### Tests

```sh
bundle exec rspec
```

